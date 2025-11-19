uint64_t sub_100046B28(uint64_t a1)
{
  v3 = type metadata accessor for CoalescedRecentItem();
  __chkstk_darwin(v3 - 8);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for RecentCall();
  v5 = *(v89 - 8);
  __chkstk_darwin(v89);
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for HistoryItem();
  v7 = *(v103 - 8);
  __chkstk_darwin(v103);
  v88 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000525C4(&qword_100124358);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - v10;
  v93 = type metadata accessor for RecentsCallItem();
  v12 = *(v93 - 8);
  v13 = __chkstk_darwin(v93);
  v87 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v68 - v15;
  v16 = sub_1000525C4(&qword_100124360);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v104 = type metadata accessor for GroupedHistoryItem();
  v19 = *(v104 - 8);
  v20 = __chkstk_darwin(v104);
  v99 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v105 = &v68 - v22;
  v79 = v1;
  v23 = *(v1 + 88);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));
  v25 = *(a1 + 16);
  v90 = sub_10005B4C4(_swiftEmptyArrayStorage, v25);
  result = v24;
  v98 = *(v24 + 16);
  if (v98)
  {
    v91 = v11;
    v27 = 0;
    v97 = result + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v96 = v19 + 16;
    v28 = (v19 + 48);
    v85 = (v19 + 32);
    v84 = (v7 + 88);
    v83 = enum case for HistoryItem.recentCall(_:);
    v75 = enum case for HistoryItem.message(_:);
    v76 = (v12 + 56);
    v69 = (v7 + 8);
    v78 = (v7 + 96);
    v74 = (v5 + 32);
    v73 = (v5 + 8);
    v82 = (v12 + 48);
    v81 = (v12 + 32);
    v72 = (v12 + 16);
    v70 = v12 + 8;
    v100 = a1 + 48;
    v101 = (v19 + 8);
    v71 = v12;
    v94 = result;
    v95 = v19;
    do
    {
      if (v27 >= *(result + 16))
      {
        goto LABEL_45;
      }

      v29 = *(v19 + 72);
      v102 = v27;
      result = (*(v19 + 16))(v105, v97 + v29 * v27, v104);
      if (!v25)
      {
        goto LABEL_3;
      }

      v30 = 0;
      while (2)
      {
        v31 = (v100 + 24 * v30);
        v32 = v30;
        while (1)
        {
          if (v32 >= v25)
          {
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_43;
          }

          v33 = *(v31 - 2);
          v34 = *(v31 - 1);
          v35 = *v31;
          v36 = swift_allocObject();
          *(v36 + 16) = v33;
          *(v36 + 24) = v34;
          if (v35 != 1)
          {
            break;
          }

          *&v106[25] = v103;
          *&v106[33] = sub_10005B5FC(&qword_100124368, &type metadata accessor for HistoryItem);
          sub_10005BEA4(&v106[1]);
          swift_retain_n();

          GroupedHistoryItem.mostRecentItem.getter();
          v33(v106, &v106[1]);

          v37 = v106[0];
          v38 = sub_100005964(&v106[1]);
          if (v37)
          {
            goto LABEL_16;
          }

LABEL_9:
          ++v32;
          v31 += 24;
          if (v30 == v25)
          {
            goto LABEL_3;
          }
        }

        v38 = swift_retain_n();
LABEL_16:
        __chkstk_darwin(v38);
        *(&v68 - 2) = sub_10005B560;
        *(&v68 - 1) = v36;

        GroupedHistoryItem.filtered(matching:)();

        if ((*v28)(v18, 1, v104) == 1)
        {

          result = sub_10000B880(v18, &qword_100124360);
          goto LABEL_9;
        }

        (*v85)(v99, v18, v104);
        v39 = v88;
        GroupedHistoryItem.mostRecentItem.getter();
        v40 = v103;
        v41 = (*v84)(v39, v103);
        if (v41 == v83)
        {
          (*v78)(v39, v40);
          (*v74)();
          v80 = RecentCall.chRecentCall.getter();
          v42 = GroupedHistoryItem.people.getter();
          v43 = RecentCall.isoCountryCode.getter();
          v45 = sub_10005B26C(v42, v43, v44);

          v46 = v77;
          sub_1000A52FC(v92, v45, v77);

          v47 = v80;
          sub_10009E49C(v80, v46, v45, v91);

          v48 = v46;
          v49 = v91;
          sub_10005B5A0(v48);
          (*v73)(v92, v89);
          v50 = v93;
        }

        else if (v41 == v75)
        {
          (*v78)(v39, v40);
          v51 = *v39;
          v49 = v91;
          sub_1000483D8(v51, v99, v91);

          v50 = v93;
          (*v76)(v49, 0, 1, v93);
        }

        else
        {
          v49 = v91;
          (*v76)(v91, 1, 1, v93);
          v52 = v39;
          v50 = v93;
          (*v69)(v52, v40);
        }

        if ((*v82)(v49, 1, v50) != 1)
        {
          v53 = v50;
          v54 = v86;
          v80 = *v81;
          (v80)(v86, v49, v53);
          (*v72)(v87, v54, v53);
          v55 = v90;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10005923C(v55);
            v55 = result;
          }

          if (v32 < v55[2])
          {
            v56 = &v55[v32];
            v57 = v56[4];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56[4] = v57;
            v90 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v57 = sub_100051C3C(0, v57[2] + 1, 1, v57, &qword_100124370, &unk_1000D6E50, &type metadata accessor for RecentsCallItem);
              v56[4] = v57;
            }

            v60 = v57[2];
            v59 = v57[3];
            if (v60 >= v59 >> 1)
            {
              v56[4] = sub_100051C3C(v59 > 1, v60 + 1, 1, v57, &qword_100124370, &unk_1000D6E50, &type metadata accessor for RecentsCallItem);
            }

            v61 = v71;
            v62 = v93;
            (*(v71 + 8))(v86, v93);
            (*v101)(v99, v104);
            v63 = v56[4];
            *(v63 + 16) = v60 + 1;
            result = (v80)(v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v87, v62);
            goto LABEL_33;
          }

          goto LABEL_46;
        }

        (*v101)(v99, v104);

        result = sub_10000B880(v49, &qword_100124358);
LABEL_33:
        if (v30 != v25)
        {
          continue;
        }

        break;
      }

