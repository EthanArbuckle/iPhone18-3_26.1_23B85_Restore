uint64_t sub_100014148(unint64_t a1)
{
  v3 = type metadata accessor for WidgetTileInfo();
  v44 = *(v3 - 1);
  v4 = *(v44 + 64);
  result = __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = a1;
    v15 = sub_10009E9A4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v16 = (v15 + 1) & v12;
      v17 = v8;
      v18 = *(v44 + 72);
      v45 = v17;
      v46 = v9;
      v44 = v18;
      while (1)
      {
        v19 = v12;
        v20 = v18 * v11;
        sub_100006850(*(v17 + 48) + v18 * v11, v7);
        v21 = *(v17 + 40);
        sub_10009EDD4();
        sub_10009CF14();
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
        sub_10009E504();
        v22 = &v7[v3[6]];
        v23 = *v22;
        v24 = *(v22 + 1);
        sub_10009E624();
        v25 = &v7[v3[7]];
        if (*(v25 + 1))
        {
          v26 = *v25;
          sub_10009EDF4(1u);
          sub_10009E624();
        }

        else
        {
          sub_10009EDF4(0);
        }

        v27 = &v7[v3[8]];
        v28 = *v27;
        v29 = *(v27 + 1);
        sub_10009E624();
        v30 = &v7[v3[9]];
        v31 = *v30;
        v32 = *(v30 + 1);
        sub_10009E624();
        v33 = *&v7[v3[12]];
        sub_10009E144();
        sub_10009EDF4(v7[v3[13]]);
        v34 = &v7[v3[15]];
        v35 = *v34;
        v36 = v34[8];
        if (v36 <= 1)
        {
          v12 = v19;
          if (v36)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v12 = v19;
          if (v36 == 2)
          {
            v37 = 3;
          }

          else
          {
            if (v36 != 3)
            {
              sub_10009EDE4(0);
              goto LABEL_20;
            }

            v37 = 4;
          }
        }

        sub_10009EDE4(v37);
        sub_10009E8F4();
LABEL_20:
        v38 = sub_10009EE04();
        sub_100006918(v7);
        v39 = v38 & v12;
        v18 = v44;
        if (v14 >= v16)
        {
          v17 = v45;
          if (v39 < v16)
          {
            goto LABEL_6;
          }

LABEL_24:
          if (v14 < v39)
          {
            goto LABEL_6;
          }

          goto LABEL_25;
        }

        v17 = v45;
        if (v39 < v16)
        {
          goto LABEL_24;
        }

LABEL_25:
        v40 = v44 * v14;
        if (v44 * v14 < v20 || *(v17 + 48) + v44 * v14 >= (*(v17 + 48) + v20 + v44))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v14 = v11;
          if (v40 == v20)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v14 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        v9 = v46;
        if (((*(v46 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_32;
        }
      }
    }

    v17 = v8;
LABEL_32:
    *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v17 = v8;
  }

  v41 = *(v17 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v43;
    ++*(v17 + 36);
  }

  return result;
}

uint64_t sub_10001453C(int64_t a1)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_10009E9A4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
        v27 = sub_10009E4F4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

void sub_100014844(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100013C2C(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
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
}

void *sub_1000149B0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100014844(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100014A40(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10009EA34();
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    if (sub_10009E9F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10009EA04();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10009E8D4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10009E8E4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_100014C64()
{
  result = qword_1000C0C58;
  if (!qword_1000C0C58)
  {
    sub_10000375C(&qword_1000C0C50, &qword_10009F9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0C58);
  }

  return result;
}

uint64_t sub_100014CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100014D38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a8;
  v88 = a6;
  v87 = a5;
  v92 = a4;
  v91 = a3;
  v103 = a2;
  v10 = type metadata accessor for WidgetTileInfo();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v84 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v83 = &v80[-v15];
  __chkstk_darwin(v14);
  v82 = &v80[-v16];
  v104 = sub_10009D1C4();
  v17 = *(v104 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v104);
  v90 = &v80[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v89 = &v80[-v22];
  v23 = __chkstk_darwin(v21);
  v113 = &v80[-v24];
  v25 = __chkstk_darwin(v23);
  v112 = &v80[-v26];
  v27 = __chkstk_darwin(v25);
  v111 = &v80[-v28];
  __chkstk_darwin(v27);
  v110 = &v80[-v29];
  v123 = sub_10009CF14();
  v30 = *(v123 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v123);
  v116 = &v80[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v122 = &v80[-v34];
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v36 = 0;
    v102 = a1 & 0xC000000000000001;
    v101 = a1 & 0xFFFFFFFFFFFFFF8;
    v97 = a1 + 32;
    v121 = (v30 + 8);
    v100 = enum case for ServiceKind.valve(_:);
    v114 = (v17 + 8);
    v115 = (v17 + 104);
    v99 = enum case for ServiceKind.lockMechanism(_:);
    v81 = enum case for ServiceKind.lockManagement(_:);
    v98 = v87 & 0xC000000000000001;
    v37 = v87 & 0xFFFFFFFFFFFFFF8;
    if (v87 < 0)
    {
      v37 = v87;
    }

    v93 = v37;
    v86 = v87 + 56;
    v94 = a7;
    v96 = a1;
    v95 = i;
    while (1)
    {
      if (v102)
      {
        v38 = sub_10009EAE4();
      }

      else
      {
        if (v36 >= *(v101 + 16))
        {
          goto LABEL_59;
        }

        v38 = *(v97 + 8 * v36);
      }

      v133 = v38;
      v39 = __OFADD__(v36, 1);
      v40 = v36 + 1;
      a1 = v104;
      if (v39)
      {
        break;
      }

      v109 = v40;
      v41 = [v133 uniqueIdentifier];
      v42 = v122;
      sub_10009CF04();

      v106 = sub_100024418(v42, v103);
      v120 = *v121;
      v120(v42, v123);
      sub_10009E904();
      v43 = *v115;
      (*v115)(v111, v100, a1);
      sub_100015FA4(&qword_1000C0CB0, &type metadata accessor for ServiceKind);
      sub_10009E654();
      sub_10009E654();
      if (v126 == v124 && v127 == v125)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_10009ED34();
      }

      v45 = *v114;
      (*v114)(v111, a1);
      v45(v110, a1);

      if (v44)
      {
        v46 = [v92 uniqueIdentifier];
        v47 = v122;
        sub_10009CF04();

        v105 = sub_100024418(v47, v91);
        v120(v47, v123);
      }

      else
      {
        v105 = 0;
      }

      sub_10009E904();
      v43(v113, v99, a1);
      sub_10009E654();
      sub_10009E654();
      v30 = v127;
      v17 = v125;
      if (v126 == v124 && v127 == v125)
      {
        v45(v113, a1);
        v45(v112, a1);
      }

      else
      {
        v48 = sub_10009ED34();
        v45(v113, a1);
        v45(v112, a1);

        if ((v48 & 1) == 0)
        {
          sub_10009E904();
          v43(v90, v81, a1);
          sub_10009E654();
          sub_10009E654();
          v30 = v127;
          v17 = v125;
          if (v126 == v124 && v127 == v125)
          {
            v108 = 1;
          }

          else
          {
            v108 = sub_10009ED34();
          }

          v45(v90, a1);
          v45(v89, a1);

          goto LABEL_28;
        }
      }

      v108 = 1;
LABEL_28:
      if (v98)
      {
        swift_unknownObjectRetain();
        v17 = sub_10009E9D4();
        v30 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        sub_10001607C(&qword_1000C0C88, &qword_1000C0C48, HMService_ptr);
        sub_10009E794();
        v49 = v128;
        v50 = v129;
        v51 = v130;
        v52 = v131;
        a1 = v132;
      }

      else
      {
        v49 = v87;
        v53 = -1 << *(v87 + 32);
        v51 = ~v53;
        v54 = -v53;
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        a1 = v55 & *(v87 + 56);

        v52 = 0;
        v50 = v86;
      }

      v107 = v51;
      v56 = (v51 + 64) >> 6;
      v118 = v56;
      v119 = v50;
      while (1)
      {
        a7 = v52;
        if ((v49 & 0x8000000000000000) == 0)
        {
          break;
        }

        v30 = v49 & 0x7FFFFFFFFFFFFFFFLL;
        v60 = sub_10009EA44();
        if (!v60)
        {
          goto LABEL_47;
        }

        v124 = v60;
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        swift_dynamicCast();
        v30 = v126;
        v59 = a1;
        if (!v126)
        {
          goto LABEL_47;
        }

LABEL_44:
        v117 = a1;
        v17 = a7;
        v61 = [v30 uniqueIdentifier];
        v62 = v122;
        sub_10009CF04();

        v63 = [v133 uniqueIdentifier];
        v64 = v116;
        sub_10009CF04();

        LOBYTE(v63) = sub_10009CEF4();
        v30 = v123;
        a1 = v59;
        v65 = v49;
        v66 = v120;
        v120(v64, v123);
        v67 = v62;
        v50 = v119;
        v66(v67, v30);
        v56 = v118;
        v49 = v65;
        if (v63)
        {
          sub_100015F9C();
          a7 = 1;
          if (v108)
          {
            v17 = 0;
            v68 = v94;
            v36 = v109;
            goto LABEL_49;
          }

          v68 = v94;
          v36 = v109;
          goto LABEL_48;
        }
      }

      v57 = v52;
      v58 = a1;
      if (!a1)
      {
        while (1)
        {
          v52 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v52 >= v56)
          {
            goto LABEL_47;
          }

          v58 = *(v50 + 8 * v52);
          ++v57;
          if (v58)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
        break;
      }

LABEL_40:
      v59 = (v58 - 1) & v58;
      v30 = *(*(v49 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v58)))));
      if (v30)
      {
        goto LABEL_44;
      }

LABEL_47:
      sub_100015F9C();
      v17 = 0;
      a7 = 0;
      v68 = v94;
      v36 = v109;
      if (v108)
      {
        goto LABEL_49;
      }

LABEL_48:
      v69 = [v133 uniqueIdentifier];
      v30 = v122;
      sub_10009CF04();

      v17 = sub_100024418(v30, v88);
      v120(v30, v123);
LABEL_49:
      if (v68)
      {
        v70 = [v133 uniqueIdentifier];
        v71 = v122;
        sub_10009CF04();

        v30 = sub_100024418(v71, v68);
        v120(v71, v123);
        a1 = v96;
        if (v30 & a7)
        {
          goto LABEL_53;
        }
      }

      else
      {
        a1 = v96;
        if (a7)
        {
LABEL_53:
          if (((v17 | v106 | v105) & 1) == 0)
          {
            v72 = v133;
            v73 = [v133 uniqueIdentifier];
            v74 = v122;
            sub_10009CF04();

            v75 = [v72 name];
            v76 = sub_10009E5C4();
            v78 = v77;

            v79 = v82;
            sub_10000F8B0(v72, v74, v76, v78, 0, 255, v82);

            v120(v74, v123);
            v17 = v84;
            sub_100006850(v79, v84);
            a7 = v83;
            v30 = v85;
            sub_100003C48(v83, v17);
            sub_100006918(a7);
            sub_100006918(v79);
          }
        }
      }

      if (v36 == v95)
      {
        return;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}

uint64_t sub_100015A5C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_100006850(v12, v6);
      sub_100003C48(v10, v6);
      result = sub_100006918(v10);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100015B68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100015BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v29 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v17 = &v29 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return _swiftEmptyArrayStorage;
  }

  v19 = *(v15 + 80);
  v33 = *(v15 + 72);
  v30 = (v19 + 32) & ~v19;
  v20 = a1 + v30;
  v21 = _swiftEmptyArrayStorage;
  v31 = v8;
  v32 = a2;
  do
  {
    sub_100006850(v20, v17);
    sub_100006850(v17, v11);
    v23 = sub_100003C48(v14, v11);
    sub_100006918(v14);
    if (v23)
    {
      sub_1000068B4(v17, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001BBBC(0, v21[2] + 1, 1);
        v21 = v34;
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        sub_10001BBBC(v25 > 1, v26 + 1, 1);
        v21 = v34;
      }

      v21[2] = v26 + 1;
      v22 = v33;
      v27 = v21 + v30 + v26 * v33;
      v8 = v31;
      sub_1000068B4(v31, v27);
    }

    else
    {
      sub_100006918(v17);
      v22 = v33;
    }

    v20 += v22;
    --v18;
  }

  while (v18);
  return v21;
}

uint64_t sub_100015DDC(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100015FA4(&qword_1000C0C68, type metadata accessor for WidgetTileInfo);
  result = sub_10009E774();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_100006850(v12, v7);
      sub_100003C48(v9, v7);
      sub_100006918(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_100015F44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100015F90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100015FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001600C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001607C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007330(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000160CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003714(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10001612C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100016140(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_10001607C(&qword_1000C0CC8, &qword_1000C0BF0, HMAccessory_ptr);
    result = sub_10009E774();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10009EAE4();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_100003FF0(&v10, v8);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_10009EBA4();
  }

  v6 = result;
  v5 = sub_10009EBA4();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100016298(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID);
  result = sub_10009E774();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1000042AC(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10001644C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10009D5A4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100003714(&qword_1000C0CD0, &qword_10009FA30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[18];
    goto LABEL_11;
  }

  v17 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[19];

  return v18(v19, a2, v17);
}

uint64_t sub_100016638(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10009CF14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10009D5A4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003714(&qword_1000C0CD0, &qword_10009FA30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v17 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[19];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for WidgetTileInfo()
{
  result = qword_1000C0D30;
  if (!qword_1000C0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001685C()
{
  sub_10009CF14();
  if (v0 <= 0x3F)
  {
    sub_100016B20(319, &qword_1000C0D40);
    if (v1 <= 0x3F)
    {
      sub_10009D5A4();
      if (v2 <= 0x3F)
      {
        sub_100016A2C();
        if (v3 <= 0x3F)
        {
          sub_100016ACC(319, &qword_1000C0D50, &type metadata accessor for AnyTileInfoBearer);
          if (v4 <= 0x3F)
          {
            sub_100016ACC(319, &qword_1000C0D58, type metadata accessor for WidgetPredictionAnalyticsInfo);
            if (v5 <= 0x3F)
            {
              sub_100016B20(319, &qword_1000C0D60);
              if (v6 <= 0x3F)
              {
                sub_100016B20(319, &unk_1000C0D68);
                if (v7 <= 0x3F)
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

void sub_100016A2C()
{
  if (!qword_1000C0D48)
  {
    sub_10009CF14();
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
    v0 = sub_10009E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C0D48);
    }
  }
}

void sub_100016ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016B20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10009E944();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100016B6C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100016B88(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100016B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100016C2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100016C6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_10009E914()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_10009CF04();
    (*(v4 + 32))(v10, v8, v3);
    if (*(a2 + 16))
    {
      v14 = sub_10001B5D0(v10);
      if (v15)
      {
        sub_10001B668(*(a2 + 56) + 32 * v14, &v22);
        (*(v4 + 8))(v10, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v16 = sub_10009E914();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_10009E974();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  sub_100003714(&qword_1000C0DF8, &qword_10009FC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v20 = 0;
  }

  return v20;
}

uint64_t sub_100016EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_10009E914()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_10009CF04();
    (*(v4 + 32))(v10, v8, v3);
    if (*(a2 + 16))
    {
      v14 = sub_10001B5D0(v10);
      if (v15)
      {
        sub_10001B668(*(a2 + 56) + 32 * v14, &v22);
        (*(v4 + 8))(v10, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v16 = sub_10009E914();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_10009E974();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  sub_100003714(&qword_1000C0DF8, &qword_10009FC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v20) = 2;
  }

  return v20;
}

void sub_1000170E8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
    sub_10001CD60();
    sub_10009E794();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_10009EA44() || (sub_100007330(0, &qword_1000C0CB8, HMAction_ptr), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_100015F9C();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 hf_affectedCharacteristic];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      sub_10009E684();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10009E6C4();
      }

      sub_10009E6E4();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_100017354(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10009EAE4();
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_10001A80C(&v39, &v38);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_10009EBA4();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_10009EBA4();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_10009EBA4();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_10009EAF4();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10009EBA4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v36)
        {
          goto LABEL_46;
        }

        v35 = v5;
        v20 = v14 + 8 * v16 + 32;
        v30 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          sub_10001CDC8(&qword_1000C0E68, &qword_1000C0E60, &unk_1000A1E40);
          for (j = 0; j != v18; ++j)
          {
            sub_100003714(&qword_1000C0E60, &unk_1000A1E40);
            v22 = sub_10001C624(v37, j, v9);
            v24 = *v23;
            (v22)(v37, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v25 = *(v30 + 16);
          v7 = __OFADD__(v25, v36);
          v26 = v25 + v36;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v30 + 16) = v26;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_10009EBA4();
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_1000176E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_10009EDD4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 4;
LABEL_10:
    sub_10009EDE4(v3);
    sub_10009E8F4();
    return sub_10009EE04();
  }

  sub_10009EDE4(0);
  return sub_10009EE04();
}

void sub_10001778C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    if (v2 != 3)
    {
      sub_10009EDE4(0);
      return;
    }

    v3 = 4;
  }

  sub_10009EDE4(v3);
  sub_10009E8F4();
}

Swift::Int sub_100017818()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_10009EDD4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 4;
LABEL_10:
    sub_10009EDE4(v3);
    sub_10009E8F4();
    return sub_10009EE04();
  }

  sub_10009EDE4(0);
  return sub_10009EE04();
}

unint64_t sub_1000178D8()
{
  result = qword_1000C0DE0;
  if (!qword_1000C0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0DE0);
  }

  return result;
}

uint64_t sub_10001792C(void *a1, unsigned __int8 a2)
{
  v4 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_10009D4F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v18 = [a1 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v19 = sub_10009E6A4();

      v23 = v19;
    }

    else
    {
      sub_100003714(&qword_1000C0E20, &unk_1000A0940);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10009FA10;
      *(v16 + 32) = a1;
      v23 = v16;
      v17 = a1;
    }

    sub_100003714(&qword_1000C0C50, &qword_10009F9F8);
    sub_10001CDC8(&qword_1000C0C58, &qword_1000C0C50, &qword_10009F9F8);
    sub_10009E7C4();

    v15 = sub_10009D244();
  }

  else if (a2 == 2)
  {
    v15 = 1;
  }

  else
  {
    if (a2 == 3)
    {
      v14 = v11;
      sub_10009E7D4();
      if ((*(v9 + 48))(v7, 1, v14) != 1)
      {
        (*(v9 + 32))(v13, v7, v14);
        v21 = sub_10009D4B4();
        (*(v9 + 8))(v13, v14);
        v15 = v21;
        return v15 & 1;
      }

      sub_1000160CC(v7, &qword_1000C0C80, &qword_1000A1E10);
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100017C60()
{
  v1 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v36 - v3;
  v5 = sub_10009D4F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009CF14();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetTileInfo();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + *(v16 + 80));
  if (v19 != 2)
  {
    return v19 & 1;
  }

  sub_100006850(v0, v18);
  v20 = v0 + *(v14 + 60);
  v21 = *v20;
  v22 = *(v20 + 8);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v25 = v21;
      sub_100006918(v18);
      v26 = *(v0 + *(v14 + 64));
      v27 = [v25 uniqueIdentifier];
      sub_10009CF04();

      if (!*(v26 + 16) || (v28 = sub_10001B5D0(v13), (v29 & 1) == 0))
      {

        (*(v36 + 8))(v13, v10);
        goto LABEL_25;
      }

      sub_10001B668(*(v26 + 56) + 32 * v28, v38);

      (*(v36 + 8))(v13, v10);
      if (!swift_dynamicCast())
      {
LABEL_25:
        LOBYTE(v19) = 0;
        return v19 & 1;
      }

      LOBYTE(v19) = v37;
    }

    else
    {
      if (v22 != 3)
      {
        sub_100006918(v18);
        goto LABEL_25;
      }

      v23 = v21;
      sub_100006918(v18);
      sub_10009E7D4();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_1000160CC(v4, &qword_1000C0C80, &qword_1000A1E10);
        goto LABEL_25;
      }

      (*(v6 + 32))(v9, v4, v5);
      LOBYTE(v19) = sub_10009D4A4();

      (*(v6 + 8))(v9, v5);
    }

    return v19 & 1;
  }

  if (!v22)
  {
    v24 = v21;
    LOBYTE(v19) = sub_100018114(v24, v18);

LABEL_20:
    sub_100006918(v18);
    return v19 & 1;
  }

  v30 = v21;
  v31 = [v30 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v32 = sub_10009E6A4();

  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_100006918(v18);

    goto LABEL_25;
  }

  result = sub_10009EBA4();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = sub_10009EAE4();
    goto LABEL_19;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v32 + 32);
LABEL_19:
    v35 = v34;

    LOBYTE(v19) = sub_100018114(v35, v18);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018114(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009D464();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009D1C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ServiceKind.door(_:))
  {
    goto LABEL_2;
  }

  if (v13 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    v19 = &enum case for CharacteristicKind.currentDoorState(_:);
LABEL_8:
    (*(v4 + 104))(v7, *v19, v3);
    v20 = type metadata accessor for WidgetTileInfo();
    v21 = sub_100016C6C(v7, *(a2 + *(v20 + 64)));
    v23 = v22;
    (*(v4 + 8))(v7, v3);
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = v21 == 1;
    goto LABEL_11;
  }

  if (v13 == enum case for ServiceKind.lockMechanism(_:))
  {
    v19 = &enum case for CharacteristicKind.currentLockMechanismState(_:);
    goto LABEL_8;
  }

  if (v13 == enum case for ServiceKind.securitySystem(_:))
  {
    (*(v4 + 104))(v7, enum case for CharacteristicKind.currentSecuritySystemState(_:), v3);
    v26 = type metadata accessor for WidgetTileInfo();
    v27 = sub_100016C6C(v7, *(a2 + *(v26 + 64)));
    v29 = v28;
    (*(v4 + 8))(v7, v3);
    if (v29)
    {
      goto LABEL_9;
    }

    v24 = v27 == 3;
    goto LABEL_11;
  }

  if (v13 == enum case for ServiceKind.thermostat(_:))
  {
    v30 = *(v4 + 104);
    v30(v7, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v3);
    v31 = *(a2 + *(type metadata accessor for WidgetTileInfo() + 64));
    v32 = sub_100016C6C(v7, v31);
    v34 = v33;
    v35 = *(v4 + 8);
    v35(v7, v3);
    if (v34)
    {
      goto LABEL_9;
    }

    v30(v7, enum case for CharacteristicKind.currentHeatingCooling(_:), v3);
    v36 = sub_100016C6C(v7, v31);
    v38 = v37;
    v35(v7, v3);
    if (v38)
    {
      goto LABEL_9;
    }

    v24 = (v32 | v36) == 0;
LABEL_11:
    v18 = !v24;
    return v18 & 1;
  }

  if (v13 == enum case for ServiceKind.window(_:) || v13 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_2:
    (*(v4 + 104))(v7, enum case for CharacteristicKind.currentPosition(_:), v3);
    v14 = type metadata accessor for WidgetTileInfo();
    v15 = sub_100016C6C(v7, *(a2 + *(v14 + 64)));
    v17 = v16;
    (*(v4 + 8))(v7, v3);
    if ((v17 & 1) == 0)
    {
      v18 = v15 > 0;
      return v18 & 1;
    }

LABEL_9:
    v18 = 0;
    return v18 & 1;
  }

  v40 = *(a2 + *(type metadata accessor for WidgetTileInfo() + 64));
  v43 = *(v4 + 104);
  v43(v7, enum case for CharacteristicKind.powerState(_:), v3);
  v44 = v40;
  v18 = sub_100016EAC(v7, v40);
  v42 = *(v4 + 8);
  v42(v7, v3);
  if (v18 == 2)
  {
    v43(v7, enum case for CharacteristicKind.active(_:), v3);
    v18 = sub_100016EAC(v7, v44);
    v42(v7, v3);
    if (v18 == 2)
    {
      v18 = 0;
    }
  }

  (*(v9 + 8))(v12, v8);
  return v18 & 1;
}

uint64_t sub_100018634()
{
  v1 = type metadata accessor for WidgetTileInfo();
  v2 = *(v0 + v1[23]);
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = v0 + v1[15];
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
LABEL_3:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v6 = *v3;
  if (!v4)
  {
    v7 = *(v0 + v1[16]);
    v8 = v6;
    LOBYTE(v7) = sub_1000075D4(v7);

    return v7 & 1;
  }

  v9 = v1;
  v10 = v6;
  v11 = [v10 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v12 = sub_10009E6A4();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:

    goto LABEL_3;
  }

  result = sub_10009EBA4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_10009EAE4();
    goto LABEL_12;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_12:
    v14 = v13;

    v15 = sub_1000075D4(*(v0 + v9[16]));

    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000187B0()
{
  v1 = type metadata accessor for WidgetTileInfo();
  result = 0;
  v3 = v0 + *(v1 + 60);
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
    return result;
  }

  v5 = *v3;
  if (!v4)
  {
    v6 = v5;
    v7 = v5;
    return v6;
  }

  v8 = v5;
  v9 = [v8 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v10 = sub_10009E6A4();

  if (v10 >> 62)
  {
    result = sub_10009EBA4();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:

    return 0;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_10009EAE4();
    goto LABEL_9;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_9:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018900()
{
  type metadata accessor for HomeWidget();
  v0[8] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[9] = v2;
  v0[10] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000189D4;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000189D4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100018B34, 0, 0);
}

uint64_t sub_100018B34()
{
  v16 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[7];
    v3 = swift_task_alloc();
    v0[13] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    v0[14] = v5;
    v6 = sub_100003714(&qword_1000C0E00, &qword_10009FC70);
    *v5 = v0;
    v5[1] = sub_100018DA4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0x6174536863746566, 0xEC00000029286574, sub_10001CB54, v3, v6);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10009D924();
    sub_100015B68(v7, qword_1000C8278);
    v8 = sub_10009D904();
    v9 = sub_10009E824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s unable to get shared HMHomeManager instance", v10, 0xCu);
      sub_100015F44(v11);
    }

    v12 = sub_10001C968(_swiftEmptyArrayStorage);
    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_100018DA4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100018EBC, 0, 0);
}

uint64_t sub_100018EBC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100018F20(uint64_t a1, uint64_t a2, void *a3)
{
  v85 = sub_10009D464();
  v81 = *(v85 - 1);
  v6 = *(v81 + 64);
  __chkstk_darwin(v85);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C0E08, &qword_10009FC78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = a2 + *(v10 + 68);
  if (*(v19 + 8) == 2)
  {
    v82 = v14;
    v20 = *v19;
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v21 = sub_10009D924();
    sub_100015B68(v21, qword_1000C8278);
    v22 = v20;
    v23 = sub_10009D904();
    v24 = sub_10009E844();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v25 = 136315394;
      *(v25 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &aBlock);
      *(v25 + 12) = 2080;
      v26 = [v22 name];
      v79 = a3;
      v80 = v16;
      v27 = v15;
      v28 = v26;
      v29 = sub_10009E5C4();
      v30 = a1;
      v31 = v18;
      v33 = v32;

      v34 = sub_10002AD68(v29, v33, &aBlock);
      v18 = v31;
      a1 = v30;

      *(v25 + 14) = v34;
      v15 = v27;
      a3 = v79;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s fetching state for action set %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v35 = [a3 widgetManager];
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10009FA10;
    *(v36 + 32) = v22;
    sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
    v37 = v22;
    v38.super.isa = sub_10009E694().super.isa;

    v39 = v82;
    (*(v15 + 16))(v18, a1, v82);
    v40 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v41 = swift_allocObject();
    (*(v15 + 32))(v41 + v40, v18, v39);
    v91 = sub_10001CC24;
    v92 = v41;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_10001E120;
    v90 = &unk_1000BB488;
    v42 = _Block_copy(&aBlock);

    [v35 fetchStateForActionSets:v38.super.isa completion:v42];
    goto LABEL_26;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v43 = sub_10009D924();
  sub_100015B68(v43, qword_1000C8278);
  sub_100006850(a2, v13);
  v44 = sub_10009D904();
  v78 = sub_10009E844();
  if (!os_log_type_enabled(v44, v78))
  {

    sub_100006918(v13);
LABEL_25:
    v35 = [a3 widgetManager];
    sub_10001A0E8();
    sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
    v38.super.isa = sub_10009E694().super.isa;

    (*(v15 + 16))(v18, a1, v14);
    v68 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v69 = swift_allocObject();
    (*(v15 + 32))(v69 + v68, v18, v14);
    v91 = sub_10001CB60;
    v92 = v69;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_10001E120;
    v90 = &unk_1000BB438;
    v42 = _Block_copy(&aBlock);

    [v35 fetchStateForCharacteristics:v38.super.isa completion:v42];
LABEL_26:
    _Block_release(v42);

    return;
  }

  v75 = v44;
  v45 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  aBlock = v73;
  *v45 = 136315394;
  *(v45 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &aBlock);
  v74 = v45;
  *(v45 + 12) = 2080;
  v46 = sub_10001A0E8();
  if (!(v46 >> 62))
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v76 = v13;
    v77 = a2;
    if (v47)
    {
      goto LABEL_12;
    }

LABEL_23:

    v49 = _swiftEmptyArrayStorage;
LABEL_24:
    v86 = v49;
    sub_100003714(&qword_1000C0E10, &qword_10009FC80);
    sub_10001CDC8(&qword_1000C0E18, &qword_1000C0E10, &qword_10009FC80);
    v62 = sub_10009E514();
    v64 = v63;

    sub_100006918(v76);
    v65 = sub_10002AD68(v62, v64, &aBlock);

    v66 = v74;
    *(v74 + 14) = v65;
    v67 = v75;
    _os_log_impl(&_mh_execute_header, v75, v78, "%s fetching characteristics %s", v66, 0x16u);
    swift_arrayDestroy();

    goto LABEL_25;
  }

  v61 = v46;
  v47 = sub_10009EBA4();
  v46 = v61;
  v76 = v13;
  v77 = a2;
  if (!v47)
  {
    goto LABEL_23;
  }

LABEL_12:
  v83 = v46;
  v79 = a3;
  v80 = v16;
  v70 = v18;
  v71 = v15;
  v82 = v14;
  v72 = a1;
  v86 = _swiftEmptyArrayStorage;
  v84 = v47;
  sub_10001BC44(0, v47 & ~(v47 >> 63), 0);
  if ((v84 & 0x8000000000000000) == 0)
  {
    v48 = 0;
    v49 = v86;
    v50 = v83;
    v51 = v83 & 0xC000000000000001;
    v52 = (v81 + 8);
    do
    {
      if (v51)
      {
        v53 = sub_10009EAE4();
      }

      else
      {
        v53 = *(v50 + 8 * v48 + 32);
      }

      v54 = v53;
      sub_10009E874();
      v55 = sub_10009D454();
      v57 = v56;

      (*v52)(v8, v85);
      v86 = v49;
      v59 = v49[2];
      v58 = v49[3];
      if (v59 >= v58 >> 1)
      {
        sub_10001BC44((v58 > 1), v59 + 1, 1);
        v49 = v86;
      }

      ++v48;
      v49[2] = v59 + 1;
      v60 = &v49[2 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v50 = v83;
    }

    while (v84 != v48);

    a1 = v72;
    v14 = v82;
    v15 = v71;
    v18 = v70;
    a3 = v79;
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000198AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 isOnByActionSetUniqueIdentifier];
    sub_10009CF14();
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
    v4 = sub_10009E4C4();

    v5 = sub_100019B90(v4);

    v15 = v5;
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10009D924();
    sub_100015B68(v7, qword_1000C8278);
    swift_errorRetain();
    v8 = sub_10009D904();
    v9 = sub_10009E844();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v15);
      *(v10 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *(v10 + 14) = v13;
      *v11 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Failed to get current action set state with error: %@", v10, 0x16u);
      sub_1000160CC(v11, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v12);
    }

    v15 = sub_10001C968(_swiftEmptyArrayStorage);
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }
}

uint64_t sub_100019B90(uint64_t a1)
{
  v61 = sub_100003714(&qword_1000C0E38, &qword_10009FC88);
  v2 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = &v50 - v3;
  v59 = sub_100003714(&qword_1000C0E40, &qword_10009FC90);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v58 = &v50 - v5;
  v6 = sub_10009CF14();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100003714(&qword_1000C0E48, &qword_10009FC98);
  v10 = *(*(v56 - 8) + 64);
  v11 = __chkstk_darwin(v56);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v50 - v13;
  v63 = a1;
  if (*(a1 + 16))
  {
    sub_100003714(&qword_1000C0E50, &qword_10009FCA0);
    v14 = sub_10009EBD4();
  }

  else
  {
    v14 = &_swiftEmptyDictionarySingleton;
  }

  v15 = v63 + 64;
  v16 = 1 << *(v63 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v63 + 64);
  v19 = (v16 + 63) >> 6;
  v52 = v62 + 16;
  v66 = v62 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v50 = v19;
  v51 = v15;
  v57 = v9;
  v53 = v14;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v27 = v62;
    v26 = v63;
    v28 = *(v63 + 48);
    v64 = *(v62 + 72);
    v29 = v54;
    (*(v62 + 16))(v54, v28 + v64 * v25, v6);
    v30 = *(*(v26 + 56) + 8 * v25);
    v31 = v56;
    *&v29[*(v56 + 48)] = v30;
    v32 = v29;
    v33 = v55;
    sub_10001CCDC(v32, v55);
    v34 = *(v31 + 48);
    v35 = v60;
    v65 = *(v61 + 48);
    v36 = *(v27 + 32);
    v36(v60, v33, v6);
    *&v67[0] = *(v33 + v34);
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    v37 = v30;
    v38 = v65;
    swift_dynamicCast();
    v39 = v58;
    v40 = *(v59 + 48);
    v36(v58, v35, v6);
    sub_10001CD4C(&v35[v38], &v39[v40]);
    v41 = v57;
    v36(v57, v39, v6);
    sub_10001CD4C(&v39[v40], v67);
    v14 = v53;
    v42 = v53[5];
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
    result = sub_10009E4F4();
    v43 = -1 << v14[32];
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*&v20[8 * (v44 >> 6)]) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *&v20[8 * v45];
        if (v49 != -1)
        {
          v23 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v44) & ~*&v20[8 * (v44 >> 6)])) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v18 &= v18 - 1;
    *&v20[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
    v36((*(v14 + 6) + v23 * v64), v41, v6);
    result = sub_10001CD4C(v67, (*(v14 + 7) + 32 * v23));
    ++*(v14 + 2);
    v19 = v50;
    v15 = v51;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001A0E8()
{
  v1 = sub_10009D464();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D1C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for WidgetTileInfo() + 60);
  v12 = *(v11 + 8);
  v13 = _swiftEmptyArrayStorage;
  if (v12 > 2)
  {
    return v13;
  }

  v14 = *v11;
  if (v12)
  {
    if (v12 == 1)
    {
      v15 = v14;
      v16 = [v15 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v17 = sub_10009E6A4();

      v18 = sub_100017354(v17);
    }

    else
    {
      v15 = v14;
      v30 = [v15 actions];
      sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
      sub_10001CD60();
      v31 = sub_10009E754();

      sub_1000170E8(v31);
    }

    v13 = v18;

    return v13;
  }

  v34 = v14;
  sub_10009E904();
  v19 = sub_1000031AC();
  (*(v7 + 8))(v10, v6);
  v35 = _swiftEmptyArrayStorage;
  v20 = 1 << v19[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 7);
  v23 = (v20 + 63) >> 6;
  v32[0] = v2 + 8;
  v32[1] = v2 + 16;
  v33 = v19;

  v25 = 0;
  if (!v22)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v2 + 16))(v5, *(v33 + 6) + *(v2 + 72) * (v26 | (v25 << 6)), v1);
      v27 = sub_10009E914();
      result = (*(v2 + 8))(v5, v1);
      if (v27)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_10;
      }
    }

    sub_10009E684();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10009E6C4();
    }

    result = sub_10009E6E4();
    v13 = v35;
  }

  while (v22);
LABEL_10:
  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v23)
    {

      return v13;
    }

    v22 = *&v19[8 * v28 + 56];
    ++v25;
    if (v22)
    {
      v25 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_10001A4C0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 valueByCharacteristicUniqueIdentifier];
    sub_10009CF14();
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
    v4 = sub_10009E4C4();

    v14 = v4;
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v6 = sub_10009D924();
    sub_100015B68(v6, qword_1000C8278);
    swift_errorRetain();
    v7 = sub_10009D904();
    v8 = sub_10009E844();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v14);
      *(v9 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 14) = v12;
      *v10 = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Failed to get current characteristic values with error: %@", v9, 0x16u);
      sub_1000160CC(v10, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v11);
    }

    v14 = sub_10001C968(_swiftEmptyArrayStorage);
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }
}

