uint64_t sub_100149B84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v5 = type metadata accessor for AnyValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100085D40(&qword_10059E048);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v78 - v13;
  v94 = type metadata accessor for SystemAppCache();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v88 = *(v16 - 8);
  v17 = *(v88 + 16);
  v90 = v15;
  v92 = a1;
  v89 = v16;
  v17(v15, a1);
  v117 = sub_1000EFF64(_swiftEmptyArrayStorage);
  v116 = sub_1000EF2AC(_swiftEmptyArrayStorage);
  sub_100085D40(&qword_10059E040);
  Dictionary.reserveCapacity(_:)(48);
  sub_100085D40(&qword_10059BDA0);
  Dictionary.reserveCapacity(_:)(48);
  v18 = *a2;
  v104 = a2[1];
  v19 = a2[3];
  v107 = a2[2];
  v103 = v19;
  v20 = a2[5];
  v106 = a2[4];
  v87 = v20;
  v21 = a2[7];
  v99 = a2[6];
  v86 = v21;
  v22 = a2[9];
  v98 = a2[8];
  v85 = v22;
  v23 = a2[11];
  v97 = a2[10];
  v83 = v23;
  v96 = a2[12];
  v91 = a2;
  sub_1000044A4(a2, &v113, &qword_10059E050);
  v24 = v18;
  v25 = 0;
  v100 = v6 + 16;
  v26 = (v6 + 56);
  v27 = (v6 + 48);
  v102 = (v6 + 32);
  v101 = v6;
  v28 = (v6 + 8);
  v105 = v18;
  while (2)
  {
    v29 = *(v24 + 16);
    while (1)
    {
      v30 = v108;
      if (v25 == v29)
      {
        v31 = 1;
        v25 = v29;
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v25 >= *(v24 + 16))
        {
          goto LABEL_40;
        }

        (*(v101 + 16))(v108, v24 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v25, v5);
        v31 = 0;
        ++v25;
      }

      (*v26)(v30, v31, 1, v5);
      sub_10009E1C4(v30, v12, &qword_10059E048);
      if ((*v27)(v12, 1, v5) == 1)
      {
        sub_100005518(v91, &qword_10059E050);
        v72 = *(v88 + 8);
        v73 = v89;
        v72(v92, v89);

        if (*(v117 + 16))
        {
          v74 = v94;
          v75 = v90;
          *&v90[*(v94 + 20)] = v117;
          *(v75 + *(v74 + 24)) = v116;
          v76 = v95;
          sub_10014BC68(v75, v95);
          (*(v93 + 56))(v76, 0, 1, v74);
          return sub_10014B854(v75);
        }

        else
        {

          v72(v90, v73);
          return (*(v93 + 56))(v95, 1, 1, v94);
        }
      }

      (*v102)(v8, v12, v5);
      v104(&v112, v8);
      (*v28)(v8, v5);
      v32 = v112;
      v109 = v112;
      if (v103(&v109))
      {
        break;
      }

      v24 = v105;
    }

    v109 = v32;
    v87(&v112, &v109);

    v86(&v109, &v112);

    v33 = v110;
    v34 = v111;
    v84 = v109;
    v113 = v109;
    v114 = v110;
    v115 = v111;
    if ((v85(&v113) & 1) == 0)
    {

LABEL_35:
      v24 = v105;
      continue;
    }

    break;
  }

  v113 = v84;
  v114 = v33;
  v115 = v34;
  v83(&v109, &v113);

  v36 = v109;
  v35 = v110;
  v84 = v111;
  v37 = v117;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = v37;
  v82 = v36;
  v39 = sub_1000EE808(v36, v35);
  v40 = *(v37 + 16);
  v41 = (v38 & 1) == 0;
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
    goto LABEL_41;
  }

  v43 = *(v37 + 24);
  v81 = v35;
  if (v43 >= v42)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v46 = v113;
      if ((v38 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v47 = v38;
      sub_1001B1E9C();
      v48 = v47;
      v46 = v113;
      if ((v48 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_20;
  }

  v79 = v38;
  sub_1001AFC7C(v42, isUniquelyReferenced_nonNull_native);
  v44 = sub_1000EE808(v82, v35);
  if ((v79 & 1) != (v45 & 1))
  {
    goto LABEL_46;
  }

  v39 = v44;
  v46 = v113;
  if (v79)
  {
LABEL_20:
    *(v46[7] + 8 * v39) = v84;
    goto LABEL_24;
  }

LABEL_22:
  v46[(v39 >> 6) + 8] |= 1 << v39;
  v49 = (v46[6] + 16 * v39);
  v50 = v81;
  *v49 = v82;
  v49[1] = v50;
  *(v46[7] + 8 * v39) = v84;
  v51 = v46[2];
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46[2] = v53;

LABEL_24:
  v117 = v46;
  v54 = v116;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v113 = v54;
  v56 = v84;
  v57 = sub_1000F2DCC(v84);
  v59 = v54[2];
  v60 = (v58 & 1) == 0;
  v52 = __OFADD__(v59, v60);
  v61 = v59 + v60;
  if (v52)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v54[3] >= v61)
  {
    if ((v55 & 1) == 0)
    {
      v66 = v57;
      v67 = v58;
      sub_1001B0CAC();
      v57 = v66;
      v63 = v113;
      if (v67)
      {
        goto LABEL_30;
      }

LABEL_32:
      v63[(v57 >> 6) + 8] |= 1 << v57;
      *(v63[6] + 8 * v57) = v84;
      v68 = (v63[7] + 16 * v57);
      v69 = v81;
      *v68 = v82;
      v68[1] = v69;
      v70 = v63[2];
      v52 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (!v52)
      {
        v63[2] = v71;
        goto LABEL_34;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_29:
    v63 = v113;
    if (v58)
    {
LABEL_30:
      v64 = (v63[7] + 16 * v57);
      v65 = v81;
      *v64 = v82;
      v64[1] = v65;

LABEL_34:
      v116 = v63;
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = v58;
  sub_1001AD680(v61, v55);
  v57 = sub_1000F2DCC(v56);
  v62 = v58 & 1;
  LOBYTE(v58) = isUniquelyReferenced_nonNull_native;
  if ((isUniquelyReferenced_nonNull_native & 1) == v62)
  {
    goto LABEL_29;
  }

LABEL_45:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10014A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SystemAppCache();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  v60 = sub_1000EFF64(_swiftEmptyArrayStorage);
  v59 = sub_1000EF2AC(_swiftEmptyArrayStorage);
  sub_100085D40(&qword_10059E040);
  Dictionary.reserveCapacity(_:)(48);
  sub_100085D40(&qword_10059BDA0);
  Dictionary.reserveCapacity(_:)(48);
  v56 = *(a2 + 16);
  if (!v56)
  {
LABEL_28:

    v45 = *(v11 + 8);
    v45(a1, v10);
    if (*(v60 + 16))
    {
      *&v9[*(v6 + 20)] = v60;
      *&v9[*(v6 + 24)] = v59;
      sub_10014BC68(v9, a3);
      (*(v7 + 56))(a3, 0, 1, v6);
      return sub_10014B854(v9);
    }

    else
    {

      v45(v9, v10);
      return (*(v7 + 56))(a3, 1, 1, v6);
    }
  }

  v48 = v11;
  v49 = v10;
  v50 = a1;
  v51 = v9;
  v52 = v7;
  v53 = v6;
  v54 = a3;
  v55 = a2;
  v12 = 0;
  v13 = v59;
  v14 = v60;
  v15 = (a2 + 48);
  while (v12 < *(a2 + 16))
  {
    v17 = *(v15 - 2);
    v18 = *(v15 - 1);
    v19 = *v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v17;
    v58 = v14;
    v22 = sub_1000EE808(v17, v18);
    v23 = v14[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_33;
    }

    v26 = v21;
    if (v14[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v58;
        if (v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1001B1E9C();
        v14 = v58;
        if (v26)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_1001AFC7C(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_1000EE808(v57, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_38;
      }

      v22 = v27;
      v14 = v58;
      if (v26)
      {
LABEL_13:
        *(v14[7] + 8 * v22) = v19;
        goto LABEL_17;
      }
    }

    v14[(v22 >> 6) + 8] |= 1 << v22;
    v29 = (v14[6] + 16 * v22);
    *v29 = v57;
    v29[1] = v18;
    *(v14[7] + 8 * v22) = v19;
    v30 = v14[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_35;
    }

    v14[2] = v32;

LABEL_17:
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v13;
    v34 = sub_1000F2DCC(v19);
    v36 = v13[2];
    v37 = (v35 & 1) == 0;
    v31 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v31)
    {
      goto LABEL_34;
    }

    v39 = v35;
    if (v13[3] < v38)
    {
      sub_1001AD680(v38, v33);
      v34 = sub_1000F2DCC(v19);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_37;
      }

LABEL_22:
      v13 = v58;
      if (v39)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

    if (v33)
    {
      goto LABEL_22;
    }

    v44 = v34;
    sub_1001B0CAC();
    v34 = v44;
    v13 = v58;
    if (v39)
    {
LABEL_3:
      v16 = (v13[7] + 16 * v34);
      *v16 = v57;
      v16[1] = v18;

      goto LABEL_4;
    }

LABEL_23:
    v13[(v34 >> 6) + 8] |= 1 << v34;
    *(v13[6] + 8 * v34) = v19;
    v41 = (v13[7] + 16 * v34);
    *v41 = v57;
    v41[1] = v18;
    v42 = v13[2];
    v31 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v31)
    {
      goto LABEL_36;
    }

    v13[2] = v43;
LABEL_4:
    ++v12;
    v15 += 3;
    a2 = v55;
    if (v56 == v12)
    {
      v59 = v13;
      v60 = v14;
      v6 = v53;
      a3 = v54;
      v9 = v51;
      v7 = v52;
      v10 = v49;
      a1 = v50;
      v11 = v48;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10014AA5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100085D40(&qword_10059E028);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_100085D40(&qword_10059E020);
  sub_1000A6360(v6, a2);
  v7 = sub_1000A5FBC(v6, a2);
  v8 = type metadata accessor for SystemAppCache();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  *v7 = 0;
  v9 = *(v6 + 28);
  v10 = sub_100085D40(&qword_10059E058);
  bzero(v7 + v9, *(*(v10 - 8) + 64));
  return sub_10009E1C4(v5, v7 + v9, &qword_10059E028);
}

uint64_t sub_10014ABA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a5;
  v78 = a4;
  v83 = a3;
  v92 = a2;
  v90 = a6;
  v72 = type metadata accessor for Logger();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100085D40(&qword_10059E028);
  v9 = __chkstk_darwin(v8 - 8);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - v12;
  v14 = __chkstk_darwin(v11);
  v87 = &v70 - v15;
  __chkstk_darwin(v14);
  v82 = &v70 - v16;
  v17 = type metadata accessor for SystemAppCache();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v73 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Date();
  v20 = *(v94 - 8);
  __chkstk_darwin(v94);
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100085D40(&qword_10059E030);
  __chkstk_darwin(v84);
  v23 = &v70 - v22;
  v24 = sub_100085D40(&qword_10059CB40);
  v25 = __chkstk_darwin(v24 - 8);
  v74 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v70 - v28;
  __chkstk_darwin(v27);
  v31 = &v70 - v30;
  v75 = v18;
  v32 = *(v18 + 48);
  v88 = v17;
  v85 = v32;
  v86 = v18 + 48;
  v33 = v32(a1, 1, v17);
  v89 = a1;
  v76 = v13;
  v91 = v23;
  if (v33)
  {
    v34 = *(v20 + 56);
    v34(v31, 1, 1, v94);
  }

  else
  {
    v35 = a1;
    v36 = v94;
    (*(v20 + 16))(v31, v35, v94);
    v34 = *(v20 + 56);
    v34(v31, 0, 1, v36);
  }

  sub_100005B60(v92, v92[3]);
  dispatch thunk of Bag.expiration.getter();
  v37 = v94;
  v34(v29, 0, 1, v94);
  v38 = *(v84 + 48);
  v39 = v91;
  sub_1000044A4(v31, v91, &qword_10059CB40);
  sub_1000044A4(v29, v39 + v38, &qword_10059CB40);
  v40 = v20;
  v41 = *(v20 + 48);
  if (v41(v39, 1, v37) != 1)
  {
    v46 = v74;
    sub_1000044A4(v39, v74, &qword_10059CB40);
    v42 = v39;
    if (v41(v39 + v38, 1, v94) != 1)
    {
      v51 = v39 + v38;
      v52 = v81;
      v53 = v94;
      (*(v40 + 32))(v81, v51, v94);
      sub_10014B984();
      v54 = v46;
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *(v40 + 8);
      v56(v52, v53);
      sub_100005518(v29, &qword_10059CB40);
      sub_100005518(v31, &qword_10059CB40);
      v56(v54, v53);
      sub_100005518(v91, &qword_10059CB40);
      v44 = v88;
      v43 = v89;
      v45 = v85;
      if (v55)
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_1000056D0(v92, v93);
      v47 = v83;
      v48 = v82;
      sub_100149260(v93, v47, v82);
      if (v45(v48, 1, v44) == 1)
      {
        sub_100005518(v48, &qword_10059E028);
      }

      else
      {
        v49 = v48;
        v50 = v73;
        sub_10014B920(v49, v73);
        sub_100005518(v43, &qword_10059E028);
        sub_10014B920(v50, v43);
        (*(v75 + 56))(v43, 0, 1, v44);
      }

      goto LABEL_14;
    }

    sub_100005518(v29, &qword_10059CB40);
    sub_100005518(v31, &qword_10059CB40);
    (*(v40 + 8))(v46, v94);
LABEL_9:
    sub_100005518(v42, &qword_10059E030);
    v44 = v88;
    v43 = v89;
    v45 = v85;
    goto LABEL_10;
  }

  sub_100005518(v29, &qword_10059CB40);
  sub_100005518(v31, &qword_10059CB40);
  v42 = v39;
  if (v41(v39 + v38, 1, v94) != 1)
  {
    goto LABEL_9;
  }

  sub_100005518(v39, &qword_10059CB40);
  v44 = v88;
  v43 = v89;
  v45 = v85;
LABEL_14:
  v57 = v87;
  sub_1000044A4(v43, v87, &qword_10059E028);
  v58 = v45(v57, 1, v44);
  v59 = sub_100005518(v57, &qword_10059E028);
  if (v58 == 1)
  {
    v60 = v78(v59);
    if (v60)
    {
      v61 = v60;

      v62 = v81;
      static Date.distantPast.getter();
      v63 = v76;
      sub_10014A568(v62, v61, v76);
    }

    else
    {
      v63 = v76;
      (*(v75 + 56))(v76, 1, 1, v44);
    }

    sub_10014B8B0(v63, v43);
    v64 = v79;
    sub_1000044A4(v43, v79, &qword_10059E028);
    v65 = v45(v64, 1, v44);
    sub_100005518(v64, &qword_10059E028);
    if (v65 != 1)
    {
      static Logger.bag.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Populated system app cache from default value", v68, 2u);
      }

      (*(v71 + 8))(v80, v72);
    }
  }

  return sub_1000044A4(v43, v90, &qword_10059E028);
}

uint64_t sub_10014B54C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014B560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    v4 = a1[2];
    *a2 = *a1;
    a2[1] = result;
    a2[2] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014B584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, os_unfair_lock_s *a7, uint64_t a8, uint64_t a9)
{
  v30 = a1;
  v31 = a2;
  v15 = sub_100085D40(&qword_10059E028);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v32[3] = a8;
  v32[4] = a9;
  v21 = sub_100005F38(v32);
  (*(*(a8 - 8) + 16))(v21, a3, a8);
  os_unfair_lock_lock(a7);
  v22 = sub_100085D40(&qword_10059E020);
  sub_10014ABA0(a7 + *(v22 + 28), v32, a4, a5, a6, v20);
  os_unfair_lock_unlock(a7);
  sub_1000044A4(v20, v18, &qword_10059E028);
  v23 = type metadata accessor for SystemAppCache();
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    sub_100005518(v20, &qword_10059E028);
    v24 = v18;
LABEL_7:
    sub_100005518(v24, &qword_10059E028);
    v28 = 0;
    goto LABEL_8;
  }

  v25 = *&v18[*(v23 + 20)];

  sub_10014B854(v18);
  if (!*(v25 + 16) || (v26 = sub_1000EE808(v30, v31), (v27 & 1) == 0))
  {

    v24 = v20;
    goto LABEL_7;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  sub_100005518(v20, &qword_10059E028);

LABEL_8:
  sub_100005A00(v32);
  return v28;
}

uint64_t type metadata accessor for SystemAppCache()
{
  result = qword_10059E0B8;
  if (!qword_10059E0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014B854(uint64_t a1)
{
  v2 = type metadata accessor for SystemAppCache();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014B8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059E028);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014B920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemAppCache();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014B984()
{
  result = qword_10059E038;
  if (!qword_10059E038)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059E038);
  }

  return result;
}

uint64_t sub_10014B9DC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, os_unfair_lock_s *a6, uint64_t a7, uint64_t a8)
{
  v31 = a1;
  v15 = sub_100085D40(&qword_10059E028);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v32[3] = a7;
  v32[4] = a8;
  v21 = sub_100005F38(v32);
  (*(*(a7 - 8) + 16))(v21, a2, a7);
  os_unfair_lock_lock(a6);
  v22 = sub_100085D40(&qword_10059E020);
  sub_10014ABA0(a6 + *(v22 + 28), v32, a3, a4, a5, v20);
  os_unfair_lock_unlock(a6);
  sub_1000044A4(v20, v18, &qword_10059E028);
  v23 = type metadata accessor for SystemAppCache();
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    sub_100005518(v20, &qword_10059E028);
    v24 = v18;
LABEL_7:
    sub_100005518(v24, &qword_10059E028);
    v28 = 0;
    goto LABEL_8;
  }

  v25 = *&v18[*(v23 + 24)];

  sub_10014B854(v18);
  if (!*(v25 + 16) || (v26 = sub_1000F2DCC(v31), (v27 & 1) == 0))
  {

    v24 = v20;
    goto LABEL_7;
  }

  v28 = *(*(v25 + 56) + 16 * v26);

  sub_100005518(v20, &qword_10059E028);

LABEL_8:
  sub_100005A00(v32);
  return v28;
}

uint64_t sub_10014BC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemAppCache();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10014BCF4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10014BDD0(319, &qword_10059E0C8);
    if (v1 <= 0x3F)
    {
      sub_10014BDD0(319, &unk_10059E0D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10014BDD0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Dictionary();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10014BE24()
{
  v0 = objc_opt_self();

  v1 = String._bridgeToObjectiveC()();

  sub_1003205AC(v0, v1);

  return swift_deallocClassInstance();
}

uint64_t sub_10014BF30()
{
  type metadata accessor for GlobalState();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = &_swiftEmptySetSingleton;
  qword_10059E1A8 = v0;
  return result;
}

id sub_10014BF7C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1000056D0(a1 + OBJC_IVAR___Bag_bag, v9);
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  objc_opt_self();
  v3 = sub_1003C27BC();
  v4 = objc_allocWithZone(ObjectType);
  sub_1000056D0(v10, &v4[OBJC_IVAR____TtC9appstored19AppDownloadDoneTask_bag]);
  *&v4[OBJC_IVAR____TtC9appstored19AppDownloadDoneTask_store] = v3;
  v8.receiver = v4;
  v8.super_class = ObjectType;
  v5 = v3;
  v6 = objc_msgSendSuper2(&v8, "init");

  sub_100005A00(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_10014C0E0()
{
  v1[4] = v0;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10014C1D8, 0, 0);
}

uint64_t sub_10014C1D8()
{
  v0[1].opaque[0] = 0;
  v0[1].opaque[1] = 0;
  if (qword_10059B568 != -1)
  {
    swift_once();
  }

  v1 = v0[2].opaque[0];
  v2 = _os_activity_create(&_mh_execute_header, "appstored/AppDownloadDoneTask", qword_10059E1B0, OS_ACTIVITY_FLAG_DEFAULT);
  v0[4].opaque[1] = v2;
  os_activity_scope_enter(v2, v0 + 1);
  v3 = *(v1 + OBJC_IVAR____TtC9appstored19AppDownloadDoneTask_store);
  v4 = swift_task_alloc();
  v0[5].opaque[0] = v4;
  *v4 = v0;
  v4[1] = sub_10014C314;

  return sub_10014C784(v3);
}

uint64_t sub_10014C314()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10014C5B0;
  }

  else
  {
    v2 = sub_10014C454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014C454()
{
  static Logger.appInstall.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AppDownloadDoneTask completed successfully", v3, 2u);
  }

  v4 = v0[4].opaque[0];
  v5 = v0[3].opaque[0];
  v6 = v0[2].opaque[1];

  (*(v5 + 8))(v4, v6);
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();

  v7 = v0->opaque[1];

  return v7();
}

uint64_t sub_10014C5B0()
{
  static Logger.appInstall.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "AppDownloadDoneTask ended in error: %{public}@", v3, 0xCu);
    sub_100005518(v4, &unk_10059C250);
  }

  v7 = v0[3].opaque[0];
  v6 = v0[3].opaque[1];
  v8 = v0[2].opaque[1];

  (*(v7 + 8))(v6, v8);
  swift_willThrow();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();

  v9 = v0->opaque[1];

  return v9();
}

uint64_t sub_10014C784(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_10014C8C0;

  return (sub_1001BA6D0)(sub_10014D3B4, 0);
}

uint64_t sub_10014C8C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10014CA18, 0, 0);
  }
}

