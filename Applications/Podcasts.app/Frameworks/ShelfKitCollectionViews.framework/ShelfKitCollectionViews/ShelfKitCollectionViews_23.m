uint64_t sub_276728(void (*a1)(char *, unint64_t, void), unint64_t *a2)
{
  v132 = a2;
  v136 = a1;
  v127 = sub_30B858();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  __chkstk_darwin(v3 - 8);
  v128 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_3032C8();
  v118 = *(v139 - 1);
  __chkstk_darwin(v139);
  v137 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v129 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = (&v114 - v10);
  __chkstk_darwin(v11);
  v130 = &v114 - v12;
  __chkstk_darwin(v13);
  v15 = &v114 - v14;
  __chkstk_darwin(v16);
  v18 = &v114 - v17;
  v19 = sub_308718();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v138 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v114 - v23;
  __chkstk_darwin(v24);
  v135 = &v114 - v25;
  __chkstk_darwin(v26);
  v28 = &v114 - v27;
  __chkstk_darwin(v29);
  v31 = &v114 - v30;
  __chkstk_darwin(v32);
  v34 = &v114 - v33;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v116 = v15;
    v121 = v7;
    v122 = v6;
    v36 = result;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF78);
    v37 = v136;
    sub_303E58();
    v38 = v142[0];
    v119 = v36;
    sub_277820(v142[0], v34);

    v39 = *(v20 + 56);
    v141 = v19;
    v124 = v20 + 56;
    v123 = v39;
    v39(v18, 1, 1, v19);
    sub_303158();
    v40 = sub_303148();
    v41 = 0;
    v131 = v18;
    v140 = v20;
    v120 = v34;
    v42 = v132;
    if (v40)
    {
      v43 = *v132;
      v44 = *(*v132 + 16);
      v115 = v28;
      if (v44)
      {
        v45 = 0;
        v46 = v20;
        v20 += 16;
        v41 = v46 + 8;
        while (1)
        {
          if (v45 >= *(v43 + 16))
          {
            goto LABEL_65;
          }

          (*(v140 + 16))(v31, v43 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v45, v141);
          sub_3086F8();
          v47 = sub_3086D8();
          v38 = v48;
          if (v47 == sub_3086D8() && v38 == v49)
          {
            break;
          }

          v50 = sub_30D728();

          if (v50)
          {
            goto LABEL_14;
          }

          ++v45;
          (*v41)(v31, v141);
          if (v44 == v45)
          {
            v51 = 1;
            v52 = v141;
            v28 = v115;
            goto LABEL_12;
          }
        }

LABEL_14:
        v53 = v116;
        v54 = v31;
        v52 = v141;
        (*(v140 + 32))(v116, v54, v141);
        v51 = 0;
        v28 = v115;
      }

      else
      {
        v51 = 1;
        v52 = v141;
LABEL_12:
        v53 = v116;
      }

      v123(v53, v51, 1, v52);
      v55 = v131;
      sub_27B97C(v53, v131);
      sub_303E58();
      v56 = v142[0];
      v57 = *(v142[0] + 16);
      if (v57)
      {
        v143 = _swiftEmptyArrayStorage;
        sub_1754B8(0, v57, 0);
        v58 = v143;
        v59 = v118 + 16;
        v136 = *(v118 + 16);
        v60 = (*(v118 + 80) + 32) & ~*(v118 + 80);
        v118 = v56;
        v61 = v56 + v60;
        v62 = *(v59 + 56);
        v63 = (v59 - 8);
        do
        {
          v64 = v137;
          v65 = v139;
          v136(v137, v61, v139);
          v66 = sub_303298();
          (*v63)(v64, v65);
          v143 = v58;
          v68 = v58[2];
          v67 = v58[3];
          if (v68 >= v67 >> 1)
          {
            sub_1754B8((v67 > 1), v68 + 1, 1);
            v58 = v143;
          }

          v58[2] = v68 + 1;
          v58[v68 + 4] = v66;
          v61 += v62;
          --v57;
        }

        while (v57);

        v55 = v131;
        v28 = v115;
      }

      else
      {

        v58 = _swiftEmptyArrayStorage;
      }

      v69 = sub_245E9C(v58);

      v20 = v140;
      v70 = (*(v140 + 48))(v55, 1, v141);
      v42 = v132;
      if (v70)
      {

        v41 = 0;
      }

      else
      {

        v71 = sub_308698();
        v73 = v72;
        v41 = 0;
        v74 = sub_27BB64(v72, v69);

        v75 = *(*v73 + 16);
        if (v75 < v74)
        {
          __break(1u);
          return result;
        }

        sub_182A54(v74, v75);

        v71(v142, 0);
      }
    }

    v118 = 0;
    v37 = *v42;
    v38 = *(*v42 + 16);
    if (v38)
    {
      v76 = 0;
      v43 = v20 + 16;
      v44 = (v20 + 8);
      while (1)
      {
        if (v76 >= *(v37 + 16))
        {
          goto LABEL_64;
        }

        (*(v20 + 16))(v28, v37 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v76, v141);
        sub_3086F8();
        v77 = sub_3086D8();
        v79 = v78;
        if (v77 == sub_3086D8() && v79 == v80)
        {
          break;
        }

        v41 = sub_30D728();

        if (v41)
        {
          goto LABEL_35;
        }

        ++v76;
        (*v44)(v28, v141);
        if (v38 == v76)
        {
          goto LABEL_33;
        }
      }

LABEL_35:
      v82 = v130;
      v84 = v28;
      v83 = v141;
      (*(v20 + 32))(v130, v84, v141);
      v81 = 0;
    }

    else
    {
LABEL_33:
      v81 = 1;
      v82 = v130;
      v83 = v141;
    }

    v123(v82, v81, 1, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6F8);
    v38 = *(v121 + 72);
    v85 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v37 = swift_allocObject() + v85;
    sub_EB00(v131, v37, &qword_40B6F0);
    sub_EB00(v82, v37 + v38, &qword_40B6F0);
    v86 = v134;
    sub_EB00(v37, v134, &qword_40B6F0);
    v87 = v129;
    sub_27B90C(v86, v129);
    v43 = *(v20 + 48);
    v88 = (v20 + 32);
    v89 = (v43)(v87, 1, v83);
    v139 = (v20 + 32);
    if (v89 != 1)
    {
      v44 = *v88;
      (*v88)(v135, v87, v83);
      v41 = _swiftEmptyArrayStorage;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    sub_EB68(v87, &qword_40B6F0);
    v41 = _swiftEmptyArrayStorage;
    v44 = v122;
    while (1)
    {
      v93 = v37 + v38;
      v94 = v134;
      sub_EB00(v93, v134, &qword_40B6F0);
      sub_27B90C(v94, v87);
      if ((v43)(v87, 1, v83) == 1)
      {
        sub_EB68(v87, &qword_40B6F0);
      }

      else
      {
        v95 = *v139;
        (*v139)(v135, v87, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_CB950(0, *(v41 + 16) + 1, 1, v41);
        }

        v97 = *(v41 + 16);
        v96 = *(v41 + 24);
        if (v97 >= v96 >> 1)
        {
          v41 = sub_CB950(v96 > 1, v97 + 1, 1, v41);
        }

        *(v41 + 16) = v97 + 1;
        v95(v41 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v97, v135, v141);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v98 = *(v41 + 16);
      v136 = v41;
      v137 = v98;
      if (!v98)
      {
        break;
      }

      v43 = 0;
      v134 = (v20 + 8);
      v135 = (v20 + 16);
      v99 = _swiftEmptyArrayStorage;
      v38 = v141;
      v100 = v133;
      while (v43 < *(v41 + 16))
      {
        v37 = v99;
        v44 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v101 = *(v20 + 72);
        (*(v20 + 16))(v100, v44 + v41 + v101 * v43, v38);
        v143 = sub_3086A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCFA0);
        sub_EC8C(&qword_40B700, &qword_3FCFA0);
        v102 = sub_30C5A8();

        if (v102)
        {
          v103 = *v139;
          (*v139)(v138, v100, v38);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142[0] = v99;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1754D8(0, *(v99 + 16) + 1, 1);
            v100 = v133;
            v99 = v142[0];
          }

          v41 = v136;
          v37 = *(v99 + 16);
          v105 = *(v99 + 24);
          if (v37 >= v105 >> 1)
          {
            sub_1754D8(v105 > 1, v37 + 1, 1);
            v100 = v133;
            v99 = v142[0];
          }

          *(v99 + 16) = v37 + 1;
          v38 = v141;
          v103(v44 + v99 + v37 * v101, v138, v141);
        }

        else
        {
          (*v134)(v100, v38);
          v41 = v136;
        }

        ++v43;
        v20 = v140;
        if (v137 == v43)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v41 = sub_CB950(0, *(v41 + 16) + 1, 1, v41);
LABEL_39:
      v91 = *(v41 + 16);
      v90 = *(v41 + 24);
      if (v91 >= v90 >> 1)
      {
        v41 = sub_CB950(v90 > 1, v91 + 1, 1, v41);
      }

      *(v41 + 16) = v91 + 1;
      v92 = v41 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v91;
      v83 = v141;
      v44(v92, v135, v141);
      v44 = v122;
      v87 = v129;
    }

    v99 = _swiftEmptyArrayStorage;
    v38 = v141;
LABEL_61:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401160);
    v106 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_315430;
    v108 = v120;
    (*(v20 + 16))(v107 + v106, v120, v38);
    v142[0] = v107;
    sub_14A794(v99);
    v109 = sub_309AC8();
    (*(v126 + 16))(v125, v132 + *(v109 + 20), v127);
    v110 = v38;
    v111 = v128;
    sub_309AB8();
    (*(*(v109 - 8) + 56))(v111, 0, 2, v109);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v113 = v119;
    *(&v114 - 2) = v119;
    *(&v114 - 1) = v111;
    v142[0] = v113;
    sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController);
    sub_302D88();

    sub_EB68(v130, &qword_40B6F0);
    (*(v20 + 8))(v108, v110);

    sub_27C350(v111, type metadata accessor for ManageCategoriesController.PageContentState);
    return sub_EB68(v131, &qword_40B6F0);
  }

  return result;
}

uint64_t sub_277820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = 0;
  v108 = sub_301A38();
  __chkstk_darwin(v108);
  v107 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401920);
  __chkstk_darwin(v5 - 8);
  v106 = v105 - v6;
  v7 = sub_30C088();
  __chkstk_darwin(v7 - 8);
  v105[1] = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718);
  __chkstk_darwin(v9 - 8);
  v109 = v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v11 - 8);
  *&v117 = v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v13 - 8);
  v116 = v105 - v14;
  v128 = sub_30B3F8();
  v15 = *(v128 - 8);
  __chkstk_darwin(v128);
  v111 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v125 = v105 - v18;
  __chkstk_darwin(v19);
  v133 = v105 - v20;
  __chkstk_darwin(v21);
  v23 = v105 - v22;
  __chkstk_darwin(v24);
  v129 = v105 - v25;
  __chkstk_darwin(v26);
  v115 = v105 - v27;
  __chkstk_darwin(v28);
  v127 = v105 - v29;
  v30 = sub_3032C8();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v114 = v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.n128_f64[0] = __chkstk_darwin(v33);
  v36 = v105 - v35;
  v37 = *(a1 + 16);
  v38 = _swiftEmptyArrayStorage;
  v121 = v15;
  if (v37)
  {
    v40 = *(v31 + 16);
    v39 = v31 + 16;
    v41 = a1 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v131 = *(v39 + 56);
    v132 = v40;
    v130 = (v39 - 8);
    v126 = (v15 + 32);
    v113 = v30;
    v112 = v39;
    (v40)(v36, v41, v30, v34);
    while (1)
    {
      sub_303288();
      if (!v43)
      {
        goto LABEL_4;
      }

      sub_303E28();
      if (v3)
      {
        break;
      }

      v124 = 0;
      v122 = sub_303298();
      v120 = sub_303278();
      v119 = v44;
      v45 = sub_301CB8();
      (*(*(v45 - 8) + 56))(v116, 1, 1, v45);
      v123 = v38;
      v132(v114, v36, v30);
      sub_303188();
      sub_3032A8();
      sub_3032B8();
      LOBYTE(v134) = 0;
      v46 = v115;
      v38 = v123;
      v47 = v127;
      v30 = v113;
      sub_30B398();
      (*v130)(v36, v30);
      v48 = *v126;
      (*v126)(v47, v46, v128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_CB928(0, v38[2] + 1, 1, v38);
      }

      v15 = v121;
      v50 = v38[2];
      v49 = v38[3];
      if (v50 >= v49 >> 1)
      {
        v38 = sub_CB928(v49 > 1, v50 + 1, 1, v38);
      }

      v38[2] = v50 + 1;
      v48(v38 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v50, v127, v128);
      v3 = v124;
LABEL_5:
      v41 += v131;
      if (!--v37)
      {
        goto LABEL_14;
      }

      (v132)(v36, v41, v30, v42);
    }

    v3 = 0;
LABEL_4:
    (*v130)(v36, v30);
    goto LABEL_5;
  }