void sub_10001A780(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10001A80C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v29 = sub_10009D464();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009D1C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  sub_10009E904();
  v12 = sub_1000031AC();
  (*(v8 + 8))(v11, v7);
  v25 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v13 = 1 << v12[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 7);
  v16 = (v13 + 63) >> 6;
  v26 = v3 + 8;
  v27 = v3 + 16;
  v30 = v12;

  v18 = 0;
  if (!v15)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v29;
      (*(v3 + 16))(v6, *(v30 + 6) + *(v3 + 72) * (v19 | (v18 << 6)), v29);
      v21 = sub_10009E914();
      result = (*(v3 + 8))(v6, v20);
      if (v21)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    sub_10009E684();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10009E6C4();
    }

    result = sub_10009E6E4();
    v25 = v31;
  }

  while (v15);
LABEL_6:
  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v22 >= v16)
    {

      *v24 = v25;
      return result;
    }

    v15 = *&v12[8 * v22 + 56];
    ++v18;
    if (v15)
    {
      v18 = v22;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001AAEC()
{
  v1 = v0 + *(type metadata accessor for WidgetTileInfo() + 60);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2 || v3 != 3)
    {
      return &_swiftEmptySetSingleton;
    }

    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FA10;
    *(inited + 32) = v2;
    v12 = v2;
    v13 = sub_100016140(inited);
    swift_setDeallocating();
    v14 = *(inited + 16);
    swift_arrayDestroy();
    return v13;
  }

  if (v3)
  {
    v24 = v2;
    v15 = [v24 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v16 = sub_10009E6A4();

    if (v16 >> 62)
    {
LABEL_29:
      v17 = sub_10009EBA4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    while (v17 != v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = sub_10009EAE4();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v22 = [v19 accessory];

      ++v18;
      if (v22)
      {
        sub_10009E684();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v18 = v21;
      }
    }

    v13 = sub_100016140(_swiftEmptyArrayStorage);

    return v13;
  }

  v6 = v2;
  v7 = [v6 accessory];
  if (!v7)
  {

    return &_swiftEmptySetSingleton;
  }

  v8 = v7;
  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10009FA10;
  *(v9 + 32) = v8;
  v10 = sub_100016140(v9);

  return v10;
}

void sub_10001ADCC()
{
  sub_10009CF14();
  sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
  sub_10009E504();
  v1 = type metadata accessor for WidgetTileInfo();
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_10009E624();
  v5 = (v0 + v1[7]);
  if (v5[1])
  {
    v6 = *v5;
    sub_10009EDF4(1u);
    sub_10009E624();
  }

  else
  {
    sub_10009EDF4(0);
  }

  v7 = (v0 + v1[8]);
  v8 = *v7;
  v9 = v7[1];
  sub_10009E624();
  v10 = (v0 + v1[9]);
  v11 = *v10;
  v12 = v10[1];
  sub_10009E624();
  v13 = *(v0 + v1[12]);
  sub_10009E144();
  sub_10009EDF4(*(v0 + v1[13]));
  v14 = (v0 + v1[15]);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (v16 <= 1)
  {
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else if (v16 == 2)
  {
    v17 = 3;
  }

  else
  {
    if (v16 != 3)
    {
      sub_10009EDE4(0);
      return;
    }

    v17 = 4;
  }

  sub_10009EDE4(v17);
  sub_10009E8F4();
}

uint64_t sub_10001AF64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009CF14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_10001AFCC()
{
  sub_10009EDD4();
  sub_10001ADCC();
  return sub_10009EE04();
}

Swift::Int sub_10001B010()
{
  sub_10009EDD4();
  sub_10001ADCC();
  return sub_10009EE04();
}

uint64_t sub_10001B098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B128()
{
  v1 = sub_10009D494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_10009EAC4(174);
  v28._countAndFlagsBits = 0xD000000000000014;
  v28._object = 0x80000001000A4120;
  sub_10009E634(v28);
  sub_10009CF14();
  sub_10001B098(&qword_1000C0C90, &type metadata accessor for UUID);
  v29._countAndFlagsBits = sub_10009ED04();
  sub_10009E634(v29);

  v30._countAndFlagsBits = 0x203A656D616E202CLL;
  v30._object = 0xE800000000000000;
  sub_10009E634(v30);
  v6 = type metadata accessor for WidgetTileInfo();
  sub_10009E634(*(v0 + v6[6]));
  v31._countAndFlagsBits = 0x616C70736964202CLL;
  v31._object = 0xEF203A656D614E79;
  sub_10009E634(v31);
  v7 = (v0 + v6[7]);
  v8 = *v7;
  v9 = v7[1];
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  v10 = sub_10009D474();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  v32._countAndFlagsBits = v10;
  v32._object = v12;
  sub_10009E634(v32);

  v33._countAndFlagsBits = 0x614E6D6F6F72202CLL;
  v33._object = 0xEC000000203A656DLL;
  sub_10009E634(v33);
  if (v9)
  {
    v13._countAndFlagsBits = v8;
  }

  else
  {
    v13._countAndFlagsBits = 0;
  }

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v13._object = v14;
  sub_10009E634(v13);

  v34._object = 0x80000001000A4140;
  v34._countAndFlagsBits = 0xD000000000000010;
  sub_10009E634(v34);
  v25[0] = sub_10008CA68();
  v25[1] = v15;
  sub_100003714(&qword_1000C0DF0, &qword_1000A1DE0);
  v35._countAndFlagsBits = sub_10009E5F4();
  sub_10009E634(v35);

  v36._countAndFlagsBits = 0x79536E6F6369202CLL;
  v36._object = 0xEE00203A6C6F626DLL;
  sub_10009E634(v36);
  sub_10009E634(*(v0 + v6[8]));
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x80000001000A4160;
  sub_10009E634(v37);
  sub_10009E634(*(v0 + v6[9]));
  v38._countAndFlagsBits = 0x636165527369202CLL;
  v38._object = 0xEF203A656C626168;
  sub_10009E634(v38);
  if (*(v0 + v6[13]))
  {
    v16._countAndFlagsBits = 1702195828;
  }

  else
  {
    v16._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v6[13]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v16._object = v17;
  sub_10009E634(v16);

  v39._countAndFlagsBits = 0x697463417369202CLL;
  v39._object = 0xEF203A6465746176;
  sub_10009E634(v39);
  v18 = sub_100017C60();
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  v20._object = v21;
  sub_10009E634(v20);

  v40._object = 0x80000001000A4180;
  v40._countAndFlagsBits = 0xD000000000000010;
  sub_10009E634(v40);
  if (*(v0 + v6[14]))
  {
    v22._countAndFlagsBits = 1702195828;
  }

  else
  {
    v22._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v6[14]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v22._object = v23;
  sub_10009E634(v22);

  return v26;
}

unint64_t sub_10001B558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10009EDD4();
  sub_10009E624();
  v6 = sub_10009EE04();

  return sub_10001B7A4(a1, a2, v6);
}

unint64_t sub_10001B5D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10009CF14();
  sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID);
  v5 = sub_10009E4F4();

  return sub_10001B85C(a1, v5);
}

uint64_t sub_10001B668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001B6C4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10009EDD4();
  sub_10009E624();

  v5 = sub_10009EE04();

  return sub_10001BA1C(a1 & 1, v5);
}