uint64_t sub_10014CA18()
{
  if (*(v0[15] + 16))
  {
    if (qword_10059B560 != -1)
    {
      swift_once();
    }

    v1 = qword_10059E1A8;
    v0[16] = qword_10059E1A8;

    return _swift_task_switch(sub_10014CBB4, v1, 0);
  }

  else
  {

    static Logger.appInstall.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No work to do", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10014CBB4()
{
  *(v0 + 136) = sub_1001509D8(*(v0 + 120));

  return _swift_task_switch(sub_10014CC2C, 0, 0);
}

uint64_t sub_10014CC2C()
{
  v1 = *(v0 + 136);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    sub_100085D40(&unk_10059DCD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100436510;
    *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 40) = v6;
    *(v5 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 56) = v7;
    *(v5 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 72) = v8;
    *(v5 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 88) = v9;
    *(v5 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v5 + 104) = v10;
    sub_1000056D0(v2 + OBJC_IVAR____TtC9appstored19AppDownloadDoneTask_bag, v0 + 16);
    v11 = swift_allocObject();
    *(v0 + 144) = v11;
    v11[2] = v4;
    v11[3] = v5;
    sub_1000056B8((v0 + 16), (v11 + 4));
    v11[9] = v3;
    v12 = swift_allocObject();
    *(v0 + 152) = v12;
    *(v12 + 16) = v4;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    v13[2] = v1;
    v13[3] = sub_100150F58;
    v13[4] = v11;
    v13[5] = &unk_100437978;
    v13[6] = v12;
    v14 = v4;
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_10014CF50;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v15, &type metadata for Int64, &type metadata for () + 8, 0, 0, &unk_100437988, v13, &type metadata for Int64);
  }

  else
  {

    static Logger.appInstall.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No work to do", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10014CF50()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10014D08C, 0, 0);
  }
}

uint64_t sub_10014D0A8()
{
  sub_100150B24(*(v0 + 136));

  return _swift_task_switch(sub_10014D11C, 0, 0);
}

uint64_t sub_10014D11C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014D30C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_10014C0E0();
}

uint64_t sub_10014D3B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  sub_10009FAD4(0, &qword_10059E2D0);
  v4 = [objc_allocWithZone(SQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata()];
  v5 = [a1 connection];
  v6 = [objc_allocWithZone(SQLiteQuery) initOnConnection:v5 descriptor:v4];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100152604;
  *(v8 + 24) = v7;
  v11[4] = sub_10015260C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10014BEFC;
  v11[3] = &unk_10050FEE0;
  v9 = _Block_copy(v11);

  [v6 enumeratePersistentIDsUsingBlock:v9];

  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_1001AC928(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    *a4 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1001AC928((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
    *a4 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = a1;
  return result;
}

void *sub_10014D660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000056D0(a4, v12);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  sub_1000056B8(v12, (v9 + 5));
  v9[10] = a5;
  v10 = a2;

  return &unk_1004379D8;
}

uint64_t sub_10014D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = type metadata accessor for Logger();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v6 = sub_100085D40(&qword_10059BD40);
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10014D84C, 0, 0);
}

uint64_t sub_10014D84C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = swift_allocObject();
  v0[40] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10014D940;

  return sub_1001BAA24(sub_100151464, v3);
}

uint64_t sub_10014D940(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_10014E2C0;
  }

  else
  {

    *(v4 + 344) = a1;
    v5 = sub_10014DA70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10014DA70()
{
  v1 = sub_100180184(v0[43]);
  v0[44] = v1;

  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_10014DB20;
  v3 = v0[31];

  return sub_100151480(v1, v3);
}

uint64_t sub_10014DB20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_10014E088;
  }

  else
  {

    v4 = sub_10014DC3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10014DC3C()
{
  v1 = v0[46];
  if (v1)
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = v0[37];
    v5 = [objc_opt_self() defaultSession];
    v6 = [v5 dataTaskPromiseWithRequestPromise:v1];
    v0[48] = v6;

    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_10014DF78;
    swift_continuation_init();
    v0[17] = v4;
    v7 = sub_100005F38(v0 + 14);
    sub_10009FAD4(0, &qword_10059BD48);
    v0[49] = sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v7, v2, v4);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10018C224;
    v0[13] = &unk_10050FE68;
    [v6 resultWithTimeout:60.0 completion:?];
    (*(v3 + 8))(v7, v4);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    static Logger.appInstall.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[29];
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to create request for pid=%lld", v11, 0xCu);
    }

    v12 = v0[35];
    v13 = v0[32];
    v14 = v0[33];

    (*(v14 + 8))(v12, v13);

    v15 = v0[1];
    v16 = v0[29];

    return v15(v16);
  }
}

uint64_t sub_10014DF78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_10014E354;
  }

  else
  {
    v2 = sub_10014E11C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014E088()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014E11C()
{
  v1 = *(v0 + 176);

  if ([v1 responseStatusCode] > 399)
  {
    static Logger.appInstall.getter();
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 368);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = [v3 responseStatusCode];

      _os_log_impl(&_mh_execute_header, v4, v5, "Received HTTP %ld; deleting from queue", v8, 0xCu);
    }

    else
    {

      v3 = v7;
    }

    (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));
  }

  else
  {
    v2 = *(v0 + 368);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 232);

  return v9(v10);
}

uint64_t sub_10014E2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014E354()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  swift_willThrow();

  *(v0 + 184) = v1;
  swift_errorRetain();
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 192);
    type metadata accessor for Code(0);
    *(v0 + 200) = 305;
    sub_1001525BC(&qword_10059BA68, type metadata accessor for Code);
    v4 = v3;
    v5 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v5)
    {
      *(v0 + 208) = v4;
      sub_1001525BC(&qword_10059BA40, type metadata accessor for AMSError);
      v6 = _BridgedStoredNSError.userInfo.getter();
      if (!*(v6 + 16) || (v7 = sub_1000EE808(0xD000000000000012, 0x8000000100451240), (v8 & 1) == 0))
      {
        v15 = *(v0 + 368);

        goto LABEL_12;
      }

      sub_10009F6D0(*(v6 + 56) + 32 * v7, v0 + 144);

      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 216) == 1010)
      {

        static Logger.appInstall.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 232);
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v9, v10, "Invalid URL for pid=%lld: ", v12, 0xCu);

          v13 = v4;
        }

        else
        {
          v13 = v9;
          v9 = v4;
        }

        v18 = *(v0 + 368);
        v20 = *(v0 + 264);
        v19 = *(v0 + 272);
        v21 = *(v0 + 256);

        (*(v20 + 8))(v19, v21);

        v22 = *(v0 + 8);
        v23 = *(v0 + 232);

        return v22(v23);
      }
    }

    v14 = *(v0 + 368);
  }

  else
  {
  }

LABEL_12:

  v16 = *(v0 + 8);

  return v16();
}

void sub_10014E6F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = [a1 connection];
  v8 = [objc_allocWithZone(AppDoneEntity) initWithPersistentID:a2 onConnection:v7];

  sub_1000E0F24(a3);
  v9 = objc_allocWithZone(SQLiteMemoryEntity);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithDatabaseEntity:v8 properties:isa];

  v12 = sub_1001FBB74(v11);
  sub_100085D40(&qword_10059C510);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a4 = v13;
}

uint64_t sub_10014E828(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10014E904, 0, 0);
}

uint64_t sub_10014E904()
{
  v1 = *(v0 + 104);
  if (v1 == 255)
  {
    static Logger.appInstall.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 72);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No more results", v17, 2u);
    }

    (*(v16 + 8))(v14, v15);
    goto LABEL_15;
  }

  if (v1)
  {
    v2 = *(v0 + 24);
    *(v0 + 16) = v2;
    sub_100151278(v2, v1);
    sub_100007CE8(v2, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
    static Logger.appInstall.getter();
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 104);
    v7 = *(v0 + 24);
    if (v5)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error sending songDownloadDone: %{public}@", v8, 0xCu);
      sub_100005518(v9, &unk_10059C250);

      sub_100007CF4(v7, v6);
    }

    else
    {
      sub_100007CF4(*(v0 + 24), *(v0 + 104));
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
LABEL_15:

    v29 = *(v0 + 8);

    return v29();
  }

  static Logger.appInstall.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 24);
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v18, v19, "songDownloadDone successfully processed for pid=%lld", v21, 0xCu);
  }

  v22 = *(v0 + 64);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = *(v0 + 24);

  (*(v24 + 8))(v22, v23);
  v26 = swift_allocObject();
  *(v0 + 80) = v26;
  *(v26 + 16) = v25;
  v27 = swift_task_alloc();
  *(v0 + 88) = v27;
  *v27 = v0;
  v27[1] = sub_10014ED1C;

  return sub_1000D9C90(sub_1000D9C90, sub_100151290, v26);
}

uint64_t sub_10014ED1C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10014EEAC;
  }

  else
  {

    v2 = sub_10014EE38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014EE38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014EEAC()
{

  static Logger.appInstall.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  v5 = *(v0 + 24);
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error sending songDownloadDone: %{public}@", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);

    sub_100007CF4(v5, v4);
  }

  else
  {
    sub_100007CF4(*(v0 + 24), *(v0 + 104));
  }

  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v9 = *(v0 + 8);

  return v9();
}

void sub_10014F074(void *a1, uint64_t a2)
{
  v3 = [a1 connection];
  v4 = [objc_allocWithZone(AppDoneEntity) initWithPersistentID:a2 onConnection:v3];

  [v4 deleteFromDatabase];
}

uint64_t sub_10014F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v8 = type metadata accessor for Logger();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  sub_100085D40(&qword_10059C3E0);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014F21C, 0, 0);
}

uint64_t sub_10014F21C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v35 = *(v2 + 168);
  do
  {
    v6 = *(v35 + 16);
    if (v3 == v6)
    {
      goto LABEL_14;
    }

    if (v3 >= v6)
    {
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(v2 + 248);
    v7 = *(v2 + 256);
    v9 = *(v2 + 176);
    v10 = *(v35 + 32 + 8 * v3);
    v11 = type metadata accessor for TaskPriority();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v7, 1, 1, v11);
    v13 = v9(v10);
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v15;
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    v17[4] = &unk_100437998;
    v17[5] = v16;
    sub_1000044A4(v7, v8, &qword_10059C3E0);
    v19 = (*(v12 + 48))(v8, 1, v11);
    v20 = *(v2 + 248);
    if (v19 == 1)
    {
      sub_100005518(*(v2 + 248), &qword_10059C3E0);
      if (*v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v12 + 8))(v20, v11);
      if (*v18)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_11:
    v24 = **(v2 + 160);

    if (v23 | v21)
    {
      v4 = v2 + 16;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = v21;
      *(v2 + 40) = v23;
    }

    else
    {
      v4 = 0;
    }

    ++v3;
    v5 = *(v2 + 256);
    *(v2 + 80) = 1;
    *(v2 + 88) = v4;
    *(v2 + 96) = v24;
    swift_task_create();

    a1 = sub_100005518(v5, &qword_10059C3E0);
  }

  while (v3 != 12);
  v25 = *(v35 + 16);
  *(v2 + 264) = v25;
  if (v25 != 12)
  {
    if (v25 >= 0xD)
    {
      *(v2 + 272) = *(*(v2 + 168) + 128);
      *(v2 + 280) = 13;
      static Logger.appInstall.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Waiting for next result", v29, 2u);
      }

      v31 = *(v2 + 216);
      v30 = *(v2 + 224);
      v32 = *(v2 + 208);

      (*(v31 + 8))(v30, v32);
      v33 = swift_task_alloc();
      *(v2 + 288) = v33;
      a2 = sub_100085D40(&qword_10059E2C0);
      *v33 = v2;
      v33[1] = sub_10014F6B4;
      a1 = v2 + 128;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return ThrowingTaskGroup.nextResult()(a1, a2);
  }

LABEL_14:
  *(v2 + 320) = *(v2 + 192);
  v26 = swift_task_alloc();
  *(v2 + 328) = v26;
  a2 = sub_100085D40(&qword_10059E2C0);
  *v26 = v2;
  v26[1] = sub_10014FF10;
  a1 = v2 + 144;
LABEL_19:

  return ThrowingTaskGroup.nextResult()(a1, a2);
}

uint64_t sub_10014F6B4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_10014FEF4;
  }

  else
  {
    *(v2 + 304) = *(v2 + 128);
    *(v2 + 137) = *(v2 + 136);
    v3 = sub_10014F7D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014F7D8()
{
  v1 = *(v0 + 137);
  if (v1 == 255)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = *(v0 + 192);
    sub_100007CE8(*(v0 + 304), v1 & 1);
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 312) = v3;
    *v3 = v0;
    v3[1] = sub_10014F960;
    v4 = *(v0 + 304);
    v5 = *(v0 + 137);

    return v8(v4, v5);
  }
}

uint64_t sub_10014F960()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 137);

  sub_100007CF4(v1, v2);

  return _swift_task_switch(sub_10014FA80, 0, 0);
}

uint64_t sub_10014FA80()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 176);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = v4(v1);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v10[5] = v9;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004379B8;
  v11[5] = v10;
  sub_1000044A4(v3, v2, &qword_10059C3E0);
  v12 = (*(v6 + 48))(v2, 1, v5);
  v13 = *(v0 + 232);
  if (v12 == 1)
  {
    sub_100005518(*(v0 + 232), &qword_10059C3E0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v6 + 8))(v13, v5);
    if (v11[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  v17 = **(v0 + 160);

  if (v15 | v14)
  {
    v18 = v0 + 48;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v14;
    *(v0 + 72) = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 304);
  v20 = *(v0 + 280);
  v21 = *(v0 + 264);
  v22 = *(v0 + 240);
  *(v0 + 104) = 1;
  *(v0 + 112) = v18;
  *(v0 + 120) = v17;
  v23 = *(v0 + 137);
  swift_task_create();

  sub_100007CF4(v19, v23);
  v24 = sub_100005518(v22, &qword_10059C3E0);
  if (v20 != v21)
  {
    v27 = *(v0 + 280);
    if (v27 >= *(v0 + 264))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 272) = *(*(v0 + 168) + 8 * v27 + 32);
      *(v0 + 280) = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        static Logger.appInstall.getter();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Waiting for next result", v30, 2u);
        }

        v32 = *(v0 + 216);
        v31 = *(v0 + 224);
        v33 = *(v0 + 208);

        (*(v32 + 8))(v31, v33);
        v34 = swift_task_alloc();
        *(v0 + 288) = v34;
        v25 = sub_100085D40(&qword_10059E2C0);
        *v34 = v0;
        v34[1] = sub_10014F6B4;
        v24 = v0 + 128;
        goto LABEL_16;
      }
    }

    __break(1u);
    return ThrowingTaskGroup.nextResult()(v24, v25);
  }

  *(v0 + 320) = *(v0 + 192);
  v26 = swift_task_alloc();
  *(v0 + 328) = v26;
  v25 = sub_100085D40(&qword_10059E2C0);
  *v26 = v0;
  v26[1] = sub_10014FF10;
  v24 = v0 + 144;
LABEL_16:

  return ThrowingTaskGroup.nextResult()(v24, v25);
}

uint64_t sub_10014FF10()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_10015039C;
  }

  else
  {
    *(v2 + 344) = *(v2 + 144);
    *(v2 + 138) = *(v2 + 152);
    v3 = sub_100150034;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100150034()
{
  v1 = *(v0 + 138);
  if (v1 == 255)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = *(v0 + 320);
    sub_100007CE8(*(v0 + 344), v1 & 1);
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 352) = v3;
    *v3 = v0;
    v3[1] = sub_1001501BC;
    v4 = *(v0 + 344);
    v5 = *(v0 + 138);

    return v8(v4, v5);
  }
}

uint64_t sub_1001501BC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 138);

  sub_100007CF4(v1, v2);

  return _swift_task_switch(sub_1001502DC, 0, 0);
}

uint64_t sub_1001502DC()
{
  sub_100007CF4(*(v0 + 344), *(v0 + 138));
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  v2 = sub_100085D40(&qword_10059E2C0);
  *v1 = v0;
  v1[1] = sub_10014FF10;

  return ThrowingTaskGroup.nextResult()(v0 + 144, v2);
}

uint64_t sub_1001503B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1001504A0;

  return v6();
}

uint64_t sub_1001504A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1001505A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10015068C;

  return v7();
}

uint64_t sub_10015068C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10015079C(void *a1)
{
  v2 = type metadata accessor for MediaAccount();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  MediaAccount.init(account:)();
  dispatch thunk of Bag.subscript.getter();
  return (*(v3 + 8))(v5, v2);
}

void *sub_1001509D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v7 = *v2++;
    v6 = v7;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_beginAccess();
    v8 = sub_100175500(&v11, v6);
    swift_endAccess();
    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001748C4(0, v3[2] + 1, 1);
        v3 = v12;
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        sub_1001748C4((v4 > 1), v5 + 1, 1);
        v3 = v12;
      }

      v3[2] = v5 + 1;
      v3[v5 + 4] = v6;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100150B24(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (*(*(v2 + 112) + 16))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        sub_100150C38(v6);
        --v4;
      }

      while (v4);
    }
  }

  return swift_endAccess();
}

