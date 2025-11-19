uint64_t sub_493C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_5EE90(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 568 * (v9 | (v8 << 6))), 0x231uLL);
    sub_5EE34(__dst, v11);
    sub_1127B0(__src, __dst);
    memcpy(v11, __src, 0x231uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_494D8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_2601C(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 568 * (v9 | (v8 << 6))), 0x231uLL);
    sub_4299C(__dst, v11);
    sub_111DC0(__src, __dst);
    memcpy(v11, __src, 0x231uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_495E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_111CE0(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_496C8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56AA4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_49760@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56ACC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[7 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 48);
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    result = memmove(v9, v9 + 7, 56 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_49804@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_56AE0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_2B0C(&qword_229408, &unk_1BCC10) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_5ED18(v11, a2, &qword_229408, &unk_1BCC10);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_49948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_42F48(a1, &qword_229708, &unk_1BCB60);
    v15 = *v3;
    v16 = sub_43124(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_185CAC();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_52E54(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_42F48(v9, &qword_229708, &unk_1BCB60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_541DC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_49BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_54A68(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_3A678(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1885F0();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_538A4(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

unint64_t sub_49CA8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *a2;
  result = sub_43124(*a1);
  if ((v16 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = v15;
  v17 = v7[9];
  v18 = *(a3 + 56) + v17 * result;
  v24 = v7[2];
  v24(v14, v18, v6);
  v19 = sub_1B4374();
  v20 = v7[1];
  result = v20(v14, v6);
  if (!*(a3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = v19;
  result = sub_43124(v25);
  if (v22)
  {
    v24(v11, *(a3 + 56) + result * v17, v6);
    v23 = sub_1B4374();
    v20(v11, v6);
    return v23 < v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_49E94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v136 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v138 = *(v136 - 8);
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v136);
  v137 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v135 = &v131 - v10;
  __chkstk_darwin(v9);
  v132 = &v131 - v11;
  v12 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v134 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v139 = &v131 - v22;
  v23 = __chkstk_darwin(v21);
  v144 = &v131 - v24;
  __chkstk_darwin(v23);
  v26 = &v131 - v25;
  v27 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  *&v147 = a1;
  v141 = a1;

  v28 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v29 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
  v140 = v26;
  v142 = v29;
  v143 = v28;
  result = sub_1B43C4();
  v145 = a4;
  if (a4[2])
  {
    v31 = v145;
    v32 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v33 = v31 + 7;
    v34 = -1 << *(v31 + 32);
    v35 = result & ~v34;
    if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35))
    {
      v36 = ~v34;
      while (!*(v145[6] + v35) || *(v145[6] + v35) == 1)
      {
        v37 = sub_1B5604();

        if (v37)
        {
          goto LABEL_10;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v140, v16, &qword_229708, &unk_1BCB60);
      v38 = v138;
      v39 = v136;
      if ((*(v138 + 48))(v16, 1, v136) != 1)
      {
        v88 = v137;
        (*(v38 + 32))(v137, v16, v39);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v89 = v38;
        v90 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v91 = *(*v90 + 72);
        v92 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1BCA80;
        v94 = (v93 + v92);
        v95 = v90[14];
        *v94 = 0xD00000000000001ALL;
        *(v94 + 1) = 0x80000000001D58B0;
        (*(v89 + 16))(&v94[v95], v88, v39);
        v96 = sub_13023C(v93);
        swift_setDeallocating();
        sub_42F48(v94, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v97 = sub_500F0(v96, sub_5EEF0, 4);

        sub_5F428(v97);
        (*(v89 + 8))(v88, v39);
LABEL_66:
        sub_42F48(v140, &qword_229708, &unk_1BCB60);
        return v157;
      }

      result = sub_42F48(v16, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v40 = *(v141 + 16);
  if (!v40)
  {
    *&v147 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v147 = v27;
    v78 = v139;
    sub_1B43C4();
    v79 = v145;
    if (!v145[2])
    {
      goto LABEL_64;
    }

    v80 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    v81 = sub_1B5844();
    v82 = v79 + 7;
    v83 = -1 << *(v79 + 32);
    v84 = v81 & ~v83;
    if ((*(v79 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(v79[6] + v84);
        if (v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1B5604();

        if (v87)
        {
          goto LABEL_53;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v98 = v134;
      sub_43050(v144, v134, &qword_229708, &unk_1BCB60);
      v99 = v138;
      v100 = v136;
      if ((*(v138 + 48))(v98, 1, v136) != 1)
      {
        (*(v99 + 32))(v135, v98, v100);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v107 = v99;
        v108 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v109 = *(*v108 + 72);
        v110 = (*(*v108 + 80) + 32) & ~*(*v108 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1BCA80;
        v112 = (v111 + v110);
        v113 = v108[14];
        *v112 = 0xD00000000000001ALL;
        *(v112 + 1) = 0x80000000001D58B0;
        v79 = v145;
        (*(v107 + 16))(&v112[v113], v135, v100);
        v114 = sub_13023C(v111);
        swift_setDeallocating();
        v115 = v112;
        v78 = v139;
        sub_42F48(v115, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v116 = sub_500F0(v114, sub_5EEF0, 4);

        sub_5F428(v116);
        (*(v138 + 8))(v135, v100);
        if (!v79[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        v101 = v79[5];
        sub_1B57F4();
        sub_1B4884();
        v102 = sub_1B5844();
        v103 = -1 << *(v79 + 32);
        v104 = v102 & ~v103;
        if ((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
        {
          v105 = ~v103;
          while (!*(v79[6] + v104) || *(v79[6] + v104) == 2)
          {
            v106 = sub_1B5604();

            if (v106)
            {
              goto LABEL_68;
            }

            v104 = (v104 + 1) & v105;
            if (((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v118 = v133;
          sub_43050(v78, v133, &qword_229708, &unk_1BCB60);
          v119 = v138;
          v120 = v136;
          if ((*(v138 + 48))(v118, 1, v136) == 1)
          {
            sub_42F48(v78, &qword_229708, &unk_1BCB60);
            sub_42F48(v144, &qword_229708, &unk_1BCB60);
            sub_42F48(v140, &qword_229708, &unk_1BCB60);
            v140 = v118;
            goto LABEL_66;
          }

          v121 = v132;
          (*(v119 + 32))(v132, v118, v120);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v122 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v123 = *(*v122 + 72);
          v124 = v78;
          v125 = (*(*v122 + 80) + 32) & ~*(*v122 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1BCA80;
          v127 = (v126 + v125);
          v128 = v122[14];
          *v127 = 0xD00000000000001ALL;
          *(v127 + 1) = 0x80000000001D58B0;
          (*(v119 + 16))(&v127[v128], v121, v120);
          v129 = sub_13023C(v126);
          swift_setDeallocating();
          sub_42F48(v127, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v130 = sub_500F0(v129, sub_5EEF0, 4);

          sub_5F428(v130);
          (*(v119 + 8))(v121, v120);
          v117 = v124;
          goto LABEL_65;
        }

LABEL_64:
        v117 = v78;
LABEL_65:
        sub_42F48(v117, &qword_229708, &unk_1BCB60);
        sub_42F48(v144, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v98, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v79[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v41 = 0;
  v42 = (v141 + 32);
  v43 = _swiftEmptyArrayStorage;
  v137 = (v141 + 32);
  do
  {
    v44 = &v42[136 * v41];
    v45 = v41;
    while (1)
    {
      if (v45 >= v40)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v46 = *(v44 + 7);
      v153 = *(v44 + 6);
      v154 = v46;
      v155 = v44[128];
      v47 = *(v44 + 3);
      v149 = *(v44 + 2);
      v150 = v47;
      v48 = *(v44 + 5);
      v151 = *(v44 + 4);
      v152 = v48;
      v49 = *(v44 + 1);
      v147 = *v44;
      v148 = v49;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v147) & 1) == 0)
      {
        break;
      }

      v50 = sub_1B5604();
      sub_429F8(&v147, v146);

      if (v50)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v147);
      ++v45;
      v44 += 136;
      if (v41 == v40)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v147, v146);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v156 = v43;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v43[2] + 1, 1);
      v43 = v156;
    }

    v42 = v137;
    v52 = v43[2];
    v51 = v43[3];
    if (v52 >= v51 >> 1)
    {
      result = sub_37574((v51 > 1), v52 + 1, 1);
      v43 = v156;
    }

    v43[2] = v52 + 1;
    v53 = &v43[17 * v52];
    *(v53 + 2) = v147;
    v54 = v148;
    v55 = v149;
    v56 = v151;
    *(v53 + 5) = v150;
    *(v53 + 6) = v56;
    *(v53 + 3) = v54;
    *(v53 + 4) = v55;
    v57 = v152;
    v58 = v153;
    v59 = v154;
    *(v53 + 160) = v155;
    *(v53 + 8) = v58;
    *(v53 + 9) = v59;
    *(v53 + 7) = v57;
  }

  while (v41 != v40);
LABEL_27:
  *&v147 = v43;
  result = sub_1B43C4();
  v60 = 0;
  v61 = v141 + 32;
  v27 = _swiftEmptyArrayStorage;
  v141 += 32;
LABEL_28:
  v62 = (v61 + 136 * v60);
  v63 = v60;
  while (v63 < v40)
  {
    v64 = v62[7];
    v153 = v62[6];
    v154 = v64;
    v155 = *(v62 + 128);
    v65 = v62[3];
    v149 = v62[2];
    v150 = v65;
    v66 = v62[5];
    v151 = v62[4];
    v152 = v66;
    v67 = v62[1];
    v147 = *v62;
    v148 = v67;
    v60 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v147))
    {
      sub_429F8(&v147, v146);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v156 = v27;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v27[2] + 1, 1);
        v27 = v156;
      }

      v70 = v27[2];
      v69 = v27[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_37574((v69 > 1), v70 + 1, 1);
        v27 = v156;
      }

      v27[2] = v70 + 1;
      v71 = &v27[17 * v70];
      *(v71 + 2) = v147;
      v72 = v148;
      v73 = v149;
      v74 = v151;
      *(v71 + 5) = v150;
      *(v71 + 6) = v74;
      *(v71 + 3) = v72;
      *(v71 + 4) = v73;
      v75 = v152;
      v76 = v153;
      v77 = v154;
      *(v71 + 160) = v155;
      *(v71 + 8) = v76;
      *(v71 + 9) = v77;
      *(v71 + 7) = v75;
      v61 = v141;
      if (v60 != v40)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v68 = sub_1B5604();
    sub_429F8(&v147, v146);

    if (v68)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v147);
    ++v63;
    v62 = (v62 + 136);
    if (v60 == v40)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4ADCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v136 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v138 = *(v136 - 8);
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v136);
  v137 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v135 = &v131 - v10;
  __chkstk_darwin(v9);
  v132 = &v131 - v11;
  v12 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v134 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v139 = &v131 - v22;
  v23 = __chkstk_darwin(v21);
  v144 = &v131 - v24;
  __chkstk_darwin(v23);
  v26 = &v131 - v25;
  v27 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  *&v147 = a1;
  v141 = a1;

  v28 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v29 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
  v140 = v26;
  v142 = v29;
  v143 = v28;
  result = sub_1B43C4();
  v145 = a4;
  if (a4[2])
  {
    v31 = v145;
    v32 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v33 = v31 + 7;
    v34 = -1 << *(v31 + 32);
    v35 = result & ~v34;
    if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35))
    {
      v36 = ~v34;
      while (!*(v145[6] + v35) || *(v145[6] + v35) == 1)
      {
        v37 = sub_1B5604();

        if (v37)
        {
          goto LABEL_10;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v140, v16, &qword_229708, &unk_1BCB60);
      v38 = v138;
      v39 = v136;
      if ((*(v138 + 48))(v16, 1, v136) != 1)
      {
        v88 = v137;
        (*(v38 + 32))(v137, v16, v39);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v89 = v38;
        v90 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v91 = *(*v90 + 72);
        v92 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1BCA80;
        v94 = (v93 + v92);
        v95 = v90[14];
        *v94 = 0xD000000000000014;
        *(v94 + 1) = 0x80000000001D58D0;
        (*(v89 + 16))(&v94[v95], v88, v39);
        v96 = sub_13023C(v93);
        swift_setDeallocating();
        sub_42F48(v94, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v97 = sub_500F0(v96, sub_5EEF0, 6);

        sub_5F428(v97);
        (*(v89 + 8))(v88, v39);
LABEL_66:
        sub_42F48(v140, &qword_229708, &unk_1BCB60);
        return v157;
      }

      result = sub_42F48(v16, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v40 = *(v141 + 16);
  if (!v40)
  {
    *&v147 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v147 = v27;
    v78 = v139;
    sub_1B43C4();
    v79 = v145;
    if (!v145[2])
    {
      goto LABEL_64;
    }

    v80 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    v81 = sub_1B5844();
    v82 = v79 + 7;
    v83 = -1 << *(v79 + 32);
    v84 = v81 & ~v83;
    if ((*(v79 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(v79[6] + v84);
        if (v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1B5604();

        if (v87)
        {
          goto LABEL_53;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v98 = v134;
      sub_43050(v144, v134, &qword_229708, &unk_1BCB60);
      v99 = v138;
      v100 = v136;
      if ((*(v138 + 48))(v98, 1, v136) != 1)
      {
        (*(v99 + 32))(v135, v98, v100);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v107 = v99;
        v108 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v109 = *(*v108 + 72);
        v110 = (*(*v108 + 80) + 32) & ~*(*v108 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1BCA80;
        v112 = (v111 + v110);
        v113 = v108[14];
        *v112 = 0xD000000000000014;
        *(v112 + 1) = 0x80000000001D58D0;
        v79 = v145;
        (*(v107 + 16))(&v112[v113], v135, v100);
        v114 = sub_13023C(v111);
        swift_setDeallocating();
        v115 = v112;
        v78 = v139;
        sub_42F48(v115, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v116 = sub_500F0(v114, sub_5EEF0, 6);

        sub_5F428(v116);
        (*(v138 + 8))(v135, v100);
        if (!v79[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        v101 = v79[5];
        sub_1B57F4();
        sub_1B4884();
        v102 = sub_1B5844();
        v103 = -1 << *(v79 + 32);
        v104 = v102 & ~v103;
        if ((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
        {
          v105 = ~v103;
          while (!*(v79[6] + v104) || *(v79[6] + v104) == 2)
          {
            v106 = sub_1B5604();

            if (v106)
            {
              goto LABEL_68;
            }

            v104 = (v104 + 1) & v105;
            if (((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v118 = v133;
          sub_43050(v78, v133, &qword_229708, &unk_1BCB60);
          v119 = v138;
          v120 = v136;
          if ((*(v138 + 48))(v118, 1, v136) == 1)
          {
            sub_42F48(v78, &qword_229708, &unk_1BCB60);
            sub_42F48(v144, &qword_229708, &unk_1BCB60);
            sub_42F48(v140, &qword_229708, &unk_1BCB60);
            v140 = v118;
            goto LABEL_66;
          }

          v121 = v132;
          (*(v119 + 32))(v132, v118, v120);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v122 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v123 = *(*v122 + 72);
          v124 = v78;
          v125 = (*(*v122 + 80) + 32) & ~*(*v122 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1BCA80;
          v127 = (v126 + v125);
          v128 = v122[14];
          *v127 = 0xD000000000000014;
          *(v127 + 1) = 0x80000000001D58D0;
          (*(v119 + 16))(&v127[v128], v121, v120);
          v129 = sub_13023C(v126);
          swift_setDeallocating();
          sub_42F48(v127, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v130 = sub_500F0(v129, sub_5EEF0, 6);

          sub_5F428(v130);
          (*(v119 + 8))(v121, v120);
          v117 = v124;
          goto LABEL_65;
        }

LABEL_64:
        v117 = v78;
LABEL_65:
        sub_42F48(v117, &qword_229708, &unk_1BCB60);
        sub_42F48(v144, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v98, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v79[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v41 = 0;
  v42 = (v141 + 32);
  v43 = _swiftEmptyArrayStorage;
  v137 = (v141 + 32);
  do
  {
    v44 = &v42[136 * v41];
    v45 = v41;
    while (1)
    {
      if (v45 >= v40)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v46 = *(v44 + 7);
      v153 = *(v44 + 6);
      v154 = v46;
      v155 = v44[128];
      v47 = *(v44 + 3);
      v149 = *(v44 + 2);
      v150 = v47;
      v48 = *(v44 + 5);
      v151 = *(v44 + 4);
      v152 = v48;
      v49 = *(v44 + 1);
      v147 = *v44;
      v148 = v49;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v147) & 1) == 0)
      {
        break;
      }

      v50 = sub_1B5604();
      sub_429F8(&v147, v146);

      if (v50)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v147);
      ++v45;
      v44 += 136;
      if (v41 == v40)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v147, v146);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v156 = v43;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v43[2] + 1, 1);
      v43 = v156;
    }

    v42 = v137;
    v52 = v43[2];
    v51 = v43[3];
    if (v52 >= v51 >> 1)
    {
      result = sub_37574((v51 > 1), v52 + 1, 1);
      v43 = v156;
    }

    v43[2] = v52 + 1;
    v53 = &v43[17 * v52];
    *(v53 + 2) = v147;
    v54 = v148;
    v55 = v149;
    v56 = v151;
    *(v53 + 5) = v150;
    *(v53 + 6) = v56;
    *(v53 + 3) = v54;
    *(v53 + 4) = v55;
    v57 = v152;
    v58 = v153;
    v59 = v154;
    *(v53 + 160) = v155;
    *(v53 + 8) = v58;
    *(v53 + 9) = v59;
    *(v53 + 7) = v57;
  }

  while (v41 != v40);
LABEL_27:
  *&v147 = v43;
  result = sub_1B43C4();
  v60 = 0;
  v61 = v141 + 32;
  v27 = _swiftEmptyArrayStorage;
  v141 += 32;
LABEL_28:
  v62 = (v61 + 136 * v60);
  v63 = v60;
  while (v63 < v40)
  {
    v64 = v62[7];
    v153 = v62[6];
    v154 = v64;
    v155 = *(v62 + 128);
    v65 = v62[3];
    v149 = v62[2];
    v150 = v65;
    v66 = v62[5];
    v151 = v62[4];
    v152 = v66;
    v67 = v62[1];
    v147 = *v62;
    v148 = v67;
    v60 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v147))
    {
      sub_429F8(&v147, v146);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v156 = v27;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v27[2] + 1, 1);
        v27 = v156;
      }

      v70 = v27[2];
      v69 = v27[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_37574((v69 > 1), v70 + 1, 1);
        v27 = v156;
      }

      v27[2] = v70 + 1;
      v71 = &v27[17 * v70];
      *(v71 + 2) = v147;
      v72 = v148;
      v73 = v149;
      v74 = v151;
      *(v71 + 5) = v150;
      *(v71 + 6) = v74;
      *(v71 + 3) = v72;
      *(v71 + 4) = v73;
      v75 = v152;
      v76 = v153;
      v77 = v154;
      *(v71 + 160) = v155;
      *(v71 + 8) = v76;
      *(v71 + 9) = v77;
      *(v71 + 7) = v75;
      v61 = v141;
      if (v60 != v40)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v68 = sub_1B5604();
    sub_429F8(&v147, v146);

    if (v68)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v147);
    ++v63;
    v62 = (v62 + 136);
    if (v60 == v40)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4BD04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v136 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v138 = *(v136 - 8);
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v136);
  v137 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v135 = &v131 - v10;
  __chkstk_darwin(v9);
  v132 = &v131 - v11;
  v12 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v134 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v139 = &v131 - v22;
  v23 = __chkstk_darwin(v21);
  v144 = &v131 - v24;
  __chkstk_darwin(v23);
  v26 = &v131 - v25;
  v27 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  *&v147 = a1;
  v141 = a1;

  v28 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v29 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
  v140 = v26;
  v142 = v29;
  v143 = v28;
  result = sub_1B43C4();
  v145 = a4;
  if (a4[2])
  {
    v31 = v145;
    v32 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v33 = v31 + 7;
    v34 = -1 << *(v31 + 32);
    v35 = result & ~v34;
    if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35))
    {
      v36 = ~v34;
      while (!*(v145[6] + v35) || *(v145[6] + v35) == 1)
      {
        v37 = sub_1B5604();

        if (v37)
        {
          goto LABEL_10;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v140, v16, &qword_229708, &unk_1BCB60);
      v38 = v138;
      v39 = v136;
      if ((*(v138 + 48))(v16, 1, v136) != 1)
      {
        v88 = v137;
        (*(v38 + 32))(v137, v16, v39);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v89 = v38;
        v90 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v91 = *(*v90 + 72);
        v92 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1BCA80;
        v94 = (v93 + v92);
        v95 = v90[14];
        *v94 = 0xD000000000000014;
        *(v94 + 1) = 0x80000000001D58F0;
        (*(v89 + 16))(&v94[v95], v88, v39);
        v96 = sub_13023C(v93);
        swift_setDeallocating();
        sub_42F48(v94, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v97 = sub_500F0(v96, sub_5EEF0, 7);

        sub_5F428(v97);
        (*(v89 + 8))(v88, v39);
LABEL_66:
        sub_42F48(v140, &qword_229708, &unk_1BCB60);
        return v157;
      }

      result = sub_42F48(v16, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v40 = *(v141 + 16);
  if (!v40)
  {
    *&v147 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v147 = v27;
    v78 = v139;
    sub_1B43C4();
    v79 = v145;
    if (!v145[2])
    {
      goto LABEL_64;
    }

    v80 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    v81 = sub_1B5844();
    v82 = v79 + 7;
    v83 = -1 << *(v79 + 32);
    v84 = v81 & ~v83;
    if ((*(v79 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(v79[6] + v84);
        if (v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1B5604();

        if (v87)
        {
          goto LABEL_53;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v98 = v134;
      sub_43050(v144, v134, &qword_229708, &unk_1BCB60);
      v99 = v138;
      v100 = v136;
      if ((*(v138 + 48))(v98, 1, v136) != 1)
      {
        (*(v99 + 32))(v135, v98, v100);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v107 = v99;
        v108 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v109 = *(*v108 + 72);
        v110 = (*(*v108 + 80) + 32) & ~*(*v108 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1BCA80;
        v112 = (v111 + v110);
        v113 = v108[14];
        *v112 = 0xD000000000000014;
        *(v112 + 1) = 0x80000000001D58F0;
        v79 = v145;
        (*(v107 + 16))(&v112[v113], v135, v100);
        v114 = sub_13023C(v111);
        swift_setDeallocating();
        v115 = v112;
        v78 = v139;
        sub_42F48(v115, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v116 = sub_500F0(v114, sub_5EEF0, 7);

        sub_5F428(v116);
        (*(v138 + 8))(v135, v100);
        if (!v79[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        v101 = v79[5];
        sub_1B57F4();
        sub_1B4884();
        v102 = sub_1B5844();
        v103 = -1 << *(v79 + 32);
        v104 = v102 & ~v103;
        if ((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
        {
          v105 = ~v103;
          while (!*(v79[6] + v104) || *(v79[6] + v104) == 2)
          {
            v106 = sub_1B5604();

            if (v106)
            {
              goto LABEL_68;
            }

            v104 = (v104 + 1) & v105;
            if (((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v118 = v133;
          sub_43050(v78, v133, &qword_229708, &unk_1BCB60);
          v119 = v138;
          v120 = v136;
          if ((*(v138 + 48))(v118, 1, v136) == 1)
          {
            sub_42F48(v78, &qword_229708, &unk_1BCB60);
            sub_42F48(v144, &qword_229708, &unk_1BCB60);
            sub_42F48(v140, &qword_229708, &unk_1BCB60);
            v140 = v118;
            goto LABEL_66;
          }

          v121 = v132;
          (*(v119 + 32))(v132, v118, v120);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v122 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v123 = *(*v122 + 72);
          v124 = v78;
          v125 = (*(*v122 + 80) + 32) & ~*(*v122 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1BCA80;
          v127 = (v126 + v125);
          v128 = v122[14];
          *v127 = 0xD000000000000014;
          *(v127 + 1) = 0x80000000001D58F0;
          (*(v119 + 16))(&v127[v128], v121, v120);
          v129 = sub_13023C(v126);
          swift_setDeallocating();
          sub_42F48(v127, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v130 = sub_500F0(v129, sub_5EEF0, 7);

          sub_5F428(v130);
          (*(v119 + 8))(v121, v120);
          v117 = v124;
          goto LABEL_65;
        }

LABEL_64:
        v117 = v78;
LABEL_65:
        sub_42F48(v117, &qword_229708, &unk_1BCB60);
        sub_42F48(v144, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v98, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v79[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v41 = 0;
  v42 = (v141 + 32);
  v43 = _swiftEmptyArrayStorage;
  v137 = (v141 + 32);
  do
  {
    v44 = &v42[136 * v41];
    v45 = v41;
    while (1)
    {
      if (v45 >= v40)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v46 = *(v44 + 7);
      v153 = *(v44 + 6);
      v154 = v46;
      v155 = v44[128];
      v47 = *(v44 + 3);
      v149 = *(v44 + 2);
      v150 = v47;
      v48 = *(v44 + 5);
      v151 = *(v44 + 4);
      v152 = v48;
      v49 = *(v44 + 1);
      v147 = *v44;
      v148 = v49;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v147) & 1) == 0)
      {
        break;
      }

      v50 = sub_1B5604();
      sub_429F8(&v147, v146);

      if (v50)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v147);
      ++v45;
      v44 += 136;
      if (v41 == v40)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v147, v146);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v156 = v43;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v43[2] + 1, 1);
      v43 = v156;
    }

    v42 = v137;
    v52 = v43[2];
    v51 = v43[3];
    if (v52 >= v51 >> 1)
    {
      result = sub_37574((v51 > 1), v52 + 1, 1);
      v43 = v156;
    }

    v43[2] = v52 + 1;
    v53 = &v43[17 * v52];
    *(v53 + 2) = v147;
    v54 = v148;
    v55 = v149;
    v56 = v151;
    *(v53 + 5) = v150;
    *(v53 + 6) = v56;
    *(v53 + 3) = v54;
    *(v53 + 4) = v55;
    v57 = v152;
    v58 = v153;
    v59 = v154;
    *(v53 + 160) = v155;
    *(v53 + 8) = v58;
    *(v53 + 9) = v59;
    *(v53 + 7) = v57;
  }

  while (v41 != v40);
LABEL_27:
  *&v147 = v43;
  result = sub_1B43C4();
  v60 = 0;
  v61 = v141 + 32;
  v27 = _swiftEmptyArrayStorage;
  v141 += 32;
LABEL_28:
  v62 = (v61 + 136 * v60);
  v63 = v60;
  while (v63 < v40)
  {
    v64 = v62[7];
    v153 = v62[6];
    v154 = v64;
    v155 = *(v62 + 128);
    v65 = v62[3];
    v149 = v62[2];
    v150 = v65;
    v66 = v62[5];
    v151 = v62[4];
    v152 = v66;
    v67 = v62[1];
    v147 = *v62;
    v148 = v67;
    v60 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v147))
    {
      sub_429F8(&v147, v146);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v156 = v27;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v27[2] + 1, 1);
        v27 = v156;
      }

      v70 = v27[2];
      v69 = v27[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_37574((v69 > 1), v70 + 1, 1);
        v27 = v156;
      }

      v27[2] = v70 + 1;
      v71 = &v27[17 * v70];
      *(v71 + 2) = v147;
      v72 = v148;
      v73 = v149;
      v74 = v151;
      *(v71 + 5) = v150;
      *(v71 + 6) = v74;
      *(v71 + 3) = v72;
      *(v71 + 4) = v73;
      v75 = v152;
      v76 = v153;
      v77 = v154;
      *(v71 + 160) = v155;
      *(v71 + 8) = v76;
      *(v71 + 9) = v77;
      *(v71 + 7) = v75;
      v61 = v141;
      if (v60 != v40)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v68 = sub_1B5604();
    sub_429F8(&v147, v146);

    if (v68)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v147);
    ++v63;
    v62 = (v62 + 136);
    if (v60 == v40)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4CC3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v136 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v138 = *(v136 - 8);
  v6 = *(v138 + 64);
  v7 = __chkstk_darwin(v136);
  v137 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v135 = &v131 - v10;
  __chkstk_darwin(v9);
  v132 = &v131 - v11;
  v12 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v134 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v139 = &v131 - v22;
  v23 = __chkstk_darwin(v21);
  v144 = &v131 - v24;
  __chkstk_darwin(v23);
  v26 = &v131 - v25;
  v27 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  *&v147 = a1;
  v141 = a1;

  v28 = sub_2B0C(&qword_229710, &unk_1D32C0);
  v29 = sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
  v140 = v26;
  v142 = v29;
  v143 = v28;
  result = sub_1B43C4();
  v145 = a4;
  if (a4[2])
  {
    v31 = v145;
    v32 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    result = sub_1B5844();
    v33 = v31 + 7;
    v34 = -1 << *(v31 + 32);
    v35 = result & ~v34;
    if ((*(v31 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v35))
    {
      v36 = ~v34;
      while (!*(v145[6] + v35) || *(v145[6] + v35) == 1)
      {
        v37 = sub_1B5604();

        if (v37)
        {
          goto LABEL_10;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_10:
      sub_43050(v140, v16, &qword_229708, &unk_1BCB60);
      v38 = v138;
      v39 = v136;
      if ((*(v138 + 48))(v16, 1, v136) != 1)
      {
        v88 = v137;
        (*(v38 + 32))(v137, v16, v39);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v89 = v38;
        v90 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v91 = *(*v90 + 72);
        v92 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1BCA80;
        v94 = (v93 + v92);
        v95 = v90[14];
        *v94 = 0xD000000000000016;
        *(v94 + 1) = 0x80000000001D5910;
        (*(v89 + 16))(&v94[v95], v88, v39);
        v96 = sub_13023C(v93);
        swift_setDeallocating();
        sub_42F48(v94, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v97 = sub_500F0(v96, sub_5EEF0, 8);

        sub_5F428(v97);
        (*(v89 + 8))(v88, v39);
LABEL_66:
        sub_42F48(v140, &qword_229708, &unk_1BCB60);
        return v157;
      }

      result = sub_42F48(v16, &qword_229708, &unk_1BCB60);
    }
  }

LABEL_12:
  v40 = *(v141 + 16);
  if (!v40)
  {
    *&v147 = _swiftEmptyArrayStorage;
    sub_1B43C4();
LABEL_43:
    *&v147 = v27;
    v78 = v139;
    sub_1B43C4();
    v79 = v145;
    if (!v145[2])
    {
      goto LABEL_64;
    }

    v80 = v145[5];
    sub_1B57F4();
    sub_1B4884();
    v81 = sub_1B5844();
    v82 = v79 + 7;
    v83 = -1 << *(v79 + 32);
    v84 = v81 & ~v83;
    if ((*(v79 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(v79[6] + v84);
        if (v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1B5604();

        if (v87)
        {
          goto LABEL_53;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_53:
      v98 = v134;
      sub_43050(v144, v134, &qword_229708, &unk_1BCB60);
      v99 = v138;
      v100 = v136;
      if ((*(v138 + 48))(v98, 1, v136) != 1)
      {
        (*(v99 + 32))(v135, v98, v100);
        sub_2B0C(&qword_229758, &unk_1BCBB0);
        v107 = v99;
        v108 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
        v109 = *(*v108 + 72);
        v110 = (*(*v108 + 80) + 32) & ~*(*v108 + 80);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1BCA80;
        v112 = (v111 + v110);
        v113 = v108[14];
        *v112 = 0xD000000000000016;
        *(v112 + 1) = 0x80000000001D5910;
        v79 = v145;
        (*(v107 + 16))(&v112[v113], v135, v100);
        v114 = sub_13023C(v111);
        swift_setDeallocating();
        v115 = v112;
        v78 = v139;
        sub_42F48(v115, &qword_229760, &qword_1CCC50);
        swift_deallocClassInstance();
        v116 = sub_500F0(v114, sub_5EEF0, 8);

        sub_5F428(v116);
        (*(v138 + 8))(v135, v100);
        if (!v79[2])
        {
          goto LABEL_64;
        }

LABEL_56:
        v101 = v79[5];
        sub_1B57F4();
        sub_1B4884();
        v102 = sub_1B5844();
        v103 = -1 << *(v79 + 32);
        v104 = v102 & ~v103;
        if ((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
        {
          v105 = ~v103;
          while (!*(v79[6] + v104) || *(v79[6] + v104) == 2)
          {
            v106 = sub_1B5604();

            if (v106)
            {
              goto LABEL_68;
            }

            v104 = (v104 + 1) & v105;
            if (((*(v82 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v118 = v133;
          sub_43050(v78, v133, &qword_229708, &unk_1BCB60);
          v119 = v138;
          v120 = v136;
          if ((*(v138 + 48))(v118, 1, v136) == 1)
          {
            sub_42F48(v78, &qword_229708, &unk_1BCB60);
            sub_42F48(v144, &qword_229708, &unk_1BCB60);
            sub_42F48(v140, &qword_229708, &unk_1BCB60);
            v140 = v118;
            goto LABEL_66;
          }

          v121 = v132;
          (*(v119 + 32))(v132, v118, v120);
          sub_2B0C(&qword_229758, &unk_1BCBB0);
          v122 = (sub_2B0C(&qword_229760, &qword_1CCC50) - 8);
          v123 = *(*v122 + 72);
          v124 = v78;
          v125 = (*(*v122 + 80) + 32) & ~*(*v122 + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1BCA80;
          v127 = (v126 + v125);
          v128 = v122[14];
          *v127 = 0xD000000000000016;
          *(v127 + 1) = 0x80000000001D5910;
          (*(v119 + 16))(&v127[v128], v121, v120);
          v129 = sub_13023C(v126);
          swift_setDeallocating();
          sub_42F48(v127, &qword_229760, &qword_1CCC50);
          swift_deallocClassInstance();
          v130 = sub_500F0(v129, sub_5EEF0, 8);

          sub_5F428(v130);
          (*(v119 + 8))(v121, v120);
          v117 = v124;
          goto LABEL_65;
        }

LABEL_64:
        v117 = v78;
LABEL_65:
        sub_42F48(v117, &qword_229708, &unk_1BCB60);
        sub_42F48(v144, &qword_229708, &unk_1BCB60);
        goto LABEL_66;
      }

      sub_42F48(v98, &qword_229708, &unk_1BCB60);
    }

LABEL_55:
    if (!v79[2])
    {
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v41 = 0;
  v42 = (v141 + 32);
  v43 = _swiftEmptyArrayStorage;
  v137 = (v141 + 32);
  do
  {
    v44 = &v42[136 * v41];
    v45 = v41;
    while (1)
    {
      if (v45 >= v40)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v46 = *(v44 + 7);
      v153 = *(v44 + 6);
      v154 = v46;
      v155 = v44[128];
      v47 = *(v44 + 3);
      v149 = *(v44 + 2);
      v150 = v47;
      v48 = *(v44 + 5);
      v151 = *(v44 + 4);
      v152 = v48;
      v49 = *(v44 + 1);
      v147 = *v44;
      v148 = v49;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_72;
      }

      if ((BYTE8(v147) & 1) == 0)
      {
        break;
      }

      v50 = sub_1B5604();
      sub_429F8(&v147, v146);

      if (v50)
      {
        goto LABEL_22;
      }

      result = sub_5C740(&v147);
      ++v45;
      v44 += 136;
      if (v41 == v40)
      {
        goto LABEL_27;
      }
    }

    sub_429F8(&v147, v146);

LABEL_22:
    result = swift_isUniquelyReferenced_nonNull_native();
    v156 = v43;
    if ((result & 1) == 0)
    {
      result = sub_37574(0, v43[2] + 1, 1);
      v43 = v156;
    }

    v42 = v137;
    v52 = v43[2];
    v51 = v43[3];
    if (v52 >= v51 >> 1)
    {
      result = sub_37574((v51 > 1), v52 + 1, 1);
      v43 = v156;
    }

    v43[2] = v52 + 1;
    v53 = &v43[17 * v52];
    *(v53 + 2) = v147;
    v54 = v148;
    v55 = v149;
    v56 = v151;
    *(v53 + 5) = v150;
    *(v53 + 6) = v56;
    *(v53 + 3) = v54;
    *(v53 + 4) = v55;
    v57 = v152;
    v58 = v153;
    v59 = v154;
    *(v53 + 160) = v155;
    *(v53 + 8) = v58;
    *(v53 + 9) = v59;
    *(v53 + 7) = v57;
  }

  while (v41 != v40);
LABEL_27:
  *&v147 = v43;
  result = sub_1B43C4();
  v60 = 0;
  v61 = v141 + 32;
  v27 = _swiftEmptyArrayStorage;
  v141 += 32;
LABEL_28:
  v62 = (v61 + 136 * v60);
  v63 = v60;
  while (v63 < v40)
  {
    v64 = v62[7];
    v153 = v62[6];
    v154 = v64;
    v155 = *(v62 + 128);
    v65 = v62[3];
    v149 = v62[2];
    v150 = v65;
    v66 = v62[5];
    v151 = v62[4];
    v152 = v66;
    v67 = v62[1];
    v147 = *v62;
    v148 = v67;
    v60 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_74;
    }

    if (BYTE8(v147))
    {
      sub_429F8(&v147, v146);

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v156 = v27;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v27[2] + 1, 1);
        v27 = v156;
      }

      v70 = v27[2];
      v69 = v27[3];
      if (v70 >= v69 >> 1)
      {
        result = sub_37574((v69 > 1), v70 + 1, 1);
        v27 = v156;
      }

      v27[2] = v70 + 1;
      v71 = &v27[17 * v70];
      *(v71 + 2) = v147;
      v72 = v148;
      v73 = v149;
      v74 = v151;
      *(v71 + 5) = v150;
      *(v71 + 6) = v74;
      *(v71 + 3) = v72;
      *(v71 + 4) = v73;
      v75 = v152;
      v76 = v153;
      v77 = v154;
      *(v71 + 160) = v155;
      *(v71 + 8) = v76;
      *(v71 + 9) = v77;
      *(v71 + 7) = v75;
      v61 = v141;
      if (v60 != v40)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v68 = sub_1B5604();
    sub_429F8(&v147, v146);

    if (v68)
    {
      goto LABEL_36;
    }

    result = sub_5C740(&v147);
    ++v63;
    v62 = (v62 + 136);
    if (v60 == v40)
    {
      goto LABEL_43;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_4DB8C(uint64_t *a1, __int128 *a2)
{
  v117 = a1;
  v3 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v115 = *(v3 - 8);
  v4 = *(v115 + 64);
  v5 = __chkstk_darwin(v3);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = (&v94 - v7);
  v8 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v94 - v10;
  v12 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v107 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v102 = &v94 - v18;
  v19 = __chkstk_darwin(v17);
  v101 = &v94 - v20;
  __chkstk_darwin(v19);
  v100 = &v94 - v21;
  v22 = sub_2B0C(&qword_229778, &qword_1BCBD0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v110 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v116 = &v94 - v26;
  v27 = a2[7];
  v128 = a2[6];
  v129 = v27;
  v130 = *(a2 + 128);
  v28 = a2[3];
  v124 = a2[2];
  v125 = v28;
  v29 = a2[5];
  v126 = a2[4];
  v127 = v29;
  v30 = a2[1];
  v122 = *a2;
  v123 = v30;
  if (v125)
  {
    v31 = v125;
  }

  else
  {
    v31 = sub_130214(_swiftEmptyArrayStorage);
  }

  v32 = *(v31 + 64);
  v95 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v131 = (v115 + 56);
  v118 = (v115 + 48);
  v105 = (v13 + 32);
  v106 = (v13 + 16);
  v104 = (v13 + 8);
  v109 = (v13 + 48);

  v37 = 0;
  v111 = v11;
  v38 = v116;
  v96 = v36;
  v97 = v31;
  do
  {
LABEL_8:
    if (!v35)
    {
      do
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_52;
        }

        if (v39 >= v36)
        {
        }

        v35 = *(v95 + 8 * v39);
        ++v37;
      }

      while (!v35);
      v37 = v39;
    }

    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v40 | (v37 << 6);
    v42 = *(*(v31 + 56) + 8 * v41);
    v114 = *(v42 + 16);
  }

  while (!v114);
  v98 = v37;
  v99 = v35;
  v113 = *(*(v31 + 48) + v41);

  v43 = 0;
  v44 = 32;
  v112 = v42;
  while (v43 < *(v42 + 16))
  {
    memcpy(v121, (v42 + v44), 0x231uLL);
    v45 = *v117;
    if (*(*v117 + 16))
    {
      sub_4299C(v121, v119);
      v46 = sub_3ABBC(v121);
      if (v47)
      {
        v48 = v115;
        v49 = v116;
        sub_43050(*(v45 + 56) + *(v115 + 72) * v46, v116, &qword_229728, &unk_1D14A0);
        v50 = *(v48 + 56);
        v38 = v49;
        v50(v49, 0, 1, v3);
      }

      else
      {
        v50 = *v131;
        v38 = v116;
        (*v131)(v116, 1, 1, v3);
      }
    }

    else
    {
      v50 = *v131;
      (*v131)(v38, 1, 1, v3);
      sub_4299C(v121, v119);
    }

    v51 = *v118;
    v52 = (*v118)(v38, 1, v3);
    v53 = v38;
    v54 = &_swiftEmptySetSingleton;
    if (!v52)
    {
      v54 = *v53;
    }

    sub_42F48(v53, &qword_229778, &qword_1BCBD0);
    v120 = v54;
    sub_1122C4(v119, v113);
    if (*(v45 + 16) && (v55 = sub_3ABBC(v121), (v56 & 1) != 0))
    {
      v57 = v110;
      sub_43050(*(v45 + 56) + *(v115 + 72) * v55, v110, &qword_229728, &unk_1D14A0);
      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v110;
    }

    v50(v57, v58, 1, v3);
    if (v51(v57, 1, v3))
    {
      sub_42F48(v57, &qword_229778, &qword_1BCBD0);
      v59 = _swiftEmptyArrayStorage;
    }

    else
    {
      v60 = v57;
      v61 = *v106;
      v62 = v101;
      (*v106)(v101, v60 + *(v3 + 48), v12);
      sub_42F48(v60, &qword_229778, &qword_1BCBD0);
      v63 = v100;
      (*v105)(v100, v62, v12);
      v61(v102, v63, v12);
      sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0);
      v59 = sub_1B49B4();
      (*v104)(v63, v12);
    }

    v64 = v111;
    sub_429F8(&v122, v119);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_33358(0, *(v59 + 2) + 1, 1, v59);
    }

    v66 = *(v59 + 2);
    v65 = *(v59 + 3);
    if (v66 >= v65 >> 1)
    {
      v59 = sub_33358((v65 > 1), v66 + 1, 1, v59);
    }

    *(v59 + 2) = v66 + 1;
    v67 = &v59[136 * v66];
    *(v67 + 2) = v122;
    v68 = v123;
    v69 = v124;
    v70 = v126;
    *(v67 + 5) = v125;
    *(v67 + 6) = v70;
    *(v67 + 3) = v68;
    *(v67 + 4) = v69;
    v71 = v127;
    v72 = v128;
    v73 = v129;
    v67[160] = v130;
    *(v67 + 8) = v72;
    *(v67 + 9) = v73;
    *(v67 + 7) = v71;
    v119[0] = v59;
    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
    sub_1B43C4();
    if ((*v109)(v64, 1, v12) != 1)
    {
      v74 = v107;
      (*v105)(v107, v64, v12);
      v75 = *(v3 + 48);
      v76 = v103;
      *v103 = v120;
      (*v106)((v76 + v75), v74, v12);
      sub_5ED18(v76, v108, &qword_229728, &unk_1D14A0);
      v77 = v117;
      v78 = *v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *v77;
      v119[0] = v80;
      v82 = sub_3ABBC(v121);
      v83 = *(v80 + 16);
      v84 = (v81 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_51;
      }

      v86 = v81;
      if (*(v80 + 24) >= v85)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v81 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_185A54();
          if ((v86 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        sub_17E830(v85, isUniquelyReferenced_nonNull_native);
        v87 = sub_3ABBC(v121);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_54;
        }

        v82 = v87;
        if ((v86 & 1) == 0)
        {
LABEL_41:
          v89 = v119[0];
          *(v119[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
          memcpy((v89[6] + 568 * v82), v121, 0x231uLL);
          sub_5ED18(v108, v89[7] + *(v115 + 72) * v82, &qword_229728, &unk_1D14A0);
          v90 = v89[2];
          v91 = __OFADD__(v90, 1);
          v92 = v90 + 1;
          if (v91)
          {
            goto LABEL_53;
          }

          v89[2] = v92;
          goto LABEL_46;
        }
      }

      sub_2601C(v121);
      v89 = v119[0];
      sub_5E96C(v108, *(v119[0] + 56) + *(v115 + 72) * v82);
LABEL_46:
      (*v104)(v107, v12);
      *v117 = v89;
      goto LABEL_16;
    }

    sub_2601C(v121);
    sub_42F48(v64, &qword_229708, &unk_1BCB60);
LABEL_16:
    v42 = v112;
    ++v43;
    v44 += 568;
    v38 = v116;
    if (v114 == v43)
    {

      v36 = v96;
      v31 = v97;
      v37 = v98;
      v35 = v99;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_4E600(uint64_t a1, void (*a2)(void **, __int128 *))
{
  v4 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &_swiftEmptyDictionarySingleton;
  v47 = &_swiftEmptyDictionarySingleton;
  (*(v8 + 16))(&v24 - v6, a1, v4);
  sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0);
  sub_1B4974();
  v10 = v45;
  v9 = v46;
  v11 = *(v45 + 16);
  if (v46 == v11)
  {
LABEL_6:

    return v7;
  }

  else
  {
    while ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 >= *(v10 + 16))
      {
        goto LABEL_8;
      }

      v12 = v10 + 32 + 136 * v9;
      v43[0] = *v12;
      v13 = *(v12 + 16);
      v14 = *(v12 + 32);
      v15 = *(v12 + 64);
      v43[3] = *(v12 + 48);
      v43[4] = v15;
      v43[1] = v13;
      v43[2] = v14;
      v16 = *(v12 + 80);
      v17 = *(v12 + 96);
      v18 = *(v12 + 112);
      v44 = *(v12 + 128);
      v43[6] = v17;
      v43[7] = v18;
      v43[5] = v16;
      v46 = v9 + 1;
      v19 = *(v12 + 112);
      v40 = *(v12 + 96);
      v41 = v19;
      v42 = *(v12 + 128);
      v20 = *(v12 + 48);
      v36 = *(v12 + 32);
      v37 = v20;
      v21 = *(v12 + 80);
      v38 = *(v12 + 64);
      v39 = v21;
      v22 = *(v12 + 16);
      v34 = *v12;
      v35 = v22;
      sub_429F8(v43, &v25);
      a2(&v47, &v34);
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v25 = v34;
      v26 = v35;
      sub_5C740(&v25);
      v9 = v46;
      if (v46 == v11)
      {
        v7 = v47;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);

    v31 = v40;
    v32 = v41;
    v33 = v42;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    sub_5C740(&v25);

    __break(1u);
  }

  return result;
}

uint64_t sub_4E894(uint64_t *a1, __int128 *a2)
{
  v71 = a1;
  v3 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v54 - v7;
  v82 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v8 = *(*(v82 - 8) + 64);
  v9 = __chkstk_darwin(v82);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v54 - v12;
  v13 = __chkstk_darwin(v11);
  v58 = &v54 - v14;
  __chkstk_darwin(v13);
  v57 = &v54 - v16;
  v17 = a2[3];
  v75 = a2[2];
  v76 = v17;
  v81 = *(a2 + 128);
  v18 = a2[7];
  v79 = a2[6];
  v80 = v18;
  v19 = a2[5];
  v77 = a2[4];
  v78 = v19;
  v20 = v77 + 56;
  v21 = 1 << *(v77 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = a2[1];
  v24 = v22 & *(v77 + 56);
  v25 = (v21 + 63) >> 6;
  v73 = *a2;
  v74 = v23;
  v65 = (v15 + 32);
  v66 = (v15 + 16);
  v64 = (v15 + 8);
  v67 = (v15 + 48);
  v60 = v15;
  v61 = (v15 + 56);
  v69 = v77;

  v27 = 0;
  v55 = v25;
  v56 = v20;
  v28 = v82;
  if (v24)
  {
    while (1)
    {
      v29 = v27;
LABEL_8:
      v30 = *(*(v69 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v24)))));
      v31 = *v71;
      v32 = *(*v71 + 16);
      v70 = v30;
      if (v32 && (v33 = sub_43124(v30), (v34 & 1) != 0))
      {
        v35 = v60;
        v36 = *(v60 + 16);
        v36(v58, *(v31 + 56) + *(v60 + 72) * v33, v28);
        v37 = v57;
        (*(v35 + 32))();
        v36(v59, v37, v28);
        v25 = v55;
        sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0);
        v38 = sub_1B49B4();
        v39 = v37;
        v20 = v56;
        (*(v35 + 8))(v39, v28);
      }

      else
      {
        v38 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v73, &v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_33358(0, *(v38 + 2) + 1, 1, v38);
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_33358((v40 > 1), v41 + 1, 1, v38);
      }

      v24 &= v24 - 1;
      *(v38 + 2) = v41 + 1;
      v42 = &v38[136 * v41];
      *(v42 + 2) = v73;
      v43 = v74;
      v44 = v75;
      v45 = v77;
      *(v42 + 5) = v76;
      *(v42 + 6) = v45;
      *(v42 + 3) = v43;
      *(v42 + 4) = v44;
      v46 = v78;
      v47 = v79;
      v48 = v80;
      v42[160] = v81;
      *(v42 + 8) = v47;
      *(v42 + 9) = v48;
      *(v42 + 7) = v46;
      v72 = v38;
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
      v49 = v68;
      sub_1B43C4();
      if ((*v67)(v49, 1, v82) == 1)
      {
        result = sub_42F48(v49, &qword_229708, &unk_1BCB60);
        v27 = v29;
        if (!v24)
        {
          break;
        }
      }

      else
      {
        v50 = v62;
        v51 = v49;
        v52 = v82;
        (*v65)(v62, v51, v82);
        v53 = v63;
        (*v66)(v63, v50, v52);
        (*v61)(v53, 0, 1, v52);
        sub_49948(v53, v70);
        result = (*v64)(v50, v52);
        v27 = v29;
        if (!v24)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
    }

    v24 = *(v20 + 8 * v29);
    ++v27;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4EE5C(uint64_t *a1, __int128 *a2)
{
  v71 = a1;
  v3 = sub_2B0C(&qword_229708, &unk_1BCB60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v54 - v7;
  v82 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v8 = *(*(v82 - 8) + 64);
  v9 = __chkstk_darwin(v82);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v54 - v12;
  v13 = __chkstk_darwin(v11);
  v58 = &v54 - v14;
  __chkstk_darwin(v13);
  v57 = &v54 - v16;
  v17 = a2[3];
  v75 = a2[2];
  v76 = v17;
  v81 = *(a2 + 128);
  v18 = a2[7];
  v79 = a2[6];
  v80 = v18;
  v19 = a2[5];
  v77 = a2[4];
  v78 = v19;
  v20 = *(&v77 + 1) + 56;
  v21 = 1 << *(*(&v77 + 1) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = a2[1];
  v24 = v22 & *(*(&v77 + 1) + 56);
  v25 = (v21 + 63) >> 6;
  v73 = *a2;
  v74 = v23;
  v65 = (v15 + 32);
  v66 = (v15 + 16);
  v64 = (v15 + 8);
  v67 = (v15 + 48);
  v60 = v15;
  v61 = (v15 + 56);
  v69 = *(&v77 + 1);

  v27 = 0;
  v55 = v25;
  v56 = v20;
  v28 = v82;
  if (v24)
  {
    while (1)
    {
      v29 = v27;
LABEL_8:
      v30 = *(*(v69 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v24)))));
      v31 = *v71;
      v32 = *(*v71 + 16);
      v70 = v30;
      if (v32 && (v33 = sub_43124(v30), (v34 & 1) != 0))
      {
        v35 = v60;
        v36 = *(v60 + 16);
        v36(v58, *(v31 + 56) + *(v60 + 72) * v33, v28);
        v37 = v57;
        (*(v35 + 32))();
        v36(v59, v37, v28);
        v25 = v55;
        sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0);
        v38 = sub_1B49B4();
        v39 = v37;
        v20 = v56;
        (*(v35 + 8))(v39, v28);
      }

      else
      {
        v38 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v73, &v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_33358(0, *(v38 + 2) + 1, 1, v38);
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_33358((v40 > 1), v41 + 1, 1, v38);
      }

      v24 &= v24 - 1;
      *(v38 + 2) = v41 + 1;
      v42 = &v38[136 * v41];
      *(v42 + 2) = v73;
      v43 = v74;
      v44 = v75;
      v45 = v77;
      *(v42 + 5) = v76;
      *(v42 + 6) = v45;
      *(v42 + 3) = v43;
      *(v42 + 4) = v44;
      v46 = v78;
      v47 = v79;
      v48 = v80;
      v42[160] = v81;
      *(v42 + 8) = v47;
      *(v42 + 9) = v48;
      *(v42 + 7) = v46;
      v72 = v38;
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0);
      v49 = v68;
      sub_1B43C4();
      if ((*v67)(v49, 1, v82) == 1)
      {
        result = sub_42F48(v49, &qword_229708, &unk_1BCB60);
        v27 = v29;
        if (!v24)
        {
          break;
        }
      }

      else
      {
        v50 = v62;
        v51 = v49;
        v52 = v82;
        (*v65)(v62, v51, v82);
        v53 = v63;
        (*v66)(v63, v50, v52);
        (*v61)(v53, 0, 1, v52);
        sub_49948(v53, v70);
        result = (*v64)(v50, v52);
        v27 = v29;
        if (!v24)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
    }

    v24 = *(v20 + 8 * v29);
    ++v27;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4F40C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = sub_4F46C(v4, a1);
  v6 = sub_44DC0(v5);

  return v6;
}

uint64_t sub_4F46C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __dst[0] = sub_453FC(a2);

  sub_50984(__dst);

  sub_43174(a1, __dst[0]);
  v7 = v6 >> 1;
  v8 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
LABEL_14:

    v17 = sub_5E79C(v2, v11, sub_5E0E0, sub_5E0E0);
    swift_bridgeObjectRelease_n();
    return v17;
  }

  v9 = v4;
  v10 = v5;
  v22 = _swiftEmptyArrayStorage;
  sub_3749C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v19 = v2;
    if (v10 < v7)
    {
      v11 = v22;
      v12 = (v9 + 576 * v10);
      v13 = v10 + 1;
      while (1)
      {
        memcpy(__dst, v12, sizeof(__dst));
        sub_43050(__dst, v20, &qword_229228, &qword_1BCB80);
        v22 = v11;
        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          sub_3749C((v14 > 1), v15 + 1, 1);
          v11 = v22;
        }

        v11[2] = v15 + 1;
        memcpy(&v11[71 * v15 + 4], __dst, 0x231uLL);
        if (v7 == v13)
        {
          break;
        }

        if (v13 >= v10)
        {
          v12 += 576;
          if (v13++ < v7)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v2 = v19;
      goto LABEL_14;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_4F674@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_42BA4(v7, &v6);
}

uint64_t sub_4F6C4(uint64_t a1, uint64_t a2)
{
  v65 = sub_2B0C(&qword_229738, &unk_1BCB90);
  v4 = *(*(v65 - 8) + 64);
  v5 = __chkstk_darwin(v65);
  v64 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v63 = &v56 - v7;
  v8 = *(a2 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v57 = a1;
    v70 = _swiftEmptyArrayStorage;
    sub_37638(0, v8, 0);
    v10 = v70;
    v11 = a2 + 64;
    v12 = -1 << *(a2 + 32);
    v13 = sub_1B4F84();
    v14 = 0;
    v15 = *(a2 + 36);
    v58 = a2 + 72;
    v59 = v8;
    v60 = v15;
    v61 = a2 + 64;
    v62 = a2;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a2 + 32))
    {
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_36;
      }

      if (v15 != *(a2 + 36))
      {
        goto LABEL_37;
      }

      v67 = v13 >> 6;
      v68 = 1 << v13;
      v66 = v14;
      v18 = v65;
      v19 = *(v65 + 48);
      v20 = *(a2 + 48);
      v21 = *(a2 + 56);
      v22 = *(v20 + 8 * v13);
      v23 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v24 = *(v23 - 8);
      v25 = v10;
      v26 = v63;
      (*(v24 + 16))(&v63[v19], v21 + *(v24 + 72) * v13, v23);
      v27 = v64;
      v69 = v22;
      *v64 = v22;
      v28 = &v26[v19];
      v10 = v25;
      (*(v24 + 32))(v27 + *(v18 + 48), v28, v23);
      v29 = sub_1B4374();
      sub_42F48(v27, &qword_229738, &unk_1BCB90);
      v70 = v25;
      v31 = *(v25 + 2);
      v30 = *(v25 + 3);
      if (v31 >= v30 >> 1)
      {
        sub_37638((v30 > 1), v31 + 1, 1);
        v10 = v70;
      }

      *(v10 + 2) = v31 + 1;
      v32 = &v10[16 * v31];
      *(v32 + 4) = v69;
      *(v32 + 5) = v29;
      a2 = v62;
      v16 = 1 << *(v62 + 32);
      if (v13 >= v16)
      {
        goto LABEL_38;
      }

      v11 = v61;
      v33 = *(v61 + 8 * v67);
      if ((v33 & v68) == 0)
      {
        goto LABEL_39;
      }

      LODWORD(v15) = v60;
      if (v60 != *(v62 + 36))
      {
        goto LABEL_40;
      }

      v34 = v33 & (-2 << (v13 & 0x3F));
      if (v34)
      {
        v16 = __clz(__rbit64(v34)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v17 = v59;
      }

      else
      {
        v35 = v67 << 6;
        v36 = v67 + 1;
        v17 = v59;
        v37 = (v58 + 8 * v67);
        while (v36 < (v16 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_42FF0(v13, v60, 0);
            v16 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_42FF0(v13, v60, 0);
      }

LABEL_4:
      v14 = v66 + 1;
      v13 = v16;
      if (v66 + 1 == v17)
      {
        a1 = v57;
        v9 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }

    goto LABEL_35;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_22:
  v40 = a2;
  v70 = v10;

  sub_50B18(&v70);

  sub_43174(a1, v70);
  v44 = v43 >> 1;
  v45 = (v43 >> 1) - v42;
  if (__OFSUB__(v43 >> 1, v42))
  {
    goto LABEL_41;
  }

  if (!v45)
  {
LABEL_33:
    swift_unknownObjectRelease();

    v54 = sub_5E79C(v40, v9, sub_5E494, sub_5E494);
    swift_bridgeObjectRelease_n();
    return v54;
  }

  v46 = v41;
  v47 = v42;
  v70 = _swiftEmptyArrayStorage;
  sub_3741C(0, v45 & ~(v45 >> 63), 0);
  if ((v45 & 0x8000000000000000) == 0)
  {
    v9 = v70;
    if (v47 <= v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = v47;
    }

    v49 = v48 - v47;
    v50 = (v46 + 16 * v47);
    while (v49)
    {
      v51 = *v50;
      v70 = v9;
      v53 = *(v9 + 2);
      v52 = *(v9 + 3);
      if (v53 >= v52 >> 1)
      {
        sub_3741C((v52 > 1), v53 + 1, 1);
        v9 = v70;
      }

      *(v9 + 2) = v53 + 1;
      *&v9[8 * v53 + 32] = v51;
      --v49;
      v50 += 2;
      if (!--v45)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_4FBC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  v66 = a6;
  v65 = a5;
  v64 = sub_2B0C(&qword_229738, &unk_1BCB90);
  v9 = *(*(v64 - 8) + 64);
  v10 = __chkstk_darwin(v64);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v62 = (&v53 - v13);
  __chkstk_darwin(v12);
  v61 = &v53 - v14;
  v15 = type metadata accessor for CollectionRecommendation(0);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_4F6C4(v19, a1);
  v21 = *(v20 + 16);
  if (v21)
  {
    v72 = _swiftEmptyArrayStorage;
    sub_375B4(0, v21, 0);
    v22 = v72;
    v23 = v20 + 64;
    v24 = -1 << *(v20 + 32);
    result = sub_1B4F84();
    v26 = result;
    v27 = 0;
    v28 = *(v20 + 36);
    v54 = v20 + 72;
    v55 = v21;
    v56 = v28;
    v57 = v20 + 64;
    v58 = v20;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v20 + 32))
    {
      if ((*(v23 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_27;
      }

      if (v28 != *(v20 + 36))
      {
        goto LABEL_28;
      }

      v68 = 1 << v26;
      v69 = v26 >> 6;
      v67 = v27;
      v30 = v64;
      v31 = *(v64 + 48);
      v71 = v22;
      v32 = *(v20 + 56);
      v33 = *(*(v20 + 48) + 8 * v26);
      v34 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v35 = *(v34 - 8);
      v36 = v32 + *(v35 + 72) * v26;
      v37 = v18;
      v38 = v61;
      (*(v35 + 16))(&v61[v31], v36, v34);
      v39 = v62;
      *v62 = v33;
      (*(v35 + 32))(v39 + *(v30 + 48), &v38[v31], v34);
      v40 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v70 = *(v40 + 48);
      v41 = *(v40 + 64);
      sub_1B4364();
      v42 = v63;
      sub_5ED18(v39, v63, &qword_229738, &unk_1BCB90);
      v43 = *(v30 + 48);
      *&v37[v70] = *v42;
      v37[v41] = 2;
      v18 = v37;
      v22 = v71;
      swift_storeEnumTagMultiPayload();
      (*(v35 + 8))(&v42[v43], v34);
      v72 = v22;
      v45 = v22[2];
      v44 = v22[3];
      if (v45 >= v44 >> 1)
      {
        sub_375B4(v44 > 1, v45 + 1, 1);
        v22 = v72;
      }

      v22[2] = v45 + 1;
      result = sub_5EB94(v18, v22 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45, type metadata accessor for CollectionRecommendation);
      v20 = v58;
      v29 = 1 << *(v58 + 32);
      if (v26 >= v29)
      {
        goto LABEL_29;
      }

      v23 = v57;
      v46 = *(v57 + 8 * v69);
      if ((v46 & v68) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v28) = v56;
      if (v56 != *(v58 + 36))
      {
        goto LABEL_31;
      }

      v47 = v46 & (-2 << (v26 & 0x3F));
      if (v47)
      {
        v29 = __clz(__rbit64(v47)) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v69 << 6;
        v49 = v69 + 1;
        v50 = (v54 + 8 * v69);
        while (v49 < (v29 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_42FF0(v26, v56, 0);
            v29 = __clz(__rbit64(v51)) + v48;
            goto LABEL_7;
          }
        }

        result = sub_42FF0(v26, v56, 0);
      }

LABEL_7:
      v27 = v67 + 1;
      v26 = v29;
      if (v67 + 1 == v55)
      {

        return v22;
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
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_500F0(uint64_t a1, uint64_t a2, int a3)
{
  v58 = a3;
  v57 = a2;
  v56 = sub_2B0C(&qword_229768, &unk_1BCBC0);
  v4 = *(*(v56 - 8) + 64);
  v5 = __chkstk_darwin(v56);
  v55 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v54 = &v47 - v7;
  v8 = type metadata accessor for CollectionRecommendation(0);
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v14 = v11;
  v64 = _swiftEmptyArrayStorage;
  sub_375B4(0, v12, 0);
  v13 = v64;
  v15 = a1 + 64;
  v16 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v18 = result;
  v19 = 0;
  v20 = 0;
  v21 = *(a1 + 36);
  v47 = a1 + 72;
  v48 = v12;
  v49 = v21;
  v50 = a1 + 64;
  v51 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_22;
    }

    if (v21 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v60 = 1 << v18;
    v61 = v18 >> 6;
    v59 = v19;
    v62 = v20;
    v23 = v56;
    v24 = *(v56 + 48);
    v25 = *(a1 + 56);
    v26 = (*(a1 + 48) + 16 * v18);
    v28 = *v26;
    v27 = v26[1];
    v29 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    v30 = *(v29 - 8);
    v63 = v13;
    v31 = v30;
    v32 = v25 + *(v30 + 72) * v18;
    v33 = v54;
    (*(v30 + 16))(&v54[v24], v32, v29);
    v34 = v55;
    *v55 = v28;
    *(v34 + 8) = v27;
    (*(v31 + 32))(v34 + *(v23 + 48), &v33[v24], v29);
    v35 = v14;
    v36 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);

    v37 = v62;
    sub_1B4364();
    v20 = v37;
    v13 = v63;
    sub_42F48(v34, &qword_229768, &unk_1BCBC0);
    *(v35 + v36) = 2;
    v14 = v35;
    swift_storeEnumTagMultiPayload();
    v64 = v13;
    v39 = v13[2];
    v38 = v13[3];
    if (v39 >= v38 >> 1)
    {
      sub_375B4(v38 > 1, v39 + 1, 1);
      v13 = v64;
    }

    v13[2] = v39 + 1;
    result = sub_5EB94(v14, v13 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, type metadata accessor for CollectionRecommendation);
    a1 = v51;
    v22 = 1 << *(v51 + 32);
    if (v18 >= v22)
    {
      goto LABEL_24;
    }

    v15 = v50;
    v40 = *(v50 + 8 * v61);
    if ((v40 & v60) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v21) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v41 = v40 & (-2 << (v18 & 0x3F));
    if (v41)
    {
      v22 = __clz(__rbit64(v41)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v61 << 6;
      v43 = v61 + 1;
      v44 = (v47 + 8 * v61);
      while (v43 < (v22 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_42FF0(v18, v49, 0);
          v22 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v18, v49, 0);
    }

LABEL_4:
    v19 = v59 + 1;
    v18 = v22;
    if (v59 + 1 == v48)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5059C()
{
  sub_2BF8((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_5061C(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      memcpy(__dst, v7, 0x231uLL);
      memcpy(__src, v7, 0x231uLL);
      sub_4299C(__dst, v12);
      v9 = a1(__src);
      if (v3)
      {
        break;
      }

      v4 = v9;
      memcpy(v12, __src, 0x231uLL);
      sub_2601C(v12);
      v10 = v8-- == 0;
      v7 += 568;
      if ((v4 | v10))
      {
        return v4 & 1;
      }
    }

    memcpy(v12, __src, 0x231uLL);
    sub_2601C(v12);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_50718(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_507C4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B58(v2);
  }

  v3 = *(v2 + 2);
  v41[0] = (v2 + 32);
  v41[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 168;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 7) >= *(v12 - 10))
          {
            break;
          }

          v13 = v12 - 136;
          v32 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v35 = *(v12 + 3);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v40 = v12[128];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 88);
          *(v12 + 2) = *(v12 - 104);
          *(v12 + 3) = v20;
          *(v12 + 16) = *(v12 - 1);
          v21 = *(v12 - 24);
          *(v12 + 6) = *(v12 - 40);
          *(v12 + 7) = v21;
          v22 = *(v12 - 56);
          *(v12 + 4) = *(v12 - 72);
          *(v12 + 5) = v22;
          v23 = *(v12 - 120);
          *v12 = *(v12 - 136);
          *(v12 + 1) = v23;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          *(v13 + 3) = v35;
          *(v13 + 4) = v26;
          *(v13 + 1) = v24;
          *(v13 + 2) = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          v13[128] = v40;
          *(v13 + 6) = v28;
          *(v13 + 7) = v29;
          *(v13 + 5) = v27;
          v12 -= 136;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 136;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v32 = v7 + 4;
    *(&v32 + 1) = v6;
    sub_51544(&v32, v31, v41, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_50984(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B6C(v2);
  }

  v3 = v2[2];
  v15[0] = (v2 + 4);
  v15[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (v12[75] >= v12[147])
          {
            break;
          }

          memcpy(__dst, v12 + 76, sizeof(__dst));
          memcpy(v12 + 76, v12 + 4, 0x240uLL);
          result = memcpy(v12 + 4, __dst, 0x240uLL);
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 72;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_229228, &qword_1BCB80);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_51B9C(__dst, v16, v15, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_50B18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B80(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_229750, &qword_1BCBA8);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_5218C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_50C90()
{
  result = qword_2296C8;
  if (!qword_2296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2296C8);
  }

  return result;
}

uint64_t sub_50CE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50D24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_50D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226C;

  return sub_48390(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_50E58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_50E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_350C0(*(a1 + 16), 0);
  v4 = sub_3EB38(&v6, v3 + 4, v1, a1);

  sub_417B8();
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_50F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_5101C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_2B0C(&qword_229208, &qword_1BC2E8);
      v7 = *(type metadata accessor for CollectionRecommendation(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for CollectionRecommendation(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_511BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229368, &qword_1BC408);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_51294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2B0C(&qword_229258, &unk_1BCC20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_5136C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2B0C(&qword_229200, &qword_1BC2E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_51454(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2B0C(&qword_229218, &unk_1C0210);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 568);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_51544(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_52708((*a3 + 136 * *v83), (*a3 + 136 * *v85), (*a3 + 136 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6 + 56);
      v10 = 136 * v8;
      v11 = *a3 + 136 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 192);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[17];
        v14 += 17;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 136 * v6 - 136;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v103 = *(v21 + v10 + 96);
            v105 = *(v21 + v10 + 112);
            v107 = *(v21 + v10 + 128);
            v95 = *(v21 + v10 + 32);
            v97 = *(v21 + v10 + 48);
            v99 = *(v21 + v10 + 64);
            v101 = *(v21 + v10 + 80);
            v91 = *(v21 + v10);
            v93 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x88uLL);
            *(v20 + 96) = v103;
            *(v20 + 112) = v105;
            *(v20 + 128) = v107;
            *(v20 + 32) = v95;
            *(v20 + 48) = v97;
            *(v20 + 64) = v99;
            *(v20 + 80) = v101;
            *v20 = v91;
            *(v20 + 16) = v93;
          }

          ++v19;
          v17 -= 136;
          v10 += 136;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_32F04((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = v7 + 4;
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[2 * v38];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[2 * v38 - 2];
        v77 = *v76;
        v78 = &v36[2 * v38];
        v79 = v78[1];
        sub_52708((*a3 + 136 * *v76), (*a3 + 136 * *v78), (*a3 + 136 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[2 * v38], v78 + 2, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[2 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[2 * v38];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 136 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 56) >= *(v26 - 80))
    {
LABEL_29:
      ++v6;
      v23 += 136;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 136;
    v104 = *(v26 + 96);
    v106 = *(v26 + 112);
    v108 = *(v26 + 128);
    v96 = *(v26 + 32);
    v98 = *(v26 + 48);
    v100 = *(v26 + 64);
    v102 = *(v26 + 80);
    v92 = *v26;
    v94 = *(v26 + 16);
    v28 = *(v26 - 56);
    *(v26 + 64) = *(v26 - 72);
    *(v26 + 80) = v28;
    v29 = *(v26 - 24);
    *(v26 + 96) = *(v26 - 40);
    *(v26 + 112) = v29;
    *(v26 + 128) = *(v26 - 8);
    v30 = *(v26 - 88);
    *(v26 + 32) = *(v26 - 104);
    *(v26 + 48) = v30;
    v31 = *(v26 - 120);
    *v26 = *(v26 - 136);
    *(v26 + 16) = v31;
    *(v27 + 64) = v100;
    *(v27 + 80) = v102;
    *(v27 + 96) = v104;
    *(v27 + 112) = v106;
    *(v27 + 128) = v108;
    *(v27 + 32) = v96;
    *(v27 + 48) = v98;
    v26 -= 136;
    *v27 = v92;
    *(v27 + 16) = v94;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_51B9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_52E40(v7);
      v7 = result;
    }

    v76 = v7 + 2;
    v77 = v7[2];
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_52938((*v88 + 576 * *v78), (*v88 + 576 * *v80), (*v88 + 576 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 576 * v6 + 568);
      v10 = 576 * v8;
      v11 = *v88 + 576 * v8;
      v12 = *(v11 + 568);
      v13 = v8 + 2;
      v14 = (v11 + 1720);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 72;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 576 * v6 - 576;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x240uLL);
            result = memcpy((v21 + v18), __dst, 0x240uLL);
          }

          ++v20;
          v18 -= 576;
          v10 += 576;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_32F04((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v30;
    v31 = v7 + 4;
    v32 = &v7[2 * v29 + 4];
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = v7[4];
          v35 = v7[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[2 * v30];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[2 * v33];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[2 * v30];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[2 * v33];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[2 * v33 - 2];
        v72 = *v71;
        v73 = &v31[2 * v33];
        v74 = v73[1];
        sub_52938((*v88 + 576 * *v71), (*v88 + 576 * *v73), (*v88 + 576 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > v7[2])
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v7[2];
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove(&v31[2 * v33], v73 + 2, 16 * (v75 - 1 - v33));
        v7[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[2 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[2 * v30];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[2 * v33];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 576 * v6 - 576;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[71] >= v26[143])
    {
LABEL_30:
      ++v6;
      v23 += 576;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 72, sizeof(__dst));
    memcpy(v26 + 72, v26, 0x240uLL);
    result = memcpy(v26, __dst, 0x240uLL);
    v26 -= 72;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_5218C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_52BB0((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_32F04((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = v8 + 4;
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[2 * v5];
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[2 * v5];
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = &v34[2 * v5 - 2];
        v74 = *v73;
        v75 = &v34[2 * v5];
        v76 = v75[1];
        sub_52BB0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[2 * v5], v75 + 2, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[2 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_52708(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    v12 = 17 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[7] < v4[7])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 17;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 17;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 17;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x88uLL);
    goto LABEL_9;
  }

  v16 = 17 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v5 -= 17;
    do
    {
      v17 = v5 + 17;
      if (*(v13 - 10) < *(v6 - 10))
      {
        v19 = v6 - 17;
        if (v17 != v6)
        {
          memmove(v5, v6 - 17, 0x88uLL);
        }

        if (v13 <= v4 || (v6 -= 17, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 17);
      if (v17 != v13)
      {
        memmove(v5, v13 - 17, 0x88uLL);
      }

      v5 -= 17;
      v13 -= 17;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 17 * ((v13 - v4) / 136);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

uint64_t sub_52938(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 576;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 576;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[576 * v9] <= a4)
    {
      memmove(a4, __dst, 576 * v9);
    }

    v12 = &v4[576 * v9];
    if (v8 < 576)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 71) < *(v6 + 71))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 576;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 576;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 576;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x240uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[576 * v11] <= a4)
  {
    memmove(a4, __src, 576 * v11);
  }

  v12 = &v4[576 * v11];
  if (v10 >= 576 && v6 > v7)
  {
LABEL_20:
    v5 -= 576;
    do
    {
      v15 = v5 + 576;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 576;
        if (v15 != v6)
        {
          memmove(v5, v6 - 576, 0x240uLL);
        }

        if (v12 <= v4 || (v6 -= 576, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 576);
      if (v15 != v12)
      {
        memmove(v5, v12 - 576, 0x240uLL);
      }

      v5 -= 576;
      v12 -= 576;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 576;
  if (v6 != v4 || v6 >= &v4[576 * v18])
  {
    memmove(v6, v4, 576 * v18);
  }

  return 1;
}

uint64_t sub_52BB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_52DB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_52E40(v3);
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

unint64_t sub_52E54(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1B57E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_2B0C(&qword_2296B8, &unk_1BCAF0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t sub_53018(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1B57E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          result = v17 + 88 * v3;
          v18 = (v17 + 88 * v6);
          if (v3 != v6 || result >= v18 + 88)
          {
            result = memmove(result, v18, 0x58uLL);
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_5318C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1B57E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
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
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

  return result;
}

unint64_t sub_53300(int64_t a1, uint64_t a2)
{
  v4 = sub_1B40F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1B4F94();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_5ED80();
      v23 = sub_1B4744();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_535B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1B57E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

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

  return result;
}

uint64_t sub_53728(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      v14 = *v13;
      result = sub_1B57E4();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 >= v8 && v3 >= v15)
        {
LABEL_15:
          v18 = (v12 + 8 * v3);
          if (v3 != v6 || v18 >= v13 + 1)
          {
            *v18 = *v13;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 48 * v3);
          v21 = (v19 + 48 * v6);
          if (v3 != v6 || v20 >= v21 + 3)
          {
            v9 = *v21;
            v10 = v21[2];
            v20[1] = v21[1];
            v20[2] = v10;
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v15 >= v8 || v3 >= v15)
      {
        goto LABEL_15;
      }

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

uint64_t sub_538A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F94() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B57F4();

      sub_1B4884();
      v13 = sub_1B5844();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_53A54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4204();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_3A734(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_184C48();
      goto LABEL_7;
    }

    sub_17C6A0(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_3A734(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_15B7EC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_1B41D4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

void *sub_53C58(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_184F9C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17CB48(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 384 * v9);

    return memcpy(v21, a1, 0x179uLL);
  }

  else
  {

    return sub_15B8E0(v9, a2, a1, v20);
  }
}

unint64_t sub_53E00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1854E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17D824(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_15C8E0(v9, a2, a1, v20);
  }
}

uint64_t sub_53F64(uint64_t a1, char a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, void, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_3A9D8(a2 & 1);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    v14 = sub_3A9D8(a2 & 1);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v14);
    *(v26 + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2 & 1, a1, v25);
  }
}

unint64_t sub_540BC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1858C4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17E550(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + (v9 << 6);

    return sub_5EA74(a1, v21);
  }

  else
  {

    return sub_15B958(v9, a2, a1, v20);
  }
}

uint64_t sub_541DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_185CAC();
      goto LABEL_7;
    }

    sub_17DB3C(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_43124(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_15B9AC(v10, a2, a1, v16);
}

uint64_t sub_543D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v8 = v7;
  v38 = a2;
  v12 = sub_1B40F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_3AC78(a3);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v35();
      goto LABEL_9;
    }

    v36();
    v25 = *v8;
    v26 = sub_3AC78(a3);
    if ((v23 & 1) == (v27 & 1))
    {
      v19 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = v38;
  v29 = a1;
  v30 = *v8;
  if (v23)
  {
    v31 = (*(v30 + 56) + 16 * v19);
    v33 = *v31;
    v32 = v31[1];
    *v31 = v29;
    v31[1] = v28;
  }

  else
  {
    (*(v13 + 16))(v16, a3, v12);
    return v37(v19, v16, v29, v28, v30);
  }
}

uint64_t sub_54618(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  result = sub_43124(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    result = sub_43124(a2);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    *(*(v25 + 56) + 8 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v25);
  }

  return result;
}

unint64_t sub_54758(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_187658();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1820C4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * v9;

    return sub_5EAD0(a1, v21);
  }

  else
  {

    return sub_15BC2C(v9, a2, a1, v20);
  }
}

uint64_t sub_548FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_3A678(a2, a3);
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
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_3A678(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1B5784();
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

uint64_t sub_54A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3A678(a3, a4);
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
      sub_1885F0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_184460(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_3A678(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_15BD28(v13, a3, a4, a1, a2, v24);
  }
}

void *sub_54BB8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_43124(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_187328();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17D114(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_43124(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 568 * v9;

    return sub_5EBFC(a1, v21);
  }

  else
  {

    return sub_15BD78(v9, a2, a1, v20);
  }
}

unint64_t sub_54CDC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_3AB0C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_187DC0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_183284(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_3AB0C(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1B5784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_15C8DC(v9, a2 & 1, a1, v20);
  }
}

uint64_t sub_54E00(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_55274(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_54F70(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 136 * v14 + 8) == 1)
    {

LABEL_15:
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_5565C(v18, a2, v4, a3);
      }
    }

    else
    {
      v15 = sub_1B5604();

      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_5565C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_550F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 136 * v14 + 8))
    {
      v15 = sub_1B5604();

      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {

LABEL_15:
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_5565C(v18, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_5565C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_55274(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_552FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_55394(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_55438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    memcpy(__dst, (*(v4 + 56) + 384 * v16), sizeof(__dst));
    v18 = *(v9 + 40);
    result = sub_1B57E4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    result = memcpy((*(v9 + 56) + 384 * v22), __dst, 0x179uLL);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_5565C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_229700, &qword_1BCB58);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 136 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 64);
      v46 = *(v18 + 48);
      v47 = v21;
      v45 = v20;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v51 = *(v18 + 128);
      v49 = v23;
      v50 = v22;
      v48 = v24;
      v43 = *v18;
      v44 = v19;
      v25 = *(v9 + 40);
      result = sub_1B57E4();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        break;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(*(v9 + 48) + 8 * v29) = v17;
      v34 = *(v9 + 56) + 136 * v29;
      *v34 = v43;
      v35 = v44;
      v36 = v45;
      v37 = v47;
      *(v34 + 48) = v46;
      *(v34 + 64) = v37;
      *(v34 + 16) = v35;
      *(v34 + 32) = v36;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      *(v34 + 128) = v51;
      *(v34 + 96) = v39;
      *(v34 + 112) = v40;
      *(v34 + 80) = v38;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_429F8(&v43, v42);
        return v9;
      }

      result = sub_429F8(&v43, v42);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v30 = 0;
    v31 = (63 - v26) >> 6;
    while (++v28 != v31 || (v30 & 1) == 0)
    {
      v32 = v28 == v31;
      if (v28 == v31)
      {
        v28 = 0;
      }

      v30 |= v32;
      v33 = *(v12 + 8 * v28);
      if (v33 != -1)
      {
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_558E4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8 - 8);
  v32 = &v28 - v10;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_229730, &qword_1BCB88);
  result = sub_1B52B4();
  v31 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v29 = a1;
  v30 = (v31 + 8);
  v14 = (v31 + 8);
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v34 = (v12 - 1) & v12;
LABEL_16:
    v18 = v15 | (v13 << 6);
    memcpy(v38, (a4[6] + 568 * v18), 0x231uLL);
    v19 = a4;
    v20 = a4[7];
    v21 = v32;
    v22 = *(v33 + 72);
    sub_43050(v20 + v22 * v18, v32, &qword_229728, &unk_1D14A0);
    v23 = v31;
    v24 = v31[5];
    memcpy(v37, v38, sizeof(v37));
    sub_1B57F4();
    sub_4299C(v38, &v35);
    SeedBook.hash(into:)(v36);
    sub_1B5844();
    v25 = -1 << *(v23 + 32);
    v26 = sub_1B4FA4();
    *&v14[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
    memcpy((v23[6] + 568 * v26), v38, 0x231uLL);
    result = sub_5ED18(v21, v23[7] + v26 * v22, &qword_229728, &unk_1D14A0);
    ++v23[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    a1 = v29;
    v12 = v34;
    if (!a3)
    {
      return v31;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v31;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v34 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_55BB0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v45 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v45);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v36 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_229748, &qword_1BCBA0);
  result = sub_1B52B4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v38 = a4;
  v39 = v7 + 16;
  v16 = result + 64;
  v37 = v7;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v43 = *(v7 + 72);
    v23 = v41;
    v24 = v45;
    (*(v7 + 16))(v41, v21 + v43 * v20, v45);
    v25 = *(v7 + 32);
    v25(v44, v23, v24);
    v26 = *(v13 + 40);
    result = sub_1B57E4();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v13 + 48) + 8 * v30) = v22;
    result = (v25)(*(v13 + 56) + v30 * v43, v44, v45);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v7 = v37;
    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = v40[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_55EE4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AttributeAffinityResult();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v36 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_2B0C(&qword_2297A0, &qword_1BCC00);
  result = sub_1B52B4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v37 = a4;
  v18 = v38;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v40 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = *(a4[6] + 8 * v22);
    v25 = *(v39 + 72);
    sub_5EB2C(v23 + v25 * v22, v18, type metadata accessor for AttributeAffinityResult);
    sub_5EB94(v18, v41, type metadata accessor for AttributeAffinityResult);
    v26 = *(v14 + 40);
    result = sub_1B57E4();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v14 + 48) + 8 * v30) = v24;
    result = sub_5EB94(v41, *(v14 + 56) + v30 * v25, type metadata accessor for AttributeAffinityResult);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v15 = v40;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_561EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      v18 = *(v4 + 56) + 88 * v16;
      v20 = *(v18 + 48);
      v19 = *(v18 + 64);
      v21 = *(v18 + 80);
      v41 = *(v18 + 32);
      v44 = v21;
      v42 = v20;
      v43 = v19;
      v22 = *(v18 + 16);
      v39 = *v18;
      v40 = v22;
      v23 = *(v9 + 40);
      result = sub_1B57E4();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        break;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v9 + 48) + 8 * v27) = v17;
      v32 = *(v9 + 56) + 88 * v27;
      v33 = v40;
      *v32 = v39;
      *(v32 + 16) = v33;
      v34 = v41;
      v35 = v42;
      v36 = v43;
      *(v32 + 80) = v44;
      *(v32 + 48) = v35;
      *(v32 + 64) = v36;
      *(v32 + 32) = v34;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_5EDD8(&v39, v38);
        return v9;
      }

      result = sub_5EDD8(&v39, v38);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v28 = 0;
    v29 = (63 - v24) >> 6;
    while (++v26 != v29 || (v28 & 1) == 0)
    {
      v30 = v26 == v29;
      if (v26 == v29)
      {
        v26 = 0;
      }

      v28 |= v30;
      v31 = *(v12 + 8 * v26);
      if (v31 != -1)
      {
        v27 = __clz(__rbit64(~v31)) + (v26 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_56454(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  result = sub_1B52B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = (*(v4 + 56) + 16 * v16);
    v19 = v18[1];
    v31 = *v18;
    v20 = *(v9 + 40);
    result = sub_1B57E4();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v17;
    v29 = (*(v9 + 56) + 16 * v24);
    *v29 = v31;
    v29[1] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_56670(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    sub_2B0C(&qword_2297A8, &qword_1BCC08);
    v8 = sub_1B52B4();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = 0;
    v12 = v8 + 64;
    v33 = v4;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_16;
      }

      v14 = v11;
      do
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x56A70);
        }

        if (v11 >= a2)
        {
          return v9;
        }

        v15 = a1[v11];
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
LABEL_16:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(*(v4 + 48) + v16);
      v19 = (v17 + 24 * v16);
      v34 = *(v19 + 8);
      v35 = *v19;
      v36 = v19[2];
      v20 = *(v9 + 40);
      sub_1B57F4();

      sub_1B4884();

      v21 = sub_1B5844();
      v22 = -1 << *(v9 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) != 0)
      {
        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        do
        {
          if (++v24 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_31;
          }

          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v24);
        }

        while (v29 == -1);
        v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      }

      *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v9 + 48) + v25) = v18;
      v30 = *(v9 + 56) + 24 * v25;
      *v30 = v35;
      *(v30 + 8) = v34;
      *(v30 + 16) = v36;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      v4 = v33;
      if (!v5)
      {
        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_56C34(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B5744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 136 * v6 + 136 * v7) != &v9[17 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_35274(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = v1[1];
        v16 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v16 - 136 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_56DC0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_37;
  }

  v32 = result;
  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  sub_1B5744();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = v14[2];
  if ((v12 + 136 * v8 + 136 * v9) != &v14[17 * v15 + 4])
  {

    goto LABEL_8;
  }

  v17 = v14[3];

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_56C34(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_39;
  }

  v24 = v4[1] + 136 * v22 + 136 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  sub_1B5744();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];
  if (v24 != &v26[17 * v27 + 4])
  {

    goto LABEL_21;
  }

  v29 = v26[3];

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v31 < v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_46:
      __break(1u);
      return result;
    }

    sub_5732C(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_573E4(v34);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_5704C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = v4;
  v42 = v15;
  v18 = (v9 + 32);
  v19 = 136 * a2;
  v20 = v9 + 32 + 136 * a2;
  v40 = v13;
  v41 = (v20 + 136 * a3);
  result = sub_57C5C(v7);
  v44 = v9 + 32;
  if (result)
  {
    v21 = result;
    v37 = v7;
    v38 = a4;
    v39 = v9;
    v22 = v4[2];
    v23 = (v4[1] + 136 * v22);
    v24 = &v23[v19];
    v25 = result + 32;
    swift_arrayDestroy();
    if (v18 != v23 || v18 >= v24)
    {
      memmove(v18, v23, v19);
    }

    swift_arrayDestroy();
    v38(v20, a3);
    v26 = &v24[136 * v42];
    if (v41 != v26 || v41 >= &v26[136 * v40])
    {
      memmove(v41, v26, 136 * v40);
    }

    v28 = ((v25 + 136 * *(v21 + 16) - &v23[136 * v37]) * 0x7878787878787879) >> 64;
    swift_arrayDestroy();
    *(v21 + 16) = 0;

    v9 = v39;
  }

  else
  {
    v22 = v4[2];
    v29 = v22 + a2;
    if (__OFADD__(v22, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = a2;
    if (v29 < v22)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v29, v22))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v31 = v16[1];
    swift_arrayInitWithCopy();
    result = (a4)(v44 + 136 * v30, a3);
    v32 = v29 + v42;
    if (__OFADD__(v29, v42))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33 = v16[3] >> 1;
    if (v33 < v32)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v33, v32))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v34 = *v16;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v22))
  {
    goto LABEL_36;
  }

  v35 = *(v9 + 16);
  v11 = __OFADD__(v22, v35);
  v36 = v22 + v35;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v36 < v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v36 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v16 = v9;
  v16[1] = v44 - 136 * v22;
  v16[2] = v22;
  v16[3] = (2 * v36) | 1;
}

void *sub_5732C(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_1B5744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v9 = result[2];
  v5 = __OFADD__(v9, v7);
  v10 = &v7[v9];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v10;

  v11 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_573E4(void *result)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v4 >> 1) - v3;
  if (!__OFSUB__(v4 >> 1, v3))
  {
    v54 = result[2];
    v55 = result[1];
    v6 = result[4];
    v7 = result[3] >> 1;
    v53 = result;
    if (v6 == v7)
    {
      sub_5E9F4(&v96);
      v111 = v102;
      v112 = v103;
      v113 = v104;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      v110 = v101;
      __dst = v96;
      v106 = v97;
    }

    else
    {
      if (v6 < result[2] || v6 >= v7)
      {
        goto LABEL_60;
      }

      v9 = (v55 + 136 * v6);
      v96 = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v99 = v9[3];
      v100 = v12;
      v97 = v10;
      v98 = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v104 = *(v9 + 128);
      v102 = v14;
      v103 = v15;
      v101 = v13;
      memmove(&__dst, v9, 0x81uLL);
      ++v6;
      AuthorRecommendationSource.id.getter(&__dst);
      sub_429F8(&v96, &v87);
    }

    v102 = v111;
    v103 = v112;
    v104 = v113;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v101 = v110;
    v96 = __dst;
    v97 = v106;
    result = sub_5E9DC(&v96);
    if (result == 1)
    {
LABEL_11:
      sub_42F48(v53, &qword_229788, &qword_1BCBD8);
      v93 = v111;
      v94 = v112;
      v95 = v113;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v92 = v110;
      v87 = __dst;
      v88 = v106;
      return sub_42F48(&v87, &qword_229790, &unk_1BCBE0);
    }

    v16 = v3;
    v17 = v4;
    v18 = v6;
    v19 = v2;
    v58 = v2;
    while (!__OFADD__(v5, 1))
    {
      v86 = sub_57A74(v5, v5 + 1, *v19, v19[1], v16, v17);
      v20 = sub_57C40();
      sub_5704C(&v86, v5, 0, v20);

      v21 = v19[2];
      v22 = v19[3];
      if (__OFSUB__(v22 >> 1, v21))
      {
        goto LABEL_52;
      }

      v61 = (v22 >> 1) - v21;
      v62 = v19[3];
      v23 = v19[1];
      v59 = v19[2];
      v60 = *v19;
      v24 = 17 * v21;
      v56 = v23;
      v57 = v22 >> 1;
      if (v22)
      {
        sub_1B5744();
        swift_unknownObjectRetain();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          swift_unknownObjectRelease();
          v25 = _swiftEmptyArrayStorage;
        }

        v26 = v25[2];
        v27 = 8 * v24;
        v28 = v23 + v27;
        v29 = v61;
        if ((v28 + 136 * v61) == &v25[17 * v26 + 4])
        {
          v31 = v25[3];

          v32 = (v31 >> 1) - v26;
          v30 = v61 + v32;
          if (__OFADD__(v61, v32))
          {
            goto LABEL_58;
          }
        }

        else
        {

          v30 = v61;
        }
      }

      else
      {
        v27 = 136 * v21;
        v29 = (v22 >> 1) - v21;
        v30 = v29;
      }

      v83 = v111;
      v84 = v112;
      v79 = v107;
      v80 = v108;
      v81 = v109;
      v82 = v110;
      v77 = __dst;
      v78 = v106;
      v93 = v111;
      v94 = v112;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v92 = v110;
      v85 = v113;
      v95 = v113;
      v87 = __dst;
      v88 = v106;
      result = sub_5E9DC(&v87);
      v33 = v18;
      if (result == 1)
      {
LABEL_42:
        v49 = __OFSUB__(v5, v29);
        v48 = v5 - v29;
        if (v49)
        {
          goto LABEL_53;
        }
      }

      else if (v5 >= v30)
      {
        v49 = __OFSUB__(v5, v29);
        v48 = v5 - v29;
        if (v49)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v34 = v56 + v27;
        while (2)
        {
          v35 = v34 + 136 * v5;
          v36 = v5 + 1;
          while (1)
          {
            v5 = v36;
            v73[6] = v111;
            v73[7] = v112;
            v74 = v113;
            v73[2] = v107;
            v73[3] = v108;
            v73[4] = v109;
            v73[5] = v110;
            v73[0] = __dst;
            v73[1] = v106;
            v75[6] = v83;
            v75[7] = v84;
            v76 = v85;
            v75[2] = v79;
            v75[3] = v80;
            v75[4] = v81;
            v75[5] = v82;
            v75[0] = v77;
            v75[1] = v78;
            sub_429F8(v75, &v64);
            result = sub_42F48(v73, &qword_229790, &unk_1BCBE0);
            v37 = v84;
            *(v35 + 96) = v83;
            *(v35 + 112) = v37;
            *(v35 + 128) = v85;
            v38 = v80;
            *(v35 + 32) = v79;
            *(v35 + 48) = v38;
            v39 = v82;
            *(v35 + 64) = v81;
            *(v35 + 80) = v39;
            v40 = v78;
            *v35 = v77;
            *(v35 + 16) = v40;
            if (v18 != v7)
            {
              break;
            }

            sub_5E9F4(&v64);
            v111 = v70;
            v112 = v71;
            v113 = v72;
            v107 = v66;
            v108 = v67;
            v109 = v68;
            v110 = v69;
            __dst = v64;
            v106 = v65;
            v83 = v70;
            v84 = v71;
            v85 = v72;
            v79 = v66;
            v80 = v67;
            v81 = v68;
            v82 = v69;
            v77 = v64;
            v78 = v65;
            v93 = v70;
            v94 = v71;
            v95 = v72;
            v89 = v66;
            v90 = v67;
            v91 = v68;
            v92 = v69;
            v87 = v64;
            v88 = v65;
            result = sub_5E9DC(&v87);
            if (result != 1)
            {
              v35 += 136;
              v36 = v5 + 1;
              if (v5 < v30)
              {
                continue;
              }
            }

            v18 = v7;
            goto LABEL_36;
          }

          if (v33 < v54 || v18 >= v7)
          {
            goto LABEL_57;
          }

          v41 = (v55 + 136 * v18);
          v64 = *v41;
          v42 = v41[1];
          v43 = v41[2];
          v44 = v41[4];
          v67 = v41[3];
          v68 = v44;
          v65 = v42;
          v66 = v43;
          v45 = v41[5];
          v46 = v41[6];
          v47 = v41[7];
          v72 = *(v41 + 128);
          v70 = v46;
          v71 = v47;
          v69 = v45;
          memmove(&__dst, v41, 0x81uLL);
          ++v18;
          AuthorRecommendationSource.id.getter(&__dst);
          sub_429F8(&v64, v63);
          v83 = v111;
          v84 = v112;
          v79 = v107;
          v80 = v108;
          v81 = v109;
          v82 = v110;
          v77 = __dst;
          v78 = v106;
          v93 = v111;
          v94 = v112;
          v89 = v107;
          v90 = v108;
          v91 = v109;
          v92 = v110;
          v85 = v113;
          v95 = v113;
          v87 = __dst;
          v88 = v106;
          result = sub_5E9DC(&v87);
          if (result != 1)
          {
            v29 = v61;
            if (v5 < v30)
            {
              continue;
            }

            goto LABEL_42;
          }

          break;
        }

LABEL_36:
        v48 = v5 - v61;
        if (__OFSUB__(v5, v61))
        {
          goto LABEL_53;
        }
      }

      if (v48)
      {
        sub_1B5744();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = _swiftEmptyArrayStorage;
        }

        v50 = result[2];
        v49 = __OFADD__(v50, v48);
        v51 = v50 + v48;
        if (v49)
        {
          goto LABEL_54;
        }

        result[2] = v51;

        v52 = v57 + v48;
        if (__OFADD__(v57, v48))
        {
          goto LABEL_55;
        }

        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v62 = v62 & 1 | (2 * v52);
        v58[3] = v62;
      }

      v102 = v111;
      v103 = v112;
      v104 = v113;
      v98 = v107;
      v99 = v108;
      v100 = v109;
      v101 = v110;
      v96 = __dst;
      v97 = v106;
      result = sub_5E9DC(&v96);
      v19 = v58;
      v16 = v59;
      v17 = v62;
      if (result == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}