unint64_t sub_10001B760(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10009EDC4();

  return sub_10001BB50(a1, v4);
}

unint64_t sub_10001B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10009ED34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001B85C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10009CF14();
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
      sub_10001B098(&qword_1000C0BE8, &type metadata accessor for UUID);
      v16 = sub_10009E534();
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

unint64_t sub_10001BA1C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656C67676F74;
    }

    else
    {
      v6 = 1852141679;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656C67676F74 : 1852141679;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10009ED34();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001BB50(uint64_t a1, uint64_t a2)
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

size_t sub_10001BBBC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
  *v3 = result;
  return result;
}

size_t sub_10001BC00(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0E88, &unk_1000A08E0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10001BC44(char *a1, int64_t a2, char a3)
{
  result = sub_10001BD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BC64(void *a1, int64_t a2, char a3)
{
  result = sub_10001BE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001BC84(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
  *v3 = result;
  return result;
}

size_t sub_10001BCC8(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C00C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001BCE8(char *a1, int64_t a2, char a3)
{
  result = sub_10001C1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001BD08(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0E70, &qword_10009FCB0, type metadata accessor for HomeEntity);
  *v3 = result;
  return result;
}

size_t sub_10001BD4C(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0F08, qword_10009FD30, &type metadata accessor for EndpointPath);
  *v3 = result;
  return result;
}

char *sub_10001BD90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E58, &qword_10009FCA8);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10001BE9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000C0E78, &qword_10009FCB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003714(&qword_1000C0E80, &qword_10009FCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001C00C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(&qword_1000C0EA8, &qword_10009FCD0);
  v10 = *(sub_100003714(&qword_1000C0EB0, &qword_10009FCD8) - 8);
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
  v15 = *(sub_100003714(&qword_1000C0EB0, &qword_10009FCD8) - 8);
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

char *sub_10001C1FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E90, &qword_10009FCC8);
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

void *sub_10001C300(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000C0E98, &qword_1000A08C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003714(&qword_1000C0EA0, &qword_1000A08B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001C448(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003714(a5, a6);
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

void (*sub_10001C624(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10009EAE4();
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
    return sub_10001C6A4;
  }

  __break(1u);
  return result;
}

void (*sub_10001C6AC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10009EAE4();
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
    return sub_10001E118;
  }

  __break(1u);
  return result;
}

BOOL sub_10001C72C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4)
    {
      return 0;
    }

LABEL_15:
    sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
    return sub_10009E8E4() & 1;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a2 != 3)
  {
    return a4 == 4 && !a3;
  }

  if (a4 == 3)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_10001C7F8(uint64_t a1, uint64_t a2)
{
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetTileInfo();
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_10009ED34() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_10009ED34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_10009ED34() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v22 == *v24 && v23 == v24[1];
  if (!v25 && (sub_10009ED34() & 1) == 0)
  {
    return 0;
  }

  v26 = v4[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if ((sub_10009E134() & 1) == 0 || *(a1 + v4[13]) != *(a2 + v4[13]))
  {
    return 0;
  }

  v30 = v4[15];
  v31 = a1 + v30;
  v32 = *(a1 + v30);
  v33 = a2 + v30;
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v31 + 8);

  return sub_10001C72C(v32, v36, v34, v35);
}

unint64_t sub_10001C968(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0E40, &qword_10009FC90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003714(&qword_1000C0E50, &qword_10009FCA0);
    v8 = sub_10009EBD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v10, v6, &qword_1000C0E40, &qword_10009FC90);
      result = sub_10001B5D0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10009CF14();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10001CD4C(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001CB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CB90()
{
  v1 = sub_100003714(&qword_1000C0E08, &qword_10009FC78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001CC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100003714(&qword_1000C0E08, &qword_10009FC78) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10001CCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0E48, &qword_10009FC98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10001CD4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10001CD60()
{
  result = qword_1000C0CC0;
  if (!qword_1000C0CC0)
  {
    sub_100007330(255, &qword_1000C0CB8, HMAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CC0);
  }

  return result;
}

uint64_t sub_10001CDC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001CE10(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0EC8, &qword_10009FCF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003714(&qword_1000C0ED0, &qword_10009FCF8);
    v8 = sub_10009EBD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v10, v6, &qword_1000C0EC8, &qword_10009FCF0);
      v12 = *v6;
      result = sub_10001B6C4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10009CAD4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D01C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0EF8, &qword_10009FD20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003714(&qword_1000C0F00, &qword_10009FD28);
    v8 = sub_10009EBD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v10, v6, &qword_1000C0EF8, &qword_10009FD20);
      result = sub_10001B5D0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10009CF14();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for WidgetPredictionAnalyticsInfo();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
    v3 = sub_10009EBD4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B558(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D35C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_100003714(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100003714(a4, a5);
    v15 = sub_10009EBD4();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_10001E0A8(v17, v13, a2, v28);
      result = sub_10001B5D0(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_10009CF14();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001D53C(uint64_t a1)
{
  v2 = v1;
  v91 = a1;
  v3 = sub_10009E3A4();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  __chkstk_darwin(v3);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D464();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009D1C4();
  v97 = *(v10 - 8);
  v11 = v97[8];
  v12 = __chkstk_darwin(v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v83 - v19;
  __chkstk_darwin(v18);
  v22 = &v83 - v21;
  v23 = sub_10009E1B4();
  v24 = type metadata accessor for WidgetTileInfo();
  if ((v1[v24[21] + 8] & 1) == 0 && (sub_100017C60() & 1) == 0)
  {
    v29 = sub_10009E174();
LABEL_8:

    return v29;
  }

  v25 = &v1[v24[15]];
  v26 = v25[8];
  if ((v26 - 2) < 3)
  {
    return v23;
  }

  v28 = *v25;
  v89 = v23;
  if (!v26)
  {
    v90 = v28;
    goto LABEL_15;
  }

  v88 = v28;
  v30 = [v88 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v31 = sub_10009E6A4();

  if (v31 >> 62)
  {
    v82 = sub_10009EBA4();
    v32 = v89;
    if (v82)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = v89;
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v31 & 0xC000000000000001) != 0)
      {
        v33 = sub_10009EAE4();
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_68:
          swift_once();
LABEL_37:
          v59 = sub_10009D924();
          sub_100015B68(v59, qword_1000C8278);
          v60 = sub_10009D904();
          v61 = sub_10009E844();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 134218240;
            *(v62 + 4) = v14;
            *(v62 + 12) = 2048;
            *(v62 + 14) = v24;
            _os_log_impl(&_mh_execute_header, v60, v61, "thermostat: targetHeatingCoolingMode: %ld currentHeatingCooling: %ld", v62, 0x16u);
          }

          if (v14)
          {
            if (v24 != 1)
            {
              if (v24 != 2)
              {
                goto LABEL_25;
              }

              v63 = v92;
              sub_10009E384();
              v64 = sub_10009E374();
              (*(v93 + 8))(v63, v94);
              if ((v64 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_60;
            }

            v77 = v92;
            sub_10009E384();
            v78 = sub_10009E374();
            (*(v93 + 8))(v77, v94);
            if ((v78 & 1) == 0)
            {
LABEL_61:
              v65 = [objc_opt_self() systemOrangeColor];
              goto LABEL_62;
            }

LABEL_60:
            v68 = sub_10009E1B4();
            goto LABEL_63;
          }

          if (v24)
          {
            v66 = v92;
            sub_10009E384();
            v67 = sub_10009E374();
            (*(v93 + 8))(v66, v94);
            if ((v67 & 1) == 0)
            {
              v68 = sub_10009E1C4();
LABEL_63:
              v29 = v68;

              goto LABEL_8;
            }

            goto LABEL_60;
          }

          goto LABEL_56;
        }

        v33 = *(v31 + 32);
      }

      v90 = v33;

LABEL_15:
      if ((v2[v24[13]] & 1) == 0)
      {
        v29 = sub_10009E1C4();

        return v29;
      }

      sub_10009E904();
      v84 = v97[13];
      v85 = v97 + 13;
      v84(v20, enum case for ServiceKind.thermostat(_:), v10);
      v34 = sub_10001B098(&qword_1000C0CB0, &type metadata accessor for ServiceKind);
      sub_10009E654();
      v83 = v34;
      sub_10009E654();
      v86 = v9;
      v87 = v101;
      if (v100 == v98 && v101 == v99)
      {
        LODWORD(v88) = 1;
      }

      else
      {
        LODWORD(v88) = sub_10009ED34();
      }

      v35 = v97[1];
      v35(v20, v10);
      v35(v22, v10);

      if (v88)
      {
        v37 = v95;
        v36 = v96;
        v38 = *(v95 + 104);
        v39 = v86;
        v38(v86, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v96);
        v40 = *&v2[v24[16]];
        v2 = v90;
        v14 = sub_100016C6C(v39, v40);
        v42 = v41;
        v43 = *(v37 + 8);
        v43(v39, v36);
        if ((v42 & 1) == 0)
        {
          v38(v39, enum case for CharacteristicKind.currentHeatingCooling(_:), v36);
          v24 = sub_100016C6C(v39, v40);
          v45 = v44;
          v43(v39, v36);
          v32 = v89;
          if (v45)
          {
LABEL_25:

            return v32;
          }

          if (qword_1000C0A90 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_68;
        }
      }

      else
      {
        sub_10009E904();
        v84(v14, enum case for ServiceKind.heaterCooler(_:), v10);
        sub_10009E654();
        sub_10009E654();
        if (v100 == v98 && v101 == v99)
        {
          v35(v14, v10);
          v35(v17, v10);
        }

        else
        {
          v46 = sub_10009ED34();
          v35(v14, v10);
          v35(v17, v10);

          if ((v46 & 1) == 0)
          {

            return v89;
          }
        }

        v47 = v95;
        v48 = v96;
        v49 = *(v95 + 104);
        v50 = v86;
        v49(v86, enum case for CharacteristicKind.targetHeaterCoolerState(_:), v96);
        v51 = *&v2[v24[16]];
        v2 = v90;
        v52 = sub_100016C6C(v50, v51);
        v54 = v53;
        v55 = *(v47 + 8);
        v55(v50, v48);
        if ((v54 & 1) == 0)
        {
          v49(v50, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v48);
          v97 = sub_100016C6C(v50, v51);
          v57 = v56;
          v55(v50, v48);
          if ((v57 & 1) == 0)
          {
            v49(v50, enum case for CharacteristicKind.active(_:), v48);
            v58 = sub_100016EAC(v50, v51);
            v55(v50, v48);
            if (v58 != 2)
            {
              v32 = v89;
              if (v58)
              {
                if (qword_1000C0A90 != -1)
                {
                  swift_once();
                }

                v69 = sub_10009D924();
                sub_100015B68(v69, qword_1000C8278);
                v70 = sub_10009D904();
                v71 = sub_10009E844();
                v72 = os_log_type_enabled(v70, v71);
                v73 = v97;
                if (v72)
                {
                  v74 = swift_slowAlloc();
                  *v74 = 134218240;
                  *(v74 + 4) = v52;
                  *(v74 + 12) = 2048;
                  *(v74 + 14) = v73;
                  _os_log_impl(&_mh_execute_header, v70, v71, "heaterCooler: targetHeaterCoolerState: %ld currentHeaterCoolerState: %ld", v74, 0x16u);
                }

                if (v73 != 2)
                {
                  if (v73 != 3)
                  {
                    goto LABEL_25;
                  }

                  v75 = v92;
                  sub_10009E384();
                  v76 = sub_10009E374();
                  (*(v93 + 8))(v75, v94);
                  if ((v76 & 1) == 0)
                  {
LABEL_43:
                    v65 = [objc_opt_self() systemCyanColor];
LABEL_62:
                    v81 = v65;
                    v68 = sub_10009E1F4();
                    goto LABEL_63;
                  }

                  goto LABEL_60;
                }

                v79 = v92;
                sub_10009E384();
                v80 = sub_10009E374();
                (*(v93 + 8))(v79, v94);
                if ((v80 & 1) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_60;
              }

LABEL_56:
              v29 = sub_10009E174();

              return v29;
            }
          }
        }
      }

      return v89;
    }
  }

  return v32;
}

uint64_t sub_10001E0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001E12C()
{
  result = qword_1000C0F18;
  if (!qword_1000C0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F18);
  }

  return result;
}

unint64_t sub_10001E184()
{
  result = qword_1000C0F20;
  if (!qword_1000C0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F20);
  }

  return result;
}

unint64_t sub_10001E244()
{
  result = qword_1000C0F28;
  if (!qword_1000C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F28);
  }

  return result;
}

uint64_t sub_10001E2A8()
{
  v0 = sub_10009CD54();
  sub_10001F4BC(v0, qword_1000C8168);
  sub_100015B68(v0, qword_1000C8168);
  return sub_10009CD14();
}

uint64_t sub_10001E30C()
{
  v0 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  sub_10001F4BC(v0, qword_1000C8180);
  v1 = sub_100015B68(v0, qword_1000C8180);
  sub_10009C9F4();
  v2 = sub_10009CA04();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001E3CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10009CE24();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001E48C, 0, 0);
}

uint64_t sub_10001E48C()
{
  v43 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v42);
    *(v9 + 12) = 2080;
    sub_10009C954();
    sub_10001F3F4();
    v10 = sub_10009ED04();
    v12 = v11;
    (*(v5 + 8))(v6, v8);
    v13 = sub_10002AD68(v10, v12, &v42);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "OpenURLInHomeIntent %s - url is %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v17 = v0[4];
  sub_10009C954();
  v18 = sub_10009CE04();
  v20 = v19;
  v21 = *(v15 + 8);
  v21(v14, v17);
  v22 = sub_10009E5C4();
  if (v20)
  {
    if (v18 == v22 && v20 == v23)
    {
      goto LABEL_13;
    }

    v25 = sub_10009ED34();

    if (v25)
    {
LABEL_14:

LABEL_15:
      v27 = v0[6];
      v28 = v0[3];
      v29 = v0[4];
      v30 = [objc_opt_self() sharedInstance];
      sub_10009C954();
      sub_10009CDC4(v31);
      v33 = v32;
      v21(v27, v29);
      v34 = [v30 openURL:v33];

      goto LABEL_19;
    }

    if (v18 == sub_10009E5C4() && v20 == v26)
    {
LABEL_13:

      goto LABEL_14;
    }

    v41 = sub_10009ED34();

    if (v41)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_10009E5C4();
  }

  v33 = sub_10009D904();
  v35 = sub_10009E824();
  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v33, v35, "OpenURLInHomeIntent - URL does not appear to be a Home app URL", v36, 2u);
  }

LABEL_19:
  v37 = v0[6];
  v38 = v0[2];

  sub_10009C934();

  v39 = v0[1];

  return v39();
}

uint64_t sub_10001E8C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A20 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CD54();
  v3 = sub_100015B68(v2, qword_1000C8168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001E988@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A28 != -1)
  {
    swift_once();
  }

  v2 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  v3 = sub_100015B68(v2, qword_1000C8180);

  return sub_10001F44C(v3, a1);
}