LABEL_14:
  if (v38[2])
  {
    v134 = v38;

    sub_2741FC(&v134);
    if (v3)
    {
      goto LABEL_64;
    }

    v122 = 0;

    v51 = v134;
    v52 = v134[2];
    v53 = v128;
    v127 = v134;
    v118 = v23;
    if (v52)
    {
      v134 = _swiftEmptyArrayStorage;
      sub_1754B8(0, v52, 0);
      v54 = v134;
      v56 = *(v15 + 16);
      v55 = v15 + 16;
      v132 = v56;
      v57 = v51 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v58 = *(v55 + 56);
      do
      {
        v59 = v129;
        v132(v129, v57, v53);
        v60 = sub_30B388();
        (*(v55 - 8))(v59, v53);
        v134 = v54;
        v62 = v54[2];
        v61 = v54[3];
        if (v62 >= v61 >> 1)
        {
          sub_1754B8((v61 > 1), v62 + 1, 1);
          v54 = v134;
        }

        v54[2] = v62 + 1;
        v54[v62 + 4] = v60;
        v57 += v58;
        --v52;
        v53 = v128;
      }

      while (v52);
      v15 = v121;
      v23 = v118;
      v51 = v127;
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
    }

    v66 = sub_245E9C(v54);

    v136 = _swiftEmptyArrayStorage;
    v130 = v51[2];
    if (v130)
    {
      v67 = 0;
      v119 = *(v15 + 80);
      v124 = (v119 + 32) & ~v119;
      v129 = v51 + v124;
      v132 = (v15 + 16);
      v126 = (v15 + 32);
      v68 = (v15 + 8);
      v117 = xmmword_315430;
      v120 = v66;
      while (1)
      {
        if (v67 >= v51[2])
        {
          goto LABEL_63;
        }

        v69 = *(v15 + 72);
        v123 = v67;
        v131 = *(v15 + 16);
        v131(v23, &v129[v69 * v67], v53);
        v70 = *(sub_30B3E8() + 16);

        if (v70)
        {
          break;
        }

        v92 = v136;
        v93 = &v136[v124];
        v94 = *(v136 + 2) + 1;
        while (--v94)
        {
          sub_27B830(&qword_40B708, &type metadata accessor for Category);
          v95 = sub_30C018();
          v93 += v69;
          v51 = v127;
          if (v95)
          {
            v53 = v128;
            (*v68)(v23, v128);
            goto LABEL_27;
          }
        }

        v96 = sub_30B3C8();
        if (v97)
        {
          sub_30B3C8();
          v53 = v128;
          if ((v98 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v99 = sub_184834(v96, v66);
          v53 = v128;
          if (v99)
          {
LABEL_26:
            (*v68)(v23, v53);
            goto LABEL_27;
          }
        }

        v131(v111, v23, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_CB928(0, *(v92 + 2) + 1, 1, v92);
        }

        v101 = *(v92 + 2);
        v100 = *(v92 + 3);
        if (v101 >= v100 >> 1)
        {
          v92 = sub_CB928(v100 > 1, v101 + 1, 1, v92);
        }

        (*v68)(v23, v53);
        *(v92 + 2) = v101 + 1;
        (*v126)(&v92[v124 + v101 * v69], v111, v53);
        v136 = v92;
LABEL_27:
        v67 = v123 + 1;
        if ((v123 + 1) == v130)
        {
          goto LABEL_60;
        }
      }

      v71 = sub_30B3E8();
      v72 = sub_27AE04(v66, v71);
      v73 = 0;
      v74 = v72 + 56;
      v75 = _swiftEmptyArrayStorage;
      while (v73 < v51[2])
      {
        v131(v133, &v129[v73 * v69], v53);
        v76 = sub_30B388();
        if (*(v72 + 16) && (v77 = v76, sub_30D7F8(), sub_30D838(v77), v78 = sub_30D858(), v79 = -1 << *(v72 + 32), v80 = v78 & ~v79, ((*(v74 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0))
        {
          v81 = ~v79;
          while (*(*(v72 + 48) + 8 * v80) != v77)
          {
            v80 = (v80 + 1) & v81;
            if (((*(v74 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v82 = *v126;
          (*v126)(v125, v133, v53);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v135 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_175474(0, v75[2] + 1, 1);
            v75 = v135;
          }

          v85 = v75[2];
          v84 = v75[3];
          if (v85 >= v84 >> 1)
          {
            sub_175474(v84 > 1, v85 + 1, 1);
            v75 = v135;
          }

          v75[2] = v85 + 1;
          v86 = v75 + v124 + v85 * v69;
          v53 = v128;
          v82(v86, v125, v128);
          v51 = v127;
        }

        else
        {
LABEL_31:
          (*v68)(v133, v53);
        }

        if (++v73 == v130)
        {

          v134 = v75;

          v87 = v122;
          sub_2741FC(&v134);
          v122 = v87;
          if (!v87)
          {

            v88 = v134;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401158);
            v89 = v124;
            v90 = swift_allocObject();
            *(v90 + 16) = v117;
            v91 = v90 + v89;
            v23 = v118;
            v53 = v128;
            v131(v91, v118, v128);
            v134 = v90;
            sub_14A768(v88);
            sub_14A768(v134);
            (*v68)(v23, v53);
            v15 = v121;
            v66 = v120;
            goto LABEL_27;
          }

          while (1)
          {
LABEL_64:

            __break(1u);
          }
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_60:

    v102 = v109;
    sub_2742A4(v109);
    v103 = sub_301A78();
    (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  }

  else
  {

    sub_30C028();
    v63 = sub_301E48();
    (*(*(v63 - 8) + 56))(v106, 1, 1, v63);
    v134 = _swiftEmptyArrayStorage;
    sub_27B830(&qword_40B710, &type metadata accessor for AttributedString.FormattingOptions);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B718);
    sub_EC8C(&qword_40B720, &qword_40B718);
    sub_30D488();
    v64 = v109;
    sub_301A68();
    v65 = sub_301A78();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  }

  return sub_3086E8();
}

uint64_t sub_278858(unsigned __int8 *a1)
{
  v2 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v15 = v7;
    sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController);
    sub_302D98();

    v8 = *(v7 + 104);
    if (v5 == v8)
    {
      *(v7 + 104) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v14[-16] = v7;
      v14[-8] = v5;
      v15 = v7;
      sub_302D88();
    }

    v10 = sub_309AC8();
    v11 = *(*(v10 - 8) + 56);
    if (v5)
    {
      v11(v4, 1, 2, v10);
      v12 = swift_getKeyPath();
      __chkstk_darwin(v12);
      *&v14[-16] = v7;
      *&v14[-8] = v4;
      v15 = v7;
      sub_302D88();

      sub_27C350(v4, type metadata accessor for ManageCategoriesController.PageContentState);
      if ((v8 & 1) == 0)
      {
        swift_getKeyPath();
        v15 = v7;
        sub_302D98();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B658);
        sub_EC8C(&qword_40B668, &qword_40B658);
        sub_304DE8();
      }
    }

    else
    {
      v11(v4, 2, 2, v10);
      v13 = swift_getKeyPath();
      __chkstk_darwin(v13);
      *&v14[-16] = v7;
      *&v14[-8] = v4;
      v15 = v7;
      sub_302D88();

      sub_27C350(v4, type metadata accessor for ManageCategoriesController.PageContentState);
    }
  }

  return result;
}

uint64_t sub_278C4C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  sub_27C350(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent, type metadata accessor for ManageCategoriesController.PageContentState);
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController___observationRegistrar;
  v2 = sub_302DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_278D10()
{
  sub_278C4C();

  return swift_deallocClassInstance();
}

uint64_t sub_278D90()
{
  result = type metadata accessor for ManageCategoriesController.PageContentState(319);
  if (v1 <= 0x3F)
  {
    result = sub_302DD8();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_278EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_309AC8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_278F44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_309AC8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_278FC8()
{
  v0 = sub_309AC8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_279020(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_30D6C8(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_30B3F8();
        v6 = sub_30C3B8();
        v6[2] = v5;
      }

      v7 = *(sub_30B3F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_279458(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_27914C(0, v2, 1, a1);
  }
}

void sub_27914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_30B3F8();
  __chkstk_darwin(v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_30B3B8();
      v27 = v26;
      if (v25 == sub_30B3B8() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_30D728();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_279458(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_30B3F8();
  __chkstk_darwin(v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v129 - v12;
  __chkstk_darwin(v13);
  v155 = &v129 - v14;
  __chkstk_darwin(v15);
  v154 = &v129 - v16;
  __chkstk_darwin(v17);
  v147 = &v129 - v18;
  __chkstk_darwin(v19);
  v146 = &v129 - v20;
  __chkstk_darwin(v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = __chkstk_darwin(v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_27A014(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1B0B98(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_1B0B0C(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_1B0B98(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = _swiftEmptyArrayStorage;
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_30B3B8();
      v37 = v36;
      v38 = sub_30B3B8();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_30D728();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_30B3B8();
        v52 = v51;
        if (v50 == sub_30B3B8() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_30D728();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_CA96C(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_CA96C((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_123:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_27A014(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1B0B98(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_1B0B0C(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_30B3B8();
    v69 = v68;
    if (v5 == sub_30B3B8() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_30D728();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_27A014(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_30B3F8();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v58 - v11;
  __chkstk_darwin(v12);
  v69 = &v58 - v13;
  __chkstk_darwin(v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_30B3B8();
            v51 = v50;
            if (v49 == sub_30B3B8() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_30D728();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_30B3B8();
        v31 = v30;
        if (v29 == sub_30B3B8() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_30D728();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_27A6DC(&v73, &v72, &v71, &type metadata accessor for Category);
}

uint64_t sub_27A6DC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_27A7C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  sub_309AC8();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_27A8F4;

  return v11(v8);
}

uint64_t sub_27A8F4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_27AA90;
  }

  else
  {
    v2 = sub_27AA08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_27AA08()
{
  v1 = *(v0 + 24);
  sub_30BEF8();
  sub_27C350(v1, &type metadata accessor for ManageCategoriesPage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27AA90()
{
  sub_30BEE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_EB00(a3, v23 - v10, &qword_3FBD48);
  v12 = sub_30C468();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_EB68(v11, &qword_3FBD48);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_30C458();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_30C3F8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_30C168() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_EB68(a3, &qword_3FBD48);

    return v21;
  }

LABEL_8:
  sub_EB68(a3, &qword_3FBD48);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

Swift::Int sub_27AE04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_27B058(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_27AFC8(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_27AFC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_27B058(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_27B058(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      sub_30D7F8();
      sub_30D838(v32);
      result = sub_30D858();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_2EE3BC(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v5 << 6)));
      sub_30D7F8();
      sub_30D838(v15);
      result = sub_30D858();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_27B364(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v14._countAndFlagsBits = 0xE900000000000073;
  v15._object = 0x8000000000342EF0;
  v15._countAndFlagsBits = 0xD000000000000029;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v5.super.isa = v4;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v6 = sub_301AB8(v15, v16, v5, v17, v14);
  v8 = v7;

  *(v2 + 16) = v6;
  *(v2 + 24) = v8;
  sub_308828();
  *(v2 + 96) = sub_308818();
  *(v2 + 104) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B658);
  swift_allocObject();
  *(v2 + 112) = sub_304D88();
  if (_swiftEmptyArrayStorage >> 62 && sub_30D668())
  {
    v9 = sub_176748(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF50);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(v2 + 120) = v10;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent;
  v12 = sub_309AC8();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 2, v12);
  sub_302DC8();
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408550);

  sub_30B8E8();
  sub_12658(&v14._object, v2 + 40);
  sub_303BD8();
  sub_30B8E8();
  *(v2 + 80) = v14._object;
  sub_30AED8();
  sub_30B8E8();
  *(v2 + 88) = v14._object;
  sub_275330();
  return v2;
}

uint64_t sub_27B5B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_27B614()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_27B6E0()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_27B71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27B780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27B7E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_27B830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27B880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27B8B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6E8);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_27B90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27B97C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27B9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = a2 + 56;
  sub_30B3F8();
  v5 = 0;
  while (1)
  {
    v6 = sub_30B388();
    if (*(a2 + 16))
    {
      v7 = v6;
      sub_30D7F8();
      sub_30D838(v7);
      v8 = sub_30D858();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_3:
    if (++v5 == v2)
    {
      return 0;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + 8 * v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v5;
}

uint64_t sub_27BB64(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_30B3F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  __chkstk_darwin(v13);
  v15 = v42 - v14;
  v16 = *a1;
  result = sub_27B9EC(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v52 = v15;
  v45 = v6;
  if (v18)
  {
    return *(v16 + 16);
  }

  v3 = result;
  v46 = v9;
  v47 = v12;
  v43 = a1;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v20 = v16;
    v42[1] = 0;
    v54 = a2;
    v21 = a2 + 56;
    v48 = v7;
    v49 = (v7 + 8);
    v44 = (v7 + 40);
    v22 = v45;
    v23 = v52;
    v51 = v7 + 16;
    while (1)
    {
      v25 = v20[2];
      if (v19 == v25)
      {
        return v3;
      }

      if (v19 >= v25)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      v26 = *(v7 + 80);
      v55 = v20;
      v50 = (v26 + 32) & ~v26;
      v27 = v20 + v50;
      v28 = *(v7 + 72);
      v29 = *(v7 + 16);
      v53 = v28 * v19;
      v29(v23, &v27[v28 * v19], v22);
      v30 = sub_30B388();
      if (*(v54 + 16) && (v31 = v30, v32 = v54, sub_30D7F8(), sub_30D838(v31), v33 = sub_30D858(), v34 = *(v32 + 32), v22 = v45, v35 = -1 << v34, v36 = v33 & ~(-1 << v34), ((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
      {
        v37 = ~v35;
        while (*(*(v54 + 48) + 8 * v36) != v31)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v23 = v52;
        result = (*v49)(v52, v45);
        v7 = v48;
        v20 = v55;
        v24 = __OFADD__(v19++, 1);
        if (v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_16:
        v23 = v52;
        result = (*v49)(v52, v22);
        if (v3 == v19)
        {
          v7 = v48;
          v20 = v55;
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          v38 = v55[2];
          if (v3 >= v38)
          {
            goto LABEL_32;
          }

          v39 = v28 * v3;
          result = (v29)(v47, &v27[v28 * v3], v22);
          if (v19 >= v38)
          {
            goto LABEL_33;
          }

          v29(v46, &v27[v53], v22);
          v20 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_17EF20(v20);
          }

          v7 = v48;
          v40 = v20 + v50;
          v41 = *v44;
          result = (*v44)(v20 + v50 + v39, v46, v22);
          if (v19 >= v20[2])
          {
            goto LABEL_34;
          }

          result = v41(&v40[v53], v47, v22);
          *v43 = v20;
          v23 = v52;
        }

        v24 = __OFADD__(v3++, 1);
        if (v24)
        {
          goto LABEL_30;
        }

        v24 = __OFADD__(v19++, 1);
        if (v24)
        {
          goto LABEL_29;
        }
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_27BF54()
{
  result = qword_40B728;
  if (!qword_40B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B728);
  }

  return result;
}

uint64_t sub_27BFA8()
{
  v1 = sub_303BB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_27C054(uint64_t a1)
{
  v4 = *(sub_303BB8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F4FC;

  return sub_276288(a1, v1 + v5, v1 + v6, v7);
}

uint64_t sub_27C174()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_27C1BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F4FC;

  return sub_27A7C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_27C298(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4B120;

  return sub_497C4(a1, v4);
}

uint64_t sub_27C350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27C400@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v44._countAndFlagsBits = 0x8000000000342FF0;
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x8000000000342FD0;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v10.super.isa = v9;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v11 = sub_301AB8(v53, v58, v10, v63, v44);
  v13 = v12;

  *a5 = v11;
  *(a5 + 8) = v13;
  v14 = [v8 mainBundle];
  v45._countAndFlagsBits = 0x8000000000343030;
  v54._countAndFlagsBits = 0xD00000000000001FLL;
  v54._object = 0x8000000000343010;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v15.super.isa = v14;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v16 = sub_301AB8(v54, v59, v15, v64, v45);
  v18 = v17;

  *(a5 + 16) = v16;
  *(a5 + 24) = v18;
  v19 = [v8 mainBundle];
  v46._countAndFlagsBits = 0xE400000000000000;
  v55._countAndFlagsBits = 0x445F4E4F49544341;
  v55._object = 0xEB00000000454E4FLL;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v20.super.isa = v19;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v21 = sub_301AB8(v55, v60, v20, v65, v46);
  v23 = v22;

  *(a5 + 32) = v21;
  *(a5 + 40) = v23;
  v24 = [v8 mainBundle];
  v47._countAndFlagsBits = 0xEE00656E696C6666;
  v56._countAndFlagsBits = 0xD000000000000014;
  v56._object = 0x8000000000343050;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v25.super.isa = v24;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v26 = sub_301AB8(v56, v61, v25, v66, v47);
  v28 = v27;

  *(a5 + 48) = v26;
  *(a5 + 56) = v28;
  v29 = [v8 mainBundle];
  v48._countAndFlagsBits = 0x8000000000343090;
  v57._countAndFlagsBits = 0xD000000000000018;
  v57._object = 0x8000000000343070;
  v62.value._countAndFlagsBits = 0;
  v62.value._object = 0;
  v30.super.isa = v29;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v31 = sub_301AB8(v57, v62, v30, v67, v48);
  v33 = v32;

  *(a5 + 64) = v31;
  *(a5 + 72) = v33;
  sub_306A08();
  *(a5 + 80) = v51;
  *(a5 + 96) = v52;
  *(a5 + 176) = swift_getKeyPath();
  *(a5 + 184) = 0;
  v34 = type metadata accessor for ManageCategoriesView();
  v35 = objc_opt_self();
  v36 = [v35 defaultCenter];
  sub_30CA58();

  v37 = [v35 defaultCenter];
  sub_30CA58();

  v38 = a5 + v34[17];
  sub_306A08();
  *v38 = v51;
  *(v38 + 8) = *(&v51 + 1);
  v39 = v34[18];
  *(a5 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  swift_storeEnumTagMultiPayload();
  *(a5 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

  sub_30B8E8();
  *(a5 + 112) = v51;
  type metadata accessor for ManageCategoriesController(0);
  swift_allocObject();

  v41 = sub_27B364(v40);

  *(a5 + 128) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B760);
  sub_30B8E8();

  *(a5 + v34[19]) = a2;
  v43 = (a5 + v34[20]);
  *v43 = a3;
  v43[1] = a4;
  return result;
}

uint64_t type metadata accessor for ManageCategoriesView()
{
  result = qword_40B7C0;
  if (!qword_40B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27C8DC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for ManageCategoriesView();
  v3 = *(v2 - 8);
  v60 = v2 - 8;
  v56 = v3;
  v58 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_305A58();
  v5 = *(v57 - 1);
  __chkstk_darwin(v57);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B858);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B860);
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B868);
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  sub_27CF70(v10);
  v59 = v1;
  v19 = *(v1 + 1);
  v61 = *v1;
  v62 = v19;
  v20 = sub_28182C();
  v21 = sub_E504();
  sub_306668();
  sub_EB68(v10, &qword_40B858);
  v22 = v57;
  (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v57);
  v61 = v8;
  v62 = &type metadata for String;
  v63 = v20;
  v64 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v50;
  sub_306788();
  (*(v5 + 8))(v7, v22);
  (*(v51 + 8))(v14, v24);
  LODWORD(v51) = v59[*(v60 + 84)];
  v57 = type metadata accessor for ManageCategoriesView;
  v25 = v54;
  sub_282350(v59, v54, type metadata accessor for ManageCategoriesView);
  v26 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v27 = swift_allocObject();
  v56 = type metadata accessor for ManageCategoriesView;
  sub_281FA0(v25, v27 + v26, type metadata accessor for ManageCategoriesView);
  v61 = v24;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v55;
  v29 = v52;
  sub_306478();

  (*(v53 + 8))(v18, v29);
  v30 = v59;
  v31 = v25;
  v32 = v25;
  v33 = v57;
  sub_282350(v59, v32, v57);
  v34 = swift_allocObject();
  v35 = v56;
  sub_281FA0(v31, v34 + v26, v56);
  v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B928) + 36));
  sub_305318();
  sub_30C448();
  *v36 = &unk_330FC8;
  v36[1] = v34;
  v53 = *(v60 + 68);
  sub_282350(v30, v31, v33);
  v37 = swift_allocObject();
  sub_281FA0(v31, v37 + v26, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B930);
  v39 = *(v38 + 52);
  v40 = sub_30CA48();
  v41 = *(*(v40 - 8) + 16);
  v42 = v28 + v39;
  v43 = v59;
  v41(v42, &v59[v53], v40);
  v44 = (v28 + *(v38 + 56));
  *v44 = sub_281F14;
  v44[1] = v37;
  v60 = *(v60 + 72);
  sub_282350(v43, v31, v57);
  v45 = swift_allocObject();
  sub_281FA0(v31, v45 + v26, v56);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B938);
  result = (v41)(v28 + *(v46 + 52), v43 + v60, v40);
  v48 = (v28 + *(v46 + 56));
  *v48 = sub_281F1C;
  v48[1] = v45;
  return result;
}

uint64_t sub_27CF70@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8B0);
  __chkstk_darwin(v56);
  v43 = &v37 - v2;
  v3 = sub_309AC8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8A0);
  v45 = *(v51 - 8);
  __chkstk_darwin(v51);
  v44 = &v37 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B948);
  __chkstk_darwin(v52);
  v54 = &v37 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B950);
  __chkstk_darwin(v47);
  v49 = &v37 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B880);
  __chkstk_darwin(v53);
  v50 = &v37 - v9;
  v10 = sub_303EA8();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B888);
  v38 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v37 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B958);
  v41 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v37 - v15;
  v16 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 128);
  swift_getKeyPath();
  v59 = v19;
  sub_282DC4(&qword_40B660, type metadata accessor for ManageCategoriesController);
  sub_302D98();

  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent;
  swift_beginAccess();
  sub_282350(v19 + v20, v18, type metadata accessor for ManageCategoriesController.PageContentState);
  v21 = (*(v4 + 48))(v18, 2, v3);
  if (v21)
  {
    if (v21 == 1)
    {
      sub_303E98();
      v22 = v39;
      (*(v39 + 104))(v12, enum case for LoadingViewPresentationContext.fullCover(_:), v10);
      v23 = sub_EC8C(&qword_40B890, &qword_40B888);
      v24 = v40;
      v25 = v46;
      sub_3063E8();
      (*(v22 + 8))(v12, v10);
      (*(v38 + 8))(v14, v25);
      v26 = v41;
      v27 = v48;
      (*(v41 + 16))(v49, v24, v48);
      swift_storeEnumTagMultiPayload();
      v57 = v25;
      v58 = v23;
      swift_getOpaqueTypeConformance2();
      sub_EC8C(&qword_40B898, &qword_40B8A0);
      v28 = v50;
      sub_305D48();
      sub_EB00(v28, v54, &qword_40B880);
      swift_storeEnumTagMultiPayload();
      sub_2818B8();
      sub_2819E0();
      sub_305D48();
      sub_EB68(v28, &qword_40B880);
      return (*(v26 + 8))(v24, v27);
    }

    else
    {
      __chkstk_darwin(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6E8);
      sub_EC8C(&qword_3FD6E0, &qword_3FD6E8);
      v32 = v44;
      sub_305E58();
      v33 = v45;
      v34 = v51;
      (*(v45 + 16))(v49, v32, v51);
      swift_storeEnumTagMultiPayload();
      v35 = sub_EC8C(&qword_40B890, &qword_40B888);
      v57 = v46;
      v58 = v35;
      swift_getOpaqueTypeConformance2();
      sub_EC8C(&qword_40B898, &qword_40B8A0);
      v36 = v50;
      sub_305D48();
      sub_EB00(v36, v54, &qword_40B880);
      swift_storeEnumTagMultiPayload();
      sub_2818B8();
      sub_2819E0();
      sub_305D48();
      sub_EB68(v36, &qword_40B880);
      return (*(v33 + 8))(v32, v34);
    }
  }

  else
  {
    v30 = v42;
    sub_281FA0(v18, v42, &type metadata accessor for ManageCategoriesPage);
    v31 = v43;
    sub_27E480(v30, v43);
    sub_EB00(v31, v54, &qword_40B8B0);
    swift_storeEnumTagMultiPayload();
    sub_2818B8();
    sub_2819E0();
    sub_305D48();
    sub_EB68(v31, &qword_40B8B0);
    return sub_282008(v30);
  }
}

uint64_t sub_27D9C0()
{
  v25 = sub_305228();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_302558();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BA28();
  __chkstk_darwin(v4 - 8);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_30B898();
  __chkstk_darwin(v9 - 8);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v11 = *(v0 + 120);
  v30 = *(v0 + 112);
  v31 = v11;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160);
  sub_30B7E8();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_303558();
  sub_303858();
  sub_303808();
  v12 = sub_301CB8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_302718();
  sub_30B788();
  v42 = v36;
  sub_EB68(&v42, &unk_408130);
  v41 = v37;
  sub_EB68(&v41, &qword_3FC878);
  v40 = v38;
  sub_EB68(&v40, &qword_408140);
  sub_1EBD0(v39);

  sub_EB68(v8, &qword_3FB8E0);
  sub_30BA18();
  sub_30B878();
  v13 = sub_30AD68();
  swift_allocObject();
  v14 = sub_30AD58();
  v35[3] = v13;
  v35[4] = sub_282DC4(&qword_40B940, &type metadata accessor for RefreshRecommendationsAction);
  v35[0] = v14;
  v16 = v32;
  v15 = v33;
  v17 = v34;
  (*(v33 + 104))(v32, enum case for ActionMetricsBehavior.fromAction(_:), v34);
  v18 = v28;
  sub_307C38();

  (*(v15 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v35);
  result = type metadata accessor for ManageCategoriesView();
  if (*(v18 + *(result + 76)) == 1)
  {
    v20 = v23;
    sub_33AA8(v23);
    sub_305218();
    return (*(v24 + 8))(v20, v25);
  }

  else
  {
    v21 = (v18 + *(result + 80));
    if (*v21)
    {
      return (*v21)();
    }
  }

  return result;
}

uint64_t sub_27DF64(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_30C438();
  *(v1 + 24) = sub_30C428();
  v3 = sub_30C3F8();

  return _swift_task_switch(sub_27DFFC, v3, v2);
}

uint64_t sub_27DFFC()
{

  sub_2756E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27E064(uint64_t a1, uint64_t a2)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a2 + *(type metadata accessor for ManageCategoriesView() + 68));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v15) = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  result = sub_306A18();
  if (v14[15] == 1)
  {
    v11 = *(a2 + 176);
    v12 = *(a2 + 184);

    if ((v12 & 1) == 0)
    {
      sub_30C7A8();
      v13 = sub_306088();
      sub_304108();

      sub_3059F8();
      swift_getAtKeyPath();
      j__swift_release();
      result = (*(v4 + 8))(v6, v3);
      v11 = v15;
    }

    if (v11)
    {
      sub_308EB8();
    }
  }

  return result;
}

uint64_t sub_27E214@<X0>(uint64_t a1@<X8>)
{
  sub_E504();

  v1 = sub_3063C8();
  v3 = v2;
  v5 = v4;
  sub_3061F8();
  v6 = sub_306388();
  v8 = v7;
  v10 = v9;

  sub_EBC8(v1, v3, v5 & 1);

  v11 = sub_306368();
  v33 = v12;
  v34 = v11;
  v14 = v13;
  v32 = v15;
  sub_EBC8(v6, v8, v10 & 1);

  v16 = sub_3063C8();
  v18 = v17;
  v20 = v19;
  sub_306158();
  v21 = sub_306388();
  v23 = v22;
  LOBYTE(v1) = v24;

  sub_EBC8(v16, v18, v20 & 1);

  sub_306848();
  v25 = sub_306338();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;

  sub_EBC8(v21, v23, v1 & 1);

  *a1 = v34;
  *(a1 + 8) = v14;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v33;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = v30;
  sub_EBD8(v34, v14, v32 & 1);

  sub_EBD8(v25, v27, v8 & 1);

  sub_EBC8(v25, v27, v8 & 1);

  sub_EBC8(v34, v14, v32 & 1);
}

uint64_t sub_27E480@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v71 = a2;
  v4 = sub_309AC8();
  v76 = *(v4 - 8);
  v75 = *(v76 + 64);
  __chkstk_darwin(v4 - 8);
  v74 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManageCategoriesView();
  v73 = *(v6 - 8);
  v72 = *(v73 + 64);
  __chkstk_darwin(v6 - 8);
  v70 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_305DA8();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_305AD8();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_305578();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8F8);
  v55 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8F0);
  v56 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8E8);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v54 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8C8);
  __chkstk_darwin(v59);
  v21 = &v54 - v20;
  v78 = sub_27EEA8(*a1);
  v79 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B960);
  sub_282074();
  sub_3062B8();

  v22 = sub_EC8C(&qword_40B900, &qword_40B8F8);
  sub_306768();
  (*(v55 + 8))(v14, v12);
  v77 = v2;
  v23 = v2[1];
  v82 = *v2;
  v83 = v23;
  *&v80 = v12;
  *(&v80 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_E504();
  v55 = v25;
  sub_306668();
  (*(v56 + 8))(v17, v15);
  v26 = v60;
  sub_305568();
  v82 = v15;
  v83 = &type metadata for String;
  v84 = OpaqueTypeConformance2;
  v85 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v26;
  v28 = v57;
  v29 = v61;
  sub_306808();
  (*(v62 + 8))(v27, v29);
  (*(v58 + 8))(v19, v28);
  v30 = v63;
  sub_305AC8();
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8E0) + 36);
  v32 = v64;
  v33 = v65;
  (*(v64 + 16))(&v21[v31], v30, v65);
  v34 = v32;
  v35 = *(v32 + 56);
  v35(&v21[v31], 0, 1, v33);
  KeyPath = swift_getKeyPath();
  v37 = &v21[*(v59 + 36)];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B920) + 28);
  (*(v34 + 32))(v37 + v38, v30, v33);
  v35(v37 + v38, 0, 1, v33);
  *v37 = KeyPath;
  v39 = v77;
  v40 = v77[12];
  v80 = *(v77 + 5);
  v81 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A38();
  v41 = *(v39 + 24);
  v82 = *(v39 + 16);
  v83 = v41;

  v42 = v67;
  sub_305D98();
  sub_281B50();
  v43 = v71;
  sub_3064D8();

  (*(v68 + 8))(v42, v69);

  sub_EB68(v21, &qword_40B8C8);
  v44 = v39;
  v45 = v70;
  sub_282350(v44, v70, type metadata accessor for ManageCategoriesView);
  v46 = v74;
  sub_282350(v66, v74, &type metadata accessor for ManageCategoriesPage);
  v47 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v48 = (v47 + v72 + *(v76 + 80)) & ~*(v76 + 80);
  v49 = swift_allocObject();
  sub_281FA0(v45, v49 + v47, type metadata accessor for ManageCategoriesView);
  sub_281FA0(v46, v49 + v48, &type metadata accessor for ManageCategoriesPage);
  v50 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8C0) + 36));
  *v50 = sub_282688;
  v50[1] = v49;
  v50[2] = 0;
  v50[3] = 0;
  sub_282350(v77, v45, type metadata accessor for ManageCategoriesView);
  v51 = swift_allocObject();
  sub_281FA0(v45, v51 + v47, type metadata accessor for ManageCategoriesView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B8B0);
  v53 = (v43 + *(result + 36));
  *v53 = 0;
  v53[1] = 0;
  v53[2] = sub_282754;
  v53[3] = v51;
  return result;
}

uint64_t sub_27EEA8(void *a1)
{
  v2 = v1;
  v23 = sub_308718();
  v29 = *(v23 - 8);
  __chkstk_darwin(v23);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = *(v1 + 96);
  v31 = *(v1 + 80);
  v32 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A18();
  v31 = v30;
  sub_120F0();
  v9 = sub_30C5A8();

  if ((v9 & 1) == 0)
  {

    return a1;
  }

  __chkstk_darwin(v10);
  *(&v22 - 2) = v2;
  result = sub_218D4(sub_282E0C, (&v22 - 4), a1);
  v27 = *(result + 16);
  if (!v27)
  {
    a1 = _swiftEmptyArrayStorage;
LABEL_15:

    return a1;
  }

  v12 = 0;
  v22 = (v29 + 8);
  v25 = (v29 + 32);
  v26 = v29 + 16;
  a1 = _swiftEmptyArrayStorage;
  v13 = v23;
  v24 = result;
  while (v12 < *(result + 16))
  {
    v14 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v15 = *(v29 + 72);
    (*(v29 + 16))(v7, result + v14 + v15 * v12, v13);
    *&v30 = sub_3086A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCFA0);
    sub_EC8C(&qword_40B700, &qword_3FCFA0);
    v16 = sub_30C5A8();

    if (v16)
    {
      v17 = *v25;
      (*v25)(v28, v7, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1754D8(0, a1[2] + 1, 1);
        a1 = v31;
      }

      v20 = a1[2];
      v19 = a1[3];
      if (v20 >= v19 >> 1)
      {
        sub_1754D8(v19 > 1, v20 + 1, 1);
        a1 = v31;
      }

      a1[2] = v20 + 1;
      v21 = a1 + v14 + v20 * v15;
      v13 = v23;
      v17(v21, v28, v23);
    }

    else
    {
      (*v22)(v7, v13);
    }

    ++v12;
    result = v24;
    if (v27 == v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27F228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageCategoriesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v12[3] = a1;
  swift_getKeyPath();
  sub_282350(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ManageCategoriesView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_281FA0(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ManageCategoriesView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9C8);
  sub_EC8C(&qword_40B9D0, &qword_40B9C0);
  sub_282DC4(&qword_40B9D8, &type metadata accessor for CategorySection);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B970);
  v10 = sub_282134();
  v12[1] = v9;
  v12[2] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_306B38();
}

uint64_t sub_27F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_305058();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B988);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B980);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B970);
  __chkstk_darwin(v24);
  v16 = &v23 - v15;
  v29 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9A0);
  sub_EC8C(&qword_40B998, &qword_40B9A0);
  sub_306B88();
  sub_305198();
  v17 = sub_28226C();
  sub_306748();
  (*(v8 + 8))(v10, v7);
  sub_306128();
  v31 = v7;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  sub_3066D8();
  (*(v12 + 8))(v14, v11);
  v31 = sub_306868();
  v18 = sub_306B08();
  v19 = v25;
  *&v16[*(v24 + 36)] = v18;
  v21 = v26;
  v20 = v27;
  (*(v26 + 104))(v19, enum case for Prominence.increased(_:), v27);
  sub_282134();
  sub_306678();
  (*(v21 + 8))(v19, v20);
  return sub_EB68(v16, &qword_40B970);
}

uint64_t sub_27F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v125 = a2;
  v120 = a3;
  v112 = sub_305F28();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9E0);
  __chkstk_darwin(v109);
  v126 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718);
  __chkstk_darwin(v6 - 8);
  v114 = &v108 - v7;
  v124 = sub_301A78();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v108 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9E8);
  __chkstk_darwin(v12 - 8);
  v131 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  v17 = type metadata accessor for ManageCategoriesView();
  v113 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v121 = v18;
  v122 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9F0);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v129 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v133 = &v108 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9F8);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v128 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v132 = &v108 - v24;
  v134 = sub_308708();
  v135 = v25;
  sub_E504();
  v26 = sub_3063C8();
  v28 = v27;
  v30 = v29;
  v127 = a1;
  sub_3086B8();
  v31 = sub_308688();
  v33 = v32;
  v34 = sub_308688();
  v130 = v16;
  v115 = v11;
  if (v31 == v34 && v33 == v35)
  {

    sub_3061F8();
  }

  else
  {
    v36 = sub_30D728();

    if (v36)
    {
      sub_3061F8();
    }

    else
    {
      sub_306168();
    }
  }

  sub_306178();

  v37 = sub_306388();
  v39 = v38;
  v41 = v40;

  sub_EBC8(v26, v28, v30 & 1);

  sub_3086B8();
  v42 = sub_306318();
  v44 = v43;
  v46 = v45;
  sub_EBC8(v37, v39, v41 & 1);

  LODWORD(v134) = sub_305E78();
  v47 = sub_306348();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_EBC8(v42, v44, v46 & 1);

  v134 = v47;
  v135 = v49;
  v136 = v51 & 1;
  v137 = v53;
  sub_305198();
  sub_306688();
  sub_EBC8(v47, v49, v51 & 1);

  v134 = sub_3086A8();
  v54 = v122;
  sub_282350(v125, v122, type metadata accessor for ManageCategoriesView);
  v55 = *(v113 + 80);
  v56 = swift_allocObject();
  sub_281FA0(v54, v56 + ((v55 + 16) & ~v55), type metadata accessor for ManageCategoriesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCFA0);
  type metadata accessor for CategoryView();
  sub_EC8C(&qword_3FCFA8, &qword_3FCFA0);
  sub_282DC4(&qword_40BA00, type metadata accessor for CategoryView);
  sub_282DC4(&qword_3FCFB8, &type metadata accessor for Category);
  sub_306B48();
  v57 = v114;
  sub_3086C8();
  v58 = v123;
  v59 = v124;
  if ((*(v123 + 48))(v57, 1, v124) == 1)
  {
    sub_EB68(v57, &qword_401718);
    v60 = 1;
    v61 = v130;
  }

  else
  {
    v113 = v55;
    v127 = (v55 + 16) & ~v55;
    v62 = v115;
    (*(v58 + 32))(v115, v57, v59);
    (*(v58 + 16))(v108, v62, v59);
    v63 = sub_3063B8();
    v65 = v64;
    v67 = v66;
    sub_306158();
    v68 = sub_306388();
    v70 = v69;
    v72 = v71;

    sub_EBC8(v63, v65, v67 & 1);

    LODWORD(v134) = sub_305E98();
    v73 = sub_306348();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    sub_EBC8(v68, v70, v72 & 1);

    if (qword_3FAFA8 != -1)
    {
      swift_once();
    }

    v80 = qword_40DB70;
    v81 = sub_306818();
    KeyPath = swift_getKeyPath();
    v134 = v81;
    v83 = sub_305208();
    v134 = v73;
    v135 = v75;
    v136 = v77 & 1;
    v137 = v79;
    v138 = KeyPath;
    v139 = v83;
    sub_305198();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BA18);
    sub_2828B4();
    sub_306688();
    sub_EBC8(v73, v75, v77 & 1);

    v114 = swift_getKeyPath();
    v84 = v125;
    v85 = v122;
    sub_282350(v125, v122, type metadata accessor for ManageCategoriesView);
    v86 = v127;
    v87 = swift_allocObject();
    sub_281FA0(v85, v87 + v86, type metadata accessor for ManageCategoriesView);
    v88 = &v126[*(v109 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BA38);
    sub_3052E8();
    *v88 = v114;
    sub_282350(v84, v85, type metadata accessor for ManageCategoriesView);
    v89 = swift_allocObject();
    sub_281FA0(v85, v89 + v86, type metadata accessor for ManageCategoriesView);
    v90 = v110;
    sub_305F18();
    sub_282CD0();
    v61 = v130;
    v91 = v126;
    sub_3066E8();

    (*(v111 + 8))(v90, v112);
    sub_EB68(v91, &qword_40B9E0);
    (*(v123 + 8))(v115, v124);
    v60 = 0;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BA08);
  (*(*(v92 - 8) + 56))(v61, v60, 1, v92);
  v93 = v116;
  v94 = v61;
  v95 = *(v116 + 16);
  v96 = v128;
  v97 = v117;
  v95(v128, v132, v117);
  v98 = v118;
  v99 = *(v118 + 16);
  v100 = v119;
  v99(v129, v133, v119);
  sub_EB00(v94, v131, &qword_40B9E8);
  v101 = v120;
  v95(v120, v96, v97);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BA10);
  v103 = v129;
  v99(&v101[*(v102 + 48)], v129, v100);
  v104 = v131;
  sub_EB00(v131, &v101[*(v102 + 64)], &qword_40B9E8);
  sub_EB68(v130, &qword_40B9E8);
  v105 = *(v98 + 8);
  v105(v133, v100);
  v106 = *(v93 + 8);
  v106(v132, v97);
  sub_EB68(v104, &qword_40B9E8);
  v105(v103, v100);
  return (v106)(v128, v97);
}

uint64_t sub_2806A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_30B3F8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 104);
  v12 = *(v7 + 16);
  v12(v10, a1, v6, v8);
  *a3 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F60);

  sub_30B8E8();
  *(a3 + 8) = v19;
  v13 = type metadata accessor for CategoryView();
  (v12)(a3 + *(v13 + 24), v10, v6);
  sub_303BA8();
  sub_30B8E8();
  sub_30B388();
  sub_303B98();
  sub_303A98();
  sub_282DC4(&unk_3FC918, &type metadata accessor for InterestStateMachine);
  v14 = sub_3053C8();
  v16 = v15;

  result = (*(v7 + 8))(v10, v6);
  v18 = (a3 + *(v13 + 28));
  *v18 = v14;
  v18[1] = v16;
  return result;
}

