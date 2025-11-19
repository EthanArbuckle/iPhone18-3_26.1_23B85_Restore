id sub_1009A1C60(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v7 = 0;
  v8 = (v4 + 32);
  while (v7 < *(v4 + 16))
  {
    ++v7;
    v9 = *v8;
    v8 += 2;
    result = [v9 *a1];
    if (v5 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_1009A1D1C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&qword_1011AB010);
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  v9 = sub_10010FC20(&qword_1011AB018);
  __chkstk_darwin(v9 - 8);
  v37 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v32[-v12];
  v16 = __chkstk_darwin(v14);
  v17 = &v32[-v15];
  if (a1)
  {
    v34 = v5;
    v18 = v3;
    v19 = *(v3 + 16);
    v36 = a1;
    v19(&v32[-v15], a1 + direct field offset for Gliss.Transition.id, v2, v16);
    v35 = v18;
    v20 = *(v18 + 56);
    v21 = 1;
    v20(v17, 0, 1, v2);
    v22 = *(v38 + *((swift_isaMask & *v38) + 0x88));
    if (v22)
    {
      (v19)(v13, v22 + direct field offset for Gliss.Transition.id, v2);
      v21 = 0;
    }

    v20(v13, v21, 1, v2);
    v23 = *(v6 + 48);
    sub_1009A9C3C(v17, v8);
    sub_1009A9C3C(v13, &v8[v23]);
    v24 = v35;
    v25 = *(v35 + 48);
    if (v25(v8, 1, v2) == 1)
    {
      v26 = v36;

      sub_1000095E8(v13, &qword_1011AB018);
      sub_1000095E8(v17, &qword_1011AB018);
      v27 = v26;
      if (v25(&v8[v23], 1, v2) == 1)
      {
        sub_1000095E8(v8, &qword_1011AB018);
LABEL_13:

        return;
      }
    }

    else
    {
      v28 = v37;
      sub_1009A9C3C(v8, v37);
      if (v25(&v8[v23], 1, v2) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, &v8[v23], v2);
        sub_1009A9CAC();
        v27 = v36;

        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v24 + 8);
        v31(v30, v2);
        sub_1000095E8(v13, &qword_1011AB018);
        sub_1000095E8(v17, &qword_1011AB018);
        v31(v37, v2);
        sub_1000095E8(v8, &qword_1011AB018);
        if (v33)
        {
          goto LABEL_13;
        }

LABEL_10:
        v29 = *(*v27 + 128);
        swift_beginAccess();
        if (*(v27 + v29) <= 2u)
        {
          sub_1009A350C(v27, 0);
        }

        goto LABEL_13;
      }

      v27 = v36;

      sub_1000095E8(v13, &qword_1011AB018);
      sub_1000095E8(v17, &qword_1011AB018);
      (*(v24 + 8))(v28, v2);
    }

    sub_1000095E8(v8, &qword_1011AB010);
    goto LABEL_10;
  }
}

uint64_t sub_1009A2220(uint64_t a1)
{
  sub_1009A963C(a1);
}

id sub_1009A2258()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1]);
    sub_100020438(v9[3]);
    sub_100020438(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1009A2334()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1]);
    sub_100020438(v9[3]);
    sub_100020438(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1009A2410()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_100020438(v9[1]);
    sub_100020438(v9[3]);
    sub_100020438(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1009A24E8(uint64_t a1, int a2)
{
  v3 = v2;
  v102 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v100 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = type metadata accessor for Optional();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v86 - v11;
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  v101 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v18);
  v98 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = &v86 - v21;
  __chkstk_darwin(v22);
  v97 = &v86 - v23;
  __chkstk_darwin(v24);
  v96 = &v86 - v25;
  __chkstk_darwin(v26);
  v28 = &v86 - v27;
  v29 = *(v3 + *((v6 & v5) + 0x88));
  v93 = a2;
  if (v29)
  {
    v30 = *(*v29 + 128);
    swift_beginAccess();
    if (*(v29 + v30) <= 2u)
    {
      v87 = v7;
      v31 = *(*v29 + 112);
      swift_beginAccess();
      v32 = v95;
      v33 = *(v95 + 16);
      v90 = v31;
      v89 = v33;
      v33(v17, v29 + v31, v99);
      v34 = v101;
      v88 = *(v101 + 48);
      if (v88(v17, 1, AssociatedTypeWitness) == 1)
      {
        v35 = *(v32 + 8);

        v35(v17, v99);
      }

      else
      {
        (*(v34 + 32))(v28, v17, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v34 + 8))(v28, AssociatedTypeWitness);
        if (v36)
        {
          return v29;
        }
      }

      v89(v14, v29 + v90, v99);
      if (v88(v14, 1, AssociatedTypeWitness) == 1)
      {
        (*(v95 + 8))(v14, v99);
        v37 = *(*v29 + 104);
        swift_beginAccess();
        v38 = v101;
        v39 = v96;
        (*(v101 + 16))(v96, v29 + v37, AssociatedTypeWitness);
        v7 = v87;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v38 + 8))(v39, AssociatedTypeWitness);
        if (v37)
        {
          return v29;
        }
      }

      else
      {

        (*(v95 + 8))(v14, v99);
        v7 = v87;
      }
    }
  }

  v88 = v3;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_1000060E4(v40, qword_101219B98);
  v42 = v101;
  v43 = *(v101 + 16);
  v44 = v97;
  v43(v97, v102, AssociatedTypeWitness);
  v90 = v41;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v89 = v43;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v87 = v7;
    v49 = v48;
    v50 = swift_slowAlloc();
    v105 = v50;
    *v49 = 136446210;
    v43(v96, v44, AssociatedTypeWitness);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    v97 = *(v101 + 8);
    (v97)(v44, AssociatedTypeWitness);
    v54 = sub_100010678(v51, v53, &v105);
    v55 = v87;

    *(v49 + 4) = v54;
    v42 = v101;
    _os_log_impl(&_mh_execute_header, v45, v46, "Creating transition for item=%{public}s", v49, 0xCu);
    sub_10000959C(v50);
  }

  else
  {
    v55 = v7;

    v97 = *(v42 + 8);
    (v97)(v44, AssociatedTypeWitness);
  }

  v56 = v94;
  v57 = v95;
  v58 = v88;
  v59 = *(v88 + *((swift_isaMask & *v88) + 0x88));
  if (!v59)
  {
    v62 = v91;
    (*(v42 + 56))(v91, 1, 1, AssociatedTypeWitness);
    v63 = v55;
    goto LABEL_19;
  }

  v60 = *(*v59 + 112);
  swift_beginAccess();
  v61 = v59 + v60;
  v62 = v91;
  (*(v57 + 16))(v91, v61, v99);
  v63 = v55;
  if ((*(v42 + 48))(v62, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v56);
    v65 = (*(v42 + 48))(v62, 1, AssociatedTypeWitness);
    v64 = v89;
    if (v65 != 1)
    {
      (*(v57 + 8))(v62, v99);
    }

    v64(v98, v56, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v42 + 32))(v56, v62, AssociatedTypeWitness);
  v64 = v89;
  v89(v98, v56, AssociatedTypeWitness);
LABEL_22:
  v66 = v96;
  Gliss.Coordinator.item.getter(v96);
  swift_getAssociatedConformanceWitness();
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v101 = v42 + 8;
  (v97)(v66, AssociatedTypeWitness);
  if (v67)
  {
    v68 = 1;
    v69 = v92;
  }

  else
  {
    v69 = v92;
    v64(v92, v102, AssociatedTypeWitness);
    v68 = 0;
  }

  (*(v42 + 56))(v69, v68, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition();
  v70 = v69;
  v71 = *((swift_isaMask & *v58) + 0x70);
  v72 = swift_beginAccess();
  v73 = *(v58 + v71);
  __chkstk_darwin(v72);
  *(&v86 - 4) = v100;
  *(&v86 - 3) = v63;
  *(&v86 - 2) = v102;
  v74 = v93;
  *(&v86 - 8) = v93;

  v75 = sub_10099F554(_swiftEmptyDictionarySingleton, sub_1009A9F98, (&v86 - 6), v73);

  v29 = sub_1009AA074(v98, v70, v74, v75, 0.0);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v56;
    v80 = swift_slowAlloc();
    v103 = v29;
    v104 = v80;
    *v78 = 136446210;
    swift_getWitnessTable();
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = sub_100010678(v81, v82, &v104);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "   Created Transition=%{public}s", v78, 0xCu);
    sub_10000959C(v80);

    v84 = v79;
  }

  else
  {

    v84 = v56;
  }

  (v97)(v84, AssociatedTypeWitness);
  return v29;
}

void sub_1009A311C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = v6;
  sub_10099EB9C(a3, a4, ObjectType, AssociatedTypeWitness, v7, v11);
  sub_100A23EE0(v11, v10);
}

void sub_1009A3204(uint64_t a1)
{
  v2 = v1;
  if (qword_1011A6998 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101219B98);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136446210;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_100010678(v9, v10, v24);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Begin or Enqueue Transition=%{public}s", v7, 0xCu);
      sub_10000959C(v8);
    }

    sub_1009AAD8C(2);

    sub_1009A963C(v12);

    v13 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);

    if (!v15)
    {
      break;
    }

    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *v17;
      v19 = *(v17 - 1);
      ObjectType = swift_getObjectType();
      sub_10099EFBC(a1, ObjectType, v18);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_1009A1C54();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "   Transition Started!", v23, 2u);
  }
}