uint64_t sub_100150BA0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100150BFC()
{
  qword_10059E1B0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_100150C38(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001766AC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_100150D28(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_100150D28(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100150EAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_10014D30C(v2, v3);
}

uint64_t sub_100150F68(uint64_t a1, char a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100085384;

  return sub_10014E828(a1, a2, v6);
}

uint64_t sub_100151014(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100085384;

  return sub_10014F0F8(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1001510EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10015264C;

  return sub_1001503B8(v2, v3, v4);
}

uint64_t sub_1001511AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_1001505A0(a1, v4, v5, v6);
}

uint64_t sub_100151278(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100007CE8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1001512AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100151368;

  return sub_10014D708(v2, v3, v4, (v0 + 5));
}

uint64_t sub_100151368(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100151480(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for URLQueryItem();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  sub_100085D40(&qword_10059E2C8);
  v2[36] = swift_task_alloc();
  v5 = type metadata accessor for URLComponents();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  sub_100085D40(&qword_10059CE90);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return _swift_task_switch(sub_10015170C, 0, 0);
}

unint64_t sub_10015170C()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v1[3];
  v3 = v1[4];
  sub_100005B60(v1, v4);
  v5 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:{sub_1000C4BB0(v4, v3)}];
  swift_unknownObjectRelease();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v8 = sub_1000EE808(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_10009F6D0(*(v0[27] + 56) + 32 * v8, (v0 + 2));
      sub_10009FAD4(0, &qword_10059CBB0);
      if (swift_dynamicCast())
      {
        v11 = v0[26];
        v12 = [objc_opt_self() ams_sharedAccountStore];
        v13 = [v12 ams_iTunesAccountWithDSID:v11];

        [v5 setAccount:v13];
      }
    }
  }

  else
  {
  }

  [v5 setDialogOptions:1];
  v149 = sub_1000EFC58(_swiftEmptyArrayStorage);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v16 = sub_1000EE808(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_10009F6D0(*(v0[27] + 56) + 32 * v16, (v0 + 6));
      if (swift_dynamicCast())
      {
        if (v0[49])
        {
          v19 = [objc_opt_self() serialNumber];
          if (v19)
          {
            v20 = v19;
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;
          }

          else
          {
            v21 = 0;
            v23 = 0;
          }

          sub_1001AAAC0(v21, v23, 0x754E6C6169726573, 0xEC0000007265626DLL);
        }
      }
    }
  }

  else
  {
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_20;
  }

  v26 = sub_1000EE808(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_20:
    (*(v0[45] + 56))(v0[43], 1, 1, v0[44]);
LABEL_21:
    sub_100005518(v0[43], &qword_10059CE90);
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v2 + 16))
    {
      v42 = sub_1000EE808(v40, v41);
      v44 = v43;

      if ((v44 & 1) == 0 || (v45 = v0[27], sub_10009F6D0(*(v45 + 56) + 32 * v42, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
      {
LABEL_32:

LABEL_34:

LABEL_35:
        v146 = 0;
LABEL_36:

        v58 = v0[1];

        return v58(v146);
      }

      v46 = v0[24];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v2 + 16))
      {
        v49 = sub_1000EE808(v47, v48);
        v51 = v50;

        if (v51)
        {
          sub_10009F6D0(*(v45 + 56) + 32 * v49, (v0 + 18));
          if (swift_dynamicCast())
          {
            v53 = v0[22];
            v52 = v0[23];
            v54 = v0;
            v55 = HIBYTE(v52) & 0xF;
            if ((v52 & 0x2000000000000000) == 0)
            {
              v55 = v53 & 0xFFFFFFFFFFFFLL;
            }

            if (v55)
            {
              v56 = [v5 account];
              if (v56)
              {
                v57 = v56;
                sub_100005B60(v0[28], v1[3]);
                sub_10015079C(v57);
              }

              else
              {
                v148 = v53;
                static Logger.appInstall.getter();
                v107 = Logger.logObject.getter();
                v108 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  *v109 = 0;
                  _os_log_impl(&_mh_execute_header, v107, v108, "Using active iTunes account for songDownloadDone URL", v109, 2u);
                }

                v110 = v0[32];
                v111 = v0[29];
                v112 = v0[30];
                v113 = v54[28];

                (*(v112 + 8))(v110, v111);
                sub_100005B60(v113, v1[3]);
                dispatch thunk of Bag.subscript.getter();
                v53 = v148;
              }

              v114 = v54[44];
              v115 = v54[45];
              v116 = v54[40];
              sub_1000044A4(v54[41], v116, &qword_10059CE90);
              if ((*(v115 + 48))(v116, 1, v114) == 1)
              {
                v117 = v54[40];

                sub_100005518(v117, &qword_10059CE90);
                static Logger.appInstall.getter();
                v118 = Logger.logObject.getter();
                v119 = static os_log_type_t.error.getter();
                v120 = os_log_type_enabled(v118, v119);
                v37 = v54[41];
                v122 = v54[30];
                v121 = v54[31];
                v123 = v54[29];
                v0 = v54;
                if (v120)
                {
                  v124 = swift_slowAlloc();
                  *v124 = 0;
                  _os_log_impl(&_mh_execute_header, v118, v119, "songDownloadDone URL missing from bag", v124, 2u);
                }

                (*(v122 + 8))(v121, v123);
                v38 = &qword_10059CE90;
                goto LABEL_18;
              }

              v125 = v54[45];
              v126 = v54[46];
              v127 = v54[44];
              v145 = v54[41];
              (*(v125 + 32))(v126, v54[40], v127);
              v54[25] = v46;
              v128 = dispatch thunk of CustomStringConvertible.description.getter();
              v130 = v129;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1001B4590(v128, v130, 0x6449676E6F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
              v132 = swift_isUniquelyReferenced_nonNull_native();
              sub_1001B4590(v53, v52, 0x64616F6C6E776F64, 0xEB0000000064692DLL, v132);
              URL._bridgeToObjectiveC()(v133);
              v135 = v134;
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v146 = [v5 requestWithMethod:2 URL:v135 parameters:isa];

              (*(v125 + 8))(v126, v127);
              sub_100005518(v145, &qword_10059CE90);
            }

            else
            {

              v146 = 0;
            }

            v0 = v54;
            goto LABEL_36;
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_34;
  }

  v29 = v0[44];
  v30 = v0[45];
  v31 = v0[43];
  sub_10009F6D0(*(v0[27] + 56) + 32 * v26, (v0 + 10));
  v32 = swift_dynamicCast();
  (*(v30 + 56))(v31, v32 ^ 1u, 1, v29);
  v33 = *(v30 + 48);
  if (v33(v31, 1, v29) == 1)
  {
    goto LABEL_21;
  }

  v138 = v33;
  v34 = v0[37];
  v35 = v0[38];
  v36 = v0[36];
  v137 = *(v0[45] + 32);
  v137(v0[48], v0[43], v0[44]);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    v37 = v0[36];
    (*(v0[45] + 8))(v0[48], v0[44]);

    v38 = &unk_10059E2C8;
LABEL_18:
    v39 = v37;
LABEL_64:
    sub_100005518(v39, v38);
    goto LABEL_35;
  }

  (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    result = _swiftEmptyArrayStorage;
  }

  v143 = *(result + 16);
  if (!v143)
  {
LABEL_62:
    v87 = v0[44];
    v88 = v0[42];

    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v89 = v138(v88, 1, v87);
    v90 = v0[48];
    if (v89 != 1)
    {
      v97 = v0[47];
      v98 = v0[44];
      v99 = v0[45];
      v100 = v5;
      v101 = v0[38];
      v142 = v0[37];
      v144 = v0[39];
      v137(v97, v0[42], v98);
      URL._bridgeToObjectiveC()(v102);
      v104 = v103;
      v105 = Dictionary._bridgeToObjectiveC()().super.isa;

      v146 = [v100 requestWithMethod:2 URL:v104 parameters:v105];

      v106 = *(v99 + 8);
      v106(v97, v98);
      (*(v101 + 8))(v144, v142);
      v106(v90, v98);
      goto LABEL_36;
    }

    v91 = v0[44];
    v92 = v0[45];
    v93 = v0[42];
    v95 = v0[38];
    v94 = v0[39];
    v96 = v0[37];

    (*(v95 + 8))(v94, v96);
    (*(v92 + 8))(v90, v91);

    v38 = &qword_10059CE90;
    v39 = v93;
    goto LABEL_64;
  }

  v60 = 0;
  v140 = result + ((*(v0[34] + 80) + 32) & ~*(v0[34] + 80));
  v141 = v0[34];
  v139 = result;
  while (1)
  {
    if (v60 >= *(result + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return result;
    }

    v63 = v5;
    v64 = v0[35];
    v65 = v0[33];
    (*(v141 + 16))(v64, v140 + *(v141 + 72) * v60, v65);
    v66 = URLQueryItem.name.getter();
    v68 = v67;
    v147 = URLQueryItem.value.getter();
    v70 = v69;
    (*(v141 + 8))(v64, v65);
    if (!v70)
    {
      v79 = sub_1000EE808(v66, v68);
      v81 = v80;

      if (v81)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1001B2004();
        }

        sub_1001B3234(v79, v149);
      }

      goto LABEL_45;
    }

    v71 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1000EE808(v66, v68);
    v73 = v149[2];
    v74 = (v72 & 1) == 0;
    v75 = __OFADD__(v73, v74);
    v76 = v73 + v74;
    if (v75)
    {
      goto LABEL_82;
    }

    v77 = v72;
    if (v149[3] < v76)
    {
      break;
    }

    if (v71)
    {
      goto LABEL_57;
    }

    v86 = result;
    sub_1001B2004();
    result = v86;
    if ((v77 & 1) == 0)
    {
LABEL_58:
      v149[(result >> 6) + 8] |= 1 << result;
      v82 = (v149[6] + 16 * result);
      *v82 = v66;
      v82[1] = v68;
      v83 = (v149[7] + 16 * result);
      *v83 = v147;
      v83[1] = v70;
      v84 = v149[2];
      v75 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v75)
      {
        goto LABEL_83;
      }

      v149[2] = v85;
      goto LABEL_44;
    }

LABEL_43:
    v61 = result;

    v62 = (v149[7] + 16 * v61);
    *v62 = v147;
    v62[1] = v70;

LABEL_44:
    v5 = v63;
LABEL_45:
    result = v139;
    if (v143 == ++v60)
    {
      goto LABEL_62;
    }
  }

  sub_1001AFF1C(v76, v71);
  result = sub_1000EE808(v66, v68);
  if ((v77 & 1) == (v78 & 1))
  {
LABEL_57:
    if ((v77 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_43;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1001525BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100152634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015285C()
{
  v1[50] = v0;
  v2 = type metadata accessor for Logger();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v3 = sub_100085D40(&qword_10059BD40);
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();
  v4 = sub_100085D40(&qword_10059BDB0);
  v1[57] = v4;
  v1[58] = *(v4 - 8);
  v1[59] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[60] = v5;
  v1[61] = *(v5 - 8);
  v1[62] = swift_task_alloc();

  return _swift_task_switch(sub_100152A48, 0, 0);
}

uint64_t sub_100152A48()
{
  v1 = *(v0 + 400);
  v2 = OBJC_IVAR____TtC9appstored13OwnsCheckTask_input;
  *(v0 + 504) = OBJC_IVAR____TtC9appstored13OwnsCheckTask_input;
  v3 = (v1 + v2);
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v1 + v2);
LABEL_5:
    *(v0 + 512) = v5;
    v7 = *(v0 + 496);
    v8 = v3[5];
    v9 = v3[6];
    sub_100005B60(v3 + 2, v8);
    v10 = v4;
    v11 = sub_1000C4BB0(v8, v9);
    v12 = [objc_allocWithZone(type metadata accessor for OwnsCheckTaskRequestEncoder()) initWithBag:v11];
    *(v0 + 520) = v12;
    swift_unknownObjectRelease();
    v13 = v12;
    [v13 setAccount:v5];
    [v13 setUrlKnownToBeTrusted:1];

    sub_100153858(v7);
    v15 = *(v0 + 464);
    v14 = *(v0 + 472);
    v16 = *(v0 + 456);
    URL._bridgeToObjectiveC()((v0 + 144));
    v18 = v17;
    v19 = [v13 requestWithMethod:2 URL:v17 parameters:0];
    *(v0 + 528) = v19;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_100152E2C;
    swift_continuation_init();
    *(v0 + 200) = v16;
    v20 = sub_100005F38((v0 + 176));
    sub_10009FAD4(0, &qword_10059BDB8);
    *(v0 + 536) = sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v15 + 32))(v20, v14, v16);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10018C238;
    *(v0 + 168) = &unk_100510008;
    [v19 resultWithCompletion:?];
    (*(v15 + 8))(v20, v16);

    return _swift_continuation_await(v0 + 16);
  }

  v6 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v6 ams_activeiTunesAccount];

  if (v5)
  {
    v4 = 0;
    goto LABEL_5;
  }

  type metadata accessor for ASDError(0);
  *(v0 + 344) = 509;
  sub_1000EF17C(_swiftEmptyArrayStorage);
  sub_1000BD07C();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100152E2C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_100153680;
  }

  else
  {
    v2 = sub_100152F3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100152F3C()
{
  v1 = v0[66];
  v2 = v0[55];
  v16 = v0[56];
  v3 = v0[54];
  v4 = (v0[50] + v0[63]);
  v5 = v0[44];
  v0[69] = v5;

  v6 = objc_opt_self();
  objc_opt_self();
  v7 = sub_10000479C();
  v8 = v4[5];
  v9 = v4[6];
  v10 = sub_100005B60(v4 + 2, v8);
  v11 = sub_1000D1A7C(v8, v9, v10);
  v12 = sub_10024AA54(v6, v7, v11, 0);
  v0[70] = v12;

  v13 = [v12 dataTaskPromiseWithRequest:v5];
  v0[71] = v13;
  v0[10] = v0;
  v0[15] = v0 + 45;
  v0[11] = sub_1001531C8;
  swift_continuation_init();
  v0[33] = v3;
  v14 = sub_100005F38(v0 + 30);
  sub_10009FAD4(0, &qword_10059BD48);
  CheckedContinuation.init(continuation:function:)();
  (*(v2 + 32))(v14, v16, v3);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10018C224;
  v0[29] = &unk_100510030;
  [v13 resultWithCompletion:?];
  (*(v2 + 8))(v14, v3);

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1001531C8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 576) = v1;
  if (v1)
  {
    v2 = sub_100153760;
  }

  else
  {
    v2 = sub_1001532D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001532D8()
{
  v30 = *(v0 + 360);
  if ([v30 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  *(v0 + 304) = v31;
  *(v0 + 320) = v32;
  if (!*(v0 + 328))
  {
    sub_100005518(v0 + 304, &unk_10059CC50);
    goto LABEL_14;
  }

  sub_100085D40(&unk_10059DC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v1 = *(v0 + 384);
  if (!*(v1 + 16) || (v2 = sub_1000EE808(0x63656843736E776FLL, 0xE90000000000006BLL), (v3 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_10009F6D0(*(v1 + 56) + 32 * v2, v0 + 272);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
    v21 = *(v0 + 488);
    v29 = *(v0 + 496);
    v22 = *(v0 + 480);
    type metadata accessor for ASDError(0);
    *(v0 + 376) = 742;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    (*(v21 + 8))(v29, v22);

    v15 = *(v0 + 8);
    goto LABEL_15;
  }

  v28 = *(v0 + 392);
  static Logger.general.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owns check completed successfully", v6, 2u);
  }

  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 488);
  v11 = *(v0 + 496);
  v26 = *(v0 + 520);
  v27 = *(v0 + 480);
  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  v14 = *(v0 + 400);
  v24 = *(v0 + 512);
  v25 = *(v0 + 408);

  (*(v12 + 8))(v13, v25);
  (*(v10 + 8))(v11, v27);
  *(v14 + OBJC_IVAR____TtC9appstored13OwnsCheckTask_output) = v28;

  v15 = *(v0 + 8);
LABEL_15:

  return v15();
}

uint64_t sub_100153680()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[60];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100153760()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[65];
  v5 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[60];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100153858@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_100085D40(&qword_10059E2C8);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for URLComponents();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100085D40(&qword_10059CE90);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + OBJC_IVAR____TtC9appstored13OwnsCheckTask_input;
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstored13OwnsCheckTask_input + 16), *(v1 + OBJC_IVAR____TtC9appstored13OwnsCheckTask_input + 40));
  v17 = v12;
  sub_1000D0CE8();
  v18 = *(v13 + 48);
  if (v18(v11, 1, v17) == 1)
  {
    v19 = &qword_10059CE90;
    v20 = v11;
LABEL_5:
    sub_100005518(v20, v19);
    type metadata accessor for ASDError(0);
    v44 = 850;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  v39 = v18;
  v38 = *(v13 + 32);
  v38(v15, v11, v17);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v21 = v43;
  if ((*(v43 + 48))(v4, 1, v5) == 1)
  {
    (*(v13 + 8))(v15, v17);
    v19 = &qword_10059E2C8;
    v20 = v4;
    goto LABEL_5;
  }

  v23 = v5;
  v33[1] = v13 + 32;
  v34 = v17;
  v35 = v15;
  v36 = v13;
  v24 = *(v21 + 32);
  v25 = v42;
  v37 = v23;
  v24(v42, v4);
  sub_100085D40(&qword_10059F6B0);
  type metadata accessor for URLQueryItem();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100436FD0;
  v45 = *(v16 + 8);

  sub_100085D40(&unk_10059DCA0);
  sub_1001546E0();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  v27 = [objc_opt_self() deviceGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLQueryItem.init(name:value:)();

  v28 = URLComponents.queryItems.getter();
  if (v28)
  {
    v45 = v28;
    sub_100154A68(v26);
  }

  URLComponents.queryItems.setter();
  v29 = v34;
  v30 = v41;
  URLComponents.url.getter();
  v31 = v39(v30, 1, v29);
  v32 = v35;
  if (v31 == 1)
  {
    sub_100005518(v30, &qword_10059CE90);
    type metadata accessor for ASDError(0);
    v44 = 850;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    (*(v43 + 8))(v25, v37);
    return (*(v36 + 8))(v32, v29);
  }

  else
  {
    (*(v43 + 8))(v25, v37);
    (*(v36 + 8))(v32, v29);
    return (v38)(v40, v30, v29);
  }
}

uint64_t sub_100154028(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_10015285C();
}

id sub_1001541D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  URLRequest.cachePolicy.setter();
  v11.value._countAndFlagsBits = 0x6C6D782F74786574;
  v12._countAndFlagsBits = 0x2D746E65746E6F43;
  v12._object = 0xEC00000065707954;
  v11.value._object = 0xE800000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v11, v12);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  sub_1000FE388(a2, v25);
  v14 = v26;
  if (v26)
  {
    v15 = sub_100005B60(v25, v26);
    v23[1] = v23;
    v16 = ObjectType;
    v17 = *(v14 - 8);
    __chkstk_darwin(v15);
    v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v14);
    ObjectType = v16;
    sub_100005A00(v25);
  }

  else
  {
    v20 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, "requestByEncodingRequest:parameters:", isa, v20);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return v21;
}

uint64_t sub_10015461C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_100154028(v2, v3);
}