uint64_t sub_28089C(uint64_t a1)
{
  v2 = sub_3052F8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3058A8();
}

uint64_t sub_280964(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a2 + 136), *(a2 + 160));
  v2 = sub_302138();

  return static OpenURLAction.Result.handled.getter(v2);
}

uint64_t sub_2809C4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_305A08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 176);
  v29 = a1;
  LODWORD(a1) = *(a1 + 184);

  v12 = v10;
  if ((a1 & 1) == 0)
  {
    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v7 + 8))(v9, v6);
    v12 = v31;
  }

  if (v12)
  {
    v14 = v9;
    v15 = a2;
    v16 = *(sub_309AC8() + 20);
    v17 = sub_30B858();
    v18 = *(v17 - 8);
    v28 = a1;
    v27 = v7;
    a1 = v18;
    v19 = v15 + v16;
    v9 = v14;
    (*(v18 + 16))(v5, v19, v17);
    (*(a1 + 56))(v5, 0, 1, v17);
    v7 = v27;
    LOBYTE(a1) = v28;
    sub_308E98();
  }

  v20 = v10;
  if ((a1 & 1) == 0)
  {
    sub_30C7A8();
    v21 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v7 + 8))(v9, v6);
    v20 = v31;
  }

  if (v20)
  {
    sub_308EB8();
  }

  if ((a1 & 1) == 0)
  {
    sub_30C7A8();
    v22 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v7 + 8))(v9, v6);
    v10 = v31;
  }

  if (v10)
  {
    sub_308EB8();
  }

  v23 = (v29 + *(type metadata accessor for ManageCategoriesView() + 68));
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v31) = v24;
  v32 = v25;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  return sub_306A28();
}

uint64_t sub_280DC4(uint64_t a1)
{
  v2 = sub_305A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_30C7A8();
    v9 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v5, v2);
    v8 = v16;
  }

  if (v8)
  {
    sub_308EB8();
  }

  if ((v7 & 1) == 0)
  {
    sub_30C7A8();
    v10 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v5, v2);
    v6 = v16;
  }

  if (v6)
  {
    sub_308EB8();
  }

  v11 = (a1 + *(type metadata accessor for ManageCategoriesView() + 68));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v16) = v12;
  v17 = v13;
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  return sub_306A28();
}

uint64_t sub_281018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401718);
  __chkstk_darwin(v3 - 8);
  v4 = sub_3086A8();
  v7 = a2;
  sub_273F2C(sub_282E2C, v6, v4);
  sub_3086F8();
  sub_308708();
  sub_3086C8();
  return sub_3086E8();
}

uint64_t sub_281124()
{
  sub_30B3B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A18();
  sub_E504();
  v0 = sub_30D408();

  return v0 & 1;
}

uint64_t sub_2811E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9B8);
  __chkstk_darwin(v2 - 8);
  sub_2827B4(a1, &v5 - v3);
  return sub_3057D8();
}

uint64_t sub_281288(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_30CA48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2813CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_30CA48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2814FC()
{
  sub_281760(319, &qword_3FDB48);
  if (v0 <= 0x3F)
  {
    sub_30B9A8();
    if (v1 <= 0x3F)
    {
      sub_281704(319, &qword_3FC908);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ManageCategoriesController(319);
        if (v3 <= 0x3F)
        {
          sub_281704(319, &qword_40B7D0);
          if (v4 <= 0x3F)
          {
            sub_2817AC(319, &qword_40B7D8, &qword_40B7E0, &unk_330EE8, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_30CA48();
              if (v6 <= 0x3F)
              {
                sub_281760(319, &qword_3FF420);
                if (v7 <= 0x3F)
                {
                  sub_5938C();
                  if (v8 <= 0x3F)
                  {
                    sub_2817AC(319, &unk_40B7E8, &qword_400FC0, &unk_31E8C0, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
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
  }
}

uint64_t sub_281704(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_281760(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_306A48();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2817AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_28182C()
{
  result = qword_40B870;
  if (!qword_40B870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B858);
    sub_2818B8();
    sub_2819E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B870);
  }

  return result;
}

unint64_t sub_2818B8()
{
  result = qword_40B878;
  if (!qword_40B878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B888);
    sub_EC8C(&qword_40B890, &qword_40B888);
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_40B898, &qword_40B8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B878);
  }

  return result;
}

unint64_t sub_2819E0()
{
  result = qword_40B8A8;
  if (!qword_40B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8B0);
    sub_281A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B8A8);
  }

  return result;
}

unint64_t sub_281A6C()
{
  result = qword_40B8B8;
  if (!qword_40B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8C8);
    sub_281B50();
    sub_E504();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B8B8);
  }

  return result;
}

unint64_t sub_281B50()
{
  result = qword_40B8D0;
  if (!qword_40B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8C8);
    sub_281C08();
    sub_EC8C(&qword_40B918, &qword_40B920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B8D0);
  }

  return result;
}

unint64_t sub_281C08()
{
  result = qword_40B8D8;
  if (!qword_40B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8E8);
    sub_305578();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B8F8);
    sub_EC8C(&qword_40B900, &qword_40B8F8);
    swift_getOpaqueTypeConformance2();
    sub_E504();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_40B908, &qword_40B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B8D8);
  }

  return result;
}

uint64_t sub_281E48()
{
  v2 = *(type metadata accessor for ManageCategoriesView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_F4FC;

  return sub_27DF64(v0 + v3);
}

uint64_t sub_281FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_282008(uint64_t a1)
{
  v2 = sub_309AC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_282074()
{
  result = qword_40B968;
  if (!qword_40B968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B970);
    sub_282134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B968);
  }

  return result;
}