void sub_1009A350C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101219B98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100010678(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100010678(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_1009AAD8C(4);
    sub_1009A1C48();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_1008B63F4(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_1009A9500(v32, v33, v34);
      sub_100020438(v35);
      sub_100020438(v55[3]);
      sub_100020438(v55[5]);
      v37 = sub_1009AA0EC(a1, v36, v32, v33, v34);

      sub_1009A94D8(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_1009A9DA4;
      *(v38 + 24) = v17;
      v53 = sub_1001D3174;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10002BC98;
      v52 = &unk_1010D4D38;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_1009A9DE0;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_1009A9FE8;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_100338AB8;
      v52 = &unk_1010D4D88;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_1008B9918(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_1009A4B5C(a1, 0, 0.0);
      sub_1009A3C08(a1, v30);
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

uint64_t sub_1009A3C08(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AB010);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_10010FC20(&qword_1011AB018);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v18 = (&v54 - v17);
  sub_1009AAD8C(6);
  if (qword_1011A6998 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219B98);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v12;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = sub_100010678(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "❎ Cancelled transition=%{public}s", v23, 0xCu);
      sub_10000959C(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v15, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v15, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_1009A9C3C(v18, v61);
    sub_1009A9C3C(v15, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_1000095E8(v15, &qword_1011AB018);
      v36 = v61;
      sub_1000095E8(v18, &qword_1011AB018);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_1000095E8(v36, &qword_1011AB018);
      v37 = v59;
LABEL_14:
      sub_1009A963C(0);
      goto LABEL_15;
    }

    v58 = v15;
    v38 = v55;
    sub_1009A9C3C(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_1000095E8(v58, &qword_1011AB018);
      v36 = v61;
      sub_1000095E8(v18, &qword_1011AB018);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_1000095E8(v36, &qword_1011AB010);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_1009A9CAC();
    v43 = v29;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_1000095E8(v58, &qword_1011AB018);
    sub_1000095E8(v18, &qword_1011AB018);
    v45(v38, v30);
    sub_1000095E8(v41, &qword_1011AB018);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v12 = *(v50 + 16);

    if (!v12)
    {
    }

    v15 = 0;
    v18 = (v50 + 40);
    while (v15 < *(v50 + 16))
    {
      ++v15;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_10099F0B8(a1, ObjectType, v51);

      v18 += 2;
      if (v12 == v15)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

void sub_1009A4460(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101219B98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_100010678(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100010678(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to end transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_1009AAD8C(3);
    sub_1009A1C48();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_1008B63F4(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_1009A9500(v32, v33, v34);
      sub_100020438(v35);
      sub_100020438(v55[3]);
      sub_100020438(v55[5]);
      v37 = sub_1009AA0EC(a1, v36, v32, v33, v34);

      sub_1009A94D8(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_1009A9E28;
      *(v38 + 24) = v17;
      v53 = sub_100029B6C;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10002BC98;
      v52 = &unk_1010D4E28;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_1009A9E64;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_1009A9EB4;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_100338AB8;
      v52 = &unk_1010D4E78;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_1008B9918(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_1009A4B5C(a1, 0, 1.0);
      sub_1009A4D38(a1, v30);
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

id sub_1009A4B5C(uint64_t a1, char a2, double a3)
{
  v5 = a1 + *(*a1 + 120);
  swift_beginAccess();
  *(v5 + 8) = a3;
  if (a2)
  {
    v6 = swift_beginAccess();
    __chkstk_darwin(v6);
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  return sub_1009A1C54();
}

uint64_t sub_1009A4D38(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AB010);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_10010FC20(&qword_1011AB018);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v18 = (&v54 - v17);
  sub_1009AAD8C(5);
  if (qword_1011A6998 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219B98);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v12;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = sub_100010678(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "✅ End of transition=%{public}s", v23, 0xCu);
      sub_10000959C(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v15, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v15, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_1009A9C3C(v18, v61);
    sub_1009A9C3C(v15, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_1000095E8(v15, &qword_1011AB018);
      v36 = v61;
      sub_1000095E8(v18, &qword_1011AB018);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_1000095E8(v36, &qword_1011AB018);
      v37 = v59;
LABEL_14:
      sub_1009A963C(0);
      goto LABEL_15;
    }

    v58 = v15;
    v38 = v55;
    sub_1009A9C3C(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_1000095E8(v58, &qword_1011AB018);
      v36 = v61;
      sub_1000095E8(v18, &qword_1011AB018);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_1000095E8(v36, &qword_1011AB010);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_1009A9CAC();
    v43 = v29;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_1000095E8(v58, &qword_1011AB018);
    sub_1000095E8(v18, &qword_1011AB018);
    v45(v38, v30);
    sub_1000095E8(v41, &qword_1011AB018);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v12 = *(v50 + 16);

    if (!v12)
    {
    }

    v15 = 0;
    v18 = (v50 + 40);
    while (v15 < *(v50 + 16))
    {
      ++v15;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_10099F0B8(a1, ObjectType, v51);

      v18 += 2;
      if (v12 == v15)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1009A5590(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_100A23D20(0, v11);
  return swift_endAccess();
}

void sub_1009A56D4(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_1009A5704()
{
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v16[0] = v0;
    v4 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator();
    v3 = [v4 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v2 = 0;
  }

  v5 = v3;
  v6 = v2;
  [v5 setDelegate:v0];
  v7 = *((swift_isaMask & *v0) + 0xB0);
  v8 = *(v0 + v7);
  *(v0 + v7) = v5;
  v9 = v5;

  [v9 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v16);
  v10 = v16[0];
  sub_100020438(v16[1]);
  sub_100020438(v16[3]);
  sub_100020438(v16[5]);
  v11 = [v9 view];
  if (v11)
  {
    v12 = v11;
    sub_100009F78(0, &qword_1011AB020);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      [v12 removeGestureRecognizer:v9];
    }
  }

  v13 = [v9 view];

  if (!v13 || (sub_100009F78(0, &qword_1011AB020), v14 = v10, v15 = static NSObject.== infix(_:_:)(), v13, v14, (v15 & 1) == 0))
  {
    [v10 addGestureRecognizer:v9];
  }
}

void sub_1009A595C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v6 - 8);
  v293 = v286 - v7;
  v8 = *((v5 & v4) + 0x50);
  v312 = *((v5 & v4) + 0x58);
  v309 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v310 = *(v10 - 8);
  __chkstk_darwin(v10);
  v294 = v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v297 = v286 - v13;
  __chkstk_darwin(v14);
  v296 = v286 - v15;
  __chkstk_darwin(v16);
  v298 = v286 - v17;
  __chkstk_darwin(v18);
  v301 = v286 - v19;
  __chkstk_darwin(v20);
  v300 = v286 - v21;
  v313 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin(v23);
  v302 = v286 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v292 = v286 - v26;
  __chkstk_darwin(v27);
  v29 = v286 - v28;
  __chkstk_darwin(v30);
  v311 = v286 - v31;
  v291 = v32;
  __chkstk_darwin(v33);
  v307 = v34;
  v308 = v286 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v39 = v286 - v38;
  v40 = Gliss.Coordinator.dataSource.getter();
  if (!v40)
  {
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000060E4(v57, qword_101219B98);
    v313 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v313, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v313, v58, "No Data Source Set", v59, 2u);
    }

    v60 = v313;

    return;
  }

  v41 = v40;
  Gliss.Coordinator.gestureConfiguration.getter(v317);
  v42 = v317[0];
  sub_100020438(v317[1]);
  sub_100020438(v317[3]);
  sub_100020438(v317[5]);
  v295 = a1;
  [a1 translationInView:v42];
  v44 = v43;
  v46 = v45;

  if (v44 == 0.0)
  {
    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000060E4(v61, qword_101219B98);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v65 = COERCE_DOUBLE(swift_slowAlloc());
      v314 = *&v65;
      *v64 = 136446210;
      v318 = v44;
      v319 = v46;
      _s3__C7CGPointVMa_0(0);
      v66 = String.init<A>(describing:)();
      v68 = sub_100010678(v66, v67, &v314);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to compute direction from gesture's translation %{public}s", v64, 0xCu);
      sub_10000959C(v65);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v305 = isa;
  v47 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v299 = TupleTypeMetadata2;
  v303 = v2;
  v304 = v41;
  v306 = v39;
  if (v47)
  {
    v48 = *(*v47 + 120);
    swift_beginAccess();
    v49 = *(v47 + v48);
    v50 = v308;
    if (v49 == 2 || (((v44 >= 0.0) ^ v49) & 1) != 0)
    {

      v2 = v303;
      sub_1009A963C(0);
      Gliss.Coordinator.item.getter(v50);
      v56 = v309;
      (v312[3].isa)(v306, &v306[*(TupleTypeMetadata2 + 48)], v50, v309);
    }

    else
    {
      v51 = *(*v47 + 104);
      swift_beginAccess();
      (v305[2])(v50, v47 + v51, v313);
      v52 = v37;
      v53 = v306;
      v54 = v312[3].isa;
      v55 = *(v299 + 48);

      v56 = v309;
      (v54)(v53, &v53[v55], v50);
      v37 = v52;
      TupleTypeMetadata2 = v299;

      v2 = v303;
    }
  }

  else
  {
    v50 = v308;
    Gliss.Coordinator.item.getter(v308);
    v69 = &v39[*(TupleTypeMetadata2 + 48)];
    v70 = v39;
    v56 = v309;
    (v312[3].isa)(v70, v69, v50, v309);
  }

  v71 = v305;
  v72 = v305[1];
  v288 = (v305 + 1);
  v289 = v37;
  v72(v50, v313);
  Gliss.Coordinator.gestureConfiguration.getter(&v318);
  v73 = v318;
  sub_100020438(v319);
  sub_100020438(v320);
  sub_100020438(v321);
  v74 = [*&v73 effectiveUserInterfaceLayoutDirection];
  v290 = v72;
  v287 = v73;
  if (v44 < 0.0)
  {
    v75 = v311;
    if (!v74)
    {
      goto LABEL_30;
    }

    if (v74 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v29);
      goto LABEL_39;
    }

LABEL_26:
    v76 = v301;
    (*(v310 + 2))(v301, v306, v307);
    v77 = v71[6];
    if (v77(v76, 1, v313) != 1)
    {
      (v71[4])(v29, v76, v313);
      v2 = v303;
      v56 = v309;
      goto LABEL_39;
    }

    v78 = v303;
    Gliss.Coordinator.item.getter(v29);
    v79 = v77(v76, 1, v313);
    v2 = v78;
    v80 = v79 == 1;
    v81 = v76;
    v56 = v309;
    if (v80)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v75 = v311;
  if (!v74)
  {
    goto LABEL_26;
  }

  if (v74 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v82 = &v306[*(TupleTypeMetadata2 + 48)];
  v83 = v300;
  (*(v310 + 2))(v300, v82, v307);
  v84 = v71[6];
  if (v84(v83, 1, v313) != 1)
  {
    (v71[4])(v29, v83, v313);
    TupleTypeMetadata2 = v299;
    v2 = v303;
    goto LABEL_39;
  }

  v85 = v303;
  Gliss.Coordinator.item.getter(v29);
  v86 = v84(v83, 1, v313);
  v2 = v85;
  v80 = v86 == 1;
  v81 = v83;
  TupleTypeMetadata2 = v299;
  if (!v80)
  {
LABEL_32:
    (*(v310 + 1))(v81, v307);
  }

LABEL_39:
  v87 = v71[4];
  v87(v75, v29, v313);
  if ((v312[4].isa)(v75, v56))
  {
    v286[1] = v71 + 4;
    v88 = TupleTypeMetadata2;
    v89 = *&v287;
    [v295 velocityInView:v89];
    v91 = v90;
    v93 = v92;
    v94 = sub_1009A24E8(v75, v44 >= 0.0);
    v302 = v89;
    [v89 bounds];
    Width = CGRectGetWidth(v323);
    v96 = v94 + *(*v94 + 168);
    swift_beginAccess();
    v97 = *(v96 + 32);
    v98 = v97 != 2;
    v99 = v98 & v97;
    if ((v98 & *(v96 + 33)) != 0)
    {
      v100 = 256;
    }

    else
    {
      v100 = 0;
    }

    *v96 = v44;
    *(v96 + 8) = v46;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v100 | v99;
    v101 = *(*v94 + 128);
    swift_beginAccess();
    v102 = *(v94 + v101);
    v301 = v94;
    if (v102 <= 1)
    {
      v103 = v87;
      if (qword_1011A6998 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      v300 = sub_1000060E4(v104, qword_101219B98);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "🤏 Swipe Gesture Began", v107, 2u);
      }

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *&v111 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v111;
        *v110 = 136446210;
        LOBYTE(v316[0]) = v44 >= 0.0;
        v112 = String.init<A>(describing:)();
        v114 = sub_100010678(v112, v113, &v314);

        *(v110 + 4) = v114;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v108, v109, "   Direction=%{public}s", v110, 0xCu);
        sub_10000959C(v111);
      }

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *&v118 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v118;
        *v117 = 136446210;
        v316[0] = v94;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = sub_100010678(v119, v120, &v314);

        *(v117 + 4) = v121;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v115, v116, "   Transition=%{public}s", v117, 0xCu);
        sub_10000959C(v118);
      }

      v88 = v299;
      v87 = v103;
      v2 = v303;
      sub_1009A3204(v94);
      v75 = v311;
    }

    v122 = [v295 state];
    if (v122 <= 2)
    {
      if (v122 < 2)
      {
        v123 = sub_1009A2258();
        [v123 prepare];

        goto LABEL_69;
      }

      v148 = v290;
      if (v122 == 2)
      {
LABEL_69:
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v157 = type metadata accessor for Logger();
        v158 = sub_1000060E4(v157, qword_101219B98);
        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&_mh_execute_header, v159, v160, "🤏 Swipe Gesture Updated", v161, 2u);
        }

        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.debug.getter();
        v164 = os_log_type_enabled(v162, v163);
        v312 = v158;
        if (v164)
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v316[0] = v166;
          *v165 = 136446210;
          v314 = v44;
          v315 = v46;
          _s3__C7CGPointVMa_0(0);
          v167 = String.init<A>(describing:)();
          v169 = sub_100010678(v167, v168, v316);

          *(v165 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v162, v163, "   Translation=%{public}s", v165, 0xCu);
          sub_10000959C(v166);
        }

        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.debug.getter();
        v172 = os_log_type_enabled(v170, v171);
        v173 = v302;
        v174 = v310;
        if (v172)
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v316[0] = v176;
          *v175 = 136446210;
          v314 = v91;
          v315 = v93;
          _s3__C7CGPointVMa_0(0);
          v177 = String.init<A>(describing:)();
          v179 = sub_100010678(v177, v178, v316);

          *(v175 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v170, v171, "   Velocity=%{public}s", v175, 0xCu);
          sub_10000959C(v176);
        }

        v180 = v298;
        [v173 bounds];
        v181 = fabs(v44);
        v182 = v181 * (1.0 / CGRectGetWidth(v324));
        v183 = *(*v94 + 112);
        swift_beginAccess();
        v184 = *(v174 + 2);
        v309 = v183;
        v185 = v94 + v183;
        v186 = v307;
        v187 = v184;
        v184(v180, v185, v307);
        v188 = v305[6];
        v305 += 6;
        v189 = v188;
        if (v188(v180, 1, v313) == 1)
        {

          v190 = *(v174 + 1);
          v190(v180, v186);
          v191 = v186;
          v192 = v187;
          v193 = v189;
        }

        else
        {
          v190 = *(v174 + 1);
          v190(v180, v186);
          v194 = v94 + *(*v94 + 120);
          swift_beginAccess();
          v195 = *(v194 + 8);
          *(v194 + 8) = v182;
          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 134349056;
            *(v198 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v196, v197, "   Progression Value=%{public}f", v198, 0xCu);
          }

          v192 = v187;
          if (v195 >= 0.45)
          {
            v193 = v189;
            if (v195 <= 0.55)
            {
              v231 = v309;
              if (v182 < 0.45 || v182 > 0.55)
              {
                v279 = sub_1009A2258();
                [v295 locationInView:v173];
                v281 = v280;
                v283 = v282;

                [v279 impactOccurredAtLocation:{v281, v283}];
                v285 = sub_1009AB400();
                if (*(v284 + 32) != 2)
                {
                  *(v284 + 32) = v182 >= 0.55;
                }

                (v285)(&v314, 0);
                v191 = v307;
              }

              else
              {

                v191 = v307;
              }

LABEL_110:
              if (v182 <= 1.0)
              {
                v233 = 0;
              }

              else
              {
                v232 = v296;
                v192(v296, &v301[v231], v191);
                v233 = v193(v232, 1, v313) != 1;
                v190(v232, v191);
              }

              v235 = sub_1009AB400();
              if (*(v234 + 32) != 2)
              {
                *(v234 + 33) = v233;
              }

              (v235)(&v314, 0);
              v236 = v301;
              v237 = v297;
              v192(v297, &v301[v231], v191);
              v238 = v236;
              LODWORD(v236) = v193(v237, 1, v313) == 1;
              v190(v237, v191);
              v239 = v289;
              v240 = v290;
              v241 = v299;
              v242 = v306;
              if (((v236 | v233) & 1) == 0)
              {
                goto LABEL_125;
              }

              v243 = v302;
              [v302 bounds];
              v244 = CGRectGetWidth(v325) * 0.2;
              v245 = 0.0;
              if (v233)
              {
                [v243 bounds];
                v245 = CGRectGetWidth(v326);
              }

              v246 = v244 * ((v181 - v245) / (v244 + v244 + v181 - v245));
              [v243 bounds];
              v247 = 1.0 / CGRectGetWidth(v327) * v246;
              if (v233)
              {
                v248 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v248 + 1) = v247 + 1.0;

                v249 = Logger.logObject.getter();
                v250 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v248 + 1);
                  v252 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v249, v250, v252, v251, 0xCu);

                  v241 = v299;
                }
              }

              else
              {
                v253 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v253 + 1) = v247;

                v249 = Logger.logObject.getter();
                v250 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v253 + 1);
                  v252 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_1009A1C48();

              swift_unknownObjectRelease();

              v240(v311, v313);
              (*(v239 + 8))(v242, v241);
              return;
            }

            v191 = v307;
          }

          else
          {

            v191 = v307;
            v193 = v189;
          }
        }

        v231 = v309;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v147 = v305;
    if (v122 != 3)
    {
      if (v122 == 4)
      {

        v148 = v290;
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v208 = type metadata accessor for Logger();
        sub_1000060E4(v208, qword_101219B98);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v150, v151))
        {
          goto LABEL_98;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v148 = v290;
        if (v122 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v207 = v302;

LABEL_99:
          v148(v75, v313);
LABEL_100:
          (*(v289 + 8))(v306, v88);
          return;
        }

        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v149 = type metadata accessor for Logger();
        sub_1000060E4(v149, qword_101219B98);
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v150, v151))
        {
LABEL_98:

          sub_1009A350C(v94, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v150, v151, v153, v152, 2u);
      v88 = v299;

      goto LABEL_98;
    }

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v199 = type metadata accessor for Logger();
    sub_1000060E4(v199, qword_101219B98);
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "🤏✅ Swipe Gesture Ended", v202, 2u);
      v147 = v305;
      v2 = v303;
    }

    if (Width * 0.5 >= fabs(v91))
    {
      v203 = v94 + *(*v94 + 120);
      swift_beginAccess();
      if (*(v203 + 8) < 0.5)
      {

        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v204, v205, "   Hasn't reached translation thresholds. Cancelling ❎", v206, 2u);
        }

        sub_1009A350C(v94, 1);
        swift_unknownObjectRelease();

        v290(v75, v313);
        goto LABEL_139;
      }
    }

    if (v44 < 0.0)
    {
      v209 = v310;
      v210 = v294;
      if (v91 <= 0.0)
      {
LABEL_103:
        v211 = *(*v94 + 112);
        swift_beginAccess();
        v212 = v94 + v211;
        v213 = v307;
        (*(v209 + 2))(v210, v212, v307);
        if ((v147[6])(v210, 1, v313) == 1)
        {
          (*(v209 + 1))(v210, v213);
          v214 = sub_1009A2334();
          [v214 prepare];

          v215 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v216 = v302;
          [v295 locationInView:v302];
          v218 = v217;
          v220 = v219;

          [v215 impactOccurredWithIntensity:0.5 atLocation:{v218, v220}];
          sub_1009A350C(v94, 1);
          v221 = sub_1009A95DC();
          if (*(v221 + 16))
          {
            v222 = direct field offset for Gliss.Transition.id;

            v223 = sub_1008B63F4(v94 + v222);
            v224 = v290;
            if (v225)
            {
              v226 = *(*(v221 + 56) + 8 * v223);

              sub_100009F78(0, &qword_1011A9F80);
              v227 = static OS_dispatch_queue.main.getter();
              [v226 duration];
              v228 = v224;
              v229 = swift_allocObject();
              *(v229 + 16) = v2;
              v230 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_1009A9A3C, v229);

              swift_unknownObjectRelease();

              v228(v75, v313);
LABEL_139:
              (*(v289 + 8))(v306, v299);
              return;
            }
          }

          else
          {

            v224 = v290;
          }

          swift_unknownObjectRelease();

          v224(v75, v313);
          goto LABEL_139;
        }

        v258 = v210;
        v259 = v302;

        v260 = v292;
        v261 = v258;
        v262 = v313;
        v87(v292, v261, v313);
        v263 = type metadata accessor for TaskPriority();
        (*(*(v263 - 8) + 56))(v293, 1, 1, v263);
        (v147[2])(v308, v260, v262);
        type metadata accessor for MainActor();
        v310 = v259;

        v264 = v304;
        swift_unknownObjectRetain();
        v305 = v2;
        v307 = v295;
        v303 = static MainActor.shared.getter();
        v265 = (*(v147 + 80) + 56) & ~*(v147 + 80);
        v266 = (v291 + v265 + 7) & 0xFFFFFFFFFFFFFFF8;
        v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF8;
        v268 = (v267 + 15) & 0xFFFFFFFFFFFFFFF8;
        v269 = v87;
        v270 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
        v271 = swift_allocObject();
        v271[2] = v303;
        v271[3] = &protocol witness table for MainActor;
        v272 = v308;
        v273 = v312;
        v271[4] = v309;
        v271[5] = v273;
        v271[6] = v264;
        v274 = v271 + v265;
        v275 = v313;
        v269(v274, v272, v313);
        *(v271 + v266) = v305;
        *(v271 + v267) = v301;
        v276 = v310;
        *(v271 + v268) = v310;
        v277 = v271 + v270;
        *v277 = v91;
        *(v277 + 1) = v93;
        *(v271 + ((v270 + 23) & 0xFFFFFFFFFFFFFFF8)) = v307;
        sub_100969440(0, 0, v293, &unk_100EF3BA0, v271);

        swift_unknownObjectRelease();

        v278 = v290;
        v290(v292, v275);
        v278(v311, v275);
        goto LABEL_139;
      }
    }

    else
    {
      v209 = v310;
      v210 = v294;
      if (v91 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v254 = Logger.logObject.getter();
    v255 = static os_log_type_t.default.getter();
    v256 = os_log_type_enabled(v254, v255);
    v88 = v299;
    if (v256)
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&_mh_execute_header, v254, v255, "   Going opposite direction. Cancelling ❎", v257, 2u);
      v88 = v299;
    }

    sub_1009A350C(v94, 1);
    swift_unknownObjectRelease();

    v290(v75, v313);
    goto LABEL_100;
  }

  v124 = v306;
  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v125 = type metadata accessor for Logger();
  sub_1000060E4(v125, qword_101219B98);
  v126 = v71[2];
  v127 = v302;
  v128 = v75;
  v126(v302, v75, v313);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v289;
  if (v131)
  {
    v133 = swift_slowAlloc();
    v312 = v129;
    v134 = v133;
    *&v135 = COERCE_DOUBLE(swift_slowAlloc());
    v314 = *&v135;
    *v134 = 136446210;
    v136 = v313;
    v126(v308, v127, v313);
    v137 = String.init<A>(describing:)();
    v138 = v136;
    v139 = v132;
    v141 = v140;
    v142 = v127;
    v143 = v290;
    v290(v142, v138);
    v144 = sub_100010678(v137, v141, &v314);

    *(v134 + 4) = v144;
    v145 = v130;
    v146 = v312;
    _os_log_impl(&_mh_execute_header, v312, v145, "DataSource doesn't allow swipe for item=%{public}s", v134, 0xCu);
    sub_10000959C(v135);

    swift_unknownObjectRelease();
    v143(v311, v138);
    (*(v139 + 8))(v306, v299);
  }

  else
  {

    swift_unknownObjectRelease();
    v154 = v127;
    v155 = v313;
    v156 = v290;
    v290(v154, v313);
    v156(v128, v155);
    (*(v132 + 8))(v124, TupleTypeMetadata2);
  }
}