unint64_t sub_1001546E0()
{
  result = qword_10059C4C0;
  if (!qword_10059C4C0)
  {
    sub_10009F7F8(&unk_10059DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C4C0);
  }

  return result;
}

uint64_t sub_10015477C(uint64_t a1)
{
  v3 = type metadata accessor for PurchaseCandidate();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v30[1] = v1;
  v39 = _swiftEmptyArrayStorage;
  sub_1001747A4(0, v5, 0);
  v6 = v39;
  v7 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v31 = a1 + 72;
  v32 = v5;
  v33 = a1 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v36 = v10;
    v37 = v14;
    v15 = v34;
    sub_100161CD8(*(a1 + 56) + *(v35 + 72) * v9, v34);
    v38 = *(v15 + 32);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    result = sub_100161D3C(v15);
    v39 = v6;
    v20 = v6[2];
    v19 = v6[3];
    v21 = v6;
    if (v20 >= v19 >> 1)
    {
      result = sub_1001747A4((v19 > 1), v20 + 1, 1);
      v21 = v39;
    }

    v21[2] = v20 + 1;
    v22 = &v21[2 * v20];
    v22[4] = v16;
    v22[5] = v18;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v33;
    v23 = *(v33 + 8 * v13);
    if ((v23 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v21;
    if (v37 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v9 & 0x3F));
    if (v24)
    {
      v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v32;
    }

    else
    {
      v25 = v13 << 6;
      v26 = v13 + 1;
      v12 = v32;
      v27 = (v31 + 8 * v13);
      while (v26 < (v11 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_100116A78(v9, v37, 0);
          v11 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_100116A78(v9, v37, 0);
    }

LABEL_4:
    v10 = v36 + 1;
    v9 = v11;
    if (v36 + 1 == v12)
    {
      return v6;
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

uint64_t sub_100154A68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1001AC268(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100154B94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001AC290(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100154CA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001ACCA4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100154DA8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10016017C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100155098()
{
  v1[24] = v0;
  v2 = type metadata accessor for UUID();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  sub_100085D40(&qword_10059E418);
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for PurchaseCandidate();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return _swift_task_switch(sub_100155320, 0, 0);
}

id sub_100155320()
{
  v71 = v0;
  v1 = v0[24];
  static Logger.purchase.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[52];
  v8 = v0[41];
  v7 = v0[42];
  if (v5)
  {
    v9 = v0[24];
    v68 = v0[41];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v10 = 138412546;
    v13 = *(v9 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    v14 = v13;
    v15 = Array.description.getter();
    v17 = sub_1001AD0D8(v15, v16, v70);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Purchasing batch: %{public}s", v10, 0x16u);
    sub_100005518(v11, &unk_10059C250);

    sub_100005A00(v12);

    v18 = *(v7 + 8);
    v18(v6, v68);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[53] = v18;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result ams_activeiTunesAccount];
  v0[54] = v21;

  if (v21)
  {
    v22 = v0[24];
    v0[16] = _swiftEmptyArrayStorage;
    v0[17] = _swiftEmptyDictionarySingleton;
    v23 = *&v22[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemIDs];
    v0[55] = v23;
    v24 = *(v23 + 16);
    v0[56] = v24;
    if (v24)
    {
      v25 = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey;
      v0[61] = _swiftEmptyDictionarySingleton;
      v0[62] = _swiftEmptyDictionarySingleton;
      v0[59] = _swiftEmptyArrayStorage;
      v0[60] = _swiftEmptyArrayStorage;
      v0[57] = v25;
      v0[58] = 0;
      v26 = *(v23 + 32);
      v0[63] = v26;
      v27 = swift_task_alloc();
      v0[64] = v27;
      *v27 = v0;
      v27[1] = sub_100155C60;

      return sub_100161134(v26);
    }

    v0[68] = _swiftEmptyDictionarySingleton;
    v0[67] = _swiftEmptyArrayStorage;
    if (_swiftEmptyDictionarySingleton[2])
    {

      v47 = sub_10015477C(v46);
      v0[69] = v47;

      v48 = swift_task_alloc();
      v0[70] = v48;
      *v48 = v0;
      v48[1] = sub_1001564F4;

      return sub_100158B74(v47);
    }

    static Logger.purchase.getter();
    v50 = v22;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v0[24];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = *(v53 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v54 + 4) = v56;
      *v55 = v56;
      v57 = v56;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%@] No candidates to purchase", v54, 0xCu);
      sub_100005518(v55, &unk_10059C250);
    }

    v59 = v0[53];
    v58 = v0[54];
    v60 = v0[45];
    v61 = v0[41];
    v62 = v0[24];

    v59(v60, v61);
    v63 = objc_allocWithZone(ASDPurchaseResponse);
    sub_10009FAD4(0, &qword_10059C4C8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v65 = [v63 initWithPurchaseResponseItems:isa];

    v66 = *(v62 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
    *(v62 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = v65;

    v49 = v0[1];
  }

  else
  {
    v28 = v0[24];
    static Logger.purchase.getter();
    v29 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[44];
    v34 = v0[41];
    if (v32)
    {
      v35 = v0[24];
      v69 = v0[41];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v33;
      v38 = swift_slowAlloc();
      v70[0] = v38;
      *v36 = 138412546;
      v39 = *(v35 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v36 + 4) = v39;
      *v37 = v39;
      *(v36 + 12) = 2082;
      v40 = v39;
      v41 = Array.description.getter();
      v43 = sub_1001AD0D8(v41, v42, v70);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Account required to install %{public}s", v36, 0x16u);
      sub_100005518(v37, &unk_10059C250);

      sub_100005A00(v38);

      v44 = v67;
      v45 = v69;
    }

    else
    {

      v44 = v33;
      v45 = v34;
    }

    v18(v44, v45);
    type metadata accessor for ASDError(0);
    v0[15] = 509;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v49 = v0[1];
  }

  return v49();
}

uint64_t sub_100155C60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = a2;

  return _swift_task_switch(sub_100155D64, 0, 0);
}

uint64_t sub_100155D64()
{
  v1 = *(v0 + 528);
  if (v1 == 1)
  {
    v2 = *(v0 + 504);
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = *(v0 + 232);
    v6 = *(v0 + 432);
    UUID.init()();
    *v3 = v6;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v2;
    *(v3 + *(v5 + 36)) = 0;
    v7 = (v3 + *(v5 + 40));
    *v7 = 0;
    v7[1] = 0;
    sub_100161CD8(v3, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v0 + 136);
    sub_1001B4718(v4, v2, isUniquelyReferenced_nonNull_native);
    v9 = v64;
    *(v0 + 136) = v64;
    sub_100161D3C(v3);
    v11 = *(v0 + 472);
    v10 = *(v0 + 480);
    v12 = v64;
  }

  else
  {
    type metadata accessor for ASDError(0);
    *(v0 + 184) = 506;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = *(v0 + 176);
    v14 = [objc_allocWithZone(ASDPurchaseResponseItem) init];
    if (v1)
    {
      v15 = *(v0 + 528);
      v16 = *(v0 + 520);
      v17 = String._bridgeToObjectiveC()();
      sub_100161DFC(v16, v15);
    }

    else
    {
      v17 = 0;
    }

    [v14 _setBundleID:v17];

    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    [v14 _setItemID:isa];

    v19 = v13;
    v20 = _convertErrorToNSError(_:)();

    [v14 _setError:v20];
    v21 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v22 = *(v0 + 192);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = *(v0 + 128);
    static Logger.purchase.getter();
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v63 = v21;
      v26 = *(v0 + 504);
      v27 = *(v0 + 456);
      v28 = *(v0 + 192);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412546;
      v31 = *(v28 + v27);
      *(v29 + 4) = v31;
      *v30 = v31;
      *(v29 + 12) = 2050;
      *(v29 + 14) = v26;
      v21 = v63;
      v32 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Skipping itemID: %{public}lld due to activeInstall", v29, 0x16u);
      sub_100005518(v30, &unk_10059C250);

      v33 = v19;
    }

    else
    {
      v33 = v24;
      v24 = v19;
    }

    v34 = *(v0 + 424);
    v35 = *(v0 + 408);
    v36 = *(v0 + 328);

    v34(v35, v36);
    v9 = *(v0 + 488);
    v12 = *(v0 + 496);
    v10 = v11;
  }

  v37 = *(v0 + 464) + 1;
  if (v37 == *(v0 + 448))
  {
    *(v0 + 544) = v9;
    *(v0 + 536) = v11;
    if (*(v12 + 16))
    {

      v39 = sub_10015477C(v38);
      *(v0 + 552) = v39;

      v40 = swift_task_alloc();
      *(v0 + 560) = v40;
      *v40 = v0;
      v40[1] = sub_1001564F4;

      return sub_100158B74(v39);
    }

    else
    {
      v44 = *(v0 + 192);
      static Logger.purchase.getter();
      v45 = v44;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 192);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(v48 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
        *(v49 + 4) = v51;
        *v50 = v51;
        v52 = v51;
        _os_log_impl(&_mh_execute_header, v46, v47, "[%@] No candidates to purchase", v49, 0xCu);
        sub_100005518(v50, &unk_10059C250);
      }

      v54 = *(v0 + 424);
      v53 = *(v0 + 432);
      v55 = *(v0 + 360);
      v56 = *(v0 + 328);
      v57 = *(v0 + 192);

      v54(v55, v56);
      v58 = objc_allocWithZone(ASDPurchaseResponse);
      sub_10009FAD4(0, &qword_10059C4C8);
      v59 = Array._bridgeToObjectiveC()().super.isa;

      v60 = [v58 initWithPurchaseResponseItems:v59];

      v61 = *(v57 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
      *(v57 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = v60;

      v62 = *(v0 + 8);

      return v62();
    }
  }

  else
  {
    *(v0 + 488) = v9;
    *(v0 + 496) = v12;
    *(v0 + 472) = v11;
    *(v0 + 480) = v10;
    *(v0 + 464) = v37;
    v42 = *(*(v0 + 440) + 8 * v37 + 32);
    *(v0 + 504) = v42;
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_100155C60;

    return sub_100161134(v42);
  }
}

uint64_t sub_1001564F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 568) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v4 = sub_100158434;
  }

  else
  {

    v4 = sub_100156614;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100156614()
{
  v79 = v0;
  v1 = *(v0 + 568);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:

    *(v0 + 584) = [objc_opt_self() defaultWorkspace];
    swift_beginAccess();
    v44 = *(v0 + 136);
    *(v0 + 592) = v44;
    v45 = *(v44 + 32);
    *(v0 + 720) = v45;
    v46 = 1 << v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v44 + 64);
    *(v0 + 600) = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey;

    v49 = 0;
    while (v48)
    {
      v50 = *(v0 + 592);
LABEL_33:
      *(v0 + 616) = v49;
      *(v0 + 608) = v48;
      v52 = *(v0 + 280);
      v53 = *(v0 + 288);
      v54 = *(v0 + 232);
      sub_100161CD8(*(v50 + 56) + *(*(v0 + 240) + 72) * (__clz(__rbit64(v48)) | (v49 << 6)), v53);
      sub_100161D98(v53, v52);
      swift_beginAccess();
      v55 = *(v52 + *(v54 + 36));
      if (v55)
      {
        v56 = sub_1002CC9D0(v55);
        *(v0 + 624) = v56;
        if (v56)
        {
          v57 = v56;
          v58 = sub_10037DEF4(v56);
          *(v0 + 632) = v58;
          if (v58)
          {
            v64 = *(*(v0 + 192) + *(v0 + 600));
            *(v0 + 640) = v64;
            v65 = swift_task_alloc();
            *(v0 + 648) = v65;
            *v65 = v0;
            v65[1] = sub_100156CB8;
            v66 = *(v0 + 280);

            sub_100159500(v66, v64);
            return;
          }
        }
      }

      v48 &= v48 - 1;
      sub_100161D3C(*(v0 + 280));
    }

    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      v50 = *(v0 + 592);
      if (v51 >= (((1 << *(v0 + 720)) + 63) >> 6))
      {
        break;
      }

      v48 = *(v50 + 8 * v51 + 64);
      ++v49;
      if (v48)
      {
        v49 = v51;
        goto LABEL_33;
      }
    }

    v59 = *(v0 + 432);

    *(v0 + 664) = *(v0 + 136);

    v61 = sub_10015A298(v60, v59);
    *(v0 + 672) = v61;

    v62 = swift_task_alloc();
    *(v0 + 680) = v62;
    *v62 = v0;
    v62[1] = sub_100157450;
    v63 = *(v0 + 432);

    sub_10015AF74(v61, v63);
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v75 = *(v0 + 304);
    v73 = *(v0 + 232);
    v68 = *(v0 + 192);
    v67 = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey;
    v4 = v1 & 0xC000000000000001;
    v77 = *(v0 + 568) + 32;
    v74 = *(v0 + 240);
    v76 = v2;
    v72 = v1 & 0xC000000000000001;
    while (1)
    {
      v5 = v4 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v77 + 8 * v3);
      v6 = v5;
      v7 = sub_1002CCA54(v5);
      v8 = *(v0 + 136);
      if (*(v8 + 16))
      {
        v9 = sub_1000F2DCC(v7);
        if (v10)
        {
          break;
        }
      }

LABEL_6:
      if (v2 == ++v3)
      {
        goto LABEL_22;
      }
    }

    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    sub_100161CD8(*(v8 + 56) + *(v74 + 72) * v9, v12);
    sub_100161D98(v12, v11);
    swift_beginAccess();
    v13 = *(v73 + 36);
    v14 = *(v11 + v13);
    *(v11 + v13) = v6;
    v15 = v6;

    v16 = sub_1002CC9D0(v15);
    if (v16)
    {
      v17 = v16;
      v18 = sub_10037DEF4(v16);

      if (v18)
      {
        v19 = sub_1001FEEC8(v18);

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

LABEL_17:
        v22 = *(v0 + 304);
        v24 = *(v0 + 224);
        v23 = *(v0 + 232);
        v25 = *(v0 + 192);
        *(v75 + 8) = v18;
        *(v75 + 16) = v21;

        v26 = sub_1002CCA54(v15);
        sub_100161CD8(v22, v24);
        (*(v74 + 56))(v24, 0, 1, v23);
        sub_1001AABC8(v24, v26);
        static Logger.purchase.getter();
        v27 = v25;
        v28 = v15;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 424);
        v33 = *(v0 + 400);
        v34 = *(v0 + 328);
        v35 = *(v0 + 304);
        if (v31)
        {
          v71 = *(v0 + 328);
          v36 = swift_slowAlloc();
          v70 = v28;
          v37 = swift_slowAlloc();
          v69 = v32;
          v38 = swift_slowAlloc();
          v78 = v38;
          *v36 = 138412546;
          v39 = *(v68 + v67);
          *(v36 + 4) = v39;
          *v37 = v39;
          *(v36 + 12) = 2082;
          v40 = v39;
          v41 = sub_1001593A8();
          v43 = sub_1001AD0D8(v41, v42, &v78);

          *(v36 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v29, v30, "[%@][%{public}s] Added batch candidate", v36, 0x16u);
          sub_100005518(v37, &unk_10059C250);

          sub_100005A00(v38);

          v69(v33, v71);
        }

        else
        {

          v32(v33, v34);
        }

        sub_100161D3C(v35);
        v2 = v76;
        v4 = v72;
        goto LABEL_6;
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = 0;
    goto LABEL_17;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_100156CB8(uint64_t a1)
{
  *(*v1 + 656) = a1;

  return _swift_task_switch(sub_100156DB8, 0, 0);
}

uint64_t sub_100156DB8()
{
  v78 = v0;
  v1 = *(v0 + 656);
  if (v1)
  {
    if (sub_100248DEC(*(v0 + 656)))
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        v3 = *(v0 + 584);
        v4 = *(v0 + 280);
        v5 = *(v4 + 24);
        *(v4 + 24) = v2;
        v6 = v1;

        if (v3)
        {
          v7 = *(v0 + 624);
          v8 = *(v0 + 584);
          v9 = sub_1001FEEC8(v7);
          if (!v9)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v9 = String._bridgeToObjectiveC()();
          }

          v10 = sub_1001FEEC8(*(v0 + 632));
          if (!v10)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v10 = String._bridgeToObjectiveC()();
          }

          v11 = [*(v0 + 584) createDeviceIdentifierWithVendorName:v9 bundleIdentifier:v10];

          v12 = *(v0 + 584);
          if (v11)
          {
            v13 = *(v0 + 280);
            v14 = *(v0 + 232);
            v16 = *(v0 + 208);
            v15 = *(v0 + 216);
            v17 = *(v0 + 200);
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v18 = UUID.uuidString.getter();
            v20 = v19;

            (*(v16 + 8))(v15, v17);
            v21 = (v13 + *(v14 + 40));
            *v21 = v18;
            v21[1] = v20;
          }

          else
          {
          }
        }

        v45 = *(v0 + 632);
        v46 = *(v0 + 624);
        v47 = *(v0 + 280);
        v48 = *(v0 + 232);
        v49 = *(v0 + 240);
        v50 = *(v0 + 224);
        v51 = *(v47 + 32);
        sub_100161CD8(v47, v50);
        (*(v49 + 56))(v50, 0, 1, v48);
        swift_beginAccess();
        sub_1001AABC8(v50, v51);
        swift_endAccess();

        v38 = v47;
        goto LABEL_18;
      }
    }

    v22 = *(v0 + 192);
    static Logger.purchase.getter();
    v23 = v1;
    v24 = v22;
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v26, v27))
    {
      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      v41 = *(v0 + 424);
      v42 = *(v0 + 392);
      v43 = *(v0 + 328);
      v44 = *(v0 + 280);

      v41(v42, v43);
      v38 = v44;
      goto LABEL_18;
    }

    v28 = *(v0 + 640);
    v71 = *(v0 + 656);
    v72 = *(v0 + 624);
    v75 = *(v0 + 392);
    v76 = *(v0 + 424);
    v74 = *(v0 + 328);
    v29 = *(v0 + 280);
    v73 = *(v0 + 632);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v77 = v32;
    *v30 = 138413058;
    *(v30 + 4) = v28;
    *v31 = v28;
    *(v30 + 12) = 2082;
    v33 = v28;
    v34 = sub_1001593A8();
    v36 = sub_1001AD0D8(v34, v35, &v77);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2112;
    *(v30 + 24) = v25;
    v31[1] = v71;
    *(v30 + 32) = 1024;
    *(v30 + 34) = sub_100248DEC(v25);

    _os_log_impl(&_mh_execute_header, v26, v27, "[%@][%{public}s] Skipping install with existing invalid coordinator: %@ AppStore isAppDRI: %{BOOL}d", v30, 0x26u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v32);

    v76(v75, v74);
  }

  else
  {
    v37 = *(v0 + 632);
    v29 = *(v0 + 280);
  }

  v38 = v29;
LABEL_18:
  result = sub_100161D3C(v38);
  v53 = *(v0 + 616);
  v54 = (*(v0 + 608) - 1) & *(v0 + 608);
  while (v54)
  {
    result = *(v0 + 592);
LABEL_26:
    *(v0 + 616) = v53;
    *(v0 + 608) = v54;
    v56 = *(v0 + 280);
    v57 = *(v0 + 288);
    v58 = *(v0 + 232);
    sub_100161CD8(*(result + 56) + *(*(v0 + 240) + 72) * (__clz(__rbit64(v54)) | (v53 << 6)), v57);
    sub_100161D98(v57, v56);
    swift_beginAccess();
    v59 = *(v56 + *(v58 + 36));
    if (v59)
    {
      v60 = sub_1002CC9D0(v59);
      *(v0 + 624) = v60;
      if (v60)
      {
        v61 = v60;
        v62 = sub_10037DEF4(v60);
        *(v0 + 632) = v62;
        if (v62)
        {
          v68 = *(*(v0 + 192) + *(v0 + 600));
          *(v0 + 640) = v68;
          v69 = swift_task_alloc();
          *(v0 + 648) = v69;
          *v69 = v0;
          v69[1] = sub_100156CB8;
          v70 = *(v0 + 280);

          return sub_100159500(v70, v68);
        }
      }
    }

    v54 &= v54 - 1;
    result = sub_100161D3C(*(v0 + 280));
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v0 + 592);
    if (v55 >= (((1 << *(v0 + 720)) + 63) >> 6))
    {
      break;
    }

    v54 = *(result + 8 * v55 + 64);
    ++v53;
    if (v54)
    {
      v53 = v55;
      goto LABEL_26;
    }
  }

  v63 = *(v0 + 432);

  *(v0 + 664) = *(v0 + 136);

  v65 = sub_10015A298(v64, v63);
  *(v0 + 672) = v65;

  v66 = swift_task_alloc();
  *(v0 + 680) = v66;
  *v66 = v0;
  v66[1] = sub_100157450;
  v67 = *(v0 + 432);

  return sub_10015AF74(v65, v67);
}