uint64_t sub_10001EA0C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_10001E3CC(a1, v4);
}

uint64_t sub_10001EAAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001EBA0@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10009CB44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10009CD54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100003714(&qword_1000C0FF0, &qword_10009FEA8);
  sub_10009CD14();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10009CE24();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10009C914();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10009C9B4();
  *v25 = result;
  return result;
}

uint64_t sub_10001EEDC(uint64_t a1)
{
  v2 = sub_10001E244();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001EF50()
{
  result = qword_1000C0FC8;
  if (!qword_1000C0FC8)
  {
    sub_10000375C(&qword_1000C0FD0, "&y");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0FC8);
  }

  return result;
}

uint64_t sub_10001EFB4(uint64_t a1)
{
  v38 = a1;
  v1 = sub_10009CE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v33 - v6;
  v7 = sub_10009CB44();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v33 - v17;
  v19 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v33 - v21;
  v23 = sub_10009CD54();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100003714(&qword_1000C0FF0, &qword_10009FEA8);
  sub_10009CD14();
  (*(v24 + 56))(v22, 1, 1, v23);
  (*(v2 + 56))(v18, 1, 1, v1);
  v26 = sub_10009C914();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  (*(v34 + 104))(v10, enum case for InputConnectionBehavior.default(_:), v35);
  v27 = sub_10009C9B4();
  v28 = *(v2 + 16);
  v29 = v36;
  v30 = v38;
  v28(v36, v38, v1);
  v28(v37, v29, v1);

  sub_10009C964();

  v31 = *(v2 + 8);
  v31(v30, v1);
  v31(v29, v1);
  return v27;
}

unint64_t sub_10001F3F4()
{
  result = qword_1000C0FF8;
  if (!qword_1000C0FF8)
  {
    sub_10009CE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0FF8);
  }

  return result;
}

uint64_t sub_10001F44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10001F4BC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10001F520()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF54();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10009E5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10009CD54();
  sub_10001F4BC(v9, qword_1000C8198);
  sub_100015B68(v9, qword_1000C8198);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_10001F710()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C81B0);
  sub_100015B68(v0, qword_1000C81B0);
  return sub_10009CBB4();
}

uint64_t sub_10001F770()
{
  sub_100003714(&qword_1000C10E0, &unk_1000A03E0);
  v0 = sub_100003714(&qword_1000C0EC8, &qword_10009FCF0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10009F8F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_10009CA84();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_10009CA84();
  v7 = sub_10001CE10(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000C81C8 = v7;
  return result;
}

uint64_t sub_10001F8B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C67676F74;
  }

  else
  {
    v4 = 1852141679;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C67676F74;
  }

  else
  {
    v6 = 1852141679;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10009ED34();
  }

  return v9 & 1;
}

unint64_t sub_10001F958()
{
  result = qword_1000C1008;
  if (!qword_1000C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1008);
  }

  return result;
}

Swift::Int sub_10001F9AC()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_10001FA24()
{
  *v0;
  sub_10009E624();
}

Swift::Int sub_10001FA88()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_10001FAFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BB0E0;
  v8._object = v3;
  v5 = sub_10009EBE4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001FB5C(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (*v1)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10001FB94()
{
  result = qword_1000C1010;
  if (!qword_1000C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1010);
  }

  return result;
}

unint64_t sub_10001FBEC()
{
  result = qword_1000C1018;
  if (!qword_1000C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1018);
  }

  return result;
}

unint64_t sub_10001FC44()
{
  result = qword_1000C1020;
  if (!qword_1000C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1020);
  }

  return result;
}

unint64_t sub_10001FDAC()
{
  result = qword_1000C1038;
  if (!qword_1000C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1038);
  }

  return result;
}

unint64_t sub_10001FE04()
{
  result = qword_1000C1040;
  if (!qword_1000C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1040);
  }

  return result;
}

unint64_t sub_10001FE5C()
{
  result = qword_1000C1048;
  if (!qword_1000C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1048);
  }

  return result;
}

unint64_t sub_10001FEB4()
{
  result = qword_1000C1050;
  if (!qword_1000C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1050);
  }

  return result;
}

unint64_t sub_10001FF70()
{
  result = qword_1000C1058;
  if (!qword_1000C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1058);
  }

  return result;
}

uint64_t sub_10001FFC4(uint64_t a1)
{
  v2 = sub_10001FF70();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100020014()
{
  result = qword_1000C1060;
  if (!qword_1000C1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1060);
  }

  return result;
}

unint64_t sub_10002006C()
{
  result = qword_1000C1068;
  if (!qword_1000C1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1068);
  }

  return result;
}

unint64_t sub_1000200C4()
{
  result = qword_1000C1070;
  if (!qword_1000C1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1070);
  }

  return result;
}

uint64_t sub_100020118()
{
  if (qword_1000C0A40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100020174(uint64_t a1)
{
  v2 = sub_10001FEB4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000201C4()
{
  result = qword_1000C1078;
  if (!qword_1000C1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1078);
  }

  return result;
}

unint64_t sub_10002021C()
{
  result = qword_1000C1080;
  if (!qword_1000C1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1080);
  }

  return result;
}

uint64_t sub_100020270(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10009D924();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_10009CE24();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000203A4, 0, 0);
}