LABEL_3:
      v27 = v102 + 1;
      (*v101)(v105, v104);
      result = v94;
      v19 = v95;
    }

    while (v27 != v98);
  }

  v64 = v90;
  v65 = v90[2];
  if (!v65)
  {
    return v64;
  }

  v66 = 0;
  for (i = 4; ; ++i)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10005923C(v64);
      v64 = result;
    }

    if (v66 >= v64[2])
    {
      break;
    }

    ++v66;
    sub_100047C08(&v64[i]);
    if (v65 == v66)
    {
      return v64;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100047790(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v4 = type metadata accessor for HistoryItem();
  v7[3] = v4;
  v7[4] = sub_10005B5FC(&qword_100124368, &type metadata accessor for HistoryItem);
  v5 = sub_10005BEA4(v7);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  LOBYTE(a2) = a2(v7);
  sub_100005964(v7);
  return a2 & 1;
}

uint64_t sub_100047864(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = sub_1000525C4(&qword_100124378);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  RecentsCallItem.date.getter();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    static Date.distantPast.getter();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10000B880(v7, &qword_100124378);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  RecentsCallItem.date.getter();
  if (v15(v5, 1, v8) == 1)
  {
    static Date.distantPast.getter();
    if (v15(v5, 1, v8) != 1)
    {
      sub_10000B880(v5, &qword_100124378);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v5, v8);
  }

  v16 = static Date.> infix(_:_:)();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  return v16 & 1;
}

Swift::Int sub_100047B24(void **a1)
{
  v2 = *(type metadata accessor for GroupedHistoryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10005A0A0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000532B8(v6, &type metadata accessor for GroupedHistoryItem, sub_100053CE0, sub_100053408);
  *a1 = v3;
  return result;
}

Swift::Int sub_100047C08(void **a1)
{
  v2 = *(type metadata accessor for RecentsCallItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000591F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000532B8(v6, &type metadata accessor for RecentsCallItem, sub_1000548E0, sub_1000537A8);
  *a1 = v3;
  return result;
}

void sub_100047CF0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v37 = a3;
  v34[1] = a1;
  v35 = a2;
  v3 = type metadata accessor for HandleType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v34 - v8;
  v10 = sub_1000525C4(&qword_100125FD0);
  __chkstk_darwin(v10 - 8);
  v12 = v34 - v11;
  v13 = type metadata accessor for Handle();
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Person.contacts.getter();
  v17 = v16;
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 32);
LABEL_6:
      v19 = v18;

      goto LABEL_23;
    }

    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  v20 = Person.handles.getter();
  sub_100048220(v20, v12);

  v21 = v36;
  if ((*(v36 + 48))(v12, 1, v13) != 1)
  {
    (*(v21 + 32))(v15, v12, v13);
    Handle.type.getter();
    (*(v4 + 104))(v7, enum case for HandleType.phoneNumber(_:), v3);
    sub_10005B5FC(&qword_1001243B0, &type metadata accessor for HandleType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v26 = *(v4 + 8);
    v26(v7, v3);
    v26(v9, v3);
    if (v39 == v38)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    Handle.value.getter();
    Handle.normalizedValue.getter();
    v29 = v28;
    v30 = String._bridgeToObjectiveC()();

    if (v29)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = [objc_allocWithZone(TUHandle) initWithType:v27 value:v30 normalizedValue:v31];

    if (v35)
    {
      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    v19 = [objc_opt_self() contactForHandle:v32 isoCountryCode:v33 metadataCache:0];

    (*(v36 + 8))(v15, v13);
    goto LABEL_23;
  }

  sub_10000B880(v12, &qword_100125FD0);
  if (qword_100124020 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v22 = type metadata accessor for Logger();
  sub_1000046F4(v22, qword_100128968);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "No handle or contact found for person", v25, 2u);
  }

  v19 = 0;
LABEL_23:
  *v37 = v19;
}

uint64_t sub_100048220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100098C38(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Handle();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1000482DC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10005AC10(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_100048358(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10005AC94(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1000483D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v155 = a1;
  v143 = a3;
  v4 = sub_1000525C4(&qword_100124358);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v131 = &v125 - v9;
  __chkstk_darwin(v8);
  v135 = &v125 - v10;
  v11 = type metadata accessor for RecentCall();
  v132 = *(v11 - 8);
  __chkstk_darwin(v11);
  v134 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecentsCallItem();
  v142 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v126 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v125 = &v125 - v17;
  v18 = __chkstk_darwin(v16);
  v127 = &v125 - v19;
  __chkstk_darwin(v18);
  v21 = &v125 - v20;
  v22 = type metadata accessor for UUID();
  v144 = *(v22 - 8);
  v145 = v22;
  __chkstk_darwin(v22);
  v24 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for CoalescedRecentItem();
  v139 = *(v147 - 1);
  v25 = __chkstk_darwin(v147);
  v130 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v138 = &v125 - v28;
  __chkstk_darwin(v27);
  v152 = &v125 - v29;
  v30 = type metadata accessor for HistoryItem();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v137 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v156 = &v125 - v35;
  v36 = __chkstk_darwin(v34);
  v154 = (&v125 - v37);
  v38 = __chkstk_darwin(v36);
  v136 = &v125 - v39;
  v40 = __chkstk_darwin(v38);
  v141 = &v125 - v41;
  __chkstk_darwin(v40);
  v43 = &v125 - v42;
  GroupedHistoryItem.mostRecentItem.getter();
  v44 = HistoryItem.handles.getter();
  v45 = *(v31 + 1);
  v157 = v30;
  v158 = v31 + 8;
  v159 = v45;
  (v45)(v43, v30);
  v46 = sub_100049260(v44);
  v150 = v47;
  v151 = v46;
  v148 = a2;
  v48 = GroupedHistoryItem.people.getter();
  v49 = sub_10005B26C(v48, 0, 0);

  if (v49 >> 62)
  {
LABEL_42:
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v149 = v13;
  v153 = v21;
  v128 = v7;
  v133 = v11;
  if (result)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v51 = *(v49 + 32);
    }

    v52 = v51;

    v53 = v146[15];
    if (v52)
    {
      sub_1000525C4(&qword_100124C30);
      v54 = swift_allocObject();
      v140 = 0;
      *(v54 + 16) = xmmword_1000D6C60;
      *(v54 + 32) = v52;
      goto LABEL_12;
    }

    v54 = 0;
  }

  else
  {

    v52 = 0;
    v54 = 0;
    v53 = v146[15];
  }

  v140 = 1;
LABEL_12:
  v146 = v52;
  v21 = v52;
  dispatch thunk of Message.recordUUID.getter();
  v55 = UUID.uuidString.getter();
  v57 = v56;
  (*(v144 + 8))(v24, v145);
  os_unfair_lock_lock((v53 + 32));
  v58 = *(v53 + 40);

  os_unfair_lock_unlock((v53 + 32));
  v59 = *(v58 + 16);
  v129 = v53;
  if (v59)
  {
    v60 = sub_100052C6C(v55, v57);
    v62 = v61;

    if (v62)
    {

      v63 = v138;
      sub_10005B644(*(v58 + 56) + *(v139 + 72) * v60, v138);

      v64 = v152;
      sub_10005B6A8(v63, v152);
      v13 = v154;
      v65 = v147;
      goto LABEL_18;
    }

    v145 = v21;
  }

  else
  {
    v145 = v21;
  }

  v67 = v150;
  v66 = v151;
  v68 = sub_1000A653C(v155, v151, v150, v54);
  v138 = v69;
  v144 = v70;
  v139 = v71;

  v72 = sub_1000AE200();
  v74 = v73;
  v75 = v152;
  dispatch thunk of Message.dateCreated.getter();
  v64 = v75;
  v65 = v147;
  *(v75 + *(v147 + 5)) = 0;
  *(v75 + v65[6]) = 0;
  *(v75 + v65[7]) = 0;
  v76 = (v75 + v65[8]);
  *v76 = 0;
  v76[1] = 0;
  v77 = (v75 + v65[9]);
  *v77 = 0;
  v77[1] = 0;
  v78 = (v75 + v65[10]);
  *v78 = v72;
  v78[1] = v74;
  v79 = (v75 + v65[11]);
  v80 = v138;
  *v79 = v68;
  v79[1] = v80;
  v81 = (v75 + v65[12]);
  v82 = v139;
  *v81 = v144;
  v81[1] = v82;
  v83 = (v75 + v65[13]);
  *v83 = v66;
  v83[1] = v67;

  v13 = v154;
  v21 = v145;
LABEL_18:
  v84 = (v64 + v65[11]);
  if (v84[1])
  {
    v24 = *v84;
  }

  else if ((v140 & 1) != 0 || (v85 = [v21 displayName]) == 0)
  {
    v24 = dispatch thunk of Message.from.getter();
  }

  else
  {
    v86 = v85;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v87 = v155;
  v147 = v21;
  dispatch thunk of Message.messageType.getter();
  RecentsCallItem.init(message:title:contact:messageType:)();
  v49 = GroupedHistoryItem.items.getter();
  v88 = *(v49 + 16);
  if (v88)
  {
    v89 = 0;
    v11 = (v31 + 16);
    v155 = v31 + 88;
    LODWORD(v154) = enum case for HistoryItem.recentCall(_:);
    v7 = v156;
    while (1)
    {
      if (v89 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v90 = *(v31 + 2);
      v91 = v157;
      v90(v13, v49 + ((v31[80] + 32) & ~v31[80]) + *(v31 + 9) * v89, v157);
      v90(v7, v13, v91);
      v92 = v31;
      v93 = v13;
      v24 = v92;
      v94 = *(v92 + 11);
      v95 = v94(v7, v91);
      if (v95 == v154)
      {
        break;
      }

      ++v89;
      v21 = v159;
      (v159)(v93, v91);
      (v21)(v7, v91);
      v13 = v93;
      v31 = v24;
      if (v88 == v89)
      {
        goto LABEL_29;
      }
    }

    (v159)(v7, v91);
    v156 = v24;
    v98 = *(v24 + 4);
    v99 = v136;
    v98(v136, v93, v91);
    v100 = v141;
    v98(v141, v99, v91);
    v101 = v137;
    v90(v137, v100, v91);
    v102 = v94(v101, v91);
    if (v102 != v154)
    {

      v116 = v159;
      (v159)(v100, v91);
      sub_10005B5A0(v152);
      v116(v101, v91);
      goto LABEL_30;
    }

    (*(v156 + 12))(v101, v91);
    v103 = v132;
    v104 = v134;
    v105 = v133;
    (*(v132 + 32))(v134, v101, v133);
    v106 = RecentCall.chRecentCall.getter();
    v107 = GroupedHistoryItem.people.getter();
    v108 = RecentCall.isoCountryCode.getter();
    v110 = sub_10005B26C(v107, v108, v109);

    v111 = v130;
    sub_1000A52FC(v104, v110, v130);

    v112 = v135;
    sub_10009E49C(v106, v111, v110, v135);

    sub_10005B5A0(v111);
    v113 = v131;
    sub_10000B818(v112, v131, &qword_100124358);
    v97 = v142;
    v114 = v142[6];
    if (v114(v113, 1, v149) == 1)
    {

      sub_10000B880(v112, &qword_100124358);
      (*(v103 + 8))(v104, v105);
      (v159)(v141, v91);
      sub_10005B5A0(v152);
      v115 = v113;
LABEL_39:
      sub_10000B880(v115, &qword_100124358);
      v96 = v143;
      return (v97[4])(v96, v153, v149);
    }

    v117 = v97[4];
    v156 = v114;
    v118 = v127;
    v119 = v149;
    v154 = v117;
    v155 = v97 + 4;
    v117(v127, v113, v149);
    v120 = v97[2];
    v120(v125, v118, v119);
    v121 = v105;
    v120(v126, v153, v119);
    v122 = v128;
    RecentsCallItem.init(recentItem:messageItem:)();

    v123 = v97[1];
    v123(v118, v119);
    sub_10000B880(v135, &qword_100124358);
    (*(v103 + 8))(v134, v121);
    (v159)(v141, v157);
    sub_10005B5A0(v152);
    if ((v156)(v122, 1, v119) == 1)
    {
      v115 = v122;
      goto LABEL_39;
    }

    v124 = v149;
    v123(v153, v149);
    return v154(v143, v122, v124);
  }

  else
  {
LABEL_29:
    sub_10005B5A0(v152);

LABEL_30:
    v97 = v142;
    v96 = v143;
    return (v97[4])(v96, v153, v149);
  }
}

uint64_t sub_100049260(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_100052348(*(a1 + 16), 0, &qword_100124398, &unk_1000D6E70, &type metadata accessor for Handle);
    v4 = *(type metadata accessor for Handle() - 8);
    v5 = sub_10005A52C(&v10, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1, &type metadata accessor for Handle);

    sub_10000AC64();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_5:
  v6 = sub_1000592EC();
  v7 = sub_1000592F4(v3, 0, 1, v6);
  v8 = *(v3 + 2);

  if (v8 <= 0xF)
  {

    return 0;
  }

  return v7;
}

uint64_t sub_1000493CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1000493EC, 0, 0);
}

uint64_t sub_1000493EC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100049484;

  return HistoryCoalescingManager.deleteAllRecentCalls()();
}

uint64_t sub_100049484(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1000495D0, 0, 0);
  }
}

uint64_t sub_1000495F4(unint64_t a1)
{
  v2 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - v3;
  v4 = sub_1000525C4(&qword_100124348);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UUID();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v29 = (v28 + 32);
    v30 = (v28 + 48);
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v32)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v31 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 uniqueId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      if ((*v30)(v6, 1, v7) == 1)
      {
        sub_10000B880(v6, &qword_100124348);
      }

      else
      {
        v15 = *v29;
        (*v29)(v33, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100051C3C(0, *(v34 + 2) + 1, 1, v34, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
        }

        v17 = *(v34 + 2);
        v16 = *(v34 + 3);
        if (v17 >= v16 >> 1)
        {
          v34 = sub_100051C3C(v16 > 1, v17 + 1, 1, v34, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
        }

        v18 = v33;
        v19 = v34;
        *(v34 + 2) = v17 + 1;
        v15(&v19[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v17], v18, v7);
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_21:
  v20 = type metadata accessor for TaskPriority();
  v21 = v26;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v34;
  v22[4] = v27;
  v22[5] = v23;

  sub_100091AE0(0, 0, v21, &unk_1000D70E0, v22);
}

uint64_t sub_100049A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_100049A60, 0, 0);
}

uint64_t sub_100049A60()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100049B00;
  v2 = *(v0 + 32);

  return HistoryCoalescingManager.deleteRecentCalls(uniqueIDs:)(v2);
}

uint64_t sub_100049B00(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100049C4C, 0, 0);
  }
}

uint64_t sub_100049C70(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000525C4(&qword_100124358);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for RecentCall();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for HistoryItem();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for GroupedHistoryItem();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1000525C4(&qword_100124348);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for RecentsCallItem();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100049F7C, 0, 0);
}