uint64_t sub_100157450(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {

    v4 = sub_100158940;
  }

  else
  {
    v4 = sub_100157570;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100157570()
{
  v126 = v0;
  v1 = v0[86];
  v111 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_52;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = v1;
    v4 = v1 & 0xC000000000000001;
    v5 = v0[86] + 32;

    for (i = 0; i != v2; ++i)
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v5 + 8 * i);
      }

      v9 = v7;
      v10 = sub_1003860A0(v7, v8);
      if (v10)
      {
        v11 = v10;
        v12 = [v10 longLongValue];

        sub_100175500(&v125, v12);
      }
    }

    v1 = v3;
    while (1)
    {
LABEL_12:
      v110 = v1;
      v13 = v0[83];
      v16 = *(v13 + 64);
      v15 = v13 + 64;
      v14 = v16;
      v17 = v0[33];
      v18 = -1 << *(v0[83] + 32);
      if (-v18 < 64)
      {
        v19 = ~(-1 << -v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v14;
      v1 = (63 - v18) >> 6;
      v121 = v0[83];

      v21 = 0;
      v119 = v15;
      v124 = v17;
      v120 = v1;
      if (v20)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v1)
        {

          if (v111)
          {
            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              goto LABEL_42;
            }
          }

          else if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
          {
LABEL_42:
            v84 = v0[24];

            static Logger.purchase.getter();
            v85 = v84;
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = v0[75];
              v89 = v0[24];
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = 138412290;
              v92 = *(v89 + v88);
              *(v90 + 4) = v92;
              *v91 = v92;
              v93 = v92;
              _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Nothing in response to import", v90, 0xCu);
              sub_100005518(v91, &unk_10059C250);
            }

            v94 = v0[53];
            v95 = v0[46];
            v96 = v0[41];

            v94(v95, v96);
            v97 = v0[84];
            v98 = v0[73];
            v99 = v0[54];
            v100 = v0[24];
            v101 = objc_allocWithZone(ASDPurchaseResponse);
            sub_10009FAD4(0, &qword_10059C4C8);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v103 = [v101 initWithPurchaseResponseItems:isa];

            v104 = *(v100 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
            *(v100 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = v103;

            v105 = v0[1];

            v105();
            return;
          }

          v106 = swift_task_alloc();
          v0[88] = v106;
          *v106 = v0;
          v106[1] = sub_1001580C4;
          v107 = v0[86];
          v108 = v0[84];
          v109 = v0[83];

          sub_10015C840(v107, v108, v109);
          return;
        }

        v20 = *(v15 + 8 * v22);
        ++v21;
        if (v20)
        {
          v21 = v22;
          do
          {
LABEL_20:
            v23 = v0[33];
            v24 = v0[34];
            v25 = __clz(__rbit64(v20));
            v20 &= v20 - 1;
            sub_100161CD8(*(v121 + 56) + *(v0[30] + 72) * (v25 | (v21 << 6)), v24);
            sub_100161D98(v24, v23);
            v26 = *(v17 + 32);
            if (*(&_swiftEmptySetSingleton + 2) && (v27 = static Hasher._hash(seed:_:)(), v28 = -1 << *(&_swiftEmptySetSingleton + 32), v29 = v27 & ~v28, ((*(&_swiftEmptySetSingleton + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29) & 1) != 0))
            {
              v30 = ~v28;
              while (*(*(&_swiftEmptySetSingleton + 6) + 8 * v29) != v26)
              {
                v29 = (v29 + 1) & v30;
                if (((*(&_swiftEmptySetSingleton + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29) & 1) == 0)
                {
                  goto LABEL_25;
                }
              }

              v63 = v0[32];
              v62 = v0[33];
              v64 = v0[24];
              static Logger.purchase.getter();
              sub_100161CD8(v62, v63);
              v65 = v64;
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v66, v67))
              {
                v68 = v0[75];
                v123 = v0[53];
                v116 = v0[41];
                v118 = v0[48];
                v69 = v0[32];
                v70 = v0[24];
                v71 = swift_slowAlloc();
                log = v66;
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                v125 = v73;
                *v71 = 138412546;
                v74 = *(v70 + v68);
                *(v71 + 4) = v74;
                *v72 = v74;
                *(v71 + 12) = 2082;
                v75 = v74;
                v76 = sub_1001593A8();
                v78 = v77;
                sub_100161D3C(v69);
                v79 = sub_1001AD0D8(v76, v78, &v125);

                *(v71 + 14) = v79;
                _os_log_impl(&_mh_execute_header, log, v67, "[%@][%{public}s] Found purchase response item", v71, 0x16u);
                sub_100005518(v72, &unk_10059C250);

                sub_100005A00(v73);
                v15 = v119;

                v123(v118, v116);
              }

              else
              {
                v80 = v0[53];
                v81 = v0[48];
                v82 = v0[41];
                v83 = v0[32];

                sub_100161D3C(v83);
                v80(v81, v82);
              }

              v61 = v0[33];
            }

            else
            {
LABEL_25:
              v31 = v0[33];
              v32 = v0[31];
              v33 = v0[24];
              static Logger.purchase.getter();
              sub_100161CD8(v31, v32);
              v34 = v33;
              v35 = Logger.logObject.getter();
              v36 = static os_log_type_t.error.getter();

              v122 = v35;
              if (os_log_type_enabled(v35, v36))
              {
                v37 = v0[75];
                v115 = v0[47];
                v117 = v0[53];
                v38 = v0[31];
                v39 = v0[24];
                v114 = v0[41];
                v40 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v125 = v112;
                *v40 = 138412546;
                v42 = *(v39 + v37);
                *(v40 + 4) = v42;
                *v41 = v42;
                *(v40 + 12) = 2082;
                v43 = v42;
                v44 = sub_1001593A8();
                v46 = v45;
                sub_100161D3C(v38);
                v47 = sub_1001AD0D8(v44, v46, &v125);

                *(v40 + 14) = v47;
                _os_log_impl(&_mh_execute_header, v122, v36, "[%@][%{public}s] Failed to find item in purchase response", v40, 0x16u);
                sub_100005518(v41, &unk_10059C250);

                sub_100005A00(v112);

                v117(v115, v114);
              }

              else
              {
                v48 = v0[53];
                v49 = v0[47];
                v50 = v0[41];
                v51 = v0[31];

                sub_100161D3C(v51);
                v48(v49, v50);
              }

              type metadata accessor for ASDError(0);
              v0[21] = 742;
              sub_1000EF17C(_swiftEmptyArrayStorage);
              sub_1000BD07C();
              _BridgedStoredNSError.init(_:userInfo:)();
              v52 = v0[20];
              v53 = [objc_allocWithZone(ASDPurchaseResponseItem) init];
              v15 = v119;
              if (*(v124 + 16))
              {
                v54 = String._bridgeToObjectiveC()();
              }

              else
              {
                v54 = 0;
              }

              [v53 _setBundleID:v54];

              v55 = Int64._bridgeToObjectiveC()().super.super.isa;
              [v53 _setItemID:v55];

              v56 = v52;
              v57 = _convertErrorToNSError(_:)();

              [v53 _setError:v57];
              v58 = v53;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v59 = v0[33];
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v60 = v56;
              sub_10015BB84(v59, v60);

              v61 = v59;
            }

            sub_100161D3C(v61);
            v17 = v124;
            v1 = v120;
          }

          while (v20);
        }
      }

      __break(1u);
LABEL_52:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
        goto LABEL_3;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1001580C4(uint64_t a1)
{
  *(*v1 + 712) = a1;

  return _swift_task_switch(sub_100158200, 0, 0);
}

uint64_t sub_100158200()
{
  v1 = v0[89];
  if (v1)
  {
    sub_100154DA8(v1, sub_100160A2C);
  }

  v2 = v0[84];
  v3 = v0[73];
  v4 = v0[54];
  v5 = v0[24];
  v6 = objc_allocWithZone(ASDPurchaseResponse);
  sub_10009FAD4(0, &qword_10059C4C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithPurchaseResponseItems:isa];

  v9 = *(v5 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
  *(v5 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100158434()
{
  v47 = v0;
  v1 = *(v0 + 192);

  static Logger.purchase.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = &qword_10059DFF0[2];
  if (os_log_type_enabled(v3, v4))
  {
    v44 = *(v0 + 344);
    v45 = *(v0 + 424);
    v43 = *(v0 + 328);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v7 = 138412802;
    v10 = *(v6 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2082;
    v11 = v10;

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_1001AD0D8(v12, v14, &v46);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v16;
    v8[1] = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Encountered error looking up MAPI data for: [%{public}s] error: %@", v7, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v9);
    v5 = qword_10059DFF0 + 16;

    v45(v44, v43);
  }

  else
  {
    v17 = *(v0 + 424);
    v18 = *(v0 + 344);
    v19 = *(v0 + 328);

    v17(v18, v19);
  }

  *(v0 + 584) = [objc_opt_self() defaultWorkspace];
  swift_beginAccess();
  v20 = *(v0 + 136);
  *(v0 + 592) = v20;
  v21 = *(v20 + 32);
  *(v0 + 720) = v21;
  v22 = 1 << v21;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v20 + 64);
  *(v0 + 600) = v5[108];

  v26 = 0;
  while (v24)
  {
    result = *(v0 + 592);
LABEL_15:
    *(v0 + 616) = v26;
    *(v0 + 608) = v24;
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v30 = *(v0 + 232);
    sub_100161CD8(*(result + 56) + *(*(v0 + 240) + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v29);
    sub_100161D98(v29, v28);
    swift_beginAccess();
    v31 = *(v28 + *(v30 + 36));
    if (v31)
    {
      v32 = sub_1002CC9D0(v31);
      *(v0 + 624) = v32;
      if (v32)
      {
        v33 = v32;
        v34 = sub_10037DEF4(v32);
        *(v0 + 632) = v34;
        if (v34)
        {
          v40 = *(*(v0 + 192) + *(v0 + 600));
          *(v0 + 640) = v40;
          v41 = swift_task_alloc();
          *(v0 + 648) = v41;
          *v41 = v0;
          v41[1] = sub_100156CB8;
          v42 = *(v0 + 280);

          return sub_100159500(v42, v40);
        }
      }
    }

    v24 &= v24 - 1;
    result = sub_100161D3C(*(v0 + 280));
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v0 + 592);
    if (v27 >= (((1 << *(v0 + 720)) + 63) >> 6))
    {
      break;
    }

    v24 = *(result + 8 * v27 + 64);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_15;
    }
  }

  v35 = *(v0 + 432);

  *(v0 + 664) = *(v0 + 136);

  v37 = sub_10015A298(v36, v35);
  *(v0 + 672) = v37;

  v38 = swift_task_alloc();
  *(v0 + 680) = v38;
  *v38 = v0;
  v38[1] = sub_100157450;
  v39 = *(v0 + 432);

  return sub_10015AF74(v37, v39);
}

uint64_t sub_100158940()
{
  v1 = _convertErrorToNSError(_:)();
  v2 = ASDErrorWithSafeUserInfo();

  if (!v2)
  {
    type metadata accessor for ASDError(0);
    v0[19] = 500;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v2 = v0[18];
  }

  v3 = v0[84];
  v4 = v0[73];
  v5 = v0[54];

  sub_10015C6D0(v6, v2);

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100158B74(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100085D40(&unk_10059E4B0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100158C40, 0, 0);
}

uint64_t sub_100158C40()
{
  v1 = v0[22];
  v18 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = *(v3 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag + 24);
  v5 = *(v3 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag + 32);
  sub_100005B60((v3 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag), v4);
  v6 = sub_1000C4BB0(v4, v5);
  v7 = objc_allocWithZone(AMSMediaTask);
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithType:0 clientIdentifier:v8 clientVersion:v9 bag:v6];
  v0[24] = v10;
  swift_unknownObjectRelease();

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setItemIdentifiers:isa];

  objc_opt_self();
  v12 = sub_10000479C();
  [v10 setClientInfo:v12];

  v13 = String._bridgeToObjectiveC()();

  [v10 setLogKey:v13];

  sub_1000EFC58(&off_100509470);
  sub_100005518(&unk_100509490, &qword_10059DB00);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setAdditionalQueryParams:v14];

  v15 = [v10 perform];
  v0[25] = v15;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100159000;
  swift_continuation_init();
  v0[17] = v2;
  v16 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &unk_10059E4C0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(v16, v18, v2);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015EA00;
  v0[13] = &unk_1005101E8;
  [v15 resultWithCompletion:?];
  (*(v1 + 8))(v16, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100159000()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100159320;
  }

  else
  {
    v2 = sub_100159110;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100159110()
{
  v1 = v0[18];
  v2 = [v1 responseDataItems];
  if (v2)
  {
    v3 = v2;
    v16 = v1;
    v17 = v0;
    sub_100085D40(&qword_10059D9B8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
    v6 = *(v4 + 16);
LABEL_3:
    v7 = v5;
    while (1)
    {
      if (v6 == v7)
      {
        v0 = v17;
        v11 = v17[24];
        v12 = v17[25];

        goto LABEL_12;
      }

      if (v7 >= *(v4 + 16))
      {
        break;
      }

      v5 = v7 + 1;
      v8 = objc_allocWithZone(MediaApp);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v10 = sub_1002CC8A4(v8, isa);

      v7 = v5;
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = v0[24];
    v14 = v0[25];

LABEL_12:

    v15 = v0[1];

    v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100159320()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001593A8()
{
  type metadata accessor for PurchaseCandidate();
  UUID.uuidString.getter();
  sub_1001C0808(8);

  v1 = static String._fromSubstring(_:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 47;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  if (*(v0 + 16))
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 58;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  return 5849665;
}

uint64_t sub_100159500(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  type metadata accessor for PurchaseCandidate();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10015967C, 0, 0);
}

uint64_t sub_10015967C()
{
  v141 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v34 = v0[6];
    v33 = v0[7];
    static Logger.purchase.getter();
    sub_100161CD8(v1, v33);
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[13];
    v39 = v0[14];
    v41 = v0[12];
    v42 = v0[7];
    if (v38)
    {
      v137 = v0[14];
      v43 = v0[6];
      v132 = v0[12];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v140 = v46;
      *v44 = 138412546;
      v47 = *(v43 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v44 + 4) = v47;
      *v45 = v47;
      *(v44 + 12) = 2082;
      v48 = v47;
      v49 = sub_1001593A8();
      v51 = v50;
      sub_100161D3C(v42);
      v52 = sub_1001AD0D8(v49, v51, &v140);

      *(v44 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@][%{public}s] Failed to find bundleID", v44, 0x16u);
      sub_100005518(v45, &unk_10059C250);

      sub_100005A00(v46);

      (*(v40 + 8))(v137, v132);
    }

    else
    {

      sub_100161D3C(v42);
      (*(v40 + 8))(v39, v41);
    }

    goto LABEL_20;
  }

  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(IXApplicationIdentity);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithBundleIdentifier:v5];

  if (!v6)
  {
    v53 = v0[8];
    v54 = v0[6];
    v55 = v0[4];
    static Logger.purchase.getter();
    sub_100161CD8(v55, v53);
    v56 = v54;

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[15];
    v62 = v0[12];
    v61 = v0[13];
    v63 = v0[8];
    if (v59)
    {
      v138 = v0[15];
      v64 = v0[6];
      v133 = v0[12];
      v65 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v65 = 138412802;
      v66 = *(v64 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v65 + 4) = v66;
      *v127 = v66;
      *(v65 + 12) = 2082;
      v67 = v66;
      v68 = sub_1001593A8();
      v70 = v69;
      sub_100161D3C(v63);
      v71 = sub_1001AD0D8(v68, v70, &v140);

      *(v65 + 14) = v71;
      *(v65 + 22) = 2080;
      *(v65 + 24) = sub_1001AD0D8(v3, v2, &v140);
      _os_log_impl(&_mh_execute_header, v57, v58, "[%@][%{public}s] Failed to create an app identify for %s", v65, 0x20u);
      sub_100005518(v127, &unk_10059C250);

      swift_arrayDestroy();

      (*(v61 + 8))(v138, v133);
    }

    else
    {

      sub_100161D3C(v63);
      (*(v61 + 8))(v60, v62);
    }

    goto LABEL_20;
  }

  v7 = objc_opt_self();
  v0[2] = 0;
  v8 = [v7 existingCoordinatorForAppWithIdentity:v6 error:v0 + 2];
  v9 = v0[2];
  if (v8)
  {
    v10 = v8;
    v11 = v0[11];
    v12 = v0[6];
    v13 = v0[4];
    v14 = v9;
    static Logger.purchase.getter();
    sub_100161CD8(v13, v11);
    v136 = v10;
    v15 = v10;
    v16 = v12;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[18];
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    if (v19)
    {
      v129 = v0[18];
      v24 = v0[6];
      v131 = v6;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      log = swift_slowAlloc();
      v140 = log;
      *v25 = 138412802;
      v27 = *(v24 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 2082;
      v28 = v27;
      v29 = sub_1001593A8();
      v126 = v22;
      v31 = v30;
      sub_100161D3C(v23);
      v32 = sub_1001AD0D8(v29, v31, &v140);

      *(v25 + 14) = v32;
      *(v25 + 22) = 1024;
      LODWORD(v32) = sub_100248DEC(v15);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@][%{public}s] Returning existing coordinator with appDRI: %{BOOL}d", v25, 0x1Cu);
      sub_100005518(v26, &unk_10059C250);

      sub_100005A00(log);

LABEL_6:
      (*(v21 + 8))(v129, v126);
      goto LABEL_21;
    }

    sub_100161D3C(v23);
    (*(v21 + 8))(v20, v22);
    goto LABEL_21;
  }

  v72 = v0[5];
  v73 = v9;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v74 = [objc_allocWithZone(CoordinatorBuilder) init];
  v75 = String._bridgeToObjectiveC()();
  sub_1003A076C(v74, v75);

  sub_1003A0780(v74, 1);
  sub_1001FBC18(v74, v72);
  sub_1001FBB80(v74, 1);
  sub_1002AFCF4(v74, 0);
  v0[3] = 0;
  v76 = sub_1003A040C(v74, v0 + 3);
  v77 = v0[3];
  if (!v76)
  {
    v134 = v6;
    v81 = v77;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v82 = v0[9];
    v83 = v0[6];
    v84 = v0[4];
    static Logger.purchase.getter();
    sub_100161CD8(v84, v82);
    v85 = v83;
    swift_errorRetain();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    v88 = os_log_type_enabled(v86, v87);
    v139 = v0[16];
    v89 = v0[12];
    v90 = v0[13];
    v91 = v0[9];
    if (v88)
    {
      v130 = v0[12];
      v92 = v0[6];
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v140 = v128;
      *v93 = 138412802;
      v95 = *(v92 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
      *(v93 + 4) = v95;
      *v94 = v95;
      *(v93 + 12) = 2082;
      v96 = v95;
      v97 = sub_1001593A8();
      v99 = v98;
      sub_100161D3C(v91);
      v100 = sub_1001AD0D8(v97, v99, &v140);

      *(v93 + 14) = v100;
      *(v93 + 22) = 2112;
      swift_errorRetain();
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 24) = v101;
      v94[1] = v101;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%@][%{public}s] Failed to create coordinator due to error: %@", v93, 0x20u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      sub_100005A00(v128);

      (*(v90 + 8))(v139, v130);
    }

    else
    {

      sub_100161D3C(v91);
      (*(v90 + 8))(v139, v89);
    }

LABEL_20:
    v136 = 0;
    goto LABEL_21;
  }

  v78 = v76;
  v79 = v0[4];
  v80 = v77;
  sub_10015DB20(v78, v79);
  v136 = v78;
  v104 = v0[10];
  v105 = v0[6];
  v106 = v0[4];
  static Logger.purchase.getter();
  sub_100161CD8(v106, v104);
  v107 = v105;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();

  v110 = os_log_type_enabled(v108, v109);
  v111 = v0[17];
  v112 = v0[12];
  v21 = v0[13];
  v113 = v0[10];
  if (v110)
  {
    v129 = v0[17];
    v114 = v0[6];
    v135 = v6;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v126 = v112;
    v117 = swift_slowAlloc();
    v140 = v117;
    *v115 = 138412546;
    v118 = *(v114 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
    *(v115 + 4) = v118;
    *v116 = v118;
    *(v115 + 12) = 2082;
    v119 = v118;
    v120 = sub_1001593A8();
    loga = v108;
    v122 = v121;
    sub_100161D3C(v113);
    v123 = sub_1001AD0D8(v120, v122, &v140);

    *(v115 + 14) = v123;
    _os_log_impl(&_mh_execute_header, loga, v109, "[%@][%{public}s] Created coordinator", v115, 0x16u);
    sub_100005518(v116, &unk_10059C250);

    sub_100005A00(v117);

    goto LABEL_6;
  }

  sub_100161D3C(v113);
  (*(v21 + 8))(v111, v112);
LABEL_21:

  v102 = v0[1];

  return v102(v136);
}

uint64_t sub_10015A298(uint64_t a1, void *a2)
{
  v3 = v2;
  v125 = type metadata accessor for Logger();
  v132 = *(v125 - 8);
  __chkstk_darwin(v125);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for PurchaseCandidate();
  v130 = *(v124 - 8);
  v8 = __chkstk_darwin(v124);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v129 = &v112 - v12;
  __chkstk_darwin(v11);
  v127 = &v112 - v13;
  v14 = objc_allocWithZone(AMSBuyParams);
  v15 = String._bridgeToObjectiveC()();
  v133 = [v14 initWithString:v15];

  v16 = *&v3[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_additionalBuyParams];
  v119 = a1;
  v126 = v7;
  v118 = v10;
  v115 = v3;
  if (v16)
  {
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    if (!v19)
    {
LABEL_6:
      if (v20 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v20;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          v19 = 0;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          goto LABEL_14;
        }

        v19 = *(v16 + 64 + 8 * v22);
        ++v21;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_80;
    }

    while (1)
    {
      v22 = v21;
LABEL_13:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = (*(v16 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      sub_10009F6D0(*(v16 + 56) + 32 * v26, v134);
      *&v135 = v29;
      *(&v135 + 1) = v28;
      sub_1000828A8(v134, &v136);

      v24 = v22;
LABEL_14:
      v138 = v135;
      v139[0] = v136;
      v139[1] = v137;
      if (!*(&v135 + 1))
      {
        break;
      }

      sub_1000828A8(v139, &v135);
      v30 = String._bridgeToObjectiveC()();

      sub_100005B60(&v135, *(&v136 + 1));
      [v133 setParameter:_bridgeAnythingToObjectiveC<A>(_:)() forKey:v30];

      swift_unknownObjectRelease();
      sub_100005A00(&v135);
      v21 = v24;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    v3 = v115;
    a1 = v119;
    v7 = v126;
    v10 = v118;
  }

  v114 = a2;
  v113 = String._bridgeToObjectiveC()();
  v32 = *&v3[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemIDs];
  v33 = *(v32 + 16);
  if (!v33)
  {
    v131 = _swiftEmptyArrayStorage;
LABEL_74:
    sub_100085D40(&unk_10059DC90);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v106 = v133;
    v107 = v113;
    [v133 setParameter:isa forKey:v113];

    v108 = [v114 ams_DSID];
    if (v108)
    {
      v109 = v108;
      v110 = [v108 stringValue];

      if (!v110)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = String._bridgeToObjectiveC()();
      }

      [v106 setParameter:v110 forKey:{AMSBuyParamPropertyDsid, v112}];
    }

    return v106;
  }

  v34 = 0;
  v117 = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey;
  v122 = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemMetadata;
  v35 = v32 + 32;
  v123 = (v132 + 8);
  v131 = _swiftEmptyArrayStorage;
  *&v31 = 138412546;
  v116 = v31;
  v36 = v127;
  v121 = v32;
  v120 = v33;
  v128 = v32 + 32;
  while (v34 < *(v32 + 16))
  {
    if (*(a1 + 16))
    {
      v132 = *(v35 + 8 * v34);
      v37 = sub_1000F2DCC(v132);
      if (v38)
      {
        v39 = v129;
        sub_100161CD8(*(a1 + 56) + *(v130 + 72) * v37, v129);
        sub_100161D98(v39, v36);
        if (*(v36 + 24))
        {
          static Logger.purchase.getter();
          sub_100161CD8(v36, v10);
          v40 = v3;
          v41 = v10;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *&v138 = v46;
            *v44 = v116;
            v47 = *&v3[v117];
            *(v44 + 4) = v47;
            *v45 = v47;
            *(v44 + 12) = 2082;
            v48 = v47;
            v49 = sub_1001593A8();
            v50 = v3;
            v52 = v51;
            sub_100161D3C(v41);
            v53 = sub_1001AD0D8(v49, v52, &v138);
            v3 = v50;
            a1 = v119;

            *(v44 + 14) = v53;
            _os_log_impl(&_mh_execute_header, v42, v43, "[%@][%{public}s] Attempting batch purchase", v44, 0x16u);
            sub_100005518(v45, &unk_10059C250);

            sub_100005A00(v46);

            v7 = v126;
          }

          else
          {

            sub_100161D3C(v41);
          }

          (*v123)(v7, v125);
          v10 = v41;
          v36 = v127;
          *&v138 = *(v127 + 4);
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v139[0] + 1) = &type metadata for String;
          *&v138 = v54;
          *(&v138 + 1) = v55;
          sub_1000828A8(&v138, &v135);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v134[0] = &_swiftEmptyDictionarySingleton;
          v57 = sub_1000EE808(0x41656C62616C6173, 0xED000064496D6164);
          v59 = *(&_swiftEmptyDictionarySingleton + 2);
          v60 = (v58 & 1) == 0;
          v61 = __OFADD__(v59, v60);
          v62 = v59 + v60;
          if (v61)
          {
            goto LABEL_82;
          }

          v63 = v58;
          if (*(&_swiftEmptyDictionarySingleton + 3) >= v62)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v104 = v57;
              sub_1001B0F98();
              v57 = v104;
            }
          }

          else
          {
            sub_1001ADE90(v62, isUniquelyReferenced_nonNull_native);
            v57 = sub_1000EE808(0x41656C62616C6173, 0xED000064496D6164);
            if ((v63 & 1) != (v64 & 1))
            {
              goto LABEL_86;
            }
          }

          v65 = v131;
          v66 = *&v134[0];
          if (v63)
          {
            v67 = (*(*&v134[0] + 56) + 32 * v57);
            sub_100005A00(v67);
            sub_1000828A8(&v135, v67);
          }

          else
          {
            *(*&v134[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
            v68 = v66[6] + 16 * v57;
            strcpy(v68, "salableAdamId");
            *(v68 + 14) = -4864;
            sub_1000828A8(&v135, (v66[7] + 32 * v57));
            v69 = v66[2];
            v61 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v61)
            {
              goto LABEL_83;
            }

            v66[2] = v70;
          }

          v71 = (v36 + *(v124 + 40));
          v72 = v71[1];
          if (v72)
          {
            v73 = *v71;
            *(&v139[0] + 1) = &type metadata for String;
            *&v138 = v73;
            *(&v138 + 1) = v72;
            sub_1000828A8(&v138, &v135);

            v74 = swift_isUniquelyReferenced_nonNull_native();
            *&v134[0] = v66;
            sub_1001B3A08(&v135, 6580598, 0xE300000000000000, v74);
            v66 = *&v134[0];
          }

          v75 = *&v3[v122];
          if (v75)
          {
            if (*(v75 + 16))
            {
              v76 = sub_1000F2DCC(v132);
              if (v77)
              {
                sub_10009F6D0(*(v75 + 56) + 32 * v76, &v138);
                sub_100085D40(&unk_10059DC90);
                if (swift_dynamicCast())
                {
                  v78 = v135 + 64;
                  v79 = 1 << *(v135 + 32);
                  if (v79 < 64)
                  {
                    v80 = ~(-1 << v79);
                  }

                  else
                  {
                    v80 = -1;
                  }

                  v81 = v80 & *(v135 + 64);
                  v82 = (v79 + 63) >> 6;
                  v132 = v135;

                  v83 = 0;
                  v112 = v78;
                  while (v81)
                  {
LABEL_58:
                    v86 = __clz(__rbit64(v81)) | (v83 << 6);
                    v87 = (*(v132 + 48) + 16 * v86);
                    v89 = *v87;
                    v88 = v87[1];
                    sub_10009F6D0(*(v132 + 56) + 32 * v86, v139);
                    *&v138 = v89;
                    *(&v138 + 1) = v88;
                    sub_10009F6D0(v139, &v135);
                    swift_bridgeObjectRetain_n();
                    v90 = swift_isUniquelyReferenced_nonNull_native();
                    *&v134[0] = v66;
                    v91 = sub_1000EE808(v89, v88);
                    v93 = v66[2];
                    v94 = (v92 & 1) == 0;
                    v61 = __OFADD__(v93, v94);
                    v95 = v93 + v94;
                    if (v61)
                    {
                      goto LABEL_84;
                    }

                    v96 = v92;
                    if (v66[3] >= v95)
                    {
                      if ((v90 & 1) == 0)
                      {
                        v101 = v91;
                        sub_1001B0F98();
                        v91 = v101;
                      }
                    }

                    else
                    {
                      sub_1001ADE90(v95, v90);
                      v91 = sub_1000EE808(v89, v88);
                      if ((v96 & 1) != (v97 & 1))
                      {
                        goto LABEL_86;
                      }
                    }

                    v65 = v131;
                    v66 = *&v134[0];
                    if (v96)
                    {
                      v84 = (*(*&v134[0] + 56) + 32 * v91);
                      sub_100005A00(v84);
                      sub_1000828A8(&v135, v84);
                    }

                    else
                    {
                      *(*&v134[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
                      v98 = (v66[6] + 16 * v91);
                      *v98 = v89;
                      v98[1] = v88;
                      sub_1000828A8(&v135, (v66[7] + 32 * v91));
                      v99 = v66[2];
                      v61 = __OFADD__(v99, 1);
                      v100 = v99 + 1;
                      if (v61)
                      {
                        goto LABEL_85;
                      }

                      v66[2] = v100;
                    }

                    v81 &= v81 - 1;
                    sub_100005518(&v138, &unk_10059E4A0);
                    v7 = v126;
                    v10 = v118;
                    v78 = v112;
                  }

                  while (1)
                  {
                    v85 = v83 + 1;
                    if (__OFADD__(v83, 1))
                    {
                      goto LABEL_81;
                    }

                    if (v85 >= v82)
                    {

                      v3 = v115;
                      a1 = v119;
                      v36 = v127;
                      break;
                    }

                    v81 = *(v78 + 8 * v85);
                    ++v83;
                    if (v81)
                    {
                      v83 = v85;
                      goto LABEL_58;
                    }
                  }
                }
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1001ACFA4(0, v65[2] + 1, 1, v65);
          }

          v103 = v65[2];
          v102 = v65[3];
          if (v103 >= v102 >> 1)
          {
            v65 = sub_1001ACFA4((v102 > 1), v103 + 1, 1, v65);
          }

          sub_100161D3C(v36);
          v65[2] = v103 + 1;
          v131 = v65;
          v65[v103 + 4] = v66;

          v32 = v121;
          v33 = v120;
        }

        else
        {
          sub_100161D3C(v36);
        }

        v35 = v128;
      }
    }

    if (++v34 == v33)
    {
      goto LABEL_74;
    }
  }

LABEL_80:
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015AF74(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v5 = sub_100085D40(&unk_10059E448);
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_10015B0A0, 0, 0);
}

uint64_t sub_10015B0A0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag;
  v0[44] = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag;
  v5 = *(v1 + v4 + 24);
  v6 = *(v1 + v4 + 32);
  sub_100005B60((v1 + v4), v5);
  v7 = [objc_allocWithZone(AMSPurchaseQueueConfiguration) initWithBag:{sub_1000C4BB0(v5, v6)}];
  v0[45] = v7;
  swift_unknownObjectRelease();
  [v7 setDelegate:v1];
  v8 = [objc_allocWithZone(AMSPurchaseQueue) initWithConfiguration:v7];
  v0[46] = v8;
  v9 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:0 buyParams:v3];
  v0[47] = v9;
  [v9 setAccount:v2];

  v10 = String._bridgeToObjectiveC()();

  [v9 setLogUUID:v10];

  v12 = sub_1001FBC04(*(v1 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_requestToken), v11);
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0xD000000000000012 && 0x8000000100451560 == v16)
  {

    goto LABEL_7;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_6:
    [v9 setSendBlindedData:1];
    sub_100085D40(&unk_10059DCD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100436FD0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    *(v18 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 56) = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setBuySignatureTypes:isa];

    v22 = [v9 buyParams];
    v23 = String._bridgeToObjectiveC()();
    sub_100085D40(&qword_10059E458);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100434480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v25;
    *(inited + 48) = &off_1005094B0;
    sub_1000F0060(inited);
    swift_setDeallocating();
    sub_100005518(inited + 32, &unk_10059E460);
    sub_100085D40(&unk_10059DCA0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 setObject:v26 forKeyedSubscript:v23];
  }

LABEL_7:
  v28 = v0[42];
  v27 = v0[43];
  v29 = v0[41];
  objc_opt_self();
  v30 = sub_10000479C();
  [v9 setClientInfo:v30];

  sub_100085D40(&qword_10059C4A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100435310;
  *(v31 + 32) = v9;
  sub_10009FAD4(0, &qword_10059E470);
  v32 = v9;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  v34 = [v8 enquePurchases:v33];
  v0[48] = v34;

  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_10015B69C;
  swift_continuation_init();
  v0[17] = v29;
  v35 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059E478);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v28 + 32))(v35, v27, v29);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015EB90;
  v0[13] = &unk_1005101C0;
  [v34 resultWithCompletion:?];
  (*(v28 + 8))(v35, v29);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015B69C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_10015BAD8;
  }

  else
  {
    v2 = sub_10015B7AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B7AC()
{
  v29 = *(v0 + 264);
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (*(v0 + 224))
  {
    v1 = &selRef_proxyForBundleID_;
    v2 = &selRef_dictionaryForPosting;
    do
    {
      sub_1000828A8((v0 + 200), (v0 + 232));
      sub_10009FAD4(0, &qword_10059E480);
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 272);
        v4 = [v3 v1[149]];
        if (v4)
        {
          v5 = v4;
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v6 = [v3 v2[97]];
          if (v6)
          {
            v7 = v6;
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (v8)
            {
              v9 = v8;
              v10 = (*(v0 + 296) + *(v0 + 352));
              v11 = v10[3];
              v12 = v10[4];
              sub_100005B60(v10, v11);
              v13 = v7;
              v15 = sub_1000C56EC(v11, v12, v14);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v17 = objc_opt_self();
              v18 = sub_1003BE8FC(v17, isa, v9, 0, v15);

              v20 = sub_10020F550(v18, v19);
              if (v20)
              {
                v21 = v20;
                sub_10009FAD4(0, &qword_10059E440);
                v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                sub_100154DA8(v22, sub_10016088C);
              }

              v1 = &selRef_proxyForBundleID_;
              v2 = &selRef_dictionaryForPosting;
              goto LABEL_5;
            }
          }
        }

        else
        {
        }
      }

LABEL_5:
      NSFastEnumerationIterator.next()();
    }

    while (*(v0 + 224));
  }

  v24 = *(v0 + 376);
  v23 = *(v0 + 384);
  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

  v27 = *(v0 + 8);

  return v27(_swiftEmptyArrayStorage);
}

uint64_t sub_10015BAD8()
{
  v1 = v0[48];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_10015BB84(void *a1, uint64_t a2)
{
  v115 = type metadata accessor for PurchaseCandidate();
  v5 = __chkstk_darwin(v115);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v111 = &v109 - v9;
  v10 = __chkstk_darwin(v8);
  v116 = &v109 - v11;
  __chkstk_darwin(v10);
  v13 = &v109 - v12;
  v121 = type metadata accessor for Logger();
  v14 = *(v121 - 8);
  v15 = __chkstk_darwin(v121);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v114 = &v109 - v19;
  v20 = __chkstk_darwin(v18);
  v118 = &v109 - v21;
  __chkstk_darwin(v20);
  v23 = &v109 - v22;
  static Logger.purchase.getter();
  v120 = a1;
  sub_100161CD8(a1, v13);
  v24 = v2;
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v117 = v14;
  v109 = v17;
  v112 = a2;
  v113 = v7;
  v119 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v122 = v30;
    *v28 = 138412802;
    v31 = *&v24[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
    *(v28 + 4) = v31;
    *v29 = v31;
    *(v28 + 12) = 2082;
    v32 = v31;
    v33 = sub_1001593A8();
    v35 = v34;
    sub_100161D3C(v13);
    v36 = sub_1001AD0D8(v33, v35, &v122);
    v37 = v121;

    *(v28 + 14) = v36;
    *(v28 + 22) = 2114;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 24) = v38;
    v29[1] = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%@][%{public}s] Purchase failed due to error: %{public}@", v28, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
    v39 = v117;

    sub_100005A00(v30);
    v40 = v120;

    v41 = *(v39 + 8);
    v41(v23, v37);
  }

  else
  {

    sub_100161D3C(v13);
    v41 = *(v14 + 8);
    v41(v23, v121);
    v40 = v120;
  }

  v42 = v116;
  v43 = *(v40 + *(v115 + 36));
  v44 = v118;
  v45 = v119;
  if (v43)
  {
    v46 = sub_1002CC9D0(v43);
    if (v46)
    {
      v47 = v46;
      v48 = sub_1001FEEC8(v46);

      if (!v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = String._bridgeToObjectiveC()();
      }

      v49 = v40[2];
      if (v49)
      {
        v115 = v40[1];
        static Logger.purchase.getter();
        sub_100161CD8(v40, v42);
        v50 = v45;

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v110 = v41;
          v54 = v53;
          v55 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *v54 = 138412802;
          v56 = *&v50[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
          *(v54 + 4) = v56;
          *v55 = v56;
          v57 = v55;
          *(v54 + 12) = 2082;
          v58 = v56;
          v59 = sub_1001593A8();
          v61 = v60;
          sub_100161D3C(v42);
          v62 = sub_1001AD0D8(v59, v61, &v122);

          *(v54 + 14) = v62;
          *(v54 + 22) = 2080;
          *(v54 + 24) = sub_1001AD0D8(v115, v49, &v122);
          _os_log_impl(&_mh_execute_header, v51, v52, "[%@][%{public}s] Removing vid for bundleID: %s", v54, 0x20u);
          sub_100005518(v57, &unk_10059C250);

          swift_arrayDestroy();
          v45 = v119;
          v40 = v120;

          v41 = v110;

          v41(v118, v121);
        }

        else
        {

          sub_100161D3C(v42);
          v41(v44, v121);
        }

        v63 = [objc_opt_self() defaultWorkspace];
        if (v63)
        {
          v64 = v63;
          v65 = String._bridgeToObjectiveC()();
          [v64 removeDeviceIdentifierForVendorName:v48 bundleIdentifier:v65];

          v48 = v65;
        }
      }
    }
  }

  v66 = v40[3];
  if (v66)
  {
    v67 = v66;
    v68 = v114;
    static Logger.purchase.getter();
    v69 = v40;
    v70 = v111;
    sub_100161CD8(v69, v111);
    v71 = v45;
    v72 = v67;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    v75 = os_log_type_enabled(v73, v74);
    v110 = v41;
    v119 = v72;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v76 = 138412802;
      v78 = *&v71[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
      *(v76 + 4) = v78;
      *v77 = v78;
      *(v76 + 12) = 2082;
      v79 = v78;
      v80 = sub_1001593A8();
      v82 = v81;
      sub_100161D3C(v70);
      v83 = sub_1001AD0D8(v80, v82, &v122);

      *(v76 + 14) = v83;
      *(v76 + 22) = 2082;
      v84 = [v119 identity];
      v85 = [v84 bundleID];

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = sub_1001AD0D8(v86, v88, &v122);
      v90 = v121;

      *(v76 + 24) = v89;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%@][%{public}s] Canceling: %{public}s", v76, 0x20u);
      sub_100005518(v77, &unk_10059C250);

      swift_arrayDestroy();
      v72 = v119;

      v110(v114, v90);
    }

    else
    {

      sub_100161D3C(v70);
      v41(v68, v121);
    }

    v91 = v113;
    v92 = _convertErrorToNSError(_:)();
    v122 = 0;
    v93 = [v72 cancelForReason:v92 client:1 error:&v122];

    if (v93)
    {
      v94 = v122;
    }

    else
    {
      v95 = v122;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v96 = v109;
      static Logger.purchase.getter();
      sub_100161CD8(v120, v91);
      v97 = v71;
      swift_errorRetain();
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v122 = v120;
        *v100 = 138412802;
        v102 = *&v97[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
        *(v100 + 4) = v102;
        *v101 = v102;
        *(v100 + 12) = 2082;
        v103 = v102;
        v104 = sub_1001593A8();
        v106 = v105;
        sub_100161D3C(v91);
        v107 = sub_1001AD0D8(v104, v106, &v122);

        *(v100 + 14) = v107;
        *(v100 + 22) = 2114;
        swift_errorRetain();
        v108 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 24) = v108;
        v101[1] = v108;
        _os_log_impl(&_mh_execute_header, v98, v99, "[%@][%{public}s] Coordinator cancelation failed with error: %{public}@", v100, 0x20u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();

        sub_100005A00(v120);
      }

      else
      {

        sub_100161D3C(v91);
      }

      v110(v96, v121);
    }
  }
}