uint64_t sub_1000203A4()
{
  v46 = v0;
  v1 = *(*(v0 + 48) + 24);
  sub_10009C954();
  if (*(v0 + 128))
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_100020814;
    v3 = *(v0 + 48);

    return sub_100020FBC();
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = *(*(v0 + 48) + 8);
    sub_10009C954();
    sub_100020A0C(*(v0 + 16), *(v0 + 24), v5);

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = qword_1000C8318;
    sub_10009D934();
    v13 = *(v10 + 16);
    v13(v7, v8, v9);
    v14 = sub_10009D904();
    v15 = sub_10009E844();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v44 = *(v0 + 56);
    if (v16)
    {
      v22 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, v45);
      *(v22 + 12) = 2080;
      sub_1000243C8(&qword_1000C0FF8, &type metadata accessor for URL);
      v23 = sub_10009ED04();
      log = v14;
      v24 = v13;
      v25 = v18;
      v26 = v23;
      v43 = v20;
      v28 = v27;
      v29 = *(v19 + 8);
      v29(v17, v25);
      v30 = v29;
      v13 = v24;
      v31 = sub_10002AD68(v26, v28, v45);

      *(v22 + 14) = v31;
      _os_log_impl(&_mh_execute_header, log, v15, "%s Opening %s", v22, 0x16u);
      swift_arrayDestroy();

      (*(v21 + 8))(v43, v44);
    }

    else
    {

      v32 = *(v19 + 8);
      v32(v17, v18);
      v30 = v32;
      (*(v21 + 8))(v20, v44);
    }

    v33 = *(v0 + 112);
    v34 = *(v0 + 96);
    v35 = *(v0 + 80);
    v36 = *(v0 + 40);
    v13(v34, v33, v35);
    *(v0 + 32) = sub_10001EFB4(v34);
    sub_10001E244();
    sub_10009C924();

    v30(v33, v35);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    v39 = *(v0 + 96);
    v40 = *(v0 + 72);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_100020814()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[12];
    v8 = v2[9];

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100020978, 0, 0);
  }
}

uint64_t sub_100020978()
{
  v1 = v0[5];
  sub_10009C934();
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100020A0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v50 = a3;
  v4 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42 = &v41 - v6;
  v7 = sub_10009D924();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009D564();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009D5D4();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10009D544();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    v51._countAndFlagsBits = 47;
    v51._object = 0xE100000000000000;
    sub_10009E634(v51);
    (*(v20 + 104))(v23, enum case for DeepLinkDestination.SecondaryDestination.control(_:), v19);
    sub_10009EB84();
    (*(v20 + 8))(v23, v19);
    v25 = v48;
    v24 = v49;
    v48 = v47;
    v49 = a2;

    v52._countAndFlagsBits = v25;
    v52._object = v24;
    sub_10009E634(v52);

    v27 = v43;
    v26 = v44;
    (*(v43 + 104))(v14, enum case for DeepLinkDestination.accessory(_:), v44);
    sub_10009D554();
    (*(v27 + 8))(v14, v26);
    sub_10009D5C4();
    sub_10009D5B4();
    return (*(v45 + 8))(v18, v46);
  }

  else
  {
    v29 = v10;
    v31 = v41;
    v30 = v42;
    v32 = v50;
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v33 = qword_1000C8318;
    sub_10009D934();
    v34 = sub_10009D904();
    v35 = sub_10009E824();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v29;
      v38 = swift_slowAlloc();
      v48 = v38;
      *v36 = 136315138;
      *(v36 + 4) = sub_10002AD68(0x3A726F66286C7275, 0xE900000000000029, &v48);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s Missing target ID for URL", v36, 0xCu);
      sub_100015F44(v38);

      (*(v31 + 8))(v37, v7);
    }

    else
    {

      (*(v31 + 8))(v29, v7);
    }

    sub_10009CE14();
    v39 = sub_10009CE24();
    v40 = *(v39 - 8);
    result = (*(v40 + 48))(v30, 1, v39);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v40 + 32))(v32, v30, v39);
    }
  }

  return result;
}

uint64_t sub_100020FBC()
{
  v1[18] = v0;
  v2 = sub_10009D924();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000C0C78, &qword_1000A0390) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v6 = sub_10009CF14();
  v1[28] = v6;
  v7 = *(v6 - 8);
  v1[29] = v7;
  v8 = *(v7 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10002117C, 0, 0);
}

uint64_t sub_10002117C()
{
  v81 = v0;
  v0[35] = *(v0[18] + 8);
  sub_10009C954();
  v1 = v0[15];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v0[14];
  v0[36] = *(v0[18] + 16);
  sub_10009C954();
  if (!v0[17])
  {

LABEL_6:
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    v10 = qword_1000C8318;
    sub_10009D934();
    v11 = sub_10009D904();
    v12 = sub_10009E824();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v80 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v80);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Missing target ID", v17, 0xCu);
      sub_100015F44(v18);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_19;
  }

  v3 = v0[16];
  v5 = v0 + 27;
  v4 = v0[27];
  v6 = v0[28];
  v7 = v0[29];
  v77 = v2;
  sub_10009CED4();
  v8 = *(v7 + 48);
  if (v8(v4, 1, v6) == 1)
  {

LABEL_13:
    sub_1000242C8(*v5);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v23 = v0[22];
    v24 = qword_1000C8318;
    sub_10009D934();

    v25 = sub_10009D904();
    v26 = sub_10009E824();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[22];
    v29 = v0[19];
    v30 = v0[20];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v80);
      *(v31 + 12) = 2080;
      v32 = sub_10002AD68(v77, v1, &v80);

      *(v31 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s Failed to unwrap target ID for %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v30 + 8))(v28, v29);
LABEL_19:
    v34 = v0[33];
    v33 = v0[34];
    v36 = v0[31];
    v35 = v0[32];
    v37 = v0[30];
    v39 = v0[26];
    v38 = v0[27];
    v41 = v0[24];
    v40 = v0[25];
    v42 = v0[23];
    v76 = v0[22];
    v78 = v0[21];

    v43 = v0[1];

    return v43();
  }

  v5 = v0 + 26;
  v19 = v0[26];
  v20 = v0[28];
  v75 = *(v0[29] + 32);
  v75(v0[34], v0[27], v20);
  sub_10009CED4();

  v21 = v8(v19, 1, v20);
  v22 = v0[28];
  if (v21 == 1)
  {
    (*(v0[29] + 8))(v0[34], v0[28]);
    goto LABEL_13;
  }

  v45 = v0[33];
  v46 = v0[26];

  v75(v45, v46, v22);
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v47 = v0[34];
  v48 = v0[32];
  v49 = v0[28];
  v50 = v0[29];
  v51 = v0[25];
  v52 = qword_1000C8318;
  v0[37] = qword_1000C8318;
  v53 = v52;
  sub_10009D934();
  v54 = *(v50 + 16);
  v0[38] = v54;
  v0[39] = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v48, v47, v49);
  v55 = sub_10009D904();
  v56 = sub_10009E844();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[32];
  v60 = v0[28];
  v59 = v0[29];
  v61 = v0[25];
  v63 = v0[19];
  v62 = v0[20];
  if (v57)
  {
    v79 = v0[19];
    v64 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v64 = 136315394;
    *(v64 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v80);
    *(v64 + 12) = 2080;
    sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID);
    v65 = sub_10009ED04();
    v74 = v61;
    v67 = v66;
    v73 = v56;
    v68 = *(v59 + 8);
    v68(v58, v60);
    v69 = sub_10002AD68(v65, v67, &v80);

    *(v64 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v55, v73, "%s Toggling target %s", v64, 0x16u);
    swift_arrayDestroy();

    v70 = *(v62 + 8);
    v70(v74, v79);
  }

  else
  {

    v68 = *(v59 + 8);
    v68(v58, v60);
    v70 = *(v62 + 8);
    v70(v61, v63);
  }

  v0[40] = v70;
  v0[41] = v68;
  v0[42] = sub_10009D024();
  v0[43] = sub_10009D1E4();
  v0[44] = sub_10009D1D4();
  v0[45] = sub_1000243C8(&qword_1000C10D0, &type metadata accessor for WidgetActor);
  v72 = sub_10009E714();

  return _swift_task_switch(sub_100021978, v72, v71);
}

uint64_t sub_100021978()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 144);

  *(v0 + 368) = sub_10009D004();
  v5 = v3[1];
  v4 = v3[2];
  *(v0 + 16) = *v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = async function pointer to WidgetDataModel.toggle<A>(configuration:homeID:targetID:)[1];
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  v8 = sub_100024374();
  *(v0 + 384) = v8;
  *v7 = v0;
  v7[1] = sub_100021A54;
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);

  return WidgetDataModel.toggle<A>(configuration:homeID:targetID:)(v0 + 16, v9, v10, &_s17TileControlActionVN, v8);
}

uint64_t sub_100021A54(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(*v2 + 368);
  v7 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v8 = sub_1000224D4;
  }

  else
  {
    *(v4 + 432) = a1 & 1;
    v8 = sub_100021BA4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100021BA4()
{
  v71 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 296);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  if (v1 == 1)
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 192);
    sub_10009D934();
    v4(v7, v5, v6);
    v9 = sub_10009D904();
    v10 = sub_10009E844();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 248);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v63 = *(v0 + 160);
    v64 = *(v0 + 152);
    v67 = *(v0 + 192);
    if (v11)
    {
      v61 = *(v0 + 320);
      v19 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v70);
      *(v19 + 12) = 2080;
      sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID);
      v59 = v15;
      v60 = v14;
      v20 = sub_10009ED04();
      v22 = v21;
      v12(v16, v18);
      v23 = sub_10002AD68(v20, v22, &v70);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Toggled target %s", v19, 0x16u);
      swift_arrayDestroy();

      v61(v67, v64);
      v12(v59, v18);
      v24 = v60;
    }

    else
    {

      v12(v16, v18);
      v13(v67, v64);
      v12(v15, v18);
      v24 = v14;
    }

    v12(v24, v18);
    v44 = *(v0 + 264);
    v43 = *(v0 + 272);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 240);
    v49 = *(v0 + 208);
    v48 = *(v0 + 216);
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 184);
    v66 = *(v0 + 176);
    v69 = *(v0 + 168);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 184);
    sub_10009D934();
    v4(v25, v5, v6);
    v27 = sub_10009D904();
    v28 = sub_10009E824();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 320);
    v68 = *(v0 + 328);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 224);
    v34 = *(v0 + 184);
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);
    if (v29)
    {
      v65 = *(v0 + 184);
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v70);
      *(v37 + 12) = 2080;
      sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID);
      v62 = v30;
      v38 = sub_10009ED04();
      v40 = v39;
      v41 = v32 + 8;
      v68(v31, v33);
      v42 = sub_10002AD68(v38, v40, &v70);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s Failed to toggle target %s", v37, 0x16u);
      swift_arrayDestroy();

      v62(v65, v35);
    }

    else
    {

      v41 = v32 + 8;
      v68(v31, v33);
      v30(v34, v35);
    }

    *(v0 + 400) = v41;
    v55 = *(v0 + 360);
    v56 = *(v0 + 344);
    *(v0 + 408) = sub_10009D1D4();
    v58 = sub_10009E714();

    return _swift_task_switch(sub_100022168, v58, v57);
  }
}

uint64_t sub_100022168()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 144);

  *(v0 + 416) = sub_10009D004();
  v6 = *v5;
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = *v5;
  v11 = *(v5 + 2);
  *(v0 + 80) = *(v5 + 1);
  *(v0 + 96) = v11;
  *(v0 + 64) = v10;
  v12 = async function pointer to WidgetDataModel.queueForNextUpdate<A>(configuration:)[1];

  v13 = swift_task_alloc();
  *(v0 + 424) = v13;
  *v13 = v0;
  v13[1] = sub_100022290;
  v14 = *(v0 + 384);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v0 + 64, &_s17TileControlActionVN, v14);
}

uint64_t sub_100022290()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return _swift_task_switch(sub_1000223A8, 0, 0);
}

uint64_t sub_1000223A8()
{
  v1 = v0[50];
  v2 = v0[41];
  v3 = v0[34];
  v4 = v0[28];
  v2(v0[33], v4);
  v2(v3, v4);
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[23];
  v17 = v0[22];
  v18 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000224D4()
{
  v1 = v0[41];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[28];
  v12 = v0[26];
  v13 = v0[25];
  v7 = v0[24];
  v8 = v0[29] + 8;
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[21];
  v1(v0[33], v6);
  v1(v2, v6);

  v9 = v0[1];
  v10 = v0[49];

  return v9();
}

uint64_t sub_100022608@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_10009C954();
  *a1 = v5;
  return result;
}

uint64_t sub_100022644(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_10009C964();
}

void (*sub_10002267C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10009C944();
  return sub_1000226F0;
}

void sub_1000226F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10002273C()
{
  v1 = *(v0 + 32);
  sub_10009C954();
  return v3;
}

uint64_t sub_100022770()
{
  v1 = *(v0 + 40);
  sub_10009C954();
  return v3;
}

unint64_t sub_1000227A8()
{
  result = qword_1000C1088;
  if (!qword_1000C1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1088);
  }

  return result;
}

unint64_t sub_100022800()
{
  result = qword_1000C1090;
  if (!qword_1000C1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1090);
  }

  return result;
}

uint64_t sub_100022934@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100015B68(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000229E4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_100022A90;

  return sub_100020270(a1);
}