unint64_t sub_282134()
{
  result = qword_40B978;
  if (!qword_40B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B988);
    sub_28226C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_40B9A8, &qword_40B9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B978);
  }

  return result;
}

unint64_t sub_28226C()
{
  result = qword_40B990;
  if (!qword_40B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B988);
    sub_EC8C(&qword_40B998, &qword_40B9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B990);
  }

  return result;
}

uint64_t sub_282350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2823B8()
{
  v1 = type metadata accessor for ManageCategoriesView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = sub_309AC8();
  v4 = *(*(v16 - 8) + 80);
  v17 = *(*(v16 - 8) + 64);
  v5 = v0 + v3;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 136);
  j__swift_release();
  v6 = v1[15];
  v7 = sub_30CA48();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[16], v7);

  v9 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_305228();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[20]))
  {
  }

  v11 = (v3 + v15 + v4) & ~v4;

  v12 = *(v16 + 20);
  v13 = sub_30B858();
  (*(*(v13 - 8) + 8))(v0 + v11 + v12, v13);

  return _swift_deallocObject(v0, v11 + v17, v2 | v4 | 7);
}

uint64_t sub_282688()
{
  v1 = *(type metadata accessor for ManageCategoriesView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_309AC8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2809C4(v0 + v2, v5);
}

uint64_t sub_282754()
{
  v1 = *(type metadata accessor for ManageCategoriesView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_280DC4(v2);
}

uint64_t sub_2827B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28285C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_305868();
  *a1 = result;
  return result;
}

unint64_t sub_2828B4()
{
  result = qword_40BA20;
  if (!qword_40BA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BA18);
    sub_EC8C(&qword_40BA28, &qword_40BA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BA20);
  }

  return result;
}

uint64_t sub_2829AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ManageCategoriesView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ManageCategoriesView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 136);
  j__swift_release();
  v6 = v1[15];
  v7 = sub_30CA48();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[16], v7);

  v9 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_305228();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  if (*(v5 + v1[20]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_282C4C()
{
  v1 = *(type metadata accessor for ManageCategoriesView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_project_boxed_opaque_existential_1Tm((v2 + 136), *(v2 + 160));
  return sub_302138();
}

unint64_t sub_282CD0()
{
  result = qword_40BA40;
  if (!qword_40BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BA18);
    sub_2828B4();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_40BA48, &qword_40BA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BA40);
  }

  return result;
}

uint64_t sub_282DC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_282EB4()
{
  result = qword_40BA58;
  if (!qword_40BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BA58);
  }

  return result;
}

id sub_282F74()
{
  v1 = v0;
  v2 = sub_301DC8();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ModelViewOverflowViewController();
  v56.receiver = v0;
  v56.super_class = v10;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v12 = result;
  v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView];
  ObjectType = swift_getObjectType();
  v15 = [v13 backgroundColor];
  [v12 setBackgroundColor:v15];

  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView];
  v18 = &selRef_registerImage_withTraitCollection_;
  [result addSubview:v17];

  [v17 setDelegate:v1];
  [v17 setAlwaysBounceVertical:1];
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model;
  sub_12670(&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model], v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
  sub_30B158();
  if (swift_dynamicCast())
  {
    v49 = v19;
    v50 = ObjectType;
    v20 = v54[0];
    v48 = [v1 traitCollection];
    *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review] = v20;

    v21 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title];
    sub_30B118();
    if (v22)
    {
      v23 = sub_30C098();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date];
    v18 = &selRef_registerImage_withTraitCollection_;
    if (sub_30B108())
    {
      sub_302AE8();

      sub_43BD8(v9, v6);
      v26 = v52;
      v25 = v53;
      if ((*(v52 + 48))(v6, 1, v53) != 1)
      {
        v47 = v24;
        v30 = v51;
        (*(v26 + 32))(v51, v6, v25);
        v31 = v13;
        sub_287AEC(v30);
        v33 = v32;

        (*(v26 + 8))(v30, v53);
        sub_EB68(v9, &unk_40BAB0);

        if (v33)
        {
          v28 = sub_30C098();
        }

        else
        {
          v28 = 0;
        }

        v18 = &selRef_registerImage_withTraitCollection_;
        v29 = &selRef_registerImage_withTraitCollection_;
        v24 = v47;
        goto LABEL_17;
      }

      v27 = v13;

      sub_EB68(v9, &unk_40BAB0);
    }

    else
    {
    }

    v28 = 0;
    v29 = &selRef_registerImage_withTraitCollection_;
LABEL_17:
    [v24 v29[225]];

    v34 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
    v35 = sub_30B128();
    v36 = *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating];
    *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = v35;
    if (v36 != v35)
    {
      [v34 setNeedsDisplay];
    }

    v37 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username];
    sub_30B0D8();
    if (v38)
    {
      v39 = sub_30C098();
    }

    else
    {
      v39 = 0;
    }

    [v37 v29[225]];

    v40 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
    sub_30B138();
    if (v41)
    {
      v42 = sub_30C098();
    }

    else
    {
      v42 = 0;
    }

    v19 = v49;
    [v40 v29[225]];

    v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] = 1;
    v13[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded] = 1;
    sub_284DA4();
    [v13 setNeedsLayout];
    sub_286A50();

    ObjectType = v50;
    goto LABEL_26;
  }

  sub_2840C8();
  swift_getObjectType();
  sub_1DBC8C();
LABEL_26:
  v43 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_preflightHandler];
  if (v43)
  {
    v44 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_preflightHandler + 8];

    v43(v13);
    sub_2B8D4(v43, v44);
  }

  sub_12670(&v1[v19], v55);
  v54[3] = ObjectType;
  v54[0] = v13;
  v45 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_objectGraph];
  v46 = v13;
  sub_220AC8(v55, v54, v45);
  sub_EB68(v55, &unk_406568);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return [v17 v18[122]];
}

id sub_28363C()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for ModelViewOverflowViewController();
  objc_msgSendSuper2(&v46, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView];
  v14 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView + 8];
  ObjectType = swift_getObjectType();
  sub_12670(&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model], v45);
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;

  v44 = 1;
  v21 = (*(v14 + 32))(v45, v1, &protocol witness table for UIViewController, &v44, 1, 1, ObjectType, v14, v18, v20);
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v45);
  [v2 frame];
  Height = CGRectGetHeight(v47);
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  [result bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v48.origin.x = v27;
  v48.origin.y = v29;
  v48.size.width = v31;
  v48.size.height = v33;
  MinX = CGRectGetMinX(v48);
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v35 = result;
  if (v23 <= Height)
  {
    v23 = Height;
  }

  [result bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v49.origin.x = v37;
  v49.origin.y = v39;
  v49.size.width = v41;
  v49.size.height = v43;
  [v13 setFrame:{MinX, CGRectGetMinY(v49), v21, v23}];
  [v2 setContentSize:{v21, v23}];
  return [v1 setPreferredContentSize:{v21, v23}];
}

void sub_2839C4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ModelViewOverflowViewController();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_283AE4()
{
  v1 = sub_301DC8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_modelView];
  sub_12670(&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31ModelViewOverflowViewController_model], v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
  sub_30B158();
  if (!swift_dynamicCast())
  {
    sub_2840C8();
    swift_getObjectType();
    return sub_1DBC8C();
  }

  v12 = v34;
  v33 = [v0 traitCollection];
  *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review] = v12;

  v13 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title];
  sub_30B118();
  if (v14)
  {
    v15 = sub_30C098();
  }

  else
  {
    v15 = 0;
  }

  [v13 setText:v15];

  v17 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date];
  if (sub_30B108())
  {
    sub_302AE8();

    sub_43BD8(v10, v7);
    if ((*(v2 + 48))(v7, 1, v1) != 1)
    {
      (*(v2 + 32))(v4, v7, v1);
      v20 = v11;
      sub_287AEC(v4);
      v22 = v21;

      (*(v2 + 8))(v4, v1);
      sub_EB68(v10, &unk_40BAB0);

      if (v22)
      {
        v19 = sub_30C098();
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_14;
    }

    v18 = v11;

    sub_EB68(v10, &unk_40BAB0);
  }

  else
  {
  }

  v19 = 0;
LABEL_14:
  [v17 setText:v19];

  v23 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
  v24 = sub_30B128();
  v25 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating];
  *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = v24;
  if (v25 != v24)
  {
    [v23 setNeedsDisplay];
  }

  v26 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username];
  sub_30B0D8();
  if (v27)
  {
    v28 = sub_30C098();
  }

  else
  {
    v28 = 0;
  }

  [v26 setText:v28];

  v29 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
  sub_30B138();
  if (v30)
  {
    v31 = sub_30C098();
  }

  else
  {
    v31 = 0;
  }

  [v29 setText:v31];

  v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] = 1;
  v11[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded] = 0;
  sub_284DA4();
  [v11 setNeedsLayout];
  sub_286A50();
}

id sub_283FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelViewOverflowViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2840C8()
{
  result = qword_40BAC0;
  if (!qword_40BAC0)
  {
    sub_30B158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BAC0);
  }

  return result;
}

uint64_t ModernPageViewController.perform(testCase:runner:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  v35 = *v2;
  v34 = swift_isaMask;
  v36 = sub_306E68();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306E88();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PerformanceTestCase();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_306EA8();
  v33 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_3EFB4();
  v30 = sub_30C8F8();
  sub_306E98();
  sub_306F08();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_12670(v31, v41);
  sub_28466C(v32, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v29 + 80) + 80) & ~*(v29 + 80);
  v20 = swift_allocObject();
  v22 = v34;
  v21 = v35;
  v20[2] = *(&stru_20.filesize + (v34 & v35));
  v20[3] = *(&stru_20.maxprot + (v22 & v21));
  v20[4] = v3;
  sub_12658(v41, (v20 + 5));
  sub_28488C(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  aBlock[4] = sub_2848F0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_60;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_943D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  v25 = v36;
  sub_30D488();
  v26 = v30;
  sub_30C8C8();
  _Block_release(v23);

  (*(v39 + 8))(v5, v25);
  (*(v37 + 8))(v8, v38);
  return (v18)(v17, v33);
}

void sub_284594(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 collectionView];
  if (v5)
  {
    v8 = v5;
    UIScrollView.perform(testCase:runner:)(a3, a2);
  }

  else
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v6);
    (*(v7 + 16))(a3, 0xD000000000000017, 0x80000000003431D0, v6, v7);
  }
}

uint64_t sub_28466C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceTestCase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2846D0()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  v5 = v0 + v3;

  if ((*(v0 + v3 + 64) - 1) >= 0x12)
  {
  }

  v6 = *(v1 + 36);
  v7 = sub_308778();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 40);
  v10 = sub_30A4E8();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_28488C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceTestCase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2848F0()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  sub_284594(v2, (v0 + 40), v3);
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_284994()
{
  if (qword_3FADD8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A770 + 10);
  v2[0] = xmmword_42A730;
  v2[1] = unk_42A740;
  v2[2] = xmmword_42A750;
  v2[3] = *&qword_42A760;
  *v3 = xmmword_42A770;
  xmmword_40BAC8 = xmmword_331290;
  unk_40BAE0 = xmmword_42A730;
  *(&xmmword_40BAE8 + 8) = unk_42A740;
  *(&xmmword_40BAF8 + 8) = xmmword_42A750;
  byte_40BAD8 = 0;
  *(&xmmword_40BB08 + 8) = *&qword_42A760;
  *(&xmmword_40BB18 + 8) = xmmword_42A770;
  qword_40BB30 = *(&xmmword_42A770 + 10) >> 48;
  word_40BB38 = word_42A788 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_284A64()
{
  if (qword_3FADE0 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A7D0 + 10);
  v2[0] = xmmword_42A790;
  v2[1] = unk_42A7A0;
  v2[2] = xmmword_42A7B0;
  v2[3] = *&qword_42A7C0;
  *v3 = xmmword_42A7D0;
  xmmword_40BB40 = xmmword_331290;
  *&algn_40BB51[7] = xmmword_42A790;
  *(&xmmword_40BB60 + 8) = unk_42A7A0;
  *(&xmmword_40BB70 + 8) = xmmword_42A7B0;
  byte_40BB50 = 0;
  *(&xmmword_40BB80 + 8) = *&qword_42A7C0;
  *(&xmmword_40BB90 + 8) = xmmword_42A7D0;
  qword_40BBA8 = *(&xmmword_42A7D0 + 10) >> 48;
  word_40BBB0 = word_42A7E8 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_284B34()
{
  if (qword_3FADE8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A830 + 10);
  v2[0] = xmmword_42A7F0;
  v2[1] = unk_42A800;
  v2[2] = xmmword_42A810;
  v2[3] = *&qword_42A820;
  *v3 = xmmword_42A830;
  xmmword_40BBB8 = xmmword_3312A0;
  unk_40BBD0 = xmmword_42A7F0;
  *(&xmmword_40BBD8 + 8) = unk_42A800;
  *(&xmmword_40BBE8 + 8) = xmmword_42A810;
  byte_40BBC8 = 0;
  *(&xmmword_40BBF8 + 8) = *&qword_42A820;
  *(&xmmword_40BC08 + 8) = xmmword_42A830;
  qword_40BC20 = *(&xmmword_42A830 + 10) >> 48;
  word_40BC28 = word_42A848 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_284C04()
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A6B0 + 10);
  v2[0] = xmmword_42A670;
  v2[1] = *&qword_42A680;
  v2[2] = xmmword_42A690;
  v2[3] = *&qword_42A6A0;
  *v3 = xmmword_42A6B0;
  xmmword_40BC30 = xmmword_328890;
  *&algn_40BC41[7] = xmmword_42A670;
  *(&xmmword_40BC50 + 8) = *&qword_42A680;
  *(&xmmword_40BC60 + 8) = xmmword_42A690;
  byte_40BC40 = 0;
  *(&xmmword_40BC70 + 8) = *&qword_42A6A0;
  *(&xmmword_40BC80 + 8) = xmmword_42A6B0;
  qword_40BC98 = *(&xmmword_42A6B0 + 10) >> 48;
  word_40BCA0 = word_42A6C8 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_284CD4()
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A6B0 + 10);
  v2[0] = xmmword_42A670;
  v2[1] = *&qword_42A680;
  v2[2] = xmmword_42A690;
  v2[3] = *&qword_42A6A0;
  *v3 = xmmword_42A6B0;
  xmmword_40BCA8 = xmmword_31D710;
  unk_40BCC0 = xmmword_42A670;
  *(&xmmword_40BCC8 + 8) = *&qword_42A680;
  *(&xmmword_40BCD8 + 8) = xmmword_42A690;
  byte_40BCB8 = 0;
  *(&xmmword_40BCE8 + 8) = *&qword_42A6A0;
  *(&xmmword_40BCF8 + 8) = xmmword_42A6B0;
  qword_40BD10 = *(&xmmword_42A6B0 + 10) >> 48;
  word_40BD18 = word_42A6C8 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

id sub_284DA4()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] & 1) != 0 || (v3 = [v0 traitCollection], v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 != &dword_0 + 2) && (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded])
  {
    v2 = 0;
  }

  else
  {
    v5 = [v0 traitCollection];
    v6 = sub_30C968();

    if (v6)
    {
      v2 = 4;
    }

    else
    {
      v2 = 7;
    }
  }

  return [v1 setNumberOfLines:v2];
}

uint64_t sub_284E8C()
{
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC])
  {
    return 0;
  }

  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != &dword_0 + 2 && (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded] & 1) != 0)
  {
    return 0;
  }

  v4 = [v0 traitCollection];
  v5 = sub_30C968();

  if (v5)
  {
    return 4;
  }

  else
  {
    return 7;
  }
}

char *sub_284F44(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_301E48();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADD8 != -1)
  {
    swift_once();
  }

  v66[2] = xmmword_42A750;
  v66[3] = *&qword_42A760;
  v67[0] = xmmword_42A770;
  *(v67 + 10) = *(&xmmword_42A770 + 10);
  v66[0] = xmmword_42A730;
  v66[1] = unk_42A740;
  v74 = xmmword_42A750;
  v75 = *&qword_42A760;
  v76[0] = xmmword_42A770;
  *(v76 + 10) = *(&xmmword_42A770 + 10);
  v72 = xmmword_42A730;
  v73 = unk_42A740;
  sub_8FC54(v66, v70);
  *&v4[v12] = sub_235C3C(&v72, 1, 0, 1);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for ReviewRatingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date;
  if (qword_3FADE0 != -1)
  {
    swift_once();
  }

  v68[2] = xmmword_42A7B0;
  v68[3] = *&qword_42A7C0;
  v69[0] = xmmword_42A7D0;
  *(v69 + 10) = *(&xmmword_42A7D0 + 10);
  v68[0] = xmmword_42A790;
  v68[1] = unk_42A7A0;
  v74 = xmmword_42A7B0;
  v75 = *&qword_42A7C0;
  v76[0] = xmmword_42A7D0;
  *(v76 + 10) = *(&xmmword_42A7D0 + 10);
  v72 = xmmword_42A790;
  v73 = unk_42A7A0;
  sub_8FC54(v68, v70);
  *&v4[v14] = sub_235C3C(&v72, 1, 0, 1);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username;
  if (qword_3FADE8 != -1)
  {
    swift_once();
  }

  v70[2] = xmmword_42A810;
  v70[3] = *&qword_42A820;
  v71[0] = xmmword_42A830;
  *(v71 + 10) = *(&xmmword_42A830 + 10);
  v70[0] = xmmword_42A7F0;
  v70[1] = unk_42A800;
  v74 = xmmword_42A810;
  v75 = *&qword_42A820;
  v76[0] = xmmword_42A830;
  *(v76 + 10) = *(&xmmword_42A830 + 10);
  v72 = xmmword_42A7F0;
  v73 = unk_42A800;
  sub_8FC54(v70, v64);
  *&v4[v15] = sub_235C3C(&v72, 1, 0, 1);
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body;
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  v74 = xmmword_42A690;
  v75 = *&qword_42A6A0;
  v76[0] = xmmword_42A6B0;
  *(v76 + 10) = *(&xmmword_42A6B0 + 10);
  v72 = xmmword_42A670;
  v73 = *&qword_42A680;
  v64[2] = xmmword_42A690;
  v64[3] = *&qword_42A6A0;
  v65[0] = xmmword_42A6B0;
  *(v65 + 10) = *(&xmmword_42A6B0 + 10);
  v64[0] = xmmword_42A670;
  v64[1] = *&qword_42A680;
  sub_8FC54(&v72, &v63);
  *&v4[v16] = sub_235C3C(v64, 2, 0, 1);
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more;
  v18 = objc_opt_self();
  v19 = [v18 secondarySystemBackgroundColor];
  v20 = sub_289928(v19);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor;
  *&v5[v21] = [v18 secondarySystemBackgroundColor];
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review] = 0;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_currentPresentation;
  v23 = sub_307048();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler];
  *v24 = 0;
  v24[1] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_objectGraph] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] = 0;
  v25 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cachedSize];
  v26 = type metadata accessor for ModernProductReviewCollectionViewCell();
  *v25 = 0;
  v25[1] = 0;
  v62.receiver = v5;
  v62.super_class = v26;
  v27 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v28 = [v27 contentView];
  [v28 setDirectionalLayoutMargins:{0.0, 20.0, 20.0, 20.0}];

  v29 = [v27 contentView];
  v30 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor;
  [v29 setBackgroundColor:*&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor]];

  v31 = [v27 contentView];
  v32 = [v31 layer];

  v33 = [v27 traitCollection];
  v34 = sub_30C968();

  v35 = 8.0;
  if (v34)
  {
    v35 = 15.0;
  }

  [v32 setCornerRadius:v35];

  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body;
  [*&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body] setBackgroundColor:*&v27[v30]];
  v37 = [v27 contentView];
  [v37 addSubview:*&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title]];

  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date;
  v39 = *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date];
  v40 = [v18 lightGrayColor];
  [v39 setTextColor:v40];

  [*&v27[v38] setTextAlignment:2];
  v41 = [v27 contentView];
  [v41 addSubview:*&v27[v38]];

  v42 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating;
  v43 = *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
  v44 = v43[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize];
  v43[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize] = 3;
  if (v44 != 3)
  {
    [v43 setNeedsDisplay];
  }

  v45 = [v27 contentView];
  [v45 addSubview:*&v27[v42]];

  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username;
  v47 = *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username];
  v48 = [v18 lightGrayColor];
  [v47 setTextColor:v48];

  [*&v27[v46] setTextAlignment:2];
  v49 = [v27 contentView];
  [v49 addSubview:*&v27[v46]];

  [*&v27[v36] setBackgroundColor:*&v27[v30]];
  v50 = *&v27[v36];
  [v50 setNumberOfLines:sub_284E8C()];

  [*&v27[v36] setLineBreakMode:0];
  v51 = *&v27[v36];
  v52 = v59;
  sub_301E28();
  v53 = sub_301E38();
  (*(v60 + 8))(v52, v61);
  [v51 setTextAlignment:v53];

  v54 = [v27 contentView];
  [v54 addSubview:*&v27[v36]];

  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more;
  [*&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more] setTintColor:*&v27[v30]];
  [*&v27[v55] setUserInteractionEnabled:0];
  v56 = [v27 contentView];
  [v56 addSubview:*&v27[v55]];

  [v27 setIsAccessibilityElement:1];
  [v27 setAccessibilityTraits:UIAccessibilityTraitButton];

  sub_285810();
  return v27;
}

