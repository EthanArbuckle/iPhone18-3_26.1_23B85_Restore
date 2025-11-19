void sub_1973F3438()
{
  sub_1975212CC();
  if (v0 <= 0x3F)
  {
    sub_1973F3504();
    if (v1 <= 0x3F)
    {
      sub_1973F3554();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1973F3504()
{
  if (!qword_1ED7CA7A8)
  {
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7CA7A8);
    }
  }
}

void sub_1973F3554()
{
  if (!qword_1ED7CA0C0)
  {
    type metadata accessor for Schema();
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7CA0C0);
    }
  }
}

uint64_t sub_1973F35D0()
{
  result = type metadata accessor for EditingState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1973F3724(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1975212CC();
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

void sub_1973F382C()
{
  sub_19752135C();
  if (v0 <= 0x3F)
  {
    sub_1973F3504();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for EditingState()
{
  result = qword_1ED7CA3C0;
  if (!qword_1ED7CA3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3924(uint64_t a1, id *a2)
{
  result = sub_19752179C();
  *a2 = 0;
  return result;
}

uint64_t Schema.__allocating_init(versionedSchema:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  (*(a2 + 16))(&v9, a1, a2);
  v7 = v9;
  v8 = v10;
  v5 = swift_allocObject();
  Schema.init(_:version:)(v4, &v7);
  return v5;
}

uint64_t *Schema.init(_:version:)(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = *(a2 + 2);
  if (qword_1ED7C9B38 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = qword_1ED7C9B50;
    *(v2 + 1) = xmmword_1ED7C9B40;
    v2[4] = v7;
    *(v2 + 5) = v5;
    v8 = MEMORY[0x1E69E7CC0];
    v2[7] = v6;
    v21 = v8;
    v20 = MEMORY[0x1E69E7CC8];
    v9 = *(a1 + 16);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    v6 = 0;
    v11 = (a1 + 40);
    while (v10 < *(a1 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = MEMORY[0x19A8E1370]();
      sub_1974D7B5C(v13, v12, &v20, &v21);
      ++v10;
      objc_autoreleasePoolPop(v14);
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    v18 = v5;
    swift_once();
    v5 = v18;
  }

LABEL_6:

  v19 = sub_1974153BC(v15);
  sub_1974174A8(&v19);
  v16 = v20;
  v2[8] = v19;
  v2[9] = v16;

  return v2;
}

uint64_t type metadata accessor for ModelConfiguration()
{
  result = qword_1ED7CA7B0;
  if (!qword_1ED7CA7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1973F3C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1975212CC();
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

uint64_t sub_1973F3D34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1973F4028(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_197522A5C();
  sub_19752180C();
  v6 = sub_197522A9C();

  return sub_1973F40A0(a1, a2, v6);
}

unint64_t sub_1973F40A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19752282C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1973F41BC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC8];
  *(v7 + 16) = MEMORY[0x1E69E7CC8];
  v144 = (v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = (v9 + 16);
  v129 = a1;
  v128 = a2;
  sub_1973F548C(a1, v7, v6, v3, v9, a1, a2);
  swift_beginAccess();
  v143 = (v6 + 16);
  v11 = *v143;
  if (*v143 >> 62)
  {
    goto LABEL_134;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E0960](v13, v11);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          v12 = sub_1975220EC();
          goto LABEL_3;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_12;
        }
      }

      v16 = MEMORY[0x19A8E1370]();
      sub_1974F4F18(v14, v144);
      objc_autoreleasePoolPop(v16);

      ++v13;
    }

    while (v15 != v12);
  }

  swift_beginAccess();
  v17 = *v10;
  v19 = *(*v10 + 64);
  v10 = (*v10 + 64);
  v18 = v19;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v142 = v17;

  v24 = 0;
  v141 = v10;
  if (!v22)
  {
    goto LABEL_17;
  }

  do
  {
    v11 = v24;
LABEL_20:
    v25 = (v11 << 10) | (16 * __clz(__rbit64(v22)));
    v26 = (*(v142 + 48) + v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = (*(v142 + 56) + v25);
    v30 = *v29;
    v31 = v29[1];
    swift_beginAccess();
    v32 = *v144;
    v33 = *(*v144 + 16);

    if (!v33 || (v34 = sub_1973F4028(v28, v27), (v35 & 1) == 0))
    {
      swift_endAccess();
      v147 = 0;
      v148 = 0xE000000000000000;
      sub_1975221EC();

      v147 = 0xD000000000000016;
      v148 = 0x8000000197529610;
      MEMORY[0x19A8DFF80](v28, v27);
      goto LABEL_140;
    }

    v36 = *(*(v32 + 56) + 8 * v34);
    swift_endAccess();
    swift_beginAccess();
    v37 = *v144;
    v38 = *(*v144 + 16);

    if (!v38 || (v39 = sub_1973F4028(v30, v31), (v40 & 1) == 0))
    {
      swift_endAccess();
      v147 = 0;
      v148 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x20797469746E45, 0xE700000000000000);
      MEMORY[0x19A8DFF80](v28, v27);
      MEMORY[0x19A8DFF80](0x6966696365707320, 0xEB00000000207365);
      MEMORY[0x19A8DFF80](v30, v31);
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197529630);
      v126 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v126);

      goto LABEL_140;
    }

    v22 &= v22 - 1;
    v41 = *(*(v37 + 56) + 8 * v39);
    swift_endAccess();

    swift_beginAccess();
    v42 = v41[8];
    swift_beginAccess();
    v43 = v41[9];
    v147 = v42;
    swift_retain_n();

    sub_1974EE6F8(v44, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
    v45 = v147;
    swift_beginAccess();
    v46 = v36[9];
    v36[9] = v45;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v48 = v41[2];
    v47 = v41[3];

    swift_beginAccess();
    v49 = v36[6];
    v36[5] = v48;
    v36[6] = v47;

    swift_beginAccess();

    sub_19747D134(v145, v36);
    swift_endAccess();

    v24 = v11;
    v10 = v141;
  }

  while (v22);
  while (1)
  {
LABEL_17:
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_124;
    }

    if (v11 >= v23)
    {
      break;
    }

    v22 = v10[v11];
    ++v24;
    if (v22)
    {
      goto LABEL_20;
    }
  }

  v50 = *v143;
  if (*v143 >> 62)
  {
    v125 = *v143;
    v51 = sub_1975220EC();
    v50 = v125;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v50;

  if (v51)
  {
    v52 = 0;
    v144 = (v131 & 0xC000000000000001);
    v140 = v51;
    while (1)
    {
      while (1)
      {
        if (v144)
        {
          v11 = MEMORY[0x19A8E0960](v52, v131);
          v53 = __OFADD__(v52++, 1);
          if (v53)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v52 >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v11 = *(v131 + 32 + 8 * v52);

          v53 = __OFADD__(v52++, 1);
          if (v53)
          {
            goto LABEL_125;
          }
        }

        v54 = *(v11 + 144);
        if (!v54)
        {
          v147 = 0;
          v148 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197529680);
          v146 = v11;
          sub_19752235C();
          goto LABEL_140;
        }

        v55 = *(v11 + 152);
        if (qword_1ED7C95C8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v56 = qword_1ED7CE638;
        if (*(qword_1ED7CE638 + 16))
        {
          v57 = sub_1973F7950(v54, v55);
          if (v58)
          {
            break;
          }
        }

        swift_endAccess();
        v83 = *v143;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = qword_1ED7CE638;
        v146 = qword_1ED7CE638;
        qword_1ED7CE638 = 0x8000000000000000;
        v85 = v55;
        v86 = sub_1973F7950(v54, v55);
        v88 = v10[2];
        v89 = (v87 & 1) == 0;
        v53 = __OFADD__(v88, v89);
        v90 = v88 + v89;
        if (v53)
        {
          goto LABEL_127;
        }

        v91 = v87;
        if (v10[3] >= v90)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = &v146;
            v112 = v86;
            sub_197479C3C();
            v86 = v112;
          }
        }

        else
        {
          sub_1974171F4(v90, isUniquelyReferenced_nonNull_native);
          v10 = v146;
          v86 = sub_1973F7950(v54, v85);
          if ((v91 & 1) != (v92 & 1))
          {
            goto LABEL_141;
          }
        }

        v51 = v140;
        v93 = v146;
        if ((v91 & 1) == 0)
        {
          *(v146 + 8 * (v86 >> 6) + 64) |= 1 << v86;
          v96 = (v93[6] + 16 * v86);
          *v96 = v54;
          v96[1] = v85;
          v97 = (v93[7] + 16 * v86);
          *v97 = v11;
          v97[1] = v83;
          v98 = v93[2];
          v53 = __OFADD__(v98, 1);
          v99 = v98 + 1;
          if (v53)
          {
            goto LABEL_129;
          }

LABEL_89:
          v93[2] = v99;
          goto LABEL_90;
        }

LABEL_87:
        v94 = (v93[7] + 16 * v86);
        v10 = *v94;
        v95 = v94[1];
        *v94 = v11;
        v94[1] = v83;

LABEL_90:
        qword_1ED7CE638 = v93;
        swift_endAccess();
LABEL_91:

        if (v52 == v51)
        {
          goto LABEL_119;
        }
      }

      v59 = *(*(v56 + 56) + 16 * v57 + 8);
      swift_endAccess();
      v60 = v59;
      v61 = *v143;
      v62 = v59 & 0xFFFFFFFFFFFFFF8;
      v10 = (v59 >> 62);
      if (v10)
      {
        v113 = v60;
        v114 = sub_1975220EC();
        v60 = v113;
        v63 = v114;
      }

      else
      {
        v63 = *(v62 + 16);
      }

      if (v61 >> 62)
      {
        break;
      }

      if (v63 != *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

LABEL_42:
      if (!v63)
      {
        goto LABEL_91;
      }

      v64 = v60 & 0xFFFFFFFFFFFFFF8;
      v65 = (v60 & 0xFFFFFFFFFFFFFF8) + 32;
      v133 = v60 & 0xFFFFFFFFFFFFFF8;
      if (v60 < 0)
      {
        v64 = v60;
      }

      if (v10)
      {
        v65 = v64;
      }

      v66 = v61 & 0xFFFFFFFFFFFFFF8;
      v67 = (v61 & 0xFFFFFFFFFFFFFF8) + 32;
      v132 = v61 & 0xFFFFFFFFFFFFFF8;
      if (v61 < 0)
      {
        v66 = v61;
      }

      if (v61 >> 62)
      {
        v67 = v66;
      }

      if (v65 == v67)
      {
        goto LABEL_91;
      }

      if (v63 < 0)
      {
        goto LABEL_133;
      }

      v130 = v55;
      v135 = v61 & 0xC000000000000001;
      v136 = v60 & 0xC000000000000001;
      v138 = v60;

      v137 = v61;

      v68 = 4;
      v134 = v63;
      do
      {
        v69 = v68 - 4;
        v70 = v68 - 3;
        if (__OFADD__(v68 - 4, 1))
        {
          goto LABEL_128;
        }

        if (v136)
        {
          v71 = MEMORY[0x19A8E0960](v68 - 4, v138);
          if (v135)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v69 >= *(v133 + 16))
          {
            goto LABEL_130;
          }

          v71 = *(v138 + 8 * v68);

          if (v135)
          {
LABEL_57:
            v72 = MEMORY[0x19A8E0960](v68 - 4, v137);
            goto LABEL_62;
          }
        }

        if (v69 >= *(v132 + 16))
        {
          goto LABEL_131;
        }

        v72 = *(v137 + 8 * v68);

LABEL_62:
        swift_beginAccess();
        v10 = v71[2];
        v73 = v71[3];
        swift_beginAccess();
        v74 = v10 == v72[2] && v73 == v72[3];
        if (!v74 && (sub_19752282C() & 1) == 0)
        {

LABEL_95:
          v51 = v140;
          v55 = v130;
          v63 = v134;
          goto LABEL_96;
        }

        swift_beginAccess();
        v10 = v71[5];
        v75 = v71[6];
        swift_beginAccess();
        v76 = v72[6];
        if (v75)
        {
          if (!v76 || (v10 != v72[5] || v75 != v76) && (sub_19752282C() & 1) == 0)
          {
LABEL_93:

LABEL_94:

            goto LABEL_95;
          }
        }

        else if (v76)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v71[10];
        swift_beginAccess();
        v77 = v72[10];

        v78 = sub_197415D98(v10, v77);

        if ((v78 & 1) == 0)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v71[11];
        swift_beginAccess();
        v79 = v72[11];

        v80 = sub_19741616C(v10, v79);

        if ((v80 & 1) == 0)
        {
          goto LABEL_93;
        }

        swift_beginAccess();
        v10 = v71[4];
        swift_beginAccess();
        v81 = v72[4];

        v82 = sub_197416704(v10, v81);

        if ((v82 & 1) == 0)
        {
          goto LABEL_94;
        }

        ++v68;
      }

      while (v70 != v134);

      v51 = v140;
      if (v52 == v140)
      {
        goto LABEL_119;
      }
    }

    v139 = v60;
    v115 = sub_1975220EC();
    v60 = v139;
    if (v63 == v115)
    {
      goto LABEL_42;
    }

LABEL_96:
    v100 = *v143;
    if (*v143 >> 62)
    {
      if (v100 < 0)
      {
        v116 = *v143;
      }

      if (v63 >= sub_1975220EC())
      {
        goto LABEL_91;
      }
    }

    else if (v63 >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    v83 = *v143;
    swift_beginAccess();

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v10 = qword_1ED7CE638;
    v146 = qword_1ED7CE638;
    qword_1ED7CE638 = 0x8000000000000000;
    v102 = v55;
    v86 = sub_1973F7950(v54, v55);
    v104 = v10[2];
    v105 = (v103 & 1) == 0;
    v53 = __OFADD__(v104, v105);
    v106 = v104 + v105;
    if (v53)
    {
      goto LABEL_132;
    }

    v107 = v103;
    if (v10[3] >= v106)
    {
      if ((v101 & 1) == 0)
      {
        v10 = &v146;
        v117 = v86;
        sub_197479C3C();
        v86 = v117;
      }
    }

    else
    {
      sub_1974171F4(v106, v101);
      v10 = v146;
      v86 = sub_1973F7950(v54, v102);
      if ((v107 & 1) != (v108 & 1))
      {
        while (1)
        {
LABEL_141:
          sub_1975229CC();
          __break(1u);
LABEL_142:
          swift_endAccess();
          v147 = 0;
          v148 = 0xE000000000000000;
          sub_1975221EC();

          v147 = 0xD000000000000016;
          v148 = 0x80000001975296B0;
          v127 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v127);

LABEL_140:
          sub_1975223EC();
          __break(1u);
        }
      }
    }

    v51 = v140;
    v93 = v146;
    if ((v107 & 1) == 0)
    {
      *(v146 + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v109 = (v93[6] + 16 * v86);
      *v109 = v54;
      v109[1] = v102;
      v110 = (v93[7] + 16 * v86);
      *v110 = v11;
      v110[1] = v83;
      v111 = v93[2];
      v53 = __OFADD__(v111, 1);
      v99 = v111 + 1;
      if (v53)
      {
        __break(1u);
        goto LABEL_136;
      }

      goto LABEL_89;
    }

    goto LABEL_87;
  }

LABEL_119:

  if (qword_1ED7C95C8 != -1)
  {
LABEL_136:
    swift_once();
  }

  swift_beginAccess();
  v118 = qword_1ED7CE638;
  if (!*(qword_1ED7CE638 + 16))
  {
    goto LABEL_142;
  }

  v119 = sub_1973F7950(v129, v128);
  if ((v120 & 1) == 0)
  {
    goto LABEL_142;
  }

  v121 = (*(v118 + 56) + 16 * v119);
  v122 = *v121;
  v123 = v121[1];
  swift_endAccess();

  return v122;
}

uint64_t sub_1973F5164()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1973F51A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1973F51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED7CA0C8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED7CE6B8;
  [qword_1ED7CE6B8 lock];
  if (qword_1ED7CA0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_1ED7C9B30;
  if (*(off_1ED7C9B30 + 2) && (v8 = sub_1973F7950(a1, a2), (v9 & 1) != 0))
  {
    v10 = v7[7] + 40 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v17 = *(v10 + 24);
    swift_endAccess();

    result = [v6 unlock];
    v15 = v17;
  }

  else
  {
    swift_endAccess();
    sub_1973F6688(a2, v19);
    v11 = v19[0];
    v12 = v19[1];
    v13 = v19[2];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_1ED7C9B30;
    off_1ED7C9B30 = 0x8000000000000000;
    sub_1973FA950(v19, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1ED7C9B30 = v18;
    swift_endAccess();
    result = [v6 unlock];
    v15 = v20;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_1973F53F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED7CE6C0 = result;
  return result;
}

id sub_1973F5444()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED7CE6B8 = result;
  return result;
}

uint64_t sub_1973F548C(unint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v127 = sub_1973F68A4(a6, a7);
  v13 = sub_1973F7AAC();
  v15 = v14;
  swift_beginAccess();
  if (*(*(a2 + 16) + 16))
  {
    sub_1973F4028(v13, v15);
    if (v16)
    {
      swift_endAccess();
    }
  }

  v125 = a5;
  swift_endAccess();
  type metadata accessor for Schema.Entity();
  v17 = swift_allocObject();

  Schema.Entity.init(_:)(v13, v15);
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v18);
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    sub_197521A4C();
    swift_endAccess();
    swift_beginAccess();

    v19 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v134[0] = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v124 = v13;
    sub_1973FB0A0(v17, v13, v15, isUniquelyReferenced_nonNull_native);
    v118 = v15;

    *(a2 + 16) = *&v134[0];
    swift_endAccess();
    swift_getMetatypeMetadata();
    v21 = sub_19752238C();
    v22 = v17[17];
    v17[16] = v21;
    v17[17] = v23;

    v17[18] = a1;
    v17[19] = v7;
    v24 = sub_1975214CC();
    v117 = v7;
    v119 = a1;
    v120 = v8;
    v128 = a3;
    if (!v24)
    {
      goto LABEL_44;
    }

    v13 = v24;
    v135[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
    v15 = sub_1975217CC();
    v26 = v25;
    v27 = swift_conformsToProtocol2();
    if (v27)
    {
      v28 = v27;
      v114 = v15;
      v115 = v26;
      swift_beginAccess();
      if (*(*(a2 + 16) + 16))
      {
        sub_1973F4028(v15, v26);
        if (v29)
        {
          swift_endAccess();
          v28 = v118;
          v30 = v125;
LABEL_42:
          v15 = v114;
          v42 = v124;
LABEL_43:
          swift_beginAccess();

          v62 = *(v30 + 16);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *&v134[0] = *(v30 + 16);
          *(v30 + 16) = 0x8000000000000000;
          sub_19747C744(v15, v115, v42, v28, v63);

          *(v30 + 16) = *&v134[0];
          swift_endAccess();
          goto LABEL_44;
        }
      }

      swift_endAccess();
      if (qword_1ED7C95C8 != -1)
      {
LABEL_94:
        swift_once();
      }

      swift_beginAccess();
      v31 = qword_1ED7CE638;
      if (!*(qword_1ED7CE638 + 16) || (v32 = sub_1973F7950(v13, v28), (v33 & 1) == 0))
      {
        swift_endAccess();
        v61 = a3;
        v30 = v125;
        sub_1973F548C(v13, a2, v61, a4, v125, v13, v28);
        v28 = v118;
        goto LABEL_42;
      }

      v34 = (*(v31 + 56) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      swift_endAccess();
      swift_beginAccess();
      swift_retain_n();
      v122 = v35;

      v37 = *(a2 + 16);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *&v134[0] = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      v15 = v114;
      sub_1973FB0A0(v36, v114, v115, v38);

      *(a2 + 16) = *&v134[0];
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x19A8E00D0](v39);
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v112 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      v40 = (a3 + 16);
      sub_197521A4C();
      swift_endAccess();
      v41 = v122;
      v42 = v124;
      v28 = v118;
      if (!(v122 >> 62))
      {
        v43 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_17;
        }

        goto LABEL_96;
      }

      v40 = v122;
      v43 = sub_1975220EC();
      v41 = v122;
      if (!v43)
      {
LABEL_96:

        v30 = v125;
        goto LABEL_43;
      }

LABEL_17:
      if (v43 < 1)
      {
        __break(1u);
        objc_autoreleasePoolPop(v40);
        __break(1u);
        objc_autoreleasePoolPop(a3);
        __break(1u);
LABEL_98:
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_1975221EC();
        v26 = &v131;
        MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197529810);
        sub_19752235C();
        while (1)
        {
LABEL_100:
          sub_1975223EC();
          __break(1u);
LABEL_101:
          sub_1975229CC();
          __break(1u);
LABEL_102:
          v135[0] = 0;
          v135[1] = 0xE000000000000000;
          v113 = v15;
          v15 = v26;
          v26 = v135;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x7974206C65646F4DLL, 0xEB00000000206570);
          MEMORY[0x19A8DFF80](v124, v118);
          MEMORY[0x19A8DFF80](v28 + 34, 0x80000001975298A0);
          MEMORY[0x19A8DFF80](v113, v15);
          MEMORY[0x19A8DFF80](v28 + 2, 0x80000001975298E0);
          MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
        }
      }

      v15 = 0;
      v121 = v41 & 0xC000000000000001;
      v116 = v43;
      while (1)
      {
        if (v121)
        {
          v7 = MEMORY[0x19A8E0960](v15);
        }

        else
        {
          v7 = *(v41 + 8 * v15 + 32);
        }

        swift_beginAccess();
        v28 = *(v7 + 16);
        v13 = *(v7 + 24);
        swift_beginAccess();

        v44 = *(a2 + 16);
        v8 = swift_isUniquelyReferenced_nonNull_native();
        *&v134[0] = *(a2 + 16);
        v45 = *&v134[0];
        *(a2 + 16) = 0x8000000000000000;
        a1 = sub_1973F4028(v28, v13);
        v47 = *(v45 + 16);
        v48 = (v46 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_91;
        }

        a3 = v46;
        if (*(v45 + 24) >= v49)
        {
          if (v8)
          {
            v52 = *&v134[0];
            if (v46)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_197479C28();
            v52 = *&v134[0];
            if (a3)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_197417494(v49, v8);
          v26 = *&v134[0];
          v50 = sub_1973F4028(v28, v13);
          if ((a3 & 1) != (v51 & 1))
          {
            goto LABEL_101;
          }

          a1 = v50;
          v52 = *&v134[0];
          if (a3)
          {
LABEL_29:
            v53 = v52[7];
            v54 = *(v53 + 8 * a1);
            *(v53 + 8 * a1) = v7;

            goto LABEL_33;
          }
        }

        v52[(a1 >> 6) + 8] |= 1 << a1;
        v55 = (v52[6] + 16 * a1);
        *v55 = v28;
        v55[1] = v13;
        *(v52[7] + 8 * a1) = v7;
        v56 = v52[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          __break(1u);
          goto LABEL_94;
        }

        v52[2] = v58;
LABEL_33:
        *(a2 + 16) = v52;
        swift_endAccess();
        a3 = v128;
        swift_beginAccess();

        MEMORY[0x19A8E00D0](v59);
        a1 = v119;
        v8 = v120;
        v42 = v124;
        if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((*(v128 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1975219FC();
        }

        ++v15;
        sub_197521A4C();
        swift_endAccess();

        v41 = v122;
        if (v116 == v15)
        {

          v7 = v117;
          v28 = v118;
          v30 = v125;
          v15 = v114;
          goto LABEL_43;
        }
      }
    }

    v28 = 0xD000000000000013;
    if ((v15 != 0xD000000000000013 || 0x8000000197529880 != v26) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_44:
    v13 = MEMORY[0x1E69E7CC0];
    v138 = MEMORY[0x1E69E7CC0];
    v139 = MEMORY[0x1E69E7CC0];
    v64 = v127;
    a3 = *(v127 + 16);
    if (!a3)
    {
      break;
    }

    v13 = 0;
    v15 = 0;
    v65 = v127 + 32;
    while (v13 < *(v64 + 16))
    {
      v66 = sub_1973F7E64(v65, v135);
      v67 = MEMORY[0x19A8E1370](v66);
      sub_1974F3888(v135, a2, v128, a4, v125, &v139);
      v13 = (v13 + 1);
      objc_autoreleasePoolPop(v67);
      sub_1973F82A8(v135);
      v65 += 96;
      v64 = v127;
      if (a3 == v13)
      {
        v13 = v139;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    sub_1975219FC();
  }

  v15 = 0;
LABEL_50:
  v124 = v13[2];
  v125 = v13;
  if (v124)
  {
    v123 = v13 + 4;

    a2 = 0;
    a4 = MEMORY[0x1E69E7CC0];
    v129 = MEMORY[0x1E69E7CC8];
    do
    {
      if (a2 >= v13[2])
      {
        goto LABEL_89;
      }

      sub_1973FA430(&v123[5 * a2], v135);
      v68 = v136;
      v69 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v70 = (*(v69 + 32))(v68, v69);
      v72 = v71;
      sub_1973FA430(v135, v134);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v129;
      sub_19747C5F0(v134, v70, v72, v73);

      v129 = v131;
      sub_1973FA430(v135, v134);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v74 = v130;
        swift_beginAccess();

        sub_197417B28(&v133, v130);
        swift_endAccess();

        swift_beginAccess();
        v75 = *(v130 + 16);
        a3 = *(v130 + 24);
        swift_beginAccess();

        v76 = v17[12];
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v17[12];
        v17[12] = 0x8000000000000000;
        sub_1974184C4(v130, v75, a3, v77);

        v17[12] = v133;
        swift_endAccess();
        swift_beginAccess();
        v78 = *(v130 + 48);
        v79 = (v78 + 64);
        v80 = *(v78 + 16) + 1;
        while (--v80)
        {
          v81 = *v79;
          v79 += 40;
          if (v81 == 1)
          {
            goto LABEL_65;
          }
        }

LABEL_52:
      }

      else
      {
        type metadata accessor for Schema.Relationship();
        if (!swift_dynamicCast())
        {
          goto LABEL_98;
        }

        v74 = v130;
        swift_beginAccess();

        sub_19741DE84(&v133, v130);
        swift_endAccess();

        swift_beginAccess();
        v82 = *(v130 + 16);
        a3 = *(v130 + 24);
        swift_beginAccess();

        v83 = v17[13];
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v17[13];
        v17[13] = 0x8000000000000000;
        sub_19741E9CC(v130, v82, a3, v84);

        v17[13] = v133;
        swift_endAccess();
        swift_beginAccess();
        v85 = *(v130 + 56);
        v86 = *(v85 + 16);
        v87 = (v85 + 32);
        do
        {
          if (!v86)
          {
            goto LABEL_52;
          }

          v88 = *v87++;
          --v86;
        }

        while (v88 != 1);
        if (*(v130 + 168) == 1)
        {
LABEL_65:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_19752C280;
          v90 = *(v74 + 24);
          *(v89 + 32) = *(v74 + 16);
          *(v89 + 40) = v90;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a4 = sub_19741E43C(0, a4[2] + 1, 1, a4);
          }

          a3 = a4[2];
          v91 = a4[3];
          if (a3 >= v91 >> 1)
          {
            a4 = sub_19741E43C((v91 > 1), a3 + 1, 1, a4);
          }

          a4[2] = a3 + 1;
          a4[a3 + 4] = v89;
          v138 = a4;
        }

        else
        {
          if (qword_1EAF2ADA8 != -1)
          {
            swift_once();
          }

          if (dyld_program_sdk_at_least())
          {
            v131 = 0;
            v132 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197529830);
            v28 = *(v130 + 16);
            v15 = *(v130 + 24);

            v26 = &v131;
            MEMORY[0x19A8DFF80](v28, v15);

            goto LABEL_100;
          }

          if (qword_1EAF2ACF0 != -1)
          {
            swift_once();
          }

          v92 = sub_19752157C();
          __swift_project_value_buffer(v92, qword_1EAF33E20);

          v93 = sub_19752155C();
          v94 = sub_197521DDC();

          if (os_log_type_enabled(v93, v94))
          {
            a3 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v131 = v95;
            *a3 = 136315138;
            v97 = *(v130 + 16);
            v96 = *(v130 + 24);

            v98 = sub_197462310(v97, v96, &v131);

            *(a3 + 4) = v98;
            a1 = v119;
            v8 = v120;
            _os_log_impl(&dword_1973F2000, v93, v94, "A toMany Relationship ([PersistentModel]) cannot be marked Unique - %s", a3, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm_5(v95);
            v99 = v95;
            v7 = v117;
            MEMORY[0x19A8E1B50](v99, -1, -1);
            MEMORY[0x19A8E1B50](a3, -1, -1);
          }
        }
      }

      ++a2;
      __swift_destroy_boxed_opaque_existential_1Tm_5(v134);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v135);
      v13 = v125;
    }

    while (a2 != v124);

    v100 = v129;
  }

  else
  {

    v100 = MEMORY[0x1E69E7CC8];
  }

  swift_beginAccess();
  v101 = v17[14];
  v17[14] = v100;

  swift_beginAccess();
  v102 = v17[8];
  v17[8] = v13;

  sub_1974184F4();
  a3 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  v103 = (*(v7 + 80))(v8, v7);
  v104 = v103;
  a2 = *(v103 + 16);
  if (a2)
  {
    v13 = 0;
    v105 = v103 + 32;
    do
    {
      if (v13 >= *(v104 + 16))
      {
        goto LABEL_90;
      }

      v106 = sub_1973F7E64(v105, v135);
      a3 = MEMORY[0x19A8E1370](v106);
      sub_1974F49B4(v135);
      v13 = (v13 + 1);
      objc_autoreleasePoolPop(a3);
      sub_1973F82A8(v135);
      v105 += 96;
    }

    while (a2 != v13);
    v107 = v133;
  }

  else
  {
    v107 = a3;
  }

  swift_beginAccess();
  v108 = v17[21];
  v17[21] = v107;

  v109 = v138;
  swift_beginAccess();
  v110 = v17[20];
  v17[20] = v109;
}

uint64_t sub_1973F6688@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v3 = (*(a1 + 80))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = sub_1973F7E64(v5, v27);
      v13 = MEMORY[0x19A8E1370](v12);
      v14 = *v28;
      v15 = sub_197521FFC();
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
        sub_1973F7E64(v27, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1973FB6DC(0, *(v6 + 2) + 1, 1, v6);
        }

        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        if (v18 >= v17 >> 1)
        {
          v6 = sub_1973FB6DC((v17 > 1), v18 + 1, 1, v6);
        }

        *(v6 + 2) = v18 + 1;
        v7 = &v6[96 * v18];
        v8 = v26[1];
        *(v7 + 2) = v26[0];
        *(v7 + 3) = v8;
        v9 = v26[2];
        v10 = v26[3];
        v11 = v26[5];
        *(v7 + 6) = v26[4];
        *(v7 + 7) = v11;
        *(v7 + 4) = v9;
        *(v7 + 5) = v10;
      }

      objc_autoreleasePoolPop(v13);
      sub_1973F82A8(v27);
      v5 += 96;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1973FB844(v19);
  v22 = v21;
  v23 = sub_1975214CC();

  if (v23)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    result = 0;
  }

  *a2 = v6;
  a2[1] = v20;
  a2[2] = v22;
  a2[3] = v25;
  a2[4] = result;
  return result;
}