uint64_t sub_100022A90()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_100022B84@<D0>(_OWORD *a1@<X8>)
{
  sub_100022E6C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_100022BC4(uint64_t a1)
{
  v2 = sub_1000201C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100022C00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100022C14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100022C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17TileControlActionV6ActionOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17TileControlActionV6ActionOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100022E6C@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = sub_100003714(&qword_1000C10A0, "&H");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v72 = &v61 - v3;
  v82 = sub_10009CB44();
  v4 = *(v82 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v82);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v61 - v16;
  v18 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v61 - v20;
  v22 = sub_10009CD54();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v76 = sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009CD14();
  v25 = *(v23 + 56);
  v80 = v23 + 56;
  v77 = v25;
  v78 = v22;
  v25(v21, 1, 1, v22);
  LOBYTE(v84) = 2;
  v26 = sub_10009E6F4();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = sub_10009C914();
  v28 = *(v27 - 8);
  v79 = *(v28 + 56);
  v83 = v28 + 56;
  v79(v13, 1, 1, v27);
  v81 = enum case for InputConnectionBehavior.default(_:);
  v74 = *(v4 + 104);
  v69 = v4 + 104;
  v29 = v82;
  v74(v7);
  v65 = sub_10009C9D4();
  v70 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  sub_10009CD14();
  v77(v21, 1, 1, v22);
  v75 = sub_10009E544();
  v84 = 0;
  v85 = 0;
  v30 = *(v75 - 8);
  v71 = *(v30 + 56);
  v76 = v30 + 56;
  v31 = v72;
  v71(v72, 1, 1, v75);
  v68 = v13;
  v32 = v13;
  v33 = v27;
  v73 = v27;
  v34 = v79;
  v79(v32, 1, 1, v27);
  v61 = v7;
  v35 = v7;
  v36 = v81;
  v37 = v74;
  (v74)(v35, v81, v29);
  v64 = sub_10009C9C4();
  sub_10009CD14();
  v77(v21, 1, 1, v78);
  v84 = 0;
  v85 = 0;
  v71(v31, 1, 1, v75);
  v38 = v68;
  v34(v68, 1, 1, v33);
  v39 = v61;
  v37(v61, v36, v82);
  v62 = v21;
  v40 = v39;
  v70 = sub_10009C9C4();
  v63 = sub_100003714(&qword_1000C10C0, &qword_1000A03B8);
  sub_10009CD14();
  v41 = v21;
  v42 = v77;
  v77(v41, 1, 1, v78);
  LOBYTE(v84) = 2;
  v43 = v73;
  v44 = v79;
  v79(v38, 1, 1, v73);
  v44(v66, 1, 1, v43);
  v45 = v82;
  (v74)(v39, v81, v82);
  sub_10001FF70();
  v46 = v62;
  v66 = sub_10009C984();
  v63 = sub_100003714(&qword_1000C10C8, &qword_1000A03C0);
  sub_10009CD14();
  v42(v46, 1, 1, v78);
  v84 = 0;
  v85 = 0;
  v48 = v71;
  v47 = v72;
  v71(v72, 1, 1, v75);
  v49 = v68;
  v79(v68, 1, 1, v73);
  v50 = v40;
  v51 = v45;
  v52 = v74;
  (v74)(v40, v81, v51);
  v53 = v46;
  v54 = v47;
  v55 = v49;
  v56 = sub_10009C9C4();
  sub_10009CD14();
  v77(v53, 1, 1, v78);
  v84 = 0;
  v85 = 0;
  v48(v54, 1, 1, v75);
  v79(v55, 1, 1, v73);
  (v52)(v50, v81, v82);
  result = sub_10009C9C4();
  v58 = v67;
  v59 = v64;
  *v67 = v65;
  v58[1] = v59;
  v60 = v66;
  v58[2] = v70;
  v58[3] = v60;
  v58[4] = v56;
  v58[5] = result;
  return result;
}

uint64_t sub_100023744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v97 = a4;
  v95 = a3;
  v96 = a2;
  v93 = a1;
  v98 = a5;
  v5 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v9;
  v10 = sub_100003714(&qword_1000C10A0, "&H");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v102 = &v88 - v12;
  v105 = sub_10009CB44();
  v13 = *(v105 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v105);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v89 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v88 - v21;
  v23 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v88 - v25;
  v27 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v88 - v29;
  v31 = sub_10009CD54();
  v108 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009CD14();
  v109 = *(v32 + 56);
  v112 = v32 + 56;
  v109(v30, 1, 1, v31);
  LOBYTE(v115) = 2;
  v34 = sub_10009E6F4();
  (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
  v110 = sub_10009C914();
  v35 = *(v110 - 8);
  v111 = *(v35 + 56);
  v114 = v35 + 56;
  v111(v22, 1, 1, v110);
  v113 = enum case for InputConnectionBehavior.default(_:);
  v36 = *(v13 + 104);
  v104 = v13 + 104;
  v99 = v16;
  v100 = v36;
  v37 = v105;
  v36(v16);
  v38 = sub_10009C9D4();
  v103 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  v92 = v38;

  sub_10009CD14();
  v109(v30, 1, 1, v108);
  v106 = sub_10009E544();
  v115 = 0;
  v116 = 0;
  v39 = *(v106 - 8);
  v101 = *(v39 + 56);
  v107 = v39 + 56;
  v40 = v102;
  v101(v102, 1, 1, v106);
  v41 = v110;
  v42 = v111;
  v111(v22, 1, 1, v110);
  v43 = v99;
  v44 = v100;
  v100(v99, v113, v37);
  v90 = sub_10009C9C4();

  sub_10009CD14();
  v109(v30, 1, 1, v108);
  v115 = 0;
  v116 = 0;
  v101(v40, 1, 1, v106);
  v42(v22, 1, 1, v41);
  v45 = v105;
  v44(v43, v113, v105);
  v46 = v22;
  v47 = sub_10009C9C4();
  v88 = sub_100003714(&qword_1000C10C0, &qword_1000A03B8);
  v103 = v47;

  sub_10009CD14();
  v48 = v30;
  v49 = v108;
  v50 = v109;
  v109(v30, 1, 1, v108);
  LOBYTE(v115) = 2;
  v51 = v110;
  v52 = v111;
  v111(v46, 1, 1, v110);
  v52(v89, 1, 1, v51);
  v53 = v99;
  v54 = v45;
  v55 = v100;
  v100(v99, v113, v54);
  sub_10001FF70();
  v56 = sub_10009C984();
  sub_100003714(&qword_1000C10C8, &qword_1000A03C0);
  v89 = v56;

  sub_10009CD14();
  v57 = v48;
  v50(v48, 1, 1, v49);
  v115 = 0;
  v116 = 0;
  v58 = v101;
  v59 = v102;
  v101(v102, 1, 1, v106);
  v60 = v46;
  v111(v46, 1, 1, v110);
  v61 = v105;
  v55(v53, v113, v105);
  v88 = sub_10009C9C4();

  sub_10009CD14();
  v109(v57, 1, 1, v108);
  v115 = 0;
  v116 = 0;
  v58(v59, 1, 1, v106);
  v111(v60, 1, 1, v110);
  v55(v53, v113, v61);
  v62 = v93;
  v63 = v91;
  v64 = sub_10009C9C4();
  sub_10001600C(v62, v63);
  v65 = sub_10009CF14();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  LODWORD(v26) = v67(v63, 1, v65);

  if (v26 == 1)
  {
    sub_1000242C8(v63);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = sub_10009CEE4();
    v69 = v70;
    (*(v66 + 8))(v63, v65);
  }

  v115 = v68;
  v116 = v69;
  sub_10009C964();
  v71 = v96;
  v72 = v94;
  sub_10001600C(v96, v94);
  if (v67(v72, 1, v65) == 1)
  {
    sub_1000242C8(v72);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = sub_10009CEE4();
    v74 = v75;
    (*(v66 + 8))(v72, v65);
  }

  v115 = v73;
  v116 = v74;
  v76 = v90;
  sub_10009C964();
  LOBYTE(v115) = v95 & 1;
  v77 = v89;
  sub_10009C964();
  v78 = v97;
  v79 = v97[4];
  sub_100024330(v97, v97[3]);
  v115 = sub_10009D0D4();
  v116 = v80;
  v81 = v88;
  sub_10009C964();
  v82 = v78[4];
  sub_100024330(v78, v78[3]);
  v115 = sub_10009D0C4();
  v116 = v83;
  sub_10009C964();
  sub_1000242C8(v71);
  sub_1000242C8(v62);
  sub_100015F44(v78);

  v84 = v103;

  v85 = v92;

  v87 = v98;
  *v98 = v85;
  v87[1] = v76;
  v87[2] = v84;
  v87[3] = v77;
  v87[4] = v81;
  v87[5] = v64;
  return result;
}

uint64_t sub_1000242C8(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100024330(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100024374()
{
  result = qword_1000C10D8;
  if (!qword_1000C10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C10D8);
  }

  return result;
}

uint64_t sub_1000243C8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100024418(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_10009CF14() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID);
  }

  while ((sub_10009E534() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100024524(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessoryAndSceneEntity();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_10002ED9C(a3 + v16 + v17 * v14, v13, type metadata accessor for AccessoryAndSceneEntity);
      v18 = a1(v13);
      if (v3)
      {
        sub_10002EE04(v13, type metadata accessor for AccessoryAndSceneEntity);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10002EE74(v13, v25, type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001BC84(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10001BC84(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10002EE74(v25, v15 + v16 + v21 * v17, type metadata accessor for AccessoryAndSceneEntity);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_10002EE04(v13, type metadata accessor for AccessoryAndSceneEntity);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t type metadata accessor for AccessoryAndSceneEntity()
{
  result = qword_1000C11D8;
  if (!qword_1000C11D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000248DC()
{
  result = qword_1000C1108;
  if (!qword_1000C1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1108);
  }

  return result;
}

uint64_t sub_10002493C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10009E5B4();
  [v0 initWithSuiteName:v1];

  result = sub_10009D9C4();
  qword_1000C10E8 = result;
  return result;
}

uint64_t sub_1000249E0@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_10009CE24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:13 inDomains:1];

  v13 = sub_10009E6A4();
  if (*(v13 + 16))
  {
    v1 = *(v4 + 16);
    v1(v10, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    sub_10009CDD4();
    if (qword_1000C0AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_10009D924();
  sub_100015B68(v14, qword_1000C82A8);
  v1(v8, a1, v3);
  v15 = sub_10009D904();
  v16 = sub_10009E844();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10002AD68(0x617461446F6D6564, 0xED000029284C5255, &v26);
    *(v17 + 12) = 2080;
    sub_10002EEE0(&qword_1000C0FF8, &type metadata accessor for URL);
    v18 = sub_10009ED04();
    v20 = v19;
    v25 = v10;
    v21 = *(v4 + 8);
    v21(v8, v3);
    v22 = sub_10002AD68(v18, v20, &v26);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s demoDataURL: (%s)", v17, 0x16u);
    swift_arrayDestroy();

    return (v21)(v25, v3);
  }

  else
  {

    v24 = *(v4 + 8);
    v24(v8, v3);
    return (v24)(v10, v3);
  }
}

uint64_t sub_100024D94()
{
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  result = sub_10009CBA4();
  qword_1000C81D0 = result;
  return result;
}

uint64_t sub_100024DE0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39 = &v35 - v4;
  v5 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = &v35 - v7;
  v8 = sub_10009CD54();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009D494();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10009E594();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_10009E584();
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10009E574(v41);
  v18 = v1 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v19 = type metadata accessor for WidgetTileInfo();
  v20 = v19[7];
  v21 = (v18 + v19[6]);
  v23 = *v21;
  v22 = v21[1];
  v25 = *(v18 + v20);
  v24 = *(v18 + v20 + 8);

  sub_10009D484();
  v26 = sub_10009D474();
  v28 = v27;
  (*(v12 + 8))(v15, v11);
  v42._countAndFlagsBits = v26;
  v42._object = v28;
  sub_10009E564(v42);

  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_10009E574(v43);
  sub_10009CD44();
  (*(v36 + 56))(v38, 1, 1, v37);
  v29 = (v18 + v19[8]);
  v30 = *v29;
  v31 = v29[1];

  v32 = v39;
  sub_10009CA94();
  v33 = sub_10009CAA4();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  return sub_10009CAC4();
}

uint64_t sub_100025178()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C81D8);
  sub_100015B68(v0, qword_1000C81D8);
  return sub_10009CBB4();
}

uint64_t sub_1000251DC@<X0>(void *a1@<X8>)
{
  if (qword_1000C0A50 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000C81D0;
}

Swift::Int sub_1000252DC(uint64_t a1)
{
  v3 = v1;
  sub_10009EDD4();
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID);
  sub_10009E504();
  v4 = v1 + *(a1 + 20);
  sub_10009E504();
  v5 = v3 + *(a1 + 24);
  sub_10001ADCC();
  return sub_10009EE04();
}

void sub_1000253A8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID);
  sub_10009E504();
  v5 = v2 + *(a2 + 20);
  sub_10009E504();
  v6 = v4 + *(a2 + 24);
  sub_10001ADCC();
}

Swift::Int sub_10002545C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_10009EDD4();
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID);
  sub_10009E504();
  v5 = v2 + *(a2 + 20);
  sub_10009E504();
  v6 = v4 + *(a2 + 24);
  sub_10001ADCC();
  return sub_10009EE04();
}

BOOL sub_100025524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return sub_10001C7F8(a1 + v7, a2 + v7);
}