void sub_285810()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v93 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  v98 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username];
  [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v96 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];
  [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 bottomAnchor];
  v97 = v4;
  v8 = [v4 bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];

  LODWORD(v10) = 1132068864;
  v94 = v9;
  [v9 setPriority:v10];
  v95 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_320DE0;
  v99 = v2;
  v12 = [v2 firstBaselineAnchor];
  v13 = [v1 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 topAnchor];
  if (qword_3FAE48 != -1)
  {
    swift_once();
  }

  v108[4] = xmmword_40BB08;
  v108[5] = xmmword_40BB18;
  v108[6] = unk_40BB28;
  v108[0] = xmmword_40BAC8;
  v108[1] = *&byte_40BAD8;
  v108[2] = xmmword_40BAE8;
  v108[3] = xmmword_40BAF8;
  v126 = xmmword_40BB08;
  v127 = xmmword_40BB18;
  v128 = unk_40BB28;
  v122 = xmmword_40BAC8;
  v123 = *&byte_40BAD8;
  v109 = word_40BB38;
  v129 = word_40BB38;
  v124 = xmmword_40BAE8;
  v125 = xmmword_40BAF8;
  sub_9004C(v108, v120);
  v16 = [v1 traitCollection];
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v17 = sub_30D6F8();
  v18 = __swift_project_value_buffer(v17, qword_4295D8);
  sub_231F6C(v16, v18, 0);
  v20 = v19;

  v110[4] = v126;
  v110[5] = v127;
  v110[6] = v128;
  v111 = v129;
  v110[0] = v122;
  v110[1] = v123;
  v110[2] = v124;
  v110[3] = v125;
  sub_900A8(v110);
  v21 = [v12 constraintEqualToAnchor:v15 constant:v20];

  *(v11 + 32) = v21;
  v22 = [v1 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 leadingAnchor];
  v25 = [v2 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v11 + 40) = v26;
  v27 = [v3 firstBaselineAnchor];
  v28 = [v1 contentView];
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 topAnchor];
  if (qword_3FAE50 != -1)
  {
    swift_once();
  }

  v112[4] = xmmword_40BB80;
  v112[5] = xmmword_40BB90;
  v112[6] = unk_40BBA0;
  v112[0] = xmmword_40BB40;
  v112[1] = *&byte_40BB50;
  v112[2] = xmmword_40BB60;
  v112[3] = xmmword_40BB70;
  v126 = xmmword_40BB80;
  v127 = xmmword_40BB90;
  v128 = unk_40BBA0;
  v122 = xmmword_40BB40;
  v123 = *&byte_40BB50;
  v113 = word_40BBB0;
  v129 = word_40BBB0;
  v124 = xmmword_40BB60;
  v125 = xmmword_40BB70;
  sub_9004C(v112, v120);
  v31 = [v1 traitCollection];
  sub_231F6C(v31, v18, 0);
  v33 = v32;

  v114[4] = v126;
  v114[5] = v127;
  v114[6] = v128;
  v115 = v129;
  v114[0] = v122;
  v114[1] = v123;
  v114[2] = v124;
  v114[3] = v125;
  sub_900A8(v114);
  v34 = [v27 constraintEqualToAnchor:v30 constant:v33];

  *(v11 + 48) = v34;
  v35 = [v3 trailingAnchor];
  v36 = [v1 contentView];
  v37 = [v36 layoutMarginsGuide];

  v38 = [v37 trailingAnchor];
  v39 = [v35 constraintEqualToAnchor:v38];

  *(v11 + 56) = v39;
  v40 = [v3 leadingAnchor];
  v41 = [v2 trailingAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:8.0];

  *(v11 + 64) = v42;
  v43 = [v98 firstBaselineAnchor];
  v44 = [v3 lastBaselineAnchor];
  if (qword_3FAE58 != -1)
  {
    swift_once();
  }

  v116[4] = xmmword_40BBF8;
  v116[5] = xmmword_40BC08;
  v116[6] = unk_40BC18;
  v116[0] = xmmword_40BBB8;
  v116[1] = *&byte_40BBC8;
  v116[2] = xmmword_40BBD8;
  v116[3] = xmmword_40BBE8;
  v126 = xmmword_40BBF8;
  v127 = xmmword_40BC08;
  v128 = unk_40BC18;
  v122 = xmmword_40BBB8;
  v123 = *&byte_40BBC8;
  v117 = word_40BC28;
  v129 = word_40BC28;
  v124 = xmmword_40BBD8;
  v125 = xmmword_40BBE8;
  sub_9004C(v116, v120);
  v45 = [v1 traitCollection];
  sub_231F6C(v45, v18, 0);
  v47 = v46;

  v118[4] = v126;
  v118[5] = v127;
  v118[6] = v128;
  v119 = v129;
  v118[0] = v122;
  v118[1] = v123;
  v118[2] = v124;
  v118[3] = v125;
  sub_900A8(v118);
  v48 = [v43 constraintEqualToAnchor:v44 constant:v47];

  *(v11 + 72) = v48;
  v49 = [v98 trailingAnchor];
  v50 = [v1 contentView];
  v51 = [v50 layoutMarginsGuide];

  v52 = [v51 trailingAnchor];
  v53 = [v49 constraintEqualToAnchor:v52];

  *(v11 + 80) = v53;
  v54 = [v93 bottomAnchor];
  v55 = [v98 lastBaselineAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v11 + 88) = v56;
  v57 = [v1 contentView];
  v58 = [v57 layoutMarginsGuide];

  v59 = [v58 leadingAnchor];
  v60 = [v93 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v11 + 96) = v61;
  v62 = [v98 leadingAnchor];
  v63 = [v93 trailingAnchor];
  v64 = [v62 constraintGreaterThanOrEqualToAnchor:v63 constant:8.0];

  *(v11 + 104) = v64;
  v65 = [v97 firstBaselineAnchor];
  v66 = [v98 lastBaselineAnchor];
  if (qword_3FAE60 != -1)
  {
    swift_once();
  }

  v120[4] = xmmword_40BC70;
  v120[5] = xmmword_40BC80;
  v120[6] = unk_40BC90;
  v120[0] = xmmword_40BC30;
  v120[1] = *&byte_40BC40;
  v120[2] = xmmword_40BC50;
  v120[3] = xmmword_40BC60;
  v104 = xmmword_40BC70;
  v105 = xmmword_40BC80;
  v106 = unk_40BC90;
  v100 = xmmword_40BC30;
  v101 = *&byte_40BC40;
  v121 = word_40BCA0;
  v107 = word_40BCA0;
  v102 = xmmword_40BC50;
  v103 = xmmword_40BC60;
  sub_9004C(v120, &v122);
  v67 = [v1 traitCollection];
  sub_231F6C(v67, v18, 0);
  v69 = v68;

  v126 = v104;
  v127 = v105;
  v128 = v106;
  v129 = v107;
  v122 = v100;
  v123 = v101;
  v124 = v102;
  v125 = v103;
  sub_900A8(&v122);
  v70 = [v65 constraintEqualToAnchor:v66 constant:v69];

  *(v11 + 112) = v70;
  v71 = [v1 contentView];
  v72 = [v71 layoutMarginsGuide];

  v73 = [v72 leadingAnchor];
  v74 = [v97 leadingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v11 + 120) = v75;
  v76 = [v1 contentView];
  v77 = [v76 layoutMarginsGuide];

  v78 = [v77 trailingAnchor];
  v79 = [v97 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v11 + 128) = v80;
  *(v11 + 136) = v94;
  v81 = v94;
  v82 = [v96 trailingAnchor];
  v83 = [v1 contentView];
  v84 = [v83 layoutMarginsGuide];

  v85 = [v84 trailingAnchor];
  v86 = [v82 constraintEqualToAnchor:v85];

  *(v11 + 144) = v86;
  v87 = [v96 firstBaselineAnchor];
  v88 = [v97 lastBaselineAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v11 + 152) = v89;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v95 activateConstraints:isa];

  LODWORD(v91) = 1132068864;
  [v99 setContentCompressionResistancePriority:0 forAxis:v91];
  LODWORD(v92) = 1132068864;
  [v98 setContentCompressionResistancePriority:0 forAxis:v92];
}

id sub_2866DC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title] setText:0];
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date] setText:0];
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
  v2 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = 0;
  if (v2 != 0.0)
  {
    [v1 setNeedsDisplay];
  }

  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username] setText:0];
  [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body] setText:0];
  result = [v0 setHidden:0];
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] = 0;
  return result;
}

id sub_286980()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  result = [v0 bounds];
  v3 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cachedSize];
  if (v4 != *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cachedSize] || v2 != *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cachedSize + 8])
  {
    [v0 bounds];
    *v3 = v6;
    *(v3 + 1) = v7;
    return sub_286A50();
  }

  return result;
}

id sub_286A50()
{
  if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded])
  {
    v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];

    return [v1 setHidden:1];
  }

  else
  {
    [v0 layoutIfNeeded];
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
    result = [v3 text];
    if (result)
    {
      v4 = result;
      sub_30C0D8();

      v5 = sub_30C098();
      [v3 frame];
      Width = CGRectGetWidth(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315420;
      *(inited + 32) = NSFontAttributeName;
      v8 = NSFontAttributeName;
      result = [v3 font];
      if (result)
      {
        v9 = result;

        v10 = sub_124C4(0, &qword_408100);
        *(inited + 40) = v9;
        *(inited + 64) = v10;
        *(inited + 72) = NSParagraphStyleAttributeName;
        v11 = qword_3FAE78;
        v12 = NSParagraphStyleAttributeName;
        if (v11 != -1)
        {
          swift_once();
        }

        v13 = qword_42AB90;
        *(inited + 104) = sub_124C4(0, &qword_40BDA8);
        *(inited + 80) = v13;
        v14 = v13;
        sub_2D6CB0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
        swift_arrayDestroy();
        type metadata accessor for Key(0);
        sub_CFA40();
        isa = sub_30BF88().super.isa;

        [v5 boundingRectWithSize:1 options:isa attributes:0 context:{Width, 1.79769313e308}];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        [v3 frame];
        Height = CGRectGetHeight(v27);
        v28.origin.x = v17;
        v28.origin.y = v19;
        v28.size.width = v21;
        v28.size.height = v23;
        return [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more] setHidden:Height >= CGRectGetHeight(v28)];
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_286D6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ModernProductReviewCollectionViewCell()
{
  result = qword_40BD98;
  if (!qword_40BD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_286ED8()
{
  sub_FD86C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_287018(void *a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor;
  v3 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor] = a1;
  v4 = a1;

  v5 = [v1 contentView];
  [v5 setBackgroundColor:*&v1[v2]];

  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body] setBackgroundColor:*&v1[v2]];
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];
  v7 = *&v1[v2];

  return [v6 setBackgroundColor:v7];
}

double sub_2870C0(void *a1)
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  *&v51[10] = *(&xmmword_42A6B0 + 10);
  v50[2] = xmmword_42A690;
  v50[3] = *&qword_42A6A0;
  *v51 = xmmword_42A6B0;
  v50[0] = xmmword_42A670;
  v50[1] = *&qword_42A680;
  v43 = xmmword_42A670;
  v44 = *&qword_42A680;
  v45 = xmmword_42A690;
  v46 = *&qword_42A6A0;
  *v47 = xmmword_42A6B0;
  *&v47[16] = *(&xmmword_42A6B0 + 10) >> 48;
  *&v47[24] = word_42A6C8 & 0x1FF | 0x8000;
  sub_8FC54(v50, v41);
  v2 = sub_2DBCF0(a1);
  v52[2] = v45;
  v52[3] = v46;
  v53[0] = *v47;
  *(v53 + 10) = *&v47[10];
  v52[0] = v43;
  v52[1] = v44;
  sub_232BCC(v52);
  [v2 lineHeight];
  v4 = v3;
  [v2 leading];
  v6 = v5;
  v7 = sub_30C968();
  if (qword_3FAE50 != -1)
  {
    swift_once();
  }

  v29[4] = xmmword_40BB80;
  v29[5] = xmmword_40BB90;
  v29[6] = unk_40BBA0;
  v29[0] = xmmword_40BB40;
  v29[1] = *&byte_40BB50;
  v29[2] = xmmword_40BB60;
  v29[3] = xmmword_40BB70;
  *v47 = xmmword_40BB80;
  *&v47[16] = xmmword_40BB90;
  v48 = unk_40BBA0;
  v43 = xmmword_40BB40;
  v44 = *&byte_40BB50;
  v30 = word_40BBB0;
  v49 = word_40BBB0;
  v45 = xmmword_40BB60;
  v46 = xmmword_40BB70;
  sub_9004C(v29, v41);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v8 = sub_30D6F8();
  v9 = __swift_project_value_buffer(v8, qword_4295D8);
  sub_231F6C(a1, v9, 0);
  v11 = v10;
  v31[4] = *v47;
  v31[5] = *&v47[16];
  v31[6] = v48;
  v32 = v49;
  v31[0] = v43;
  v31[1] = v44;
  v31[2] = v45;
  v31[3] = v46;
  sub_900A8(v31);
  if (qword_3FAE58 != -1)
  {
    swift_once();
  }

  v33[4] = xmmword_40BBF8;
  v33[5] = xmmword_40BC08;
  v33[6] = unk_40BC18;
  v33[0] = xmmword_40BBB8;
  v33[1] = *&byte_40BBC8;
  v33[2] = xmmword_40BBD8;
  v33[3] = xmmword_40BBE8;
  *v47 = xmmword_40BBF8;
  *&v47[16] = xmmword_40BC08;
  v48 = unk_40BC18;
  v43 = xmmword_40BBB8;
  v44 = *&byte_40BBC8;
  v34 = word_40BC28;
  v49 = word_40BC28;
  v45 = xmmword_40BBD8;
  v46 = xmmword_40BBE8;
  sub_9004C(v33, v41);
  sub_231F6C(a1, v9, 0);
  v13 = v12;
  v35[4] = *v47;
  v35[5] = *&v47[16];
  v35[6] = v48;
  v36 = v49;
  v35[0] = v43;
  v35[1] = v44;
  v35[2] = v45;
  v35[3] = v46;
  sub_900A8(v35);
  if (qword_3FAE60 != -1)
  {
    swift_once();
  }

  v37[4] = xmmword_40BC70;
  v37[5] = xmmword_40BC80;
  v37[6] = unk_40BC90;
  v37[0] = xmmword_40BC30;
  v37[1] = *&byte_40BC40;
  v37[2] = xmmword_40BC50;
  v37[3] = xmmword_40BC60;
  *v47 = xmmword_40BC70;
  *&v47[16] = xmmword_40BC80;
  v48 = unk_40BC90;
  v43 = xmmword_40BC30;
  v44 = *&byte_40BC40;
  v38 = word_40BCA0;
  v49 = word_40BCA0;
  v45 = xmmword_40BC50;
  v46 = xmmword_40BC60;
  sub_9004C(v37, v41);
  sub_231F6C(a1, v9, 0);
  v15 = v14;
  v39[4] = *v47;
  v39[5] = *&v47[16];
  v39[6] = v48;
  v40 = v49;
  v39[0] = v43;
  v39[1] = v44;
  v39[2] = v45;
  v39[3] = v46;
  sub_900A8(v39);
  if (qword_3FAE68 != -1)
  {
    swift_once();
  }

  v16 = 6.0;
  v41[4] = xmmword_40BCE8;
  v41[5] = xmmword_40BCF8;
  if (v7)
  {
    v16 = 3.0;
  }

  v17 = (v4 + v6) * v16 + v11 + v13 + v15;
  v41[6] = unk_40BD08;
  v42 = word_40BD18;
  v41[0] = xmmword_40BCA8;
  v41[1] = *&byte_40BCB8;
  v41[2] = xmmword_40BCC8;
  v41[3] = xmmword_40BCD8;
  v25 = xmmword_40BCE8;
  v26 = xmmword_40BCF8;
  v27 = unk_40BD08;
  v28 = word_40BD18;
  v21 = xmmword_40BCA8;
  v22 = *&byte_40BCB8;
  v23 = xmmword_40BCC8;
  v24 = xmmword_40BCD8;
  sub_9004C(v41, &v43);
  sub_231F6C(a1, v9, 0);
  v19 = v18;
  *v47 = v25;
  *&v47[16] = v26;
  v48 = v27;
  v49 = v28;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  sub_900A8(&v43);

  return ceil(v17 + v19);
}

void sub_28765C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title;
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FADD8 != -1)
  {
    swift_once();
  }

  v19[2] = xmmword_42A750;
  v19[3] = *&qword_42A760;
  v20[0] = xmmword_42A770;
  *(v20 + 10) = *(&xmmword_42A770 + 10);
  v19[0] = xmmword_42A730;
  v19[1] = unk_42A740;
  v27 = xmmword_42A750;
  v28 = *&qword_42A760;
  v29[0] = xmmword_42A770;
  *(v29 + 10) = *(&xmmword_42A770 + 10);
  v25 = xmmword_42A730;
  v26 = unk_42A740;
  sub_8FC54(v19, v23);
  *(v0 + v2) = sub_235C3C(&v25, 1, 0, 1);
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for ReviewRatingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date;
  if (qword_3FADE0 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_42A7B0;
  v21[3] = *&qword_42A7C0;
  v22[0] = xmmword_42A7D0;
  *(v22 + 10) = *(&xmmword_42A7D0 + 10);
  v21[0] = xmmword_42A790;
  v21[1] = unk_42A7A0;
  v27 = xmmword_42A7B0;
  v28 = *&qword_42A7C0;
  v29[0] = xmmword_42A7D0;
  *(v29 + 10) = *(&xmmword_42A7D0 + 10);
  v25 = xmmword_42A790;
  v26 = unk_42A7A0;
  sub_8FC54(v21, v23);
  *(v0 + v4) = sub_235C3C(&v25, 1, 0, 1);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username;
  if (qword_3FADE8 != -1)
  {
    swift_once();
  }

  v23[2] = xmmword_42A810;
  v23[3] = *&qword_42A820;
  v24[0] = xmmword_42A830;
  *(v24 + 10) = *(&xmmword_42A830 + 10);
  v23[0] = xmmword_42A7F0;
  v23[1] = unk_42A800;
  v27 = xmmword_42A810;
  v28 = *&qword_42A820;
  v29[0] = xmmword_42A830;
  *(v29 + 10) = *(&xmmword_42A830 + 10);
  v25 = xmmword_42A7F0;
  v26 = unk_42A800;
  sub_8FC54(v23, v17);
  *(v0 + v5) = sub_235C3C(&v25, 1, 0, 1);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body;
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  v27 = xmmword_42A690;
  v28 = *&qword_42A6A0;
  v29[0] = xmmword_42A6B0;
  *(v29 + 10) = *(&xmmword_42A6B0 + 10);
  v25 = xmmword_42A670;
  v26 = *&qword_42A680;
  v17[2] = xmmword_42A690;
  v17[3] = *&qword_42A6A0;
  v18[0] = xmmword_42A6B0;
  *(v18 + 10) = *(&xmmword_42A6B0 + 10);
  v17[0] = xmmword_42A670;
  v17[1] = *&qword_42A680;
  sub_8FC54(&v25, v16);
  *(v0 + v6) = sub_235C3C(v17, 2, 0, 1);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more;
  v8 = objc_opt_self();
  v9 = [v8 secondarySystemBackgroundColor];
  v10 = sub_289928(v9);

  *(v1 + v7) = v10;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_contentBackgroundColor;
  *(v1 + v11) = [v8 secondarySystemBackgroundColor];
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded) = 1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review) = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_currentPresentation;
  v13 = sub_307048();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC) = 0;
  v15 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cachedSize);
  *v15 = 0;
  v15[1] = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_287A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_287AEC(uint64_t a1)
{
  v25 = a1;
  v2 = sub_301BA8();
  __chkstk_darwin(v2 - 8);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_301E68();
  __chkstk_darwin(v4 - 8);
  v5 = sub_301D38();
  __chkstk_darwin(v5 - 8);
  v6 = sub_301D58();
  __chkstk_darwin(v6 - 8);
  v7 = sub_301D88();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401920);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_301E48();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v26 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v22 - v18;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_objectGraph))
  {
    sub_302748();
    v23 = v19;

    v19 = v23;
    sub_30B8E8();

    sub_302738();

    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v19, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13, v17);
    sub_301E18();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_EB68(v12, &unk_401920);
    }
  }

  sub_301D48();
  sub_301D28();
  (*(v14 + 16))(v26, v19, v13);
  sub_301E58();
  sub_301B98();
  sub_301D68();
  v20 = sub_301D78();
  (*(v27 + 8))(v9, v28);
  (*(v14 + 8))(v19, v13);
  return v20;
}