uint64_t sub_1973F68A4(uint64_t a1, uint64_t a2)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    sub_1973F51F0(a1, a2, v9);
    v6 = v9[0];
    v7 = v9[2];
    v11 = v9[1];
    sub_1973F7E04(&v11, &qword_1EAF2B570, &qword_19752E998);
    v10 = v7;
    sub_1973F7E04(&v10, &qword_1EAF2B578, &qword_19752E9A0);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
    v5 = (v4 + 16);
    sub_1974CB990(a1, v4, a1, a1, a2, a2);
    swift_beginAccess();
    v6 = *v5;
  }

  return v6;
}

uint64_t sub_1973F69C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1973F69F8(unint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ED7CE638;
  if (*(qword_1ED7CE638 + 16) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6 + 8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1973F41BC(a1, a2);
    v8 = v9;
  }

  os_unfair_lock_unlock(v4 + 4);
  return v8;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t Schema.Attribute.init(_:originalName:hashModifier:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 104) = 0;
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  *(v5 + 48) = a1;
  v10 = swift_beginAccess();
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 56) = MEMORY[0x1E69E7CA0] + 8;
  *(v5 + 96) = 0;
  (*(*v5 + 448))(v10);
  return v5;
}

uint64_t sub_1973F6C38()
{
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 100;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 200;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 300;
  }

  if (swift_dynamicCastMetatype())
  {
    return 700;
  }

  if (swift_dynamicCastMetatype())
  {
    return 800;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 600;
  }

  sub_19752132C();
  if (swift_dynamicCastMetatype())
  {
    return 900;
  }

  type metadata accessor for Decimal(0);
  if (swift_dynamicCastMetatype())
  {
    return 400;
  }

  if (swift_dynamicCastMetatype())
  {
    return 500;
  }

  sub_19752135C();
  if (swift_dynamicCastMetatype())
  {
    return 1100;
  }

  sub_1975212CC();
  if (swift_dynamicCastMetatype())
  {
    return 1200;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1000;
  }

  return 0;
}