uint64_t sub_1009A7C5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = type metadata accessor for MainActor();
  *(v9 + 152) = static MainActor.shared.getter();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_1009A7E68;

  return v19(a6, v16, v14);
}

uint64_t sub_1009A7E68()
{
  *(*v1 + 184) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1009A82F8;
  }

  else
  {
    v4 = sub_1009A7FC0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1009A7FC0()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_1009A0590(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_10099F4C0(sub_1009A9D04, v9, v8);

  sub_1009A4460(v4, 1);
  v10 = v4 + *(*v4 + 168);
  swift_beginAccess();
  v11 = *(v10 + 32);
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_1009A2258();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219B98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = Double.description.getter();
      v26 = sub_100010678(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1009A82F8()
{
  v19 = v0;

  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219B98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_1009A2410();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_1009A350C(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_1009A8558(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1009A595C(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  sub_100009F78(0, &qword_1011AAEA0);
  v4 = v2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  v5 = [(objc_class *)a1.super.isa view];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  [v4 velocityInView:v6];
  v8 = v7;
  v10 = v9;
  if (fabs(v9) < fabs(v7))
  {
    [(objc_class *)a1.super.isa locationInView:v6];
    v8 = v11;
    v10 = v12;

    Gliss.Coordinator.gestureConfiguration.getter(v56);
    v13 = v56[1];

    sub_100020438(v56[3]);
    sub_100020438(v56[5]);
    if (v13)
    {
      v14 = v13(v6);
      v15 = v14 + 56;
      v16 = -*(v14 + 16);
      v17 = -1;
      while (1)
      {
        if (v16 + v17 == -1)
        {
          sub_100020438(v13);

          v20 = 0;
          goto LABEL_20;
        }

        if (++v17 >= *(v14 + 16))
        {
          break;
        }

        v18 = v15 + 32;
        v65.x = v8;
        v65.y = v10;
        v19 = CGRectContainsPoint(*(v15 - 24), v65);
        v15 = v18;
        if (v19)
        {
          sub_100020438(v13);

          v20 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v6 bounds];
    v66.x = v8;
    v66.y = v10;
    v20 = CGRectContainsPoint(v67, v66);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v57);
    v30 = v58;
    v31 = v57[0];
    sub_100030444(v58);

    sub_100020438(v57[1]);
    sub_100020438(v30);
    sub_100020438(v59);
    if (v30)
    {
      v32 = v30(v6, v8, v10);
      sub_100020438(v30);
      if (v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 1;
      if (v20)
      {
LABEL_22:
        if (v32)
        {
LABEL_23:

LABEL_37:
          return v20 & v32;
        }

LABEL_32:
        if (qword_1011A6998 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_1000060E4(v47, qword_101219B98);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v50 = 136446210;
          _s3__C7CGPointVMa_0(0);
          v52 = String.init<A>(describing:)();
          v54 = sub_100010678(v52, v53, &v55);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v50, 0xCu);
          sub_10000959C(v51);
        }

        goto LABEL_37;
      }
    }

    if (qword_1011A6998 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101219B98);
    v34 = v1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v37 = 136446466;
      v60 = v8;
      v61 = v10;
      _s3__C7CGPointVMa_0(0);
      v38 = String.init<A>(describing:)();
      v40 = sub_100010678(v38, v39, &v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v60);
      v42 = v61;
      v41 = v62;

      sub_100020438(v63);
      sub_100020438(v64);
      if (v42 != 0.0)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
      }

      sub_10010FC20(&qword_1011AAEA8);
      v44 = String.init<A>(describing:)();
      v46 = sub_100010678(v44, v45, &v55);

      *(v37 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_1011A6998 != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101219B98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57[0] = v26;
    *v25 = 136446210;
    v60 = v8;
    v61 = v10;
    _s3__C7CGPointVMa_0(0);
    v27 = String.init<A>(describing:)();
    v29 = sub_100010678(v27, v28, v57);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v25, 0xCu);
    sub_10000959C(v26);
  }

  return 0;
}

uint64_t sub_1009A8CA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_1009A8CF8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1009A96A4(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Gliss.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1009A8E44(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 5);

  sub_100020438(v3);
  sub_100020438(v4);
  sub_100020438(v5);

  v6 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v6], AssociatedTypeWitness);
  v8 = *((swift_isaMask & *a1) + 0x80);
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);

  v10 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

id sub_1009A9124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v27 = *((v8 & v7) + 0x58);
  v26 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_1008BD4BC(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 24);
  v25 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  *(v18 + 6) = v17;
  swift_beginAccess();
  *&v4[v9] = a4;
  v20 = v14;
  sub_100030444(v15);
  sub_100030444(v16);
  sub_100030444(v25);

  v30 = v26;
  v31 = v27;
  v32 = a1;
  sub_10099F4C0(sub_1009A9FBC, v29, a4);

  v21 = type metadata accessor for Gliss.Coordinator();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  sub_1009A5704();

  return v22;
}

void sub_1009A94C4(id a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_1009A94D8(a1, a2, a3);
  }
}

void sub_1009A94D8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_1009A94EC(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1009A9500(result, a2, a3);
  }

  return result;
}

id sub_1009A9500(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

void sub_1009A9514(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_1009A1460(a1, a2, v2 + v4, *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1009A95A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009A95DC()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1009A963C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1009A1D1C(v3);
}

uint64_t sub_1009A96A4(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v18);

  sub_100020438(v18[1]);
  sub_100020438(v18[3]);
  v2 = v19;
  if (!v19)
  {
    return 1;
  }

  v3 = v19(a1);
  sub_100020438(v2);
  if (v3)
  {
    return 1;
  }

  if (qword_1011A6998 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101219B98);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100010678(v13, v15, &v17);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  return 0;
}

uint64_t sub_1009A98CC()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1009A99E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1009A9A3C()
{
  v0 = sub_1009A2334();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_1009A9A98(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10002F3F4;

  return sub_1009A7C5C(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_1009A9C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AB018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009A9CAC()
{
  result = qword_1011A8550;
  if (!qword_1011A8550)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8550);
  }

  return result;
}

uint64_t sub_1009A9D1C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_10099F1B4(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_1009A9DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1009A9E6C()
{

  return swift_deallocObject();
}

uint64_t sub_1009A9EEC(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_1009A9F54(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_1009AA074(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  sub_1009AA4DC(a1, a2, a3, a4, a5);
  return v10;
}

id sub_1009AA0EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v39 = *&a3;
  v9 = *(*a1 + 80);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v19 = v39;

      return *&v19;
    }

    else
    {
      v24 = v12;
      if (UIAccessibilityIsReduceMotionEnabled() || (v25 = *(*a1 + 120), swift_beginAccess(), *(a1 + v25) == 2))
      {
        v26 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v27 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v27 initWithDuration:v26 timingParameters:{0.25, *&v39}];
      }

      else
      {
        v29 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v29 + 32) == 2)
        {
          [a2 bounds];
          v30 = CGRectGetWidth(v41) * 0.5;
        }

        else
        {
          v30 = *(v29 + 16);
        }

        v31 = fabs(v30);
        [a2 bounds];
        Width = CGRectGetWidth(v42);
        v33 = fabs(*v29);
        if (*(v29 + 32) == 2)
        {
          v33 = 0.0;
        }

        v34 = v31 / (Width - v33);
        v35 = *(*a1 + 112);
        swift_beginAccess();
        (*(v11 + 16))(v14, a1 + v35, v24);
        if ((*(*(v9 - 8) + 48))(v14, 1, v9) == 1)
        {
          v36 = 0.5;
        }

        else
        {
          v36 = 0.8;
        }

        (*(v11 + 8))(v14, v24);
        v26 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v36 initialVelocity:{v34, 0.0}];
        v37 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v37 initWithDuration:v26 timingParameters:{0.0, *&v39}];
      }

      v38 = v28;

      return v38;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v21 = 0.25;
      }

      else
      {
        v21 = *&a4;
      }

      v16 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v21 bounce:v39];
      v22 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v22 initWithDuration:v16 timingParameters:{0.0, *&v39}];
    }

    else
    {
      v15 = v39;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v17 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v17 initWithDuration:v16 timingParameters:{v15, *&v39}];
    }

    v23 = v18;

    return v23;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1009AA4DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  UUID.init()();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = static Array._allocateUninitialized(_:)();
  v15 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v15) = static Array._allocateUninitialized(_:)();
  v16 = v5 + *(*v5 + 168);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 40))(v5 + v10, a2, v17);
  swift_endAccess();
  v18 = v5 + *(*v5 + 120);
  *v18 = a3;
  *(v18 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1009AA81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1009AA8B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1009AAA6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 112);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1009AAB10(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *a2;
  v10 = *(*v9 + 112);
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1009AAD8C(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();
  type metadata accessor for Array();

  Array.append(_:)();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(*v2 + 160));
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1008B6478(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_10000DD18(*(v4 + 56) + 32 * v6, v11);

LABEL_6:
  sub_10010FC20(&qword_1011ABB20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_1009AB2C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1009AB32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin(v8);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  strcpy(v33, "Transition(\n");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  v32._countAndFlagsBits = 0x3A646920202020;
  v32._object = 0xE700000000000000;
  v13._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v32);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x6D6F726620202020;
  v15._object = 0xEA0000000000203ALL;
  String.append(_:)(v15);
  v16 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v12, v1 + v16, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v17 = *(v7 + 8);
  v17(v12, v2);
  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  String.append(_:)(v31);

  v19 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v19, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v20._object = 0xED00000A656E6F6ELL;
    v20._countAndFlagsBits = 0x203A6F7420202020;
    String.append(_:)(v20);
  }

  else
  {
    v21 = v28;
    (*(v7 + 32))(v28, v6, v2);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x203A6F7420202020;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v23._countAndFlagsBits = 10;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    String.append(_:)(v29);

    v17(v21, v2);
  }

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v30._countAndFlagsBits = 0xD000000000000010;
  v30._object = 0x8000000100E5F350;
  swift_beginAccess();
  v24._countAndFlagsBits = Gliss.Progression.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  String.append(_:)(v30);

  v26._countAndFlagsBits = 10528;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  return v33[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1009A94D8(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009ABAD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t Gliss.Progression.description.getter()
{
  sub_10010FC20(&qword_1011AAE98);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x6F69746365726964;
  v2._object = 0xEA00000000003D6ELL;
  String.append(_:)(v2);

  v3._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D65756C6176;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000014;
}

unint64_t sub_1009ABD78()
{
  result = qword_1011A8548;
  if (!qword_1011A8548)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8548);
  }

  return result;
}

unint64_t sub_1009ABDD4()
{
  result = qword_1011AB030;
  if (!qword_1011AB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB030);
  }

  return result;
}