uint64_t sub_10015C6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseCandidate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = sub_100161D3C(v7))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_100161CD8(*(a1 + 56) + *(v5 + 72) * (v15 | (v14 << 6)), v7);
    sub_10015BB84(v7, a2);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(a1 + 64 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Logger();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for PurchaseCandidate();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10015C984, 0, 0);
}

uint64_t sub_10015C984(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v8[4] = _swiftEmptyArrayStorage;
  v9 = v8[8];
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v8[21] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_29:
    v73 = _swiftEmptyArrayStorage;
LABEL_30:

    v79 = v8[1];

    return v79(v73);
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[21] = v10;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v10 < 1)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = 0;
  v8[22] = OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey;
  while (1)
  {
    v8[23] = v11;
    v24 = v8[8];
    v25 = (v24 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v24 + 8 * v11 + 32);
    v27 = v25;
    v8[24] = v25;
    v28 = sub_1003860A0(v25, v26);
    if (v28)
    {
      v29 = v8[10];
      v30 = v28;
      v31 = [v28 longLongValue];

      if (*(v29 + 16))
      {
        v32 = sub_1000F2DCC(v31);
        if (v33)
        {
          break;
        }
      }
    }

    v57 = v8[11];
    static Logger.purchase.getter();
    v58 = v57;
    v59 = v27;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v12 = v8[22];
      v13 = v8[11];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = *(v13 + v12);
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2114;
      v17 = v16;
      v19 = sub_1003860A0(v59, v18);
      *(v14 + 14) = v19;
      v15[1] = v19;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%@][%{public}@] Skipping purchase due to missing purchase candidate", v14, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      v20 = v59;
    }

    else
    {
      v20 = v60;
      v60 = v59;
    }

    v22 = v8[13];
    v21 = v8[14];
    v23 = v8[12];

    (*(v22 + 8))(v21, v23);
