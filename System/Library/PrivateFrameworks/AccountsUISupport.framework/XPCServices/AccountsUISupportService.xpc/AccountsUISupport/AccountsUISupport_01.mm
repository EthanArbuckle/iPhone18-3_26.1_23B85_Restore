uint64_t sub_1000123AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = sub_100003288(&qword_100054DD8, "Z&");
  v8 = *(*(v78 - 8) + 64);
  v9 = __chkstk_darwin(v78);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v14 = __chkstk_darwin(v11);
  v73 = &v64 - v15;
  v16 = __chkstk_darwin(v14);
  v74 = &v64 - v17;
  result = __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_69;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_70;
  }

  v24 = (a2 - a1) / v22;
  v81 = a1;
  v80 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v26 < 1)
    {
      v47 = a4 + v26;
    }

    else
    {
      v45 = -v22;
      v46 = a4 + v26;
      v47 = a4 + v26;
      v75 = a4;
      v76 = a1;
      v67 = v45;
      v68 = v13;
      while (2)
      {
        while (1)
        {
          v65 = v47;
          v48 = a2;
          a2 += v45;
          v77 = a2;
          v69 = v48;
          while (1)
          {
            if (v48 <= a1)
            {
              v81 = v48;
              v79 = v65;
              goto LABEL_67;
            }

            v49 = a3;
            v66 = v47;
            v71 = v46;
            v74 = v46 + v45;
            sub_100012D80(v46 + v45, v13);
            v50 = v72;
            sub_100012D80(a2, v72);
            v51 = v73;
            sub_100012D80(v13, v73);
            v52 = v78;
            v53 = *(v78 + 48);
            v70 = sub_100042564();
            v55 = v54;
            v56 = sub_1000423E4();
            v57 = *(*(v56 - 8) + 8);
            v57(v51 + v53, v56);
            sub_100012D80(v50, v51);
            v58 = *(v52 + 48);
            v59 = sub_100042564();
            v61 = v60;
            v57(v51 + v58, v56);
            if (v70 != v59)
            {
              goto LABEL_50;
            }

            if (v55 == v61)
            {
              v62 = 0;
            }

            else
            {
LABEL_50:
              v62 = sub_100042BD4();
            }

            v45 = v67;
            a3 += v67;
            sub_10000A800(v72, &qword_100054DD8, "Z&");
            v13 = v68;
            sub_10000A800(v68, &qword_100054DD8, "Z&");
            a1 = v76;
            a2 = v77;
            v63 = v75;
            v46 = v71;
            if (v62)
            {
              break;
            }

            v47 = v74;
            if (v49 < v71 || a3 >= v71)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v71)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v46 = v47;
            v48 = v69;
            if (v74 <= v63)
            {
              a2 = v69;
              goto LABEL_66;
            }
          }

          if (v49 < v69 || a3 >= v69)
          {
            break;
          }

          v47 = v66;
          if (v49 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v46 <= v63)
          {
            goto LABEL_66;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v47 = v66;
        if (v46 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v81 = a2;
    v79 = v47;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v25;
    v79 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v70 = v22;
      v71 = a3;
      v69 = v20;
      do
      {
        v76 = a1;
        v77 = a2;
        sub_100012D80(a2, v20);
        v75 = a4;
        v28 = v74;
        sub_100012D80(a4, v74);
        v29 = v73;
        sub_100012D80(v20, v73);
        v30 = v78;
        v31 = *(v78 + 48);
        v32 = sub_100042564();
        v34 = v33;
        v35 = sub_1000423E4();
        v36 = *(*(v35 - 8) + 8);
        v36(v29 + v31, v35);
        sub_100012D80(v28, v29);
        v37 = *(v30 + 48);
        v38 = sub_100042564();
        v40 = v39;
        v36(v29 + v37, v35);
        if (v32 == v38 && v34 == v40)
        {

          sub_10000A800(v74, &qword_100054DD8, "Z&");
          v20 = v69;
          sub_10000A800(v69, &qword_100054DD8, "Z&");
          v41 = v76;
        }

        else
        {
          v42 = sub_100042BD4();

          sub_10000A800(v74, &qword_100054DD8, "Z&");
          v20 = v69;
          sub_10000A800(v69, &qword_100054DD8, "Z&");
          v41 = v76;
          if (v42)
          {
            v44 = v70;
            v43 = v71;
            a2 = v77 + v70;
            a4 = v75;
            if (v76 < v77 || v76 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v44 = v70;
        v43 = v71;
        a4 = v75 + v70;
        a2 = v77;
        if (v41 < v75 || v41 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v41 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v80 = a4;
LABEL_35:
        a1 = v41 + v44;
        v81 = a1;
      }

      while (a4 < v72 && a2 < v43);
    }
  }

LABEL_67:
  sub_100012B78(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_100012AD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100012B64(v3);
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

uint64_t sub_100012B78(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100003288(&qword_100054DD8, "Z&");
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

char *sub_100012C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054DE8, &qword_100044780);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100012D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD8, "Z&");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012DF0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v7 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v28 = v4;
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = v27;
    v20 = *(v27 + 48);
    v21 = sub_1000423E4();
    (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
    *&v9[*(v25 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v28;
    v23 = v26(v9);
    v4 = v22;
    result = sub_10000A800(v9, &qword_100054DD0, &unk_1000452F0);
    if (v22)
    {
      goto LABEL_14;
    }

    v13 &= v13 - 1;
    if (v23)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v28 = v4;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_100012FE4(char *a1, int64_t a2, char a3)
{
  result = sub_1000109C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100013004(size_t a1, int64_t a2, char a3)
{
  result = sub_100010AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100013024(size_t a1, int64_t a2, char a3)
{
  result = sub_100010CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100013044(size_t a1, int64_t a2, char a3)
{
  result = sub_100010CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013064(char *a1, int64_t a2, char a3)
{
  result = sub_100010EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013084(char *a1, int64_t a2, char a3)
{
  result = sub_100010FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000130A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000110EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000130C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v104 = a2;
  v3 = sub_100041C94();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v118 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041C64();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v117 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003288(&qword_100054BD0, &qword_100044388);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v116 = v90 - v11;
  v115 = sub_100042184();
  v122 = *(v115 - 8);
  v12 = *(v122 + 64);
  v13 = __chkstk_darwin(v115);
  v114 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = v90 - v15;
  v130 = sub_1000423E4();
  v121 = *(v130 - 8);
  v16 = *(v121 + 64);
  __chkstk_darwin(v130);
  v128 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100003288(&qword_100054DD8, "Z&");
  v120 = *(v112 - 8);
  v18 = *(v120 + 64);
  __chkstk_darwin(v112);
  v127 = v90 - v19;
  v111 = sub_1000422C4();
  v119 = *(v111 - 8);
  v20 = *(v119 + 64);
  __chkstk_darwin(v111);
  v22 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100042114();
  v131 = *(v129 - 8);
  v23 = v131[8];
  v24 = __chkstk_darwin(v129);
  v110 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v125 = v90 - v27;
  __chkstk_darwin(v26);
  v29 = v90 - v28;
  v30 = sub_100042164();
  v123 = *(v30 - 8);
  v31 = v123[8];
  v32 = __chkstk_darwin(v30);
  v109 = v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v124 = v90 - v35;
  __chkstk_darwin(v34);
  v37 = v90 - v36;
  v38 = sub_100003288(&qword_100054E28, &unk_1000447B0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = v90 - v40;
  v42 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v47 = v90 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = v90 - v48;
  sub_1000420F4();
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_10000A800(v41, &qword_100054E28, &unk_1000447B0);
    return _swiftEmptyArrayStorage;
  }

  sub_100013DDC(v41, v49);
  v50 = v47;
  sub_10000A744(v49, v47, &qword_100054E30, &qword_1000447E0);
  v51 = *(v42 + 48);
  v52 = v123;
  v53 = v123[4];
  v126 = v30;
  v53(v37, v50, v30);
  v54 = v131;
  v55 = v131[1];
  v56 = v50 + v51;
  v57 = v129;
  v106 = v131 + 1;
  v105 = v55;
  v55(v56, v129);
  sub_10000A744(v49, v50, &qword_100054E30, &qword_1000447E0);
  (v54[4])(v29, v50 + *(v42 + 48), v57);
  v58 = v52[1];
  v108 = v52 + 1;
  v107 = v58;
  v58(v50, v126);
  sub_100042104();
  v59 = sub_1000425A4();

  v60 = _swiftEmptyArrayStorage;
  v61 = v54;
  v62 = v122;
  if (v59 >= 3)
  {
    __chkstk_darwin(_swiftEmptyArrayStorage);
    v90[-2] = v29;
    v63 = v104;
    if (sub_100012DF0(sub_1000109A0, &v90[-4], v104))
    {
      v60 = _swiftEmptyArrayStorage;
    }

    else
    {
      v60 = sub_10000FA40(v63);
      if (!v60[2])
      {

        v60 = sub_100010230(v63, v99);
      }
    }

    v61 = v131;
  }

  v64 = v60[2];
  if (!v64)
  {

    v105(v29, v129);
    sub_10000A800(v49, &qword_100054E30, &qword_1000447E0);
    v131 = _swiftEmptyArrayStorage;
LABEL_17:
    v107(v37, v30);
    return v131;
  }

  v132 = _swiftEmptyArrayStorage;
  v104 = v60;
  sub_100013044(0, v64, 0);
  result = v104;
  v98 = v104 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  v131 = v132;
  v97 = v123 + 2;
  v96 = (v61 + 2);
  v95 = (v121 + 16);
  v94 = (v121 + 56);
  v93 = (v62 + 16);
  v92 = (v62 + 8);
  v66 = 0;
  v91 = (v121 + 8);
  v90[1] = v119 + 32;
  v103 = v22;
  v102 = v29;
  v101 = v37;
  v100 = v49;
  v99 = v64;
  while (v66 < result[2])
  {
    v67 = v127;
    sub_10000A744(&v98[*(v120 + 72) * v66], v127, &qword_100054DD8, "Z&");
    v121 = *(v112 + 48);
    v122 = *v97;
    v68 = v124;
    (v122)(v124, v37, v30);
    v123 = v66;
    v69 = *v96;
    v70 = v125;
    v71 = v129;
    (*v96)(v125, v67, v129);
    v72 = *v95;
    v73 = v67 + v121;
    v74 = v128;
    (*v95)(v128, v73, v130);
    (v122)(v109, v68, v126);
    v69(v110, v70, v71);
    v75 = v113;
    sub_100042174();
    v76 = v116;
    v77 = v130;
    v72(v116, v74, v130);
    (*v94)(v76, 0, 1, v77);
    v78 = *v93;
    v80 = v114;
    v79 = v115;
    (*v93)(v114, v75, v115);
    sub_100042584();
    sub_100041C84();
    v81 = v103;
    sub_100041C74();
    v78(v80, v75, v79);
    sub_1000422B4();
    v82 = v75;
    v83 = v131;
    (*v92)(v82, v79);
    v84 = v126;
    (*v91)(v128, v130);
    v105(v125, v129);
    v30 = v84;
    v107(v124, v84);
    sub_10000A800(v127, &qword_100054DD8, "Z&");
    v132 = v83;
    v86 = v83[2];
    v85 = v83[3];
    v131 = v83;
    if (v86 >= v85 >> 1)
    {
      sub_100013044(v85 > 1, v86 + 1, 1);
      v131 = v132;
    }

    v66 = v123 + 1;
    v87 = v131;
    v131[2] = v86 + 1;
    (*(v119 + 32))(v87 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v86, v81, v111);
    v88 = v102;
    v37 = v101;
    v89 = v100;
    result = v104;
    if (v99 == v66)
    {

      v105(v88, v129);
      sub_10000A800(v89, &qword_100054E30, &qword_1000447E0);
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s22OnlineValidationActionOMa()
{
  result = qword_100054EA8;
  if (!qword_100054EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013EE8()
{
  sub_100042384();
  if (v0 <= 0x3F)
  {
    sub_100013F5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100013F5C()
{
  if (!qword_100054EB8)
  {
    v0 = sub_100042394();
    if (!v1)
    {
      atomic_store(v0, &qword_100054EB8);
    }
  }
}

uint64_t sub_100013FA4(char *a1, uint64_t a2)
{
  v5 = sub_100042334();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v87 = v70 - v11;
  __chkstk_darwin(v10);
  v84 = v70 - v12;
  v85 = sub_100042114();
  v82 = *(v85 - 8);
  v13 = *(v82 + 64);
  v14 = __chkstk_darwin(v85);
  v80 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = v70 - v16;
  v86 = sub_100042164();
  v81 = *(v86 - 8);
  v17 = *(v81 + 64);
  v18 = __chkstk_darwin(v86);
  v79 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v70 - v20;
  v22 = sub_100003288(&qword_100054E28, &unk_1000447B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v70 - v24;
  v26 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v70 - v32;
  sub_1000420F4();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_10000A800(v25, &qword_100054E28, &unk_1000447B0);
    (*(v88 + 104))(a1, enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:), v89);
    v34 = sub_100042184();
    return (*(*(v34 - 8) + 16))(a2, v2, v34);
  }

  else
  {
    v75 = a1;
    v76 = a2;
    v72 = v2;
    sub_100013DDC(v25, v33);
    sub_1000153FC(v33, v31);
    v36 = *(v26 + 48);
    v37 = v81;
    v38 = v86;
    (*(v81 + 32))(v21, v31, v86);
    v39 = v82;
    v40 = v21;
    v41 = v82 + 8;
    v42 = &v31[v36];
    v43 = v85;
    v74 = *(v82 + 8);
    v74(v42, v85);
    sub_1000153FC(v33, v31);
    (*(v39 + 32))(v83, &v31[*(v26 + 48)], v43);
    v73 = *(v37 + 8);
    v73(v31, v38);
    v77 = v40;
    sub_1000147DC(v84);
    sub_100014AF8(v87);
    v44 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
    v46 = v88;
    v45 = v89;
    v47 = *(v88 + 104);
    v47(v9, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v89);
    LOBYTE(v38) = sub_100042324();
    v78 = *(v46 + 8);
    v78(v9, v45);
    if (v38)
    {
      v70[1] = v41;
      v71 = v33;
      v48 = v77;
      v50 = v88;
      v49 = v89;
      v47(v9, v44, v89);
      v51 = sub_100042324();
      v78(v9, v49);
      if (v51)
      {
        v52 = v89;
        v53 = v78;
        v78(v87, v89);
        v53(v84, v52);
        v74(v83, v85);
        v73(v48, v86);
        sub_10000A800(v71, &qword_100054E30, &qword_1000447E0);
        v47(v75, v44, v52);
        v54 = sub_100042184();
        return (*(*(v54 - 8) + 16))(v76, v72, v54);
      }

      v61 = v87;
      v62 = v89;
      (*(v50 + 16))(v75, v87, v89);
      v63 = v48;
      v64 = v48;
      v65 = v86;
      (*(v81 + 16))(v79, v64, v86);
      v66 = v83;
      v67 = v85;
      (*(v82 + 16))(v80, v83, v85);
      sub_100042174();
      v68 = v61;
      v69 = v78;
      v78(v68, v62);
      v69(v84, v62);
      v74(v66, v67);
      v73(v63, v65);
      v60 = v71;
    }

    else
    {
      v55 = v89;
      v56 = v84;
      (*(v88 + 16))(v75, v84, v89);
      (*(v81 + 16))(v79, v77, v86);
      v57 = v83;
      v58 = v85;
      (*(v82 + 16))(v80, v83, v85);
      sub_100042174();
      v59 = v78;
      v78(v87, v55);
      v59(v56, v55);
      v74(v57, v58);
      v73(v77, v86);
      v60 = v33;
    }

    return sub_10000A800(v60, &qword_100054E30, &qword_1000447E0);
  }
}

unint64_t sub_1000147DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100042164();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v7 = sub_100042574();
  v9 = v8;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v24 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:);
LABEL_36:

    v25 = *v24;
    v26 = sub_100042334();
    return (*(*(v26 - 8) + 104))(a1, v25, v26);
  }

  v11 = v7;
  v28 = a1;
  v12 = 4 * v10;
  v13 = (v7 >> 59) & 1;
  if ((v8 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  result = 15;
  v16 = 1;
  while (1)
  {
    v17 = v16;
    v18 = result & 0xC;
    v19 = result;
    if (v18 == v14)
    {
      v23 = result;
      v19 = sub_100008F78(result, v11, v9);
      result = v23;
    }

    v20 = v19 >> 16;
    if (v19 >> 16 >= v10)
    {
      break;
    }

    if ((v9 & 0x1000000000000000) != 0)
    {
      v27 = result;
      v22 = sub_100042604();
      result = v27;
      if (v18 != v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v9 & 0x2000000000000000) != 0)
      {
        v29[0] = v11;
        v29[1] = v9 & 0xFFFFFFFFFFFFFFLL;
        v21 = v29;
      }

      else
      {
        v21 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v11 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v21 = sub_1000429A4();
          result = v27;
        }
      }

      v22 = *(v21 + v20);
      if (v18 != v14)
      {
LABEL_18:
        if ((v9 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_100008F78(result, v11, v9);
    if ((v9 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v10 <= result >> 16)
    {
      goto LABEL_38;
    }

    result = sub_1000425E4();
LABEL_24:
    v16 = v22 == 46;
    if (v22 == 46)
    {
      if (v17 || v12 == result >> 14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v22 - 58) <= 0xF5u && (v22 - 123) <= 0xE5u && (v22 - 91) <= 0xE5u && (v22 - 33 > 0x3F || ((1 << (v22 - 33)) & 0xE00000005000567DLL) == 0) && v22 - 123 >= 4 && (v22 & 0x80) == 0)
      {
LABEL_34:
        v24 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:);
        a1 = v28;
        goto LABEL_36;
      }

      if (v12 == result >> 14)
      {
        a1 = v28;
        v24 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100014AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100042114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v39 - v11;
  __chkstk_darwin(v10);
  v14 = v39 - v13;
  v15 = sub_100042104();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = *(v5 + 16);
    v19(v14, v2, v4);
    v19(v12, v14, v4);
    v39[0] = sub_100042564();
    v39[1] = v20;
    sub_100009BAC();
    v21 = sub_100042894();
    v23 = v22;

    v24 = sub_1000183A8(v21, v23);
    v26 = v25;

    v27 = *(v5 + 8);
    v27(v14, v4);
    if (sub_10001546C(v24, v26))
    {
      sub_100017DB4(v24, v26);
      v29 = v28;

      if (v29)
      {
        sub_100042124();
        v27(v2, v4);
        (*(v5 + 32))(v2, v9, v4);
        v30 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
      }

      else
      {
        v30 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:);
      }

      v37 = *v30;
      v38 = sub_100042334();
      return (*(*(v38 - 8) + 104))(a1, v37, v38);
    }

    else
    {
      v35 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:);
      v36 = sub_100042334();
      (*(*(v36 - 8) + 104))(a1, v35, v36);
    }
  }

  else
  {
    v31 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:);
    v32 = sub_100042334();
    v33 = *(*(v32 - 8) + 104);

    return v33(a1, v31, v32);
  }
}

uint64_t sub_100014E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100042394();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100042184();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v34);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v33 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v33 - v15;
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v37 = sub_100042334();
  v19 = *(v37 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v37);
  v33[0] = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v33 - v23;
  v33[1] = a1;
  sub_1000422E4();
  sub_100042154();
  if (sub_100042144())
  {
    v25 = *(v6 + 8);
    v26 = v16;
    v27 = v34;
    v25(v26, v34);
    (*(v19 + 104))(v24, enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:), v37);
    (*(v6 + 32))(v18, v13, v27);
  }

  else
  {
    sub_100013FA4(v24, v18);
    v25 = *(v6 + 8);
    v28 = v13;
    v29 = v34;
    v25(v28, v34);
    v30 = v16;
    v27 = v29;
    v25(v30, v29);
  }

  (*(v6 + 16))(v10, v18, v27);
  sub_1000422F4();
  sub_1000422D4();
  v31 = v37;
  (*(v19 + 16))(v33[0], v24, v37);
  sub_100042364();
  v25(v18, v27);
  return (*(v19 + 8))(v24, v31);
}

uint64_t sub_1000151F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100042334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042344();
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:))
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (v8 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:))
    {
      _s22OnlineValidationActionOMa();
      return swift_storeEnumTagMultiPayload();
    }

    if (v8 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:))
    {
      v9 = sub_100042384();
      (*(*(v9 - 8) + 16))(a1, v1, v9);
      _s22OnlineValidationActionOMa();
      return swift_storeEnumTagMultiPayload();
    }

    if (v8 != enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:) && v8 != enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:))
    {
      _s22OnlineValidationActionOMa();
      swift_storeEnumTagMultiPayload();
      return (*(v4 + 8))(v7, v3);
    }
  }

  sub_100042374();
  _s22OnlineValidationActionOMa();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000153FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001546C(uint64_t a1, unint64_t a2)
{
  if (sub_1000425A4() > 253)
  {
    return 0;
  }

  result = sub_100017650(0x7FFFFFFFFFFFFFFFLL, 0, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7 < 2)
  {
LABEL_3:

    return 0;
  }

  v8 = 0;
  v9 = (result + 56);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = v11;
    v14 = v10;
    result = sub_100015544(&v12);
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }

    ++v8;
    v9 += 4;
    if (v7 == v8)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015544(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (sub_100042854() < 1 || sub_100042854() > 63)
  {
    return 0;
  }

  if (v2 >> 14 == v1 >> 14)
  {
    return 1;
  }

  if (sub_100042864() != 45 || v6 != 0xE100000000000000)
  {
    v7 = sub_100042BD4();

    if (v7)
    {
      return 0;
    }

    sub_100042834();
    if (sub_100042864() != 45 || v8 != 0xE100000000000000)
    {
      v9 = sub_100042BD4();

      if (v9)
      {
        return 0;
      }

      while (1)
      {
        v10 = sub_100042864();
        v12 = v11;
        v13 = sub_100042824();
        if (v10 == 2573 && v12 == 0xE200000000000000)
        {
          break;
        }

        v14 = v13;
        result = sub_100042BD4();
        if (result)
        {
          break;
        }

        if ((v12 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v12) & 0xF;
        }

        else
        {
          v15 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return result;
        }

        if ((v12 & 0x1000000000000000) != 0)
        {
          v20 = sub_100042534();
        }

        else
        {
          if ((v12 & 0x2000000000000000) != 0)
          {
            v17 = v10;
          }

          else
          {
            if ((v10 & 0x1000000000000000) != 0)
            {
              v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v16 = sub_1000429A4();
            }

            v17 = *v16;
          }

          v18 = v17;
          v19 = (__clz(~v17) - 24) << 16;
          if (v18 < 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 65541;
          }
        }

        if (v20 >> 14 != 4 * v15)
        {
          break;
        }

        result = sub_10000CD9C(v10, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_47;
        }

        if ((result & 0xFFFFFF80) != 0)
        {
          break;
        }

        result = sub_10000CD9C(v10, v12);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v21 = result;

        if ((v21 & 0xFFFFFF00) != 0)
        {
          goto LABEL_46;
        }

        if (v21 - 123 <= 0xFFFFFFE5)
        {
          if (v21 <= 0x2Fu)
          {
            if (v21 != 45)
            {
              return 0;
            }
          }

          else if (v21 >= 0x3Au)
          {
            return 0;
          }
        }

        result = 1;
        if (v2 >> 14 == v14 >> 14)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100015850(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_1000420C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_10000A744(v1, &v13 - v10, &qword_100054A68, &qword_100043BB0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t NSHTTPURLResponse.subscript.getter(unsigned __int8 a1)
{
  Request.HeaderField.rawValue.getter(a1);
  v2 = sub_100042504();
  v4 = v3;

  v5 = [v1 allHeaderFields];
  v6 = sub_100042474();

  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = &qword_100054EE8;
  v25 = v6;
  while (v10)
  {
LABEL_11:
    v16 = __clz(__rbit64(v10)) | (v13 << 6);
    sub_100004780(*(v6 + 48) + 40 * v16, &v33);
    sub_100015DA4(*(v6 + 56) + 32 * v16, v35 + 8);
    v31 = v35[1];
    v32 = v36;
    v29 = v34;
    v30 = v35[0];
    v28 = v33;
    v17 = v14;
    sub_10000A744(&v28, v26, v14, &qword_1000447E8);
    if (swift_dynamicCast())
    {
      sub_100004BD8(v27);
      v18 = v2;
      v19 = v4;
      v20 = sub_100042504();
      v22 = v21;

      v23 = v20;
      v4 = v19;
      v2 = v18;
      if (v23 == v18 && v22 == v4)
      {

LABEL_21:

        v39 = v30;
        v40 = v31;
        v41 = v32;
        v37 = v28;
        v38 = v29;

        if (*(&v38 + 1))
        {
          sub_100003278((&v39 + 8), &v33);
          sub_10000472C(&v37);
          if (*(&v34 + 1))
          {
            if (swift_dynamicCast())
            {
              return v37;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
LABEL_17:
          sub_10000A800(&v37, &qword_100054EF0, &qword_1000447F0);
          v33 = 0u;
          v34 = 0u;
        }

        sub_10000A800(&v33, &qword_100054EF8, &qword_1000447F8);
        return 0;
      }

      v24 = sub_100042BD4();

      if (v24)
      {

        goto LABEL_21;
      }
    }

    else
    {
      sub_100004BD8(v27);
    }

    v10 &= v10 - 1;
    v14 = v17;
    result = sub_10000A800(&v28, v17, &qword_1000447E8);
    v6 = v25;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;

      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015E00@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v30 = a3;
  v33 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v29 = *(v33 - 8);
  v6 = *(v29 + 64);
  v7 = __chkstk_darwin(v33);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v29 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = a2;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v35 = v4;
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = v34;
      v21 = *(v34 + 48);
      v22 = sub_1000423E4();
      v23 = *(v22 - 8);
      v24 = v21 + *(v23 + 72) * v19;
      v25 = v31;
      (*(v23 + 16))(v31, v24, v22);
      *(v25 + *(v33 + 48)) = *(*(v20 + 56) + 8 * v19);
      sub_1000174A8(v25, v9);

      v26 = v35;
      v27 = v32(v9);
      v4 = v26;
      if (v26)
      {
        sub_10000A800(v9, &qword_100054DD0, &unk_1000452F0);
      }

      if (v27)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_10000A800(v9, &qword_100054DD0, &unk_1000452F0);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v30;
    sub_1000174A8(v9, v30);
    return (*(v29 + 56))(v28, 0, 1, v33);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return (*(v29 + 56))(v30, 1, 1, v33);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *NSHTTPURLResponse.cookies.getter()
{
  v1 = v0;
  v2 = sub_100041D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = [v1 URL];
  if (!v10)
  {
    return &_swiftEmptyArrayStorage;
  }

  v11 = v10;
  sub_100041CD4();

  (*(v3 + 32))(v9, v7, v2);
  v12 = [v1 allHeaderFields];
  v13 = sub_100042474();

  v14 = sub_1000162EC(v13);

  if (v14)
  {
    v15 = objc_opt_self();
    isa = sub_100042464().super.isa;

    sub_100041CB4(v17);
    v19 = v18;
    v20 = [v15 cookiesWithResponseHeaderFields:isa forURL:v18];

    sub_1000165CC();
    v21 = sub_1000426F4();
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  (*(v3 + 8))(v9, v2);
  return v21;
}

unint64_t sub_1000162EC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100003288(&qword_100054F08, &qword_100044808);
    v2 = sub_100042A84();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_100004780(*(v1 + 48) + 40 * v17, v30);
    sub_100015DA4(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_100004780(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_10000A800(v27, &qword_100054EE8, &qword_1000447E8);

      goto LABEL_22;
    }

    sub_100015DA4(v28 + 8, v26);
    sub_10000A800(v27, &qword_100054EE8, &qword_1000447E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10001F844(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_1000165CC()
{
  result = qword_100054F00;
  if (!qword_100054F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054F00);
  }

  return result;
}

NSHTTPCookie_optional __swiftcall NSHTTPURLResponse.cookie(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v3 = NSHTTPURLResponse.cookies.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100042A54())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100042974();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 name];
      v11 = sub_1000424F4();
      v13 = v12;

      if (v11 == countAndFlagsBits && v13 == object)
      {

        goto LABEL_22;
      }

      v15 = sub_100042BD4();

      if (v15)
      {

        goto LABEL_22;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v8 = 0;
LABEL_22:
  v18 = v8;
  result.value._cookiePrivate = v16;
  result.value.super.isa = v18;
  result.is_nil = v17;
  return result;
}

uint64_t NSHTTPURLResponse.parsedContentType.getter()
{
  v1 = v0;
  v2 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000420C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = [v1 MIMEType];
  if (!v12)
  {
    return 6;
  }

  v13 = v12;
  sub_1000424F4();

  sub_100042084();
  sub_100042054();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000A800(v5, &qword_100054A68, &qword_100043BB0);
    return 6;
  }

  v15 = (*(v7 + 32))(v11, v5, v6);
  __chkstk_darwin(v15);
  *&v20[-16] = v11;
  v16 = 5;
  v17 = &byte_100051860;
  while (1)
  {
    v18 = *v17++;
    v14 = v18;
    v21 = v18;
    if (sub_100016AE8(&v21))
    {
      break;
    }

    if (!--v16)
    {
      v14 = 6;
      break;
    }
  }

  (*(v7 + 8))(v11, v6);
  return v14;
}

uint64_t sub_100016A00(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_10000DE14(*a1, &v10[-v6]);
  v11 = a2;
  v8 = sub_100015850(sub_100017518);
  sub_10000A800(v7, &qword_100054A68, &qword_100043BB0);
  return v8 & 1;
}

uint64_t NSHTTPURLResponse.contentTypeConformsTo(uti:)(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_1000420C4();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v39 = &v37 - v9;
  v10 = sub_100041BA4();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - v16;
  v18 = NSHTTPURLResponse.subscript.getter(3u);
  if (v19)
  {
    v37 = a1;
    v41 = v18;
    v42 = v19;
    v45 = 59;
    v46 = 0xE100000000000000;
    v20 = sub_100041D24();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    sub_100009BAC();
    sub_1000428A4();
    v22 = v21;
    sub_10000A800(v17, &qword_100054A70, &qword_100043BB8);
    if ((v22 & 1) == 0)
    {
      v23 = sub_100042684();
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v41 = v23;
      v42 = v25;
      v43 = v27;
      v44 = v29;
      sub_100041B94();
      sub_100009C84();
      v30 = sub_100042884();
      v32 = v31;
      (*(v38 + 8))(v13, v10);

      v41 = v30;
      v42 = v32;
      sub_100042674();
    }

    v33 = v40;
    sub_100042084();
    sub_100042054();
    if ((*(v33 + 48))(v5, 1, v6) != 1)
    {
      v35 = v39;
      (*(v33 + 32))(v39, v5, v6);
      v34 = sub_1000420A4();
      (*(v33 + 8))(v35, v6);
      return v34 & 1;
    }

    sub_10000A800(v5, &qword_100054A68, &qword_100043BB0);
  }

  v34 = 0;
  return v34 & 1;
}

Swift::Bool __swiftcall NSHTTPURLResponse.contentTypeConformsTo(_:)(AccountsUISupportServiceLib::ContentType a1)
{
  v2 = sub_100041BA4();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v2);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - v7;
  v9 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = sub_1000420C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  if (a1 > AccountsUISupportServiceLib_ContentType_portableDocumentFormat)
  {
    if (a1 - 3 < 2)
    {
      (*(v17 + 56))(v15, 1, 1, v16);
      v24 = v15;
      goto LABEL_15;
    }

    v48 = v21;
    v49 = v2;
    sub_100042074();
  }

  else
  {
    v48 = v21;
    v49 = v2;
    if (a1)
    {
      if (a1 == AccountsUISupportServiceLib_ContentType_text)
      {
        sub_1000420B4();
      }

      else
      {
        sub_100042064();
      }
    }

    else
    {
      sub_100042094();
    }
  }

  (*(v17 + 56))(v15, 0, 1, v16);
  v47 = *(v17 + 32);
  v47(v23, v15, v16);
  v25 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v26)
  {
    (*(v17 + 8))(v23, v16);
    goto LABEL_17;
  }

  v46 = v13;
  v52 = v25;
  v53 = v26;
  v56 = 59;
  v57 = 0xE100000000000000;
  v27 = sub_100041D24();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  sub_100009BAC();
  sub_1000428A4();
  v29 = v28;
  sub_10000A800(v8, &qword_100054A70, &qword_100043BB8);
  if ((v29 & 1) == 0)
  {
    v30 = sub_100042684();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v52 = v30;
    v53 = v32;
    v54 = v34;
    v55 = v36;
    v37 = v50;
    sub_100041B94();
    sub_100009C84();
    v38 = sub_100042884();
    v40 = v39;
    (*(v51 + 8))(v37, v49);

    v52 = v38;
    v53 = v40;
    sub_100042674();
  }

  v41 = v46;
  sub_100042084();
  sub_100042054();
  if ((*(v17 + 48))(v41, 1, v16) != 1)
  {
    v43 = v48;
    v47(v48, v41, v16);
    v42 = sub_1000420A4();
    v44 = *(v17 + 8);
    v44(v43, v16);
    v44(v23, v16);
    return v42 & 1;
  }

  (*(v17 + 8))(v23, v16);
  v24 = v41;
LABEL_15:
  sub_10000A800(v24, &qword_100054A68, &qword_100043BB0);
LABEL_17:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1000174A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017518@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1000420A4();
  *a1 = result & 1;
  return result;
}

uint64_t EmailAddress.Domain.IDNAEncoded.init(validating:)(uint64_t a1, unint64_t a2)
{
  if (sub_1000425A4() > 253)
  {
LABEL_4:

    return 0;
  }

  result = sub_100017650(0x7FFFFFFFFFFFFFFFLL, 0, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7 < 2)
  {
LABEL_3:

    goto LABEL_4;
  }

  v8 = 0;
  v9 = (result + 56);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = v11;
    v14 = v10;
    result = sub_100015544(&v12);
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }

    ++v8;
    v9 += 4;
    if (v7 == v8)
    {

      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017650@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = sub_10001BD68((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v30 = (result + 32 * v5);
    v30[4] = v7;
    v30[5] = v8;
    v30[6] = v9;
    v30[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_100042684();
    v8 = v27;
    v9 = v28;
    v10 = v29;

    result = sub_10001BD68(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v41 = &_swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 0xE100000000000000;
  v40 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (1)
    {
      v10 = v15;
      while (sub_100042664() != 46 || v18 != 0xE100000000000000)
      {
        v9 = sub_100042BD4();

        if (v9)
        {
          goto LABEL_16;
        }

        v10 = sub_1000425B4();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

LABEL_16:
      if (v15 >> 14 != v17 || (a2 & 1) == 0)
      {
        break;
      }

      v15 = sub_1000425B4();
      v17 = v15 >> 14;
      if (v15 >> 14 == v14)
      {
        goto LABEL_32;
      }
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
      return result;
    }

    v19 = sub_100042684();
    v37 = v21;
    v38 = v20;
    v22 = v41;
    v39 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10001BD68(0, *(v41 + 2) + 1, 1, v41);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v41 = v22;
    if (v25 >= v24 >> 1)
    {
      v41 = sub_10001BD68((v24 > 1), v25 + 1, 1, v22);
    }

    v9 = v41;
    *(v41 + 2) = v25 + 1;
    v26 = &v41[32 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v39;
    *(v26 + 6) = v38;
    *(v26 + 7) = v37;
    v15 = sub_1000425B4();
  }

  while (*(v41 + 2) != v40);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v41;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_100042684();
  v16 = v31;
  v9 = v32;
  v10 = v33;

  v14 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_10001BD68(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v41;
LABEL_40:
  v35 = *(result + 16);
  v34 = *(result + 24);
  if (v35 >= v34 >> 1)
  {
    result = sub_10001BD68((v34 > 1), v35 + 1, 1, result);
  }

  *(result + 16) = v35 + 1;
  v36 = (result + 32 * v35);
  v36[4] = v11;
  v36[5] = v16;
  v36[6] = v9;
  v36[7] = v10;
  return result;
}

uint64_t static EmailAddress.Domain.IDNAEncoded.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100042BD4();
  }
}

Swift::Int EmailAddress.Domain.IDNAEncoded.hashValue.getter()
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

Swift::Int sub_100017AE0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

uint64_t sub_100017B2C()
{
  v1 = *v0;
  v2 = v0[1];
  return _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100017B34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

uint64_t sub_100017B7C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100042BD4();
  }
}

void *sub_100017BAC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_100017BBC()
{
  result = qword_100054F18;
  if (!qword_100054F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F18);
  }

  return result;
}

unint64_t sub_100017C14()
{
  result = qword_100054F20;
  if (!qword_100054F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F20);
  }

  return result;
}

unint64_t sub_100017C78()
{
  result = qword_100054F28;
  if (!qword_100054F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F28);
  }

  return result;
}

uint64_t sub_100017CE4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 sub_100017D14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100017D20(uint64_t a1, int a2)
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

uint64_t sub_100017D68(uint64_t result, int a2, int a3)
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

uint64_t sub_100017DB4(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v19[0] = a1;
  v19[1] = a2;
  v18[2] = 757952120;
  v18[3] = 0xE400000000000000;
  sub_100009D2C();
  sub_100009D80();
  isStackAllocationSafe = sub_1000424B4();
  if (v21)
  {

    return v3;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

LABEL_7:
    if (v5 <= 1024)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  isStackAllocationSafe = sub_1000425D4();
  v5 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_19:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v15 = swift_slowAlloc();
    sub_100018140(v15, v5, &v20);

    return v20;
  }

LABEL_8:
  __chkstk_darwin(isStackAllocationSafe);
  v7 = v18 - v6;
  result = sub_100042954();
  if ((v9 & 1) == 0)
  {
    if (qword_100054908 != -1)
    {
      swift_once();
    }

    v10 = qword_100054F10;
    *(swift_allocObject() + 16) = v10;
    v11 = sub_100018C94(v7, v5, 0, 0, 1);
    if ((v11 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v11 >= 1025)
      {
        v16 = v11;
        v11 = swift_stdlib_isStackAllocationSafe();
        if ((v11 & 1) == 0)
        {
          v17 = swift_slowAlloc();
          sub_100018B64(v17, v16, sub_100018C94, v7, v5, sub_100018D20, v19);

          return v19[0];
        }
      }

      __chkstk_darwin(v11);
      v14 = sub_100018C94(v7, v5, v18 - v12, v13, 0);
      if ((v14 & 0x80000000) == 0)
      {
        v3 = sub_100042544();

        return v3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100042954();
  if (v7)
  {
    goto LABEL_18;
  }

  if (qword_100054908 != -1)
  {
    swift_once();
  }

  v8 = qword_100054F10;
  *(swift_allocObject() + 16) = v8;
  isStackAllocationSafe = sub_100018CF4(a1, a2, 0, 0, 1);
  if (v3)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v17 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();
      sub_100018B64(v18, v17, sub_100018CF4, a1, a2, sub_100018D20, v20);

      v14 = v20[0];
      v16 = v20[1];
      goto LABEL_12;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v12 = sub_100018CF4(a1, a2, &v20[-1] - v10, v11, 0);
  if (v12 < 0)
  {
    goto LABEL_16;
  }

  v14 = sub_100042544();
  v16 = v15;

LABEL_12:
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t sub_1000183A8(Swift::Int isStackAllocationSafe, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v2 = isStackAllocationSafe & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v2 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  isStackAllocationSafe = sub_1000425D4();
  v2 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_17:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v13 = swift_slowAlloc();
    sub_10001871C(v13, v2, &v18);

    return v18;
  }

LABEL_6:
  __chkstk_darwin(isStackAllocationSafe);
  v4 = &v16 - v3;
  result = sub_100042954();
  if ((v6 & 1) == 0)
  {
    if (qword_100054908 != -1)
    {
      swift_once();
    }

    v7 = qword_100054F10;
    *(swift_allocObject() + 16) = v7;
    v8 = sub_100018C0C(v4, v2, 0, 0, 1);
    if ((v8 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v8 >= 1025)
      {
        v14 = v8;
        v8 = swift_stdlib_isStackAllocationSafe();
        if ((v8 & 1) == 0)
        {
          v15 = swift_slowAlloc();
          sub_100018B64(v15, v14, sub_100018C0C, v4, v2, sub_100018D20, &v17);

          return v17;
        }
      }

      __chkstk_darwin(v8);
      v11 = sub_100018C0C(v4, v2, &v16 - v9, v10, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = sub_100042544();

        return v12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100042954();
  if (v7)
  {
    goto LABEL_18;
  }

  if (qword_100054908 != -1)
  {
    swift_once();
  }

  v8 = qword_100054F10;
  *(swift_allocObject() + 16) = v8;
  isStackAllocationSafe = sub_100018CDC(a1, a2, 0, 0, 1);
  if (v3)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v17 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();
      sub_100018B64(v18, v17, sub_100018CDC, a1, a2, sub_100018D20, v20);

      v14 = v20[0];
      v16 = v20[1];
      goto LABEL_12;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v12 = sub_100018CDC(a1, a2, &v20[-1] - v10, v11, 0);
  if (v12 < 0)
  {
    goto LABEL_16;
  }

  v14 = sub_100042544();
  v16 = v15;

LABEL_12:
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t sub_100018984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100042544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

UIDNA *sub_1000189BC()
{
  pErrorCode = U_ZERO_ERROR;
  result = uidna_openUTS46(0x3Cu, &pErrorCode);
  qword_100054F10 = result;
  return result;
}

uint64_t sub_100018A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _DWORD *, int *))
{
  v15 = 0;
  LOWORD(v14[0]) = 16;
  memset(v14 + 2, 0, 14);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (a4 >= 0xFFFFFFFF80000000)
    {
      if (a4 <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a4 = 0;
  a3 = 0;
LABEL_7:
  result = a7(a6, a1, a2, a3, a4, v14, &v15);
  v11 = v15;
  if (((a5 & 1) == 0 || v15 != 15) && (v15 > 0 || v14[1]))
  {
    v12 = result;
    sub_100018C40();
    swift_allocError();
    *v13 = v11;
    swift_willThrow();
    return v12;
  }

  return result;
}

uint64_t sub_100018B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_100018C40()
{
  result = qword_100054F30;
  if (!qword_100054F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F30);
  }

  return result;
}

uint64_t Suggester.makeSuggestions(input:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v34 = a3 + 32;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  v35 = v7;
  v29 = _swiftEmptyArrayStorage;
  v30 = result;
  v33 = *(a3 + 16);
  while (v6 < v3)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_47;
    }

    v9 = (v34 + 56 * v6);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v36 = v9[4];
    v37 = v6 + 1;
    v32 = v9[5];
    v14 = v9[6];

    v15 = sub_100042634();
    v16 = 0;
    if ((v15 & 0x10000) != 0)
    {
LABEL_23:

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v12 > v16)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v36 > v16)
        {
          if (sub_100042034())
          {
            v23 = 0;
            if (!v35)
            {
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          if (sub_100042034())
          {
            v23 = 2;
            if (!v35)
            {
LABEL_38:

LABEL_39:
              result = swift_isUniquelyReferenced_nonNull_native();
              v25 = v5;
              if ((result & 1) == 0)
              {
                result = sub_10001C268(0, *(v29 + 2) + 1, 1, v29);
                v29 = result;
              }

              v27 = *(v29 + 2);
              v26 = *(v29 + 3);
              if (v27 >= v26 >> 1)
              {
                result = sub_10001C268((v26 > 1), v27 + 1, 1, v29);
                v29 = result;
              }

              *(v29 + 2) = v27 + 1;
              v28 = &v29[24 * v27];
              v3 = v33;
              *(v28 + 4) = v32;
              *(v28 + 5) = v14;
              v28[48] = v23;
              v22 = v8 == v33;
              v5 = v25;
              goto LABEL_31;
            }

LABEL_35:

            v38._countAndFlagsBits = v5;
            v38._object = v4;
            v24 = sub_100042644(v38);

            if (v24)
            {
              v23 = 1;
            }

            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
      while (1)
      {
        v17 = *(v10 + 16);
        if (!v17)
        {
          break;
        }

        v18 = 0;
        v19 = (v10 + 36);
        while (*(v19 - 2) != v16 || *v19 != v15)
        {
          v19 += 3;
          if (v17 == ++v18)
          {
            v18 = 0;
            v20 = (v10 + 36);
            while (*(v20 - 2) != v16 || *v20 != 0)
            {
              v20 += 3;
              if (v17 == ++v18)
              {
                goto LABEL_22;
              }
            }

            break;
          }
        }

        v16 = *(v10 + 32 + 6 * v18 + 2);
        v15 = sub_100042634();
        if ((v15 & 0x10000) != 0)
        {
          v5 = v30;
          v4 = a2;
          goto LABEL_23;
        }
      }

LABEL_22:

      v5 = v30;
      v4 = a2;
    }

    v3 = v33;
    v22 = v8 == v33;
LABEL_31:
    v6 = v37;
    if (v22)
    {
      return v29;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000190B4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(*v0 + 16);
  sub_100042C64(v6);
  if (v6)
  {
    v7 = (v2 + 36);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;
      sub_100042C84(v8);
      sub_100042C84(v9);
      sub_100042C84(v10);
      --v6;
    }

    while (v6);
  }

  sub_100042004();
  sub_100042004();
  v11 = v0[5];
  v12 = v0[6];

  return _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100019178()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  sub_100042C54();
  v7 = *(v3 + 16);
  sub_100042C64(v7);
  if (v7)
  {
    v8 = (v3 + 36);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;
      sub_100042C84(v9);
      sub_100042C84(v10);
      sub_100042C84(v11);
      --v7;
    }

    while (v7);
  }

  v12 = v0[5];
  v13 = v1[6];
  sub_100042004();
  sub_100042004();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

Swift::Int sub_100019260()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_100019178();
}

uint64_t sub_1000192A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_1000190B4();
}

Swift::Int sub_1000192E8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v13 = v0[5];
  v6 = v0[6];
  sub_100042C54();
  sub_100042C64(*(v1 + 16));
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = (v1 + 36);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;
      sub_100042C84(v9);
      sub_100042C84(v10);
      sub_100042C84(v11);
      --v7;
    }

    while (v7);
  }

  sub_100042004();
  sub_100042004();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

uint64_t sub_1000193CC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((sub_1000194D4(*a1, *a2) & 1) == 0 || (sub_100041FF4() & 1) == 0 || (sub_100041FF4() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v9 && v14 == v11)
  {
    return 1;
  }

  return sub_100042BD4();
}

uint64_t sub_1000194D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 36);
  v4 = (result + 36);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    v8 = v7;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v8;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10001D204();
    v22 = sub_1000424D4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019744(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000165CC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_100042974();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_100042974();
LABEL_26:
        v17 = v16;
        v18 = sub_1000427E4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1000427E4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100042A54();
  }

  result = sub_100042A54();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100019984(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000199E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27AccountsUISupportServiceLib9SuggesterV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v26 = a2 + 32;
  v27 = result + 32;
  v25 = *(result + 16);
  while (v3 != v2)
  {
    v5 = (v27 + 56 * v3);
    result = *v5;
    v6 = (v26 + 56 * v3);
    v7 = *v6;
    v8 = *(*v5 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v10 = v5[1];
    v9 = v5[2];
    v11 = v5[3];
    v12 = v5[4];
    v13 = v5[5];
    v14 = v5[6];
    v16 = v6[1];
    v15 = v6[2];
    v18 = v6[3];
    v17 = v6[4];
    if (v8)
    {
      v19 = result == v7;
    }

    else
    {
      v19 = 1;
    }

    v20 = v6[5];
    v29 = v6[6];
    if (!v19)
    {
      v21 = (result + 36);
      v22 = (v7 + 36);
      while (v8)
      {
        if (*(v21 - 2) != *(v22 - 2) || *(v21 - 1) != *(v22 - 1) || *v21 != *v22)
        {
          return 0;
        }

        v21 += 3;
        v22 += 3;
        if (!--v8)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      break;
    }

LABEL_25:
    v28 = v3;

    if ((sub_100041FF4() & 1) == 0 || (sub_100041FF4() & 1) == 0)
    {

      return 0;
    }

    if (v13 == v20 && v14 == v29)
    {
    }

    else
    {
      v4 = sub_100042BD4();

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v28 + 1;
    result = 1;
    v2 = v25;
    if (v28 + 1 == v25)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Int Suggester.hashValue.getter(uint64_t a1)
{
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_100042C94();
}

Swift::Int sub_100019D50()
{
  v1 = *v0;
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_100042C94();
}

Swift::Int sub_100019DA0()
{
  v1 = *v0;
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_100042C94();
}

uint64_t Suggester.init<A>(texts:maximumEdits:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100042964();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_100042A44();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  sub_1000426B4();
  swift_getWitnessTable();
  sub_100042A94();
  v18 = a2;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_10001A138(sub_10001C874, v17, v8, &type metadata for Suggester.Element, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);
  (*(*(a3 - 8) + 8))(a1, a3);
  (*(v9 + 8))(v12, v8);
  return v15;
}

BOOL sub_10001A020(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_10001A040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];

  v7 = sub_100042614();
  if (!v7)
  {

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_10002FC54(v7, 0);

  v10 = sub_10002F980(v14, (v9 + 4), v8, v6, v5);

  if (v10 == v8)
  {

LABEL_5:
    sub_10001CF9C(v9, a2, v14);
    v12 = v15;
    v13 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    *(a3 + 40) = v6;
    *(a3 + 48) = v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A138(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = __chkstk_darwin(v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v49 - v21;
  v22 = sub_100042814();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = __chkstk_darwin(v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = __chkstk_darwin(v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  __chkstk_darwin(v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  __chkstk_darwin(v69);
  v38 = &v49 - v37;
  v39 = sub_1000426A4();
  v70 = sub_100042A14();
  v65 = sub_100042A24();
  sub_1000429D4(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_100042694();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_100042874();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_100042A04();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_100042874();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_100042A04();
      sub_100042874();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

AccountsUISupportServiceLib::Suggestion __swiftcall Suggestion.init(text:input:kind:)(Swift::String text, Swift::String input, AccountsUISupportServiceLib::Suggestion::Kind kind)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v6 = HIBYTE(input._object) & 0xF;
  if ((input._object & 0x2000000000000000) == 0)
  {
    v6 = input._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_100042644(input);

    if (v7)
    {
      kind = AccountsUISupportServiceLib_Suggestion_Kind_prefix;
    }
  }

  else
  {
  }

  v8 = countAndFlagsBits;
  v9 = object;
  v10 = kind;
  result.text._object = v9;
  result.text._countAndFlagsBits = v8;
  result.kind = v10;
  return result;
}

uint64_t Suggestion.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static Suggestion.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_100042BD4();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int Suggestion.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(a3);
  return sub_100042C94();
}

Swift::Int sub_10001AA38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v3);
  return sub_100042C94();
}

void sub_10001AA9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v3);
}

Swift::Int sub_10001AAD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v3);
  return sub_100042C94();
}

BOOL sub_10001AB34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_100042BD4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int sub_10001AB94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_100042C54();
  sub_100042C84(v1);
  sub_100042C84(v2);
  sub_100042C84(v3);
  return sub_100042C94();
}

void sub_10001AC04()
{
  v1 = v0[1];
  v2 = v0[2];
  sub_100042C84(*v0);
  sub_100042C84(v1);
  sub_100042C84(v2);
}

Swift::Int sub_10001AC50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_100042C54();
  sub_100042C84(v1);
  sub_100042C84(v2);
  sub_100042C84(v3);
  return sub_100042C94();
}

Swift::Int sub_10001ACF4()
{
  v1 = v0;
  v2 = *v0;
  sub_100042C54();
  v3 = *(v2 + 16);
  sub_100042C64(v3);
  if (v3)
  {
    v4 = (v2 + 36);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;
      sub_100042C84(v5);
      sub_100042C84(v6);
      sub_100042C84(v7);
      --v3;
    }

    while (v3);
  }

  v8 = v0[1];
  v9 = v0[2];
  v11 = v0[3];
  v10 = v1[4];
  sub_100042004();
  sub_100042004();
  return sub_100042C94();
}

uint64_t sub_10001ADB4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_100042C64(*(*v0 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 36);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;
      sub_100042C84(v8);
      sub_100042C84(v9);
      sub_100042C84(v10);
      --v6;
    }

    while (v6);
  }

  sub_100042004();

  return sub_100042004();
}

Swift::Int sub_10001AE6C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_100042C54();
  sub_100042C64(*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 36);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v7 += 3;
      sub_100042C84(v8);
      sub_100042C84(v9);
      sub_100042C84(v10);
      --v6;
    }

    while (v6);
  }

  sub_100042004();
  sub_100042004();
  return sub_100042C94();
}

uint64_t sub_10001AF38(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1000194D4(*a1, *a2) & 1) == 0 || (sub_100041FF4() & 1) == 0)
  {
    return 0;
  }

  return sub_100041FF4();
}

uint64_t sub_10001AFE8(int64_t *a1, uint64_t a2, uint64_t a3, Swift::UInt a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v15 = *(a5 + 16);
  if (*(v15 + 2))
  {
    v16 = sub_10001F8BC(a1, a2, a3, a4);
    if (v17)
    {
      v18 = *(*(v15 + 7) + 2 * v16);
      swift_endAccess();
      return v18;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v18 = *(a6 + 16);
  swift_beginAccess();
  if (((v18 + 1) & 0x10000) != 0)
  {
    __break(1u);
LABEL_27:
    v15 = sub_10001C5A0(0, *(v15 + 2) + 1, 1, v15);
    *(a8 + 16) = v15;
    goto LABEL_13;
  }

  *(a6 + 16) = v18 + 1;
  swift_beginAccess();
  v19 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  sub_100020D48(v18, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a5 + 16) = v53;
  swift_endAccess();
  v21 = a3;
  v22 = a1[2];
  if (!v22)
  {
    goto LABEL_16;
  }

  if (a1[v22 + 3] == *(a3 + 16))
  {
    swift_beginAccess();
    v23 = *(a7 + 16);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v23;
    if ((v24 & 1) == 0)
    {
      v23 = sub_10001C5A0(0, *(v23 + 2) + 1, 1, v23);
      *(a7 + 16) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_10001C5A0((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    *&v23[2 * v26 + 32] = v18;
    *(a7 + 16) = v23;
  }

  swift_beginAccess();
  v15 = *(a8 + 16);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v15;
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v29 = *(v15 + 2);
  v28 = *(v15 + 3);
  if (v29 >= v28 >> 1)
  {
    v47 = sub_10001C5A0((v28 > 1), v29 + 1, 1, v15);
    v21 = a3;
    v15 = v47;
  }

  else
  {
    v21 = a3;
  }

  *(v15 + 2) = v29 + 1;
  *&v15[2 * v29 + 32] = v18;
  *(a8 + 16) = v15;
LABEL_16:
  v54 = sub_10001CC5C(a1, v21);
  sub_100031A8C(&off_100051868);
  v30 = v54;
  v31 = *(v54 + 2);
  if (v31)
  {
    v50 = v18;
    swift_beginAccess();
    v32 = 32;
    v33 = a4;
    v34 = a3;
    v35 = a2;
    v48 = a2;
    v49 = a3;
    do
    {
      v36 = *&v30[v32];
      v37 = v33;
      v38 = sub_10001B414(v36, a1, v35, v34, v33);
      v39 = a6;
      v40 = sub_10001AFE8(v38);

      v41 = *(a9 + 16);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(a9 + 16) = v41;
      if ((v42 & 1) == 0)
      {
        v41 = sub_10001C488(0, *(v41 + 2) + 1, 1, v41);
        *(a9 + 16) = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v41 = sub_10001C488((v43 > 1), v44 + 1, 1, v41);
      }

      *(v41 + 2) = v44 + 1;
      v45 = &v41[6 * v44];
      *(v45 + 16) = v50;
      *(v45 + 17) = v40;
      *(v45 + 18) = v36;
      *(a9 + 16) = v41;
      v32 += 2;
      --v31;
      a6 = v39;
      v33 = v37;
      v35 = v48;
      v34 = v49;
      v30 = v54;
    }

    while (v31);

    return v50;
  }

  else
  {
  }

  return v18;
}

char *sub_10001B414(unsigned __int16 a1, int64_t *a2, int64_t *a3, uint64_t a4, uint64_t a5)
{

  v46 = a3;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = a2[2];
    v9 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10001C384(0, v8, 1, a2);
    }

    sub_10001CE00(0, v8, 0);
  }

  else
  {
    v9 = sub_10001C69C(0, a2[3] >> 1);
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = a3[2];
    v11 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10001C384(0, v10, 1, a3);
    }

    sub_10001CE00(0, v10, 0);
  }

  else
  {
    v11 = sub_10001C69C(0, a3[3] >> 1);
  }

  v12 = a2[2];
  v14 = a4;
  v13 = a5;
  v15 = v11;
  if (v12)
  {
    v16 = a3;
    if (!a2[4])
    {
      if (a3[2])
      {
        a3 = a3[4];
        if (a3 < a5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_68:
            v9 = sub_10001C384(0, *(v9 + 2) + 1, 1, v9);
          }

          v18 = *(v9 + 2);
          v17 = *(v9 + 3);
          if (v18 >= v17 >> 1)
          {
            v9 = sub_10001C384((v17 > 1), v18 + 1, 1, v9);
          }

          *(v9 + 2) = v18 + 1;
          *&v9[8 * v18 + 32] = 0;
          a3 = (a3 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_10001C384(0, *(v11 + 2) + 1, 1, v11);
          }

          v14 = a4;
          v13 = a5;
          v15 = v11;
          v20 = *(v11 + 2);
          v19 = *(v11 + 3);
          v16 = v46;
          if (v20 >= v19 >> 1)
          {
            v41 = sub_10001C384((v19 > 1), v20 + 1, 1, v11);
            v14 = a4;
            v13 = a5;
            v15 = v41;
            v16 = v46;
          }

          *(v15 + 2) = v20 + 1;
          *&v15[8 * v20 + 32] = a3;
        }
      }
    }
  }

  else
  {
    v16 = a3;
  }

  v21 = 0;
  a2 += 4;
  v22 = v14 + 32;
  v23 = v16 + 4;
LABEL_25:
  v24 = v21;
  while (v12 != v24)
  {
    if (v24 >= v12)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_60;
    }

    v25 = a2[v24];
    if (v25 >= *(v14 + 16))
    {
      break;
    }

    if (v25 < 0)
    {
      goto LABEL_61;
    }

    v26 = v16[2];
    if (v24 >= v26)
    {
      goto LABEL_62;
    }

    v27 = *(v22 + 2 * v25) != a1;
    v28 = v23[v24];
    a3 = (v28 + v27);
    if (__OFADD__(v28, v27))
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 2);
    if (v11)
    {
      if (*&v9[8 * v11 + 24] == v25)
      {
        v29 = *(v15 + 2);
        if (v29)
        {
          v30 = *&v15[8 * v29 + 24];
          v31 = __OFADD__(v30, 1);
          v32 = (v30 + 1);
          if (v31)
          {
            goto LABEL_67;
          }

          if (v32 < a3)
          {
            a3 = v32;
          }
        }
      }
    }

    if (v21 < v12)
    {
      if (v21 < 0)
      {
        goto LABEL_64;
      }

      if (a2[v21] == v25 + 1)
      {
        if (v21 >= v26)
        {
          goto LABEL_65;
        }

        v33 = v23[v21];
        v31 = __OFADD__(v33, 1);
        v34 = (v33 + 1);
        if (v31)
        {
          goto LABEL_66;
        }

        if (v34 < a3)
        {
          a3 = v34;
        }
      }
    }

    ++v24;
    if (a3 <= v13)
    {
      v43 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10001C384(0, v11 + 1, 1, v9);
      }

      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      v42 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v9 = sub_10001C384((v35 > 1), v42, 1, v9);
      }

      *(v9 + 2) = v42;
      *&v9[8 * v36 + 32] = v25 + 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v43;
      }

      else
      {
        v15 = sub_10001C384(0, *(v43 + 2) + 1, 1, v43);
      }

      v38 = *(v15 + 2);
      v37 = *(v15 + 3);
      v11 = (v38 + 1);
      v14 = a4;
      v13 = a5;
      v16 = v46;
      if (v38 >= v37 >> 1)
      {
        v39 = sub_10001C384((v37 > 1), v38 + 1, 1, v15);
        v14 = a4;
        v13 = a5;
        v15 = v39;
        v16 = v46;
      }

      *(v15 + 2) = v11;
      *&v15[8 * v38 + 32] = a3;
      goto LABEL_25;
    }
  }

  return v9;
}

void *sub_10001B8B0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2 != -1)
  {
    sub_100013064(0, a2 + 1, 0);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage[2];
    do
    {
      v5 = _swiftEmptyArrayStorage[3];
      if (v4 >= v5 >> 1)
      {
        sub_100013064((v5 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4++ + 4] = v3++;
    }

    while (v2 != v3);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_10001B9B0(uint64_t a1, Swift::UInt a2)
{
  sub_100042C54();
  v4 = *(a1 + 16);
  sub_100042C64(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_100042C84(v6);
      --v4;
    }

    while (v4);
  }

  sub_100042C64(a2);
  return sub_100042C94();
}

void sub_10001BA38()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100042C64(*(*v0 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_100042C84(v5);
      --v3;
    }

    while (v3);
  }

  sub_100042C64(v1);
}

Swift::Int sub_10001BA94()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100042C54();
  sub_100042C64(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_100042C84(v5);
      --v3;
    }

    while (v3);
  }

  sub_100042C64(v1);
  return sub_100042C94();
}

uint64_t sub_10001BB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_100019984(*a1, *a2) & (v2 == v3);
}

void sub_10001BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt a5)
{
  v9 = *(a2 + 16);
  sub_100042C64(v9);
  if (v9)
  {
    v10 = (a2 + 32);
    do
    {
      v11 = *v10++;
      sub_100042C64(v11);
      --v9;
    }

    while (v9);
  }

  v12 = *(a3 + 16);
  sub_100042C64(v12);
  if (v12)
  {
    v13 = (a3 + 32);
    do
    {
      v14 = *v13++;
      sub_100042C64(v14);
      --v12;
    }

    while (v12);
  }

  v15 = *(a4 + 16);
  sub_100042C64(v15);
  if (v15)
  {
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      sub_100042C84(v17);
      --v15;
    }

    while (v15);
  }

  sub_100042C64(a5);
}

Swift::Int sub_10001BBFC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100042C54();
  sub_10001BB48(v6, v1, v2, v4, v3);
  return sub_100042C94();
}

Swift::Int sub_10001BC68()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100042C54();
  sub_10001BB48(v6, v1, v2, v4, v3);
  return sub_100042C94();
}

uint64_t sub_10001BCC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (sub_1000199E0(*a1, *a2) & 1) != 0 && (sub_1000199E0(v2, v5))
  {
    return sub_100019984(v3, v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

char *sub_10001BD68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F60, &qword_100044CA0);
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

size_t sub_10001BE9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003288(a5, a6);
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

size_t sub_10001C078(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003288(&qword_100054DF0, &unk_100044C70);
  v10 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10001C268(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F70, &qword_100044CA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001C384(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E08, &qword_100044798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10001C488(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F58, &unk_100044C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10001C5A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E10, &unk_100044C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_10001C69C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003288(&qword_100054E08, &qword_100044798);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100042C64(v3);
  if (v3)
  {
    v4 = 0;
    v15 = a2 + 32;
    do
    {
      v5 = (v15 + 56 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      v16 = v5[2];
      v17 = v5[4];
      v18 = v5[5];
      v9 = v5[6];
      sub_100042C64(*(*v5 + 16));
      v10 = *(v6 + 16);
      if (v10)
      {
        v11 = (v6 + 36);
        do
        {
          v12 = *(v11 - 2);
          v13 = *(v11 - 1);
          v14 = *v11;
          v11 += 3;
          sub_100042C84(v12);
          sub_100042C84(v13);
          sub_100042C84(v14);
          --v10;
        }

        while (v10);
      }

      ++v4;

      sub_100042004();
      sub_100042004();
      _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    }

    while (v4 != v3);
  }
}

unint64_t sub_10001C898()
{
  result = qword_100054F38;
  if (!qword_100054F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F38);
  }

  return result;
}

unint64_t sub_10001C8F0()
{
  result = qword_100054F40;
  if (!qword_100054F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F40);
  }

  return result;
}

unint64_t sub_10001C948()
{
  result = qword_100054F48;
  if (!qword_100054F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F48);
  }

  return result;
}

uint64_t sub_10001C9AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001C9F4(uint64_t result, int a2, int a3)
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

__n128 sub_10001CA54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001CA70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10001CAB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001CB18()
{
  result = qword_100054F50;
  if (!qword_100054F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F50);
  }

  return result;
}

void sub_10001CB6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_100042A54();
    sub_100042C64(v8);
    v3 = sub_100042A54();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_100042C64(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_100042974();
      sub_1000427F4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1000427F4();

      --v3;
    }

    while (v3);
  }
}

char *sub_10001CC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = (a1 + 32);
    do
    {
      v9 = *v5++;
      v8 = v9;
      if (v9 < v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100013064(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v7 = *(&_swiftEmptyArrayStorage + 2);
        v6 = *(&_swiftEmptyArrayStorage + 3);
        if (v7 >= v6 >> 1)
        {
          sub_100013064((v6 > 1), v7 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
        *(&_swiftEmptyArrayStorage + v7 + 4) = v8;
      }

      --v3;
    }

    while (v3);
  }

  v10 = *(&_swiftEmptyArrayStorage + 2);
  if (v10)
  {
    result = sub_100013084(0, v10, 0);
    v12 = *(a2 + 16);
    v13 = 32;
    while (1)
    {
      v14 = *(&_swiftEmptyArrayStorage + v13);
      if (v14 >= v12)
      {
        break;
      }

      v15 = *(a2 + 32 + 2 * v14);
      v17 = *(&_swiftEmptyArrayStorage + 2);
      v16 = *(&_swiftEmptyArrayStorage + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_100013084((v16 > 1), v17 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v17 + 1;
      *(&_swiftEmptyArrayStorage + v17 + 16) = v15;
      v13 += 8;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_10001CE00(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_100042024();

  sub_100042024();

  v8 = *(a1 + 16);
  v21 = sub_100042014();
  v22 = v9;
  v10 = sub_100042014();
  v12 = v11;
  v20 = v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 32);
    do
    {
      v15 = *v14++;
      sub_100042044();
      --v13;
    }

    while (v13);
  }

  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = (a3 + 32);
    do
    {
      v19 = *v18++;
      result = sub_100042044();
      --v17;
    }

    while (v17);
    v12 = v20;
  }

  *a4 = a1;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v10;
  a4[4] = v12;
  return result;
}

double sub_10001CF9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000090EC(_swiftEmptyArrayStorage);
  v21 = swift_allocObject();
  *(v21 + 16) = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = sub_10001B8B0(a1, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10001AFE8(v7, v9, v11, v13, v22, v19, v5, v6, v21);

  swift_beginAccess();
  v14 = *(v21 + 16);
  swift_beginAccess();
  v15 = *(v5 + 16);
  swift_beginAccess();
  v16 = *(v6 + 16);

  sub_10001CEA8(v14, v15, v16, v23);

  result = *v23;
  v18 = v23[1];
  *a3 = v23[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v24;
  return result;
}

uint64_t sub_10001D1CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001D204()
{
  result = qword_100054F68;
  if (!qword_100054F68)
  {
    sub_100041BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F68);
  }

  return result;
}

uint64_t sub_10001D25C(uint64_t *a1, int a2)
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

uint64_t sub_10001D2A4(uint64_t result, int a2, int a3)
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

uint64_t sub_10001D2F0(uint64_t *a1, int a2)
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

uint64_t sub_10001D338(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for DeterministicFiniteAutomaton.Transition(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeterministicFiniteAutomaton.Transition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeterministicFiniteAutomaton.Transition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

__n128 sub_10001D3F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001D40C(uint64_t *a1, int a2)
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

uint64_t sub_10001D454(uint64_t result, int a2, int a3)
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

unint64_t sub_10001D4B0()
{
  result = qword_100054F78;
  if (!qword_100054F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F78);
  }

  return result;
}

unint64_t sub_10001D508()
{
  result = qword_100054F80;
  if (!qword_100054F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F80);
  }

  return result;
}

unint64_t sub_10001D560()
{
  result = qword_100054F88;
  if (!qword_100054F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F88);
  }

  return result;
}

unint64_t sub_10001D5B8()
{
  result = qword_100054F90;
  if (!qword_100054F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F90);
  }

  return result;
}

__n128 Request.init(method:path:queryItems:headers:cookies:requestBody:followRedirects:authenticator:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v24) = a1;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v26 = v21;
  v27 = v22;
  LOBYTE(v28) = a10;
  *(&v28 + 1) = a11;
  v29 = a12;
  v30 = a13;
  v31[0] = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = v21;
  v36 = v22;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  sub_100004FA4(&v24, v23);
  sub_100005000(v31);
  v18 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v18;
  *(a9 + 96) = v30;
  v19 = v25;
  *a9 = v24;
  *(a9 + 16) = v19;
  result = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10001D720(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4843544150;
  v6 = 0xE400000000000000;
  v7 = 1414745936;
  if (a1 != 4)
  {
    v7 = 5526864;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 5522759;
  if (a1 != 1)
  {
    v9 = 1145128264;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x4554454C4544;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x4843544150)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1414745936)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE300000000000000;
    v13 = 21840;
  }

  else
  {
    if (!a2)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x4554454C4544)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 != 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1145128264)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE300000000000000;
    v13 = 17735;
  }

  if (v10 != (v13 | 0x540000))
  {
LABEL_34:
    v14 = sub_100042BD4();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_10001D8B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 7632239;
    }

    if (v4 == 2)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x7470697263736564;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  v7 = 0xE200000000000000;
  v8 = 28265;
  if (a2 != 2)
  {
    v8 = 7632239;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100042BD4();
  }

  return v11 & 1;
}

Swift::Int sub_10001D9C0()
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

Swift::Int sub_10001DAA0()
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t Request.HeaderField.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x616D67617250;
    v6 = 0x65676E6152;
    if (a1 != 8)
    {
      v6 = 0x6B6F6F432D746553;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1734431813;
    if (a1 != 5)
    {
      v7 = 0x6E6F697461636F4CLL;
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
    v1 = 0x747065636341;
    v2 = 0x2D746E65746E6F43;
    v3 = 0x2D746E65746E6F43;
    if (a1 != 3)
    {
      v3 = 0x65696B6F6F43;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7A69726F68747541;
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

uint64_t Request.path.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Request.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Request.queryItems.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Request.headers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Request.cookies.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Request.requestBody.getter()
{
  v1 = *(v0 + 48);
  sub_10001DE88(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_10001DE88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001DE9C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001DE9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Request.requestBody.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100004F3C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Request.authenticator.getter()
{
  v1 = *(v0 + 72);
  sub_10001DFC8(v1, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v1;
}

uint64_t sub_10001DFC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
  }

  return result;
}

void Request.authenticator.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000F728(*(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96));
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
}

void Request.hash(into:)(__int128 *a1)
{
  v2 = v1;
  *v1;
  *v1;
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);
  sub_100042C64(v7);
  if (v7)
  {
    v8 = *(sub_100041BD4() - 8);
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    sub_100022C9C(&qword_100054FC0, &type metadata accessor for URLQueryItem);
    do
    {
      sub_1000424A4();
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  sub_10002166C(a1, *(v2 + 32));
  sub_10001CB6C(a1, *(v2 + 40));
  if (*(v2 + 56) >> 60 == 15)
  {
    sub_100042C74(0);
  }

  else
  {
    v11 = *(v2 + 48);
    sub_100042C74(1u);
    sub_100041D14();
  }

  sub_100042C74(*(v2 + 64) & 1);
  if (*(v2 + 88))
  {
    v12 = *(v2 + 96);
    v13 = *(v2 + 80);
    v14 = *(v2 + 72);
    sub_100042C74(1u);
    sub_100042C64(v14);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    if (v12)
    {
      sub_100042C64(1uLL);
      sub_1000427F4();
    }

    else
    {
      sub_100042C64(0);
    }
  }

  else
  {
    sub_100042C74(0);
  }
}

Swift::Int Request.hashValue.getter()
{
  sub_100042C54();
  Request.hash(into:)(v1);
  return sub_100042C94();
}

Swift::Int sub_10001E350()
{
  sub_100042C54();
  Request.hash(into:)(v1);
  return sub_100042C94();
}

uint64_t sub_10001E38C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s27AccountsUISupportServiceLib7RequestV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t Request.Method.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x4554454C4544;
  v2 = 0x4843544150;
  v3 = 1414745936;
  if (a1 != 4)
  {
    v3 = 5526864;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 5522759;
  if (a1 != 1)
  {
    v4 = 1145128264;
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

uint64_t sub_10001E49C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s27AccountsUISupportServiceLib7RequestV6MethodO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001E4CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4554454C4544;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE400000000000000;
  v8 = 1414745936;
  if (v2 != 4)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5522759;
  if (v2 != 1)
  {
    v10 = 1145128264;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10001E61C()
{
  *v0;
  *v0;
  *v0;
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10001E6F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Request.HeaderField.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Request.HeaderField.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100042BD4();
  }

  return v8 & 1;
}

uint64_t sub_10001E778@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s27AccountsUISupportServiceLib7RequestV11HeaderFieldO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001E7A8@<X0>(uint64_t *a1@<X8>)
{
  result = Request.HeaderField.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10001E884()
{
  v1 = *v0;
  sub_100042C54();
  Request.HeaderField.rawValue.getter(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t sub_10001E8E8()
{
  Request.HeaderField.rawValue.getter(*v0);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10001E93C()
{
  v1 = *v0;
  sub_100042C54();
  Request.HeaderField.rawValue.getter(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t Request.subscript.getter(unsigned __int8 a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_10001F724(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];

  return v7;
}

uint64_t Request.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100041BD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {
    v21 = v8;
    v22 = a3;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v23 = *(v14 + 56);
    v24 = v15;
    while (1)
    {
      v24(v11, v16, v7);
      if (sub_100041BC4() == a1 && v17 == a2)
      {
        break;
      }

      v18 = sub_100042BD4();

      if (v18)
      {
        goto LABEL_10;
      }

      (*(v14 - 8))(v11, v7);
      v16 += v23;
      if (!--v13)
      {
        v19 = 1;
        v8 = v21;
        a3 = v22;
        return (*(v8 + 56))(a3, v19, 1, v7);
      }
    }

LABEL_10:
    v8 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a3, v19, 1, v7);
}

unint64_t Request.setByteRange(_:)()
{
  v5._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1000425C4(v6);
  v7._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v7);

  v1 = *(v0 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 32);
  result = sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8u, isUniquelyReferenced_nonNull_native);
  *(v0 + 32) = v4;
  return result;
}

{
  v5._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1000425C4(v6);
  v1 = *(v0 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 32);
  result = sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8u, isUniquelyReferenced_nonNull_native);
  *(v0 + 32) = v4;
  return result;
}

void Request.setByteRange(_:)(uint64_t a1, uint64_t a2)
{
  v7._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v7);

  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_1000425C4(v8);
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9._countAndFlagsBits = sub_100042BA4();
    sub_1000425C4(v9);

    v4 = *(v2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v2 + 32);
    sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8u, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v6;
  }
}

__n128 Request.init<A>(logger:method:path:queryItems:headers:json:encoder:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v42 = a4;
  *(&v42 + 1) = a5;
  v15 = sub_100041B44();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v40 = a2;
  if (a2 == 1)
  {
  }

  else
  {
    v17 = sub_100042BD4();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v18 = sub_1000423F4();
  v19 = sub_1000427C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "GET method should not have any payload.", v20, 2u);
  }

LABEL_7:
  if (!a8)
  {
    v21 = sub_100041B84();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_100041B74();
    sub_100041B34();
    sub_100041B54();
  }

  v39 = a7;
  v24 = sub_100041B64();
  v26 = v25;

  v49[0] = &off_100051A50;
  sub_100003288(&qword_100054C00, &qword_100044510);
  sub_10000DC08();
  v27 = sub_1000424C4();
  v29 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = a6;
  sub_100020EE4(v27, v29, 3u, isUniquelyReferenced_nonNull_native);
  v31 = v49[0];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v31;
  sub_100020EE4(0xD000000000000010, 0x8000000100046F50, 0, v32);
  v33 = v49[0];

  (*(*(a10 - 8) + 8))(v39);
  v34 = sub_100042414();
  (*(*(v34 - 8) + 8))(a1, v34);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v44) = v40;
  *(&v44 + 1) = a3;
  v45 = v42;
  *&v46 = v33;
  *(&v46 + 1) = _swiftEmptyArrayStorage;
  v47.n128_u64[0] = v24;
  v47.n128_u64[1] = v26;
  v48[0] = 1;
  memset(&v48[8], 0, 32);
  LOBYTE(v49[0]) = v40;
  v49[1] = a3;
  v50 = v42;
  v51 = v33;
  v52 = _swiftEmptyArrayStorage;
  v53 = v24;
  v54 = v26;
  v55 = 1;
  v56 = 0u;
  v57 = 0u;
  sub_100004FA4(&v44, &v43);
  sub_100005000(v49);
  v35 = *&v48[16];
  *(a9 + 64) = *v48;
  *(a9 + 80) = v35;
  *(a9 + 96) = *&v48[32];
  v36 = v45;
  *a9 = v44;
  *(a9 + 16) = v36;
  result = v47;
  *(a9 + 32) = v46;
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10001F364@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100041C34();
    if (v10)
    {
      v11 = sub_100041C54();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100041C44();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100041C34();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100041C54();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100041C44();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10001F594(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000220C0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100004F50(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10001F364(v13, a3, a4, &v12);
  v10 = v4;
  sub_100004F50(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10001F724(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100042C54();
  Request.HeaderField.rawValue.getter(a1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  v4 = sub_100042C94();

  return sub_10001F954(a1, v4);
}

unint64_t sub_10001F7AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000423E4();
  sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider);
  v5 = sub_100042494();

  return sub_10001FC64(a1, v5);
}

unint64_t sub_10001F844(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v6 = sub_100042C94();

  return sub_10001FE24(a1, a2, v6);
}

unint64_t sub_10001F8BC(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  v9 = *(v4 + 40);
  sub_100042C54();
  sub_10001BB48(v12, a1, a2, a3, a4);
  v10 = sub_100042C94();

  return sub_10001FEDC(a1, a2, a3, a4, v10);
}

unint64_t sub_10001F954(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = 0xE600000000000000;
    v25 = a1;
    while (1)
    {
      v6 = *(*(v26 + 48) + v4);
      v27 = v4;
      if (v6 > 4)
      {
        if (*(*(v26 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE400000000000000;
            v11 = 1734431813;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x6E6F697461636F4CLL;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE600000000000000;
          v11 = 0x616D67617250;
        }

        else if (v6 == 8)
        {
          v12 = 0xE500000000000000;
          v11 = 0x65676E6152;
        }

        else
        {
          v11 = 0x6B6F6F432D746553;
          v12 = 0xEA00000000006569;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x2D746E65746E6F43;
        }

        else
        {
          v7 = 0x65696B6F6F43;
        }

        if (v6 == 3)
        {
          v8 = 0xEC00000065707954;
        }

        else
        {
          v8 = 0xE600000000000000;
        }

        if (v6 == 2)
        {
          v7 = 0x2D746E65746E6F43;
          v8 = 0xEE006874676E654CLL;
        }

        v9 = *(*(v26 + 48) + v4) ? 0x7A69726F68747541 : 0x747065636341;
        v10 = v6 ? 0xED00006E6F697461 : 0xE600000000000000;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x6B6F6F432D746553;
      if (v25 == 8)
      {
        v13 = 0x65676E6152;
      }

      v14 = 0xEA00000000006569;
      if (v25 == 8)
      {
        v14 = 0xE500000000000000;
      }

      if (v25 == 7)
      {
        v13 = 0x616D67617250;
        v14 = 0xE600000000000000;
      }

      v15 = 0x6E6F697461636F4CLL;
      if (v25 == 5)
      {
        v15 = 1734431813;
      }

      v16 = 0xE400000000000000;
      if (v25 != 5)
      {
        v16 = 0xE800000000000000;
      }

      if (v25 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v25 == 3)
      {
        v17 = 0x2D746E65746E6F43;
      }

      else
      {
        v17 = 0x65696B6F6F43;
      }

      if (v25 == 3)
      {
        v18 = 0xEC00000065707954;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (v25 == 2)
      {
        v17 = 0x2D746E65746E6F43;
        v18 = 0xEE006874676E654CLL;
      }

      if (v25)
      {
        v19 = 0x7A69726F68747541;
      }

      else
      {
        v19 = 0x747065636341;
      }

      if (v25)
      {
        v5 = 0xED00006E6F697461;
      }

      if (v25 <= 1)
      {
        v17 = v19;
        v18 = v5;
      }

      v20 = v25 <= 4 ? v17 : v13;
      v21 = v25 <= 4 ? v18 : v14;
      if (v11 == v20 && v12 == v21)
      {
        break;
      }

      v22 = sub_100042BD4();

      if (v22)
      {
        return v27;
      }

      v4 = (v27 + 1) & v24;
      v5 = 0xE600000000000000;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v27;
  }

  return v4;
}

unint64_t sub_10001FC64(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000423E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100022C9C(&qword_100054FF0, &type metadata accessor for Provider);
      v16 = sub_1000424D4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10001FE24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100042BD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v9 = ~v7;
  v10 = *(a1 + 16);
  while (1)
  {
    v11 = (*(v5 + 48) + 32 * result);
    v12 = *v11;
    if (*(*v11 + 16) == v10)
    {
      break;
    }

LABEL_4:
    result = (result + 1) & v9;
    if (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  if (!v10 || v12 == a1)
  {
LABEL_12:
    v19 = *(v13 + 16);
    if (v19 == *(a2 + 16))
    {
      if (!v19 || v13 == a2)
      {
LABEL_18:
        v22 = *(v14 + 16);
        if (v22 == *(a3 + 16))
        {
          if (!v22 || v14 == a3)
          {
LABEL_3:
            if (v15 == a4)
            {
              return result;
            }
          }

          else
          {
            v23 = (v14 + 32);
            v24 = (a3 + 32);
            while (*v23 == *v24)
            {
              ++v23;
              ++v24;
              if (!--v22)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      else
      {
        v20 = (v13 + 32);
        v21 = (a2 + 32);
        while (*v20 == *v21)
        {
          ++v20;
          ++v21;
          if (!--v19)
          {
            goto LABEL_18;
          }
        }
      }
    }

    goto LABEL_4;
  }

  v16 = (v12 + 32);
  v17 = (a1 + 32);
  v18 = *(a1 + 16);
  while (v18)
  {
    if (*v16 != *v17)
    {
      goto LABEL_4;
    }

    ++v16;
    ++v17;
    if (!--v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10002005C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000423E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100003288(&qword_100054AD0, &qword_100043BE0);
  v43 = a2;
  result = sub_100042A74();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider);
      result = sub_100042494();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100020438(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003288(&qword_100054AC0, &qword_100043BD0);
  v46 = a2;
  result = sub_100042A74();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v5;
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
      v48 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 32 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v49 = v23[3];
      v47 = *(*(v5 + 56) + 2 * v22);
      if ((v46 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_100042C54();
      v50 = v24;
      v28 = *(v24 + 16);
      sub_100042C64(v28);
      if (v28)
      {
        v29 = (v50 + 32);
        do
        {
          v30 = *v29++;
          sub_100042C64(v30);
          --v28;
        }

        while (v28);
      }

      v31 = *(v25 + 16);
      sub_100042C64(v31);
      if (v31)
      {
        v32 = (v25 + 32);
        do
        {
          v33 = *v32++;
          sub_100042C64(v33);
          --v31;
        }

        while (v31);
      }

      v34 = *(v26 + 16);
      sub_100042C64(v34);
      if (v34)
      {
        v35 = (v26 + 32);
        do
        {
          v36 = *v35++;
          sub_100042C84(v36);
          --v34;
        }

        while (v34);
      }

      sub_100042C64(v49);
      result = sub_100042C94();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v50;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v8 + 48) + 32 * v16);
      *v18 = v17;
      v18[1] = v25;
      v18[2] = v26;
      v18[3] = v49;
      *(*(v8 + 56) + 2 * v16) = v47;
      ++*(v8 + 16);
      v5 = v45;
      v13 = v48;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_46;
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
        v48 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_44;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_44:
  *v3 = v8;
  return result;
}

uint64_t sub_100020798(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003288(&qword_100054AB8, &qword_100043BC8);
  v35 = a2;
  result = sub_100042A74();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_100042C54();
      _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

      result = sub_100042C94();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100020B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000423E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10001F7AC(a2);
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
      sub_1000210FC();
      goto LABEL_7;
    }

    sub_10002005C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10001F7AC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100021044(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_100042C04();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_100020D48(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_10001F8BC(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_100020438(v20, a6 & 1);
      v24 = *v7;
      result = sub_10001F8BC(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_100042C04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_10002137C();
      result = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    *(v26[7] + 2 * result) = a1;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v27 = (v26[6] + 32 * result);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v26[7] + 2 * result) = a1;
  v28 = v26[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v29;
}

unint64_t sub_100020EE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001F724(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100020798(v16, a4 & 1);
      v20 = *v5;
      result = sub_10001F724(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_100042C04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100021504();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_100021044(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000423E4();
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

char *sub_1000210FC()
{
  v1 = v0;
  v34 = sub_1000423E4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003288(&qword_100054AD0, &qword_100043BE0);
  v4 = *v0;
  v5 = sub_100042A64();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10002137C()
{
  v1 = v0;
  sub_100003288(&qword_100054AC0, &qword_100043BD0);
  v2 = *v0;
  v3 = sub_100042A64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        v22 = v18[2];
        v21 = v18[3];
        v23 = *(*(v2 + 56) + 2 * v17);
        v24 = (*(v4 + 48) + 32 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v22;
        v24[3] = v21;
        *(*(v4 + 56) + 2 * v17) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100021504()
{
  v1 = v0;
  sub_100003288(&qword_100054AB8, &qword_100043BC8);
  v2 = *v0;
  v3 = sub_100042A64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_10002166C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(a2 + 48) + v11);
    v13 = (*(a2 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    v19 = a1[2];
    v20 = a1[3];
    v21 = *(a1 + 8);
    v17 = *a1;
    v18 = a1[1];
    v6 &= v6 - 1;

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    v8 ^= sub_100042C94();
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

      sub_100042C64(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000218E0(__int128 *a1, uint64_t a2)
{
  v64 = a1;
  v55 = sub_100042114();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000423E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v53 - v11;
  v12 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = *(a2 + 64);
  v65 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v53 = (v20 + 63) >> 6;
  v58 = v7 + 16;
  v71 = (v7 + 32);
  v60 = v7;
  v62 = (v7 + 8);
  v56 = v3 + 16;
  v57 = v3;
  v23 = (v3 + 8);
  v61 = a2;

  v24 = 0;
  v25 = 0;
  v68 = v18;
  v69 = v16;
  v70 = v6;
  while (v22)
  {
    v26 = v25;
LABEL_16:
    v72 = (v22 - 1) & v22;
    v29 = __clz(__rbit64(v22)) | (v26 << 6);
    v30 = v61;
    v31 = v60;
    v32 = v59;
    (*(v60 + 16))(v59, *(v61 + 48) + *(v60 + 72) * v29, v6);
    v33 = *(*(v30 + 56) + 8 * v29);
    v34 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v35 = v6;
    v36 = v34;
    v37 = *(v34 + 48);
    v38 = *(v31 + 32);
    v16 = v69;
    v38(v69, v32, v35);
    *&v16[v37] = v33;
    (*(*(v36 - 8) + 56))(v16, 0, 1, v36);

    v18 = v68;
LABEL_17:
    sub_100022C2C(v16, v18);
    v39 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    if ((*(*(v39 - 8) + 48))(v18, 1, v39) == 1)
    {

      sub_100042C64(v24);
      return;
    }

    v40 = *(v39 + 48);
    v6 = v70;
    v41 = v63;
    (*v71)(v63, v18, v70);
    v42 = *&v18[v40];
    v43 = v64[3];
    v75 = v64[2];
    v76 = v43;
    v77 = *(v64 + 8);
    v44 = v64[1];
    v73 = *v64;
    v74 = v44;
    sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider);
    sub_1000424A4();
    (*v62)(v41, v6);
    sub_100042C64(*(v42 + 16));
    v45 = *(v42 + 16);
    if (v45)
    {
      v67 = v24;
      v46 = *(v57 + 80);
      v66 = v42;
      v47 = v42 + ((v46 + 32) & ~v46);
      v48 = *(v57 + 72);
      v49 = *(v57 + 16);
      v50 = v55;
      v51 = v54;
      do
      {
        v49(v51, v47, v50);
        sub_100022C9C(&qword_100054FE8, &type metadata accessor for EmailAddress.Domain);
        sub_1000424A4();
        (*v23)(v51, v50);
        v47 += v48;
        --v45;
      }

      while (v45);

      v16 = v69;
      v6 = v70;
      v24 = v67;
      v18 = v68;
    }

    else
    {
    }

    v24 ^= sub_100042C94();
    v22 = v72;
  }

  if (v53 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v53;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v53)
    {
      v52 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
      (*(*(v52 - 8) + 56))(v16, 1, 1, v52);
      v72 = 0;
      v25 = v28;
      goto LABEL_17;
    }

    v22 = *(v65 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100021F1C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v21 = v8;
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a2 + 56) + 8 * v11);
    v24 = a1[2];
    v25 = a1[3];
    v26 = *(a1 + 8);
    v22 = *a1;
    v23 = a1[1];

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    sub_100042C64(*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v6 &= v6 - 1;

    v8 = sub_100042C94() ^ v21;
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

      sub_100042C64(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v21 = v8;
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000220C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100041C34();
  v11 = result;
  if (result)
  {
    result = sub_100041C54();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100041C44();
  sub_10001F364(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100022178(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10001DE9C(a3, a4);
          return sub_10001F594(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s27AccountsUISupportServiceLib7RequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0x4554454C4544;
  v5 = *a1;
  if (v5 > 2)
  {
    v10 = 0xE400000000000000;
    v11 = 1414745936;
    if (v5 != 4)
    {
      v11 = 5526864;
      v10 = 0xE300000000000000;
    }

    if (v5 == 3)
    {
      v8 = 0x4843544150;
    }

    else
    {
      v8 = v11;
    }

    if (v5 == 3)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 5522759;
    if (v5 != 1)
    {
      v7 = 1145128264;
      v6 = 0xE400000000000000;
    }

    if (*a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x4554454C4544;
    }

    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  v12 = 0xE600000000000000;
  v13 = 0xE500000000000000;
  v14 = *a2;
  v15 = 0x4843544150;
  v16 = 0xE400000000000000;
  v17 = 1414745936;
  if (v14 != 4)
  {
    v17 = 5526864;
    v16 = 0xE300000000000000;
  }

  if (v14 != 3)
  {
    v15 = v17;
    v13 = v16;
  }

  v18 = 0xE300000000000000;
  v19 = 5522759;
  if (v14 != 1)
  {
    v19 = 1145128264;
    v18 = 0xE400000000000000;
  }

  if (*a2)
  {
    v4 = v19;
    v12 = v18;
  }

  if (*a2 <= 2u)
  {
    v20 = v4;
  }

  else
  {
    v20 = v15;
  }

  if (*a2 <= 2u)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v8 == v20 && v9 == v21)
  {
  }

  else
  {
    v22 = sub_100042BD4();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_100042BD4() & 1) == 0 || (sub_100019560(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (sub_100034150(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100019744(*(a1 + 5), *(a2 + 5)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 3);
  v42 = *(a2 + 3);
  v43 = v23;
  v24 = v23;
  v25 = v42;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v42 + 1) >> 60 == 15)
    {
      sub_100022D8C(&v43, v41);
      sub_100022D8C(&v42, v41);
      sub_100004F3C(v24, *(&v24 + 1));
      goto LABEL_48;
    }

LABEL_46:
    sub_100022D8C(&v43, v41);
    sub_100022D8C(&v42, v41);
    sub_100004F3C(v24, *(&v24 + 1));
    sub_100004F3C(v25, *(&v25 + 1));
    return 0;
  }

  if (*(&v42 + 1) >> 60 == 15)
  {
    goto LABEL_46;
  }

  sub_100022D8C(&v43, v41);
  sub_100022D8C(&v42, v41);
  v26 = sub_100022178(v24, *(&v24 + 1), v25, *(&v25 + 1));
  sub_100004F3C(v25, *(&v25 + 1));
  sub_100004F3C(v24, *(&v24 + 1));
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if ((a1[64] ^ a2[64]))
  {
    return 0;
  }

  v28 = *(a1 + 9);
  v27 = *(a1 + 10);
  v29 = *(a1 + 11);
  v30 = *(a1 + 12);
  v32 = *(a2 + 9);
  v31 = *(a2 + 10);
  v34 = *(a2 + 11);
  v33 = *(a2 + 12);
  if (!v29)
  {
    if (!v34)
    {
      return 1;
    }

    goto LABEL_54;
  }

  if (!v34)
  {
LABEL_54:
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, v30);
    sub_10000F728(v28, v27, v29, v30);
    v35 = v32;
    v36 = v31;
    v37 = v34;
    v38 = v33;
    goto LABEL_55;
  }

  if (v32 != v28 || (v27 != v31 || v29 != v34) && (sub_100042BD4() & 1) == 0)
  {
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, v30);

    v35 = v28;
    v36 = v27;
    v37 = v29;
    v38 = v30;
LABEL_55:
    sub_10000F728(v35, v36, v37, v38);
    return 0;
  }

  if (v30)
  {
    if (v33)
    {
      sub_100003084();
      sub_10001DFC8(v32, v31, v34, v33);
      sub_10001DFC8(v28, v27, v29, v30);
      v40 = sub_1000427E4();

      sub_10000F728(v28, v27, v29, v30);
      if (v40)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v33)
  {
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, 0);

    v35 = v28;
    v36 = v27;
    v37 = v29;
    v38 = 0;
    goto LABEL_55;
  }

  return 1;
}