unint64_t sub_1009ABE28()
{
  result = qword_1011AB038[0];
  if (!qword_1011AB038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011AB038);
  }

  return result;
}

uint64_t sub_1009ABE7C(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1009ABE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1009ABEEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1009ABF50(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_1009ABF8C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s14descr1010964D9O11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s14descr1010964D9O11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_1009AC194(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1009AC1A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1009AC1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1009AC258(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1009AC28C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
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
      result = __DataStorage._length.getter();
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
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
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

uint64_t sub_1009AC4BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1009AC64C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10002C064(a3, a4);
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
  sub_1009AC28C(v13, a3, a4, &v12);
  v10 = v4;
  sub_10002C064(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1009AC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
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

  __DataStorage._length.getter();
  sub_1009AC28C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1009AC704(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_10002BC44(a3, a4);
          return sub_1009AC4BC(v13, a2, a3, a4) & 1;
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

uint64_t sub_1009AC87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unsigned __int8 a10)
{
  v127 = a8;
  v122 = a7;
  v140 = a6;
  v126 = a4;
  v125 = a3;
  v124 = a2;
  v123 = a1;
  LODWORD(v12) = a10;
  v137 = type metadata accessor for URL.DirectoryHint();
  v13 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v15 - 8);
  v138 = &v112 - v16;
  v17 = type metadata accessor for URL();
  v145 = *(v17 - 8);
  v146 = v17;
  v18 = __chkstk_darwin(v17);
  v143 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v119 = &v112 - v21;
  v22 = __chkstk_darwin(v20);
  v141 = &v112 - v23;
  __chkstk_darwin(v22);
  v117 = &v112 - v24;
  v25 = sub_10010FC20(&qword_1011AA638);
  __chkstk_darwin(v25 - 8);
  v27 = &v112 - v26;
  v28 = type metadata accessor for URLComponents();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A70E8 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    URLComponents.init(string:)();
    result = (*(v29 + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v29 + 32))(v31, v27, v28);
      if (a5 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v116 = a9;
      v115 = v12;
      v114 = v28;
      v113 = v29;
      v112 = v31;
      if (v27 || *(v140 + 16))
      {
        v33 = [objc_opt_self() defaultManager];
        if (qword_1011A69A8 != -1)
        {
          swift_once();
        }

        sub_1000060E4(v146, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)();
        v142 = 0;
      }

      else
      {
        v142 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v28 = a5 & 0xFFFFFFFFFFFFFF8;
      v135 = _swiftEmptyArrayStorage;
      while (v27 != a9)
      {
        if (v12)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v34 = *(a5 + 8 * a9 + 32);
        }

        v29 = v34;
        v35 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v31 = sub_1009ADEE4(a9, v34);
        v37 = v36;

        ++a9;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_10089C4F8(0, *(v135 + 2) + 1, 1, v135);
          }

          v29 = *(v135 + 2);
          v38 = *(v135 + 3);
          if (v29 >= v38 >> 1)
          {
            v135 = sub_10089C4F8((v38 > 1), v29 + 1, 1, v135);
          }

          v39 = v135;
          *(v135 + 2) = v29 + 1;
          v40 = &v39[16 * v29];
          *(v40 + 4) = v31;
          *(v40 + 5) = v37;
          a9 = v35;
        }
      }

      a5 = v140 + 64;
      v43 = 1 << *(v140 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v27 = v44 & *(v140 + 64);
      a9 = (v43 + 63) >> 6;
      v133 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v131 = (v13 + 8);
      v132 = (v13 + 104);
      v144 = (v145 + 8);
      v130 = (v145 + 56);
      v121 = (v145 + 32);
      v129 = (v145 + 48);

      v45 = 0;
      *&v46 = 136446210;
      v118 = v46;
      v120 = _swiftEmptyArrayStorage;
      v47 = v146;
      v48 = &off_1011A6000;
      v12 = v142;
      v134 = a9;
      v128 = a5;
      while (v27)
      {
        v13 = v45;
LABEL_35:
        v142 = v12;
        v49 = (v13 << 10) | (16 * __clz(__rbit64(v27)));
        v50 = (*(v140 + 48) + v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = (*(v140 + 56) + v49);
        v28 = *v53;
        v54 = v53[1];

        sub_10002BC44(v28, v54);
        if (v48[309] != -1)
        {
          swift_once();
        }

        sub_1000060E4(v47, static URL.tapToRadarDirectory);
        v148[0] = 47;
        v148[1] = 0xE100000000000000;
        v55._countAndFlagsBits = v52;
        v139 = v51;
        v55._object = v51;
        String.append(_:)(v55);
        v57 = v136;
        v56 = v137;
        (*v132)(v136, v133, v137);
        sub_10000988C();
        v58 = v141;
        URL.appending<A>(path:directoryHint:)();
        (*v131)(v57, v56);

        v12 = v142;
        Data.write(to:options:)();
        v29 = v54;
        if (v12)
        {
          v59 = v146;
          if (qword_1011A69B0 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000060E4(v60, qword_1011AB0D8);
          swift_errorRetain();
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          v48 = &off_1011A6000;
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v142 = v28;
            v64 = v29;
            v65 = v63;
            v66 = swift_slowAlloc();
            v147 = v12;
            v148[0] = v66;
            *v65 = v118;
            swift_errorRetain();
            sub_10010FC20(&qword_1011AB640);
            v67 = String.init<A>(describing:)();
            v69 = sub_100010678(v67, v68, v148);

            *(v65 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v61, v62, "Tap-to-Radar Attachment file write failed with error: %{public}s", v65, 0xCu);
            sub_10000959C(v66);
            v47 = v146;

            v29 = v64;
            v28 = v142;

            v48 = &off_1011A6000;

            (*v144)(v141, v47);
          }

          else
          {

            v47 = v59;
            (*v144)(v141, v59);
          }

          v12 = 0;
          v71 = 1;
          v70 = v138;
        }

        else
        {
          v70 = v138;
          v47 = v146;
          (*v121)(v138, v58, v146);
          v71 = 0;
          v48 = &off_1011A6000;
        }

        v31 = v139;
        v27 &= v27 - 1;
        (*v130)(v70, v71, 1, v47);

        sub_10002C064(v28, v29);
        v72 = (*v129)(v70, 1, v47);
        a5 = v128;
        if (v72 == 1)
        {
          sub_100028B08(v70);
          v45 = v13;
          a9 = v134;
        }

        else
        {
          v31 = 0;
          v73 = *v121;
          v29 = v117;
          (*v121)(v117, v70, v47);
          v73(v119, v29, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_10089CC1C(0, *(v120 + 2) + 1, 1, v120);
          }

          v28 = *(v120 + 2);
          v74 = *(v120 + 3);
          if (v28 >= v74 >> 1)
          {
            v120 = sub_10089CC1C(v74 > 1, v28 + 1, 1, v120);
          }

          v75 = v120;
          *(v120 + 2) = v28 + 1;
          v47 = v146;
          v73(&v75[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v28], v119, v146);
          v45 = v13;
          v12 = 0;
          a9 = v134;
        }
      }

      while (1)
      {
        v13 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v27 = *(a5 + 8 * v13);
        ++v45;
        if (v27)
        {
          goto LABEL_35;
        }
      }

      v148[0] = v120;

      sub_1008A6438(v76);
      v77 = v148[0];
      v78 = *(v148[0] + 16);
      if (v78)
      {
        v148[0] = _swiftEmptyArrayStorage;
        sub_100015C24(0, v78, 0);
        v79 = *(v145 + 16);
        v80 = v148[0];
        v81 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v142 = v77;
        v82 = v77 + v81;
        v145 += 16;
        v83 = *(v145 + 56);
        do
        {
          v84 = v143;
          v85 = v146;
          v79(v143, v82, v146);
          v86 = URL.path.getter();
          v88 = v87;
          (*v144)(v84, v85);
          v148[0] = v80;
          v90 = v80[2];
          v89 = v80[3];
          if (v90 >= v89 >> 1)
          {
            sub_100015C24((v89 > 1), v90 + 1, 1);
            v80 = v148[0];
          }

          v80[2] = v90 + 1;
          v91 = &v80[2 * v90];
          v91[4] = v86;
          v91[5] = v88;
          v82 += v83;
          --v78;
        }

        while (v78);
      }

      else
      {

        v80 = _swiftEmptyArrayStorage;
      }

      sub_10010FC20(&qword_1011A7D38);
      v92 = *(type metadata accessor for URLQueryItem() - 8);
      v93 = *(v92 + 72);
      v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_100EE9520;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      v96 = [objc_opt_self() mainBundle];
      v97 = [v96 bundleIdentifier];

      v98 = v127;
      if (v97)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      URLQueryItem.init(name:value:)();

      v148[0] = v135;
      v99 = sub_10010FC20(&unk_1011A9FA0);
      v100 = sub_1008B2E78();
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v148[0] = v80;
      v145 = v100;
      v146 = v99;
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      v101 = *(v98 + 16);
      v102 = _swiftEmptyArrayStorage;
      if (v101)
      {
        v142 = v95 + v94;
        v143 = v93;
        v144 = v95;
        v148[0] = _swiftEmptyArrayStorage;
        sub_100015C24(0, v101, 0);
        v102 = v148[0];
        v103 = (v98 + 32);
        do
        {
          v104 = *v103++;
          v147 = qword_100EF4050[v104];
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v106;
          v148[0] = v102;
          v109 = v102[2];
          v108 = v102[3];
          if (v109 >= v108 >> 1)
          {
            sub_100015C24((v108 > 1), v109 + 1, 1);
            v102 = v148[0];
          }

          v102[2] = v109 + 1;
          v110 = &v102[2 * v109];
          v110[4] = v105;
          v110[5] = v107;
          --v101;
        }

        while (v101);
      }

      v148[0] = v102;
      BidirectionalCollection<>.joined(separator:)();

      URLQueryItem.init(name:value:)();

      v148[0] = v135;
      sub_1008A6344(v80);

      URLQueryItem.init(name:value:)();

      URLQueryItem.init(name:value:)();

      v111 = v112;
      URLComponents.queryItems.setter();
      URLComponents.url.getter();
      return (*(v113 + 8))(v111, v114);
    }
  }

  else
  {
    v41 = v146;
    v42 = *(v145 + 56);

    return v42(a9, 1, 1, v41);
  }

  return result;
}

uint64_t sub_1009ADA58()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  sub_100006080(v7, static URL.tapToRadarDirectory);
  sub_1000060E4(v7, static URL.tapToRadarDirectory);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_1000060E4(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000060E4(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1009ADD24()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB0D8);
  sub_1000060E4(v0, qword_1011AB0D8);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1009ADDCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EF4050[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1009ADE54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EF4050[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1009ADEA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009ADEE4(uint64_t a1, UIImage *a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69A8 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v8, static URL.tapToRadarDirectory);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v22 = 0xD000000000000012;
  v23 = 0x8000000100E5F4E0;
  v21[1] = a1;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 1735420462;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10000988C();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);

  v14 = UIImageJPEGRepresentation(a2, 85.0);
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    Data.write(to:options:)();
    sub_10002C064(v16, v18);
  }

  v19 = URL.path.getter();
  (*(v9 + 8))(v11, v8);
  return v19;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_1009AE3D4()
{
  result = qword_1011AB0F0;
  if (!qword_1011AB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB0F0);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1009AE4E8, v5, v4);
}

uint64_t sub_1009AE4E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = static MainActor.shared.getter();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1009AE604;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v5, &type metadata for Bool);
}

uint64_t sub_1009AE604()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1009B83B4, v3, v2);
}