uint64_t sub_1973F6E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4[1];
  *(a6 + 24) = *a4;
  *(a6 + 40) = v6;
  result = *a5;
  v8 = *(a5 + 16);
  *(a6 + 56) = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 72) = v8;
  *(a6 + 88) = *(a5 + 32);
  return result;
}

BOOL sub_1973F6EEC(uint64_t a1)
{
  v1 = a1;
  v4 = a1;
  if (swift_conformsToProtocol2() && v1)
  {
    do
    {
      sub_1973F732C(v1, &v4);
      v1 = v4;
      if (swift_conformsToProtocol2())
      {
        v2 = v1 == 0;
      }

      else
      {
        v2 = 1;
      }
    }

    while (!v2);
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

uint64_t sub_1973F710C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v12[0] = v1;
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    do
    {
      sub_1973F732C(v1, v12);
      v1 = v12[0];
      if (swift_conformsToProtocol2())
      {
        v3 = v1 == 0;
      }

      else
      {
        v3 = 1;
      }
    }

    while (!v3);
  }

  result = swift_beginAccess();
  v5 = *(v0 + 48);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 40;
    if (v8 == 1)
    {
      if ((*(v0 + 120) & 0x10) == 0)
      {
        *(v0 + 120) |= 0x10u;
      }

      return result;
    }
  }

  result = sub_1973F6EEC(v1);
  if (result)
  {
    if ((*(v0 + 120) & 0x20) == 0)
    {
      *(v0 + 120) |= 0x20u;
    }
  }

  else
  {
    v11 = v1;
    if (swift_conformsToProtocol2() && v1)
    {
      v9 = v1;
      do
      {
        sub_1973F732C(v9, &v11);
        v9 = v11;
        if (swift_conformsToProtocol2())
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }
      }

      while (!v10);
    }

    sub_197520C6C();
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*(v0 + 120) & 0x40) == 0)
      {
        *(v0 + 120) |= 0x40u;
      }
    }

    else
    {
      result = sub_1973F6C38();
      if (!result)
      {
        result = swift_conformsToProtocol2();
        if (result)
        {
          if (v1)
          {
            return sub_1974FC780(v1, v1, result, v0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1973F732C(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_beginAccess();
  *a2 = AssociatedTypeWitness;
  return result;
}

uint64_t sub_1973F73DC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t static Schema.Attribute.Option.transformable(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCC0, &qword_197532068);
  result = sub_1975217CC();
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t sub_1973F74D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1973F7598(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_1973F75DC(void *a1)
{
  a1[1] = sub_1973F7598(&qword_1ED7CA310, type metadata accessor for Schema.Attribute);
  a1[2] = sub_1973F7598(&qword_1ED7CA328, type metadata accessor for Schema.Attribute);
  result = sub_1973F7598(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
  a1[3] = result;
  return result;
}

uint64_t sub_1973F7720(void *a1)
{
  a1[1] = sub_1973F7598(&qword_1ED7C9198, type metadata accessor for Schema.Relationship);
  a1[2] = sub_1973F7598(qword_1ED7C91B0, type metadata accessor for Schema.Relationship);
  result = sub_1973F7598(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
  a1[3] = result;
  return result;
}

unint64_t sub_1973F7814(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19752202C();
  v4 = sub_1975216AC();
  return sub_1973F7884(a1, v4);
}

unint64_t sub_1973F7884(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_19752202C();
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_19752173C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1973F7958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1973F79C8(char *a1, char *a2)
{
  v3 = v2;
  v6 = *(v2 + 16);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1973F7950(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = sub_1973F8C4C(a1, a2, a1, a2);
  }

  v11 = *(v3 + 16);

  os_unfair_lock_unlock(v11 + 4);

  return v10;
}

unint64_t sub_1973F7ADC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_197522A5C();
  MEMORY[0x19A8E1190](a1);
  v6 = sub_197522A9C();
  return sub_1973F7B4C(a1, a2, v6);
}

unint64_t sub_1973F7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (*(*(v3 + 48) + 16 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1973F7BBC(uint64_t a1, char *a2, char *a3)
{
  v4 = v3;
  sub_19752202C();
  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x19A8E0730](a1, KeyPath);

  if (v9)
  {
    return 0;
  }

  if (qword_1ED7C9850 != -1)
  {
    swift_once();
  }

  v11 = sub_1973F79C8(a2, a3);

  swift_beginAccess();
  v12 = sub_1973F9DB4(a1, *(v11 + 16));
  if (v12)
  {
    v13 = v12;
    swift_endAccess();

    v10 = *(v13 + 24);
    v14 = *(v13 + 32);
  }

  else
  {
    swift_endAccess();

    v10 = sub_1974D5858(a1, v4, a3);
  }

  return v10;
}

uint64_t sub_1973F7D3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = PersistentModel.persistentModelID.getter(*(a2 + a3 - 16), *(a2 + a3 - 8), &v8);
  v7 = v9;
  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

__n128 sub_1973F7D98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1973F7DA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973F7E04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973F7EC0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_1973F8160(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

uint64_t get_enum_tag_for_layout_string_9SwiftData14SchemaProperty_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1973F831C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1973F8364(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_197521FFC();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return sub_1973F7BBC(a1, v3, v4);
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v7 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v7);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

unint64_t sub_1973F84A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
    v3 = sub_19752245C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1973F7814(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1973F8590(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1973F883C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1973F4028(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747BE2C(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_1973F7EC0(v22, a4 & 1, a5, a6);
    v26 = *v11;
    v17 = sub_1973F4028(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_1973F89B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B208, &qword_19752D398);
  v34 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_19752202C();
      result = sub_1975216AC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1973F8C4C(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v5 + 24);
  type metadata accessor for Schema.KeyPathCache.BobTheKeyPathBuilder();
  swift_initStackObject();

  sub_1973F9FD8(a1, a2, v10);
  v11 = sub_1973F9B50();
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  swift_beginAccess();
  v13 = *(v5 + 24);
  if (*(v13 + 16) && (v14 = sub_1973F7950(a3, a4), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();

    return v16;
  }

  else
  {
    swift_endAccess();
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197528B80);
    v18 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v18);

    MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197528BA0);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1973F8E18(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1973F8F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_197404D0C(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return swift_endAccess();
}

uint64_t sub_1973F9030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
  v35 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v34 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_19752202C();
      result = sub_1975216AC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v34;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t *sub_1973F92D4(unint64_t a1)
{
  v3 = *v1;
  v15 = MEMORY[0x1E69E7CC8];
  v16 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_14:
    v12 = v3;
    v13 = sub_1975220EC();
    v3 = v12;
    v4 = v13;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x19A8E0960](v5, a1);
          v6 = v7;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v10 = v15;
            v11 = v16;
            goto LABEL_16;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_11;
          }
        }

        v9 = MEMORY[0x19A8E1370](v7);
        sub_1974D51B0(&v16, v6, &v15);
        objc_autoreleasePoolPop(v9);

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v1[2] = v11;
  v1[3] = v10;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1973F9454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(*(v2 + 48) + 16))
  {
    sub_1973F7950(a1, a2);
    if (v6)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  v47 = MEMORY[0x1E69E7CC0];
  v7 = sub_1973F68A4(a1, a2);
  swift_beginAccess();
  v8 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v8;
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_4:
  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1973FA32C((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v36 = a1;
  *&v8[8 * v11 + 32] = a1;
  v38 = v3;
  *(v3 + 16) = v8;
  swift_endAccess();
  v41 = *(v7 + 16);
  if (v41)
  {
    v12 = 0;
    v39 = v7 + 32;
    v40 = v7;
    while (1)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
LABEL_72:
        v8 = sub_1973FA32C(0, *(v8 + 2) + 1, 1, v8);
        *(v3 + 16) = v8;
        goto LABEL_4;
      }

      v42 = v12;
      sub_1973F7E64(v39 + 96 * v12, v44);
      a1 = v44[0];
      v13 = v44[1];
      v14 = v45;
      v15 = *v45;

      sub_197521FFC();
      v17 = v16;
      v43[0] = v16;
      v3 = swift_conformsToProtocol2();
      if (v3)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v20 = v17;
      if (!v18)
      {
        v20 = v17;
        do
        {
          sub_1973F732C(v20, v43);
          v20 = v43[0];
          if (swift_conformsToProtocol2())
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 1;
          }
        }

        while (!v21);
      }

      type metadata accessor for Schema.KeyPathCacheEntry();
      v22 = swift_allocObject();
      v22[2] = v14;
      v22[3] = a1;
      v22[4] = v13;

      v8 = &v47;
      MEMORY[0x19A8E00D0](v23);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();
      v24 = v47;
      v43[0] = v17;
      if ((v19 & 1) == 0)
      {
        do
        {
          sub_1973F732C(v17, v43);
          v17 = v43[0];
          v3 = swift_conformsToProtocol2();
          if (v3)
          {
            v25 = v17 == 0;
          }

          else
          {
            v25 = 1;
          }
        }

        while (!v25);
      }

      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        sub_19752132C();
        if (!swift_dynamicCastMetatype())
        {
          sub_19752135C();
          if (!swift_dynamicCastMetatype())
          {
            sub_1975212CC();
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              type metadata accessor for Decimal(0);
              if (!swift_dynamicCastMetatype())
              {
                break;
              }
            }
          }
        }
      }

      sub_1973F82A8(v44);

LABEL_51:
      v7 = v40;
      v12 = v42 + 1;
      if (v42 + 1 == v41)
      {

        goto LABEL_69;
      }
    }

    v26 = swift_conformsToProtocol2();
    if (v26 && v20)
    {
      v3 = v26;
      swift_beginAccess();
      v8 = *(v38 + 48);
      if (!*(v8 + 2) || (sub_1973F7950(v20, v3), (v27 & 1) == 0))
      {
        swift_endAccess();
        swift_beginAccess();
        v8 = *(v38 + 24);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *(v38 + 24) = v8;
        if ((v28 & 1) == 0)
        {
          v8 = sub_1973FA228(0, *(v8 + 2) + 1, 1, v8);
          *(v38 + 24) = v8;
        }

        v30 = *(v8 + 2);
        v29 = *(v8 + 3);
        if (v30 >= v29 >> 1)
        {
          v8 = sub_1973FA228((v29 > 1), v30 + 1, 1, v8);
        }

        *(v8 + 2) = v30 + 1;
        v31 = &v8[16 * v30];
        *(v31 + 4) = v20;
        *(v31 + 5) = v3;
        *(v38 + 24) = v8;
      }

      swift_endAccess();
    }

    else
    {

      sub_1973F9D44(&v46, v43);
      if (!v43[3])
      {
        sub_1973F82A8(v44);
        sub_1973FA4B8(v43, &qword_1EAF2BB80, &qword_197531238);
        goto LABEL_51;
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_66:
    sub_1973F82A8(v44);
    goto LABEL_51;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_69:
  type metadata accessor for Schema.ModelKeyPathCache();
  v32 = swift_allocObject();
  sub_1973F92D4(v24);
  swift_beginAccess();
  v33 = *(v38 + 48);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *(v38 + 48);
  *(v38 + 48) = 0x8000000000000000;
  sub_197413438(v32, v36, v37, v34);
  *(v38 + 48) = v43[0];
  return swift_endAccess();
}

uint64_t sub_1973F9B50()
{
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  swift_beginAccess();
  v4 = v0[6];
  if (*(v4 + 16) && (v5 = sub_1973F7950(v3, v2), (v6 & 1) != 0))
  {
    v17 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    sub_1975221EC();
    v18 = v1[4];
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0xD000000000000064, 0x8000000197528BF0);
    type metadata accessor for Schema.ModelKeyPathCache();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    while (1)
    {
      swift_beginAccess();
      v7 = v1[3];
      if (!*(v7 + 2))
      {
        break;
      }

      v8 = v1[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[3] = v7;
      if (isUniquelyReferenced_nonNull_native)
      {
        v10 = *(v7 + 2);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_19751C0C8(v7);
        v10 = *(v7 + 2);
        if (!v10)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v11 = v10 - 1;
      v12 = &v7[16 * v11];
      v13 = *(v12 + 4);
      v14 = *(v12 + 5);
      *(v7 + 2) = v11;
      v1[3] = v7;
      swift_endAccess();
      sub_1973F9454(v13, v14);
    }

    swift_endAccess();
    v15 = v1[6];
  }

  return result;
}

uint64_t sub_1973F9D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB80, &qword_197531238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1973F9DB4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1975223CC();

    if (v3)
    {
      type metadata accessor for Schema.KeyPathCacheEntry();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1973F7814(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_1973F9E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char **sub_1973F9FD8(char *a1, char *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7CC0];
  v24 = v5;
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v8 = (v5 + 16);
  v8[1] = v7;
  v9 = MEMORY[0x1E69E7CC8];
  v8[4] = a3;
  v8[5] = v9;
  v8[2] = a1;
  v8[3] = a2;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  swift_beginAccess();
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v13)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      do
      {
LABEL_8:
        v11 = *(*(a3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1973FA32C(0, *(v7 + 2) + 1, 1, v7);
          *v8 = v7;
        }

        v4 = *(v7 + 2);
        v18 = *(v7 + 3);
        if (v4 >= v18 >> 1)
        {
          v7 = sub_1973FA32C((v18 > 1), (v4 + 1), 1, v7);
        }

        v13 &= v13 - 1;
        *(v7 + 2) = v4 + 1;
        *&v7[8 * v4 + 32] = v11;
        *v8 = v7;
      }

      while (v13);
    }
  }

  swift_endAccess();

  v11 = (v8 + 1);
  v8 = v24;
  v23 = *(v24 + 32);
  swift_beginAccess();
  v4 = *(v24 + 24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v4;
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_19:
  v4 = sub_1973FA228(0, *(v4 + 2) + 1, 1, v4);
  *v11 = v4;
LABEL_15:
  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1973FA228((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  *&v4[16 * v21 + 32] = v23;
  v8[3] = v4;
  swift_endAccess();
  return v8;
}

char *sub_1973FA228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1A8, &qword_19752D338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1973FA32C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B190, &unk_19752D320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1973FA430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FA4B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FA518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FA578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FA5E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1973FA628(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1973FA674(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1973FA938(v25, v37);
      }

      else
      {
        sub_197421420(v25, v37);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1973FA938(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1973FA938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1973FA950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_19747A08C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FAAB4(v16, a4 & 1);
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
    v23 = (v22[7] + 40 * v11);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v23[4] = *(a1 + 32);
    v27 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 1) = v27;
  }

  else
  {

    return sub_1973FAD84(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1973FAAB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B288, &qword_19752D420);
  v38 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v39 = *(v23 + 24);
      v40 = v22;
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v40);
      result = sub_197522A9C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v40;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v39;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1973FAD84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

unint64_t sub_1973FADF4()
{
  result = qword_1ED7CA0D8[0];
  if (!qword_1ED7CA0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7CA0D8);
  }

  return result;
}

unint64_t sub_1973FAE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B360, &unk_19752D510);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v13, &qword_1EAF2B978, &unk_19752FCB0);
      v5 = v13;
      v6 = v14;
      result = sub_1973F4028(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_197402778(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1973FAFA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Schema.Entity.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  swift_weakInit();
  *(v2 + 176) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0] >> 62;
  v8 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1975220EC())
    {
      v8 = sub_1974F7E80(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CD0];
    }
  }

  *(v2 + 32) = v8;
  *(v2 + 64) = v6;
  *(v2 + 112) = sub_1973FAE70(v6);
  *(v2 + 72) = v6;
  *(v2 + 120) = sub_1973FAE70(v6);
  if (v7)
  {
    if (sub_1975220EC())
    {
      v9 = sub_1974F828C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CD0];
    }

    *(v2 + 80) = v9;
    *(v2 + 96) = sub_1973FAE5C(MEMORY[0x1E69E7CC0]);
    if (sub_1975220EC())
    {
      v5 = sub_1974F864C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    *(v2 + 80) = v5;
    *(v2 + 96) = sub_1973FAE5C(MEMORY[0x1E69E7CC0]);
  }

  *(v2 + 88) = v5;
  *(v2 + 104) = sub_1973FAE48(v6);
  *(v2 + 160) = v6;
  *(v2 + 168) = v6;
  return v2;
}

uint64_t sub_1973FB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = 0;
  *(v5 + 88) = 1;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 1;
  *(v5 + 136) = 0;
  *(v5 + 144) = 1;
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (a5)
  {
    swift_beginAccess();
    v9 = *(a5 + 32);
    v10 = *(a5 + 40);
  }

  else
  {
    v10 = a2;
    v9 = a1;
  }

  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  swift_beginAccess();
  *(v5 + 48) = a4;
  *(v5 + 64) = a3;
  if (a5)
  {
    swift_beginAccess();
    *(v5 + 56) = *(a5 + 56);
    swift_beginAccess();
    v11 = *(a5 + 88);
    swift_beginAccess();
    *(v5 + 88) = v11;
    swift_beginAccess();
    v12 = *(a5 + 112);
    if (v12)
    {

      v14 = sub_1973F8364(v13);
      v16 = v15;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = v14;
        swift_beginAccess();
        v19 = *(v5 + 112);
        *(v5 + 112) = v12;

        swift_beginAccess();
        v20 = *(v5 + 104);
        *(v5 + 96) = v18;
        *(v5 + 104) = v16;
      }

      else
      {

        if (qword_1EAF2ADA0 != -1)
        {
          swift_once();
        }

        v21 = dyld_program_sdk_at_least();

        if (v21)
        {
          swift_beginAccess();
          v22 = *(v5 + 112);
          *(v5 + 112) = 0;

          swift_beginAccess();
          v23 = *(v5 + 104);
          *(v5 + 96) = 0;
          *(v5 + 104) = 0;

          *(v5 + 169) = 1;
        }
      }
    }

    else
    {
      if (*(a5 + 169))
      {
        *(v5 + 169) = 1;
      }
    }

    swift_beginAccess();
    v24 = *(a5 + 120);
    v25 = *(a5 + 128);
    swift_beginAccess();
    *(v5 + 120) = v24;
    *(v5 + 128) = v25;
    swift_beginAccess();
    v26 = *(a5 + 136);
    v27 = *(a5 + 144);
    swift_beginAccess();
    *(v5 + 136) = v26;
    *(v5 + 144) = v27;
    swift_beginAccess();
    v29 = *(a5 + 152);
    v28 = *(a5 + 160);

    swift_beginAccess();
    v30 = *(v5 + 160);
    *(v5 + 152) = v29;
    *(v5 + 160) = v28;
  }

  else
  {
    *(v5 + 56) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    *(v5 + 88) = 1;
  }

  sub_1974178DC(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  v31 = sub_1975217CC();
  v33 = v32;

  *(v5 + 72) = v31;
  *(v5 + 80) = v33;
  v40 = a3;
  if (swift_conformsToProtocol2() && a3)
  {
    do
    {
      sub_1973F732C(a3, &v40);
      a3 = v40;
      if (swift_conformsToProtocol2())
      {
        v34 = a3 == 0;
      }

      else
      {
        v34 = 1;
      }
    }

    while (!v34);
  }

  v40 = a3;
  if (swift_conformsToProtocol2())
  {
    v35 = a3 == 0;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    do
    {
      sub_1973F732C(a3, &v40);
      a3 = v40;
      if (swift_conformsToProtocol2())
      {
        v36 = a3 == 0;
      }

      else
      {
        v36 = 1;
      }
    }

    while (!v36);
  }

  if (swift_conformsToProtocol2())
  {
    v37 = a3 == 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = !v37;
  *(v5 + 168) = v38;
  return v5;
}

char *sub_1973FB6DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B290, &qword_19752D428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t Schema.Index.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1973FB844(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1973F8490(MEMORY[0x1E69E7CC0]);
  v4 = sub_1973F84A4(v2);
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

uint64_t sub_1973FBAFC()
{
  type metadata accessor for Schema.KeyPathCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = result;
  v0[3] = v2;
  v0[4] = MEMORY[0x1E69E7CD0];
  qword_1ED7C9858 = v0;
  return result;
}

uint64_t sub_1973FBB94(uint64_t a1)
{
  v3 = *(v1 + 240);
  type metadata accessor for TemporaryPersistentIdentifierImplementation();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  v7 = v4;
  v8 = 2;
  v5 = swift_allocObject();
  sub_1973FBC40(a1, &v7);
  return v5;
}

uint64_t *sub_1973FBC40(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v2[3] = 0;
  *(v2 + 32) = -1;
  v2[5] = 0;
  *(v2 + 48) = 0;
  v7 = *(v4 + 240);
  type metadata accessor for KnownKeysDictionary();
  v8 = swift_allocObject();
  v9 = sub_1973FCD6C(a1, v7);
  v8[2] = v9;
  v8[3] = v10;
  memset(v14, 0, sizeof(v14));
  v8[4] = sub_1973FE64C(v14, *(v9 + 16));
  v11 = v2[3];
  v2[2] = v8;
  v2[3] = v5;
  v12 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_1974A1014(v11, v12);
  return v2;
}

void static PersistentModel.createBackingData<A>()(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (_SD_get_faulting_backingdata_tsd())
  {
    type metadata accessor for _NullBackingData();
    v4 = sub_1974346C4();
    _SD_remove_faulting_backingdata_tsd();
  }

  else
  {
    type metadata accessor for _KKMDBackingData();
    v4 = sub_1973FBB94(a1);
  }

  *a2 = v4;
}

uint64_t dispatch thunk of BackingData.setValue<A>(forKey:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 112))();
}

{
  return (*(a6 + 128))();
}

{
  return (*(a6 + 120))();
}

uint64_t sub_1973FBE18(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v10 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v6 = v10;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v9);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v6);

  sub_1973FCF28(v9, a1);
}

uint64_t PersistentModel.getValue<A>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B2F38(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v19, v9, a2);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    (*(v17 + 64))(a1, *(v7 + *v8 + 8), a3, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
  }

  else
  {
    sub_1974C2DAC(a1, a2, &v19);
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
      sub_1974C30BC(v12, v10, v3, v9, *(v7 + *v8 + 8), v12, a2, a3, v13);
      return sub_1973F82A8(&v19);
    }
  }

  return result;
}

{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B3098(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v20, v9, a2);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    v15 = (*(v17 + 80))(a1, *(*(v7 + *v8 + 8) + 16), a3, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
    return v15;
  }

  sub_1974C2DAC(a1, a2, &v20);
  v10 = v21;
  v11 = *v21;
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

  if (!v14)
  {
    v15 = sub_1974C4DD8(v12, v10, v3, v9, *(*(v7 + *v8 + 8) + 16), v12, a2, a3, v13, 53, 0x74706F20646E6120, 0xEE00206C616E6F69);
    sub_1973F82A8(&v20);
    return v15;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v19 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v19);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a2))
  {
    sub_1974258A4(v9, a2);
  }

  if (PersistentModel.modelContext.getter(v9, a2))
  {
    sub_1974B3098(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a2 + 56))(&v20, v9, a2);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    v15 = (*(v17 + 72))(a1, *(v7 + *v8 + 8), a3, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
    return v15;
  }

  sub_1974C2DAC(a1, a2, &v20);
  v10 = v21;
  v11 = *v21;
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

  if (!v14)
  {
    v15 = sub_1974C47A8(v12, v10, v3, v9, *(v7 + *v8 + 8), v12, a2, a3, v13);
    sub_1973F82A8(&v20);
    return v15;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v19 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v19);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FC1E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_197512E44();
  result = type metadata accessor for _ModelMetadata();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1973FC218(void *a1)
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

uint64_t sub_1973FC6F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752C280;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  sub_1974028EC(v7, v8);
  sub_197425CF8(inited, a2, a3);
  swift_setDeallocating();
  sub_197428E18(inited + 32);
  *&v23[0] = v7;
  BYTE8(v23[0]) = v8;
  sub_1974028EC(v7, v8);
  swift_getExtendedExistentialTypeMetadata();
  sub_197405108();
  sub_19752167C();

  sub_1974028C8(v7, v8);
  if (v22)
  {
    sub_197402778(&v21, v23);
    return sub_197402778(v23, a4);
  }

  else
  {
    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v11 = sub_19752157C();
    __swift_project_value_buffer(v11, qword_1EAF33E50);
    sub_1974028EC(v7, v8);
    v12 = sub_19752155C();
    v13 = sub_197521DDC();
    sub_1974028C8(v7, v8);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v21 = v20;
      *v14 = 136315138;
      *&v23[0] = v7;
      BYTE8(v23[0]) = v8;
      sub_1974028EC(v7, v8);
      v15 = sub_1975217CC();
      v17 = sub_197462310(v15, v16, &v21);

      *(v14 + 4) = v17;
      _os_log_impl(&dword_1973F2000, v12, v13, "Unable to fulfill future for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x19A8E1B50](v20, -1, -1);
      MEMORY[0x19A8E1B50](v14, -1, -1);
    }

    v18 = type metadata accessor for _InvalidFutureBackingData();
    *&v23[0] = v7;
    BYTE8(v23[0]) = v8;
    sub_1974028EC(v7, v8);
    v19 = sub_197512F60(a2, v23);
    a4[3] = v18;
    result = swift_getWitnessTable();
    a4[4] = result;
    *a4 = v19;
  }

  return result;
}

unint64_t sub_1973FCC48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B438, &qword_19752D5F8);
    v3 = sub_19752245C();
    for (i = a1 + 32; ; i += 32)
    {
      sub_1974047F8(i, &v11, &qword_1EAF2B8C8, &unk_19752FB80);
      v10 = v11;
      result = sub_1973F7950(v11, *(&v11 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_197480ED0(&v12, v3[7] + 16 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      if (!--v1)
      {
        return v3;
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

uint64_t sub_1973FCD6C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C8350 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C8358;
  os_unfair_lock_lock((qword_1ED7C8358 + 16));
  if (qword_1ED7C8360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1ED7C8368;
  if (*(off_1ED7C8368 + 2) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = (v5[7] + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1973F68A4(a1, a2);
    v9 = sub_197439308(v11);
    v13 = v12;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = off_1ED7C8368;
    off_1ED7C8368 = 0x8000000000000000;
    sub_1974395F4(v9, v13, a1, a2, isUniquelyReferenced_nonNull_native);
    off_1ED7C8368 = v16;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v4 + 4);
  return v9;
}

uint64_t sub_1973FCF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_1973F7814(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  swift_beginAccess();
  v9 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = sub_19751C104(v9);
    *(v3 + 32) = v9;
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v8 < v9[2])
      {
        sub_1973F7958(a1, &v9[4 * v8 + 4]);
        *(v3 + 32) = v9;
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
  MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
  sub_19752202C();
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FD110()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 1;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1975220EC())
  {
    v1 = sub_1974F8FFC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 88) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = sub_1973FCC48(MEMORY[0x1E69E7CC0]);
  *(v0 + 104) = sub_1974BF658(v2);
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1973FD1A4(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_1973FFD10(a1, a2);
  return v4;
}

uint64_t sub_1973FD1F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 232);
  v4 = *(v2 + 240);
  type metadata accessor for Schema.Entity();
  v87 = sub_1973FDF38(v3, v4);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  sub_1974ADEAC(v5, *(v1 + 32));
  v7 = &unk_19752C000;
  if (v6 == 255)
  {
    if (qword_1EAF2AC88 != -1)
    {
LABEL_77:
      swift_once();
    }

    v8 = sub_19752157C();
    __swift_project_value_buffer(v8, qword_1EAF33DD0);

    v9 = sub_19752155C();
    v10 = sub_197521DDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = v7[19];
      *&v99[0] = v1;

      v13 = sub_1975217CC();
      v15 = sub_197462310(v13, v14, v103);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1973F2000, v9, v10, "This backing data has no persistent identifier? %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
      MEMORY[0x19A8E1B50](v12, -1, -1);
      MEMORY[0x19A8E1B50](v11, -1, -1);
    }
  }

  else
  {
    sub_1974A1014(v5, v6);
  }

  v102 = 0;
  v16 = *(sub_197512E44() + 16);

  if (v16)
  {
    v17 = *(v16 + 48);

    v86 = v17;
    v102 = v17;
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v18 = sub_19752157C();
    __swift_project_value_buffer(v18, qword_1EAF33DD0);
    v19 = sub_19752155C();
    v20 = sub_197521DDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1973F2000, v19, v20, "Illegal attempt to flip relationships to IDs when not bound to a context.", v21, 2u);
      MEMORY[0x19A8E1B50](v21, -1, -1);
    }

    v86 = 0;
  }

  swift_beginAccess();
  v22 = v87[11];
  if ((v22 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v22 = v103[0];
    v23 = v103[1];
    v24 = v103[2];
    v25 = v103[3];
    v26 = v103[4];
  }

  else
  {
    v27 = -1 << *(v22 + 32);
    v23 = v22 + 56;
    v28 = ~v27;
    v29 = -v27;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & *(v22 + 56);

    v24 = v28;
    v25 = 0;
  }

  v31 = (v24 + 64) >> 6;
  v85 = v7[19];
  v89 = v22;
  v90 = v23;
  for (i = v31; ; v31 = i)
  {
    if (v22 < 0)
    {
      v36 = sub_19752212C();
      if (!v36 || (*&v97 = v36, type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v35 = *&v99[0], v91 = v26, v92 = v25, !*&v99[0]))
      {
LABEL_72:
        sub_1973FF47C();

        *(v1 + 48) = 1;
        return result;
      }
    }

    else
    {
      v32 = v25;
      v33 = v26;
      v34 = v25;
      if (!v26)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_72;
          }

          v33 = *(v23 + 8 * v34);
          ++v32;
          if (v33)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_28:
      v91 = (v33 - 1) & v33;
      v92 = v34;
      v35 = *(*(v22 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

      if (!v35)
      {
        goto LABEL_72;
      }
    }

    swift_beginAccess();
    v93 = v35;
    v37 = *(v35 + 48);
    if (!v37)
    {
      break;
    }

    v38 = *(v1 + 16);
    v39 = *(v38 + 24);
    v40 = *(v39 + 16);

    v94 = v37;
    if (v40 && (v41 = sub_1973F7814(v37), (v42 & 1) != 0))
    {
      v43 = *(*(v39 + 56) + 8 * v41);
      swift_beginAccess();
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v44 = *(v38 + 32);
      if (v43 >= *(v44 + 16))
      {
        goto LABEL_76;
      }

      sub_197413B20(v44 + 32 * v43 + 32, &v97);
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
    }

    v22 = v89;
    if (!*(&v98 + 1))
    {

      sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_22;
    }

    sub_1974028B8(&v97, v99);
    sub_197404860(v99, &v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      v45 = v101;
      ObjectType = swift_getObjectType();
      PersistentModel.persistentModelID.getter(ObjectType, v45, &v97);
      v7 = v97;
      v47 = BYTE8(v97);
      v48 = *(v1 + 16);
      *(&v98 + 1) = &type metadata for PersistentIdentifier;

      sub_1974028EC(v7, v47);
      sub_1973FCF28(&v97, v37);

      if (v47)
      {
        if (v47 == 1 && (*(v7 + 33) & 1) == 0)
        {
LABEL_59:
          __swift_destroy_boxed_opaque_existential_1Tm_7(v99);

          sub_1974028C8(v7, v47);

          swift_unknownObjectRelease();
          goto LABEL_22;
        }
      }

      else if (![v7 isTemporaryID])
      {
        goto LABEL_59;
      }

      if (v86)
      {
        if (qword_1EAF2AC88 != -1)
        {
          swift_once();
        }

        v49 = sub_19752157C();
        __swift_project_value_buffer(v49, qword_1EAF33DD0);

        sub_1974028EC(v7, v47);
        v50 = sub_19752155C();
        v51 = sub_197521DDC();
        sub_1974028C8(v7, v47);

        if (!os_log_type_enabled(v50, v51))
        {

          sub_1974028C8(v7, v47);

LABEL_70:

          swift_unknownObjectRelease();
          goto LABEL_71;
        }

        v52 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v100 = v83;
        *v52 = 136315394;
        *&v97 = v7;
        BYTE8(v97) = v47;
        sub_1974028EC(v7, v47);
        v53 = sub_1975217CC();
        v55 = sub_197462310(v53, v54, &v100);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        *&v97 = v1;

        v56 = sub_1975217CC();
        v58 = sub_197462310(v56, v57, &v100);

        *(v52 + 14) = v58;
        _os_log_impl(&dword_1973F2000, v50, v51, "Illegal attempt to flip a temporary object to a future %s: %s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8E1B50](v83, -1, -1);
        v59 = v52;
      }

      else
      {
        if (qword_1EAF2AC88 != -1)
        {
          swift_once();
        }

        v69 = sub_19752157C();
        __swift_project_value_buffer(v69, qword_1EAF33DD0);

        v70 = sub_19752155C();
        v71 = sub_197521DDC();

        if (!os_log_type_enabled(v70, v71))
        {

          sub_1974028C8(v7, v47);

          goto LABEL_70;
        }

        v72 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&v97 = v84;
        *v72 = v85;
        v100 = v1;

        v73 = sub_1975217CC();
        v75 = sub_197462310(v73, v74, &v97);

        *(v72 + 4) = v75;
        v76 = v71;
        v50 = v70;
        _os_log_impl(&dword_1973F2000, v70, v76, "This backing data has retained a temporary object ID beyond the mutations to the context %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v84);
        MEMORY[0x19A8E1B50](v84, -1, -1);
        v59 = v72;
      }

      MEMORY[0x19A8E1B50](v59, -1, -1);

      swift_unknownObjectRelease();

      sub_1974028C8(v7, v47);
    }

    else
    {
      sub_197404860(v99, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(v99);

        goto LABEL_22;
      }

      v60 = v100;
      v61 = *(v100 + 16);
      if (v61)
      {
        v96 = MEMORY[0x1E69E7CC0];
        sub_197411CB8(0, v61, 0);
        v62 = 0;
        v63 = v96;
        v95 = v60;
        while (v62 < *(v60 + 16))
        {
          v97 = *(v60 + 16 * v62 + 32);
          swift_unknownObjectRetain();
          v7 = v1;
          sub_19751516C(&v97, &v102, v1, &v100);
          swift_unknownObjectRelease();
          v64 = v100;
          v65 = v101;
          v67 = *(v96 + 16);
          v66 = *(v96 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_197411CB8((v66 > 1), v67 + 1, 1);
          }

          ++v62;
          *(v96 + 16) = v67 + 1;
          v68 = v96 + 16 * v67;
          *(v68 + 32) = v64;
          *(v68 + 40) = v65;
          v1 = v7;
          v60 = v95;
          if (v61 == v62)
          {

            v22 = v89;
            goto LABEL_66;
          }
        }

        goto LABEL_74;
      }

      v63 = MEMORY[0x1E69E7CC0];
LABEL_66:
      v77 = *(v1 + 16);
      *(&v98 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      *&v97 = v63;

      sub_1973FCF28(&v97, v94);
    }

LABEL_71:
    __swift_destroy_boxed_opaque_existential_1Tm_7(v99);
LABEL_22:
    v26 = v91;
    v25 = v92;
    v23 = v90;
  }

  *&v99[0] = 0;
  *(&v99[0] + 1) = 0xE000000000000000;
  sub_1975221EC();
  swift_beginAccess();
  v80 = v87[2];
  v79 = v87[3];

  v100 = v80;
  v101 = v79;
  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  swift_beginAccess();
  v81 = *(v93 + 16);
  v82 = *(v93 + 24);

  MEMORY[0x19A8DFF80](v81, v82);

  MEMORY[0x19A8DFF80](0xD000000000000019, 0x800000019752B1D0);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1973FDED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FDF38(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ED7CE638;
  if (*(qword_1ED7CE638 + 16) && (v6 = sub_1973F7950(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = sub_1973F41BC(a1, a2);
  }

  os_unfair_lock_unlock(v4 + 4);
  return v8;
}

uint64_t sub_1973FE074(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1Tm_2(v6, v7);
  v4 = sub_1973FE71C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v6);
  return v4;
}

uint64_t sub_1973FE0E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE1B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1973FE21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_3(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_5(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1973FE58C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FE5EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1973FE64C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v4 = sub_197521A2C();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_197413B20(v3, v5);
        v5 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1973FE5EC(v3, &qword_1EAF2AF20, &unk_19752F320);
    return v4;
  }

  return result;
}

uint64_t sub_1973FE6F0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 112);

  return v2;
}

uint64_t sub_1973FE71C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(v4);
  type metadata accessor for _ModelMetadata();
  if (swift_dynamicCast())
  {
    return v3;
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1973FE8DC(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  v81 = sub_1975212CC();
  v8 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81, v9);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = -1 << *(v3 + 32);
  v13 = a3 & ~v12;
  v83 = v3 + 64;
  if (((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return v13;
  }

  v82 = ~v12;
  v78 = v3;
  v79 = (v10 + 8);
  while (1)
  {
    v15 = *(v4 + 48) + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (!*(v15 + 8))
    {
      if (!a2)
      {
        sub_1973FF680(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a1, 0);
        sub_1974028EC(v16, 0);
        v14 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v16, 0);
        if (v14)
        {
          return v13;
        }

        goto LABEL_74;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v23 = swift_allocObject();
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v16, 0);
      v24 = [v16 persistentStore];
      if (v24 && (v25 = v24, v26 = [v24 identifier], v25, v26))
      {
        v27 = sub_1975217BC();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      *(v23 + 16) = v27;
      *(v23 + 24) = v29;
      *(v23 + 33) = [v16 isTemporaryID];
      *(v23 + 32) = 1;
      v47 = [v16 URIRepresentation];
      v48 = v80;
      sub_19752127C();

      v49 = sub_19752123C();
      v51 = v50;
      (*v79)(v48, v81);
      *(v23 + 56) = v49;
      *(v23 + 64) = v51;
      v52 = [v16 entityName];
      v53 = sub_1975217BC();
      v55 = v54;

      *(v23 + 72) = v53;
      *(v23 + 80) = v55;
      v37 = a2;
      goto LABEL_45;
    }

    if (v17 == 1)
    {
      if (a2 == 1)
      {
        v18 = v16[7] == a1[7] && v16[8] == a1[8];
        if (v18 || (sub_19752282C() & 1) != 0)
        {
          v19 = v16[9] == a1[9] && v16[10] == a1[10];
          if (v19 || (sub_19752282C() & 1) != 0)
          {
            v20 = v16[3];
            v21 = a1[3];
            if (v20)
            {
              if (v21)
              {
                v22 = v16[2] == a1[2] && v20 == v21;
                if (v22 || (sub_19752282C() & 1) != 0)
                {
                  return v13;
                }
              }
            }

            else if (!v21)
            {
              return v13;
            }
          }
        }

        goto LABEL_74;
      }

      sub_1974028EC(v16, 1);
      sub_1974028EC(a1, a2);
      sub_1974028EC(v16, 1);
      v23 = v16;
      v37 = a2;
      if (!a2)
      {
        goto LABEL_38;
      }

LABEL_45:
      if (v37 == 1)
      {
        sub_1974028EC(a1, 1);
        v38 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v38 = swift_allocObject();
        *(v38 + 40) = 0;
        *(v38 + 48) = 0;
        *(v38 + 56) = sub_19750A470();
        *(v38 + 64) = v56;
        *(v38 + 72) = sub_19750A588();
        *(v38 + 80) = v57;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 32) = 256;
      }

      goto LABEL_50;
    }

    if (a2 != 2)
    {
      break;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v16, 2);
    v30 = sub_19750A470();
    v32 = v31;
    if (v30 == sub_19750A470() && v32 == v33)
    {
    }

    else
    {
      v35 = sub_19752282C();

      if ((v35 & 1) == 0)
      {
        v36 = 2;
        LOBYTE(v17) = 2;
LABEL_65:
        sub_1974028C8(a1, v36);
        sub_1974028C8(v16, v17);
        goto LABEL_74;
      }
    }

    v71 = sub_19750A588();
    v73 = v72;
    if (v71 == sub_19750A588() && v73 == v74)
    {

      a2 = 2;
      LOBYTE(v17) = 2;
      goto LABEL_79;
    }

    v76 = sub_19752282C();

    sub_1974028C8(a1, 2);
    sub_1974028C8(v16, 2);
    if (v76)
    {
      return v13;
    }

LABEL_74:
    v13 = (v13 + 1) & v82;
    if (((*(v83 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return v13;
    }
  }

  type metadata accessor for PersistentIdentifierImplementation();
  v23 = swift_allocObject();
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  sub_1974028EC(a1, a2);
  sub_1974028EC(v16, 2);
  *(v23 + 56) = sub_19750A470();
  *(v23 + 64) = v45;
  *(v23 + 72) = sub_19750A588();
  *(v23 + 80) = v46;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 256;
  v37 = a2;
  if (a2)
  {
    goto LABEL_45;
  }

LABEL_38:
  type metadata accessor for PersistentIdentifierImplementation();
  v38 = swift_allocObject();
  *(v38 + 40) = 0;
  *(v38 + 48) = 0;
  v39 = [a1 persistentStore];
  if (v39 && (v40 = v39, v41 = [v39 identifier], v40, v41))
  {
    v42 = sub_1975217BC();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  *(v38 + 16) = v42;
  *(v38 + 24) = v44;
  *(v38 + 33) = [a1 isTemporaryID];
  *(v38 + 32) = 1;
  v58 = [a1 URIRepresentation];
  v59 = v80;
  sub_19752127C();

  v60 = sub_19752123C();
  v62 = v61;
  (*v79)(v59, v81);
  *(v38 + 56) = v60;
  *(v38 + 64) = v62;
  v63 = [a1 entityName];
  v64 = sub_1975217BC();
  v66 = v65;

  *(v38 + 72) = v64;
  *(v38 + 80) = v66;
  v4 = v78;
LABEL_50:
  if ((*(v23 + 56) != *(v38 + 56) || *(v23 + 64) != *(v38 + 64)) && (sub_19752282C() & 1) == 0 || (*(v23 + 72) != *(v38 + 72) || *(v23 + 80) != *(v38 + 80)) && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_62;
  }

  v67 = *(v23 + 24);
  v68 = *(v38 + 24);
  if (!v67)
  {

    if (!v68)
    {
      goto LABEL_78;
    }

    goto LABEL_64;
  }

  if (!v68)
  {
LABEL_62:

LABEL_64:

    v36 = a2;
    goto LABEL_65;
  }

  if (*(v23 + 16) != *(v38 + 16) || v67 != v68)
  {
    v69 = *(v38 + 24);
    v70 = sub_19752282C();

    sub_1974028C8(a1, a2);
    sub_1974028C8(v16, v17);
    if (v70)
    {
      return v13;
    }

    goto LABEL_74;
  }

LABEL_78:

LABEL_79:
  sub_1974028C8(a1, a2);
  sub_1974028C8(v16, v17);
  return v13;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1973FF110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1E0, &qword_19752D370);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 48 * v21);
      if (v36)
      {
        sub_1974028A0(v25, v37);
      }

      else
      {
        sub_1973FDED4(v25, v37);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1974028A0(v37, (*(v8 + 56) + 48 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1973FF3D4()
{
  result = qword_1ED7C77D0;
  if (!qword_1ED7C77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77D0);
  }

  return result;
}

unint64_t sub_1973FF428()
{
  result = qword_1ED7C77D8;
  if (!qword_1ED7C77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77D8);
  }

  return result;
}

_OWORD *sub_1973FF48C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1974028B8(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1973FF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  swift_beginAccess();
  v11 = *(v4 + 32);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_197403C30(v9, v10);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_197404860(a1, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1973FF710(v20, a3, a4, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  sub_1974028EC(v9, v10);
  v16 = *(v5 + 32);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  sub_1973FF658(v14, v9, v10, v17);
  sub_1974028C8(v9, v10);
  *(v5 + 32) = v19;
  return swift_endAccess();
}

uint64_t sub_1973FF680(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1973FF6C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

_OWORD *sub_1973FF710(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_197422CFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1973FF860(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1973F4028(a2, a3);
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
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v23);

    return sub_1974028B8(a1, v23);
  }

  else
  {
    sub_1973FF48C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1973FF860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1974028B8(v25, v37);
      }

      else
      {
        sub_197404860(v25, v37);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1974028B8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1973FFB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v13, &qword_1EAF2B998, &qword_19752FD30);
      v5 = v13;
      v6 = v14;
      result = sub_1973F4028(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1974028B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1973FFC48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FFCAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1973FFD10(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = -1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
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
  v14 = *(v3 + 24);
  *(v3 + 24) = v90;
  v15 = *(v3 + 32);
  v87 = v3;
  *(v3 + 32) = v13;
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

uint64_t sub_1974006D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_1973FFC48(a2, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B940, &qword_19752FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8F0, &qword_19752FBD0);
  if (swift_dynamicCast())
  {
    v16 = v8;
    sub_197402778(v25, v30);
    if (swift_getAssociatedTypeWitness() == a5)
    {
      v17 = type metadata accessor for _KKMDBackingData();
      sub_1973FFC48(v30, &v27);
      v18 = sub_1973FD1A4(a1, &v27);
      v22 = sub_197512E44();
      v23 = *(v22 + 16);
      *(v22 + 16) = v16;

      *(*(v18 + 40) + 80) = 0;
      sub_197430254(1);
    }

    else
    {
      v17 = type metadata accessor for _StitchedBackingData();
      sub_1973FFC48(v30, &v27);
      v18 = sub_197512EB8(a1, &v27);
      v19 = *(v18 + 24);
      v20 = *(v19 + 16);
      *(v19 + 16) = v16;

      *(*(v18 + 24) + 80) = 0;
      sub_197512F08(1);
    }

    v28 = v17;
    WitnessTable = swift_getWitnessTable();
    *&v27 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return sub_197402778(&v27, a8);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1974050A8(v25, &qword_1EAF2B8F8, &qword_19752FBD8);
    return sub_1974B1EEC(a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_197400928(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_19752243C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_197400BC8(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_197403C30(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19747A77C();
    v10 = v13;
  }

  sub_1974028C8(*(*(v10 + 48) + 16 * v7), *(*(v10 + 48) + 16 * v7 + 8));
  v11 = *(*(v10 + 56) + 8 * v7);
  sub_1974250D0(v7, v10);
  *v3 = v10;
  return v11;
}

void sub_197400CA8(uint64_t a1, uint64_t a2, char a3, void *a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_197403C30(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_19747A790();
      v15 = v23;
      goto LABEL_8;
    }

    sub_197400E28(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_197403C30(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    sub_1974028C8(v29, v30);
  }

  else
  {
    sub_1974120E4(v15, a4, a5, a1, a2, a3, v26);

    sub_1974028EC(a4, a5);
  }
}

uint64_t sub_197400E28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1D8, &qword_19752D368);
  v46 = a2;
  result = sub_19752243C();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v2;
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
    v45 = v5;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 16 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v5 + 56) + 24 * v23;
      v28 = *v27;
      v48 = *(v27 + 8);
      v47 = *(v27 + 16);
      if ((v46 & 1) == 0)
      {
        sub_1974028EC(v25, v26);

        sub_1974028EC(v48, v47);
      }

      v29 = *(v8 + 40);
      sub_197522A5C();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v30 = *(v25 + 56);
          v31 = *(v25 + 64);
          sub_19752180C();
          v32 = *(v25 + 72);
          v33 = *(v25 + 80);
          sub_19752180C();
          if (*(v25 + 24))
          {
            v43 = *(v25 + 16);
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v34 = *(v25 + 33);
          sub_197522A7C();
          v5 = v45;
          *(v25 + 32);
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v28;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 16 * v16;
      *v18 = v25;
      *(v18 + 8) = v26;
      v19 = *(v8 + 56) + 24 * v16;
      *v19 = v17;
      *(v19 + 8) = v48;
      *(v19 + 16) = v47;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_46;
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

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_44;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_44:
  *v3 = v8;
  return result;
}

id sub_197401268@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_197401280(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1973F4028(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_197438F7C(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197400928(v22, a4 & 1, a5, a6);
    v26 = *v11;
    v17 = sub_1973F4028(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

unint64_t sub_197401438(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_197401480(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a7 + 24))(v74, a5, a7);
  v14 = v74[0];
  LODWORD(v15) = LOBYTE(v74[1]);
  v72 = v8;
  v68 = a4;
  if (LOBYTE(v74[1]))
  {
    if (LOBYTE(v74[1]) == 1)
    {
      v17 = *(v74[0] + 9);
      v16 = *(v74[0] + 10);
    }

    else
    {
      v17 = sub_19750A588();
      v16 = v20;
    }
  }

  else
  {
    v18 = [v74[0] entityName];
    v17 = sub_1975217BC();
    v16 = v19;
  }

  v21 = a6;
  v23 = v17 == sub_1973F7AAC() && v16 == v22;
  v67 = a2;
  if (v23)
  {

    v25 = a2;
    v26 = a8;
    goto LABEL_27;
  }

  v24 = sub_19752282C();

  v25 = a2;
  v26 = a8;
  if (v24)
  {
    goto LABEL_27;
  }

  if (*(v72 + 16))
  {
    v27 = *(v72 + 16);
    v28 = v67;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v28 = v67;
    if (!Strong)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v27 = Strong;
  }

  v30 = *(v27 + 16);

  v31 = *(v30 + 72);

  if (v15)
  {
    if (v15 == 1)
    {
      v32 = v14[9];
      v33 = v14[10];
    }

    else
    {
      v32 = sub_19750A588();
      v33 = v36;
    }
  }

  else
  {
    v34 = [v14 entityName];
    v32 = sub_1975217BC();
    v33 = v35;
  }

  if (!*(v31 + 16))
  {

LABEL_44:

    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975271B0);
    if (v15)
    {
      if (v15 == 1)
      {
        v15 = v14[9];
        v14 = v14[10];
      }

      else
      {
        v15 = sub_19750A588();
        v14 = v56;
      }
    }

    else
    {
      v54 = [v14 entityName];
      v15 = sub_1975217BC();
      v14 = v55;
    }

    MEMORY[0x19A8DFF80](v15, v14);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975271D0);
    if (*(v72 + 16))
    {
      v65 = *(v72 + 16);
    }

    else
    {
      v57 = swift_weakLoadStrong();
      if (!v57)
      {
        __break(1u);
        goto LABEL_52;
      }

      v65 = v57;
    }

    v66 = *(v65 + 16);

    v77 = v66;
    type metadata accessor for Schema();
    sub_19752235C();

    goto LABEL_62;
  }

  v37 = sub_1973F4028(v32, v33);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    goto LABEL_44;
  }

  v40 = *(*(v31 + 56) + 8 * v37);

  type metadata accessor for Schema.Entity();
  v41 = sub_1973FDF38(v28, a8);
  if (_s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v41, v40))
  {
LABEL_53:

    goto LABEL_54;
  }

  v42 = sub_1974A9950(v41, v40);

  if ((v42 & 1) == 0)
  {
LABEL_54:
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000060, 0x80000001975271F0);
    v77 = v14;
    v78 = v15;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197527260);
    v58 = sub_1973F7AAC();
    MEMORY[0x19A8DFF80](v58);

    MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197527290);
    if (v15)
    {
      v59 = 7104878;
      if (v15 == 1 && (v60 = v14[3]) != 0)
      {
        v59 = v14[2];
        v63 = v14[3];
      }

      else
      {
        v60 = 0xE300000000000000;
      }
    }

    else
    {
      v61 = [v14 storeIdentifier];
      v59 = sub_1975217BC();
      v60 = v62;
    }

    MEMORY[0x19A8DFF80](v59, v60);

    MEMORY[0x19A8DFF80](2606, 0xE200000000000000);
    sub_1975227FC();
    goto LABEL_62;
  }

  v25 = v40[18];
  if (!v25)
  {
    v74[0] = 0;
    v74[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x80000001975272E0);
    v77 = v40;
    sub_19752235C();
    goto LABEL_62;
  }

  v26 = v40[19];

LABEL_27:
  v43 = v21;
  if ((a3 & 1) == 0)
  {
    goto LABEL_41;
  }

  v44 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v45 = *(v72 + v44);
  v46 = *(v45 + 16);
  if (!v46)
  {
    goto LABEL_33;
  }

  v47 = sub_197403C30(v14, v15);
  if ((v48 & 1) == 0)
  {

    LOBYTE(v46) = 0;
LABEL_33:
    *v74 = xmmword_19752EA60;
    v75 = 0;
    v76 = 0;
    goto LABEL_34;
  }

  sub_19742FE50(*(v45 + 56) + 32 * v47, v74);

  LOBYTE(v46) = v74[1] != 1;
  if (!v74[0])
  {
LABEL_34:
    if (v46)
    {
      goto LABEL_36;
    }

    sub_1974050A8(v74, &qword_1EAF2B640, &unk_19752F160);
LABEL_41:
    v52 = sub_197401E50(v25, v72, v14, v15, a1, v68, a5, v43, v25, a7, a8, v26);
    sub_1974028C8(v14, v15);
    return v52;
  }

LABEL_36:
  v49 = swift_unknownObjectWeakLoadStrong();
  v50 = v74[1];
  sub_1974050A8(v74, &qword_1EAF2B640, &unk_19752F160);
  if (!v49)
  {
    goto LABEL_41;
  }

  ObjectType = swift_getObjectType();
  if (!PersistentModel.hasChanges.getter(ObjectType, v50))
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v74[0] = v49;
  v74[1] = v50;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (!swift_dynamicCast())
  {
    while (1)
    {
      v74[0] = 0;
      v74[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x8000000197527320);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      v64 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v64);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
LABEL_62:
      sub_1975223EC();
      __break(1u);
    }
  }

  swift_unknownObjectRelease();
  sub_1974028C8(v14, v15);
  return v73;
}

uint64_t DataStoreFetchResult.init(descriptor:fetchedSnapshots:relatedSnapshots:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Descriptor = type metadata accessor for FetchDescriptor();
  (*(*(Descriptor - 8) + 32))(a4, a1, Descriptor);
  result = type metadata accessor for DataStoreFetchResult();
  *(a4 + *(result + 52)) = a2;
  *(a4 + *(result + 56)) = a3;
  return result;
}

uint64_t sub_197401E50(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a6;
  v48 = a5;
  *&v49 = a1;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v22 = *(a2 + v21);
  v23 = *(v22 + 16);
  v45 = a3;
  if (!v23)
  {
    goto LABEL_5;
  }

  v24 = sub_197403C30(a3, a4);
  if ((v25 & 1) == 0)
  {

    LOBYTE(v23) = 0;
LABEL_5:
    v26 = 0;
    v60 = xmmword_19752EA60;
    v61 = 0;
    v62 = 0;
    goto LABEL_6;
  }

  sub_19742FE50(*(v22 + 56) + 32 * v24, &v60);

  v26 = v60 != 0;
  LOBYTE(v23) = *(&v60 + 1) != 1;
LABEL_6:
  v46 = a4;
  if (v26 || (v23 & 1) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = *(&v60 + 1);
    sub_1974050A8(&v60, &qword_1EAF2B640, &unk_19752F160);
    if (!Strong)
    {
      goto LABEL_14;
    }

    *&v60 = Strong;
    *(&v60 + 1) = v28;
    v43 = v28;
    v44 = Strong;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (!swift_dynamicCast())
    {
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197527390);
      v57 = v44;
      v58 = v43;
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      v57 = v45;
      LOBYTE(v58) = v46;
      sub_19752235C();
      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      v42 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v42);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      goto LABEL_23;
    }

    v29 = v57;
    sub_197434244(a8, a9, a11, a12, &v60);
    sub_1973FFC48(&v60, &v54);
    v50 = a9;
    swift_getExtendedExistentialTypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8E0, &qword_19752FBC0);
    if (swift_dynamicCast())
    {
      sub_197402778(&v51, &v57);
      (*(v17 + 16))(v20, v48, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8F0, &qword_19752FBD0);
      if (swift_dynamicCast())
      {
        sub_197402778(&v51, &v54);
        v30 = v59;
        __swift_project_boxed_opaque_existential_1(&v57, v59);
        (*(*(&v30 + 1) + 16))(&v54, v30, *(&v30 + 1));
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v54);
        v31 = &v60;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        __swift_destroy_boxed_opaque_existential_0Tm(&v57);
        return v29;
      }

      v53 = 0;
      v52 = 0u;
      v51 = 0u;
      sub_1974050A8(&v51, &qword_1EAF2B8F8, &qword_19752FBD8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v57);
    }

    else
    {
      v53 = 0;
      v52 = 0u;
      v51 = 0u;
      sub_1974050A8(&v51, &qword_1EAF2B8E8, &qword_19752FBC8);
    }

    *&v56 = a7;
    *(&v56 + 1) = a10;
    v34 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v54);
    (*(v17 + 16))(v34, v48, a7);
    sub_1974006D8(v49, &v54, v47, a7, a9, a10, a12, &v57);
    v35 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    ObjectType = swift_getObjectType();
    v49 = v59;
    v37 = v59;
    v38 = __swift_project_boxed_opaque_existential_1(&v57, v59);
    v56 = v49;
    v39 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v54);
    (*(*(v37 - 8) + 16))(v39, v38, v37);
    sub_1974C2050(&v54, ObjectType, v35);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
    v31 = &v54;
    goto LABEL_19;
  }

  sub_1974050A8(&v60, &qword_1EAF2B640, &unk_19752F160);
LABEL_14:
  *&v59 = a7;
  *(&v59 + 1) = a10;
  v32 = __swift_allocate_boxed_opaque_existential_1Tm_0(&v57);
  (*(v17 + 16))(v32, v48, a7);
  sub_1974006D8(v49, &v57, v47, a7, a9, a10, a12, &v60);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  _SD_set_faulting_backingdata_tsd(1);
  sub_1973FFC48(&v60, &v57);
  v33 = (*(a12 + 48))(&v57, a9, a12);
  sub_19743371C(v33, a9, a12);
  v57 = v33;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
    swift_unknownObjectRelease();
    return v54;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197527390);
  v54 = v33;
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
  v54 = v45;
  v55 = v46;
  sub_19752235C();
  MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
  v41 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v41);

  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
LABEL_23:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197402778(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197402790()
{
  sub_197411E30();

  return swift_deallocClassInstance();
}

uint64_t sub_1974027D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

_OWORD *sub_1974028A0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_OWORD *sub_1974028B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1974028C8(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_1974028EC(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_197402910@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v186 = a2;
  v170 = a4;
  v7 = *v4;
  v181 = a1;
  v8 = [a1 entity];
  v9 = [v8 name];

  if (v9)
  {
    v10 = sub_1975217BC();
    v12 = v11;

    v13 = *(v5[4] + 72);
    if (*(v13 + 16))
    {
      v14 = *(v5[4] + 72);

      v15 = sub_1973F4028(v10, v12);
      v17 = v16;

      if (v17)
      {
        v18 = *(*(v13 + 56) + 8 * v15);

        v179 = [v181 objectID];
        v199[0] = MEMORY[0x1E69E7CC8];
        swift_beginAccess();
        v19 = *(v18 + 80);
        v189 = a3;
        if ((v19 & 0xC000000000000001) != 0)
        {

          sub_1975220AC();
          type metadata accessor for Schema.Attribute();
          sub_197413CBC(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
          sub_197521C1C();
          v19 = v199[1];
          v20 = v199[2];
          v21 = v199[3];
          v22 = v199[4];
          v23 = v199[5];
        }

        else
        {
          v24 = -1 << *(v19 + 32);
          v20 = v19 + 56;
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

          v23 = v26 & *(v19 + 56);

          v22 = 0;
        }

        v171 = v18;
        v180 = 0;
        v190 = v21;
        v27 = (v21 + 64) >> 6;
        if (v19 < 0)
        {
          goto LABEL_17;
        }

        while (1)
        {
          v28 = v22;
          v29 = v23;
          v30 = v22;
          if (!v23)
          {
            while (1)
            {
              v30 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v30 >= v27)
              {
                goto LABEL_21;
              }

              v29 = *(v20 + 8 * v30);
              ++v28;
              if (v29)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            sub_1975229CC();
            __break(1u);
LABEL_112:
            *&v194 = 0;
            *(&v194 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197523E30);
            MEMORY[0x19A8DFF80](v17, v18);
            MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
            v161 = [v181 description];
            v162 = sub_1975217BC();
            v164 = v163;

            MEMORY[0x19A8DFF80](v162, v164);

            goto LABEL_115;
          }

LABEL_15:
          v17 = (v29 - 1) & v29;
          v31 = *(*(v19 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

          if (!v31)
          {
            break;
          }

          while (1)
          {
            v18 = MEMORY[0x19A8E1370](v32);
            sub_197465CE4(v31, v181, v199, v189, v179, 0);
            objc_autoreleasePoolPop(v18);

            v22 = v30;
            v23 = v17;
            if ((v19 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_17:
            v33 = sub_19752212C();
            if (v33)
            {
              *&v191 = v33;
              type metadata accessor for Schema.Attribute();
              v32 = swift_dynamicCast();
              v31 = v194;
              v30 = v22;
              v17 = v23;
              if (v194)
              {
                continue;
              }
            }

            goto LABEL_21;
          }
        }

LABEL_21:
        sub_1973FF47C();
        swift_beginAccess();
        v34 = *(v171 + 88);
        v35 = v189;
        if ((v34 & 0xC000000000000001) != 0)
        {
          if (v34 < 0)
          {
            v36 = *(v171 + 88);
          }

          sub_1975220AC();
          type metadata accessor for Schema.Relationship();
          sub_197413CBC(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
          sub_197521C1C();
          v34 = v199[6];
          v37 = v199[7];
          v38 = v199[8];
          v39 = v199[9];
          v40 = v199[10];
        }

        else
        {
          v41 = -1 << *(v34 + 32);
          v37 = v34 + 56;
          v38 = ~v41;
          v42 = -v41;
          if (v42 < 64)
          {
            v43 = ~(-1 << v42);
          }

          else
          {
            v43 = -1;
          }

          v40 = v43 & *(v34 + 56);

          v39 = 0;
        }

        v169 = v38;
        v44 = (v38 + 64) >> 6;
        v173 = v37;
        v174 = v44;
        v172 = v34;
        while (2)
        {
          if (v34 < 0)
          {
            v50 = sub_19752212C();
            if (!v50 || (*&v191 = v50, type metadata accessor for Schema.Relationship(), v49 = swift_dynamicCast(), v48 = v194, v177 = v40, v178 = v39, !v194))
            {
LABEL_102:

              result = sub_1973FF47C();
              v158 = v199[0];
              v159 = v170;
              *(v170 + 16) = 0;
              v160 = v179;
              *v159 = v158;
              v159[1] = v160;
              return result;
            }
          }

          else
          {
            v45 = v39;
            v46 = v40;
            for (i = v39; !v46; ++v45)
            {
              i = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                goto LABEL_104;
              }

              if (i >= v44)
              {
                goto LABEL_102;
              }

              v46 = *(v37 + 8 * i);
            }

            v177 = (v46 - 1) & v46;
            v178 = i;
            v48 = *(*(v34 + 48) + ((i << 9) | (8 * __clz(__rbit64(v46)))));

            if (!v48)
            {
              goto LABEL_102;
            }
          }

          v51 = MEMORY[0x19A8E1370](v49);
          swift_beginAccess();
          v17 = *(v48 + 16);
          v18 = *(v48 + 24);

          v52 = sub_19752178C();
          v187 = v48;
          v53 = v52;
          v54 = [v181 objectIDsForRelationshipNamed_];

          sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);
          v55 = sub_1975219CC();

          if (*(v187 + 168))
          {
            if (v55 >> 62)
            {
              if (sub_1975220EC() <= 0)
              {
                goto LABEL_30;
              }

              if (!sub_1975220EC())
              {
                goto LABEL_112;
              }

LABEL_44:
              v176 = v51;
              if ((v55 & 0xC000000000000001) != 0)
              {
                v56 = MEMORY[0x19A8E0960](0, v55);
              }

              else
              {
                if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_109;
                }

                v56 = *(v55 + 32);
              }

              v57 = v56;

              v58 = v35[4];

              v59 = sub_1974248B8(v17, v18, v58);

              if (v59)
              {
                v196 = &type metadata for PersistentIdentifier;
                v197 = sub_197412644();
                v198 = sub_197411E68();
                *&v194 = v57;
                BYTE8(v194) = 0;
                sub_1974028A0(&v194, &v191);
                v60 = v57;
                v61 = v199[0];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v193[0] = v61;
                v63 = v192;
                v64 = __swift_mutable_project_boxed_opaque_existential_2(&v191, v192);
                v65 = *(*(v63 - 8) + 64);
                MEMORY[0x1EEE9AC00](v64, v64);
                v67 = &v169 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v68 + 16))(v67);
                sub_197422EA0(*v67, v67[8], v17, v18, isUniquelyReferenced_nonNull_native, v193);

                __swift_destroy_boxed_opaque_existential_1Tm(&v191);
                v199[0] = v193[0];
                v69 = [v186 objectWithID_];
                sub_197424778(v69);
              }

              else
              {
                v85 = v35[5];
                *&v194 = v179;
                BYTE8(v194) = 0;

                sub_19746C188(v57, &v194, v17, v18);

                v196 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
                v197 = sub_1973FF3D4();
                v198 = sub_1973FF428();
                *&v194 = v17;
                *(&v194 + 1) = v18;
                v195 = 3;
                sub_1974028A0(&v194, &v191);

                v86 = v199[0];
                v87 = swift_isUniquelyReferenced_nonNull_native();
                v193[0] = v86;
                v88 = v192;
                v89 = __swift_mutable_project_boxed_opaque_existential_2(&v191, v192);
                v90 = *(*(v88 - 8) + 64);
                MEMORY[0x1EEE9AC00](v89, v89);
                v92 = &v169 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v93 + 16))(v92);
                sub_197404514(*v92, *(v92 + 1), v92[16], v17, v18, v87, v193);

                __swift_destroy_boxed_opaque_existential_1Tm(&v191);
                v199[0] = v193[0];
              }

              v44 = v174;
              v51 = v176;
              v34 = v172;
            }

            else
            {
              if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

LABEL_30:
            }

LABEL_31:
            objc_autoreleasePoolPop(v51);

            v40 = v177;
            v39 = v178;
            continue;
          }

          break;
        }

        v188 = v55;
        v70 = v35[4];
        v71 = *(v70 + 16);
        v176 = v51;
        if (v71)
        {
          v72 = *(v70 + 40);
          sub_197522A5C();

          sub_19752180C();
          v73 = sub_197522A9C();
          v74 = -1 << *(v70 + 32);
          v75 = v73 & ~v74;
          if ((*(v70 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
          {
            v76 = ~v74;
            while (1)
            {
              v77 = (*(v70 + 48) + 16 * v75);
              v78 = *v77 == v17 && v77[1] == v18;
              if (v78 || (sub_19752282C() & 1) != 0)
              {
                break;
              }

              v75 = (v75 + 1) & v76;
              if (((*(v70 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            v94 = v188;
            if (!(v188 >> 62))
            {
              v95 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v95)
              {
                goto LABEL_66;
              }

              goto LABEL_100;
            }

            v148 = v188;
            v95 = sub_1975220EC();
            v94 = v148;
            if (!v95)
            {
LABEL_100:

              v98 = MEMORY[0x1E69E7CC0];
LABEL_101:
              v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              v197 = sub_197412698(&qword_1ED7C77C0, sub_197412644);
              v198 = sub_197412698(&qword_1ED7C77C8, sub_197411E68);
              *&v194 = v98;
              sub_1974028A0(&v194, &v191);
              v149 = v199[0];
              v150 = swift_isUniquelyReferenced_nonNull_native();
              v193[0] = v149;
              v151 = v192;
              v152 = __swift_mutable_project_boxed_opaque_existential_2(&v191, v192);
              v153 = *(*(v151 - 8) + 64);
              MEMORY[0x1EEE9AC00](v152, v152);
              v155 = (&v169 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*(v156 + 16))(v155);
              sub_197412800(*v155, v17, v18, v150, v193);

              __swift_destroy_boxed_opaque_existential_1Tm(&v191);
              v199[0] = v193[0];
              v44 = v174;
              v51 = v176;
              goto LABEL_31;
            }

LABEL_66:
            v96 = v94;
            *&v191 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v95 & ~(v95 >> 63), 0);
            if (v95 < 0)
            {
              goto LABEL_110;
            }

            v182 = v95;
            v183 = v18;
            v97 = 0;
            v98 = v191;
            v99 = v96;
            v184 = v17;
            v185 = v96 & 0xC000000000000001;
            v175 = v96 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              v100 = v97 + 1;
              if (__OFADD__(v97, 1))
              {
                goto LABEL_105;
              }

              if (v185)
              {
                v101 = MEMORY[0x19A8E0960](v97, v99);
              }

              else
              {
                if (v97 >= *(v175 + 16))
                {
                  goto LABEL_107;
                }

                v101 = *(v99 + 8 * v97 + 32);
              }

              v190 = v101;
              v102 = [v186 objectWithID_];
              v103 = [v102 objectID];
              swift_beginAccess();
              v104 = v35[2];
              if (!*(v104 + 16))
              {
                goto LABEL_77;
              }

              v105 = v35[2];

              v106 = sub_197403C30(v103, 0);
              if ((v107 & 1) == 0)
              {
                break;
              }

              v108 = *(v104 + 56) + 24 * v106;
              v109 = *v108;
              v110 = *(v108 + 8);
              v111 = *(v108 + 16);

              sub_1974028EC(v110, v111);

              v112 = v110;
              v17 = v184;
              v113 = v111;
              v35 = v189;
              sub_1974028C8(v112, v113);
LABEL_88:
              v131 = v190;
              *&v191 = v98;
              v133 = *(v98 + 16);
              v132 = *(v98 + 24);
              if (v133 >= v132 >> 1)
              {
                sub_197411CB8((v132 > 1), v133 + 1, 1);
                v98 = v191;
              }

              *(v98 + 16) = v133 + 1;
              v134 = v98 + 16 * v133;
              *(v134 + 32) = v131;
              *(v134 + 40) = 0;
              ++v97;
              v18 = v183;
              v99 = v188;
              if (v100 == v182)
              {

                v34 = v172;
                v37 = v173;
                goto LABEL_101;
              }
            }

LABEL_77:
            swift_beginAccess();
            v114 = v102;
            v115 = v35[3];
            v17 = swift_isUniquelyReferenced_nonNull_native();
            v193[0] = v35[3];
            v116 = v193[0];
            v35[3] = 0x8000000000000000;
            v118 = sub_197403C30(v103, 0);
            v119 = *(v116 + 16);
            v120 = (v117 & 1) == 0;
            v121 = v119 + v120;
            if (__OFADD__(v119, v120))
            {
              goto LABEL_106;
            }

            v18 = v117;
            if (*(v116 + 24) >= v121)
            {
              if ((v17 & 1) == 0)
              {
                sub_19747A77C();
              }
            }

            else
            {
              sub_197425540(v121, v17);
              v122 = sub_197403C30(v103, 0);
              if ((v18 & 1) != (v123 & 1))
              {
                goto LABEL_111;
              }

              v118 = v122;
            }

            v17 = v184;
            v124 = v193[0];
            if (v18)
            {
              v125 = *(v193[0] + 56);
              v126 = *(v125 + 8 * v118);
              *(v125 + 8 * v118) = v114;
            }

            else
            {
              *(v193[0] + 8 * (v118 >> 6) + 64) |= 1 << v118;
              v127 = v124[6] + 16 * v118;
              *v127 = v103;
              *(v127 + 8) = 0;
              *(v124[7] + 8 * v118) = v114;
              v128 = v124[2];
              v129 = __OFADD__(v128, 1);
              v130 = v128 + 1;
              if (v129)
              {
                goto LABEL_108;
              }

              v124[2] = v130;
            }

            v35 = v189;
            v189[3] = v124;
            swift_endAccess();

            goto LABEL_88;
          }

LABEL_58:
        }

        v79 = v35[5];
        swift_beginAccess();
        v80 = *(v79 + 48);
        v81 = *(v80 + 16);

        if (v81)
        {

          v82 = sub_197403C30(v179, 0);
          if (v83)
          {
            v84 = *(*(v80 + 56) + 8 * v82);

LABEL_94:

            v135 = v188;

            v136 = swift_isUniquelyReferenced_nonNull_native();
            *&v194 = v84;
            sub_197400C64(v135, v17, v18, v136);

            v137 = v194;
            swift_beginAccess();
            v138 = v179;
            sub_1974028EC(v179, 0);
            v139 = *(v79 + 48);
            v140 = swift_isUniquelyReferenced_nonNull_native();
            *&v191 = *(v79 + 48);
            *(v79 + 48) = 0x8000000000000000;
            sub_1974013F4(v137, v138, 0, v140);

            *(v79 + 48) = v191;
            swift_endAccess();

            v196 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
            v197 = sub_1973FF3D4();
            v198 = sub_1973FF428();
            *&v194 = v17;
            *(&v194 + 1) = v18;
            v195 = 4;
            sub_1974028A0(&v194, &v191);

            v141 = v199[0];
            LOBYTE(v138) = swift_isUniquelyReferenced_nonNull_native();
            v193[0] = v141;
            v142 = v192;
            v143 = __swift_mutable_project_boxed_opaque_existential_2(&v191, v192);
            v144 = *(*(v142 - 8) + 64);
            MEMORY[0x1EEE9AC00](v143, v143);
            v146 = &v169 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v147 + 16))(v146);
            sub_197404514(*v146, *(v146 + 1), v146[16], v17, v18, v138, v193);

            __swift_destroy_boxed_opaque_existential_1Tm(&v191);
            v199[0] = v193[0];
            v37 = v173;
            v44 = v174;
            v51 = v176;
            goto LABEL_31;
          }
        }

        v84 = sub_19740141C(MEMORY[0x1E69E7CC0]);
        goto LABEL_94;
      }
    }
  }

  *&v194 = 0;
  *(&v194 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
  *&v191 = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v165 = [v181 description];
  v166 = sub_1975217BC();
  v168 = v167;

  MEMORY[0x19A8DFF80](v166, v168);

LABEL_115:
  result = sub_1975223EC();
  __break(1u);
  return result;
}