id sub_287F74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_301DC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v34 = sub_30B0C8();
  sub_30B0C8();
  v33 = [v1 traitCollection];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review] = a1;

  v14 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_title];
  sub_30B118();
  if (v15)
  {
    v16 = sub_30C098();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_date];
  if (!sub_30B108())
  {

    goto LABEL_8;
  }

  sub_302AE8();

  sub_EB00(v13, v10, &unk_40BAB0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v18 = v2;

    sub_EB68(v13, &unk_40BAB0);
LABEL_8:
    v19 = 0;
    goto LABEL_12;
  }

  (*(v5 + 32))(v7, v10, v4);
  v20 = v2;
  sub_287AEC(v7);
  v22 = v21;

  (*(v5 + 8))(v7, v4);
  sub_EB68(v13, &unk_40BAB0);

  if (v22)
  {
    v19 = sub_30C098();
  }

  else
  {
    v19 = 0;
  }

LABEL_12:
  [v17 setText:v19];

  v23 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_rating];
  v24 = sub_30B128();
  v25 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating];
  *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating] = v24;
  if (v25 != v24)
  {
    [v23 setNeedsDisplay];
  }

  v26 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_username];
  sub_30B0D8();
  if (v27)
  {
    v28 = sub_30C098();
  }

  else
  {
    v28 = 0;
  }

  [v26 setText:v28];

  v29 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_body];
  sub_30B138();
  if (v30)
  {
    v31 = sub_30C098();
  }

  else
  {
    v31 = 0;
  }

  [v29 setText:v31];

  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isInOverflowVC] = 0;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_isReviewExpanded] = v34 & 1;
  sub_284DA4();
  [v2 setNeedsLayout];
  return sub_286A50();
}

double sub_2883DC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_30B898();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_307048();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_review];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_currentPresentation;
  swift_beginAccess();
  sub_EB00(&v1[v12], v6, &qword_402EA0);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler];
    if (!v13)
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_24;
    }

    v14 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler + 8];
    v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_more];

    sub_9FF04(v13);
    if ([v15 isHidden])
    {
      v16 = sub_30AF68();
      sub_30AFB8();
      sub_30AFB8();
      if (sub_30AFB8() != v16)
      {
        sub_30AFB8();
      }

      sub_30B868();
      v17 = sub_308048();
      swift_allocObject();
      v18 = sub_308028();
      *(a1 + 24) = v17;
      *(a1 + 32) = sub_2898E0(&qword_401720, &type metadata accessor for ClosureAction);
      v19 = v13;
LABEL_18:
      sub_1EBD0(v19);
      goto LABEL_19;
    }

    v33 = v1;
    v34 = v14;
    sub_307038();
    v20 = sub_3070F8();
    v22 = v21;
    if (v20 == sub_3070F8() && v22 == v23)
    {
    }

    else
    {
      v24 = sub_30D728();

      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (sub_30B0F8())
    {
      v25 = swift_allocObject();
      v25[2] = v11;
      v25[3] = v13;
      v25[4] = v34;

      sub_9FF04(v13);
      v26 = sub_30AF68();
      sub_30AFB8();
      sub_30AFB8();
      if (sub_30AFB8() != v26)
      {
        sub_30AFB8();
      }

      sub_30B868();
      v27 = sub_308048();
      swift_allocObject();
      v18 = sub_308028();
      *(a1 + 24) = v27;
      *(a1 + 32) = sub_2898E0(&qword_401720, &type metadata accessor for ClosureAction);
      v19 = v13;
      goto LABEL_18;
    }

LABEL_20:
    v29 = v33;
    v30 = [v33 traitCollection];
    v31 = [v30 horizontalSizeClass];

    if (v31 != &dword_0 + 2 || !*&v29[OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_objectGraph])
    {
      (*(v8 + 8))(v10, v7);

      sub_1EBD0(v13);
      goto LABEL_24;
    }

    v36 = sub_30B158();
    v37 = sub_2898E0(&qword_40BAC0, &type metadata accessor for Review);
    v35 = v11;
    type metadata accessor for ModernProductReviewCollectionViewCell();
    v32 = sub_3085E8();
    swift_allocObject();
    swift_retain_n();

    v18 = sub_3085B8();
    *(a1 + 24) = v32;
    *(a1 + 32) = sub_2898E0(&qword_40BE10, &type metadata accessor for OverflowAction);
    sub_1EBD0(v13);

LABEL_19:

    *a1 = v18;
    (*(v8 + 8))(v10, v7);
    return result;
  }

  sub_EB68(v6, &qword_402EA0);
LABEL_24:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_288A7C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_objectGraph) = a1;

  v2 = sub_306FC8() & 0x101FFFFFFFFLL;
  v3 = objc_opt_self();
  v4 = &selRef_tertiarySystemBackgroundColor;
  if (v2 != 0x100000001)
  {
    v4 = &selRef_secondarySystemBackgroundColor;
  }

  v5 = [v3 *v4];
  sub_287018(v5);
}

uint64_t sub_288B34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

uint64_t sub_288B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_307048();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_currentPresentation;
  swift_beginAccess();
  sub_FE5DC(v9, v3 + v12);
  swift_endAccess();
  v13 = (v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler);
  v14 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews37ModernProductReviewCollectionViewCell_cellReloadingHandler);
  *v13 = a2;
  v13[1] = a3;

  return sub_1EBD0(v14);
}

uint64_t sub_288D00(uint64_t a1, void *a2)
{
  sub_2870C0(a2);

  return sub_307198();
}

double sub_288EF8(double a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  sub_30B118();

  sub_30B0D8();

  v9 = sub_30B138();
  v11 = v10;
  if (sub_30B148())
  {
    sub_30B428();
  }

  if (a5)
  {
    if (qword_3FAE50 != -1)
    {
      swift_once();
    }

    v55[4] = xmmword_40BB80;
    v55[5] = xmmword_40BB90;
    v55[6] = unk_40BBA0;
    v55[0] = xmmword_40BB40;
    v55[1] = *&byte_40BB50;
    v55[2] = xmmword_40BB60;
    v55[3] = xmmword_40BB70;
    v73 = xmmword_40BB80;
    v74 = xmmword_40BB90;
    v75 = unk_40BBA0;
    v69 = xmmword_40BB40;
    v70 = *&byte_40BB50;
    v56 = word_40BBB0;
    v76 = word_40BBB0;
    v71 = xmmword_40BB60;
    v72 = xmmword_40BB70;
    ObjectType = swift_getObjectType();
    sub_9004C(v55, v67);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v13 = sub_30D6F8();
    v14 = __swift_project_value_buffer(v13, qword_4295D8);
    sub_2329B8(a3, v14, 0);
    v57[4] = v73;
    v57[5] = v74;
    v57[6] = v75;
    v58 = v76;
    v57[0] = v69;
    v57[1] = v70;
    v57[2] = v71;
    v57[3] = v72;
    sub_900A8(v57);
    if (qword_3FAE58 != -1)
    {
      swift_once();
    }

    v59[4] = xmmword_40BBF8;
    v59[5] = xmmword_40BC08;
    v59[6] = unk_40BC18;
    v59[0] = xmmword_40BBB8;
    v59[1] = *&byte_40BBC8;
    v59[2] = xmmword_40BBD8;
    v59[3] = xmmword_40BBE8;
    v73 = xmmword_40BBF8;
    v74 = xmmword_40BC08;
    v75 = unk_40BC18;
    v69 = xmmword_40BBB8;
    v70 = *&byte_40BBC8;
    v60 = word_40BC28;
    v76 = word_40BC28;
    v71 = xmmword_40BBD8;
    v72 = xmmword_40BBE8;
    sub_9004C(v59, v67);
    sub_2329B8(a3, v14, 0);
    v61[4] = v73;
    v61[5] = v74;
    v61[6] = v75;
    v62 = v76;
    v61[0] = v69;
    v61[1] = v70;
    v61[2] = v71;
    v61[3] = v72;
    sub_900A8(v61);
    if (qword_3FAE60 != -1)
    {
      swift_once();
    }

    v63[4] = xmmword_40BC70;
    v63[5] = xmmword_40BC80;
    v63[6] = unk_40BC90;
    v63[0] = xmmword_40BC30;
    v63[1] = *&byte_40BC40;
    v63[2] = xmmword_40BC50;
    v63[3] = xmmword_40BC60;
    v73 = xmmword_40BC70;
    v74 = xmmword_40BC80;
    v75 = unk_40BC90;
    v69 = xmmword_40BC30;
    v70 = *&byte_40BC40;
    v64 = word_40BCA0;
    v76 = word_40BCA0;
    v71 = xmmword_40BC50;
    v72 = xmmword_40BC60;
    sub_9004C(v63, v67);
    sub_2329B8(a3, v14, 0);
    v65[4] = v73;
    v65[5] = v74;
    v65[6] = v75;
    v66 = v76;
    v65[0] = v69;
    v65[1] = v70;
    v65[2] = v71;
    v65[3] = v72;
    sub_900A8(v65);
    if (qword_3FAE68 != -1)
    {
      swift_once();
    }

    v67[4] = xmmword_40BCE8;
    v67[5] = xmmword_40BCF8;
    v67[6] = unk_40BD08;
    v67[0] = xmmword_40BCA8;
    v67[1] = *&byte_40BCB8;
    v67[2] = xmmword_40BCC8;
    v67[3] = xmmword_40BCD8;
    *v52 = xmmword_40BCE8;
    *&v52[16] = xmmword_40BCF8;
    v53 = unk_40BD08;
    v48 = xmmword_40BCA8;
    v49 = *&byte_40BCB8;
    v68 = word_40BD18;
    v54 = word_40BD18;
    v50 = xmmword_40BCC8;
    v51 = xmmword_40BCD8;
    sub_9004C(v67, &v69);
    sub_2329B8(a3, v14, 0);
    v73 = *v52;
    v74 = *&v52[16];
    v75 = v53;
    v76 = v54;
    v69 = v48;
    v70 = v49;
    v71 = v50;
    v72 = v51;
    sub_900A8(&v69);
    v15 = [objc_allocWithZone(NSStringDrawingContext) init];
    (*(a4 + 16))(ObjectType, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_315420;
    *(v16 + 32) = NSFontAttributeName;
    v17 = qword_3FADC8;
    v18 = NSFontAttributeName;
    if (v17 != -1)
    {
      swift_once();
    }

    v50 = xmmword_42A690;
    v51 = *&qword_42A6A0;
    *v52 = xmmword_42A6B0;
    *&v52[10] = *(&xmmword_42A6B0 + 10);
    v48 = xmmword_42A670;
    v49 = *&qword_42A680;
    v19 = [objc_opt_self() system];
    v20 = [v19 preferredContentSizeCategory];

    v21 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v20];
    v22 = sub_2DAA3C(&v48, v21);
    v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];

    *(v16 + 40) = v23;
    *(v16 + 48) = NSParagraphStyleAttributeName;
    v24 = qword_3FAE78;
    v25 = NSParagraphStyleAttributeName;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_42AB90;
    *(v16 + 56) = qword_42AB90;
    v27 = v26;
    v28 = sub_2D6EEC(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40A140);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v11)
    {
      v29 = v15;
      v30 = sub_2D618C(v28);
      sub_268E60(a1 + -20.0 + -20.0, 1.79769313e308, v9, v11, 1uLL, v30, v15);

      if (qword_3FAE40 != -1)
      {
        swift_once();
      }

      sub_303D28();

      if (v50)
      {
        v31 = sub_30C098();
        sub_2D618C(v28);
        type metadata accessor for Key(0);
        sub_2898E0(&qword_3FB410, type metadata accessor for Key);
        isa = sub_30BF88().super.isa;

        [v31 boundingRectWithSize:1 options:isa attributes:v29 context:{a1 + -20.0 + -20.0, 1.79769313e308}];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        *&v48 = v34;
        *(&v48 + 1) = v36;
        *&v49 = v38;
        *(&v49 + 1) = v40;
        LOBYTE(v50) = 0;

        sub_303D38();

        v41 = v40;
        v42 = v38;
        v43 = v36;
        v44 = v34;
      }

      else
      {
        v41 = *(&v49 + 1);
        v42 = v49;
        v43 = *(&v48 + 1);
        v44 = v48;
      }
    }

    else
    {
      v46 = v15;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v41 = 0;
    }

    CGRectGetHeight(*&v44);
  }

  else
  {
    v45 = [a3 traitCollection];
    sub_2870C0(v45);
  }

  return a1;
}

uint64_t sub_28985C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_28989C()
{
  v1 = *(v0 + 24);
  sub_30B0E8();
  return v1(1);
}