uint64_t sub_1009AE764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8628);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000DD18(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100016270(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100016270(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100016270(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100016270(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1009AEA2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8628);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100016270(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100016270(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100016270(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v10 = qword_101219808;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = (v4 + 16);
  if (a1 > 6u)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v10)(v6, v9, v3);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v10)(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v12;
}

Swift::Int sub_1009AF48C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

Swift::Int sub_1009AF504()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

uint64_t sub_1009AF548@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_10010FC20(&qword_1011AB118);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

uint64_t CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_1009AF724;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_1009AF724;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_1009AF724()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_1009AF7F8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  result = (*(v2 + 8))(v7, v1);
  static CloudLibrary.EnablementContext.action = v9;
  *algn_101219BD8 = v11;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_1009AFA44()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_1009AFAE0();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1009AFAE0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011AB138);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-v4];
  v36 = 2;
  v35[0] = 0xD000000000000014;
  v35[1] = 0x8000000100E5A600;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000988C();
  UserDefault.init(wrappedValue:defaults:key:)(&v36, v6, v35, &type metadata for String, &v37);
  v7 = v38;
  v8 = v39;
  *(v1 + 16) = v37;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v9 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v37 = 0x80000000;

  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v9, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_10010FC20(&unk_1011A9FB0);
  inited = swift_initStackObject();
  v11 = 3;
  *(inited + 16) = xmmword_100EBE260;
  if (qword_1011A6880 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  UIScreen.Dimensions.size.getter(*&v11);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  v15 = qword_1011A68A0;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v18 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v19 = UIScreen.Dimensions.size.getter(v17);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  v22 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  UIScreen.Dimensions.size.getter(v19);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v23;
  *(inited + 120) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v26 = v18;

  v27 = v22;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1009B8190, v25);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v28 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 sharedCloudController];
  v32 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v30, v31, 1, 1, sub_1009B8198, v32);

  return v1;
}