uint64_t sub_1000256C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A58 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CBC4();
  v3 = sub_100015B68(v2, qword_1000C81D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000257AC(uint64_t a1)
{
  v2 = sub_10002EEE0(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100025874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002EF28;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100025938(uint64_t a1)
{
  v2 = sub_10002EEE0(&qword_1000C1130, type metadata accessor for AccessoryAndSceneEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000259B8()
{
  v1 = v0;
  sub_10009EAC4(65);
  v8._object = 0x80000001000A43C0;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10009E634(v8);
  v2 = type metadata accessor for AccessoryAndSceneEntity();
  v3 = v0 + *(v2 + 24);
  v4 = v3 + *(type metadata accessor for WidgetTileInfo() + 20);
  v9._countAndFlagsBits = sub_10009CEE4();
  sub_10009E634(v9);

  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x80000001000A43E0;
  sub_10009E634(v10);
  v5 = v1 + *(v2 + 20);
  v11._countAndFlagsBits = sub_10009CEE4();
  sub_10009E634(v11);

  sub_10009CE14();
}

uint64_t sub_100025AD4()
{
  v1 = sub_10009D1C4();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  __chkstk_darwin(v1);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C1270, &qword_1000A0930);
  v6 = *(v2 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10009F8E0;
  v9 = v8 + v7;
  v10 = *(v3 + 104);
  v10(v9, enum case for ServiceKind.garageDoorOpener(_:), v1);
  v10(v9 + v6, enum case for ServiceKind.door(_:), v1);
  v10(v9 + 2 * v6, enum case for ServiceKind.window(_:), v1);
  v10(v9 + 3 * v6, enum case for ServiceKind.windowCovering(_:), v1);
  v10(v9 + 4 * v6, enum case for ServiceKind.lockMechanism(_:), v1);
  v11 = sub_10002CDDC(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = v0 + *(type metadata accessor for AccessoryAndSceneEntity() + 24);
  v13 = v12 + *(type metadata accessor for WidgetTileInfo() + 60);
  if (*(v13 + 8))
  {

    v14 = 0;
  }

  else
  {
    v15 = *v13;
    v16 = v19;
    sub_10009E904();
    v14 = sub_100025D60(v16, v11);

    (*(v3 + 8))(v16, v1);
  }

  return v14 & 1;
}

uint64_t sub_100025D60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009D1C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10002EEE0(&qword_1000C1278, &type metadata accessor for ServiceKind), v9 = sub_10009E4F4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10002EEE0(&qword_1000C1280, &type metadata accessor for ServiceKind);
      v17 = sub_10009E534();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100025F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_10001E0A8(a1, &v13 - v9, &qword_1000C1228, &unk_1000A0880);
  v11 = *(a2 + 8);
  sub_10001E0A8(v10, v8, &qword_1000C1228, &unk_1000A0880);
  sub_10009C964();
  return sub_1000160CC(v10, &qword_1000C1228, &unk_1000A0880);
}

uint64_t sub_10002606C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for HomeEntity() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000261B4, 0, 0);
}

uint64_t sub_1000261B4()
{
  v73 = v0;
  if (qword_1000C0A90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v3 = sub_10009D924();
    sub_100015B68(v3, qword_1000C8278);

    v4 = sub_10009D904();
    v5 = sub_10009E844();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v7 = 136315650;
      *(v7 + 4) = sub_10002AD68(0x7365697469746E65, 0xEE00293A726F6628, &v72);
      *(v7 + 12) = 2080;
      v8 = sub_10009CB94();
      v9 = *(v0 + 88);
      if (v8)
      {
        v10 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v11 = sub_10009CF14();
        v12 = *(v11 - 8);
        (*(v12 + 16))(v9, v10, v11);
        sub_10002EE04(v10, type metadata accessor for HomeEntity);
        (*(v12 + 56))(v9, 0, 1, v11);
      }

      else
      {
        v13 = sub_10009CF14();
        (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      }

      v14 = *(v0 + 88);
      v15 = *(v0 + 64);
      v16 = *(v0 + 16);
      v17 = sub_10009E5F4();
      v19 = sub_10002AD68(v17, v18, &v72);

      *(v7 + 14) = v19;
      *(v7 + 22) = 2080;
      sub_10009CF14();
      v20 = sub_10009E6B4();
      v22 = sub_10002AD68(v20, v21, &v72);

      *(v7 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s HomeID:%s identifiers:%s", v7, 0x20u);
      swift_arrayDestroy();
    }

    if (qword_1000C0A48 != -1)
    {
      swift_once();
    }

    sub_10009D9D4();

    if (*(v0 + 104) != 1)
    {
      v40 = *(v0 + 24);
      v41 = sub_10009CB94();
      v42 = *(v0 + 80);
      if (v41)
      {
        v43 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v44 = sub_10009CF14();
        v45 = *(v44 - 8);
        (*(v45 + 16))(v42, v43, v44);
        sub_10002EE04(v43, type metadata accessor for HomeEntity);
        (*(v45 + 56))(v42, 0, 1, v44);
        sub_1000160CC(v42, &qword_1000C0C78, &qword_1000A0390);
        v46 = 0;
      }

      else
      {
        v55 = *(v0 + 16);
        v56 = sub_10009CF14();
        (*(*(v56 - 8) + 56))(v42, 1, 1, v56);
        sub_1000160CC(v42, &qword_1000C0C78, &qword_1000A0390);
        v46 = *(v55 + 16) != 0;
      }

      v57 = *(v0 + 24);
      if (sub_10009CB94())
      {
        v58 = *(v0 + 72);
        v59 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v60 = sub_10009CF14();
        v61 = *(v60 - 8);
        (*(v61 + 16))(v58, v59, v60);
        sub_10002EE04(v59, type metadata accessor for HomeEntity);
        v62 = 0;
      }

      else
      {
        v60 = sub_10009CF14();
        v61 = *(v60 - 8);
        v62 = 1;
      }

      v63 = *(v0 + 16);
      (*(v61 + 56))(*(v0 + 72), v62, 1, v60);
      v64 = swift_task_alloc();
      *(v0 + 96) = v64;
      *v64 = v0;
      v64[1] = sub_100026B24;
      v65 = *(v0 + 72);

      return sub_10002D41C(v46, v65, v63);
    }

    if (qword_1000C0A80 != -1)
    {
      swift_once();
    }

    v23 = *(qword_1000C8258 + 16);

    v69 = v23;
    if (!v23)
    {
      break;
    }

    v25 = 0;
    v26 = *(v0 + 16);
    v66 = v26;
    v67 = *(v0 + 32);
    v27 = _swiftEmptyArrayStorage;
    v68 = v24;
    while (v25 < *(v24 + 16))
    {
      v28 = v25 + 1;
      v70 = *(v67 + 72);
      v71 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      sub_10002ED9C(v24 + v71 + v70 * v25, *(v0 + 48), type metadata accessor for AccessoryAndSceneEntity);
      v29 = 0;
      v30 = *(v66 + 16);
      do
      {
        v31 = *(v0 + 48);
        if (v30 == v29)
        {
          sub_10002EE04(*(v0 + 48), type metadata accessor for AccessoryAndSceneEntity);
          goto LABEL_15;
        }

        v32 = *(v0 + 16);
        v33 = *(sub_10009CF14() - 8);
        v34 = v29 + 1;
        v35 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29;
        sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID);
        v29 = v34;
      }

      while ((sub_10009E534() & 1) == 0);
      sub_10002EE74(*(v0 + 48), *(v0 + 40), type metadata accessor for AccessoryAndSceneEntity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001BC84(0, v27[2] + 1, 1);
        v27 = v72;
      }

      v38 = v27[2];
      v37 = v27[3];
      if (v38 >= v37 >> 1)
      {
        sub_10001BC84(v37 > 1, v38 + 1, 1);
        v27 = v72;
      }

      v39 = *(v0 + 40);
      v27[2] = v38 + 1;
      sub_10002EE74(v39, v27 + v71 + v38 * v70, type metadata accessor for AccessoryAndSceneEntity);
LABEL_15:
      v25 = v28;
      v24 = v68;
      if (v28 == v69)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_28:

  v48 = *(v0 + 80);
  v47 = *(v0 + 88);
  v49 = *(v0 + 72);
  v51 = *(v0 + 48);
  v50 = *(v0 + 56);
  v52 = *(v0 + 40);

  v53 = *(v0 + 8);

  return v53(v27);
}

uint64_t sub_100026B24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 72);
  v6 = *v1;

  sub_1000160CC(v5, &qword_1000C0C78, &qword_1000A0390);
  v7 = v3[11];
  v8 = v3[10];
  v9 = v3[9];
  v10 = v3[7];
  v11 = v3[6];
  v12 = v3[5];

  v13 = *(v6 + 8);

  return v13(a1);
}

uint64_t sub_100026CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for HomeEntity() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026DD8, 0, 0);
}

uint64_t sub_100026DD8()
{
  v34 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_10009D924();
  sub_100015B68(v3, qword_1000C8278);

  v4 = sub_10009D904();
  v5 = sub_10009E844();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A44C0, &v33);
    *(v7 + 12) = 2080;
    v8 = sub_10009CB94();
    v9 = v0[9];
    if (v8)
    {
      v10 = v0[6];
      swift_getKeyPath();
      sub_10002B338();
      sub_10009C9E4();

      v11 = sub_10009CF14();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v9, v10, v11);
      sub_10002EE04(v10, type metadata accessor for HomeEntity);
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    else
    {
      v13 = sub_10009CF14();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    }

    v14 = v0[9];
    v15 = v0[7];
    v17 = v0[3];
    v16 = v0[4];
    v18 = sub_10009E5F4();
    v20 = sub_10002AD68(v18, v19, &v33);

    *(v7 + 14) = v20;
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_10002AD68(v17, v16, &v33);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Generating suggested entities in home %s matching with string %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v21 = v0[5];
  if (sub_10009CB94())
  {
    v22 = v0[8];
    v23 = v0[6];
    swift_getKeyPath();
    sub_10002B338();
    sub_10009C9E4();

    v24 = sub_10009CF14();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v22, v23, v24);
    sub_10002EE04(v23, type metadata accessor for HomeEntity);
    v26 = 0;
  }

  else
  {
    v24 = sub_10009CF14();
    v25 = *(v24 - 8);
    v26 = 1;
  }

  v27 = v0[4];
  (*(v25 + 56))(v0[8], v26, 1, v24);
  v28 = swift_task_alloc();
  v0[10] = v28;
  *v28 = v0;
  v28[1] = sub_100027258;
  v29 = v0[8];
  v30 = v0[2];
  v31 = v0[3];

  return sub_1000273C4(v30, v29, v31, v27);
}

