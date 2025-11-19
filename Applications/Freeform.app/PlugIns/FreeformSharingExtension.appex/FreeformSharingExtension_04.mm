uint64_t sub_100072194(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v138 = a3;
  v139 = a4;
  v128 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v128);
  v127 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v7 = __chkstk_darwin(v136);
  v126 = (&v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v122 = &v112 - v10;
  v11 = __chkstk_darwin(v9);
  v131 = (&v112 - v12);
  __chkstk_darwin(v11);
  v14 = &v112 - v13;
  v15 = sub_10001FF68(&unk_1000B2A00);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v129 = &v112 - v20;
  v21 = __chkstk_darwin(v19);
  v124 = &v112 - v22;
  __chkstk_darwin(v21);
  v24 = &v112 - v23;
  v137 = sub_10007DE44();
  v25 = *(v137 - 8);
  v26 = __chkstk_darwin(v137);
  v116 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v125 = (&v112 - v29);
  v30 = __chkstk_darwin(v28);
  v119 = &v112 - v31;
  __chkstk_darwin(v30);
  v130 = &v112 - v32;
  v133 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v33 = __chkstk_darwin(v133);
  v120 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v132 = (&v112 - v36);
  v37 = __chkstk_darwin(v35);
  v39 = (&v112 - v38);
  result = __chkstk_darwin(v37);
  v135 = &v112 - v41;
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (a2 - a1 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_95;
  }

  v44 = v138 - a2;
  if (v138 - a2 != 0x8000000000000000 || v43 != -1)
  {
    v45 = (a2 - a1) / v43;
    v142 = a1;
    v141 = v139;
    if (v45 < v44 / v43)
    {
      v46 = v45 * v43;
      if (v139 < a1 || a1 + v46 <= v139)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v139 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v129 = (v139 + v46);
      v140 = v139 + v46;
      if (v46 >= 1 && a2 < v138)
      {
        v120 = v14 + 8;
        v118 = (v131 + 1);
        v132 = (v25 + 48);
        v125 = (v25 + 56);
        v126 = (v25 + 32);
        v122 = (v25 + 8);
        v123 = v43;
        v121 = v39;
        while (1)
        {
          v50 = v135;
          sub_100074828(a2, v135, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074828(v139, v39, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074828(v50, v14, type metadata accessor for CRLSELibraryViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 3)
          {
            v54 = sub_10001FF68(&qword_1000B2A20);

            sub_100074958(&v14[*(v54 + 64)], v24, &unk_1000B2A00);
            v55 = sub_10007DEB4();
            (*(*(v55 - 8) + 8))(v14, v55);
            v53 = v137;
          }

          else if (EnumCaseMultiPayload == 2)
          {
            v52 = v127;
            sub_1000748F0(v14, v127, type metadata accessor for CRLSELibraryViewModel.Board);
            sub_100023A78(v52 + *(v128 + 32), v24, &unk_1000B2A00);
            sub_100074890(v52, type metadata accessor for CRLSELibraryViewModel.Board);
            v53 = v137;
          }

          else
          {
            v53 = v137;
            (*v125)(v24, 1, 1, v137);
            sub_100074890(v14, type metadata accessor for CRLSELibraryViewModel.Item);
          }

          v56 = *v132;
          v57 = (*v132)(v24, 1, v53);
          v58 = v24;
          if (v57 == 1)
          {
            goto LABEL_35;
          }

          v59 = v14;
          v134 = a2;
          v60 = *v126;
          (*v126)(v130, v24, v53);
          sub_100074828(v39, v131, type metadata accessor for CRLSELibraryViewModel.Item);
          v61 = swift_getEnumCaseMultiPayload();
          if (v61 == 3)
          {
            v62 = v139;
            v67 = sub_10001FF68(&qword_1000B2A20);

            v68 = *(v67 + 64);
            v53 = v137;
            v69 = v131;
            v64 = v124;
            sub_100074958(v131 + v68, v124, &unk_1000B2A00);
            v70 = sub_10007DEB4();
            (*(*(v70 - 8) + 8))(v69, v70);
          }

          else
          {
            v62 = v139;
            if (v61 == 2)
            {
              v63 = v127;
              sub_1000748F0(v131, v127, type metadata accessor for CRLSELibraryViewModel.Board);
              v64 = v124;
              sub_100023A78(v63 + *(v128 + 32), v124, &unk_1000B2A00);
              v65 = type metadata accessor for CRLSELibraryViewModel.Board;
              v66 = v63;
              v53 = v137;
            }

            else
            {
              v64 = v124;
              (*v125)(v124, 1, 1, v53);
              v65 = type metadata accessor for CRLSELibraryViewModel.Item;
              v66 = v131;
            }

            sub_100074890(v66, v65);
          }

          v14 = v59;
          v71 = v56(v64, 1, v53);
          v139 = v62;
          if (v71 == 1)
          {
            break;
          }

          v73 = v119;
          v60(v119, v64, v53);
          v74 = v130;
          v75 = sub_10007DE24();
          v76 = *v122;
          (*v122)(v73, v137);
          v76(v74, v137);
          v77 = v121;
          sub_100074890(v121, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074890(v135, type metadata accessor for CRLSELibraryViewModelItemNode);
          a2 = v134;
          v39 = v77;
          v43 = v123;
          if (v75 == 1)
          {
            if (a1 < v134 || a1 >= v134 + v123)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v134)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v43;
            goto LABEL_42;
          }

LABEL_36:
          v72 = v139 + v43;
          if (a1 < v139 || a1 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v139)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v141 = v72;
          v139 = v72;
LABEL_42:
          a1 += v43;
          v142 = a1;
          if (v139 >= v129 || a2 >= v138)
          {
            goto LABEL_93;
          }
        }

        (*v122)(v130, v53);
        v58 = v64;
        a2 = v134;
        v43 = v123;
        v39 = v121;
LABEL_35:
        sub_100023AE0(v58, &unk_1000B2A00);
        sub_100074890(v39, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100074890(v135, type metadata accessor for CRLSELibraryViewModelItemNode);
        goto LABEL_36;
      }

      goto LABEL_93;
    }

    v119 = v18;
    v47 = v44 / v43 * v43;
    if (v139 < a2 || a2 + v47 <= v139)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v129;
    }

    else
    {
      v48 = v129;
      if (v139 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v78 = v139 + v47;
    if (v47 < 1)
    {
LABEL_92:
      v142 = a2;
      v140 = v78;
LABEL_93:
      sub_100074488(&v142, &v141, &v140);
      return 1;
    }

    v79 = v122;
    v115 = v122 + 8;
    v114 = v126 + 1;
    v80 = -v43;
    v118 = (v25 + 56);
    v131 = (v25 + 48);
    v121 = (v25 + 32);
    v117 = (v25 + 8);
    v81 = v78;
    v82 = v120;
    v124 = v80;
LABEL_55:
    v113 = v78;
    v83 = a2;
    a2 += v80;
    v134 = a2;
    v130 = v83;
    while (1)
    {
      v84 = v138;
      if (v83 <= a1)
      {
        v142 = v83;
        v140 = v113;
        goto LABEL_93;
      }

      v123 = v78;
      v85 = v81 + v80;
      v135 = v81 + v80;
      v86 = v132;
      sub_100074828(v85, v132, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(a2, v82, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v86, v79, type metadata accessor for CRLSELibraryViewModel.Item);
      v87 = swift_getEnumCaseMultiPayload();
      if (v87 == 3)
      {
        v90 = sub_10001FF68(&qword_1000B2A20);

        sub_100074958(v79 + *(v90 + 64), v48, &unk_1000B2A00);
        v91 = sub_10007DEB4();
        (*(*(v91 - 8) + 8))(v79, v91);
        v89 = v137;
      }

      else if (v87 == 2)
      {
        v88 = v127;
        sub_1000748F0(v79, v127, type metadata accessor for CRLSELibraryViewModel.Board);
        sub_100023A78(v88 + *(v128 + 32), v48, &unk_1000B2A00);
        sub_100074890(v88, type metadata accessor for CRLSELibraryViewModel.Board);
        v89 = v137;
      }

      else
      {
        v89 = v137;
        (*v118)(v48, 1, 1, v137);
        sub_100074890(v79, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      v92 = *v131;
      if ((*v131)(v48, 1, v89) == 1)
      {
        sub_100023AE0(v48, &unk_1000B2A00);
        v93 = 0;
        a2 = v134;
        v80 = v124;
        v94 = v82;
        goto LABEL_79;
      }

      v95 = *v121;
      (*v121)(v125, v48, v89);
      sub_100074828(v82, v126, type metadata accessor for CRLSELibraryViewModel.Item);
      v96 = swift_getEnumCaseMultiPayload();
      v97 = v95;
      if (v96 == 2)
      {
        break;
      }

      if (v96 != 3)
      {
        v101 = v119;
        (*v118)(v119, 1, 1, v89);
        v104 = type metadata accessor for CRLSELibraryViewModel.Item;
        v105 = v126;
        goto LABEL_72;
      }

      v98 = sub_10001FF68(&qword_1000B2A20);

      v99 = *(v98 + 64);
      v89 = v137;
      v100 = v126;
      v101 = v119;
      sub_100074958(v126 + v99, v119, &unk_1000B2A00);
      v102 = sub_10007DEB4();
      (*(*(v102 - 8) + 8))(v100, v102);
LABEL_73:
      v79 = v122;
      if (v92(v101, 1, v89) == 1)
      {
        (*v117)(v125, v89);
        sub_100023AE0(v101, &unk_1000B2A00);
        v93 = 0;
      }

      else
      {
        v106 = v116;
        v97(v116, v101, v89);
        v107 = v89;
        v108 = v125;
        v109 = sub_10007DE24();
        v110 = *v117;
        (*v117)(v106, v107);
        v110(v108, v107);
        v111 = v109 == 1;
        v79 = v122;
        v93 = v111;
      }

      a2 = v134;
      v94 = v120;
      v80 = v124;
LABEL_79:
      v138 = &v84[v80];
      v82 = v94;
      sub_100074890(v94, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074890(v132, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v93)
      {
        if (v84 < v130 || v138 >= v130)
        {
          swift_arrayInitWithTakeFrontToBack();
          v48 = v129;
          v78 = v123;
        }

        else
        {
          v48 = v129;
          v78 = v123;
          if (v84 != v130)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v81 <= v139)
        {
          goto LABEL_92;
        }

        goto LABEL_55;
      }

      v78 = v135;
      if (v84 < v81 || v138 >= v81)
      {
        swift_arrayInitWithTakeFrontToBack();
        v48 = v129;
      }

      else
      {
        v48 = v129;
        if (v84 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v81 = v78;
      v83 = v130;
      if (v135 <= v139)
      {
        a2 = v130;
        goto LABEL_92;
      }
    }

    v103 = v127;
    sub_1000748F0(v126, v127, type metadata accessor for CRLSELibraryViewModel.Board);
    v101 = v119;
    sub_100023A78(v103 + *(v128 + 32), v119, &unk_1000B2A00);
    v104 = type metadata accessor for CRLSELibraryViewModel.Board;
    v105 = v103;
    v89 = v137;
LABEL_72:
    sub_100074890(v105, v104);
    goto LABEL_73;
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_10007331C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v136 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v136);
  v135 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v134 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v12 = __chkstk_darwin(v11);
  v139 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v128 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v128 - v18;
  __chkstk_darwin(v17);
  v21 = &v128 - v20;
  v141 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v22 = __chkstk_darwin(v141);
  v143 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v138 = &v128 - v25;
  v26 = __chkstk_darwin(v24);
  v145 = &v128 - v27;
  result = __chkstk_darwin(v26);
  v144 = &v128 - v29;
  v140 = *(v30 + 72);
  if (!v140)
  {
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (a2 - a1 == 0x8000000000000000 && v140 == -1)
  {
    goto LABEL_101;
  }

  v31 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v140 != -1)
  {
    v32 = (a2 - a1) / v140;
    v152 = a1;
    v151 = a4;
    v142 = v11;
    if (v32 < v31 / v140)
    {
      v33 = v32 * v140;
      if (a4 < a1 || a1 + v33 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v143 = a4 + v33;
      v150 = a4 + v33;
      if (v33 >= 1 && a2 < a3)
      {
        v138 = "Recently Deleted";
        v139 = v19;
        v137 = a3;
        while (1)
        {
          v36 = v144;
          sub_100074828(a2, v144, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074828(a4, v145, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074828(v36, v21, type metadata accessor for CRLSELibraryViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v40 = v135;
              sub_1000748F0(v21, v135, type metadata accessor for CRLSELibraryViewModel.Board);
              v41 = (v40 + *(v136 + 24));
              v39 = *v41;
              v38 = v41[1];

              v42 = type metadata accessor for CRLSELibraryViewModel.Board;
LABEL_28:
              sub_100074890(v40, v42);
              goto LABEL_31;
            }

            v44 = sub_10001FF68(&qword_1000B2A20);
            v45 = &v21[*(v44 + 48)];
            v39 = *v45;
            v38 = v45[1];
            sub_100023AE0(&v21[*(v44 + 64)], &unk_1000B2A00);
            v46 = sub_10007DEB4();
            (*(*(v46 - 8) + 8))(v21, v46);
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              v40 = v134;
              sub_1000748F0(v21, v134, type metadata accessor for CRLSELibraryViewModel.Filter);
              v39 = sub_100018B58();
              v38 = v43;
              v42 = type metadata accessor for CRLSELibraryViewModel.Filter;
              goto LABEL_28;
            }

            if (*v21)
            {
              v38 = 0xE700000000000000;
              v39 = 0x737265646C6F46;
            }

            else
            {
              type metadata accessor for CRLSEExtensionContextManager();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
              v49 = sub_10007E404();
              v50 = sub_10007E404();
              v51 = sub_10007E404();
              v52 = a4;
              v53 = a2;
              v54 = [v48 localizedStringForKey:v49 value:v50 table:v51];

              v39 = sub_10007E444();
              v38 = v55;

              a2 = v53;
              a4 = v52;
              v19 = v139;
            }
          }

LABEL_31:
          v148 = v39;
          v149 = v38;
          sub_100074828(v145, v19, type metadata accessor for CRLSELibraryViewModel.Item);
          v56 = swift_getEnumCaseMultiPayload();
          if (v56 > 1)
          {
            if (v56 != 2)
            {
              v63 = sub_10001FF68(&qword_1000B2A20);
              v64 = &v19[*(v63 + 48)];
              v58 = *v64;
              v57 = v64[1];
              sub_100023AE0(&v19[*(v63 + 64)], &unk_1000B2A00);
              v65 = sub_10007DEB4();
              (*(*(v65 - 8) + 8))(v19, v65);
              goto LABEL_41;
            }

            v59 = v135;
            sub_1000748F0(v19, v135, type metadata accessor for CRLSELibraryViewModel.Board);
            v60 = (v59 + *(v136 + 24));
            v58 = *v60;
            v57 = v60[1];

            v61 = type metadata accessor for CRLSELibraryViewModel.Board;
          }

          else
          {
            if (!v56)
            {
              if (*v19)
              {
                v57 = 0xE700000000000000;
                v58 = 0x737265646C6F46;
              }

              else
              {
                type metadata accessor for CRLSEExtensionContextManager();
                v66 = swift_getObjCClassFromMetadata();
                v67 = [objc_opt_self() bundleForClass:v66];
                v68 = sub_10007E404();
                v69 = sub_10007E404();
                v70 = sub_10007E404();
                v133 = a2;
                v71 = v70;
                v72 = a4;
                v73 = [v67 localizedStringForKey:v68 value:v69 table:v70];

                a2 = v133;
                v58 = sub_10007E444();
                v57 = v74;

                a4 = v72;
                v19 = v139;
              }

              goto LABEL_41;
            }

            v59 = v134;
            sub_1000748F0(v19, v134, type metadata accessor for CRLSELibraryViewModel.Filter);
            v58 = sub_100018B58();
            v57 = v62;
            v61 = type metadata accessor for CRLSELibraryViewModel.Filter;
          }

          sub_100074890(v59, v61);
LABEL_41:
          v146 = v58;
          v147 = v57;
          sub_1000610DC();
          v75 = sub_10007E764();

          sub_100074890(v145, type metadata accessor for CRLSELibraryViewModelItemNode);
          sub_100074890(v144, type metadata accessor for CRLSELibraryViewModelItemNode);
          if (v75 == -1)
          {
            v76 = v140;
            v78 = v137;
            if (a1 < a2 || a1 >= a2 + v140)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v76;
          }

          else
          {
            v76 = v140;
            v77 = a4 + v140;
            v78 = v137;
            if (a1 < a4 || a1 >= v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v151 = v77;
            a4 += v76;
          }

          a1 += v76;
          v152 = a1;
          if (a4 >= v143 || a2 >= v78)
          {
            goto LABEL_99;
          }
        }
      }

      goto LABEL_99;
    }

    v34 = v31 / v140 * v140;
    if (a4 < a2 || a2 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v34;
    if (v34 < 1)
    {
LABEL_98:
      v152 = a2;
      v150 = v79;
LABEL_99:
      sub_100074488(&v152, &v151, &v150);
      return 1;
    }

    v80 = -v140;
    v130 = "Recently Deleted";
    v81 = a4 + v34;
    v145 = -v140;
    v131 = v16;
    v132 = a4;
LABEL_60:
    v129 = v79;
    v82 = a2;
    v83 = a2 + v80;
    v133 = a2 + v80;
    v84 = v79;
    v144 = v82;
    while (1)
    {
      if (v82 <= a1)
      {
        v152 = v82;
        v150 = v129;
        goto LABEL_99;
      }

      v85 = a3;
      v140 = v84;
      v86 = v81 + v80;
      v87 = v138;
      sub_100074828(v81 + v80, v138, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v83, v143, type metadata accessor for CRLSELibraryViewModelItemNode);
      v88 = v131;
      sub_100074828(v87, v131, type metadata accessor for CRLSELibraryViewModel.Item);
      v89 = swift_getEnumCaseMultiPayload();
      if (v89 > 1)
      {
        if (v89 == 2)
        {
          v92 = v88;
          v93 = v135;
          sub_1000748F0(v92, v135, type metadata accessor for CRLSELibraryViewModel.Board);
          v94 = (v93 + *(v136 + 24));
          v91 = *v94;
          v90 = v94[1];

          v95 = type metadata accessor for CRLSELibraryViewModel.Board;
LABEL_71:
          sub_100074890(v93, v95);
          goto LABEL_74;
        }

        v98 = sub_10001FF68(&qword_1000B2A20);
        v99 = &v88[*(v98 + 48)];
        v91 = *v99;
        v90 = v99[1];
        sub_100023AE0(&v88[*(v98 + 64)], &unk_1000B2A00);
        v100 = sub_10007DEB4();
        (*(*(v100 - 8) + 8))(v88, v100);
      }

      else
      {
        if (v89)
        {
          v96 = v88;
          v93 = v134;
          sub_1000748F0(v96, v134, type metadata accessor for CRLSELibraryViewModel.Filter);
          v91 = sub_100018B58();
          v90 = v97;
          v95 = type metadata accessor for CRLSELibraryViewModel.Filter;
          goto LABEL_71;
        }

        if (*v88)
        {
          v90 = 0xE700000000000000;
          v91 = 0x737265646C6F46;
        }

        else
        {
          type metadata accessor for CRLSEExtensionContextManager();
          v101 = swift_getObjCClassFromMetadata();
          v102 = [objc_opt_self() bundleForClass:v101];
          v103 = sub_10007E404();
          v104 = sub_10007E404();
          v105 = sub_10007E404();
          v106 = [v102 localizedStringForKey:v103 value:v104 table:v105];

          v91 = sub_10007E444();
          v90 = v107;

          v80 = v145;
        }
      }

LABEL_74:
      v148 = v91;
      v149 = v90;
      sub_100074828(v143, v139, type metadata accessor for CRLSELibraryViewModel.Item);
      v108 = swift_getEnumCaseMultiPayload();
      if (v108 > 1)
      {
        if (v108 == 2)
        {
          v111 = v135;
          sub_1000748F0(v139, v135, type metadata accessor for CRLSELibraryViewModel.Board);
          v112 = (v111 + *(v136 + 24));
          v110 = *v112;
          v109 = v112[1];

          sub_100074890(v111, type metadata accessor for CRLSELibraryViewModel.Board);
        }

        else
        {
          v115 = sub_10001FF68(&qword_1000B2A20);
          v116 = v139;
          v117 = &v139[*(v115 + 48)];
          v110 = *v117;
          v109 = v117[1];
          sub_100023AE0(&v139[*(v115 + 64)], &unk_1000B2A00);
          v118 = sub_10007DEB4();
          (*(*(v118 - 8) + 8))(v116, v118);
        }
      }

      else
      {
        if (v108)
        {
          v113 = v134;
          sub_1000748F0(v139, v134, type metadata accessor for CRLSELibraryViewModel.Filter);
          v110 = sub_100018B58();
          v109 = v114;
          sub_100074890(v113, type metadata accessor for CRLSELibraryViewModel.Filter);
          goto LABEL_84;
        }

        if (*v139)
        {
          v109 = 0xE700000000000000;
          v110 = 0x737265646C6F46;
          goto LABEL_84;
        }

        type metadata accessor for CRLSEExtensionContextManager();
        v119 = swift_getObjCClassFromMetadata();
        v120 = [objc_opt_self() bundleForClass:v119];
        v137 = v120;
        v121 = sub_10007E404();
        v122 = sub_10007E404();
        v123 = sub_10007E404();
        v124 = [v120 localizedStringForKey:v121 value:v122 table:v123];

        v110 = sub_10007E444();
        v109 = v125;
      }

      v80 = v145;
LABEL_84:
      v126 = v85 + v80;
      v146 = v110;
      v147 = v109;
      sub_1000610DC();
      v127 = sub_10007E764();

      sub_100074890(v143, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074890(v138, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v127 == -1)
      {
        a2 = v133;
        a3 = v126;
        if (v85 < v144 || v126 >= v144)
        {
          swift_arrayInitWithTakeFrontToBack();
          v80 = v145;
        }

        else
        {
          v80 = v145;
          if (v85 != v144)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v79 = v140;
        if (v81 <= v132)
        {
          goto LABEL_98;
        }

        goto LABEL_60;
      }

      v84 = v86;
      v83 = v133;
      a3 = v126;
      if (v85 < v81 || v126 >= v81)
      {
        swift_arrayInitWithTakeFrontToBack();
        v80 = v145;
      }

      else
      {
        v80 = v145;
        if (v85 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v81 = v86;
      v82 = v144;
      if (v86 <= v132)
      {
        v79 = v86;
        a2 = v144;
        goto LABEL_98;
      }
    }
  }

LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_1000743E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100074474(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100074488(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10007456C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007E904();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10007E904();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100075CCC();
          for (i = 0; i != v6; ++i)
          {
            sub_10001FF68(&qword_1000B2998);
            v9 = sub_1000746EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100033C48();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000746EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007E844();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10007476C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000747C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10007E904();
  }

  return sub_10007E854();
}

uint64_t sub_100074828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000748F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074958(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10001FF68(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000749C0(uint64_t a1, uint64_t a2)
{
  v154 = a2;
  v155 = a1;
  v3 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v3 - 8);
  v143 = &v131 - v4;
  v140 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  v5 = __chkstk_darwin(v140);
  v151 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v144 = &v131 - v7;
  v165 = sub_10001FF68(&qword_1000B4250);
  v8 = __chkstk_darwin(v165);
  v159 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v148 = &v131 - v10;
  v166 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v11 = __chkstk_darwin(v166);
  v156 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v131 - v13;
  v15 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v16 = __chkstk_darwin(v15 - 8);
  v149 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v164 = &v131 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = &v131 - v21;
  v22 = __chkstk_darwin(v20);
  v146 = &v131 - v23;
  v24 = __chkstk_darwin(v22);
  v150 = &v131 - v25;
  v26 = __chkstk_darwin(v24);
  v158 = &v131 - v27;
  v28 = __chkstk_darwin(v26);
  v147 = &v131 - v29;
  __chkstk_darwin(v28);
  v162 = &v131 - v30;
  v31 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v157 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v138 = &v131 - v36;
  v37 = __chkstk_darwin(v35);
  v137 = &v131 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v131 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v131 - v43;
  __chkstk_darwin(v42);
  v46 = &v131 - v45;
  v47 = v2 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_libraryNode;
  v48 = *(v32 + 56);
  v48(v2 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_libraryNode, 1, 1, v31);
  v139 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
  v48(v2 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards, 1, 1, v31);
  v136 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents;
  v142 = v32 + 56;
  v141 = v48;
  v48(v2 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents, 1, 1, v31);
  v49 = v155;
  v50 = v47;
  swift_beginAccess();
  sub_100075BEC(v49, v47);
  swift_endAccess();
  v153 = v32;
  v53 = *(v32 + 48);
  v51 = v32 + 48;
  v52 = v53;
  if (v53(v50, 1, v31))
  {
    goto LABEL_34;
  }

  v133 = v52;
  v134 = v51;
  v131 = v46;
  v132 = v44;
  v152 = v2;
  v145 = v31;
  v54 = *(v31 + 20);
  v135 = v50;
  v55 = *(v50 + v54);
  v56 = sub_10001FF68(&unk_1000B4240);
  v57 = *(v56 - 8);
  v58 = *(v57 + 56);
  v59 = v162;
  v163 = v56;
  v58(v162, 1, 5);
  v60 = v59;
  v61 = v147;
  sub_1000748F0(v60, v147, type metadata accessor for CRLSELibraryViewModel.Filter);
  v62 = *(v55 + 16);

  v64 = v158;
  v65 = v153;
  v66 = v148;
  v162 = v62;
  if (!v62)
  {
LABEL_32:
    sub_100074890(v61, type metadata accessor for CRLSELibraryViewModel.Filter);

    v2 = v152;
    v49 = v155;
    v31 = v145;
    goto LABEL_33;
  }

  v67 = 0;
  v161 = (v57 + 48);
  while (1)
  {
    if (v67 >= *(v55 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
      return result;
    }

    sub_100074828(v55 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v67, v41, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_100074828(v41, v14, type metadata accessor for CRLSELibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v73 = type metadata accessor for CRLSELibraryViewModel.Item;
    v74 = v14;
LABEL_21:
    sub_100074890(v74, v73);
LABEL_22:
    ++v67;
    result = sub_100074890(v41, type metadata accessor for CRLSELibraryViewModelItemNode);
    if (v162 == v67)
    {
      goto LABEL_32;
    }
  }

  sub_1000748F0(v14, v64, type metadata accessor for CRLSELibraryViewModel.Filter);
  v68 = *(v165 + 48);
  sub_100074828(v64, v66, type metadata accessor for CRLSELibraryViewModel.Filter);
  v69 = v61;
  sub_100074828(v61, v66 + v68, type metadata accessor for CRLSELibraryViewModel.Filter);
  v70 = *v161;
  v71 = (*v161)(v66, 5, v163);
  if (v71 > 2)
  {
    if (v71 == 3)
    {
      v72 = v70(v66 + v68, 5, v163) == 3;
    }

    else if (v71 == 4)
    {
      v72 = v70(v66 + v68, 5, v163) == 4;
    }

    else
    {
      v72 = v70(v66 + v68, 5, v163) == 5;
    }

    goto LABEL_19;
  }

  if (v71)
  {
    if (v71 == 1)
    {
      v72 = v70(v66 + v68, 5, v163) == 1;
    }

    else
    {
      v72 = v70(v66 + v68, 5, v163) == 2;
    }

LABEL_19:
    if (v72)
    {
      goto LABEL_70;
    }

LABEL_20:
    sub_100023AE0(v66, &qword_1000B4250);
    v73 = type metadata accessor for CRLSELibraryViewModel.Filter;
    v64 = v158;
    v74 = v158;
    goto LABEL_21;
  }

  v75 = v150;
  sub_100074828(v66, v150, type metadata accessor for CRLSELibraryViewModel.Filter);
  if (v70(v66 + v68, 5, v163))
  {
    sub_100074890(v75, type metadata accessor for CRLSELibraryViewModel.Folder);
    v61 = v69;
    goto LABEL_20;
  }

  v76 = v66 + v68;
  v77 = v144;
  sub_1000748F0(v76, v144, type metadata accessor for CRLSELibraryViewModel.Folder);
  if ((sub_10007DE74() & 1) == 0 || ((v78 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v79 = *(v75 + v78), v80 = *(v75 + v78 + 8), v81 = (v77 + v78), v79 != *v81) || v80 != v81[1]) && (sub_10007EAA4() & 1) == 0 || ((v82 = *(v140 + 20), v83 = *(v75 + v82), v84 = *(v75 + v82 + 8), v85 = (v77 + v82), v83 != *v85) || v84 != v85[1]) && (sub_10007EAA4() & 1) == 0)
  {
    sub_100074890(v77, type metadata accessor for CRLSELibraryViewModel.Folder);
    sub_100074890(v75, type metadata accessor for CRLSELibraryViewModel.Folder);
    sub_100074890(v66, type metadata accessor for CRLSELibraryViewModel.Filter);
    v86 = v158;
    sub_100074890(v158, type metadata accessor for CRLSELibraryViewModel.Filter);
    v61 = v69;
    v64 = v86;
    goto LABEL_22;
  }

  sub_100074890(v77, type metadata accessor for CRLSELibraryViewModel.Folder);
  sub_100074890(v75, type metadata accessor for CRLSELibraryViewModel.Folder);
  v61 = v69;
LABEL_70:
  sub_100074890(v66, type metadata accessor for CRLSELibraryViewModel.Filter);
  sub_100074890(v158, type metadata accessor for CRLSELibraryViewModel.Filter);
  sub_100074890(v61, type metadata accessor for CRLSELibraryViewModel.Filter);

  v119 = v132;
  sub_1000748F0(v41, v132, type metadata accessor for CRLSELibraryViewModelItemNode);
  v120 = v119;
  v121 = v131;
  sub_1000748F0(v120, v131, type metadata accessor for CRLSELibraryViewModelItemNode);
  v122 = v121;
  v123 = v143;
  sub_1000748F0(v122, v143, type metadata accessor for CRLSELibraryViewModelItemNode);
  v31 = v145;
  v141(v123, 0, 1, v145);
  v2 = v152;
  v124 = v139;
  swift_beginAccess();
  sub_100075C5C(v123, v2 + v124);
  swift_endAccess();
  v49 = v155;
LABEL_33:
  v50 = v135;
  v52 = v133;
LABEL_34:
  if (!v52(v50, 1, v31))
  {
    v152 = v2;
    v145 = v31;
    v87 = *(v50 + *(v31 + 20));
    v88 = sub_10001FF68(&unk_1000B4240);
    v89 = *(v88 - 8);
    v90 = v146;
    (*(v89 + 56))(v146, 2, 5, v88);
    sub_1000748F0(v90, v160, type metadata accessor for CRLSELibraryViewModel.Filter);
    v91 = *(v87 + 16);

    v92 = v159;
    v94 = v156;
    v93 = v157;
    v95 = v153;
    if (v91)
    {
      v96 = 0;
      v97 = (v89 + 48);
      do
      {
        if (v96 >= *(v87 + 16))
        {
          goto LABEL_74;
        }

        sub_100074828(v87 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v96, v93, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100074828(v93, v94, type metadata accessor for CRLSELibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v98 = v164;
          sub_1000748F0(v94, v164, type metadata accessor for CRLSELibraryViewModel.Filter);
          v99 = v92;
          v100 = *(v165 + 48);
          sub_100074828(v98, v99, type metadata accessor for CRLSELibraryViewModel.Filter);
          sub_100074828(v160, v99 + v100, type metadata accessor for CRLSELibraryViewModel.Filter);
          v101 = *v97;
          v102 = (*v97)(v99, 5, v88);
          if (v102 > 2)
          {
            if (v102 != 3)
            {
              v93 = v157;
              if (v102 == 4)
              {
                v105 = v159 + v100;
                v92 = v159;
                if (v101(v105, 5, v88) == 4)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v110 = v159 + v100;
                v92 = v159;
                if (v101(v110, 5, v88) == 5)
                {
                  goto LABEL_72;
                }
              }

              goto LABEL_57;
            }

            v108 = v159 + v100;
            v92 = v159;
            v104 = v101(v108, 5, v88) == 3;
            goto LABEL_53;
          }

          if (v102)
          {
            if (v102 == 1)
            {
              v103 = v159 + v100;
              v92 = v159;
              v104 = v101(v103, 5, v88) == 1;
            }

            else
            {
              v109 = v159 + v100;
              v92 = v159;
              v104 = v101(v109, 5, v88) == 2;
            }

LABEL_53:
            v93 = v157;
            if (v104)
            {
              goto LABEL_72;
            }

            goto LABEL_57;
          }

          v106 = v159;
          v107 = v149;
          sub_100074828(v159, v149, type metadata accessor for CRLSELibraryViewModel.Filter);
          if (v101(v106 + v100, 5, v88))
          {
            sub_100074890(v107, type metadata accessor for CRLSELibraryViewModel.Folder);
            v92 = v106;
            v93 = v157;
LABEL_57:
            sub_100023AE0(v92, &qword_1000B4250);
            sub_100074890(v164, type metadata accessor for CRLSELibraryViewModel.Filter);
            v94 = v156;
            goto LABEL_38;
          }

          sub_1000748F0(v106 + v100, v151, type metadata accessor for CRLSELibraryViewModel.Folder);
          if (sub_10007DE74())
          {
            if (v111 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v112 = *(v107 + v111), v113 = *(v107 + v111 + 8), v114 = (v151 + v111), v112 == *v114) && v113 == v114[1] || (sub_10007EAA4())
            {
              if (v115 = *(v140 + 20), v116 = *(v107 + v115), v117 = *(v107 + v115 + 8), v118 = (v151 + v115), v116 == *v118) && v117 == v118[1] || (sub_10007EAA4())
              {
                sub_100074890(v151, type metadata accessor for CRLSELibraryViewModel.Folder);
                sub_100074890(v107, type metadata accessor for CRLSELibraryViewModel.Folder);
                v92 = v159;
                v93 = v157;
LABEL_72:
                sub_100074890(v92, type metadata accessor for CRLSELibraryViewModel.Filter);
                sub_100074890(v164, type metadata accessor for CRLSELibraryViewModel.Filter);
                sub_100074890(v160, type metadata accessor for CRLSELibraryViewModel.Filter);

                v125 = v138;
                sub_1000748F0(v93, v138, type metadata accessor for CRLSELibraryViewModelItemNode);
                v126 = v125;
                v127 = v137;
                sub_1000748F0(v126, v137, type metadata accessor for CRLSELibraryViewModelItemNode);
                v128 = v127;
                v129 = v143;
                sub_1000748F0(v128, v143, type metadata accessor for CRLSELibraryViewModelItemNode);
                v141(v129, 0, 1, v145);
                v2 = v152;
                v130 = v136;
                swift_beginAccess();
                sub_100075C5C(v129, v2 + v130);
                swift_endAccess();
                goto LABEL_67;
              }
            }
          }

          sub_100074890(v151, type metadata accessor for CRLSELibraryViewModel.Folder);
          sub_100074890(v107, type metadata accessor for CRLSELibraryViewModel.Folder);
          v92 = v159;
          sub_100074890(v159, type metadata accessor for CRLSELibraryViewModel.Filter);
          sub_100074890(v164, type metadata accessor for CRLSELibraryViewModel.Filter);
          v94 = v156;
          v93 = v157;
        }

        else
        {
          sub_100074890(v94, type metadata accessor for CRLSELibraryViewModel.Item);
        }

LABEL_38:
        ++v96;
        result = sub_100074890(v93, type metadata accessor for CRLSELibraryViewModelItemNode);
      }

      while (v91 != v96);
    }

    sub_100074890(v160, type metadata accessor for CRLSELibraryViewModel.Filter);

    v2 = v152;
LABEL_67:
    v49 = v155;
  }

  sub_10006C27C();
  sub_100023AE0(v49, &qword_1000B2930);
  return v2;
}

uint64_t sub_100075BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B2930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B2930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100075CCC()
{
  result = qword_1000B29A0;
  if (!qword_1000B29A0)
  {
    sub_10001FDB8(&qword_1000B2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B29A0);
  }

  return result;
}

NSString sub_100075D30()
{
  result = sub_10007E404();
  static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName = result;
  return result;
}

uint64_t *CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.unsafeMutableAddressor()
{
  if (qword_1000B1DA0 != -1)
  {
    swift_once();
  }

  return &static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName;
}

uint64_t CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1000760A0()
{
  v1 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() sharedConnection];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000768A0(v4);
  }

  sub_1000768B0(v2);
  return v3;
}

id CRLDeviceManagementRestrictionsManager.__deallocating_deinit()
{
  v1 = sub_1000760A0();
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10007621C()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLDeviceManagementRestrictionsManager()) init];
  CRLDeviceManagementRestrictionsManager.registerObserver()();
  qword_1000B4670 = v0;
}

id CRLDeviceManagementRestrictionsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000762B4(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

Swift::Void __swiftcall CRLDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = sub_1000760A0();
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver:v0];
  }

  v3 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v4 = *(v0 + OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v4)
  {
    v5 = [v4 isMathPaperSolvingAllowed];
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  v7 = 1;
  swift_beginAccess();
  *(v0 + v6) = v5;
  v8 = *(v0 + v3);
  if (v8)
  {
    v7 = [v8 isKeyboardMathSolvingAllowed];
  }

  v9 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  v10 = 1;
  swift_beginAccess();
  *(v0 + v9) = v7;
  v11 = *(v0 + v3);
  if (v11)
  {
    v10 = [v11 isDefinitionLookupAllowed];
  }

  v12 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(v0 + v12) = v10;
}

id CRLDeviceManagementRestrictionsManager.init()()
{
  v0[OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed] = 1;
  *&v0[OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager____lazy_storage___connection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v2, "init");
}

void _s24FreeformSharingExtension38CRLDeviceManagementRestrictionsManagerC63profileConnectionDidReceiveEffectiveSettingsChangedNotification_8userInfoySo09MCProfileI0CSg_SDys11AnyHashableVypGSgtF_0(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isMathPaperSolvingAllowed];
  v4 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  v5 = v3 ^ *(v1 + v4);
  if (v5)
  {
    *(v1 + v4) = [a1 isMathPaperSolvingAllowed];
  }

  v6 = [a1 isKeyboardMathSolvingAllowed];
  v7 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  if (v6 != *(v1 + v7))
  {
    *(v1 + v7) = [a1 isKeyboardMathSolvingAllowed];
    v5 = 1;
  }

  v8 = [a1 isDefinitionLookupAllowed];
  v9 = OBJC_IVAR____TtC24FreeformSharingExtension38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  if (v8 == *(v1 + v9))
  {
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(v1 + v9) = [a1 isDefinitionLookupAllowed];
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_1000B1DA0 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0 userInfo:0];
}

uint64_t sub_1000767F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_100076850(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1000768A0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1000768B0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000768D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100076974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100076A04()
{
  result = type metadata accessor for CRLFolderIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100076A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DEB4();
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

uint64_t sub_100076B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007DEB4();
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

uint64_t sub_100076C14(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B4890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_100077DB8();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007DEB4();
  sub_100077C08(&qword_1000B2390, &type metadata accessor for UUID);
  sub_10007EA54();
  if (!v1)
  {
    type metadata accessor for CRLFolderIdentifierStorage(0);
    v8[14] = 1;
    sub_10007EA24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100076DD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10007DEB4();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10001FF68(&qword_1000B4880);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_100077DB8();
  sub_10007EBD4();
  if (v2)
  {
    return sub_1000211F8(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_100077C08(&qword_1000B2328, &type metadata accessor for UUID);
  v14 = v26;
  sub_10007E9C4();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_10007E994();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_100077E0C(v19, v18);
  sub_1000211F8(a1);
  return sub_100077E70(v19);
}

uint64_t sub_100077100()
{
  if (*v0)
  {
    return 0x6D614E72656E776FLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_100077138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_10007EAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007EAA4();

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

uint64_t sub_10007721C(uint64_t a1)
{
  v2 = sub_100077DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077258(uint64_t a1)
{
  v2 = sub_100077DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000772C4()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_10007736C()
{
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();

  return sub_10007E494();
}

Swift::Int sub_100077408()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_1000774F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001FF68(&qword_1000B4858);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021160(a1, a1[3]);
  sub_100077CFC();
  sub_10007EBD4();
  if (!v2)
  {
    v12 = v15;
    sub_100077C08(&qword_1000B4868, type metadata accessor for CRLFolderIdentifierStorage);
    v13 = v17;
    sub_10007E9C4();
    (*(v16 + 8))(v8, v6);
    sub_100077D50(v13, v11, type metadata accessor for CRLFolderIdentifierStorage);
    sub_100077D50(v11, v12, type metadata accessor for CRLFolderIdentifier);
  }

  return sub_1000211F8(a1);
}

uint64_t sub_100077768(uint64_t a1)
{
  v2 = sub_100077CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000777A4(uint64_t a1)
{
  v2 = sub_100077CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000777F8(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B4870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100021160(a1, a1[3]);
  sub_100077CFC();
  sub_10007EBE4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_100077C08(&qword_1000B4878, type metadata accessor for CRLFolderIdentifierStorage);
  sub_10007EA54();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_100077970()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

uint64_t sub_100077A14()
{
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return sub_10007E494();
}

Swift::Int sub_100077AB4()
{
  sub_10007EB04();
  sub_10007DEB4();
  sub_100077C08(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  sub_10007E494();
  return sub_10007EB54();
}

BOOL sub_100077B54(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_10007DE74())
  {
    v4 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_10007EAA4() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100077C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100077C50(void *a1)
{
  a1[1] = sub_100077C08(&qword_1000B24F8, type metadata accessor for CRLFolderIdentifier);
  a1[2] = sub_100077C08(&qword_1000B2508, type metadata accessor for CRLFolderIdentifier);
  result = sub_100077C08(&qword_1000B4850, type metadata accessor for CRLFolderIdentifier);
  a1[3] = result;
  return result;
}

unint64_t sub_100077CFC()
{
  result = qword_1000B4860;
  if (!qword_1000B4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4860);
  }

  return result;
}

uint64_t sub_100077D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100077DB8()
{
  result = qword_1000B4888;
  if (!qword_1000B4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4888);
  }

  return result;
}

uint64_t sub_100077E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100077E70(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifierStorage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100077EF0()
{
  result = qword_1000B4898;
  if (!qword_1000B4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4898);
  }

  return result;
}

unint64_t sub_100077F48()
{
  result = qword_1000B48A0;
  if (!qword_1000B48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A0);
  }

  return result;
}

unint64_t sub_100077FA0()
{
  result = qword_1000B48A8;
  if (!qword_1000B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A8);
  }

  return result;
}

unint64_t sub_100077FF8()
{
  result = qword_1000B48B0;
  if (!qword_1000B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B0);
  }

  return result;
}

unint64_t sub_100078050()
{
  result = qword_1000B48B8;
  if (!qword_1000B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B8);
  }

  return result;
}

unint64_t sub_1000780A8()
{
  result = qword_1000B48C0;
  if (!qword_1000B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C0);
  }

  return result;
}

uint64_t sub_10007810C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73616C43657A6973;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1835365481;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x73616C43657A6973;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x73746E65746E6F63;
    v8 = 0xED0000656C616353;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1835365481;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007EAA4();
  }

  return v11 & 1;
}

Swift::Int sub_100078228()
{
  sub_10007EB04();
  sub_10007E494();

  return sub_10007EB54();
}

uint64_t sub_1000782D4()
{
  sub_10007E494();
}

Swift::Int sub_10007836C()
{
  sub_10007EB04();
  sub_10007E494();

  return sub_10007EB54();
}

uint64_t sub_100078414@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000786B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100078444(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x73616C43657A6973;
  if (v2 != 1)
  {
    v5 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835365481;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000784AC()
{
  v1 = 0x73616C43657A6973;
  if (*v0 != 1)
  {
    v1 = 0x73746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_100078510@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000786B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100078538(uint64_t a1)
{
  v2 = sub_100048390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100078574(uint64_t a1)
{
  v2 = sub_100048390();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000785B4()
{
  result = qword_1000B48C8;
  if (!qword_1000B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C8);
  }

  return result;
}

unint64_t sub_10007860C()
{
  result = qword_1000B48D0;
  if (!qword_1000B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D0);
  }

  return result;
}

unint64_t sub_100078664()
{
  result = qword_1000B48D8;
  if (!qword_1000B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D8);
  }

  return result;
}

uint64_t sub_1000786B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A7400;
  v6._object = a2;
  v4 = sub_10007E934(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100078714(uint64_t a1)
{
  v17 = type metadata accessor for CRLDisjointPosition.Element();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10007AA90(0, v5, 0);
    v6 = v21;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_10007A9D0(v7, v4);
      v19 = 40;
      v20 = 0xE100000000000000;
      v18 = *v4;
      v22._countAndFlagsBits = sub_10007EA74();
      sub_10007E4C4(v22);

      v23._countAndFlagsBits = 8236;
      v23._object = 0xE200000000000000;
      sub_10007E4C4(v23);
      sub_10007DEB4();
      sub_10007B1C4(&qword_1000B49D8, &type metadata accessor for UUID);
      v24._countAndFlagsBits = sub_10007EA74();
      sub_10007E4C4(v24);

      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      sub_10007E4C4(v25);
      v9 = v19;
      v10 = v20;
      sub_10007AA34(v4);
      v21 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_10007AA90((v11 > 1), v12 + 1, 1);
        v6 = v21;
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v19 = v6;
  sub_10001FF68(&unk_1000B2A10);
  sub_100032780(&qword_1000B4480, &unk_1000B2A10);
  v14 = sub_10007E3E4();

  return v14;
}

uint64_t sub_1000789C0()
{
  v1._countAndFlagsBits = sub_10007EA74();
  sub_10007E4C4(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_10007E4C4(v2);
  type metadata accessor for CRLDisjointPosition.Element();
  sub_10007DEB4();
  sub_10007B1C4(&qword_1000B49D8, &type metadata accessor for UUID);
  v3._countAndFlagsBits = sub_10007EA74();
  sub_10007E4C4(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_10007E4C4(v4);
  return 40;
}

uint64_t sub_100078AC4(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B49B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100021160(a1, a1[3]);
  sub_10007A46C();
  sub_10007EBE4();
  v8[15] = 0;
  sub_10007EA44();
  if (!v1)
  {
    type metadata accessor for CRLDisjointPosition.Element();
    v8[14] = 1;
    sub_10007DEB4();
    sub_10007B1C4(&qword_1000B2390, &type metadata accessor for UUID);
    sub_10007EA54();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100078C7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_10007DEB4();
  v18 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001FF68(&qword_1000B49B0);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLDisjointPosition.Element();
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100021160(a1, a1[3]);
  sub_10007A46C();
  sub_10007EBD4();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_10007E9B4();
    v23 = 1;
    sub_10007B1C4(&qword_1000B2328, &type metadata accessor for UUID);
    v16 = v5;
    sub_10007E9C4();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    sub_10007A96C(v10, v19);
  }

  return sub_1000211F8(a1);
}

uint64_t sub_100078F60(void *a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B49F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100021160(a1, a1[3]);
  sub_10007A7D0();
  sub_10007EBE4();
  v9[1] = a2;
  sub_10001FF68(&qword_1000B49E8);
  sub_10007B3C8(&qword_1000B4A00, &qword_1000B4908);
  sub_10007EA54();
  return (*(v5 + 8))(v7, v4);
}

void sub_1000790F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRLDisjointPosition.Element();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  sub_10007EB14(v7);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_10007A9D0(v8, v6);
      sub_10007EB14(*v6);
      sub_10007DEB4();
      sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      sub_10007AA34(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

Swift::Int sub_100079264(uint64_t a1)
{
  v2 = type metadata accessor for CRLDisjointPosition.Element();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007EB04();
  v6 = *(a1 + 16);
  sub_10007EB14(v6);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_10007A9D0(v7, v5);
      sub_10007EB14(*v5);
      sub_10007DEB4();
      sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      sub_10007AA34(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_10007EB54();
}

uint64_t sub_1000793E0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10007DE64();
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_100079408(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    v2 = sub_10007DE64();
  }

  else
  {
    v2 = *a2 < *a1;
  }

  return (v2 & 1) == 0;
}

BOOL sub_100079454(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = sub_10007DE64();
  }

  else
  {
    v2 = *a1 < *a2;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_10007949C(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return sub_10007DE64();
  }

  else
  {
    return *a2 < *a1;
  }
}

Swift::Int sub_1000794FC()
{
  sub_10007EB04();
  sub_10007EB14(*v0);
  sub_10007DEB4();
  sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  return sub_10007EB54();
}

uint64_t sub_1000795A8()
{
  sub_10007EB14(*v0);
  sub_10007DEB4();
  sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
  return sub_10007E3D4();
}

Swift::Int sub_10007963C()
{
  sub_10007EB04();
  sub_10007EB14(*v0);
  sub_10007DEB4();
  sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
  sub_10007E3D4();
  return sub_10007EB54();
}

uint64_t sub_1000796E4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10007DE74();
  }

  else
  {
    return 0;
  }
}

void *sub_100079784@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10007B20C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1000797DC()
{
  v1 = type metadata accessor for CRLDisjointPosition.Element();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  sub_10007EB04();
  sub_10007EB14(*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_10007A9D0(v7, v4);
      sub_10007EB14(*v4);
      sub_10007DEB4();
      sub_10007B1C4(&qword_1000B23B8, &type metadata accessor for UUID);
      sub_10007E3D4();
      sub_10007AA34(v4);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return sub_10007EB54();
}

unint64_t sub_10007996C()
{
  result = qword_1000B48E0;
  if (!qword_1000B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48E0);
  }

  return result;
}

uint64_t sub_1000799F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10007EAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100079AD4(uint64_t a1)
{
  v2 = sub_10007A7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079B10(uint64_t a1)
{
  v2 = sub_10007A7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007A668();
  v7 = sub_10007996C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100079C64(uint64_t a1)
{
  v2 = sub_10007A918();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void *sub_100079CD4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100079D00()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_100079D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_10007EAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007EAA4();

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

uint64_t sub_100079E1C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100079E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100079EE0(uint64_t a1)
{
  v2 = sub_10007A46C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100079F1C(uint64_t a1)
{
  v2 = sub_10007A46C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B1C4(&qword_1000B48F8, type metadata accessor for CRLDisjointPosition.Element);
  v7 = sub_10007B1C4(&qword_1000B49C0, type metadata accessor for CRLDisjointPosition.Element);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10007A130(uint64_t a1)
{
  v2 = sub_10007B1C4(&qword_1000B49C8, type metadata accessor for CRLDisjointPosition.Element);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t type metadata accessor for CRLDisjointPosition.Element()
{
  result = qword_1000B4A68;
  if (!qword_1000B4A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10007A364()
{
  result = qword_1000B4910;
  if (!qword_1000B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4910);
  }

  return result;
}

unint64_t sub_10007A3BC()
{
  result = qword_1000B4918;
  if (!qword_1000B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4918);
  }

  return result;
}

unint64_t sub_10007A414()
{
  result = qword_1000B4920;
  if (!qword_1000B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4920);
  }

  return result;
}

unint64_t sub_10007A46C()
{
  result = qword_1000B4928;
  if (!qword_1000B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4928);
  }

  return result;
}

unint64_t sub_10007A4C4()
{
  result = qword_1000B4930;
  if (!qword_1000B4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4930);
  }

  return result;
}

unint64_t sub_10007A51C()
{
  result = qword_1000B4938;
  if (!qword_1000B4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4938);
  }

  return result;
}

unint64_t sub_10007A5B8()
{
  result = qword_1000B4950;
  if (!qword_1000B4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4950);
  }

  return result;
}

unint64_t sub_10007A610()
{
  result = qword_1000B4958;
  if (!qword_1000B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4958);
  }

  return result;
}

unint64_t sub_10007A668()
{
  result = qword_1000B4960;
  if (!qword_1000B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4960);
  }

  return result;
}

unint64_t sub_10007A6C8()
{
  result = qword_1000B4968;
  if (!qword_1000B4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4968);
  }

  return result;
}

unint64_t sub_10007A720()
{
  result = qword_1000B4970;
  if (!qword_1000B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4970);
  }

  return result;
}

unint64_t sub_10007A778()
{
  result = qword_1000B4978;
  if (!qword_1000B4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4978);
  }

  return result;
}

unint64_t sub_10007A7D0()
{
  result = qword_1000B4980;
  if (!qword_1000B4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4980);
  }

  return result;
}

unint64_t sub_10007A828()
{
  result = qword_1000B4988;
  if (!qword_1000B4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4988);
  }

  return result;
}

unint64_t sub_10007A880()
{
  result = qword_1000B4990;
  if (!qword_1000B4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4990);
  }

  return result;
}

unint64_t sub_10007A918()
{
  result = qword_1000B49A8;
  if (!qword_1000B49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49A8);
  }

  return result;
}

uint64_t sub_10007A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AA34(uint64_t a1)
{
  v2 = type metadata accessor for CRLDisjointPosition.Element();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10007AA90(char *a1, int64_t a2, char a3)
{
  result = sub_10007AB58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007AAB0(size_t a1, int64_t a2, char a3)
{
  result = sub_10007AD74(a1, a2, a3, *v3, &qword_1000B4658, &unk_10008ADA0, type metadata accessor for CRLSELibraryViewModelItemNode);
  *v3 = result;
  return result;
}

char *sub_10007AAF4(char *a1, int64_t a2, char a3)
{
  result = sub_10007AC64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007AB14(size_t a1, int64_t a2, char a3)
{
  result = sub_10007AD74(a1, a2, a3, *v3, &qword_1000B4A08, &unk_10008ADA8, type metadata accessor for CRLSELibraryViewModel.Item);
  *v3 = result;
  return result;
}

char *sub_10007AB58(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001FF68(&unk_1000B4470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007AC64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001FF68(&qword_1000B3C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_10007AD74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001FF68(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10007AF50(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = type metadata accessor for CRLDisjointPosition.Element();
  v3 = *(v25 - 8);
  v4 = __chkstk_darwin(v25);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v9 = (&v24 - v8);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v26 = sub_10001FF68(&qword_1000B49D0);
  __chkstk_darwin(v26);
  v13 = &v24 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = a1 + v16;
    v18 = *(v3 + 72);
    v19 = v27 + v16;
    while (1)
    {
      result = sub_10007A9D0(v17, v11);
      v21 = *(v27 + 16);
      if (v15 == v21)
      {
        sub_10007AA34(v11);
        goto LABEL_10;
      }

      if (v15 >= v21)
      {
        break;
      }

      v22 = *(v26 + 48);
      sub_10007A96C(v11, v13);
      sub_10007A9D0(v19, &v13[v22]);
      sub_10007A96C(v13, v9);
      sub_10007A96C(&v13[v22], v6);
      if (*v9 != *v6)
      {
        v23 = *v9 < *v6;
LABEL_13:
        sub_10007AA34(v6);
        sub_10007AA34(v9);
        return v23 & 1;
      }

      if ((sub_10007DE74() & 1) == 0)
      {
        v23 = sub_10007DE64();
        goto LABEL_13;
      }

      ++v15;
      sub_10007AA34(v6);
      sub_10007AA34(v9);
      v19 += v18;
      v17 += v18;
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v23 = v14 < *(v27 + 16);
    return v23 & 1;
  }

  return result;
}

uint64_t sub_10007B1C4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10007B20C(void *a1)
{
  v3 = sub_10001FF68(&qword_1000B49E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100021160(a1, a1[3]);
  sub_10007A7D0();
  sub_10007EBD4();
  if (v1)
  {
    sub_1000211F8(a1);
  }

  else
  {
    sub_10001FF68(&qword_1000B49E8);
    sub_10007B3C8(&qword_1000B49F0, &qword_1000B4900);
    sub_10007E9C4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1000211F8(a1);
  }

  return v7;
}

uint64_t sub_10007B3C8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001FDB8(&qword_1000B49E8);
    sub_10007B1C4(a2, type metadata accessor for CRLDisjointPosition.Element);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007B498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10007DEB4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10007B524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10007DEB4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10007B5A0()
{
  result = sub_10007DEB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10007B668()
{
  result = qword_1000B4AA0;
  if (!qword_1000B4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4AA0);
  }

  return result;
}

unint64_t sub_10007B6C0()
{
  result = qword_1000B4AA8;
  if (!qword_1000B4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4AA8);
  }

  return result;
}

void sub_10007B74C()
{
  sub_100002220();
  v3 = "NSString *CRLAppGroupIdentifier()_block_invoke";
  v4 = v0;
  v5 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBundleUtilities.m";
  v6 = 1024;
  sub_10000220C();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d App group identifier (%@) has unexpected prefix.", v2, 0x2Cu);
}

void sub_10007B81C(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000021F4();
  sub_100002234(&_mh_execute_header, v3, v4, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, v6, v7, v8, v9);
}

void sub_10007B8D4(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[UIImage(CRLAdditions) crl_systemImageNamed:withFallbackCustomImageNamed:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UIImage_CRLAdditions.m";
  v7 = 1024;
  v8 = 103;
  v9 = 2082;
  v10 = "result";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10007B9B8(void *a1, int a2)
{
  v3 = a1;
  v4 = +[CRLAssertionHandler packedBacktraceString];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v5, 0x12u);
}

void sub_10007BAF4(void *a1)
{
  v2 = a1;
  v3 = [sub_100003704() packedBacktraceString];
  sub_1000021F4();
  sub_1000036F4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10007BBB0()
{
  sub_100009048();
  sub_100009088();
  sub_10000905C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10007BC70(void *a1)
{
  v2 = a1;
  v3 = [sub_100003704() packedBacktraceString];
  sub_1000021F4();
  sub_100002234(&_mh_execute_header, v4, v5, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v6, v7, v8, v9, v10);
}

void sub_10007BD24()
{
  sub_100009048();
  sub_100009088();
  sub_10000905C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10007BE0C()
{
  sub_100009048();
  sub_100009088();
  sub_10000905C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, v3, v4, v5, v6);
}

void sub_10007BF6C(uint64_t a1, int a2)
{
  v4[0] = 67110146;
  v4[1] = a2;
  v5 = 2082;
  sub_100009088();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSString_CRLAdditions.m";
  v7 = 1024;
  v8 = 1342;
  v9 = 2112;
  v10 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to make a string out of data with UTI %@", v4, 0x2Cu);
}

void sub_10007C0E0(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[CRLImage crl_quickInspectorImageNamed:isPrivateImage:isBundledImage:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLImage.m";
  v7 = 1024;
  v8 = 715;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d This operation must only be performed on the main thread.", v2, 0x22u);
}

void sub_10007C218(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = [sub_10000FF88() registeredTypeIdentifiers];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Content Identifiers: %@", a1, 0xCu);
}

void sub_10007C2C0(void *a1, void *a2)
{
  v5 = a1;
  v6 = sub_10000FF94();
  v7 = NSStringFromClass(v6);
  [a2 domain];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FF88() code];
  sub_10000FF38();
  sub_10000FF60();
  sub_10000FF50();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x2Au);
}

void sub_10007C390(void *a1)
{
  v1 = a1;
  v2 = [UTTypeRAWImage identifier];
  sub_10000FF7C();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to load shared content of type %{public}@. Provided item is nil", v3, 0xCu);
}

void sub_10007C588(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_10000FF94();
  v6 = NSStringFromClass(v5);
  v12 = [*(*(*a1 + 8) + 40) domain];
  [*(*(*a1 + 8) + 40) code];
  sub_10000FF50();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x2Au);
}

void sub_10007C76C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to load shared content of type %{public}@ with error %{public}@", &v8, 0x16u);
}

void sub_10007C868(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = sub_10000FF94();
  NSStringFromClass(v7);
  objc_claimAutoreleasedReturnValue();
  v8 = [sub_10000FF88() domain];
  [a3 code];
  sub_10000FF38();
  sub_10000FF50();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x34u);
}

void sub_10007C9C4(int a1, NSObject *a2)
{
  v2[0] = 67109890;
  v2[1] = a1;
  v3 = 2082;
  v4 = "[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m";
  v7 = 1024;
  v8 = 48;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Queue limit should be at least one.", v2, 0x22u);
}

void sub_10007CA98(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  sub_1000021F4();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v3, 0x12u);
}

void sub_10007CB4C()
{
  v0 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (CRLAssertCat_init_token != -1)
  {
    dispatch_once(&CRLAssertCat_init_token, &stru_1000A69C8);
  }

  v1 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109890;
    v7[1] = v0;
    v8 = 2082;
    v9 = "[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m";
    v12 = 1024;
    v13 = 56;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", v7, 0x22u);
  }

  if (CRLAssertCat_init_token != -1)
  {
    dispatch_once(&CRLAssertCat_init_token, &stru_1000A69E8);
  }

  v2 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v5 = v2;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    sub_1000021F4();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v7, 0x12u);
  }

  v3 = [NSString stringWithUTF8String:"[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:56 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
}

void sub_10007CD9C(int a1, NSObject *a2)
{
  v2[0] = 67110146;
  v2[1] = a1;
  v3 = 2082;
  v4 = "+[UIDevice(CRLAdditions) crl_platformString]_block_invoke";
  v5 = 2082;
  v6 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/UIDevice_CRLAdditions.m";
  v7 = 1024;
  v8 = 46;
  v9 = 2082;
  v10 = "s_platformString";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v2, 0x2Cu);
}

void sub_10007CEA8()
{
  sub_100012940();
  sub_100012930();
  sub_10000905C();
  sub_100012920();
  sub_100012950(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10007CF98()
{
  sub_100012940();
  sub_100012930();
  sub_10000905C();
  sub_100012920();
  sub_100012950(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10007D074()
{
  sub_100012940();
  sub_100012930();
  sub_10000905C();
  sub_100012920();
  sub_100012950(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected inequality between %{public}s and %{public}s", v2, v3, v4, v5, v6);
}

void sub_10007D178()
{
  sub_100014658();
  sub_100009088();
  sub_100014680();
  sub_10001466C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUISmall.", v2, v3, v4, v5, v6);
}

void sub_10007D23C()
{
  sub_100014658();
  sub_100009088();
  sub_100014680();
  sub_10001466C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularZoom.", v2, v3, v4, v5, v6);
}

void sub_10007D300()
{
  sub_100014658();
  sub_100009088();
  sub_100014680();
  sub_10001466C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegularPlus.", v2, v3, v4, v5, v6);
}

void sub_10007D3C4()
{
  sub_100014658();
  sub_100009088();
  sub_100014680();
  sub_10001466C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUIRegular.", v2, v3, v4, v5, v6);
}

void sub_10007D488()
{
  sub_100014658();
  sub_100009088();
  sub_100014680();
  sub_10001466C();
  sub_10000906C(&_mh_execute_header, v0, v1, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New device size not handled (%f). Defaulting to CRLUIScreenClassPhoneUILarge.", v2, v3, v4, v5, v6);
}

void sub_10007D6DC()
{
  sub_100009048();
  v2 = "+[UIScreen(CRLAdditions) crl_resetScreenScaleCache]";
  sub_100014690();
  v3 = 327;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d No one should look at the screen scale before the application has finished launching, because the value isn't ready yet and may change! To debug, break in UIScreen.crl_screenScale and re-launch the app.", v1, 0x22u);
}

void sub_10007D7AC()
{
  sub_100009048();
  v2 = "+[UIScreen(CRLAdditions) crl_is3xScreenScale]";
  sub_100014690();
  v3 = 347;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unsupported screen scale.", v1, 0x22u);
}

void sub_10007D8D4(void *a1)
{
  v1 = a1;
  v2 = +[CRLAssertionHandler packedBacktraceString];
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace: >>%{public}@<<", &v3, 0xCu);
}

void sub_10007D994(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 134218242;
  v5 = CRLDynamicBaseAddress();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert Assertion backtrace. Load address 0x%0llx, Backtrace:\n%{public}@", &v4, 0x16u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}