uint64_t sub_100049F7C()
{
  v166 = v0;
  isa = v0[4].isa;
  v2 = *(v0[5].isa + 11);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  v0[2].isa = &_swiftEmptySetSingleton;
  p_isa = &v0[2].isa;
  v0[3].isa = &_swiftEmptySetSingleton;
  v155 = v0 + 3;
  v137 = *(isa + 2);
  if (v137)
  {
    v4 = 0;
    v5 = v0[27].isa;
    v6 = *(v5 + 2);
    v5 = (v5 + 16);
    v139 = v6;
    v136 = v0[4].isa + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v7 = v0[18].isa;
    v135 = (v7 + 48);
    v131 = (v7 + 32);
    v132 = (v7 + 56);
    v146 = v0[15].isa;
    v8 = v0[12].isa;
    v163 = (v8 + 88);
    v154 = (v8 + 8);
    v141 = v8;
    v160 = (v8 + 96);
    v161 = (v7 + 8);
    v9 = v0[9].isa;
    v157 = (v9 + 8);
    v158 = (v9 + 32);
    v133 = (v5 - 8);
    v127 = (v7 + 16);
    v162 = enum case for HistoryItem.recentCall(_:);
    v129 = (v5 + 32);
    v130 = (v5 + 40);
    v156 = enum case for HistoryItem.message(_:);
    v126 = (v5 + 16);
    v134 = *(v5 + 7);
    v164 = v0;
    v138 = v3;
    v6(v0[31].isa, v136, v0[26].isa);
    while (1)
    {
      v140 = v4;
      if ((RecentsCallItem.isRecentCall.getter() & 1) != 0 && (sub_100041EE8(), v16))
      {
        v17 = v16;
        v18 = [v16 uniqueId];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v3 = v138;
        UUID.init(uuidString:)();
      }

      else
      {
        v19 = RecentsCallItem.messageIndicatorViewModel.getter();
        if (v19)
        {
          v20 = v19;
          v21 = [v19 messageUUID];

          if (v21)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          v23 = v0[25].isa;
          v24 = v0[23].isa;
          (*v132)(v24, v22, 1, v0[17].isa);
          sub_10000AFFC(v24, v23, &qword_100124348);
        }

        else
        {
          (*v132)(v0[25].isa, 1, 1, v0[17].isa);
        }
      }

      v25 = v0[24].isa;
      v26 = v0[17].isa;
      sub_10000B818(v0[25].isa, v25, &qword_100124348);
      if ((*v135)(v25, 1, v26) == 1)
      {
        sub_10000B880(v0[24].isa, &qword_100124348);
        if (qword_100124020 != -1)
        {
          swift_once();
        }

        v27 = v0[30].isa;
        v28 = v0[31].isa;
        v29 = v0[26].isa;
        v30 = type metadata accessor for Logger();
        sub_1000046F4(v30, qword_100128968);
        v139(v27, v28, v29);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v151 = v32;
          v33 = v0[30].isa;
          v34 = v0[26].isa;
          v36 = v0[6].isa;
          v35 = v0[7].isa;
          v37 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v165[0] = v147;
          *v37 = 136315138;
          v139(v35, v33, v34);
          (*v130)(v35, 0, 1, v34);
          sub_10000B818(v35, v36, &qword_100124358);
          v38 = (*v129)(v36, 1, v34);
          v39 = v0[30].isa;
          if (v38 == 1)
          {
            v40 = v0[26].isa;
            v41 = v0[7].isa;
            sub_10000B880(v0[6].isa, &qword_100124358);
            sub_10000B880(v41, &qword_100124358);
            v42 = *v133;
            (*v133)(v39, v40);
            v43 = 0xE300000000000000;
            v44 = 7104878;
          }

          else
          {
            v145 = v0[30].isa;
            v97 = v0[28].isa;
            v96 = v0[29].isa;
            v98 = v0[26].isa;
            v143 = v0[7].isa;
            (*v126)(v96, v0[6].isa, v98);
            v139(v97, v96, v98);
            v128 = String.init<A>(reflecting:)();
            v43 = v99;
            v42 = *v133;
            (*v133)(v96, v98);
            sub_10000B880(v143, &qword_100124358);
            v42(v145, v98);
            v44 = v128;
          }

          v100 = v0[31].isa;
          v102 = v0[25].isa;
          v101 = v0[26].isa;
          v103 = sub_10000607C(v44, v43, v165);

          *(v37 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v31, v151, "No uniqueID found for %s", v37, 0xCu);
          sub_100005964(v147);

          sub_10000B880(v102, &qword_100124348);
          v42(v100, v101);
        }

        else
        {
          v73 = v0[30].isa;
          v72 = v0[31].isa;
          v75 = v0[25].isa;
          v74 = v0[26].isa;

          v76 = *v133;
          (*v133)(v73, v74);
          sub_10000B880(v75, &qword_100124348);
          v76(v72, v74);
        }

LABEL_4:
        v15 = v140;
      }

      else
      {
        v45 = v0[22].isa;
        (*v131)(v45, v0[24].isa, v0[17].isa);
        v46 = swift_task_alloc();
        *(v46 + 16) = v45;

        v47 = sub_10004BDE4(sub_10005C658, v46, v3);

        v148 = *(v47 + 16);
        if (v148)
        {
          v48 = 0;
          v144 = v47 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
          v142 = v47;
          while (v48 < *(v47 + 16))
          {
            v45 = v0[16].isa;
            v49 = v0[14].isa;
            (*(v146 + 2))(v45, v144 + *(v146 + 9) * v48, v49);
            v50 = GroupedHistoryItem.items.getter();
            (*(v146 + 1))(v45, v49);
            v51 = v50;
            v52 = *(v50 + 16);
            if (v52)
            {
              v152 = v48;
              v53 = v51 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
              v54 = *(v141 + 9);
              v55 = *(v141 + 2);
              do
              {
                v45 = v0[13].isa;
                v65 = v0[11].isa;
                v55(v45, v53, v65);
                v66 = (*v163)(v45, v65);
                if (v66 == v162)
                {
                  v57 = v0[20].isa;
                  v56 = v0[21].isa;
                  v58 = v0[17].isa;
                  v59 = v0[13].isa;
                  v61 = v0[10].isa;
                  v60 = v0[11].isa;
                  v62 = v54;
                  v63 = v164[8].isa;
                  (*v160)(v59, v60);
                  (*v158)(v61, v59, v63);
                  RecentCall.uniqueID.getter();
                  v45 = p_isa;
                  sub_100094AF8(v56, v57);
                  (*v161)(v56, v58);
                  v64 = v63;
                  v54 = v62;
                  v0 = v164;
                  (*v157)(v61, v64);
                }

                else if (v66 == v156)
                {
                  v68 = v0[20].isa;
                  v67 = v0[21].isa;
                  v69 = v0[17].isa;
                  v70 = v0[13].isa;
                  (*v160)(v70, v0[11].isa);
                  v71 = *v70;
                  dispatch thunk of Message.recordUUID.getter();
                  v45 = v155;
                  sub_100094AF8(v67, v68);

                  (*v161)(v67, v69);
                }

                else
                {
                  (*v154)(v0[13].isa, v0[11].isa);
                }

                v53 += v54;
                --v52;
              }

              while (v52);

              v47 = v142;
              v48 = v152;
            }

            else
            {
            }

            if (++v48 == v148)
            {
              v10 = v0[31].isa;
              v12 = v0[25].isa;
              v11 = v0[26].isa;
              v13 = v0[22].isa;
              v14 = v0[17].isa;

              sub_10000B880(v12, &qword_100124348);
              (*v133)(v10, v11);
              (*v161)(v13, v14);
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_61:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_62;
        }

        if (qword_100124020 != -1)
        {
          swift_once();
        }

        v77 = v0[22].isa;
        v78 = v0[19].isa;
        v79 = v0[17].isa;
        v80 = type metadata accessor for Logger();
        sub_1000046F4(v80, qword_100128968);
        (*v127)(v78, v77, v79);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        v83 = os_log_type_enabled(v81, v82);
        v84 = v0[31].isa;
        v86 = v0[25].isa;
        v85 = v0[26].isa;
        v87 = v0[19].isa;
        v88 = v0[17].isa;
        if (v83)
        {
          v153 = v0[31].isa;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v165[0] = v90;
          *v89 = 136315138;
          sub_10005B5FC(&qword_100124560, &type metadata accessor for UUID);
          v149 = v86;
          buf = v85;
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;
          v94 = *v161;
          (*v161)(v87, v88);
          v95 = sub_10000607C(v91, v93, v165);

          *(v89 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v81, v82, "Could not find any grouped history items containing call item %s", v89, 0xCu);
          sub_100005964(v90);

          sub_10000B880(v149, &qword_100124348);
          (*v133)(v153, buf);
        }

        else
        {

          v94 = *v161;
          (*v161)(v87, v88);
          sub_10000B880(v86, &qword_100124348);
          (*v133)(v84, v85);
        }

        v15 = v140;
        v0 = v164;
        v94(v164[22].isa, v164[17].isa);
      }

      v4 = v15 + 1;
      v3 = v138;
      if (v4 == v137)
      {

        v104 = *p_isa;
        goto LABEL_47;
      }

      v139(v0[31].isa, (v136 + v4 * v134), v0[26].isa);
    }
  }

  v104 = &_swiftEmptySetSingleton;
LABEL_47:
  v0[32].isa = v104;
  v105 = *(v104 + 2);
  if (v105)
  {
    v106 = v0[18].isa;
    v107 = sub_100052348(v105, 0, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
    v0[33].isa = v107;
    v108 = sub_10005A52C(v165, &v107[(*(v106 + 80) + 32) & ~*(v106 + 80)], v105, v104, &type metadata accessor for UUID);

    sub_10000AC64();
    if (v108 == v105)
    {
      v109 = swift_task_alloc();
      v0[34].isa = v109;
      *v109 = v0;
      *(v109 + 1) = sub_10004B09C;

      return HistoryCoalescingManager.deleteRecentCalls(uniqueIDs:)(v107);
    }

    __break(1u);
  }

  else
  {
    v110 = v0[3].isa;
    v0[36].isa = v110;
    v111 = *(v110 + 16);
    if (!v111)
    {
      if (qword_100124020 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_67;
    }

    v112 = v0[18].isa;
    v113 = sub_100052348(v111, 0, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
    v0[37].isa = v113;
    v114 = sub_10005A52C(v165, &v113[(*(v112 + 80) + 32) & ~*(v112 + 80)], v111, v110, &type metadata accessor for UUID);

    sub_10000AC64();
    if (v114 == v111)
    {
      v115 = swift_task_alloc();
      v0[38].isa = v115;
      *v115 = v0;
      *(v115 + 1) = sub_10004B594;

      return HistoryCoalescingManager.deleteMessages(uniqueIDs:)(v113);
    }
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_58:
  v116 = type metadata accessor for Logger();
  sub_1000046F4(v116, qword_100128968);

  v45 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  v118 = os_log_type_enabled(v45, v117);
  v119 = v0[36].isa;
  v120 = v0[32].isa;
  if (!v118)
  {
    goto LABEL_61;
  }

  v121 = swift_slowAlloc();
  *v121 = 134218240;
  v122 = *(v120 + 2);

  *(v121 + 4) = v122;

  *(v121 + 12) = 2048;
  v123 = *(v119 + 2);

  *(v121 + 14) = v123;

  _os_log_impl(&_mh_execute_header, v45, v117, "Deleted all items for contacts: %ld calls, %ld messages", v121, 0x16u);

LABEL_62:

  v124 = v0[1].isa;

  return v124();
}

uint64_t sub_10004B09C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_10004B944;
  }

  else
  {
    v2 = sub_10004B1E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B1E8()
{
  v19 = v0;
  v1 = v0[3];
  v0[36] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v4 = sub_100052348(v2, 0, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
    v0[37] = v4;
    v5 = sub_10005A52C(&v18, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1, &type metadata accessor for UUID);

    sub_10000AC64();
    if (v5 == v2)
    {
      v6 = swift_task_alloc();
      v0[38] = v6;
      *v6 = v0;
      v6[1] = sub_10004B594;

      return HistoryCoalescingManager.deleteMessages(uniqueIDs:)(v4);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_100124020 != -1)
  {
LABEL_14:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000046F4(v7, qword_100128968);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[36];
  v12 = v0[32];
  if (v10)
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    v14 = *(v12 + 16);

    *(v13 + 4) = v14;

    *(v13 + 12) = 2048;
    v15 = *(v11 + 16);

    *(v13 + 14) = v15;

    _os_log_impl(&_mh_execute_header, v8, v9, "Deleted all items for contacts: %ld calls, %ld messages", v13, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10004B594()
{
  *(*v1 + 312) = v0;

  if (v0)
  {

    v2 = sub_10004BA78;
  }

  else
  {
    v2 = sub_10004B6E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B6E4()
{
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[36];
  v6 = v0[32];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    *(v7 + 12) = 2048;
    v9 = *(v5 + 16);

    *(v7 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted all items for contacts: %ld calls, %ld messages", v7, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10004B944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004BA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004BBAC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v19 = type metadata accessor for UUID();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HistoryItem();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = GroupedHistoryItem.items.getter();
  v9 = result;
  v10 = 0;
  v21 = *(result + 16);
  v16 = (v2 + 8);
  v17 = v5 + 16;
  v15[2] = v5 + 8;
  v11 = v18;
  while (1)
  {
    v12 = v10;
    if (v21 == v10)
    {
LABEL_5:
      v14 = v21 != v12;

      return v14;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10++, v11);
    HistoryItem.uniqueID.getter();
    v13 = static UUID.== infix(_:_:)();
    (*v16)(v4, v19);
    result = (*(v5 + 8))(v7, v11);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BDE4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for GroupedHistoryItem();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A8E50(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1000A8E50(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_10004C0D4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10004C16C;

  return HistoryCoalescingManager.markRecentCallsAsRead()();
}

uint64_t sub_10004C16C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004C260(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000525C4(&qword_100124348);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for RecentsCallItem();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10004C3C0, 0, 0);
}

uint64_t sub_10004C3C0()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[11];
    v5 = *(v3 + 16);
    v3 += 16;
    v30 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = (v3 - 8);
    v8 = (v4 + 56);
    v9 = _swiftEmptyArrayStorage;
    v28 = (v4 + 48);
    v29 = *(v3 + 56);
    v26 = v4;
    v27 = (v4 + 32);
    v5(v0[15], v6, v0[13]);
    while (1)
    {
      v12 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v12 messageUUID];

      if (v14)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = v0[9];
      v16 = v0[10];
      v18 = v0[8];
      (*v7)(v0[15], v0[13]);
      (*v8)(v18, v15, 1, v16);
      sub_10000AFFC(v18, v17, &qword_100124348);
      if ((*v28)(v17, 1, v16) == 1)
      {
        goto LABEL_4;
      }

      v19 = *v27;
      (*v27)(v0[12], v0[9], v0[10]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100051C3C(0, *(v9 + 2) + 1, 1, v9, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_100051C3C(v20 > 1, v21 + 1, 1, v9, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
      }

      v22 = v0[12];
      v23 = v0[10];
      *(v9 + 2) = v21 + 1;
      v19(&v9[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v22, v23);
LABEL_5:
      v6 += v29;
      if (!--v2)
      {
        goto LABEL_18;
      }

      v30(v0[15], v6, v0[13]);
    }

    v11 = v0[9];
    v10 = v0[10];
    (*v7)(v0[15], v0[13]);
    (*v8)(v11, 1, 1, v10);
LABEL_4:
    sub_10000B880(v0[9], &qword_100124348);
    goto LABEL_5;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[16] = v9;
  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_10004C72C;

  return HistoryCoalescingManager.deleteMessages(uniqueIDs:)(v9);
}

uint64_t sub_10004C72C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10004CA2C;
  }

  else
  {
    v2 = sub_10004C840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004C840()
{
  v13 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_10000607C(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted video messages with uuids %s", v4, 0xCu);
    sub_100005964(v5);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10004CA2C()
{
  v22 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_10000607C(v5, v7, &v21);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = type metadata accessor for Optional();
    v12 = *(v11 - 8);
    v13 = swift_task_alloc();
    v14 = *(v10 - 8);
    (*(v14 + 16))(v13, v9, v10);
    (*(v14 + 56))(v13, 0, 1, v10);
    v15 = sub_1000A1720(v13, v10);
    v17 = v16;
    (*(v12 + 8))(v13, v11);

    v18 = sub_10000607C(v15, v17, &v21);

    *(v4 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting messages with uniqueIDs %s failed: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10004CD94(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000525C4(&qword_100124348);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for RecentsCallItem();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10004CEF4, 0, 0);
}

uint64_t sub_10004CEF4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[11];
    v5 = *(v3 + 16);
    v3 += 16;
    v30 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = (v3 - 8);
    v8 = (v4 + 56);
    v9 = _swiftEmptyArrayStorage;
    v28 = (v4 + 48);
    v29 = *(v3 + 56);
    v26 = v4;
    v27 = (v4 + 32);
    v5(v0[15], v6, v0[13]);
    while (1)
    {
      v12 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v12 messageUUID];

      if (v14)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = v0[9];
      v16 = v0[10];
      v18 = v0[8];
      (*v7)(v0[15], v0[13]);
      (*v8)(v18, v15, 1, v16);
      sub_10000AFFC(v18, v17, &qword_100124348);
      if ((*v28)(v17, 1, v16) == 1)
      {
        goto LABEL_4;
      }

      v19 = *v27;
      (*v27)(v0[12], v0[9], v0[10]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100051C3C(0, *(v9 + 2) + 1, 1, v9, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_100051C3C(v20 > 1, v21 + 1, 1, v9, &qword_100124350, &unk_1000D6E30, &type metadata accessor for UUID);
      }

      v22 = v0[12];
      v23 = v0[10];
      *(v9 + 2) = v21 + 1;
      v19(&v9[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v22, v23);
LABEL_5:
      v6 += v29;
      if (!--v2)
      {
        goto LABEL_18;
      }

      v30(v0[15], v6, v0[13]);
    }

    v11 = v0[9];
    v10 = v0[10];
    (*v7)(v0[15], v0[13]);
    (*v8)(v11, 1, 1, v10);
LABEL_4:
    sub_10000B880(v0[9], &qword_100124348);
    goto LABEL_5;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[16] = v9;
  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_10004D260;

  return HistoryCoalescingManager.markMessagesAsRead(with:)(v9);
}

uint64_t sub_10004D260()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_10004D568;
  }

  else
  {
    v2 = sub_10004D37C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004D37C()
{
  v13 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_10000607C(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Marked video messages with uuids %s as read", v4, 0xCu);
    sub_100005964(v5);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10004D568()
{
  v19 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v4 = 136315138;
    swift_getErrorValue();
    v5 = v0[2];
    v6 = v0[3];
    v7 = type metadata accessor for Optional();
    v8 = *(v7 - 8);
    v9 = swift_task_alloc();
    v10 = *(v6 - 8);
    (*(v10 + 16))(v9, v5, v6);
    (*(v10 + 56))(v9, 0, 1, v6);
    v11 = sub_1000A1720(v9, v6);
    v13 = v12;
    (*(v8 + 8))(v9, v7);

    v14 = sub_10000607C(v11, v13, &v18);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Marking video message as read failed: %s", v4, 0xCu);
    sub_100005964(v17);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10004D858(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10004D878, 0, 0);
}

uint64_t sub_10004D878()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10004D918;
  v2 = *(v0 + 48);

  return HistoryCoalescingManager.saveToPhotoLibrary(_:)(v2);
}

uint64_t sub_10004D918()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10004DBD0;
  }

  else
  {
    v2 = sub_10004DA2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004DA2C()
{
  v12 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    v6 = Array.description.getter();
    v8 = sub_10000607C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saved video messages with uuids %s to photos library", v4, 0xCu);
    sub_100005964(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10004DBD0()
{
  v19 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v4 = 136315138;
    swift_getErrorValue();
    v5 = v0[2];
    v6 = v0[3];
    v7 = type metadata accessor for Optional();
    v8 = *(v7 - 8);
    v9 = swift_task_alloc();
    v10 = *(v6 - 8);
    (*(v10 + 16))(v9, v5, v6);
    (*(v10 + 56))(v9, 0, 1, v6);
    v11 = sub_1000A1720(v9, v6);
    v13 = v12;
    (*(v8 + 8))(v9, v7);

    v14 = sub_10000607C(v11, v13, &v18);

    *(v4 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to save video messages to photos: %s", v4, 0xCu);
    sub_100005964(v17);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

id sub_10004DE98(void *a1, Swift::Int a2)
{
  v4 = [a1 validRemoteParticipantHandles];
  if (!v4)
  {
    return [objc_opt_self() contactForRecentCall:a1 metadataCache:0];
  }

  v5 = v4;
  sub_100008BA0(0, &qword_1001243D0);
  sub_10000A844();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = (v6 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v6 + 16);

  if (v7 != 1)
  {
    return [objc_opt_self() contactForRecentCall:a1 metadataCache:0];
  }

  v8 = sub_1000A45E4(a1, a2);
  v9 = sub_1000482DC(v8);
  v11 = v10;

  if (!v9)
  {
    return [objc_opt_self() contactForRecentCall:a1 metadataCache:0];
  }

  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_14:

    return [objc_opt_self() contactForRecentCall:a1 metadataCache:0];
  }

LABEL_9:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_12:
    v14 = v13;

    return v14;
  }

  __break(1u);
  return result;
}

void *sub_10004E018(void *a1, Swift::Int a2)
{
  v4 = sub_1000525C4(&unk_100126020);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v65 - v8;
  v10 = sub_1000A45E4(a1, a2);
  sub_10004F754(v10);
  v71 = v11;

  v12 = [a1 uniqueId];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000A5B58(v13, v15, v9);

  v70 = v9;
  sub_10000B818(v9, v7, &unk_100126020);
  v16 = type metadata accessor for CoalescedRecentItem();
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
  v18 = _swiftEmptyArrayStorage;
  v68 = a1;
  if (v17 != 1)
  {
    v22 = *&v7[*(v16 + 52) + 8];

    sub_10005B5A0(v7);
    v23 = *(v22 + 16);
    if (!v23)
    {

      v26 = _swiftEmptyArrayStorage;
      goto LABEL_35;
    }

    v75 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for Handle();
    v24 = 0;
    while (v24 < *(v22 + 16))
    {
      v25 = v24 + 1;
      Handle.chHandle.getter();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 = v25;
      if (v23 == v25)
      {

        v26 = v75;
        goto LABEL_35;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_10000B880(v7, &unk_100126020);
  v19 = [a1 remoteParticipantHandles];
  if (!v19)
  {
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_10:
      v21 = &_swiftEmptySetSingleton;
      goto LABEL_11;
    }

LABEL_62:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100098F24(_swiftEmptyArrayStorage);
      v21 = v64;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v20 = v19;
  sub_100008BA0(0, &qword_1001243D0);
  sub_10000A844();
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_11:
  v74 = v18;
  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    Set.Iterator.init(_cocoa:)();
    v21 = v75;
    v27 = v76;
    v28 = v77;
    v29 = v78;
    v30 = v79;
  }

  else
  {
    v29 = 0;
    v31 = -1 << *(v21 + 32);
    v27 = v21 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v21 + 56);
  }

  v69 = v28;
  v34 = (v28 + 64) >> 6;
  while ((v21 & 0x8000000000000000) == 0)
  {
    v35 = v29;
    v36 = v30;
    v37 = v29;
    if (!v30)
    {
      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v37 >= v34)
        {
          goto LABEL_34;
        }

        v36 = *(v27 + 8 * v37);
        ++v35;
        if (v36)
        {
          goto LABEL_27;
        }
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_27:
    v38 = (v36 - 1) & v36;
    v39 = *(*(v21 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
    if (!v39)
    {
      goto LABEL_34;
    }

LABEL_31:
    v41 = v39;
    if ([v41 isTemporary])
    {

LABEL_20:
      goto LABEL_21;
    }

    v42 = [v41 isPseudonym];

    if (v42)
    {
      goto LABEL_20;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_21:
    v29 = v37;
    v30 = v38;
  }

  v40 = __CocoaSet.Iterator.next()();
  if (v40)
  {
    v72 = v40;
    sub_100008BA0(0, &qword_1001243D0);
    swift_dynamicCast();
    v39 = v73;
    v37 = v29;
    v38 = v30;
    if (v73)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  sub_10000AC64();
  v26 = v74;
LABEL_35:
  v69 = sub_10004EB70(v26);
  v44 = v43;
  v74 = v18;
  v45 = *(v43 + 16);
  if (v45)
  {
    v46 = 0;
    v47 = v71 & 0xC000000000000001;
    v67 = v45 - 1;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v48 = v46;
      while (1)
      {
        if (v48 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v49 = *(v44 + 32 + 8 * v48);
        if (v47)
        {
          v50 = v49;
          v51 = __CocoaDictionary.lookup(_:)();
          if (v51)
          {
            v72 = v51;
            sub_100008BA0(0, &qword_1001243E0);
            swift_dynamicCast();
            if (v73)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          v52 = *(v71 + 16);
          v53 = v49;
          if (v52)
          {
            v54 = sub_10000AB38(v53);
            if (v55)
            {
              if (*(*(v71 + 56) + 8 * v54))
              {
                goto LABEL_53;
              }
            }
          }
        }

        v56 = [v49 tuHandle];
        if (v56)
        {
          break;
        }

        ++v48;

        if (v45 == v48)
        {
          goto LABEL_58;
        }
      }

      v66 = v56;
      v57 = [v68 isoCountryCode];
      if (v57)
      {
        v58 = v57;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = String._bridgeToObjectiveC()();
      }

      else
      {
        v59 = 0;
      }

      v60 = objc_opt_self();
      v61 = v66;
      v62 = [v60 contactForHandle:v66 isoCountryCode:v59 metadataCache:0];

LABEL_53:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = v48 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v74;
    }

    while (v67 != v48);
  }

LABEL_58:

  sub_10000B880(v70, &unk_100126020);
  return v18;
}

uint64_t sub_10004E79C(unint64_t a1)
{
  v5 = sub_1000592EC();
  v6 = sub_100059808(&v31, a1, 0, 1, v5, sub_10005BAA4, &qword_1001243E0, CNContact_ptr, sub_10009842C);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100059250(a1, sub_10009842C);
    return v6;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    sub_100008BA0(0, &qword_1001243E0);

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = v6;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    sub_100052FA4(v1, v14, i, v3, &qword_1001243E0);
  }

  sub_100008BA0(0, &qword_1001243E0);

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_10005B788(v23, v9, v24, &qword_1001243E0);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_10004EB70(unint64_t a1)
{
  v5 = sub_1000592EC();
  v6 = sub_100059808(&v31, a1, 0, 1, v5, sub_10005BA34, &qword_1001243D0, CHHandle_ptr, sub_1000985CC);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v31;
  if (v31 == v8)
  {
    sub_100059250(a1, sub_1000985CC);
    return v6;
  }

  if (v31 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < v9)
  {
    goto LABEL_48;
  }

  v11 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v9)
  {
    sub_100008BA0(0, &qword_1001243D0);

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v12);
      v12 = v13;
    }

    while (v9 != v13);
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v15;
    v3 = v16;
    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v9) | 1;
LABEL_23:
  v29 = v14;
  v30 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v19 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v17)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v32 = v6;
    v33 = i;
    if (v8 < v9)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < v8)
    {
      goto LABEL_50;
    }

    if (!v11)
    {

      goto LABEL_41;
    }

    if (v9 < v8)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v14 = v29;
    v11 = v30;
LABEL_22:
    sub_100052FA4(v1, v14, i, v3, &qword_1001243D0);
  }

  sub_100008BA0(0, &qword_1001243D0);

  v21 = v9;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v8 != v22);
LABEL_41:

  if (v7)
  {
    _CocoaArrayWrapper.subscript.getter();
    v23 = v25;
    v9 = v26;
    v24 = v27;
  }

  else
  {
    v23 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = (2 * v8) | 1;
  }

  sub_10005B788(v23, v9, v24, &qword_1001243D0);
  swift_unknownObjectRelease();

  return v32;
}

void *sub_10004EF44(void *a1, Swift::Int a2)
{
  v4 = sub_1000525C4(&unk_100126020);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v65 - v8;
  v10 = sub_1000A45E4(a1, a2);
  sub_10004F754(v10);
  v71 = v11;

  v12 = [a1 uniqueId];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000A5B58(v13, v15, v9);

  v70 = v9;
  sub_10000B818(v9, v7, &unk_100126020);
  v16 = type metadata accessor for CoalescedRecentItem();
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
  v18 = _swiftEmptyArrayStorage;
  v68 = a1;
  if (v17 != 1)
  {
    v22 = *&v7[*(v16 + 52) + 8];

    sub_10005B5A0(v7);
    v23 = *(v22 + 16);
    if (!v23)
    {

      v26 = _swiftEmptyArrayStorage;
      goto LABEL_35;
    }

    v75 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for Handle();
    v24 = 0;
    while (v24 < *(v22 + 16))
    {
      v25 = v24 + 1;
      Handle.chHandle.getter();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 = v25;
      if (v23 == v25)
      {

        v26 = v75;
        goto LABEL_35;
      }
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_10000B880(v7, &unk_100126020);
  v19 = [a1 remoteParticipantHandles];
  if (!v19)
  {
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_10:
      v21 = &_swiftEmptySetSingleton;
      goto LABEL_11;
    }

LABEL_59:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100098F24(_swiftEmptyArrayStorage);
      v21 = v64;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v20 = v19;
  sub_100008BA0(0, &qword_1001243D0);
  sub_10000A844();
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_11:
  v74 = v18;
  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BA0(0, &qword_1001243D0);
    sub_10000A844();
    Set.Iterator.init(_cocoa:)();
    v21 = v75;
    v27 = v76;
    v28 = v77;
    v29 = v78;
    v30 = v79;
  }

  else
  {
    v29 = 0;
    v31 = -1 << *(v21 + 32);
    v27 = v21 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v21 + 56);
  }

  v69 = v28;
  v34 = (v28 + 64) >> 6;
  while ((v21 & 0x8000000000000000) == 0)
  {
    v35 = v29;
    v36 = v30;
    v37 = v29;
    if (!v30)
    {
      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v37 >= v34)
        {
          goto LABEL_34;
        }

        v36 = *(v27 + 8 * v37);
        ++v35;
        if (v36)
        {
          goto LABEL_27;
        }
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_27:
    v38 = (v36 - 1) & v36;
    v39 = *(*(v21 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
    if (!v39)
    {
      goto LABEL_34;
    }

LABEL_31:
    v41 = v39;
    if ([v41 isTemporary])
    {

LABEL_20:
      goto LABEL_21;
    }

    v42 = [v41 isPseudonym];

    if (v42)
    {
      goto LABEL_20;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_21:
    v29 = v37;
    v30 = v38;
  }

  v40 = __CocoaSet.Iterator.next()();
  if (v40)
  {
    v72 = v40;
    sub_100008BA0(0, &qword_1001243D0);
    swift_dynamicCast();
    v39 = v73;
    v37 = v29;
    v38 = v30;
    if (v73)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  sub_10000AC64();
  v26 = v74;
LABEL_35:
  v69 = sub_10004EB70(v26);
  v44 = v43;
  v74 = v18;
  v45 = *(v43 + 16);
  if (!v45)
  {
    goto LABEL_55;
  }

  v46 = 0;
  v47 = v71 & 0xC000000000000001;
  v67 = v45 - 1;
  v18 = _swiftEmptyArrayStorage;
  while (2)
  {
    v48 = v46;
    while (2)
    {
      if (v48 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v50 = *(v44 + 32 + 8 * v48);
      if (v47)
      {
        v51 = v50;
        v52 = __CocoaDictionary.lookup(_:)();
        if (!v52)
        {
          goto LABEL_38;
        }

        v72 = v52;
        sub_100008BA0(0, &qword_1001243E0);
        swift_dynamicCast();
        v53 = v73;
        if (!v73)
        {
          goto LABEL_38;
        }

LABEL_48:

        v50 = v53;
        goto LABEL_39;
      }

      v54 = *(v71 + 16);
      v55 = v50;
      if (v54)
      {
        v56 = sub_10000AB38(v55);
        if (v57)
        {
          v53 = *(*(v71 + 56) + 8 * v56);
          if (v53)
          {
            goto LABEL_48;
          }
        }
      }

LABEL_38:
      v49 = [v50 tuHandle];
      if (!v49)
      {
LABEL_39:
        ++v48;

        if (v45 == v48)
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

    v66 = v49;
    v58 = [v68 isoCountryCode];
    if (v58)
    {
      v59 = v58;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = 0;
    }

    v61 = objc_opt_self();
    v62 = v66;
    v65 = [v61 contactForHandle:v66 isoCountryCode:v60 metadataCache:0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v46 = v48 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v74;
    if (v67 != v48)
    {
      continue;
    }

    break;
  }

LABEL_55:

  sub_10000B880(v70, &unk_100126020);
  return v18;
}

id sub_10004F6D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_10004F754(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 48) + ((v7 << 9) | (8 * v9)));
    swift_getKeyPath();
    v11 = v10;

    swift_getAtKeyPath();

    if (v23)
    {
      v12 = *(&_swiftEmptyDictionarySingleton + 2);
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v12)
      {
        sub_100058788(v12 + 1, 1, &qword_1001243F8);
      }

      v13 = NSObject._rawHashValue(seed:)(*(&_swiftEmptyDictionarySingleton + 5));
      v14 = &_swiftEmptyDictionarySingleton + 64;
      v15 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v16 = v13 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(&_swiftEmptyDictionarySingleton + (v16 >> 6) + 8)) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *&v14[8 * v17];
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(&_swiftEmptyDictionarySingleton + (v16 >> 6) + 8))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *&v14[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v18) = v11;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v18) = v23;
      ++*(&_swiftEmptyDictionarySingleton + 2);
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10004F9A8(uint64_t a1)
{
  sub_10000BC24((a1 + 32), *(a1 + 56));
  sub_1000525C4(&unk_100124520);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10004FA04(uint64_t a1)
{
  sub_10000BC24((a1 + 32), *(a1 + 56));
  sub_1000525C4(&qword_100124518);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10004FA58(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    v2(v3);
    sub_100004E40(v2);
  }
}

uint64_t sub_10004FB38()
{
  *(v0 + 24) = *(*(v0 + 16) + 16);
  type metadata accessor for HistoryCoalescingManager();
  sub_10005B5FC(&qword_100124458, &type metadata accessor for HistoryCoalescingManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004FBF8, v2, v1);
}

uint64_t sub_10004FBF8()
{
  HistoryCoalescingManager.refreshContacts()();
  *(v0 + 32) = v1;
  if (v1)
  {

    return _swift_task_switch(sub_10004FCA8, 0, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10004FCA8()
{
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000046F4(v1, qword_100128968);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh contacts: %@", v4, 0xCu);
    sub_10000B880(v5, &qword_1001250A0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10004FE6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 88);
    os_unfair_lock_lock((v2 + 24));
    v3 = *(v2 + 16);
    v0[7] = v3;

    os_unfair_lock_unlock((v2 + 24));
    if (*(v3 + 16))
    {
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_10004FFA0;

      return sub_100043C1C(v3);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004FFA0()
{

  return _swift_task_switch(sub_1000500B8, 0, 0);
}

uint64_t sub_1000500B8()
{
  sub_1000457C4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HistoryItem.isJunk.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCall();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoryItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) == enum case for HistoryItem.recentCall(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v10 = RecentCall.isJunk.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t HistoryItem.isRead.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RecentCall();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoryItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for HistoryItem.recentCall(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = RecentCall.isRead.getter();
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == enum case for HistoryItem.message(_:))
  {
    (*(v7 + 96))(v9, v6);
    v12 = *v9;
    v11 = dispatch thunk of Message.isRead.getter();
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v11 = 1;
  }

  return v11 & 1;
}

BOOL sub_10005055C(_DWORD *a1)
{
  v3 = type metadata accessor for HistoryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3) == *a1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

BOOL HistoryItem.isAudioMessage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HistoryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for HistoryItem.message(_:))
  {
    (*(v3 + 96))(v5, v2);
    v6 = *v5;
    dispatch thunk of Message.messageType.getter();
    v7 = MessageType.rawValue.getter();
    if (v7 == MessageType.rawValue.getter())
    {

      return 1;
    }

    else
    {
      dispatch thunk of Message.messageType.getter();
      v9 = MessageType.rawValue.getter();
      v10 = MessageType.rawValue.getter();

      return v9 == v10;
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

BOOL HistoryItem.isVideoMessage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HistoryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for HistoryItem.message(_:))
  {
    (*(v3 + 96))(v5, v2);
    v6 = *v5;
    dispatch thunk of Message.messageType.getter();
    v7 = MessageType.rawValue.getter();
    v8 = MessageType.rawValue.getter();

    return v7 == v8;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

BOOL HistoryItem.isMissed.getter()
{
  v0 = type metadata accessor for CallStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for HistoryItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecentCall();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v17, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for HistoryItem.recentCall(_:))
  {
    (*(v8 + 96))(v10, v7);
    (*(v12 + 32))(v14, v10, v11);
    RecentCall.callStatus.getter();
    (*(v1 + 104))(v4, enum case for CallStatus.missed(_:), v0);
    sub_10005B5FC(&qword_1001241B0, &type metadata accessor for CallStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v15 = *(v1 + 8);
    v15(v4, v0);
    v15(v6, v0);
    (*(v12 + 8))(v14, v11);
    return v19 == v18;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }
}

uint64_t sub_100050C9C(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for RecentCall();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  __chkstk_darwin(v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v3, a1);
  if ((*(v9 + 88))(v11, a1) == enum case for HistoryItem.recentCall(_:))
  {
    (*(v9 + 96))(v11, a1);
    (*(v5 + 32))(v8, v11, v4);
    v12 = RecentCall.isJunk.getter();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v9 + 8))(v11, a1);
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_100050EA8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 88))(v7, a1) == *a3;
  (*(v5 + 8))(v7, a1);
  return v8;
}

BOOL sub_100050FAC(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4);
  if ((*(v2 + 88))(v4, a1) == enum case for HistoryItem.message(_:))
  {
    (*(v2 + 96))(v4, a1);
    v5 = *v4;
    dispatch thunk of Message.messageType.getter();
    v6 = MessageType.rawValue.getter();
    v7 = MessageType.rawValue.getter();

    return v6 == v7;
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0;
  }
}

void sub_1000510F8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_38:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = v3;
  while (1)
  {
    if (v5)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_37;
      }

      v7 = *(a1 + 32 + 8 * v4);
    }

    v8 = v7;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v11 = *v2;
    v10 = v2[1];
    v12 = (v10 + 32);
    v13 = *(v10 + 16);
    if (*v2)
    {

      sub_100059BF0(v8, v12, v13, (v11 + 16), v11 + 32, &qword_1001243E0);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v13)
    {
      v16 = v5;
      sub_100008BA0(0, &qword_1001243E0);
      while (1)
      {
        v17 = *v12;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          break;
        }

        ++v12;
        if (!--v13)
        {
          v5 = v16;
          v3 = v29;
          v6 = a1 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_20;
        }
      }

      v5 = v16;
      v3 = v29;
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_7;
    }

LABEL_20:
    v8 = v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v19 = v2[1];
    v20 = *(v19 + 16);
    if (!v11)
    {
      if (v20 > 0xF)
      {
        v21 = 0;
LABEL_27:
        v22 = static _HashTable.scale(forCapacity:)();
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        v24 = sub_100059378(v19, v23, 0, v21);

        *v2 = v24;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v20)
    {
      break;
    }

    v21 = *(v11 + 24) & 0x3FLL;
    if (v20 > 0xF || v21)
    {
      goto LABEL_27;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return;
    }
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v26 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_41;
    }

    v27 = _HashTable.copy()();

    *v2 = v27;
    v26 = v27;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v26)
  {
    _HashTable.UnsafeHandle.subscript.setter();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_100051438(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000514B0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100051530@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100051574@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100051584(uint64_t a1)
{
  v2 = sub_10005B5FC(&qword_100124620, type metadata accessor for Name);
  v3 = sub_10005B5FC(&qword_100124628, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100051640@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100051688(uint64_t a1)
{
  v2 = sub_10005B5FC(&qword_100124630, type metadata accessor for Identifier);
  v3 = sub_10005B5FC(&qword_100124638, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100051744()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100051780()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000517D4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100051848()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

char *sub_1000518D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000525C4(&unk_100126000);
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

char *sub_1000519DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000525C4(&unk_100124380);
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

void *sub_100051B08(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000525C4(&qword_1001243B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(&unk_1001243C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100051C3C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1000525C4(a5);
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

char *sub_100051E18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000525C4(&qword_100124568);
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

void *sub_100051F28(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000525C4(&qword_1001245A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(&qword_1001245A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10005205C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000525C4(&qword_1001245B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(&qword_1001245B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100052190(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000525C4(&qword_100124570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(&qword_100124578);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000522C4(uint64_t a1, uint64_t a2)
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

  sub_1000525C4(&unk_100126000);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100052348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000525C4(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
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

void *sub_100052448(uint64_t a1, uint64_t a2)
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

  sub_1000525C4(&qword_100124C30);
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

char *sub_1000524D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000525C4(&qword_100124340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000525C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005260C(uint64_t a1, char a2, void *a3)
{
  v68 = a3;
  v6 = type metadata accessor for GroupedHistoryItem();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ParticipantKey();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000525C4(&qword_100124490);
  v63 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v56 - v12;
  v60 = *(a1 + 16);
  if (!v60)
  {
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v63 + 80);
  v61 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v64 + 32);
  v18 = (v65 + 32);
  v58 = v16;
  sub_10000B818(v16, v13, &qword_100124490);
  v57 = *v17;
  v57(v9, v13, v67);
  v19 = *v18;
  v59 = v14;
  v62 = v6;
  v19(v66, &v13[v14], v6);
  v20 = *v68;
  v22 = sub_100052CE4(v9);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000B8B50();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100057884(v25, a2 & 1);
  v27 = sub_100052CE4(v9);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v31 = v67;
      v32 = *v68;
      *(*v68 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v57((v32[6] + *(v64 + 72) * v22), v9, v31);
      v33 = v62;
      v19((v32[7] + *(v65 + 72) * v22), v66, v62);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v60 != 1)
      {
        v37 = 1;
        while (v37 < *(v61 + 16))
        {
          sub_10000B818(v58 + *(v63 + 72) * v37, v13, &qword_100124490);
          v38 = *v17;
          (*v17)(v9, v13, v67);
          v39 = *v18;
          (*v18)(v66, &v13[v59], v33);
          v40 = *v68;
          v41 = sub_100052CE4(v9);
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v35 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v35)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_100057884(v45, 1);
            v41 = sub_100052CE4(v9);
            if ((v46 & 1) != (v47 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_11;
          }

          v48 = v67;
          v49 = *v68;
          *(*v68 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v50 = v41;
          v38((v49[6] + *(v64 + 72) * v41), v9, v48);
          v51 = v49[7] + *(v65 + 72) * v50;
          v33 = v62;
          v39(v51, v66, v62);
          v52 = v49[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v49[2] = v53;
          if (v60 == v37)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();
    v71 = v29;
    swift_errorRetain();
    sub_1000525C4(&qword_100124538);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v65 + 8))(v66, v62);
      (*(v64 + 8))(v9, v67);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v54._object = 0x80000001000DB840;
  v54._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v54);
  _print_unlocked<A, B>(_:_:)();
  v55._countAndFlagsBits = 39;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100052C6C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100056CC8(a1, a2, v4);
}

unint64_t sub_100052CE4(uint64_t a1)
{
  type metadata accessor for ParticipantKey();
  sub_10005B5FC(&qword_1001244B0, &type metadata accessor for ParticipantKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100056D80(a1, v2, &type metadata accessor for ParticipantKey, &qword_1001244B8, &type metadata accessor for ParticipantKey, &protocol conformance descriptor for ParticipantKey);
}

unint64_t sub_100052DB8(uint64_t a1)
{
  type metadata accessor for RecentCall();
  sub_10005B5FC(&qword_1001244F8, &type metadata accessor for RecentCall);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100056D80(a1, v2, &type metadata accessor for RecentCall, &qword_100124500, &type metadata accessor for RecentCall, &protocol conformance descriptor for RecentCall);
}

unint64_t sub_100052E8C(uint64_t a1)
{
  type metadata accessor for Handle();
  sub_10005B5FC(&qword_100124410, &type metadata accessor for Handle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100056D80(a1, v2, &type metadata accessor for Handle, &unk_100124420, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

unint64_t sub_100052F60(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100056F20(a1, v4);
}

void sub_100052FA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_100008BA0(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000525C4(&qword_100124C30);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1000530A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_100052448(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_10005313C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = sub_100052448(*(a3 + 16), 0);
  v8 = sub_10005A92C(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v7;
}

void *sub_100053208(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100052448(v2, 0);

    v1 = sub_10005A9F4(&v5, v3 + 4, v2, v1);
    sub_10000AC64();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_1000532B8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_100053408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v41 - v11;
  v12 = type metadata accessor for GroupedHistoryItem();
  v13 = __chkstk_darwin(v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v57 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      GroupedHistoryItem.date.getter();
      v32 = v59;
      GroupedHistoryItem.date.getter();
      v62 = static Date.> infix(_:_:)();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000537A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000525C4(&qword_100124378);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v65 = &v47[-v11];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v64 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v67 = &v47[-v16];
  v17 = type metadata accessor for RecentsCallItem();
  v18 = __chkstk_darwin(v17);
  v57 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v69 = &v47[-v21];
  result = __chkstk_darwin(v20);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      v62(v66, v32, v17);
      v34(v69, v30, v17);
      v35 = v65;
      RecentsCallItem.date.getter();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        static Date.distantPast.getter();
        if (v36(v35, 1, v12) != 1)
        {
          sub_10000B880(v65, &qword_100124378);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      RecentsCallItem.date.getter();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        static Date.distantPast.getter();
        if (v36(v37, 1, v12) != 1)
        {
          sub_10000B880(v37, &qword_100124378);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = static Date.> infix(_:_:)();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      result = v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      result = v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100053CE0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = type metadata accessor for Date();
  v8 = *(v159 - 8);
  v9 = __chkstk_darwin(v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v133 - v11;
  v12 = type metadata accessor for GroupedHistoryItem();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v149 = &v133 - v17;
  v18 = __chkstk_darwin(v16);
  v156 = &v133 - v19;
  result = __chkstk_darwin(v18);
  v160 = &v133 - v21;
  v22 = a3[1];
  v145 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_100056BCC(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_100055974(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100056BCC(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_100056B40(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = _swiftEmptyArrayStorage;
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      GroupedHistoryItem.date.getter();
      v34 = v158;
      GroupedHistoryItem.date.getter();
      LODWORD(v148) = static Date.> infix(_:_:)();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        GroupedHistoryItem.date.getter();
        v46 = v158;
        GroupedHistoryItem.date.getter();
        LOBYTE(v161) = static Date.> infix(_:_:)() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000519DC(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_1000519DC((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_100055974(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100056BCC(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_100056B40(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v145[1];
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    GroupedHistoryItem.date.getter();
    v120 = v158;
    GroupedHistoryItem.date.getter();
    LODWORD(v161) = static Date.> infix(_:_:)();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
  __break(1u);
  return result;
}

uint64_t sub_1000548E0(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v168 = a1;
  v8 = sub_1000525C4(&qword_100124378);
  v9 = __chkstk_darwin(v8 - 8);
  v199 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v163 - v12;
  v14 = __chkstk_darwin(v11);
  v182 = &v163 - v15;
  __chkstk_darwin(v14);
  v17 = &v163 - v16;
  v201 = type metadata accessor for Date();
  v18 = *(v201 - 8);
  v19 = __chkstk_darwin(v201);
  v21 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v198 = &v163 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v163 - v25;
  __chkstk_darwin(v24);
  v181 = &v163 - v27;
  v196 = type metadata accessor for RecentsCallItem();
  v179 = *(v196 - 8);
  v28 = __chkstk_darwin(v196);
  v172 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v187 = &v163 - v31;
  v32 = __chkstk_darwin(v30);
  v200 = &v163 - v33;
  v34 = __chkstk_darwin(v32);
  v197 = &v163 - v35;
  v36 = __chkstk_darwin(v34);
  v184 = &v163 - v37;
  v38 = __chkstk_darwin(v36);
  v180 = &v163 - v39;
  v40 = __chkstk_darwin(v38);
  v163 = &v163 - v41;
  result = __chkstk_darwin(v40);
  v166 = &v163 - v43;
  v44 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = _swiftEmptyArrayStorage;
    v49 = a3;
LABEL_115:
    a4 = *v168;
    if (!*v168)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v176 = v26;
  v46 = 0;
  v193 = v179 + 16;
  v194 = (v179 + 8);
  v192 = (v18 + 48);
  v191 = (v18 + 32);
  v190 = (v18 + 8);
  v189 = (v179 + 32);
  v47 = _swiftEmptyArrayStorage;
  v167 = a4;
  v195 = v13;
  v178 = v17;
  v48 = v196;
  v49 = v44;
  v169 = v44;
LABEL_4:
  v50 = v46;
  v170 = v47;
  if (v46 + 1 >= v45)
  {
    v76 = v46 + 1;
  }

  else
  {
    v183 = v45;
    v51 = *v49;
    v52 = *(v179 + 72);
    v53 = v46;
    v54 = &(*v49)[v52 * (v46 + 1)];
    v55 = *(v179 + 16);
    v55(v166, v54, v48);
    v188 = v51;
    v56 = &v51[v52 * v53];
    v57 = v163;
    v185 = v55;
    v55(v163, v56, v48);
    v58 = v166;
    LODWORD(v186) = sub_100047864(v166, v57);
    if (v5)
    {
      v162 = *v194;
      (*v194)(v57, v48);
      (v162)(v58, v48);
    }

    v165 = 0;
    v59 = *v194;
    (*v194)(v57, v48);
    v177 = v59;
    result = (v59)(v58, v48);
    v164 = v53;
    v60 = v53 + 2;
    v61 = &v188[v52 * (v53 + 2)];
    v62 = v192;
    v63 = v52;
    v188 = v52;
    do
    {
      if (v183 == v60)
      {
        v47 = v170;
        v76 = v183;
        goto LABEL_20;
      }

      v71 = v185;
      (v185)(v180, v61, v48);
      v71(v184, v54, v48);
      v72 = v201;
      v73 = v178;
      RecentsCallItem.date.getter();
      v74 = *v62;
      if ((*v62)(v73, 1, v72) == 1)
      {
        static Date.distantPast.getter();
        if (v74(v73, 1, v72) != 1)
        {
          sub_10000B880(v178, &qword_100124378);
        }
      }

      else
      {
        (*v191)(v181, v73, v72);
      }

      RecentsCallItem.date.getter();
      v75 = v182;
      if (v74(v182, 1, v201) == 1)
      {
        v64 = v176;
        static Date.distantPast.getter();
        if (v74(v75, 1, v201) != 1)
        {
          sub_10000B880(v75, &qword_100124378);
        }
      }

      else
      {
        v64 = v176;
        (*v191)(v176, v75, v201);
      }

      v65 = v181;
      v66 = static Date.> infix(_:_:)();
      v67 = *v190;
      v68 = v64;
      v69 = v201;
      (*v190)(v68, v201);
      v67(v65, v69);
      v48 = v196;
      v70 = v177;
      (v177)(v184, v196);
      result = v70(v180, v48);
      ++v60;
      v63 = v188;
      v61 = &v188[v61];
      v54 += v188;
      v62 = v192;
    }

    while (((v186 ^ v66) & 1) == 0);
    v76 = v60 - 1;
    v47 = v170;
LABEL_20:
    v5 = v165;
    a4 = v167;
    v49 = v169;
    v50 = v164;
    if (v186)
    {
      if (v76 < v164)
      {
        goto LABEL_148;
      }

      if (v164 < v76)
      {
        v77 = v63 * (v76 - 1);
        v78 = v76 * v63;
        v183 = v76;
        v79 = v76;
        v80 = v164;
        v81 = v164 * v63;
        while (2)
        {
          if (v80 == --v79)
          {
            goto LABEL_27;
          }

          v84 = *v49;
          if (!v84)
          {
            goto LABEL_152;
          }

          v85 = *v189;
          (*v189)(v172, &v84[v81], v196);
          if (v81 >= v77 && &v84[v81] < &v84[v78])
          {
            v83 = v196;
            if (v81 != v77)
            {
              v82 = v196;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v83 = v82;
            }

            result = (v85)(&v84[v77], v172, v83);
            v49 = v169;
            v47 = v170;
            v63 = v188;
LABEL_27:
            ++v80;
            v77 -= v63;
            v78 -= v63;
            v81 += v63;
            if (v80 >= v79)
            {
              v5 = v165;
              a4 = v167;
              v48 = v196;
              v50 = v164;
              v76 = v183;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v82 = v196;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v86 = v49[1];
  if (v76 >= v86)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v76, v50))
  {
    goto LABEL_145;
  }

  if (v76 - v50 >= a4)
  {
LABEL_44:
    a4 = v76;
    if (v76 < v50)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if ((v50 + a4) >= v86)
  {
    a4 = v49[1];
  }

  else
  {
    a4 += v50;
  }

  if (a4 < v50)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    result = sub_100056BCC(v47);
    v47 = result;
LABEL_117:
    v202 = v47;
    v157 = *(v47 + 16);
    if (v157 >= 2)
    {
      while (*v49)
      {
        v158 = *(v47 + 16 * v157);
        v159 = v47;
        v160 = *(v47 + 16 * (v157 - 1) + 32);
        v47 = *(v47 + 16 * (v157 - 1) + 40);
        sub_100056064(&(*v49)[*(v179 + 72) * v158], &(*v49)[*(v179 + 72) * v160], &(*v49)[*(v179 + 72) * v47], a4);
        if (v5)
        {
        }

        if (v47 < v158)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = sub_100056BCC(v159);
        }

        if (v157 - 2 >= *(v159 + 2))
        {
          goto LABEL_143;
        }

        v161 = &v159[16 * v157];
        *v161 = v158;
        *(v161 + 1) = v47;
        v202 = v159;
        result = sub_100056B40(v157 - 1);
        v47 = v202;
        v157 = *(v202 + 16);
        if (v157 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  if (v76 == a4)
  {
    goto LABEL_44;
  }

  v165 = v5;
  v133 = *v49;
  v134 = *(v179 + 72);
  v188 = *(v179 + 16);
  v135 = &v133[v134 * (v76 - 1)];
  v185 = -v134;
  v164 = v50;
  v136 = v50 - v76;
  v186 = v133;
  v171 = v134;
  v137 = &v133[v76 * v134];
  v173 = a4;
LABEL_98:
  v183 = v76;
  v174 = v137;
  v175 = v136;
  v138 = v136;
  v177 = v135;
  while (1)
  {
    v139 = v48;
    v140 = v21;
    v141 = v188;
    (v188)(v197, v137, v139);
    v141(v200, v135, v139);
    v142 = v201;
    v143 = v195;
    RecentsCallItem.date.getter();
    v144 = *v192;
    if ((*v192)(v143, 1, v142) == 1)
    {
      static Date.distantPast.getter();
      if (v144(v143, 1, v142) != 1)
      {
        sub_10000B880(v195, &qword_100124378);
      }
    }

    else
    {
      (*v191)(v198, v143, v142);
    }

    RecentsCallItem.date.getter();
    v145 = v199;
    v146 = v140;
    if (v144(v199, 1, v201) == 1)
    {
      static Date.distantPast.getter();
      if (v144(v145, 1, v201) != 1)
      {
        sub_10000B880(v145, &qword_100124378);
      }
    }

    else
    {
      (*v191)(v140, v145, v201);
    }

    v147 = v198;
    v148 = static Date.> infix(_:_:)();
    v149 = *v190;
    v150 = v146;
    v151 = v146;
    v152 = v201;
    (*v190)(v151, v201);
    v149(v147, v152);
    v153 = *v194;
    v48 = v196;
    (*v194)(v200, v196);
    result = (v153)(v197, v48);
    if ((v148 & 1) == 0)
    {
      v21 = v150;
LABEL_97:
      v76 = v183 + 1;
      v135 = &v177[v171];
      v136 = v175 - 1;
      v137 = &v174[v171];
      a4 = v173;
      if (v183 + 1 != v173)
      {
        goto LABEL_98;
      }

      v5 = v165;
      v49 = v169;
      v47 = v170;
      v50 = v164;
      if (v173 < v164)
      {
        goto LABEL_144;
      }

LABEL_45:
      result = swift_isUniquelyReferenced_nonNull_native();
      v173 = a4;
      if ((result & 1) == 0)
      {
        result = sub_1000519DC(0, *(v47 + 16) + 1, 1, v47);
        v47 = result;
      }

      a4 = *(v47 + 16);
      v87 = *(v47 + 24);
      v88 = a4 + 1;
      if (a4 >= v87 >> 1)
      {
        result = sub_1000519DC((v87 > 1), a4 + 1, 1, v47);
        v47 = result;
      }

      *(v47 + 16) = v88;
      v89 = v47 + 16 * a4;
      v90 = v173;
      *(v89 + 32) = v50;
      *(v89 + 40) = v90;
      if (!*v168)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v91 = *v168;
        while (1)
        {
          v92 = v88 - 1;
          if (v88 >= 4)
          {
            break;
          }

          if (v88 == 3)
          {
            v93 = *(v47 + 32);
            v94 = *(v47 + 40);
            v103 = __OFSUB__(v94, v93);
            v95 = v94 - v93;
            v96 = v103;
LABEL_65:
            if (v96)
            {
              goto LABEL_133;
            }

            v109 = (v47 + 16 * v88);
            v111 = *v109;
            v110 = v109[1];
            v112 = __OFSUB__(v110, v111);
            v113 = v110 - v111;
            v114 = v112;
            if (v112)
            {
              goto LABEL_136;
            }

            v115 = (v47 + 32 + 16 * v92);
            v117 = *v115;
            v116 = v115[1];
            v103 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v103)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v113, v118))
            {
              goto LABEL_140;
            }

            if (v113 + v118 >= v95)
            {
              if (v95 < v118)
              {
                v92 = v88 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v119 = (v47 + 16 * v88);
          v121 = *v119;
          v120 = v119[1];
          v103 = __OFSUB__(v120, v121);
          v113 = v120 - v121;
          v114 = v103;
LABEL_79:
          if (v114)
          {
            goto LABEL_135;
          }

          v122 = v47 + 16 * v92;
          v124 = *(v122 + 32);
          v123 = *(v122 + 40);
          v103 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v103)
          {
            goto LABEL_138;
          }

          if (v125 < v113)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = v92 - 1;
          if (v92 - 1 >= v88)
          {
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
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*v49)
          {
            goto LABEL_151;
          }

          v130 = *(v47 + 32 + 16 * a4);
          v131 = *(v47 + 32 + 16 * v92 + 8);
          sub_100056064(&(*v49)[*(v179 + 72) * v130], &(*v49)[*(v179 + 72) * *(v47 + 32 + 16 * v92)], &(*v49)[*(v179 + 72) * v131], v91);
          if (v5)
          {
          }

          if (v131 < v130)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100056BCC(v47);
          }

          if (a4 >= *(v47 + 16))
          {
            goto LABEL_130;
          }

          v132 = v47 + 16 * a4;
          *(v132 + 32) = v130;
          *(v132 + 40) = v131;
          v202 = v47;
          result = sub_100056B40(v92);
          v47 = v202;
          v88 = *(v202 + 16);
          v48 = v196;
          if (v88 <= 1)
          {
            goto LABEL_3;
          }
        }

        v97 = v47 + 32 + 16 * v88;
        v98 = *(v97 - 64);
        v99 = *(v97 - 56);
        v103 = __OFSUB__(v99, v98);
        v100 = v99 - v98;
        if (v103)
        {
          goto LABEL_131;
        }

        v102 = *(v97 - 48);
        v101 = *(v97 - 40);
        v103 = __OFSUB__(v101, v102);
        v95 = v101 - v102;
        v96 = v103;
        if (v103)
        {
          goto LABEL_132;
        }

        v104 = (v47 + 16 * v88);
        v106 = *v104;
        v105 = v104[1];
        v103 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v103)
        {
          goto LABEL_134;
        }

        v103 = __OFADD__(v95, v107);
        v108 = v95 + v107;
        if (v103)
        {
          goto LABEL_137;
        }

        if (v108 >= v100)
        {
          v126 = (v47 + 32 + 16 * v92);
          v128 = *v126;
          v127 = v126[1];
          v103 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v103)
          {
            goto LABEL_141;
          }

          if (v95 < v129)
          {
            v92 = v88 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v45 = v49[1];
      v46 = v173;
      a4 = v167;
      if (v173 >= v45)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v186)
    {
      break;
    }

    v154 = *v189;
    v155 = v187;
    (*v189)(v187, v137, v48);
    swift_arrayInitWithTakeFrontToBack();
    v154(v135, v155, v48);
    v135 += v185;
    v137 += v185;
    v156 = __CFADD__(v138++, 1);
    v21 = v150;
    if (v156)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_100055974(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = type metadata accessor for Date();
  v7 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v56 - v10;
  v72 = type metadata accessor for GroupedHistoryItem();
  v11 = *(v72 - 8);
  v12 = __chkstk_darwin(v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
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

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            GroupedHistoryItem.date.getter();
            v49 = v67;
            GroupedHistoryItem.date.getter();
            v69 = static Date.> infix(_:_:)();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
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

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        GroupedHistoryItem.date.getter();
        v29 = v67;
        GroupedHistoryItem.date.getter();
        v69 = static Date.> infix(_:_:)();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_100056BE0(&v76, &v75, &v74, &type metadata accessor for GroupedHistoryItem);
  return 1;
}

uint64_t sub_100056064(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v93 = a4;
  v95 = a3;
  v6 = sub_1000525C4(&qword_100124378);
  v7 = __chkstk_darwin(v6 - 8);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v12 = __chkstk_darwin(v9);
  v92 = &v74 - v13;
  __chkstk_darwin(v12);
  v87 = &v74 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v85 = (&v74 - v20);
  v21 = __chkstk_darwin(v19);
  v83 = &v74 - v22;
  __chkstk_darwin(v21);
  v91 = &v74 - v23;
  v24 = type metadata accessor for RecentsCallItem();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v89 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v84 = (&v74 - v29);
  v30 = __chkstk_darwin(v28);
  v94 = &v74 - v31;
  result = __chkstk_darwin(v30);
  v90 = &v74 - v33;
  v88 = *(v34 + 72);
  if (!v88)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v88 == -1)
  {
    goto LABEL_79;
  }

  v35 = v95 - a2;
  if (v95 - a2 != 0x8000000000000000 || v88 != -1)
  {
    v36 = &a2[-a1] / v88;
    v98 = a1;
    v37 = v93;
    v97 = v93;
    if (v36 < v35 / v88)
    {
      v38 = v36 * v88;
      if (v93 < a1 || a1 + v38 <= v93)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v93 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v93;
LABEL_17:
      v89 = (v37 + v38);
      v96 = v37 + v38;
      if (v38 >= 1 && a2 < v95)
      {
        v41 = *(v25 + 16);
        v42 = (v16 + 48);
        v84 = (v16 + 32);
        v85 = v41;
        v86 = (v25 + 16);
        v81 = (v25 + 8);
        v82 = (v16 + 8);
        do
        {
          v43 = a2;
          v44 = v37;
          v45 = v85;
          v85(v90, a2, v24);
          v93 = v44;
          v45(v94, v44, v24);
          v46 = v87;
          RecentsCallItem.date.getter();
          v47 = *v42;
          if ((*v42)(v46, 1, v15) == 1)
          {
            static Date.distantPast.getter();
            if (v47(v46, 1, v15) != 1)
            {
              sub_10000B880(v87, &qword_100124378);
            }
          }

          else
          {
            (*v84)(v91, v46, v15);
          }

          RecentsCallItem.date.getter();
          v48 = v92;
          if (v47(v92, 1, v15) == 1)
          {
            v49 = v83;
            static Date.distantPast.getter();
            if (v47(v48, 1, v15) != 1)
            {
              sub_10000B880(v48, &qword_100124378);
            }
          }

          else
          {
            v49 = v83;
            (*v84)(v83, v48, v15);
          }

          v50 = v91;
          v51 = static Date.> infix(_:_:)();
          v52 = v49;
          v53 = *v82;
          (*v82)(v52, v15);
          v53(v50, v15);
          v54 = *v81;
          (*v81)(v94, v24);
          v54(v90, v24);
          if (v51)
          {
            v55 = v88;
            a2 = (v43 + v88);
            if (a1 < v43 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v37 = v93;
          }

          else
          {
            v55 = v88;
            v56 = v93 + v88;
            a2 = v43;
            if (a1 < v93 || a1 >= v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v97 = v56;
            v37 = v56;
          }

          a1 += v55;
          v98 = a1;
        }

        while (v37 < v89 && a2 < v95);
      }

LABEL_77:
      sub_100056BE0(&v98, &v97, &v96, &type metadata accessor for RecentsCallItem);
      return 1;
    }

    v39 = v35 / v88 * v88;
    if (v93 < a2 || &a2[v39] <= v93)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v93 == a2)
      {
LABEL_48:
        v91 = a2;
        v57 = v37 + v39;
        if (v39 >= 1)
        {
          v90 = v11;
          v58 = -v88;
          v80 = (v16 + 48);
          v81 = (v25 + 16);
          v78 = (v16 + 8);
          v79 = (v16 + 32);
          v77 = (v25 + 8);
          v59 = v57;
          v83 = v24;
          v87 = a1;
          v94 = -v88;
          do
          {
            v75 = v57;
            v60 = v91;
            v91 += v58;
            v88 = v60;
            while (1)
            {
              v61 = v95;
              if (v60 <= a1)
              {
                v98 = v60;
                v96 = v75;
                goto LABEL_77;
              }

              v76 = v57;
              v62 = (v59 + v58);
              v63 = *v81;
              (*v81)(v84, v62, v24);
              (v63)(v89, v91, v24);
              v64 = v90;
              RecentsCallItem.date.getter();
              v65 = *v80;
              if ((*v80)(v64, 1, v15) == 1)
              {
                static Date.distantPast.getter();
                if (v65(v64, 1, v15) != 1)
                {
                  sub_10000B880(v90, &qword_100124378);
                }
              }

              else
              {
                (*v79)(v85, v64, v15);
              }

              RecentsCallItem.date.getter();
              v66 = v86;
              v67 = v65(v86, 1, v15);
              v68 = v82;
              v92 = v62;
              if (v67 == 1)
              {
                static Date.distantPast.getter();
                if (v65(v66, 1, v15) != 1)
                {
                  sub_10000B880(v66, &qword_100124378);
                }
              }

              else
              {
                (*v79)(v82, v66, v15);
              }

              v95 = (v61 + v94);
              v69 = v85;
              v70 = static Date.> infix(_:_:)();
              v71 = *v78;
              (*v78)(v68, v15);
              v71(v69, v15);
              v72 = *v77;
              v24 = v83;
              (*v77)(v89, v83);
              v72(v84, v24);
              if (v70)
              {
                break;
              }

              v73 = v92;
              v57 = v92;
              v60 = v88;
              if (v61 < v59 || v95 >= v59)
              {
                swift_arrayInitWithTakeFrontToBack();
                v58 = v94;
              }

              else
              {
                v58 = v94;
                if (v61 != v59)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v59 = v57;
              a1 = v87;
              if (v73 <= v93)
              {
                v91 = v60;
                goto LABEL_76;
              }
            }

            if (v61 < v88 || v95 >= v88)
            {
              swift_arrayInitWithTakeFrontToBack();
              v57 = v76;
              v58 = v94;
            }

            else
            {
              v57 = v76;
              v58 = v94;
              if (v61 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v87;
          }

          while (v59 > v93);
        }

LABEL_76:
        v98 = v91;
        v96 = v57;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v37 = v93;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_100056B40(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100056BCC(v3);
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

uint64_t sub_100056BE0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_100056CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100056D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10005B5FC(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100056F20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MessageID(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100056FE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000525C4(&qword_100124450);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100057288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000525C4(&qword_100124430);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100057548(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CoalescedRecentItem();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000525C4(&qword_100124448);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10005B6A8(v28, v41);
      }

      else
      {
        sub_10005B644(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10005B6A8(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100057884(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for GroupedHistoryItem();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParticipantKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000525C4(&qword_100124498);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10005B5FC(&qword_1001244B0, &type metadata accessor for ParticipantKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100057D2C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for RecentCall();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000525C4(&qword_1001244F0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005B5FC(&qword_1001244F8, &type metadata accessor for RecentCall);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100058144(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000525C4(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1000583AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Handle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000525C4(&qword_100124408);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005B5FC(&qword_100124410, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100058788(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000525C4(a3);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

size_t sub_100058A38(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000525C4(&qword_100124540);
  v10 = *(sub_1000525C4(&qword_100124490) - 8);
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
  v15 = *(sub_1000525C4(&qword_100124490) - 8);
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

char *sub_100058C50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000525C4(&qword_100124568);
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

void *sub_100058D84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1000525C4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_100058EB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000525C4(&unk_100124590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000525C4(&qword_100125730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100059014(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1000525C4(a5);
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