void sub_1009AFFE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23[4] = v19;
    v23[5] = v20;
    v24 = v21;
    v25 = v22;
    v23[0] = v15;
    v23[1] = v16;
    v23[2] = v17;
    v23[3] = v18;
    sub_100014984(v23);
    if (v24 == 2)
    {
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v2 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v6 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v15 = 2147483649;

        static Published.subscript.setter();
        sub_1009B19A0(v6);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_100014984(&v15);
    if ((BYTE2(v15) & 1) == 0)
    {
      v3 = [objc_opt_self() sharedCloudController];
      if (v3)
      {
        v4 = v3;
        *&v9 = sub_1009B81A0;
        *(&v9 + 1) = v1;
        *&v7 = _NSConcreteStackBlock;
        *(&v7 + 1) = 1107296256;
        *&v8 = sub_10000B378;
        *(&v8 + 1) = &unk_1010D5C48;
        v5 = _Block_copy(&v7);

        [v4 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v5];

        _Block_release(v5);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_1009B0348(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1009B81A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D5C98;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1009B0658(uint64_t a1, void *a2)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v2 = a2;
  if (_s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v2 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_1009B19A0(v3);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1009B19A0(v3);
}

uint64_t sub_1009B07F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1009B2094();
  }

  return result;
}

uint64_t sub_1009B0850()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_10010FC20(&qword_1011AB118);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    static Published.subscript.setter();
    return sub_1009B19A0(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_10010FC20(&qword_1011AB118);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_10010FC20(&qword_1011AB118);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_1009B0850();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_10010FC20(&qword_1011AB118);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_1009B0B28;
}

void sub_1009B0B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_1009B0850();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10089CD9C(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10089CD9C((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_1002B700C;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  static Published.subscript.setter();
  sub_1009B19A0(v11);
  sub_10010FC20(&qword_1011AB128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_100067814(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AB130);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_1009AEA2C(v15);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_1009B6D20;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1001D5D0C;
    v21[3] = &unk_1010D5500;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009B0F18(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1011A69C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_1011AB100);
    v9 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, v18, "Successfully enabled Cloud Library", v19, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1011A69C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1011AB100);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    aBlock[0] = v12;
    *v11 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v14 = String.init<A>(describing:)();
    v16 = sub_100010678(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to enable Cloud Library with error=%s", v11, 0xCu);
    sub_10000959C(v13);
    v2 = v26;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100009F78(0, &qword_1011A9F80);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = a1;
    aBlock[4] = sub_1009B8188;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010D5C20;
    v24 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&unk_1011AB610);
    sub_100020674(&qword_1011AD960, &unk_1011AB610);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v29 + 8))(v4, v2);
    return (*(v27 + 8))(v7, v28);
  }

  return result;
}

uint64_t sub_1009B1464(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = a2 == 0;

    v9(&v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_1009B6D28(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1009B6D60(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_1009B6D28(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10089CE0C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_10089CE0C((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_1008BDE58(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_1009B6D60(v18);
}

uint64_t CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      sub_1009B6D28(v6, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1009B6D60(v9);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_1008B4B28(v7, v10);
          sub_1009B6D60(v10);
          return swift_endAccess();
        }
      }

      ++v7;
      v6 += 16;
      if (v5 == v7)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1009B1854@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1009B18D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_1009B19A0(v1);
}

uint64_t sub_1009B19A0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_1011A69C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_1011AB100);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = String.init<A>(describing:)();
      v10 = sub_100010678(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_10000959C(v7);
    }

    return sub_1009B2D60();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1009B1C24()
{
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1009B1C9C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011AB620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_10010FC20(&unk_1011AB138);
  Published.projectedValue.getter();
  return swift_endAccess();
}

float sub_1009B1E94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_1009B19A0(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*sub_1009B2030(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_1009B2064;
}

float sub_1009B2064(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_1009B1E94(v4);
}

void sub_1009B2094()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v46 = (&v42 - v7);
  v47 = type metadata accessor for DispatchTime();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [v16 sharedCloudController];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 isUpdateInProgress];

  v20 = [v16 sharedCloudController];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 isInitialImport];

  v23 = v19 & v22;
  v24 = *(v0 + 88);
  if (v23 == 1)
  {
    if (!v24)
    {
      v25 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_1009B1E94(v25);
      sub_100009F78(0, &unk_1011AB5E0);
      sub_100009F78(0, &qword_1011A9F80);
      (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);
      v26 = static OS_dispatch_queue.global(qos:)();
      (*(v13 + 8))(v15, v12);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1009B80CC(&unk_1011AB5F0, &type metadata accessor for OS_dispatch_source.TimerFlags);
      sub_10010FC20(&qword_1011AD940);
      sub_100020674(&unk_1011AB600, &qword_1011AD940);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

      (*(v43 + 8))(v11, v9);
      swift_getObjectType();
      v28 = v44;
      static DispatchTime.now()();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_1009B8114;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010D59F0;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
      v39 = v53;
      sub_100A59A1C();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v27;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v24)
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_1009B1E94(v41);
  }
}

void sub_1009B2864(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_1009B811C;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1009B2D0C;
    v5[3] = &unk_1010D5A18;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009B2958(float a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1009B8124;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D5A68;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1009B80CC(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610);
  sub_100020674(&qword_1011AD960, &unk_1011AB610);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_1009B2C78(float a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1009B2030(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a1;
    }

    (v4)(v5, 0);
  }

  return result;
}

uint64_t sub_1009B2D0C(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_1009B2D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v10;
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_1009B6D28(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_1009B6D60(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_10010FC20(&unk_1011AB138);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009B2F7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v10 = qword_101219808;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011AAEA0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1009B34CC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011AAEA0);
  return static NSObject.== infix(_:_:)() & 1;
}

void sub_1009B3558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_1011A69C0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t sub_1009B35C8(uint64_t a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v8 = sub_10010FC20(&qword_1011A8AB0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a2, a3, a4, sub_1009B83E4, v14);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(unsigned __int8 a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_100014984(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_100014984(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a1, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1009B3980, v5, v4);
}

uint64_t sub_1009B3980()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = static MainActor.shared.getter();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1009B3A9C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD000000000000045, 0x8000000100E5FAD0, sub_1009B7858, v5, &type metadata for Bool);
}

uint64_t sub_1009B3A9C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1009B3BFC, v3, v2);
}

uint64_t sub_1009B3BFC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1009B3C60(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v5 = sub_10010FC20(&qword_1011A8AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v13 = __chkstk_darwin(v12);
  v15 = &v23[-v14];
  v16 = *(v6 + 16);
  v16(&v23[-v14], a1, v5, v13);
  (v16)(v11, v15, v5);
  (v16)(v8, v15, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v15, v5);
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v43[4] = v39;
  v43[5] = v40;
  v43[6] = v41;
  v43[7] = v42;
  v43[0] = v35;
  v43[1] = v36;
  v43[2] = v37;
  v43[3] = v38;
  sub_100014984(v43);
  if (BYTE2(v43[0]))
  {
    v19 = *(v6 + 8);
    v19(v11, v5);
    LOBYTE(v35) = 1;
    CheckedContinuation.resume(returning:)();

    return (v19)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = v31;
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    sub_100014984(&v35);
    if (BYTE9(v35))
    {
      v22 = *(v6 + 8);
      v22(v11, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v24, v25, v26, sub_1009B8130, v18);

      return (v22)(v8, v5);
    }

    else
    {
      LOBYTE(v27) = 0;
      CheckedContinuation.resume(returning:)();

      v21 = *(v6 + 8);
      v21(v8, v5);
      return (v21)(v11, v5);
    }
  }
}

char *sub_1009B4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_1011AB358) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_100030444(a5);
  _s3__C24UIUserInterfaceSizeClassOMa_0(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v15 = 0;
  v15[1] = 0;
  sub_100020438(v16);
  *(v6 + qword_1011AB350) = v13;
  sub_1009B80CC(&qword_1011AB630, type metadata accessor for EnableCloudLibraryView.Model);
  swift_retain_n();
  v30 = ObservedObject.init(wrappedValue:)();
  v31 = v17;
  v18 = UIHostingController.init(rootView:)();
  v19 = *&v18[qword_1011AB350];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v22 = *(v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v21 = sub_1009B8180;
  v21[1] = v20;
  v23 = v18;

  sub_100020438(v22);

  sub_1009B4604();
  v24 = [v23 presentingViewController];
  if (v24)
  {
    v25 = v24;
    sub_10010FC20(&qword_1011AB638);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100EBC6B0;
    *(v26 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
  }

  v27 = [v23 presentationController];

  if (v27)
  {
    sub_10010FC20(&qword_1011AB638);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100EBC6B0;
    *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    UIPresentationController.registerForTraitChanges(_:action:)();

    sub_100020438(a5);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_100020438(a5);
  }

  return v23;
}

void sub_1009B434C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1009B43B0(uint64_t a1)
{
  *(a1 + qword_1011AB358) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1009B4418(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_1009B44E0();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_1009B44E0()
{
  v1 = qword_1011AB358;
  v2 = *(v0 + qword_1011AB358);
  if (v2)
  {
    v3 = *(v0 + qword_1011AB358);
  }

  else
  {
    sub_100009F78(0, &unk_1011AB5D0);
    sub_100009F78(0, &qword_1011A7D90);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1009B4604()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }
}

void sub_1009B470C(void *a1)
{
  v1 = a1;
  sub_1009B4604();
}

void sub_1009B4754()
{

  v1 = *(v0 + qword_1011AB358);
}

id sub_1009B4794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1009B47CC(uint64_t a1)
{

  v2 = *(a1 + qword_1011AB358);
}

uint64_t sub_1009B4818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1009B48EC()
{

  sub_100020438(*(v0 + 48));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = sub_10010FC20(&qword_1011AB5C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss));

  return swift_deallocClassInstance();
}

uint64_t sub_1009B49C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1009B4A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011AB4E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&qword_1011AB4F0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  *v8 = static Axis.Set.vertical.getter();
  v13 = sub_10010FC20(&qword_1011AB4F8);
  sub_1009B4C98(a1, a2, &v8[*(v13 + 44)]);
  v14 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10003D17C(v8, v12, &qword_1011AB4E8);
  v23 = &v12[*(v10 + 44)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = static Edge.Set.bottom.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10003D17C(v12, a3, &qword_1011AB4F0);
  result = sub_10010FC20(&qword_1011AB500);
  v34 = a3 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_1009B4C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_10010FC20(&qword_1011AB508);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10010FC20(&qword_1011AB510);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_10010FC20(&qword_1011AB518);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v31 - v21;
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_10010FC20(&qword_1011AB520);
  sub_1009B5034(a1, a2, &v22[*(v23 + 44)]);
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_10010FC20(&qword_1011AB528);
  sub_1009B55F4(a1, a2, &v16[*(v24 + 44)]);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = sub_10010FC20(&qword_1011AB530);
  sub_1009B5CE4(a1, a2, &v10[*(v25 + 44)]);
  v26 = v19;
  v31 = v19;
  sub_1000089F8(v22, v19, &qword_1011AB518);
  sub_1000089F8(v16, v13, &qword_1011AB510);
  v27 = v7;
  sub_1000089F8(v10, v7, &qword_1011AB508);
  v28 = v32;
  sub_1000089F8(v26, v32, &qword_1011AB518);
  v29 = sub_10010FC20(&qword_1011AB538);
  sub_1000089F8(v13, v28 + *(v29 + 48), &qword_1011AB510);
  sub_1000089F8(v27, v28 + *(v29 + 64), &qword_1011AB508);
  sub_1000095E8(v10, &qword_1011AB508);
  sub_1000095E8(v16, &qword_1011AB510);
  sub_1000095E8(v22, &qword_1011AB518);
  sub_1000095E8(v27, &qword_1011AB508);
  sub_1000095E8(v13, &qword_1011AB510);
  return sub_1000095E8(v31, &qword_1011AB518);
}

uint64_t sub_1009B5034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BorderedProminentButtonStyle();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011AB540);
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = sub_10010FC20(&qword_1011AB548);
  v39 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v31 - v15;
  v41 = static HorizontalAlignment.center.getter();
  v43 = 0;
  sub_1009B650C(&v53);
  v46 = *&v54[16];
  v47 = *&v54[32];
  v48[0] = *&v54[48];
  *(v48 + 9) = *&v54[57];
  v44 = v53;
  v45 = *v54;
  *(v50 + 9) = *&v54[57];
  v49[2] = *&v54[16];
  v49[3] = *&v54[32];
  v50[0] = *&v54[48];
  v49[0] = v53;
  v49[1] = *v54;
  sub_1000089F8(&v44, &v51, &qword_1011AB5B0);
  sub_1000095E8(v49, &qword_1011AB5B0);
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  *(&v42[4] + 7) = v48[0];
  v42[5] = *(v48 + 9);
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  v40 = v43;
  v32 = Image.init(_:bundle:)();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_10010FC20(&qword_1011AB570);
  sub_1009B7FBC();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle);
  v17 = v38;
  v18 = v36;
  View.buttonStyle<A>(_:)();
  (*(v37 + 8))(v9, v18);
  (*(v35 + 8))(v12, v10);
  v19 = *(v39 + 16);
  v20 = v33;
  v21 = v34;
  v19(v33, v17, v34);
  *&v51 = v41;
  *(&v51 + 1) = 0x4020000000000000;
  v52[0] = v40;
  *&v52[1] = v42[0];
  *&v52[17] = v42[1];
  *&v52[33] = v42[2];
  *&v52[81] = v42[5];
  *&v52[65] = v42[4];
  *&v52[49] = v42[3];
  v22 = v51;
  v23 = *v52;
  v24 = *&v52[32];
  *(a3 + 32) = *&v52[16];
  *(a3 + 48) = v24;
  *a3 = v22;
  *(a3 + 16) = v23;
  v25 = *&v52[48];
  v26 = *&v52[64];
  v27 = *&v52[80];
  *(a3 + 112) = v52[96];
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  *(a3 + 64) = v25;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v32;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v28 = sub_10010FC20(&qword_1011AB5C0);
  v19((a3 + *(v28 + 96)), v20, v21);
  sub_1000089F8(&v51, &v53, &qword_1011AB560);
  v29 = *(v39 + 8);

  v29(v38, v21);
  v29(v20, v21);

  *&v54[33] = v42[2];
  *&v54[49] = v42[3];
  *&v54[65] = v42[4];
  v55 = v42[5];
  *&v54[1] = v42[0];
  *&v53 = v41;
  *(&v53 + 1) = 0x4020000000000000;
  v54[0] = v40;
  *&v54[17] = v42[1];
  return sub_1000095E8(&v53, &qword_1011AB560);
}

uint64_t sub_1009B55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = type metadata accessor for BorderedProminentButtonStyle();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10010FC20(&qword_1011AB540);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - v7;
  v9 = sub_10010FC20(&qword_1011AB548);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v44 = v42 - v10;
  v50 = sub_10010FC20(&qword_1011AB550) - 8;
  __chkstk_darwin(v50);
  v52 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  __chkstk_darwin(v15);
  v47 = v42 - v16;
  v49 = static HorizontalAlignment.center.getter();
  v61 = 0;
  sub_1009B650C(&v58);
  v64 = *&v59[2];
  v65 = *&v59[4];
  v66[0] = *&v59[6];
  *(v66 + 9) = *(&v59[7] + 1);
  v62 = v58;
  v63 = *v59;
  *(v68 + 9) = *(&v59[7] + 1);
  v67[2] = *&v59[2];
  v67[3] = *&v59[4];
  v68[0] = *&v59[6];
  v67[0] = v58;
  v67[1] = *v59;
  sub_1000089F8(&v62, &v56, &qword_1011AB5B0);
  sub_1000095E8(v67, &qword_1011AB5B0);
  *(&v60[2] + 7) = v64;
  *(&v60[3] + 7) = v65;
  *(&v60[4] + 7) = v66[0];
  v60[5] = *(v66 + 9);
  *(v60 + 7) = v62;
  *(&v60[1] + 7) = v63;
  v43 = v61;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v42[1] = a2;

  sub_10010FC20(&qword_1011AB570);
  sub_1009B7FBC();
  Button.init(action:label:)();
  v18 = v45;
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle);
  v19 = v44;
  v20 = v46;
  v21 = v51;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v18, v21);
  (*(v48 + 8))(v8, v20);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v54 + 32))(v14, v19, v55);
  v30 = &v14[*(v50 + 44)];
  *v30 = v8;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = v47;
  sub_10003D17C(v14, v47, &qword_1011AB550);
  v32 = v52;
  sub_1000089F8(v31, v52, &qword_1011AB550);
  v33 = v49;
  *&v56 = v49;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v43;
  v57[0] = v43;
  *&v57[1] = v60[0];
  *&v57[17] = v60[1];
  *&v57[33] = v60[2];
  *&v57[81] = v60[5];
  *&v57[65] = v60[4];
  *&v57[49] = v60[3];
  v34 = v56;
  v35 = *v57;
  v36 = *&v57[32];
  *(a3 + 32) = *&v57[16];
  *(a3 + 48) = v36;
  *a3 = v34;
  *(a3 + 16) = v35;
  v37 = *&v57[48];
  v38 = *&v57[64];
  v39 = *&v57[80];
  *(a3 + 112) = v57[96];
  *(a3 + 80) = v38;
  *(a3 + 96) = v39;
  *(a3 + 64) = v37;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v40 = sub_10010FC20(&qword_1011AB5B8);
  sub_1000089F8(v32, a3 + *(v40 + 64), &qword_1011AB550);
  sub_1000089F8(&v56, &v58, &qword_1011AB560);
  sub_1000095E8(v31, &qword_1011AB550);
  sub_1000095E8(v32, &qword_1011AB550);
  *(&v59[4] + 1) = v60[2];
  *(&v59[6] + 1) = v60[3];
  *(&v59[8] + 1) = v60[4];
  *(&v59[10] + 1) = v60[5];
  *(v59 + 1) = v60[0];
  *&v58 = v33;
  *(&v58 + 1) = 0x4020000000000000;
  LOBYTE(v59[0]) = a2;
  *(&v59[2] + 1) = v60[1];
  return sub_1000095E8(&v58, &qword_1011AB560);
}