LABEL_7:
    v11 = v8[23] + 1;
    if (v11 == v8[21])
    {
      v73 = v8[4];
      goto LABEL_30;
    }
  }

  v34 = v8[19];
  v35 = v8[20];
  sub_100161CD8(*(v8[10] + 56) + *(v8[17] + 72) * v32, v34);
  sub_100161D98(v34, v35);
  v36 = *(v35 + 24);
  v8[25] = v36;
  v37 = v8[11];
  if (!v36)
  {
    v38 = v8[20];
    v39 = v8[18];
    static Logger.purchase.getter();
    sub_100161CD8(v38, v39);
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v85 = v42;
      v43 = v8[22];
      v44 = v8[18];
      v45 = v8[11];
      v46 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v8[5] = v84;
      *v46 = 138412546;
      v47 = *(v45 + v43);
      *(v46 + 4) = v47;
      *v83 = v47;
      *(v46 + 12) = 2082;
      v8[2] = 5849665;
      v8[3] = 0xE300000000000000;
      v48 = v47;
      UUID.uuidString.getter();
      sub_1001C0808(8);

      v49 = static String._fromSubstring(_:)();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v53._countAndFlagsBits = 47;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v54 = v8[18];
      if (*(v44 + 16))
      {
        v55 = *(v54 + 8);
        v56 = *(v44 + 16);
      }

      else
      {
        v55 = 0;
        v56 = 0xE000000000000000;
      }

      v66 = v8[13];
      v81 = v8[12];
      v82 = v8[15];

      v67._countAndFlagsBits = v55;
      v67._object = v56;
      String.append(_:)(v67);

      v68._countAndFlagsBits = 58;
      v68._object = 0xE100000000000000;
      String.append(_:)(v68);
      v8[6] = *(v54 + 32);
      v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v69);

      v71 = v8[2];
      v70 = v8[3];
      sub_100161D3C(v54);
      v72 = sub_1001AD0D8(v71, v70, v8 + 5);

      *(v46 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v41, v85, "[%@][%{public}s] Skipping purchase import missing coordinator", v46, 0x16u);
      sub_100005518(v83, &unk_10059C250);

      sub_100005A00(v84);

      (*(v66 + 8))(v82, v81);
    }

    else
    {
      v62 = v8[18];
      v63 = v8[15];
      v64 = v8[12];
      v65 = v8[13];

      sub_100161D3C(v62);
      (*(v65 + 8))(v63, v64);
    }

    sub_100161D3C(v8[20]);
    goto LABEL_7;
  }

  v74 = v8[20];
  v75 = v8[9];
  v76 = swift_task_alloc();
  v8[26] = v76;
  v76[2] = v37;
  v76[3] = v74;
  v76[4] = v36;
  v76[5] = v27;
  v76[6] = v75;
  v77 = v36;
  v78 = swift_task_alloc();
  v8[27] = v78;
  a8 = sub_100085D40(&qword_10059E420);
  *v78 = v8;
  v78[1] = sub_10015D0C4;
  a6 = sub_100161E10;
  v10 = (v8 + 7);
  a5 = 0x8000000100451510;
  a2 = 0;
  a3 = 0;
  a4 = 0xD000000000000027;
  a7 = v76;

  return withCheckedContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10015D0C4()
{

  return _swift_task_switch(sub_10015D1DC, 0, 0);
}

uint64_t sub_10015D1DC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  sub_100154DA8(v0[7], sub_100160A2C);

  sub_100161D3C(v3);
  v4 = v0[23] + 1;
  if (v4 == v0[21])
  {
LABEL_2:
    v5 = v0[4];

    v6 = v0[1];

    return v6(v5);
  }

  while (1)
  {
    v0[23] = v4;
    v20 = v0[8];
    v21 = (v20 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v20 + 8 * v4 + 32);
    v23 = v21;
    v0[24] = v21;
    v24 = sub_1003860A0(v21, v22);
    if (v24)
    {
      v25 = v0[10];
      v26 = v24;
      v27 = [v24 longLongValue];

      if (*(v25 + 16))
      {
        v28 = sub_1000F2DCC(v27);
        if (v29)
        {
          break;
        }
      }
    }

    v53 = v0[11];
    static Logger.purchase.getter();
    v54 = v53;
    v55 = v23;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v8 = v0[22];
      v9 = v0[11];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = *(v9 + v8);
      *(v10 + 4) = v12;
      *v11 = v12;
      *(v10 + 12) = 2114;
      v13 = v12;
      v15 = sub_1003860A0(v55, v14);
      *(v10 + 14) = v15;
      v11[1] = v15;
      _os_log_impl(&_mh_execute_header, v56, v57, "[%@][%{public}@] Skipping purchase due to missing purchase candidate", v10, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      v16 = v55;
    }

    else
    {
      v16 = v56;
      v56 = v55;
    }

    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];

    (*(v18 + 8))(v17, v19);
LABEL_8:
    v4 = v0[23] + 1;
    if (v4 == v0[21])
    {
      goto LABEL_2;
    }
  }

  v30 = v0[19];
  v31 = v0[20];
  sub_100161CD8(*(v0[10] + 56) + *(v0[17] + 72) * v28, v30);
  sub_100161D98(v30, v31);
  v32 = *(v31 + 24);
  v0[25] = v32;
  v33 = v0[20];
  if (!v32)
  {
    v34 = v0[18];
    v35 = v0[11];
    static Logger.purchase.getter();
    sub_100161CD8(v33, v34);
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v78 = v38;
      v39 = v0[22];
      v40 = v0[18];
      v41 = v0[11];
      v42 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v0[5] = v77;
      *v42 = 138412546;
      v43 = *(v41 + v39);
      *(v42 + 4) = v43;
      *v76 = v43;
      *(v42 + 12) = 2082;
      v0[2] = 5849665;
      v0[3] = 0xE300000000000000;
      v44 = v43;
      UUID.uuidString.getter();
      sub_1001C0808(8);

      v45 = static String._fromSubstring(_:)();
      v47 = v46;

      v48._countAndFlagsBits = v45;
      v48._object = v47;
      String.append(_:)(v48);

      v49._countAndFlagsBits = 47;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v50 = v0[18];
      if (*(v40 + 16))
      {
        v51 = *(v50 + 8);
        v52 = *(v40 + 16);
      }

      else
      {
        v51 = 0;
        v52 = 0xE000000000000000;
      }

      v62 = v0[15];
      v63 = v0[13];
      v79 = v0[12];

      v64._countAndFlagsBits = v51;
      v64._object = v52;
      String.append(_:)(v64);

      v65._countAndFlagsBits = 58;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      v0[6] = *(v50 + 32);
      v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v66);

      v68 = v0[2];
      v67 = v0[3];
      sub_100161D3C(v50);
      v69 = sub_1001AD0D8(v68, v67, v0 + 5);

      *(v42 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v37, v78, "[%@][%{public}s] Skipping purchase import missing coordinator", v42, 0x16u);
      sub_100005518(v76, &unk_10059C250);

      sub_100005A00(v77);

      (*(v63 + 8))(v62, v79);
    }

    else
    {
      v58 = v0[18];
      v59 = v0[15];
      v60 = v0[12];
      v61 = v0[13];

      sub_100161D3C(v58);
      (*(v61 + 8))(v59, v60);
    }

    sub_100161D3C(v0[20]);
    goto LABEL_8;
  }

  v70 = v0[11];
  v71 = v0[9];
  v72 = swift_task_alloc();
  v0[26] = v72;
  v72[2] = v70;
  v72[3] = v33;
  v72[4] = v32;
  v72[5] = v23;
  v72[6] = v71;
  v73 = v32;
  v74 = swift_task_alloc();
  v0[27] = v74;
  v75 = sub_100085D40(&qword_10059E420);
  *v74 = v0;
  v74[1] = sub_10015D0C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000027, 0x8000000100451510, sub_100161E10, v72, v75);
}

uint64_t sub_10015DA78(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_100155098();
}

void sub_10015DB20(void *a1, uint64_t a2)
{
  v149 = a1;
  v4 = type metadata accessor for PurchaseCandidate();
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v133 - v10;
  __chkstk_darwin(v9);
  v13 = &v133 - v12;
  v14 = type metadata accessor for Logger();
  v150 = *(v14 - 8);
  v151 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v133 - v19;
  __chkstk_darwin(v18);
  v147 = &v133 - v21;
  v22 = sub_100085D40(&qword_10059CE90);
  v23 = __chkstk_darwin(v22 - 8);
  v145 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v144 = &v133 - v26;
  v27 = __chkstk_darwin(v25);
  v146 = &v133 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v133 - v30;
  __chkstk_darwin(v29);
  v148 = &v133 - v32;
  v33 = *(v5 + 44);
  v152 = a2;
  v34 = *(a2 + v33);
  if (!v34 || (v35 = sub_1002CC9D0(v34)) == 0)
  {
LABEL_8:
    static Logger.purchase.getter();
    sub_100161CD8(v152, v8);
    v50 = v2;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v153 = v55;
      *v53 = 138412546;
      v56 = *&v50[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
      *(v53 + 4) = v56;
      *v54 = v56;
      *(v53 + 12) = 2082;
      v57 = v56;
      v58 = sub_1001593A8();
      v60 = v59;
      sub_100161D3C(v8);
      v61 = sub_1001AD0D8(v58, v60, &v153);

      *(v53 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%@][%{public}s] Metadata missing platform attributes", v53, 0x16u);
      sub_100005518(v54, &unk_10059C250);

      sub_100005A00(v55);
    }

    else
    {

      sub_100161D3C(v8);
    }

    (*(v150 + 8))(v17, v151);
    return;
  }

  v36 = v35;
  v143 = sub_10037DEF4(v35);
  if (!v143)
  {

    goto LABEL_8;
  }

  if (sub_100248F9C(v149))
  {
    static Logger.purchase.getter();
    sub_100161CD8(v152, v11);
    v37 = v2;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v142 = v36;
      v43 = v42;
      v153 = v42;
      *v40 = 138412546;
      v44 = *&v37[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
      *(v40 + 4) = v44;
      *v41 = v44;
      *(v40 + 12) = 2082;
      v45 = v44;
      v46 = sub_1001593A8();
      v48 = v47;
      sub_100161D3C(v11);
      v49 = sub_1001AD0D8(v46, v48, &v153);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@][%{public}s] Already has a placeholder", v40, 0x16u);
      sub_100005518(v41, &unk_10059C250);

      sub_100005A00(v43);
    }

    else
    {

      sub_100161D3C(v11);
    }

    (*(v150 + 8))(v20, v151);
  }

  else
  {
    v62 = v143;
    v63 = sub_1001FEEC8(v143);
    v64 = v63;
    v65 = v63;
    v142 = v36;
    if (!v63)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = String._bridgeToObjectiveC()();
      v36 = v142;
    }

    v138 = v65;
    v141 = *(v152 + 32);
    v66 = v63;
    v67 = sub_1002CCA54(v36);
    v68 = v67;
    v69 = v67;
    if (!v67)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = String._bridgeToObjectiveC()();
    }

    v137 = v69;
    v139 = v68;
    v70 = v67;
    v71 = sub_1001FEED4(v62);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = objc_allocWithZone(AMSMediaArtwork);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v74 = [v72 initWithDictionary:isa];

    v75 = [v74 URLWithSize:AMSMediaArtworkCropStyleBoundedBox cropStyle:AMSMediaArtworkFormatPNG format:{128.0, 128.0}];
    if (v75)
    {
      v76 = v75;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = type metadata accessor for URL();
      (*(*(v77 - 8) + 56))(v31, 0, 1, v77);
    }

    else
    {
      v78 = type metadata accessor for URL();
      (*(*(v78 - 8) + 56))(v31, 1, 1, v78);
    }

    v79 = v146;
    v140 = v64;
    v80 = v31;
    v81 = v148;
    sub_100161EB4(v80, v148);
    v82 = v147;
    static Logger.purchase.getter();
    sub_100161CD8(v152, v13);
    sub_100161F24(v81, v79);
    v83 = v2;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    v135 = v85;
    v86 = os_log_type_enabled(v84, v85);
    v87 = v143;
    v136 = v83;
    if (v86)
    {
      v134 = v74;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v88 = 138412802;
      v90 = v89;
      v91 = *&v83[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
      *(v88 + 4) = v91;
      *v89 = v91;
      *(v88 + 12) = 2082;
      v92 = v91;
      v93 = sub_1001593A8();
      v94 = v79;
      v96 = v95;
      sub_100161D3C(v13);
      v97 = sub_1001AD0D8(v93, v96, &v153);

      *(v88 + 14) = v97;
      *(v88 + 22) = 2080;
      v98 = v144;
      sub_100161F24(v94, v144);
      v99 = type metadata accessor for URL();
      v100 = *(v99 - 8);
      if ((*(v100 + 48))(v98, 1, v99) == 1)
      {
        sub_100005518(v98, &qword_10059CE90);
        v101 = 0xE200000000000000;
        v102 = 16718;
      }

      else
      {
        v102 = URL.absoluteString.getter();
        v101 = v104;
        (*(v100 + 8))(v98, v99);
      }

      sub_100005518(v146, &qword_10059CE90);
      v105 = sub_1001AD0D8(v102, v101, &v153);

      *(v88 + 24) = v105;
      _os_log_impl(&_mh_execute_header, v84, v135, "[%@][%{public}s] Found metadata. artworkURL: %s", v88, 0x20u);
      sub_100005518(v90, &unk_10059C250);

      swift_arrayDestroy();

      (*(v150 + 8))(v147, v151);
      v87 = v143;
      v81 = v148;
      v103 = v134;
    }

    else
    {

      sub_100005518(v79, &qword_10059CE90);
      sub_100161D3C(v13);
      (*(v150 + 8))(v82, v151);
      v103 = v74;
    }

    v106 = [objc_allocWithZone(PlaceholderBuilder) init];
    v107 = v145;
    sub_100161F24(v81, v145);
    v108 = type metadata accessor for URL();
    v109 = *(v108 - 8);
    v111 = 0;
    if ((*(v109 + 48))(v107, 1, v108) != 1)
    {
      URL._bridgeToObjectiveC()(v110);
      v111 = v112;
      (*(v109 + 8))(v107, v108);
    }

    sub_1001FBBC8(v106, v111);

    v113 = v137;
    sub_1001FBC18(v106, v137);

    v114 = v138;
    sub_1001FBBF0(v106, v138);

    sub_1002FFC38(v106, *&v136[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey]);
    sub_1002FFC2C(v106, 1);
    sub_1002FFC4C(v106, 0);
    v115 = [objc_allocWithZone(MIStoreMetadata) init];
    v116 = v142;
    v117 = sub_1001FEEC8(v142);
    if (!v117)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = String._bridgeToObjectiveC()();
    }

    [v115 setArtistName:v117];

    v118 = v140;
    [v115 setSoftwareVersionBundleID:v140];

    v119 = v139;
    [v115 setItemName:v139];

    v120 = objc_allocWithZone(NSNumber);
    v121 = [v120 initWithLongLong:v141];
    [v115 setItemID:v121];

    v122 = *v152;
    v123 = [*v152 ams_DSID];
    [v115 setPurchaserID:v123];

    v124 = [v122 ams_altDSID];
    [v115 setAltDSID:v124];

    v125 = String._bridgeToObjectiveC()();
    [v115 setSourceApp:v125];

    sub_1002FFC58(v106, v115);
    v153 = 0;
    v126 = sub_1002FE870(v106, &v153);
    v127 = v153;
    if (v126)
    {
      v128 = v126;
      v153 = 0;
      v129 = v127;
      if (sub_10024A138(v149, v128, &v153))
      {
        v130 = v153;
        sub_100005518(v81, &qword_10059CE90);

        return;
      }

      v132 = v153;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v115 = v87;
      v87 = v103;
      v103 = v106;
      v106 = v128;
    }

    else
    {
      v131 = v153;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_100005518(v81, &qword_10059CE90);
  }
}