uint64_t sub_2898E0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_289928(void *a1)
{
  if (qword_3FADC8 != -1)
  {
    swift_once();
  }

  v15[2] = xmmword_42A690;
  v15[3] = *&qword_42A6A0;
  v16[0] = xmmword_42A6B0;
  *(v16 + 10) = *(&xmmword_42A6B0 + 10);
  v15[0] = xmmword_42A670;
  v15[1] = *&qword_42A680;
  v13[2] = xmmword_42A690;
  v13[3] = *&qword_42A6A0;
  v14[0] = xmmword_42A6B0;
  *(v14 + 10) = *(&xmmword_42A6B0 + 10);
  v13[0] = xmmword_42A670;
  v13[1] = *&qword_42A680;
  v2 = objc_allocWithZone(type metadata accessor for FadeInDynamicTypeButton());
  sub_8FC54(v15, v12);
  v3 = sub_23ED24(v13, a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  v17._countAndFlagsBits = 0x4D5F4E4F49544341;
  v17._object = 0xEB0000000045524FLL;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v7.super.isa = v6;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_301AB8(v17, v18, v7, v19, v11);

  v8 = sub_30C098();

  [v5 setTitle:v8 forState:0];

  [v5 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  v9 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_touchInsets];
  *v9 = xmmword_331520;
  *(v9 + 1) = xmmword_331530;
  v9[32] = 0;
  [v5 setAdjustsImageWhenHighlighted:0];

  return v5;
}

uint64_t sub_289B34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_305258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_302858();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_289C70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_305258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_302858();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_289DB8()
{
  sub_289EE4(319, &qword_3FB778, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_305258();
    if (v1 <= 0x3F)
    {
      sub_289EE4(319, &qword_40BE80, &type metadata accessor for LegacyChannelLockup, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_5933C();
        if (v3 <= 0x3F)
        {
          sub_302858();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_289EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_289F88(uint64_t a1)
{
  v5 = type metadata accessor for LockupRow(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v37 = v2;
  v13 = sub_28A460(v2, a1);
  if (v13 < 0)
  {
    goto LABEL_47;
  }

  if (v13)
  {
    if (a1 < 0)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      result = sub_17EF48(v3);
      v3 = result;
      goto LABEL_36;
    }

    v14 = 0;
    v3 = _swiftEmptyArrayStorage;
    v44 = v12;
    v45 = a1;
    v39 = v13;
    v40 = v5;
    v38 = v9;
    while (1)
    {
      v42 = v3;
      sub_301DE8();
      v15 = *(v5 + 20);
      v43 = v14;
      *&v12[v15] = v14;
      v47 = *(v5 + 24);
      *&v12[v47] = _swiftEmptyArrayStorage;
      if (a1)
      {
        break;
      }

LABEL_23:
      v24 = v38;
      sub_28C8EC(v12, v38, type metadata accessor for LockupRow);
      v3 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_CBA84(0, *(v3 + 2) + 1, 1, v3);
      }

      v25 = v39;
      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      v1 = v27 + 1;
      v28 = v43;
      if (v27 >= v26 >> 1)
      {
        v3 = sub_CBA84(v26 > 1, v27 + 1, 1, v3);
      }

      v5 = v40;
      v29 = v41;
      v14 = v28 + 1;
      *(v3 + 2) = v1;
      sub_28C964(v24, &v3[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27], type metadata accessor for LockupRow);
      sub_28C9CC(v12, type metadata accessor for LockupRow);
      if (v14 == v25)
      {
        goto LABEL_31;
      }
    }

    v16 = v43 * a1;
    if ((v43 * a1) >> 64 == (v43 * a1) >> 63)
    {
      v17 = *(v37 + *(type metadata accessor for MultipleSubscriptionChannelLockupView(0) + 24));
      v46 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        v1 = sub_30D668();
      }

      else
      {
        v1 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      }

      v3 = _swiftEmptyArrayStorage;
      v18 = 0;
      v36 = v17;
      while (1)
      {
        v20 = v16 + v18;
        if (__OFADD__(v16, v18))
        {
          break;
        }

        if (v20 < v1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v21 = sub_30D578();
          }

          else
          {
            if (v20 < 0)
            {
              goto LABEL_44;
            }

            if (v20 >= *(v46 + 16))
            {
              goto LABEL_45;
            }

            v21 = *(v17 + 32 + 8 * v20);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_CB978(0, *(v3 + 2) + 1, 1, v3);
          }

          v23 = *(v3 + 2);
          v22 = *(v3 + 3);
          if (v23 >= v22 >> 1)
          {
            v3 = sub_CB978((v22 > 1), v23 + 1, 1, v3);
          }

          *(v3 + 2) = v23 + 1;
          v19 = &v3[16 * v23];
          *(v19 + 4) = v20;
          *(v19 + 5) = v21;
          v12 = v44;
          a1 = v45;
          *&v44[v47] = v3;
        }

        if (a1 == ++v18)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_31:
  if (a1 < 3)
  {
    return v3;
  }

  v30 = *(v3 + 2);
  v1 = v30 - 2;
  if (v30 < 2)
  {
    return v3;
  }

  v31 = v35;
  sub_28C8EC(&v3[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * (v30 - 1)], v35, type metadata accessor for LockupRow);
  if (*(v31 + *(v5 + 20)) < 1 || *(*(v31 + *(v5 + 24)) + 16) != 1)
  {
LABEL_41:
    sub_28C9CC(v31, type metadata accessor for LockupRow);
    return v3;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_36:
  if (v1 >= *(v3 + 2))
  {
    __break(1u);
  }

  else
  {
    result = sub_2431E8();
    if (!v33)
    {
LABEL_40:
      v31 = v35;
      goto LABEL_41;
    }

    if (*(v3 + 2))
    {
      sub_182C3C(0, 0, result, v33);

      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_28A460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for MultipleSubscriptionChannelLockupView(0) + 24));
  if (v3 >> 62)
  {
    result = sub_30D668();
  }

  else
  {
    result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = ceil(result / a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_28A510@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for MultipleSubscriptionChannelLockupView(0);
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v72 = v4;
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BEC0);
  __chkstk_darwin(v5 - 8);
  v74 = (&v69 - v6);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BEC8);
  __chkstk_darwin(v75);
  v78 = &v69 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BED0);
  __chkstk_darwin(v76);
  v77 = &v69 - v8;
  v69 = sub_3071E8();
  v9 = *(v69 - 8);
  __chkstk_darwin(v69);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_307048();
  v82 = *(v83 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v83);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v69 - v14;
  v15 = sub_301F78();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v3 + 20);
  sub_305248();
  v19 = sub_302BF8();
  sub_302C18();
  v21 = v20;
  sub_302C18();
  v81 = v19;
  if (v21 == v22)
  {
    v23 = 2;
  }

  else
  {
    sub_302848();
    v23 = sub_301F68();
    (*(v16 + 8))(v18, v15);
  }

  LOBYTE(v85) = 1;
  sub_307028();
  v24 = sub_289F88(v23);
  v25 = objc_opt_self();
  v26 = [v25 currentTraitCollection];
  v27 = sub_30C968();

  if (v27)
  {
    v28 = 8.0;
  }

  else
  {
    v28 = 10.0;
  }

  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    sub_30C7A8();
    v68 = sub_306088();
    sub_304108();
  }

  else
  {
    sub_305248();
    v30 = v29;
    v31 = v2;
    if (sub_302BB8())
    {
      v32 = 80.0;
    }

    else
    {
      sub_302C08();
      v32 = v33 + v33;
    }

    v34 = (v30 - v28 * (v23 - 1) - v32) / v23;
    v35 = [v25 currentTraitCollection];
    v36 = v84;
    static CircleLockupView.heightFor(presentation:traitCollection:)(v84, v35, v11);

    sub_3071D8();
    v38 = v37;
    (*(v9 + 8))(v11, v69);
    v39 = sub_305BD8();
    v2 = v74;
    *v74 = v39;
    *(v2 + 8) = v28;
    *(v2 + 16) = 0;
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BED8) + 44);
    *&v85 = v24;
    v40 = v73;
    sub_28C8EC(v31, v73, type metadata accessor for MultipleSubscriptionChannelLockupView);
    v41 = v82;
    v42 = v70;
    v43 = v83;
    (*(v82 + 16))(v70, v36, v83);
    v44 = (*(v71 + 80) + 24) & ~*(v71 + 80);
    v45 = (v72 + *(v41 + 80) + v44) & ~*(v41 + 80);
    v46 = (v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = v31;
    v47 = swift_allocObject();
    *(v47 + 16) = v28;
    sub_28C964(v40, v47 + v44, type metadata accessor for MultipleSubscriptionChannelLockupView);
    (*(v41 + 32))(v47 + v45, v42, v43);
    *(v47 + v46) = v34;
    *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BEE0);
    sub_301DF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BEE8);
    sub_EC8C(&qword_40BEF0, &qword_40BEE0);
    sub_EC8C(&qword_40BEF8, &qword_40BEE8);
    sub_28C3A8(&qword_40BF00, type metadata accessor for LockupRow);
    sub_306B48();
    sub_305248();
    sub_306C58();
  }

  sub_305638();
  v48 = v78;
  sub_34804(v2, v78, &qword_40BEC0);
  v49 = (v48 + *(v75 + 36));
  v50 = v90;
  v49[4] = v89;
  v49[5] = v50;
  v49[6] = v91;
  v51 = v86;
  *v49 = v85;
  v49[1] = v51;
  v52 = v88;
  v49[2] = v87;
  v49[3] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v54 = sub_3060F8();
  *(inited + 32) = v54;
  v55 = sub_306118();
  *(inited + 33) = v55;
  v56 = sub_306108();
  sub_306108();
  if (sub_306108() != v54)
  {
    v56 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v55)
  {
    v56 = sub_306108();
  }

  if ((sub_302BB8() & 1) == 0)
  {
    sub_302C08();
  }

  sub_304FD8();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v77;
  sub_34804(v48, v77, &qword_40BEC8);
  v66 = v65 + *(v76 + 36);
  *v66 = v56;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  sub_34804(v65, v79, &qword_40BED0);
  return (*(v82 + 8))(v84, v83);
}

uint64_t sub_28AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v30 = a2;
  v31 = a3;
  v12 = sub_307048();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MultipleSubscriptionChannelLockupView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_305AA8();
  v34 = a4;
  *a4 = v20;
  *(a4 + 8) = a5;
  *(a4 + 16) = 0;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF08) + 44);
  v39 = *(a1 + *(type metadata accessor for LockupRow(0) + 24));
  KeyPath = swift_getKeyPath();
  sub_28C8EC(v30, v19, type metadata accessor for MultipleSubscriptionChannelLockupView);
  (*(v13 + 16))(v15, v31, v12);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v22 = (v18 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_28C964(v19, v24 + v21, type metadata accessor for MultipleSubscriptionChannelLockupView);
  (*(v13 + 32))(v24 + v22, v15, v12);
  *(v24 + v23) = a6;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF18);
  sub_EC8C(&qword_40BF20, &qword_40BF10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BF28);
  v26 = sub_3055B8();
  v27 = sub_EC8C(&qword_40BF30, &qword_40BF28);
  v28 = sub_28C3A8(&qword_404508, &type metadata accessor for PlainButtonStyle);
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  swift_getOpaqueTypeConformance2();
  return sub_306B38();
}

uint64_t sub_28B360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v29 = a3;
  v33 = a4;
  v10 = sub_3055B8();
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultipleSubscriptionChannelLockupView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF28);
  v17 = *(v30 - 8);
  __chkstk_darwin(v30);
  v19 = &v28 - v18;
  v20 = *a1;
  v21 = a1[1];
  sub_28C8EC(a2, &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultipleSubscriptionChannelLockupView);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  sub_28C964(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for MultipleSubscriptionChannelLockupView);
  v24 = (v23 + ((v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v20;
  v24[1] = v21;
  v34 = v29;
  v35 = v20;
  v36 = v21;
  v37 = a5;
  v38 = a6;
  v39 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF38);
  sub_28C5FC();
  sub_306A68();
  sub_3055A8();
  sub_EC8C(&qword_40BF30, &qword_40BF28);
  sub_28C3A8(&qword_404508, &type metadata accessor for PlainButtonStyle);
  v25 = v30;
  v26 = v31;
  sub_3064E8();
  (*(v32 + 8))(v13, v26);
  return (*(v17 + 8))(v19, v25);
}

uint64_t sub_28B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v60 = a3;
  v61 = a4;
  v63 = a2;
  v59 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v53 - v12;
  v56 = sub_305A08();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_306278();
  v57 = *(v14 - 8);
  v58 = v14;
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CircleLockupView.Metrics(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_307048();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v53 - v27;
  v29 = *(v22 + 16);
  v29(&v53 - v27, v59, v21, v26);
  (v29)(v24, v28, v21);
  v30 = v60;

  sub_225438(v24, v20);
  v31 = type metadata accessor for CircleLockupView(0);
  v32 = a5 + v31[6];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  *(a5 + v31[7]) = 0;
  sub_28C8EC(v20, a5, type metadata accessor for CircleLockupView.Metrics);
  *(a5 + v31[5]) = v30;
  *&v70 = *(v20 + 1);
  (*(v57 + 16))(v16, &v20[*(v18 + 48)], v58);
  sub_70648();
  sub_305148();
  v33 = v20;
  v34 = a5;
  sub_28C9CC(v33, type metadata accessor for CircleLockupView.Metrics);
  (*(v22 + 8))(v28, v21);
  KeyPath = swift_getKeyPath();
  v36 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF70) + 36);
  *v36 = KeyPath;
  *(v36 + 8) = a6;
  *(v36 + 16) = a7;
  sub_306C58();
  sub_3051F8();
  v37 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF60) + 36));
  v38 = v71;
  *v37 = v70;
  v37[1] = v38;
  v37[2] = v72;
  v39 = sub_306898();
  v40 = swift_getKeyPath();
  v41 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF50) + 36));
  *v41 = v40;
  v41[1] = v39;
  LOBYTE(v39) = *(v61 + 8);

  if ((v39 & 1) == 0)
  {
    sub_30C7A8();
    v42 = sub_306088();
    sub_304108();

    v43 = v54;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v55 + 8))(v43, v56);
  }

  sub_302818();
  sub_30B8C8();

  v44 = v69;
  v45 = sub_30BAA8();
  v46 = v62;
  (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
  v47 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40BF38) + 36));
  v47->i64[0] = 0;
  v47->i64[1] = 0;
  v47[1] = vdupq_n_s64(0x4049000000000000uLL);
  v48 = v63;
  v47[2].i64[0] = v30;
  v47[2].i64[1] = v48;
  v47[3].i64[0] = v44;
  v49 = type metadata accessor for ImpressMetricsModifier();
  sub_1A2E3C(v46, v64);

  sub_306A08();
  sub_1A2EAC(v46);
  v50 = &v47->i8[*(v49 + 36)];
  v66 = 0;
  sub_306A08();

  v52 = v68;
  *v50 = v67;
  *(v50 + 1) = v52;
  return result;
}

uint64_t sub_28BD60()
{
  v1 = (type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_307048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v3;

  v12 = v1[7];
  v13 = sub_305258();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  v14 = v1[10];
  v15 = sub_302858();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_28BF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_307048() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 16);
  v12 = *(v2 + v10);
  v13 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_28AF80(a1, v2 + v6, v2 + v9, a2, v11, v12, v13);
}

uint64_t sub_28C080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_307D68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_28C0AC()
{
  v1 = (type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_307048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v3;

  v12 = v1[7];
  v13 = sub_305258();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  v14 = v1[10];
  v15 = sub_302858();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_28C28C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_307048() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_28B360(a1, v2 + v6, v2 + v9, a2, v11, v12);
}

uint64_t sub_28C3A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28C3F0()
{
  v1 = (type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_305258();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v1[10];
  v9 = sub_302858();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_28C548()
{
  v1 = type metadata accessor for MultipleSubscriptionChannelLockupView(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 28) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_28C5FC()
{
  result = qword_40BF40;
  if (!qword_40BF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BF38);
    sub_28C6B8();
    sub_28C3A8(&qword_407708, type metadata accessor for ImpressMetricsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BF40);
  }

  return result;
}

unint64_t sub_28C6B8()
{
  result = qword_40BF48;
  if (!qword_40BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BF50);
    sub_28C770();
    sub_EC8C(&qword_3FC788, &qword_3FC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BF48);
  }

  return result;
}

unint64_t sub_28C770()
{
  result = qword_40BF58;
  if (!qword_40BF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BF60);
    sub_28C7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BF58);
  }

  return result;
}

unint64_t sub_28C7FC()
{
  result = qword_40BF68;
  if (!qword_40BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BF70);
    sub_28C3A8(&qword_409780, type metadata accessor for CircleLockupView);
    sub_EC8C(&qword_406C48, &qword_406BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40BF68);
  }

  return result;
}

uint64_t sub_28C8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_28C964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_28C9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_28CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_301DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_28CB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_301DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_28CBD8()
{
  sub_301DF8();
  if (v0 <= 0x3F)
  {
    sub_28CC64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_28CC64()
{
  if (!qword_40BFE0)
  {
    v0 = sub_30C3D8();
    if (!v1)
    {
      atomic_store(v0, &qword_40BFE0);
    }
  }
}

unint64_t sub_28CCB8()
{
  result = qword_40C018;
  if (!qword_40C018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BED0);
    sub_28CD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C018);
  }

  return result;
}

unint64_t sub_28CD44()
{
  result = qword_40C020;
  if (!qword_40C020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40BEC8);
    sub_EC8C(&qword_40C028, &qword_40BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C020);
  }

  return result;
}

uint64_t sub_28CE70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_302BD8();
  v4 = objc_opt_self();
  v5 = [v4 currentTraitCollection];
  sub_30C968();

  v6 = [v4 currentTraitCollection];
  sub_30C968();

  *a1 = sub_305BD8();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C030);
  sub_28D024(v2, (a1 + *(v7 + 44)));
  LOBYTE(v6) = sub_3060D8();
  sub_304FD8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C038) + 36);
  *v16 = v6;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  LOBYTE(v6) = sub_3060E8();
  sub_304FD8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C040);
  v26 = a1 + *(result + 36);
  *v26 = v6;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_28D024@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C048);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v34 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v33 = v31 - v11;
  __chkstk_darwin(v12);
  v32 = v31 - v13;
  __chkstk_darwin(v14);
  v15 = *(a1 + 16);
  v31[0] = v31 - v16;
  v31[1] = v15;
  v31[2] = *(a1 + 32);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a1 + 32);

  sub_306A68();
  v37 = 0;
  sub_EC8C(&qword_3FB838, &qword_3FB808);
  sub_28D630();
  sub_3064F8();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a1 + 32);

  sub_306A68();
  v36 = 1;
  v22 = v32;
  sub_3064F8();
  v19(v6, v3);
  v23 = *(v8 + 16);
  v24 = v33;
  v25 = v31[0];
  v23(v33, v31[0], v7);
  v26 = v34;
  v23(v34, v22, v7);
  v27 = v35;
  v23(v35, v24, v7);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C058);
  v23(&v27[*(v28 + 48)], v26, v7);
  v29 = *(v8 + 8);
  v29(v22, v7);
  v29(v25, v7);
  v29(v26, v7);
  return (v29)(v24, v7);
}

void sub_28D490(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x80000000003436A0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v8._object = 0x8000000000343670;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v4 = sub_301AB8(v8, v9, v3, v10, v7);
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_28D554@<X0>(uint64_t a1@<X8>)
{
  sub_305B28();
  result = sub_3063A8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_28D630()
{
  result = qword_40C050;
  if (!qword_40C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C050);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_28D6F0()
{
  result = qword_40C060;
  if (!qword_40C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C040);
    sub_28D77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C060);
  }

  return result;
}

unint64_t sub_28D77C()
{
  result = qword_40C068;
  if (!qword_40C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C038);
    sub_EC8C(&qword_40C070, &qword_40C078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C068);
  }

  return result;
}

uint64_t sub_28D84C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_30CA48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_28D90C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_30CA48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MultipleSubscriptionConfirmationView()
{
  result = qword_40C0D8;
  if (!qword_40C0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28D9FC()
{
  sub_28DB54(319, &qword_40BE80, &type metadata accessor for LegacyChannelLockup, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5933C();
    if (v1 <= 0x3F)
    {
      sub_87DB0();
      if (v2 <= 0x3F)
      {
        sub_28DB54(319, &qword_3FEDD8, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_28DBB8();
          if (v4 <= 0x3F)
          {
            sub_30CA48();
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

void sub_28DB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_28DBB8()
{
  if (!qword_40B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40B7E0);
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_40B7D8);
    }
  }
}

uint64_t sub_28DC38@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MultipleSubscriptionConfirmationView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v7;
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28F5A8(v1, v8);
  v32 = *(v6 + 80);
  v9 = (v32 + 16) & ~v32;
  v10 = swift_allocObject();
  sub_28F610(v8, v10 + v9);
  v11 = sub_305BD8();
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C130) + 36);
  v29 = v2;
  sub_28F120(v2);
  sub_3051A8();
  v13 = sub_306138();
  v14 = sub_305558();
  v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C138) + 36)];
  *v15 = v14;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v15[17] = v13;
  *(v15 + 3) = v11;
  *a1 = sub_28F674;
  a1[1] = v10;
  v30 = *(v5 + 52);
  sub_28F5A8(v2, v8);
  v16 = swift_allocObject();
  sub_28F610(v8, v16 + v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C140);
  v18 = *(v17 + 52);
  v19 = sub_30CA48();
  v20 = *(*(v19 - 8) + 16);
  v21 = a1 + v18;
  v22 = v29;
  v20(v21, v29 + v30, v19);
  v23 = (a1 + *(v17 + 56));
  *v23 = sub_28F6F4;
  v23[1] = v16;
  v24 = *(v5 + 56);
  sub_28F5A8(v22, v8);
  v25 = swift_allocObject();
  sub_28F610(v8, v25 + v9);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C148);
  result = (v20)(a1 + *(v26 + 52), v22 + v24, v19);
  v28 = (a1 + *(v26 + 56));
  *v28 = sub_28F6FC;
  v28[1] = v25;
  return result;
}

uint64_t sub_28DF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v26 = a3;
  v27 = sub_305258();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v27);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultipleSubscriptionConfirmationView();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;
  v23 = a2;
  sub_3060A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C180);
  v11 = type metadata accessor for MultipleSubscriptionScrollableContentView();
  v12 = sub_28F8FC();
  v30 = v11;
  v31 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v26;
  sub_305068();
  sub_28F5A8(a2, v10);
  v14 = v27;
  (*(v5 + 16))(v7, v24, v27);
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = (v15 + v9 + *(v5 + 80)) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_28F610(v10, v17 + v15);
  (*(v5 + 32))(v17 + v16, v7, v14);
  v18 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C190) + 36));
  *v18 = sub_28F958;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  sub_28F5A8(v23, v10);
  v19 = swift_allocObject();
  sub_28F610(v10, v19 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C198);
  v21 = (v13 + *(result + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_28FB7C;
  v21[3] = v19;
  return result;
}

uint64_t sub_28E210@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v32 = a3;
  v5 = sub_305258();
  v6 = *(v5 - 8);
  v31 = *(v6 + 64);
  __chkstk_darwin(v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultipleSubscriptionConfirmationView();
  v29 = *(v8 - 8);
  v28 = *(v29 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultipleSubscriptionScrollableContentView();
  v12 = __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 16);
  v15(v14, a1, v5, v12);
  v16 = a2[5];
  v17 = a2[6];
  *&v14[v11[5]] = *a2;
  v18 = &v14[v11[6]];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = &v14[v11[7]];
  v33 = 0;

  sub_306A08();
  v20 = v35;
  *v19 = v34;
  *(v19 + 1) = v20;
  sub_28F5A8(a2, v10);
  v21 = v30;
  (v15)(v30, v27, v5);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = (v28 + *(v6 + 80) + v22) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_28F610(v10, v24 + v22);
  (*(v6 + 32))(v24 + v23, v21, v5);
  sub_28F8FC();
  sub_306448();

  return sub_28FEA4(v14);
}

uint64_t sub_28E4EC()
{
  sub_305248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  return sub_306A28();
}

uint64_t sub_28E568(uint64_t a1)
{
  v2 = sub_3041E8();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_30BA28();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v46 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = v41 - v9;
  v10 = sub_308F18();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v13 - 8);
  v47 = v41 - v14;
  v15 = sub_305A08();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_305248();
  v19 = *(a1 + 88);
  v58 = *(a1 + 72);
  v59 = v19;
  *&v64 = v20;
  *(&v64 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE90);
  sub_306A28();
  v22 = *(a1 + 96);
  LODWORD(v23) = *(a1 + 104);

  v24 = v22;
  if ((v23 & 1) == 0)
  {
    sub_30C7A8();
    v25 = v18;
    v26 = sub_306088();
    sub_304108();

    v18 = v25;
    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v16 + 8))(v25, v15);
    v24 = v58;
  }

  if (v24)
  {
    v41[1] = v24;
    sub_303318();
    v45 = v5;
    sub_303508();
    v41[0] = v12;
    sub_308F08();
    v27 = v54;
    sub_30BA18();
    sub_302718();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408128);
    sub_30B828();
    v43 = v23;
    v44 = v18;
    v42 = v16;
    *(swift_allocObject() + 16) = xmmword_315420;
    sub_30B818();
    sub_30B808();
    sub_308EF8();
    v23 = v50;
    v28 = v51;
    (*(v50 + 16))(v46, v27, v51);
    v29 = v47;
    v5 = v45;
    v16 = v42;
    v18 = v44;
    sub_30B838();
    v64 = v58;
    sub_EB68(&v64, &unk_408130);
    v63 = v59;
    sub_EB68(&v63, &qword_3FC878);
    v62 = v60;
    sub_EB68(&v62, &qword_408140);
    sub_1EBD0(v61);
    (*(v23 + 8))(v54, v28);
    LOBYTE(v23) = v43;
    (*(v48 + 8))(v41[0], v49);
    v30 = sub_30B858();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    sub_308E98();
  }

  v31 = v22;
  if ((v23 & 1) == 0)
  {
    sub_30C7A8();
    v32 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v16 + 8))(v18, v15);
    v31 = v56;
  }

  if (v31)
  {
    sub_308EB8();
  }

  if ((v23 & 1) == 0)
  {
    sub_30C7A8();
    v33 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v16 + 8))(v18, v15);
    v22 = v56;
  }

  if (v22)
  {
    sub_308EB8();
  }

  v34 = (a1 + *(type metadata accessor for MultipleSubscriptionConfirmationView() + 52));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v56) = v35;
  v57 = v36;
  v55 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A28();
  sub_3041C8();
  v37 = sub_3041D8();
  v38 = sub_30C7B8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Multiple Subscription Confirmation Sheet is now visible.", v39, 2u);
  }

  return (*(v53 + 8))(v5, v52);
}