uint64_t sub_1009B5CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = type metadata accessor for BorderedProminentButtonStyle();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10010FC20(&qword_1011AB540);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v47 - v9;
  v61 = sub_10010FC20(&qword_1011AB548);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v47 - v11;
  v56 = sub_10010FC20(&qword_1011AB550) - 8;
  __chkstk_darwin(v56);
  v60 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  __chkstk_darwin(v16);
  v54 = &v47 - v17;
  v18 = sub_10010FC20(&qword_1011AB558);
  v51 = *(v18 - 8);
  v52 = v18;
  __chkstk_darwin(v18);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = &v47 - v21;
  static Axis.Set.vertical.getter();
  v63 = a1;
  v64 = a2;
  sub_10010FC20(&qword_1011AB560);
  sub_100020674(&qword_1011AB568, &qword_1011AB560);
  ScrollView.init(_:showsIndicators:content:)();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  sub_10010FC20(&qword_1011AB570);
  sub_1009B7FBC();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100020674(&qword_1011AB590, &qword_1011AB540);
  sub_1009B80CC(&qword_1011AB598, &type metadata accessor for BorderedProminentButtonStyle);
  v23 = v49;
  v24 = v53;
  v25 = v57;
  View.buttonStyle<A>(_:)();
  (*(v58 + 8))(v8, v25);
  (*(v55 + 8))(v10, v24);
  LOBYTE(v8) = static Edge.Set.top.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v59 + 32))(v15, v23, v61);
  v34 = &v15[*(v56 + 44)];
  *v34 = v8;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v54;
  sub_10003D17C(v15, v54, &qword_1011AB550);
  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v39 = v50;
  v40 = v48;
  v38(v50, v48, v52);
  v41 = v60;
  sub_1000089F8(v35, v60, &qword_1011AB550);
  v42 = v62;
  v38(v62, v39, v36);
  v43 = sub_10010FC20(&unk_1011AB5A0);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  sub_1000089F8(v41, &v42[*(v43 + 64)], &qword_1011AB550);
  sub_1000095E8(v35, &qword_1011AB550);
  v45 = *(v37 + 8);
  v45(v40, v36);
  sub_1000095E8(v41, &qword_1011AB550);
  return (v45)(v39, v36);
}

double sub_1009B63BC@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v15 = 0;
  sub_1009B650C(&v9);
  v18 = v11;
  v19 = v12;
  v20[0] = v13[0];
  *(v20 + 9) = *(v13 + 9);
  v16 = v9;
  v17 = v10;
  *(v22 + 9) = *(v13 + 9);
  v21[2] = v11;
  v21[3] = v12;
  v22[0] = v13[0];
  v21[0] = v9;
  v21[1] = v10;
  sub_1000089F8(&v16, &v8, &qword_1011AB5B0);
  sub_1000095E8(v21, &qword_1011AB5B0);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20[0];
  *&v14[80] = *(v20 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  v4 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v4;
  result = *&v14[16];
  v6 = *v14;
  *(a1 + 33) = *&v14[16];
  v7 = v15;
  *a1 = v2;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_1009B650C@<X0>(uint64_t a1@<X8>)
{
  sub_10000988C();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.largeTitle.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10011895C(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;
  sub_10011895C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v9) = v19;
  static Font.title3.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_10011895C(v16, v18, v9 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10011895C(v20, v22, v24 & 1);

  v32 = swift_getKeyPath();
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v29 & 1;
  *(a1 + 72) = v31;
  *(a1 + 80) = v32;
  *(a1 + 88) = 1;
  sub_10021D0C0(v37, v36, v35 & 1);

  sub_10021D0C0(v25, v27, v29 & 1);

  sub_10011895C(v25, v27, v29 & 1);

  sub_10011895C(v37, v36, v35 & 1);
}

void sub_1009B67E8(uint64_t a1, uint64_t a2)
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v3)
  {

    v3(v4);

    sub_100020438(v3);
  }
}