void sub_10015EA14(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_10009FAD4(0, &qword_10059D030);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [a1 connection];
  v8 = sub_1002D3F5C(ObjCClassFromMetadata, v7, a2);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v8 firstMemoryEntityWithProperties:isa];

  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = sub_10040908C(v12);
      if (v14)
      {
        v15 = v14;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {

        v10 = 0;
        v17 = 0;
      }
    }

    else
    {

      v10 = 0;
      v17 = 1;
    }
  }

  else
  {

    v17 = 1;
  }

  *a3 = v10;
  a3[1] = v17;
}

void sub_10015EBA4(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_100085D40(a4);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v8 = a2;
    sub_100085D40(a4);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10015EC54(uint64_t a1, void *a2, uint64_t a3, void *a4, id *a5, uint64_t a6)
{
  v123 = a4;
  v124 = a6;
  v128 = a5;
  v9 = sub_100085D40(&unk_10059E430);
  v127 = *(v9 - 8);
  v125 = v127[8];
  __chkstk_darwin(v9);
  v126 = &v116 - v10;
  v122 = type metadata accessor for PurchaseCandidate();
  v11 = __chkstk_darwin(v122);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v129 = &v116 - v15;
  __chkstk_darwin(v14);
  v17 = &v116 - v16;
  v18 = type metadata accessor for Logger();
  v132 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v121 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v120 = &v116 - v22;
  __chkstk_darwin(v21);
  v24 = &v116 - v23;
  static Logger.purchase.getter();
  v131 = a3;
  sub_100161CD8(a3, v17);
  v25 = a2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v130 = v18;
  v119 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v118 = a1;
    v30 = v29;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v117 = v9;
    v33 = v32;
    aBlock[0] = v32;
    *v30 = 138412546;
    v34 = *&v25[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey];
    *(v30 + 4) = v34;
    *v31 = v34;
    *(v30 + 12) = 2082;
    v35 = v34;
    v36 = sub_1001593A8();
    v38 = v37;
    sub_100161D3C(v17);
    v39 = sub_1001AD0D8(v36, v38, aBlock);

    *(v30 + 14) = v39;
    v40 = v27;
    v41 = qword_10059DFF0 + 16;
    _os_log_impl(&_mh_execute_header, v26, v40, "[%@][%{public}s] Attempting purchase import", v30, 0x16u);
    sub_100005518(v31, &unk_10059C250);
    v42 = v130;

    sub_100005A00(v33);
    v9 = v117;

    a1 = v118;

    (*(v132 + 8))(v24, v42);
  }

  else
  {

    sub_100161D3C(v17);
    (*(v132 + 8))(v24, v18);
    v41 = &qword_10059DFF0[2];
  }

  v43 = *&v25[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag + 24];
  v44 = *&v25[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag + 32];
  v45 = sub_100005B60(&v25[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_bag], v43);
  v46 = sub_1000C56EC(v43, v44, v45);
  v47 = [objc_allocWithZone(PurchaseInfo) initWithBag:v46];

  [v47 setCoordinator:v123];
  v48 = v131;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v47 setExternalID:isa];

  v123 = *&v25[v41[108]];
  [v47 setBatchLogKey:?];
  [v47 setLogCode:@"ABY"];
  [v47 setArcade:1];
  v50 = v128;
  v52 = sub_100386060(v128, v51);
  [v47 setBundleID:v52];

  [v47 setAccount:*v48];
  [v47 setClientType:0];
  v54 = sub_1003860A0(v50, v53);
  if (v54)
  {
    v56 = v54;
    [v47 setItemID:v54];
  }

  v57 = sub_1003860B4(v50, v55);
  if (v57)
  {
    v59 = v57;
    [v47 setItemName:v57];
  }

  v60 = a1;
  v61 = sub_1001FBC04(v50, v58);
  if (v61)
  {
    v62 = v61;
    [v47 setVendorName:v61];
  }

  v63 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:1];
  [v47 setMetricsType:v63];

  [v47 setPurchaseType:0];
  [v47 setCoordinatorIntent:1];
  [v47 setCoordinatorImportance:3];
  [v47 setBuyParams:v124];
  objc_opt_self();
  v64 = sub_10000479C();
  [v47 setClientInfo:v64];

  [v47 setRequestToken:*&v25[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_requestToken]];
  [v47 updateGeneratedProperties];
  v65 = sub_100281D24(objc_allocWithZone(PurchaseBatch), v47);
  v66 = v126;
  v67 = v127;
  (v127[2])(v126, v60, v9);
  v68 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v69 = swift_allocObject();
  (v67[4])(&v69[v68], v66, v9);
  aBlock[4] = sub_100161E20;
  aBlock[5] = v69;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1214;
  aBlock[3] = &unk_100510198;
  v70 = _Block_copy(aBlock);

  sub_100282F98(v65, v70);
  _Block_release(v70);
  sub_100085D40(&qword_10059C4A0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100435310;
  *(v71 + 32) = v50;
  v72 = objc_allocWithZone(PurchaseImportTask);
  sub_10009FAD4(0, &qword_10059E440);
  v73 = v50;
  v74 = v47;
  v75 = v65;
  v76 = Array._bridgeToObjectiveC()().super.isa;

  v77 = sub_100223AA0(v72, v76, v74, v75);

  aBlock[0] = 0;
  v128 = v77;
  if ([v25 runSubTask:v77 returningError:aBlock])
  {
    v78 = aBlock[0];
    v79 = v120;
    static Logger.purchase.getter();
    sub_100161CD8(v131, v129);
    v80 = v25;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v130;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v127 = v75;
      v88 = v87;
      aBlock[0] = v87;
      *v85 = 138412546;
      v89 = v123;
      *(v85 + 4) = v123;
      *v86 = v89;
      *(v85 + 12) = 2082;
      v90 = v89;
      v91 = v129;
      v92 = sub_1001593A8();
      v93 = v132;
      v95 = v94;
      sub_100161D3C(v91);
      v96 = sub_1001AD0D8(v92, v95, aBlock);

      *(v85 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v81, v82, "[%@][%{public}s] Purchase import succeeded", v85, 0x16u);
      sub_100005518(v86, &unk_10059C250);

      sub_100005A00(v88);

      return (*(v93 + 8))(v120, v130);
    }

    else
    {

      sub_100161D3C(v129);
      return (*(v132 + 8))(v79, v84);
    }
  }

  else
  {
    v127 = v75;
    v98 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock[0] = _swiftEmptyArrayStorage;
    CheckedContinuation.resume(returning:)();
    v99 = v121;
    static Logger.purchase.getter();
    v100 = v119;
    sub_100161CD8(v131, v119);
    v101 = v25;
    swift_errorRetain();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      aBlock[0] = v106;
      *v104 = 138412802;
      v107 = v123;
      *(v104 + 4) = v123;
      *v105 = v107;
      *(v104 + 12) = 2082;
      v108 = v107;
      v109 = sub_1001593A8();
      v111 = v110;
      sub_100161D3C(v100);
      v112 = sub_1001AD0D8(v109, v111, aBlock);

      *(v104 + 14) = v112;
      *(v104 + 22) = 2112;
      swift_errorRetain();
      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 24) = v113;
      v105[1] = v113;
      _os_log_impl(&_mh_execute_header, v102, v103, "[%@][%{public}s] Failed to purchase import error: %@", v104, 0x20u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      sub_100005A00(v106);

      v114 = *(v132 + 8);
      v115 = v121;
    }

    else
    {

      sub_100161D3C(v100);
      v114 = *(v132 + 8);
      v115 = v99;
    }

    return v114(v115, v130);
  }
}

uint64_t sub_10015F924(void *a1)
{
  v1 = [a1 items];
  sub_10009FAD4(0, &qword_10059C4C8);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100085D40(&unk_10059E430);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10015FB74(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10015FC68;

  return sub_100161578(v10);
}

uint64_t sub_10015FC68(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 48);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 48), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10015FFA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100086B9C;

  return sub_10015FB74(v2, v3, v4, v5, v6);
}

void *sub_100160070(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100085D40(&unk_10059E4D0);
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

void *sub_1001600F4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100085D40(&qword_10059C4A0);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10016017C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10016021C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&unk_10059E4F8, &qword_10059E4F0);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E4F0);
            v9 = sub_10018C0A0(v13, i, a3);
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
        type metadata accessor for SkannerEvent();
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

uint64_t sub_1001603AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&unk_10059E510, &qword_10059E508);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E508);
            v9 = sub_10018C128(v13, i, a3);
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
        sub_10009FAD4(0, &qword_10059C4D0);
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

uint64_t sub_10016054C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&qword_10059E528, &qword_10059E520);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E520);
            v9 = sub_10018C128(v13, i, a3);
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
        sub_10009FAD4(0, &qword_10059BDE8);
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

uint64_t sub_1001606EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&qword_10059E4E8, &qword_10059E4E0);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E4E0);
            v9 = sub_10018C128(v13, i, a3);
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
        sub_10009FAD4(0, &qword_10059D850);
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

uint64_t sub_10016088C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&unk_10059E490, &qword_10059E488);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E488);
            v9 = sub_10018C128(v13, i, a3);
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
        sub_10009FAD4(0, &qword_10059E440);
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

uint64_t sub_100160A2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100161FB0(&qword_10059E428, &qword_10059E420);
          for (i = 0; i != v6; ++i)
          {
            sub_100085D40(&qword_10059E420);
            v9 = sub_10018C128(v13, i, a3);
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
        sub_10009FAD4(0, &qword_10059C4C8);
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

void *sub_100160BCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_100160CCC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse] = 0;
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemIDs] = a1;
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_additionalBuyParams] = a2;
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_requestToken] = a3;
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey] = a4;
  sub_1000056D0(a5 + OBJC_IVAR___Bag_bag, v16);
  v12 = a3;
  v13 = a4;
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&qword_10059C3D8);
  swift_dynamicCast();
  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemMetadata] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100160DF0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse] = 0;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_5:
    *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemIDs] = v12;
    *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_itemMetadata] = a1;
    *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_requestToken] = a3;
    *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey] = a4;
    sub_1000056D0(a5 + OBJC_IVAR___Bag_bag, &v18);
    v15 = a3;
    v16 = a4;
    sub_100085D40(&qword_10059C3D0);
    sub_100085D40(&qword_10059C3D8);
    swift_dynamicCast();
    *&v5[OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_additionalBuyParams] = 0;
    v17.receiver = v5;
    v17.super_class = ObjectType;
    return objc_msgSendSuper2(&v17, "init");
  }

  v12 = sub_100160070(v11, 0);
  v13 = sub_100160BCC(&v18, v12 + 4, v11, a1);

  result = sub_10013CD30();
  if (v13 == v11)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100160FA8(uint64_t a1)
{
  sub_100085D40(&unk_10059D038);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100434780;
  *(v2 + 32) = xmmword_1004364F0;
  *(v2 + 48) = -40;
  sub_100085D40(&qword_10059C4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100436500;
  v4 = objc_allocWithZone(NSNumber);
  v5 = @"item_id";
  v6 = [v4 initWithLongLong:a1];
  v7 = [objc_opt_self() predicateWithProperty:v5 value:v6 comparisonType:1];

  *(v3 + 32) = v7;
  v8 = objc_opt_self();
  v9 = @"IFNULL(app_install.phase, 10)";
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 doesNotContainPredicateWithProperty:v9 values:isa];

  *(v3 + 40) = v11;
  return v3;
}

uint64_t sub_100161154()
{
  v1 = sub_100160FA8(v0[2]);
  sub_1000E0D28(v1);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() predicateMatchingAllPredicates:isa];
  v0[3] = v3;

  sub_100085D40(&unk_10059DCD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100436FD0;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 56) = v6;
  objc_opt_self();
  v0[4] = sub_1003C27BC();
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_100161328;

  return (sub_1001BAD78)(sub_100161F94, v7);
}

uint64_t sub_100161328(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 32);
  if (v2)
  {

    v9 = sub_100161510;
  }

  else
  {

    *(v7 + 56) = a2;
    *(v7 + 64) = a1;
    v9 = sub_1001614A4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001614A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_100161510()
{
  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t sub_100161578(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100085D40(&qword_10059E408);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001616A0, 0, 0);
}

uint64_t sub_1001616A0()
{
  v1 = v0[20];
  static Logger.purchase.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Attempting interactive authentication for batch purchase", v6, 0xCu);
    sub_100005518(v7, &unk_10059C250);
  }

  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[22];
  v19 = v0[19];

  (*(v10 + 8))(v11, v13);
  v16 = [objc_allocWithZone(InteractiveRequestPresenter) init];
  v0[27] = v16;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10016198C;
  swift_continuation_init();
  v0[17] = v14;
  v17 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059E410);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v15 + 32))(v17, v12, v14);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015F9BC;
  v0[13] = &unk_1005100D0;
  [v16 presentAuthenticateRequest:v19 resultHandler:?];
  (*(v15 + 8))(v17, v14);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016198C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100161B24;
  }

  else
  {
    v2 = sub_100161A9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100161A9C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100161B24()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100161BE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_10015DA78(v2, v3);
}

uint64_t type metadata accessor for PurchaseCandidate()
{
  result = qword_10059E588;
  if (!qword_10059E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100161CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseCandidate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161D3C(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseCandidate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100161D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseCandidate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161DFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100161E20(void *a1)
{
  sub_100085D40(&unk_10059E430);

  return sub_10015F924(a1);
}

uint64_t sub_100161E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100161EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CE90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059CE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161FB0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10016202C()
{
  sub_10009FAD4(319, &unk_10059DC50);
  if (v0 <= 0x3F)
  {
    sub_1000A470C();
    if (v1 <= 0x3F)
    {
      sub_100162144(319, &qword_10059E5A8, &qword_10059E5B0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          sub_100162144(319, &qword_10059E5B8, &unk_10059E5C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100162144(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_10009FAD4(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1001623B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKANEnvironmentHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__CFString *sub_100162408(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10023FD00(a1);
  if (v6)
  {
    v7 = v6;
    if ([v6 integerValue])
    {
      v8 = &off_100525588;
    }

    else
    {
      v8 = off_100525580;
    }

    v14 = *v8;
  }

  else
  {
    v9 = sub_10023FD0C(a1);
    if (v9)
    {

      objc_opt_self();
      if (sub_1003D5E00() && (v10 = sub_1003D5E54()) != 0 && (v10, (v11 = sub_1003D5E90()) != 0) && (v11, (v12 = sub_1003D5ECC()) != 0))
      {

        v13 = off_100525580;
      }

      else
      {
        v13 = &off_100525588;
      }

      v14 = *v13;
      v15 = *v13;
    }

    else
    {
      static Logger.skAdNetwork.getter();
      v16 = a1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = sub_10023FCF4(v16);
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Could not determine environment for impression for app: %@", v19, 0xCu);
        sub_100086A24(v20);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return v14;
}

uint64_t sub_10016268C(uint64_t result)
{
  if (result)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
    if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    objc_opt_self();
    result = sub_1003D5E00();
    if (result)
    {
      result = sub_1003D5E54();
      if (result)
      {

        result = sub_1003D5E90();
        if (result)
        {

          result = sub_1003D5ECC();
          if (result)
          {

            return 1;
          }
        }
      }
    }
  }

  return result;
}

id sub_100162794(id result)
{
  if (result)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
    if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    objc_opt_self();
    if (!sub_1003D5E00())
    {
      return 0;
    }

    result = sub_1003D5E54();
    if (result)
    {

      result = sub_1003D5E90();
      if (result)
      {

        result = sub_1003D5ECC();
        if (result)
        {

          result = sub_1003D5E90();
          if (result)
          {
            v7 = result;
            v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            return v8;
          }
        }
      }
    }
  }

  return result;
}