uint64_t sub_28EDBC(uint64_t a1)
{
  v21 = sub_3041E8();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_305A08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);

  v11 = v9;
  if ((v10 & 1) == 0)
  {
    sub_30C7A8();
    v12 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v8, v5);
    v11 = v23;
  }

  if (v11)
  {
    sub_308EB8();
  }

  if ((v10 & 1) == 0)
  {
    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v6 + 8))(v8, v5);
    v9 = v23;
  }

  if (v9)
  {
    sub_308EB8();
  }

  v14 = (a1 + *(type metadata accessor for MultipleSubscriptionConfirmationView() + 52));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v23) = v15;
  v24 = v16;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A28();
  sub_3041C8();
  v17 = sub_3041D8();
  v18 = sub_30C7B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Multiple Subscription Confirmation Sheet is no longer visible.", v19, 2u);
  }

  return (*(v2 + 8))(v4, v21);
}

uint64_t sub_28F120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C150);
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C158);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = *(a1 + 64);
  LOBYTE(v22) = *(a1 + 56);
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A18();
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v22 = *(a1 + 72);
  v23 = v9;
  v24 = v10;
  if (v21 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE90);
    sub_306A18();
    v11 = sub_302BF8();
    v12 = *(a1 + 8);
    v13 = *(a1 + 32);
    *v7 = v11;
    *(v7 + 1) = v12;
    v20 = *(a1 + 16);
    *(v7 + 1) = v20;
    *(v7 + 4) = v13;
    swift_storeEnumTagMultiPayload();
    sub_28F7E8();
    sub_28F83C();

    return sub_305D48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEE90);
    sub_306A18();
    v15 = sub_302BF8();
    v16 = *(a1 + 8);
    v17 = *(a1 + 32);
    v18 = &v4[*(v2 + 36)];
    v20 = *(a1 + 16);

    sub_306BF8();
    v19 = sub_3060C8();
    v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C160) + 36)] = v19;
    *v4 = v15;
    *(v4 + 1) = v16;
    *(v4 + 1) = v20;
    *(v4 + 4) = v17;
    sub_28F778(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_28F7E8();
    sub_28F83C();
    sub_305D48();
    return sub_EB68(v4, &qword_40C150);
  }
}

uint64_t sub_28F3F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_305A08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a2 + *(type metadata accessor for MultipleSubscriptionConfirmationView() + 52));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v15) = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  result = sub_306A18();
  if (v14[15] == 1)
  {
    v11 = *(a2 + 96);
    v12 = *(a2 + 104);

    if ((v12 & 1) == 0)
    {
      sub_30C7A8();
      v13 = sub_306088();
      sub_304108();

      sub_3059F8();
      swift_getAtKeyPath();
      j__swift_release();
      result = (*(v4 + 8))(v6, v3);
      v11 = v15;
    }

    if (v11)
    {
      sub_308EB8();
    }
  }

  return result;
}

uint64_t sub_28F5A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleSubscriptionConfirmationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28F610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleSubscriptionConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_28F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultipleSubscriptionConfirmationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_28DF18(a1, v6, a2);
}

uint64_t sub_28F778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_28F7E8()
{
  result = qword_40C168;
  if (!qword_40C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C168);
  }

  return result;
}

unint64_t sub_28F83C()
{
  result = qword_40C170;
  if (!qword_40C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C150);
    sub_28F7E8();
    sub_EC8C(&qword_40C178, &qword_40C160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C170);
  }

  return result;
}

unint64_t sub_28F8FC()
{
  result = qword_40C188;
  if (!qword_40C188)
  {
    type metadata accessor for MultipleSubscriptionScrollableContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C188);
  }

  return result;
}

uint64_t sub_28F958()
{
  v1 = *(type metadata accessor for MultipleSubscriptionConfirmationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_305258();

  return sub_28E568(v0 + v2);
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for MultipleSubscriptionConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  j__swift_release();
  v5 = v1[13];
  v6 = sub_30CA48();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[14], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_28FB7C()
{
  v1 = *(type metadata accessor for MultipleSubscriptionConfirmationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_28EDBC(v2);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for MultipleSubscriptionConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_305258();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v14 = v2 | v7;
  v15 = *(v6 + 64);
  v9 = v0 + v3;

  j__swift_release();
  v10 = v1[13];
  v11 = sub_30CA48();
  v12 = *(*(v11 - 8) + 8);
  v12(v9 + v10, v11);
  v12(v9 + v1[14], v11);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v15, v14 | 7);
}

uint64_t sub_28FDC0()
{
  type metadata accessor for MultipleSubscriptionConfirmationView();
  sub_305258();

  return sub_28E4EC();
}

uint64_t sub_28FEA4(uint64_t a1)
{
  v2 = type metadata accessor for MultipleSubscriptionScrollableContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28FF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_305258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_290038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_305258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MultipleSubscriptionScrollableContentView()
{
  result = qword_40C200;
  if (!qword_40C200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29013C()
{
  sub_305258();
  if (v0 <= 0x3F)
  {
    sub_2901F0();
    if (v1 <= 0x3F)
    {
      sub_5933C();
      if (v2 <= 0x3F)
      {
        sub_290248();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2901F0()
{
  if (!qword_40BE80)
  {
    sub_309418();
    v0 = sub_30C3D8();
    if (!v1)
    {
      atomic_store(v0, &qword_40BE80);
    }
  }
}

void sub_290248()
{
  if (!qword_40C210)
  {
    v0 = sub_306A48();
    if (!v1)
    {
      atomic_store(v0, &qword_40C210);
    }
  }
}

uint64_t sub_2902B4@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v53 = type metadata accessor for MultipleSubscriptionChannelLockupView(0) - 8;
  __chkstk_darwin(v53);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C248);
  __chkstk_darwin(v58);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v51 - v6;
  __chkstk_darwin(v7);
  v60 = &v51 - v8;
  v9 = type metadata accessor for MultipleSubscriptionScrollableContentView();
  v10 = (v9 - 8);
  v54 = *(v9 - 8);
  v11 = *(v54 + 8);
  __chkstk_darwin(v9);
  v52 = type metadata accessor for MultipleSubscriptionTextView();
  __chkstk_darwin(v52);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C250);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_305258();
  v51 = *(*(v18 - 8) + 16);
  v51(v13, v1, v18);
  sub_2909D4(v1, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (v54[80] + 16) & ~v54[80];
  v20 = swift_allocObject();
  sub_290C74(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for MultipleSubscriptionScrollableContentView);
  sub_290BB8();
  v54 = v17;
  sub_306448();

  sub_290C10(v13);
  v21 = v53;
  v51(&v3[*(v53 + 28)], v1, v18);
  v22 = v10[8];
  v23 = *(v1 + v10[7]);
  v25 = *(v1 + v22);
  v24 = *(v1 + v22 + 8);
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  *&v3[v21[8]] = v23;
  v26 = &v3[v21[9]];
  *v26 = v25;
  *(v26 + 1) = v24;
  v27 = v21[10];
  v28 = enum case for Grid.c(_:);
  v29 = sub_302858();
  v30 = &v3[v27];
  v31 = v3;
  (*(*(v29 - 8) + 104))(v30, v28, v29);

  sub_305248();
  v32 = (v1 + v10[9]);
  v33 = *v32;
  v34 = v32[1];
  *&v63 = v33;
  *(&v63 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C260);
  sub_306A18();
  sub_306C58();
  sub_305638();
  v35 = v59;
  sub_290C74(v31, v59, type metadata accessor for MultipleSubscriptionChannelLockupView);
  v36 = (v35 + *(v58 + 36));
  v37 = v68;
  v36[4] = v67;
  v36[5] = v37;
  v36[6] = v69;
  v38 = v64;
  *v36 = v63;
  v36[1] = v38;
  v39 = v66;
  v36[2] = v65;
  v36[3] = v39;
  v40 = v60;
  sub_290CDC(v35, v60);
  v41 = v56;
  v42 = *(v56 + 16);
  v43 = v55;
  v44 = v54;
  v45 = v57;
  v42(v55, v54, v57);
  v46 = v61;
  sub_290D4C(v40, v61);
  v47 = v62;
  v42(v62, v43, v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C268);
  sub_290D4C(v46, &v47[*(v48 + 48)]);
  sub_290DBC(v40);
  v49 = *(v41 + 8);
  v49(v44, v45);
  sub_290DBC(v46);
  return (v49)(v43, v45);
}

uint64_t sub_290958()
{
  type metadata accessor for MultipleSubscriptionScrollableContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C260);
  return sub_306A28();
}

uint64_t sub_2909D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleSubscriptionScrollableContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_290A38()
{
  v1 = *(type metadata accessor for MultipleSubscriptionScrollableContentView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_305258();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_290B40()
{
  type metadata accessor for MultipleSubscriptionScrollableContentView();

  return sub_290958();
}

unint64_t sub_290BB8()
{
  result = qword_40C258;
  if (!qword_40C258)
  {
    type metadata accessor for MultipleSubscriptionTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C258);
  }

  return result;
}

uint64_t sub_290C10(uint64_t a1)
{
  v2 = type metadata accessor for MultipleSubscriptionTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_290C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_290CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_290D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_290DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_290E28()
{
  result = qword_40C270;
  if (!qword_40C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40C278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40C270);
  }

  return result;
}

uint64_t sub_290EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_305258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_290F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_305258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MultipleSubscriptionTextView()
{
  result = qword_40C2D8;
  if (!qword_40C2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_290FDC()
{
  result = sub_305258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_291064@<X0>(uint64_t a1@<X8>)
{
  sub_305248();
  sub_302BF8();
  v2 = sub_305BD8();
  v20 = 1;
  sub_29125C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_EB00(__dst, &v17, &qword_40C310);
  sub_EB68(v22, &qword_40C310);
  memcpy(&v19[7], __dst, 0x190uLL);
  v3 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_315420;
  v5 = sub_3060F8();
  *(v4 + 32) = v5;
  v6 = sub_306118();
  *(v4 + 33) = v6;
  v7 = sub_306108();
  sub_306108();
  if (sub_306108() != v5)
  {
    v7 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v6)
  {
    v7 = sub_306108();
  }

  if ((sub_302BB8() & 1) == 0)
  {
    sub_302C08();
  }

  sub_304FD8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = memcpy((a1 + 17), v19, 0x197uLL);
  *(a1 + 424) = v7;
  *(a1 + 432) = v9;
  *(a1 + 440) = v11;
  *(a1 + 448) = v13;
  *(a1 + 456) = v15;
  *(a1 + 464) = 0;
  return result;
}

uint64_t sub_29125C@<X0>(uint64_t a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 currentTraitCollection];
  v3 = sub_30C968();

  sub_306C58();
  sub_3051F8();
  LOBYTE(v76) = 1;
  LOBYTE(v71) = v117;
  LOBYTE(v106) = v119;
  if (v3)
  {
    LOBYTE(v81[0]) = 0;
    v92 = 0;
    LOBYTE(v93) = 1;
    v94 = v116;
    LOBYTE(v95) = v117;
    v96 = v118;
    v97 = v119;
    v99 = v120;
    LOBYTE(v100) = 0;
  }

  else
  {
    LOBYTE(v81[0]) = 1;
    v92 = 0;
    LOBYTE(v93) = 1;
    v94 = v116;
    LOBYTE(v95) = v117;
    v96 = v118;
    v97 = v119;
    v99 = v120;
    LOBYTE(v100) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409980);
  sub_291DD4(&qword_40C320, &qword_40C318);
  sub_291DD4(&qword_409990, &qword_409980);
  sub_305D48();
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v52._countAndFlagsBits = 0x80000000003436F0;
  v136._countAndFlagsBits = 0xD000000000000028;
  v136._object = 0x80000000003436C0;
  v138.value._countAndFlagsBits = 0;
  v138.value._object = 0;
  v6.super.isa = v5;
  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  sub_301AB8(v136, v138, v6, v140, v52);

  sub_306148();
  v7 = sub_306388();
  v9 = v8;
  v11 = v10;

  v66 = sub_306368();
  v60 = v12;
  v61 = v13;
  v15 = v14;
  sub_EBC8(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC538);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_315420;
  v17 = sub_3060F8();
  *(v16 + 32) = v17;
  v18 = sub_306118();
  *(v16 + 33) = v18;
  v19 = sub_306108();
  sub_306108();
  if (sub_306108() != v17)
  {
    v19 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v18)
  {
    v19 = sub_306108();
  }

  v20 = [v1 currentTraitCollection];
  v21 = sub_30C968();

  if ((v21 & 1) == 0 && (sub_302BB8() & 1) == 0 && (sub_302BB8() & 1) == 0)
  {
    sub_302C08();
  }

  sub_304FD8();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v64 = v15 & 1;
  v115 = v15 & 1;
  v111 = 0;
  v30 = [v1 currentTraitCollection];
  v31 = sub_30C968();

  sub_306C58();
  sub_3051F8();
  LOBYTE(v76) = 1;
  LOBYTE(v71) = v122;
  LOBYTE(v126) = v124;
  if (v31)
  {
    LOBYTE(v81[0]) = 0;
    v92 = 0;
    LOBYTE(v93) = 1;
    v94 = v121;
    LOBYTE(v95) = v122;
    v96 = v123;
    v97 = v124;
    v99 = v125;
    LOBYTE(v100) = 0;
  }

  else
  {
    LOBYTE(v81[0]) = 1;
    v92 = 0;
    LOBYTE(v93) = 1;
    v94 = v121;
    LOBYTE(v95) = v122;
    v96 = v123;
    v97 = v124;
    v99 = v125;
    LOBYTE(v100) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_409980);
  sub_291DD4(&qword_40C320, &qword_40C318);
  sub_291DD4(&qword_409990, &qword_409980);
  sub_305D48();
  v32 = [v4 mainBundle];
  v53._countAndFlagsBits = 0x8000000000343740;
  v137._countAndFlagsBits = 0xD00000000000002BLL;
  v137._object = 0x8000000000343710;
  v139.value._countAndFlagsBits = 0;
  v139.value._object = 0;
  v33.super.isa = v32;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v34 = sub_301AB8(v137, v139, v33, v141, v53);
  v57 = v35;
  v58 = v34;

  v56 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_315420;
  v37 = sub_3060F8();
  *(v36 + 32) = v37;
  v38 = sub_306118();
  *(v36 + 33) = v38;
  v39 = sub_306108();
  sub_306108();
  if (sub_306108() != v37)
  {
    v39 = sub_306108();
  }

  sub_306108();
  if (sub_306108() != v38)
  {
    v39 = sub_306108();
  }

  v40 = [v1 currentTraitCollection];
  v41 = sub_30C968();

  if ((v41 & 1) == 0 && (sub_302BB8() & 1) == 0 && (sub_302BB8() & 1) == 0)
  {
    sub_302C08();
  }

  sub_304FD8();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v105 = 0;
  v104 = 0;
  v50 = [v1 currentTraitCollection];
  sub_30C968();

  sub_306C58();
  sub_3051F8();
  v63 = v126;
  v59 = v128;
  v70 = 1;
  v69 = v127;
  v68 = v129;
  __src[2] = v133;
  __src[3] = v134;
  LOBYTE(__src[4]) = v135;
  __src[0] = v131;
  __src[1] = v132;
  *(&__src[10] + 8) = v106;
  BYTE8(__src[14]) = v110;
  *(&__src[13] + 8) = v109;
  *(&__src[12] + 8) = v108;
  *(&__src[11] + 8) = v107;
  v54 = v127;
  v55 = v129;
  *&v71 = v66;
  *(&v71 + 1) = v60;
  LOBYTE(v72) = v64;
  DWORD1(v72) = *&v114[3];
  *(&v72 + 1) = *v114;
  *(&v72 + 1) = v61;
  *&v73 = KeyPath;
  BYTE8(v73) = 1;
  *(&v73 + 9) = *v113;
  HIDWORD(v73) = *&v113[3];
  LOBYTE(v74) = v19;
  *(&v74 + 1) = *v112;
  DWORD1(v74) = *&v112[3];
  *(&v74 + 1) = v23;
  *v75 = v25;
  *&v75[8] = v27;
  *&v75[16] = v29;
  v75[24] = 0;
  *(&__src[5] + 8) = v72;
  *(&__src[4] + 8) = v71;
  *(&__src[9] + 1) = *&v75[9];
  *(&__src[8] + 8) = *v75;
  *(&__src[7] + 8) = v74;
  *(&__src[6] + 8) = v73;
  *&v76 = v58;
  *(&v76 + 1) = v57;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = _swiftEmptyArrayStorage;
  *&v78 = v56;
  BYTE8(v78) = 1;
  LOBYTE(v79) = v39;
  *(&v79 + 1) = v43;
  *v80 = v45;
  *&v80[8] = v47;
  *&v80[16] = v49;
  v80[24] = 0;
  *(&__src[19] + 9) = *&v80[9];
  __src[15] = v76;
  __src[16] = v77;
  __src[18] = v79;
  __src[19] = *v80;
  __src[17] = v78;
  memcpy(a1, __src, 0x150uLL);
  *(a1 + 336) = 0;
  *(a1 + 344) = 1;
  *(a1 + 352) = v63;
  *(a1 + 360) = v54;
  *(a1 + 368) = v59;
  *(a1 + 376) = v55;
  *(a1 + 384) = v130;
  v81[0] = v58;
  v81[1] = v57;
  v82 = 0;
  v83 = _swiftEmptyArrayStorage;
  v84 = v56;
  v85 = 1;
  v86 = v39;
  v87 = v43;
  v88 = v45;
  v89 = v47;
  v90 = v49;
  v91 = 0;
  sub_EB00(&v71, &v92, &qword_40C328);
  sub_EB00(&v76, &v92, &qword_40C328);
  sub_EB68(v81, &qword_40C328);
  v92 = v66;
  v93 = v60;
  LOBYTE(v94) = v64;
  *(&v94 + 1) = *v114;
  HIDWORD(v94) = *&v114[3];
  v95 = v61;
  v96 = KeyPath;
  v97 = 1;
  *v98 = *v113;
  *&v98[3] = *&v113[3];
  LOBYTE(v99) = v19;
  *(&v99 + 1) = *v112;
  DWORD1(v99) = *&v112[3];
  *(&v99 + 1) = v23;
  v100 = v25;
  v101 = v27;
  v102 = v29;
  v103 = 0;
  return sub_EB68(&v92, &qword_40C328);
}