__n128 sub_1009B6894@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_10000988C();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.bold()();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10011895C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_1009B6A90()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB100);
  sub_1000060E4(v0, qword_1011AB100);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1009B6B10@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1009B6B90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v77[1] = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  v77[0] = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v77 - v15;
  v17 = CloudLibrary.EnablementContext.title.getter(a1);
  v19 = v18;
  v20 = CloudLibrary.EnablementContext.message.getter(a1);
  v22 = v21;
  v78 = a3;
  if (a3)
  {
    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    v26 = v77[0];
    (*(v77[0] + 16))(v13, v16, v11);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v27 = qword_101219808;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v26 + 8))(v16, v11);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v29 = a5;
    sub_100030444(a4);
    v30 = String._bridgeToObjectiveC()();

    v84 = sub_1009B8134;
    v85 = v28;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_10027D328;
    v83 = &unk_1010D5AE0;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    if (qword_1011A69B8 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = v29;
    sub_100030444(a4);
    v35 = String._bridgeToObjectiveC()();
    v84 = sub_1009B8168;
    v85 = v34;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_10027D328;
    v83 = &unk_1010D5B30;
    v36 = _Block_copy(&aBlock);

    v37 = [v32 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v25 addAction:v37];
    v38 = v78;
    v39 = v79;
    if (v78 != 1)
    {
      v40 = v78;
      [v25 setPreferredStyle:0];
      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v25 popoverPresentationController];
      if (v49)
      {
        v50 = v49;
        [v49 setSourceView:v40];
        [v50 setSourceRect:{v42, v44, v46, v48}];
        sub_1009B8170(v38);
        [v50 setPermittedArrowDirections:15];
      }

      sub_1009B8170(v38);
    }

    v51 = *(v39 + 80);
    if (v51)
    {
      v52 = qword_1011A6AC8;

      if (v52 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000060E4(v53, qword_1011AE4E0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Deferring presentation…", v56, 2u);
      }

      v57 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100A8F4C0;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100A90460;
      v83 = &unk_1010D5B58;
      v58 = _Block_copy(&aBlock);
      v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
      _Block_release(v58);

      sub_10012B7A8(v39, &aBlock);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      sub_10012B828(&aBlock, v60 + 24);
      *(v60 + 120) = v25;
      *(v60 + 128) = 1;
      *(v60 + 129) = v38 != 1;
      *(v60 + 136) = 0;
      *(v60 + 144) = 0;
      v61 = v59;
      v62 = v25;
      v51(v39, v62, sub_1008D9BB8, v60);
      sub_100020438(v51);

LABEL_22:

      return;
    }

    sub_100A8D9A0(v25, 1, (v38 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_100030444(a4);
    v63 = sub_1009B4014(v17, v19, v20, v22, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v63];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v64 = v79;
    v65 = *(v79 + 80);
    if (v65)
    {
      v66 = qword_1011A6AC8;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000060E4(v67, qword_1011AE4E0);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100A8F4C0;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100A90460;
      v83 = &unk_1010D5BA8;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_10012B7A8(v64, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_10012B828(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v61 = v73;
      v75 = v78;
      v65(v64, v75, sub_1008D9CA4, v74);
      sub_100020438(v65);

      goto LABEL_22;
    }

    sub_100A8D9A0(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_1009B7868()
{
  result = qword_1011AB148;
  if (!qword_1011AB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB148);
  }

  return result;
}

unint64_t sub_1009B78C0()
{
  result = qword_1011AB150;
  if (!qword_1011AB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_1009B7A98(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_1009B7AC8(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

void sub_1009B7B44()
{
  sub_1009B7C14();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009B7C14()
{
  if (!qword_1011AB190)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AB190);
    }
  }
}

uint64_t sub_1009B7C64(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1009B7C7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1009B7CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1009B7DE4()
{
  sub_1009B7E8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1009B7E8C()
{
  if (!qword_1011AB400)
  {
    _s3__C24UIUserInterfaceSizeClassOMa_0(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AB400);
    }
  }
}

uint64_t sub_1009B7EF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1009B7F40(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_1009B7FBC()
{
  result = qword_1011AB578;
  if (!qword_1011AB578)
  {
    sub_1001109D0(&qword_1011AB570);
    sub_1009B8048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB578);
  }

  return result;
}

unint64_t sub_1009B8048()
{
  result = qword_1011AB580;
  if (!qword_1011AB580)
  {
    sub_1001109D0(&qword_1011AB588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB580);
  }

  return result;
}

uint64_t sub_1009B80CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1009B8134()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_1009B8170(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1009B81B4()
{
  v1 = sub_10010FC20(&qword_1011A8AB0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1009B8248()
{
  result = qword_1011AB648;
  if (!qword_1011AB648)
  {
    sub_1001109D0(&qword_1011AB500);
    sub_1009B82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB648);
  }

  return result;
}

unint64_t sub_1009B82D4()
{
  result = qword_1011AB650;
  if (!qword_1011AB650)
  {
    sub_1001109D0(&qword_1011AB4F0);
    sub_100020674(&qword_1011AB658, &qword_1011AB4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB650);
  }

  return result;
}

uint64_t sub_1009B8414(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  sub_10010FC20(&qword_1011A7F00);
  *(v3 + 2096) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0);
  *(v3 + 2104) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_1009B85A8, 0, 0);
}

uint64_t sub_1009B85A8()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = sub_1000060E4(v76, qword_1011A7DB8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_1000089F8(v0 + 1784, v0 + 1920, &qword_1011A8668);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_1000095E8(v0 + 1784, &qword_1011A8668);
          v93 = sub_100010678(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          sub_10000959C(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_1000095E8(v0 + 1784, &qword_1011A8668);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_1008A4190();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x8000000100E5A870;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = sub_1000060E4(v11, qword_1011A7DB8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_1000089F8(v0 + 152, v0 + 288, &qword_1011A8668);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_1000095E8(v0 + 152, &qword_1011A8668);
      v29 = sub_100010678(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      sub_10000959C(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_1000095E8(v0 + 152, &qword_1011A8668);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_100009F78(0, &qword_1011A7DD8);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v30, &qword_1011A7DD0);
    *(v0 + 2072) = v33;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher);
    v34 = ConnectablePublisher.autoconnect()();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_1000089F8(v0 + 424, v0 + 560, &qword_1011A8668);
    sub_10010FC20(&qword_1011A7DE8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8);
    *(v0 + 2192) = Publisher<>.sink(receiveValue:)();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_1009B916C;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = sub_1000060E4(v51, qword_1011A7DB8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_1000089F8(v0 + 1512, v0 + 1648, &qword_1011A8668);
  sub_1008988C0(v47, v48);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  sub_10089840C(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_1000095E8(v0 + 1512, &qword_1011A8668);
    v67 = sub_100010678(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    sub_10010FC20(&unk_1011ACB70);
    v68 = String.init<A>(describing:)();
    v70 = sub_100010678(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_1000095E8(v0 + 1512, &qword_1011A8668);

    (*(v61 + 8))(v60, v62);
  }

  sub_1008A4190();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_1009B916C()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_1009B9654;
  }

  else
  {
    v2 = sub_1009B9280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009B9280()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_1000089F8(v0 + 968, v0 + 1104, &qword_1011A8668);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_1000095E8(v0 + 968, &qword_1011A8668);
    v19 = sub_100010678(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_1000095E8(v0 + 968, &qword_1011A8668);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_1000089F8(v0 + 1240, v0 + 1376, &qword_1011A8668);
  sub_1008A3074(0, 0, v20, &unk_100EF4D10, v26);

  sub_1000095E8(v20, &qword_1011A7F00);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1009B9654()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_1000089F8(v0 + 696, v0 + 832, &qword_1011A8668);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_1000095E8(v0 + 696, &qword_1011A8668);
    v17 = sub_100010678(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_1000095E8(v0 + 696, &qword_1011A8668);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1009B996C(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_10010FC20(&qword_1011A7F00);
  *(v3 + 64) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A8670);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1009B9B7C, 0, 0);
}

uint64_t sub_1009B9B7C()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_1000060E4(v67, qword_1011A7DB8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000089F8(v70, v69, &qword_1011A8670);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_1000095E8(v78, &qword_1011A8670);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100010678(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_10000959C(v80);
        }

        else
        {
          sub_1000095E8(*(v0 + 144), &qword_1011A8670);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000100E5A870;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000089F8(v9, v8, &qword_1011A8670);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_1000095E8(v18, &qword_1011A8670);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100010678(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {
      sub_1000095E8(*(v0 + 128), &qword_1011A8670);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009F78(0, &qword_1011A7DD8);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v27, &qword_1011A7DD0);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    sub_1000089F8(v29, v25, &qword_1011A8670);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_10003D17C(v25, v36 + v35, &qword_1011A8670);
    sub_10010FC20(&qword_1011A7DE8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1009BA694;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_1000060E4(v42, qword_1011A7DB8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000089F8(v45, v44, &qword_1011A8670);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  sub_10089840C(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_1000095E8(v53, &qword_1011A8670);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100010678(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_10010FC20(&unk_1011ACB70);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010678(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A8670);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1009BA694()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1009BAB60;
  }

  else
  {
    v2 = sub_1009BA7A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BA7A8()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8670);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_1000095E8(v13, &qword_1011A8670);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100010678(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A8670);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000089F8(v22, v20, &qword_1011A8670);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10003D17C(v20, v24 + ((v19 + 32) & ~v19), &qword_1011A8670);
  sub_1008A3074(0, 0, v21, &unk_100EF4CC0, v24);

  sub_1000095E8(v21, &qword_1011A7F00);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1009BAB60()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8670);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_1000095E8(v12, &qword_1011A8670);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_1000095E8(v0[13], &qword_1011A8670);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1009BAE8C(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_10010FC20(&qword_1011A7F00);
  *(v3 + 64) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A8678);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1009BB09C, 0, 0);
}

uint64_t sub_1009BB09C()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_1000060E4(v67, qword_1011A7DB8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000089F8(v70, v69, &qword_1011A8678);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_1000095E8(v78, &qword_1011A8678);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100010678(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_10000959C(v80);
        }

        else
        {
          sub_1000095E8(*(v0 + 144), &qword_1011A8678);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000100E5A870;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000089F8(v9, v8, &qword_1011A8678);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_1000095E8(v18, &qword_1011A8678);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100010678(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {
      sub_1000095E8(*(v0 + 128), &qword_1011A8678);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009F78(0, &qword_1011A7DD8);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v27, &qword_1011A7DD0);
    *(v0 + 32) = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1009F1CEC(&qword_1011A7DE0, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v33;
    sub_1000089F8(v29, v25, &qword_1011A8678);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_10003D17C(v25, v36 + v35, &qword_1011A8678);
    sub_10010FC20(&qword_1011A7DE8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8);
    *(v0 + 232) = Publisher<>.sink(receiveValue:)();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1009BBBB4;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_1000060E4(v42, qword_1011A7DB8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000089F8(v45, v44, &qword_1011A8678);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  sub_10089840C(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_1000095E8(v53, &qword_1011A8678);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100010678(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_10010FC20(&unk_1011ACB70);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010678(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A8678);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1008A4190();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1009BBBB4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1009BC080;
  }

  else
  {
    v2 = sub_1009BBCC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009BBCC8()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8678);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_1000095E8(v13, &qword_1011A8678);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100010678(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100010678(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A8678);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000089F8(v22, v20, &qword_1011A8678);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10003D17C(v20, v24 + ((v19 + 32) & ~v19), &qword_1011A8678);
  sub_1008A3074(0, 0, v21, &unk_100EF4CE8, v24);

  sub_1000095E8(v21, &qword_1011A7F00);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1009BC080()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000089F8(v6, v5, &qword_1011A8678);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_1000095E8(v12, &qword_1011A8678);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100010678(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_1000095E8(v0[13], &qword_1011A8678);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}