uint64_t sub_100027258()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 48);
  v7 = *v0;

  sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000273C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_100003714(&qword_1000C0EB0, &qword_10009FCD8);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(sub_100003714(&qword_1000C1238, &qword_1000A0890) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = *(*(sub_10009CF54() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = *(*(sub_10009CD34() - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = *(*(sub_10009E5A4() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = sub_10009CD54();
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = sub_100003714(&qword_1000C1240, &unk_1000A0898);
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v18 = sub_10009D494();
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();
  v21 = type metadata accessor for WidgetTileInfo();
  v4[37] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v23 = type metadata accessor for AccessoryAndSceneEntity();
  v4[40] = v23;
  v24 = *(v23 - 8);
  v4[41] = v24;
  v25 = *(v24 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v26 = sub_10009CF14();
  v4[48] = v26;
  v27 = *(v26 - 8);
  v4[49] = v27;
  v28 = *(v27 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v29 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v4[52] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v31 = sub_100003714(&qword_1000C1178, qword_1000A0718);
  v4[55] = v31;
  v32 = *(v31 - 8);
  v4[56] = v32;
  v33 = *(v32 + 64) + 15;
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000278A4, 0, 0);
}

uint64_t sub_1000278A4()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[40];
  v4 = v0[22];
  v5 = v0[23];
  v6 = *(v5 + 56);
  v0[58] = v6;
  v0[59] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 1, 1, v4);
  v0[60] = sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity);
  sub_10009CA54();
  v7 = swift_task_alloc();
  v0[61] = v7;
  *v7 = v0;
  v7[1] = sub_1000279F8;
  v8 = v0[12];

  return sub_10002D41C(0, v8, 0);
}

uint64_t sub_1000279F8(uint64_t a1)
{
  v2 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_100027AF8, 0, 0);
}

uint64_t sub_100027AF8()
{
  v314 = v0;
  if (qword_1000C0A90 != -1)
  {
    goto LABEL_175;
  }

  while (1)
  {
    v1 = *(v0 + 496);
    v2 = sub_10009D924();
    sub_100015B68(v2, qword_1000C8278);

    v3 = sub_10009D904();
    v4 = sub_10009E844();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 496);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v313[0] = swift_slowAlloc();
      *v7 = 136315650;
      *(v7 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, v313);
      *(v7 + 12) = 2048;
      *(v7 + 14) = *(v6 + 16);

      *(v7 + 22) = 2080;
      v8 = *(v6 + 16);
      if (v8)
      {
        v281 = v4;
        v285 = v7;
        v291 = v3;
        v9 = *(v0 + 496);
        v10 = *(v0 + 392);
        v11 = *(v0 + 328);
        v302 = *(v0 + 320);
        v310 = _swiftEmptyArrayStorage;
        sub_10001BC00(0, v8, 0);
        v12 = v310;
        v13 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v298 = *(v11 + 72);
        do
        {
          v14 = *(v0 + 408);
          v15 = *(v0 + 376);
          v16 = *(v0 + 384);
          sub_10002ED9C(v13, v15, type metadata accessor for AccessoryAndSceneEntity);
          (*(v10 + 16))(v14, v15 + *(v302 + 24), v16);
          sub_10002EE04(v15, type metadata accessor for AccessoryAndSceneEntity);
          v310 = v12;
          v18 = v12[2];
          v17 = v12[3];
          if (v18 >= v17 >> 1)
          {
            sub_10001BC00(v17 > 1, v18 + 1, 1);
            v12 = v310;
          }

          v19 = *(v0 + 408);
          v20 = *(v0 + 384);
          v12[2] = v18 + 1;
          (*(v10 + 32))(v12 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
          v13 += v298;
          --v8;
        }

        while (v8);
        v3 = v291;
        v7 = v285;
        v4 = v281;
      }

      v22 = *(v0 + 384);
      v23 = sub_10009E6B4();
      v25 = v24;

      v26 = sub_10002AD68(v23, v25, v313);

      *(v7 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Starting with %ld entities: %s", v7, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v21 = *(v0 + 496);
    }

    v27 = *(v0 + 496);
    v269 = *(v27 + 16);
    if (!v269)
    {
      v31 = &_swiftEmptyDictionarySingleton;
      v299 = _swiftEmptyArrayStorage;
LABEL_101:
      v114 = *(v0 + 480);
      v115 = *(v0 + 320);
      v116 = *(v0 + 264);
      v304 = *(v0 + 256);
      v117 = *(v0 + 208);
      v293 = *(v0 + 200);
      v118 = *(v0 + 192);
      v120 = *(v0 + 160);
      v119 = *(v0 + 168);
      v121 = *(v0 + 152);
      sub_10009E554();
      sub_10009CD24();
      sub_10009CF44();
      sub_10009CD64();
      sub_100029D98(v299);
      sub_10009CA44();
      v267 = *(v117 + 16);
      v267(v304, v116, v293);
      v122 = sub_1000651A0(0, 1, 1, _swiftEmptyArrayStorage);
      v124 = *(v122 + 2);
      v123 = *(v122 + 3);
      if (v124 >= v123 >> 1)
      {
        v122 = sub_1000651A0(v123 > 1, v124 + 1, 1, v122);
      }

      v125 = *(v0 + 256);
      v126 = *(v0 + 200);
      v127 = *(v0 + 208);
      *(v122 + 2) = v124 + 1;
      v283 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v264 = *(v127 + 72);
      v275 = *(v127 + 32);
      v275(&v122[v283 + v264 * v124], v125, v126);
      v128 = v31[2];
      v129 = _swiftEmptyArrayStorage;
      if (v128)
      {
        v129 = sub_10002ACD8(v31[2], 0);
        v305 = sub_10002C2A8(&v310, v129 + 4, v128, v31);

        result = sub_100015F9C();
        if (v305 != v128)
        {
          __break(1u);
          return result;
        }
      }

      v310 = v129;
      sub_10002B3EC(&v310);
      v131 = *(v0 + 496);

      v132 = v310[2];
      if (v132)
      {
        v272 = (*(v0 + 208) + 8);
        v133 = v310 + 6;
        do
        {
          v287 = *(v0 + 480);
          v134 = *(v0 + 320);
          v135 = *(v0 + 248);
          v294 = *(v0 + 240);
          v136 = *(v0 + 192);
          v306 = *(v0 + 200);
          v137 = *(v133 - 2);
          v138 = *(v133 - 1);
          v139 = v122;
          v140 = *v133;

          sub_10009CD14();
          sub_100029D98(v140);
          v122 = v139;

          sub_10009CA44();
          v267(v294, v135, v306);
          v142 = *(v139 + 2);
          v141 = *(v139 + 3);
          if (v142 >= v141 >> 1)
          {
            v122 = sub_1000651A0(v141 > 1, v142 + 1, 1, v139);
          }

          v143 = *(v0 + 240);
          v144 = *(v0 + 200);
          (*v272)(*(v0 + 248), v144);
          *(v122 + 2) = v142 + 1;
          v275(&v122[v283 + v142 * v264], v143, v144);
          v133 += 3;
          --v132;
        }

        while (v132);
      }

      swift_bridgeObjectRetain_n();
      v145 = sub_10009D904();
      v146 = sub_10009E844();
      v259 = v122;
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v312 = swift_slowAlloc();
        *v147 = 136315650;
        *(v147 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, &v312);
        *(v147 + 12) = 2048;
        *(v147 + 14) = *(v122 + 2);

        *(v147 + 22) = 2080;
        v148 = *(v122 + 2);
        if (v148)
        {
          v279 = v146;
          v288 = v147;
          v295 = v145;
          v149 = *(v0 + 208);
          v313[0] = _swiftEmptyArrayStorage;
          sub_10001BC44(0, v148, 0);
          v150 = 0;
          v151 = v313[0];
          v152 = &v122[v283];
          v153 = (v149 + 8);
          v307 = v148;
          do
          {
            if (v150 >= *(v259 + 2))
            {
              goto LABEL_169;
            }

            v154 = *(v0 + 144);
            v267(*(v0 + 232), v152, *(v0 + 200));
            v310 = 0;
            v311 = 0xE000000000000000;
            sub_10009CA14();
            v155 = sub_10009CAD4();
            v156 = *(v155 - 8);
            if ((*(v156 + 48))(v154, 1, v155) == 1)
            {
              sub_1000160CC(*(v0 + 144), &qword_1000C1238, &qword_1000A0890);
              v157 = 1;
            }

            else
            {
              v158 = *(v0 + 424);
              v159 = *(v0 + 144);
              sub_10009CAB4();
              (*(v156 + 8))(v159, v155);
              v157 = 0;
            }

            v160 = *(v0 + 472);
            v161 = *(v0 + 416);
            v162 = *(v0 + 232);
            v163 = *(v0 + 200);
            (*(v0 + 464))(*(v0 + 424), v157, 1, *(v0 + 176));
            v316._countAndFlagsBits = sub_10009E5F4();
            sub_10009E634(v316);

            v317._countAndFlagsBits = 5972026;
            v317._object = 0xE300000000000000;
            sub_10009E634(v317);
            v164 = *(sub_10009CA24() + 16);

            *(v0 + 80) = v164;
            v318._countAndFlagsBits = sub_10009ED04();
            sub_10009E634(v318);

            v319._countAndFlagsBits = 0x736D657469205DLL;
            v319._object = 0xE700000000000000;
            sub_10009E634(v319);
            v165 = v310;
            v166 = v311;
            (*v153)(v162, v163);
            v313[0] = v151;
            v168 = *(v151 + 16);
            v167 = *(v151 + 24);
            if (v168 >= v167 >> 1)
            {
              sub_10001BC44((v167 > 1), v168 + 1, 1);
              v151 = v313[0];
            }

            ++v150;
            *(v151 + 16) = v168 + 1;
            v169 = v151 + 16 * v168;
            *(v169 + 32) = v165;
            *(v169 + 40) = v166;
            v152 += v264;
          }

          while (v307 != v150);
          v122 = v259;
          v145 = v295;
          v147 = v288;
          v146 = v279;
        }

        v170 = sub_10009E6B4();
        v172 = v171;

        v173 = sub_10002AD68(v170, v172, &v312);

        *(v147 + 24) = v173;
        _os_log_impl(&_mh_execute_header, v145, v146, "%s Returning ItemCollection with allSections (%ld) items = %s", v147, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v174 = *(v122 + 2);
      v175 = _swiftEmptyArrayStorage;
      if (v174)
      {
        v176 = *(v0 + 208);
        v310 = _swiftEmptyArrayStorage;
        sub_10001BCE8(0, v174, 0);
        v175 = v310;
        v177 = &v122[v283];
        v178 = (v176 + 8);
        do
        {
          v179 = *(v0 + 224);
          v180 = *(v0 + 200);
          v267(v179, v177, v180);
          v181 = sub_10009CA24();
          (*v178)(v179, v180);
          v182 = *(v181 + 16);

          v310 = v175;
          v184 = v175[2];
          v183 = v175[3];
          v185 = v184 + 1;
          if (v184 >= v183 >> 1)
          {
            sub_10001BCE8((v183 > 1), v184 + 1, 1);
            v175 = v310;
          }

          v175[2] = v185;
          v175[v184 + 4] = v182;
          v177 += v264;
          --v174;
        }

        while (v174);
LABEL_130:
        v186 = 0;
        v187 = 4;
        while (1)
        {
          v188 = v175[v187];
          v189 = __OFADD__(v186, v188);
          v186 += v188;
          if (v189)
          {
            goto LABEL_168;
          }

          ++v187;
          if (!--v185)
          {
            goto LABEL_133;
          }
        }
      }

      v185 = _swiftEmptyArrayStorage[2];
      if (v185)
      {
        goto LABEL_130;
      }

      v186 = 0;
LABEL_133:

      v71 = sub_10009D904();
      v190 = sub_10009E844();

      if (!os_log_type_enabled(v71, v190))
      {

        goto LABEL_162;
      }

      v239 = v190;
      v191 = swift_slowAlloc();
      v313[0] = swift_slowAlloc();
      *v191 = 136315650;
      *(v191 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, v313);
      *(v191 + 12) = 2048;
      *(v191 + 14) = v186;
      v241 = v191;
      *(v191 + 22) = 2080;
      v251 = *(v122 + 2);
      if (!v251)
      {
        goto LABEL_161;
      }

      v192 = 0;
      v249 = &v122[v283];
      v289 = *(v0 + 320);
      v243 = *(v0 + 128);
      v276 = (*(v0 + 392) + 16);
      v308 = *(v0 + 392);
      v245 = v71;
      v247 = (*(v0 + 208) + 8);
      v193 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v192 >= *(v122 + 2))
        {
          goto LABEL_170;
        }

        v261 = v193;
        v267(*(v0 + 216), &v249[v192 * v264], *(v0 + 200));
        v194 = sub_10009CA24();
        v195 = *(v194 + 16);
        if (v195)
        {
          v256 = v192;
          v310 = _swiftEmptyArrayStorage;
          sub_10001BC00(0, v195, 0);
          v196 = v310;
          v197 = v194 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
          v296 = *(v243 + 16);
          v300 = *(v243 + 72);
          do
          {
            v198 = *(v0 + 400);
            v200 = *(v0 + 376);
            v199 = *(v0 + 384);
            v201 = *(v0 + 304);
            v202 = *(v0 + 136);
            v203 = *(v0 + 120);
            v296(v202, v197, v203);
            sub_10009C8D4();
            (*(v243 + 8))(v202, v203);
            sub_10002ED9C(v200 + *(v289 + 24), v201, type metadata accessor for WidgetTileInfo);
            sub_10002EE04(v200, type metadata accessor for AccessoryAndSceneEntity);
            (*v276)(v198, v201, v199);
            sub_10002EE04(v201, type metadata accessor for WidgetTileInfo);
            v310 = v196;
            v205 = v196[2];
            v204 = v196[3];
            if (v205 >= v204 >> 1)
            {
              sub_10001BC00(v204 > 1, v205 + 1, 1);
              v196 = v310;
            }

            v206 = *(v0 + 400);
            v207 = *(v0 + 384);
            v196[2] = v205 + 1;
            (*(v308 + 32))(v196 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v205, v206, v207);
            v197 += v300;
            --v195;
          }

          while (v195);
          (*v247)(*(v0 + 216), *(v0 + 200));

          v192 = v256;
          v122 = v259;
          v71 = v245;
        }

        else
        {
          v208 = *(v0 + 216);
          v209 = *(v0 + 200);

          (*v247)(v208, v209);
          v196 = _swiftEmptyArrayStorage;
        }

        v210 = v196[2];
        v193 = v261;
        v211 = v261[2];
        v212 = v211 + v210;
        if (__OFADD__(v211, v210))
        {
          goto LABEL_171;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v212 <= v261[3] >> 1)
        {
          if (!v196[2])
          {
            goto LABEL_136;
          }
        }

        else
        {
          if (v211 <= v212)
          {
            v214 = v211 + v210;
          }

          else
          {
            v214 = v211;
          }

          v193 = sub_100064F74(isUniquelyReferenced_nonNull_native, v214, 1, v261);
          if (!v196[2])
          {
LABEL_136:

            if (v210)
            {
              goto LABEL_172;
            }

            goto LABEL_137;
          }
        }

        if ((v193[3] >> 1) - v193[2] < v210)
        {
          goto LABEL_173;
        }

        v215 = *(v0 + 384);
        v216 = (*(v308 + 80) + 32) & ~*(v308 + 80);
        v217 = *(v308 + 72);
        swift_arrayInitWithCopy();

        if (v210)
        {
          v218 = v193[2];
          v189 = __OFADD__(v218, v210);
          v219 = v218 + v210;
          if (v189)
          {
            goto LABEL_174;
          }

          v193[2] = v219;
        }

LABEL_137:
        if (++v192 == v251)
        {
          goto LABEL_161;
        }
      }
    }

    v28 = 0;
    v29 = *(v0 + 320);
    v30 = *(v0 + 296);
    v274 = *(v0 + 112);
    v266 = *(v0 + 328);
    v271 = (*(v266 + 80) + 32) & ~*(v266 + 80);
    v263 = v27 + v271;
    v253 = (*(v0 + 280) + 8);
    v255 = *(v0 + 312) + 8;
    v31 = &_swiftEmptyDictionarySingleton;
    v292 = v30;
    v299 = _swiftEmptyArrayStorage;
    v258 = *(v0 + 496);
    v260 = v29;
LABEL_15:
    if (v28 >= *(v27 + 16))
    {
      goto LABEL_167;
    }

    v33 = *(v0 + 368);
    v34 = *(v0 + 312);
    v35 = *(v266 + 72);
    v278 = v28;
    sub_10002ED9C(v263 + v35 * v28, v33, type metadata accessor for AccessoryAndSceneEntity);
    v303 = v33 + *(v29 + 24);
    sub_10002ED9C(v303, v34, type metadata accessor for WidgetTileInfo);
    v36 = (v34 + v30[7]);
    v38 = *v36;
    v37 = v36[1];
    v39 = v37 ? *v36 : 0;
    v40 = v37 ? v36[1] : 0xE000000000000000;
    v282 = v39;
    v286 = v40;
    if (v274)
    {
      v41 = *(v0 + 288);
      v42 = *(v0 + 272);
      v43 = v31;
      v44 = *(v0 + 104);
      v45 = (*(v0 + 312) + v30[6]);
      v46 = *v45;
      v47 = v45[1];
      swift_bridgeObjectRetain_n();

      v30 = v292;
      sub_10009D484();
      v48 = sub_10009D474();
      v50 = v49;
      (*v253)(v41, v42);
      *(v0 + 16) = v48;
      *(v0 + 24) = v50;
      *(v0 + 32) = v44;
      v31 = v43;
      *(v0 + 40) = v274;
      sub_1000037A4();
      LOBYTE(v48) = sub_10009E964();
      v40 = v286;

      if ((v48 & 1) == 0)
      {
        v51 = *(v0 + 104);
        *(v0 + 48) = v282;
        *(v0 + 56) = v286;
        *(v0 + 64) = v51;
        *(v0 + 72) = v274;
        if ((sub_10009E964() & 1) == 0)
        {
          sub_10002EE04(*(v0 + 368), type metadata accessor for AccessoryAndSceneEntity);

          v27 = v258;
          v29 = v260;
          v32 = v278;
          goto LABEL_14;
        }
      }
    }

    else
    {
    }

    if (*(v255 + v30[15]) != 2)
    {
      break;
    }

    v52 = v299 + v271;
    v53 = -v299[2];
    v54 = -1;
    while (2)
    {
      if (v53 + v54 == -1)
      {
        sub_10002ED9C(*(v0 + 368), *(v0 + 352), type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v299 = sub_100064F9C(0, v299[2] + 1, 1, v299);
        }

        v27 = v258;
        v32 = v278;
        v30 = v292;
        v111 = v299[2];
        v110 = v299[3];
        if (v111 >= v110 >> 1)
        {
          v299 = sub_100064F9C(v110 > 1, v111 + 1, 1, v299);
        }

        v112 = *(v0 + 368);
        v113 = *(v0 + 352);
        v299[2] = v111 + 1;
        sub_10002EE74(v113, v299 + v271 + v111 * v35, type metadata accessor for AccessoryAndSceneEntity);
        sub_10002EE04(v112, type metadata accessor for AccessoryAndSceneEntity);
        v29 = v260;
        goto LABEL_14;
      }

      if (++v54 < v299[2])
      {
        v55 = *(v0 + 312);
        sub_10002ED9C(v52, *(v0 + 360), type metadata accessor for AccessoryAndSceneEntity);
        v56 = sub_10009CEE4();
        v58 = v57;
        v59 = sub_10009CEE4();
        v61 = *(v0 + 360);
        if (v56 != v59 || v58 != v60)
        {
          v52 += v35;
          v63 = sub_10009ED34();

          sub_10002EE04(v61, type metadata accessor for AccessoryAndSceneEntity);
          if (v63)
          {
            goto LABEL_99;
          }

          continue;
        }

        sub_10002EE04(v61, type metadata accessor for AccessoryAndSceneEntity);
LABEL_99:
        sub_10002EE04(*(v0 + 368), type metadata accessor for AccessoryAndSceneEntity);
        v27 = v258;
        v29 = v260;
        v32 = v278;
        v30 = v292;
LABEL_14:
        v28 = v32 + 1;
        sub_10002EE04(*(v0 + 312), type metadata accessor for WidgetTileInfo);
        if (v28 == v269)
        {
          goto LABEL_101;
        }

        goto LABEL_15;
      }

      break;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    swift_once();
  }

  v29 = v260;
  if (v31[2] && (v64 = sub_10001B558(v282, v40), (v65 & 1) != 0))
  {
    v66 = *(v31[7] + 8 * v64);

    v68 = _swiftEmptyArrayStorage;
    v313[0] = _swiftEmptyArrayStorage;
    if (v67)
    {
      sub_1000615E8(v67);
      v68 = v313[0];
    }

    v69 = v68[2];
    if (!v69)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v68 = _swiftEmptyArrayStorage;
    v313[0] = _swiftEmptyArrayStorage;
    v69 = _swiftEmptyArrayStorage[2];
    if (!v69)
    {
LABEL_87:
      sub_10002ED9C(*(v0 + 368), *(v0 + 336), type metadata accessor for AccessoryAndSceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100064F9C(0, v68[2] + 1, 1, v68);
      }

      v27 = v258;
      v32 = v278;
      v106 = v68[2];
      v105 = v68[3];
      v30 = v292;
      if (v106 >= v105 >> 1)
      {
        v68 = sub_100064F9C(v105 > 1, v106 + 1, 1, v68);
      }

      v107 = *(v0 + 336);
      v68[2] = v106 + 1;
      sub_10002EE74(v107, v68 + v271 + v106 * v35, type metadata accessor for AccessoryAndSceneEntity);
      goto LABEL_92;
    }
  }

  v70 = 0;
  v71 = (v68 + v271);
  while (2)
  {
    if (v70 < v68[2])
    {
      v72 = *(v0 + 368);
      sub_10002ED9C(v71, *(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      v73 = *(v0 + 368);
      v74 = *(v0 + 344);
      v75 = *(v260 + 20);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      v76 = *(v0 + 344) + *(v260 + 24);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      v77 = v292[6];
      v78 = *(v76 + v77);
      v79 = *(v76 + v77 + 8);
      v80 = (v303 + v77);
      v81 = v78 == *v80 && v79 == v80[1];
      if (!v81 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      v82 = v292[7];
      v83 = (v76 + v82);
      v84 = *(v76 + v82 + 8);
      v85 = (v303 + v82);
      v86 = v85[1];
      if (v84)
      {
        if (v86)
        {
          v87 = *v83 == *v85 && v84 == v86;
          if (v87 || (sub_10009ED34() & 1) != 0)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_46;
      }

      if (v86)
      {
        goto LABEL_46;
      }

LABEL_63:
      v88 = v292[8];
      v89 = *(v76 + v88);
      v90 = *(v76 + v88 + 8);
      v91 = (v303 + v88);
      if ((v89 != *v91 || v90 != v91[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      v92 = v292[9];
      v93 = *(v76 + v92);
      v94 = *(v76 + v92 + 8);
      v95 = (v303 + v92);
      if ((v93 != *v95 || v94 != v95[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      v96 = v292[12];
      v97 = *(v76 + v96);
      v98 = *(v303 + v96);
      if ((sub_10009E134() & 1) == 0 || *(v76 + v292[13]) != *(v303 + v292[13]))
      {
        goto LABEL_46;
      }

      v99 = v292[15];
      v100 = *(v76 + v99);
      v101 = *(v76 + v99 + 8);
      v102 = (v303 + v99);
      v103 = *v102;
      v104 = *(v102 + 8);
      if (v101 <= 1)
      {
        if (v101)
        {
          if (v104 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v104)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v101 != 2)
        {
          if (v101 != 3)
          {
            if (v104 == 4 && !v103)
            {
LABEL_86:
              sub_10002EE04(*(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
              v27 = v258;
              v32 = v278;
              v30 = v292;
LABEL_92:
              v108 = *(v0 + 368);
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v310 = v31;
              sub_10008BF90(v68, v282, v286, v109);

              v31 = v310;
              sub_10002EE04(v108, type metadata accessor for AccessoryAndSceneEntity);
              goto LABEL_14;
            }

            goto LABEL_46;
          }

          if (v104 == 3)
          {
            goto LABEL_85;
          }

LABEL_46:
          ++v70;
          sub_10002EE04(*(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
          v71 = (v71 + v35);
          if (v69 == v70)
          {
            goto LABEL_87;
          }

          continue;
        }

        if (v104 != 2)
        {
          goto LABEL_46;
        }
      }

LABEL_85:
      sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
      if (sub_10009E8E4())
      {
        goto LABEL_86;
      }

      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_161:
  v220 = *(v0 + 384);
  v221 = sub_10009E6B4();
  v223 = v222;

  v224 = sub_10002AD68(v221, v223, v313);

  *(v241 + 24) = v224;

  _os_log_impl(&_mh_execute_header, v71, v239, "%s Returning %ld entities: %s", v241, 0x20u);
  swift_arrayDestroy();

LABEL_162:
  v225 = *(v0 + 472);
  v226 = *(v0 + 480);
  v227 = *(v0 + 456);
  v228 = *(v0 + 448);
  v235 = *(v0 + 440);
  v236 = *(v0 + 424);
  v237 = *(v0 + 408);
  v238 = *(v0 + 400);
  v240 = *(v0 + 376);
  v242 = *(v0 + 368);
  v244 = *(v0 + 360);
  v246 = *(v0 + 352);
  v248 = *(v0 + 344);
  v250 = *(v0 + 336);
  v229 = *(v0 + 320);
  v252 = *(v0 + 312);
  v254 = *(v0 + 304);
  v257 = *(v0 + 288);
  v230 = *(v0 + 264);
  v262 = *(v0 + 256);
  v265 = *(v0 + 248);
  v268 = *(v0 + 240);
  v270 = *(v0 + 232);
  v273 = *(v0 + 224);
  v277 = *(v0 + 216);
  v231 = *(v0 + 200);
  v232 = *(v0 + 208);
  v280 = *(v0 + 192);
  v284 = *(v0 + 168);
  v290 = *(v0 + 160);
  v297 = *(v0 + 152);
  v301 = *(v0 + 144);
  v309 = *(v0 + 136);
  v233 = *(v0 + 88);
  (*(v0 + 464))(*(v0 + 432), 1, 1, *(v0 + 176));
  sub_10009CA74();
  (*(v232 + 8))(v230, v231);
  (*(v228 + 8))(v227, v235);

  v234 = *(v0 + 8);

  return v234();
}

uint64_t sub_100029690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for HomeEntity() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100029768, 0, 0);
}