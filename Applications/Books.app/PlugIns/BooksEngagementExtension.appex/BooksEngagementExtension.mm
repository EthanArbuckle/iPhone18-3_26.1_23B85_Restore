Swift::Int sub_100001434()
{
  v1 = *v0;
  sub_10000A570();
  sub_10000A580(v1);
  return sub_10000A590();
}

Swift::Int sub_1000014A8()
{
  v1 = *v0;
  sub_10000A570();
  sub_10000A580(v1);
  return sub_10000A590();
}

uint64_t sub_1000014FC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  sub_100007B6C(a1, &v14, &qword_100014420, &qword_10000AAD0);
  if (v15)
  {
    sub_100007B5C(&v14, v16);
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A3C0();
    sub_10000759C(v5, qword_100015550);
    v6 = sub_10000A3A0();
    v7 = sub_10000A450();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Returning values to AMS", v8, 2u);
    }

    sub_100007B00(v16, &v14);
    a3(&v14, 0);
    sub_100007D04(&v14, &qword_100014420, &qword_10000AAD0);
    return sub_10000750C(v16);
  }

  else
  {
    sub_100007D04(&v14, &qword_100014420, &qword_10000AAD0);
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v10 = sub_10000A3C0();
    sub_10000759C(v10, qword_100015550);
    v11 = sub_10000A3A0();
    v12 = sub_10000A440();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Tried to run command but no value was found", v13, 2u);
    }

    memset(v16, 0, sizeof(v16));
    a3(v16, a2);
    return sub_100007D04(v16, &qword_100014420, &qword_10000AAD0);
  }
}

void sub_1000017E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100007B6C(a1, v12, &qword_100014420, &qword_10000AAD0);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_100007558(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_10000A500();
  (*(v7 + 8))(v10, v5);
  sub_10000750C(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_10000A210();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

unint64_t sub_100001954(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100007628(&qword_100014458, &qword_10000AB00);
    v2 = sub_10000A4A0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_100007628(&qword_100014430, &qword_10000AAD8);
        swift_dynamicCast();
        sub_100007B5C(&v25, v27);
        sub_100007B5C(v27, v28);
        sub_100007B5C(v28, &v26);
        result = sub_10000555C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000750C(v12);
          result = sub_100007B5C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100007B5C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_100001BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BooksEngagementPluginProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001C54(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *, void))
{
  if (a1)
  {
    sub_10000211C(a1, a1, v33);
    sub_100007628(&qword_100014438, &qword_10000AAE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000AA60;
    *(inited + 32) = 0x65736E6F70736572;
    *(inited + 40) = 0xE800000000000000;
    sub_100007B00(v33, inited + 48);
    v6 = sub_10000775C(inited);
    swift_setDeallocating();
    sub_100007D04(inited + 32, &qword_100014440, &qword_10000AAE8);
    sub_100007628(&qword_100014448, &qword_10000AAF0);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_10000AA60;
    *(v7 + 32) = 0x7961702D6E6F736ALL;
    v8 = v7 + 32;
    *(v7 + 40) = 0xEC00000064616F6CLL;
    *(v7 + 48) = v6;
    v9 = sub_10000788C(v7);
    swift_setDeallocating();
    sub_100007D04(v8, &qword_100014450, &qword_10000AAF8);
    v10 = sub_100001954(v9);

    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A3C0();
    sub_10000759C(v11, qword_100015550);
    v12 = sub_10000A3A0();
    v13 = sub_10000A450();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "PerformRequest: Sending value back to AMS", v14, 2u);
    }

    v15 = sub_10000A3A0();
    v16 = sub_10000A450();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      v19 = sub_10000A3D0();
      v21 = sub_100004FB4(v19, v20, v32);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Plugin Response = %s", v17, 0xCu);
      sub_10000750C(v18);
    }

    v32[3] = sub_100007628(&qword_100014430, &qword_10000AAD8);
    v32[0] = v10;
    a4(v32, 0);
    sub_10000750C(v33);
    v22 = v32;
  }

  else
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A3C0();
    sub_10000759C(v25, qword_100015550);

    v26 = sub_10000A3A0();
    v27 = sub_10000A440();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100004FB4(a2, a3, v33);
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get propertyValues for %s, returning empty response", v28, 0xCu);
      sub_10000750C(v29);
    }

    v30 = sub_100007990();
    v33[3] = sub_100007628(&qword_100014430, &qword_10000AAD8);
    v33[0] = v30;
    a4(v33, 0);
    v22 = v33;
  }

  return sub_100007D04(v22, &qword_100014420, &qword_10000AAD0);
}

uint64_t sub_10000211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (!a1 || !*(a1 + 16))
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v21 = sub_10000A3C0();
    sub_10000759C(v21, qword_100015550);
    v22 = sub_10000A3A0();
    v23 = sub_10000A450();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Engagement Property did not return any property value", v24, 2u);
    }

    v25 = *(a2 + 16);
    if (v25)
    {
      v26 = (a2 + 32);
      v17 = &_swiftEmptyArrayStorage;
      do
      {
        v27 = v26[1];
        v34 = *v26;
        v35[0] = v27;
        *(v35 + 9) = *(v26 + 25);
        sub_100007BD4(&v34, &v32);
        sub_10000A330();
        sub_100007C30(&v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100004EA4(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_100004EA4((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        sub_100007B5C(&v32, &v17[32 * v29 + 32]);
        v26 += 3;
        --v25;
      }

      while (v25);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v5 = *(a1 + 48);
  v32 = *(a1 + 32);
  *v33 = v5;
  *&v33[9] = *(a1 + 57);
  sub_100007BD4(&v32, &v34);
  if (qword_100014328 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A3C0();
  sub_10000759C(v6, qword_100015550);
  sub_100007BD4(&v32, &v34);
  v7 = sub_10000A3A0();
  v8 = sub_10000A450();
  sub_100007C30(&v32);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v31[0] = v10;
    *v9 = 136315138;
    sub_100007BD4(&v32, &v34);
    v11 = sub_10000A340();
    v13 = v12;
    sub_100007C30(&v32);
    v14 = sub_100004FB4(v11, v13, v31);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Engagement Property found a value of type: %s", v9, 0xCu);
    sub_10000750C(v10);
  }

  if (v33[24])
  {
    sub_100007C30(&v32);
    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = (a2 + 32);
      v17 = &_swiftEmptyArrayStorage;
      do
      {
        v18 = v16[1];
        v34 = *v16;
        v35[0] = v18;
        *(v35 + 9) = *(v16 + 25);
        sub_100007BD4(&v34, v31);
        sub_10000A330();
        sub_100007C30(&v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100004EA4(0, *(v17 + 2) + 1, 1, v17);
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_100004EA4((v19 > 1), v20 + 1, 1, v17);
        }

        *(v17 + 2) = v20 + 1;
        sub_100007B5C(v31, &v17[32 * v20 + 32]);
        v16 += 3;
        --v15;
      }

      while (v15);
      goto LABEL_29;
    }

LABEL_28:
    v17 = &_swiftEmptyArrayStorage;
LABEL_29:
    result = sub_100007628(&qword_100014468, &qword_10000AB10);
    a3[3] = result;
    *a3 = v17;
    return result;
  }

  return sub_10000A330();
}

uint64_t sub_100002548(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3)
{
  v6 = sub_10000A320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007628(&qword_100014478, &qword_10000AB20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v78 - v12;
  v14 = sub_10000A2B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A270();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v93 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *&v92 = v14;
    v85 = v21;
    v86 = v20;
    v87 = a2;
    v88 = a3;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = (a1 + 32);
      v25 = &_swiftEmptyArrayStorage;
      do
      {
        v26 = *v24;
        v27 = v24[1];
        *&v97[9] = *(v24 + 25);
        v96 = v26;
        *v97 = v27;
        sub_100007BD4(&v96, &v94);
        sub_10000A330();
        sub_100007C30(&v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100004EA4(0, *(v25 + 2) + 1, 1, v25);
        }

        v29 = *(v25 + 2);
        v28 = *(v25 + 3);
        if (v29 >= v28 >> 1)
        {
          v25 = sub_100004EA4((v28 > 1), v29 + 1, 1, v25);
        }

        *(v25 + 2) = v29 + 1;
        sub_100007B5C(&v94, &v25[32 * v29 + 32]);
        v24 += 3;
        --v23;
      }

      while (v23);
    }

    else
    {
      v25 = &_swiftEmptyArrayStorage;
    }

    v36 = sub_1000030A4(v25);

    if (v36)
    {
      v83 = v6;
      sub_10000A200();
      v37 = v36[2];
      v38 = &type metadata for Any;
      v82 = v36;
      if (v37)
      {
        v39 = v36 + 4;
        v90 = (v15 + 56);
        v79 = (v7 + 8);
        v80 = (v15 + 32);
        v78 = (v15 + 8);
        v40 = &_swiftEmptyArrayStorage;
        v81 = v13;
        do
        {
          v41 = *v39;
          if (*(*v39 + 16))
          {
            v42 = *v39;

            v43 = sub_10000555C(0x7461447472617473, 0xE900000000000065);
            if (v44 & 1) != 0 && (sub_100007B00(*(v41 + 56) + 32 * v43, &v94), (swift_dynamicCast()))
            {
              v45 = v38;
              sub_10000A260();
              v84 = v40;

              v46 = v92;
              (*v90)(v13, 0, 1, v92);
              v47 = v13;
              v48 = v91;
              (*v80)(v91, v47, v46);
              v49 = v89;
              sub_10000A310();
              v50 = sub_10000A2C0();
              (*v79)(v49, v83);
              if (v50)
              {
                v95 = sub_100007628(&qword_100014430, &qword_10000AAD8);
                *&v94 = v41;
                v40 = v84;
                v38 = v45;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v40 = sub_100004EA4(0, *(v40 + 2) + 1, 1, v40);
                }

                v13 = v81;
                v52 = *(v40 + 2);
                v51 = *(v40 + 3);
                if (v52 >= v51 >> 1)
                {
                  v40 = sub_100004EA4((v51 > 1), v52 + 1, 1, v40);
                }

                (*v78)();
                *(v40 + 2) = v52 + 1;
                sub_100007B5C(&v94, &v40[32 * v52 + 32]);
              }

              else
              {
                (*v78)(v48, v46);

                v38 = v45;
                v13 = v81;
                v40 = v84;
              }
            }

            else
            {
            }
          }

          ++v39;
          --v37;
        }

        while (v37);
      }

      else
      {
        v40 = &_swiftEmptyArrayStorage;
      }

      v95 = sub_100007628(&qword_100014468, &qword_10000AB10);
      *&v94 = v40;
      sub_100007628(&qword_100014438, &qword_10000AAE0);
      inited = swift_initStackObject();
      v92 = xmmword_10000AA60;
      *(inited + 16) = xmmword_10000AA60;
      *(inited + 32) = 0x65736E6F70736572;
      *(inited + 40) = 0xE800000000000000;
      sub_100007B00(&v94, inited + 48);
      v60 = sub_10000775C(inited);
      swift_setDeallocating();
      sub_100007D04(inited + 32, &qword_100014440, &qword_10000AAE8);
      sub_100007628(&qword_100014448, &qword_10000AAF0);
      v61 = swift_initStackObject();
      *(v61 + 16) = v92;
      *(v61 + 32) = 0x7961702D6E6F736ALL;
      v62 = v61 + 32;
      *(v61 + 40) = 0xEC00000064616F6CLL;
      *(v61 + 48) = v60;
      v63 = sub_10000788C(v61);
      swift_setDeallocating();
      sub_100007D04(v62, &qword_100014450, &qword_10000AAF8);
      v64 = sub_100001954(v63);

      sub_10000750C(&v94);
      if (qword_100014328 != -1)
      {
        swift_once();
      }

      v65 = sub_10000A3C0();
      sub_10000759C(v65, qword_100015550);
      v66 = sub_10000A3A0();
      v67 = sub_10000A450();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "PerformRequest: Sending value back to AMS", v68, 2u);
      }

      v69 = sub_10000A3A0();
      v70 = sub_10000A450();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v94 = v72;
        *v71 = 136315138;
        v73 = sub_10000A3D0();
        v75 = sub_100004FB4(v73, v74, &v94);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v69, v70, "Plugin Response = %s", v71, 0xCu);
        sub_10000750C(v72);
      }

      v76 = v87;
      v95 = sub_100007628(&qword_100014430, &qword_10000AAD8);
      *&v94 = v64;
      v76(&v94, 0);
      (*(v85 + 8))(v93, v86);
    }

    else
    {
      v53 = v87;
      if (qword_100014328 != -1)
      {
        swift_once();
      }

      v54 = sub_10000A3C0();
      sub_10000759C(v54, qword_100015550);
      v55 = sub_10000A3A0();
      v56 = sub_10000A440();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Failed to cast response from session, returning empty response", v57, 2u);
      }

      v58 = sub_100007990();
      v95 = sub_100007628(&qword_100014430, &qword_10000AAD8);
      *&v94 = v58;
      v53(&v94, 0);
    }

    v35 = &v94;
  }

  else
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A3C0();
    sub_10000759C(v30, qword_100015550);
    v31 = sub_10000A3A0();
    v32 = sub_10000A440();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get propertyValues for 'session', returning empty response", v33, 2u);
    }

    v34 = sub_100007990();
    *&v97[8] = sub_100007628(&qword_100014430, &qword_10000AAD8);
    *&v96 = v34;
    a2(&v96, 0);
    v35 = &v96;
  }

  return sub_100007D04(v35, &qword_100014420, &qword_10000AAD0);
}

unint64_t *sub_1000030A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  sub_10000568C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100007B00(i, v9);
      sub_100007628(&qword_100014430, &qword_10000AAD8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000568C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1000031CC(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3)
{
  v6 = sub_100007628(&qword_100014478, &qword_10000AB20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *&v82 = &v68 - v8;
  v9 = sub_10000A270();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v81 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10000A2B0();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v80);
  v78 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  if (a1)
  {
    v75 = v10;
    v76 = v9;
    v79 = &v68 - v17;
    sub_10000A250();
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = (a1 + 32);
      v20 = &_swiftEmptyArrayStorage;
      do
      {
        v21 = *v19;
        v22 = v19[1];
        *&v86[9] = *(v19 + 25);
        v85 = v21;
        *v86 = v22;
        sub_100007BD4(&v85, &v83);
        sub_10000A330();
        sub_100007C30(&v85);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100004EA4(0, *(v20 + 2) + 1, 1, v20);
        }

        v24 = *(v20 + 2);
        v23 = *(v20 + 3);
        if (v24 >= v23 >> 1)
        {
          v20 = sub_100004EA4((v23 > 1), v24 + 1, 1, v20);
        }

        *(v20 + 2) = v24 + 1;
        sub_100007B5C(&v83, &v20[32 * v24 + 32]);
        v19 += 3;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = &_swiftEmptyArrayStorage;
    }

    v31 = sub_1000030A4(v20);

    if (v31)
    {
      v73 = a3;
      v74 = a2;
      sub_10000A200();
      v32 = v31[2];
      v71 = v31;
      v72 = v13;
      if (v32)
      {
        v33 = v31 + 4;
        v34 = (v13 + 56);
        v69 = (v13 + 8);
        v70 = (v13 + 32);
        v77 = &_swiftEmptyDictionarySingleton;
        do
        {
          v35 = *v33;
          if (*(*v33 + 16))
          {
            v36 = *v33;

            v37 = sub_10000555C(0x7461447472617473, 0xE900000000000065);
            if (v38 & 1) != 0 && (sub_100007B00(v35[7] + 32 * v37, &v83), (swift_dynamicCast()))
            {
              sub_10000A260();

              v39 = v82;
              v40 = v80;
              v41 = v34;
              (*v34)(v82, 0, 1, v80);
              v42 = v78;
              (*v70)(v78, v39, v40);
              LOBYTE(v39) = sub_10000A280();
              (*v69)(v42, v40);

              if (v39)
              {
                v77 = v35;
              }

              v34 = v41;
            }

            else
            {
            }
          }

          ++v33;
          --v32;
        }

        while (v32);
      }

      else
      {
        v77 = &_swiftEmptyDictionarySingleton;
      }

      v48 = sub_100007628(&qword_100014430, &qword_10000AAD8);
      v84 = v48;
      *&v83 = v77;
      sub_100007628(&qword_100014438, &qword_10000AAE0);
      inited = swift_initStackObject();
      v82 = xmmword_10000AA60;
      *(inited + 16) = xmmword_10000AA60;
      *(inited + 32) = 0x65736E6F70736572;
      *(inited + 40) = 0xE800000000000000;
      sub_100007B00(&v83, inited + 48);
      v50 = sub_10000775C(inited);
      swift_setDeallocating();
      sub_100007D04(inited + 32, &qword_100014440, &qword_10000AAE8);
      sub_100007628(&qword_100014448, &qword_10000AAF0);
      v51 = swift_initStackObject();
      *(v51 + 16) = v82;
      *(v51 + 32) = 0x7961702D6E6F736ALL;
      v52 = v51 + 32;
      *(v51 + 40) = 0xEC00000064616F6CLL;
      *(v51 + 48) = v50;
      v53 = sub_10000788C(v51);
      swift_setDeallocating();
      sub_100007D04(v52, &qword_100014450, &qword_10000AAF8);
      v54 = sub_100001954(v53);

      sub_10000750C(&v83);
      if (qword_100014328 != -1)
      {
        swift_once();
      }

      v55 = sub_10000A3C0();
      sub_10000759C(v55, qword_100015550);
      v56 = sub_10000A3A0();
      v57 = sub_10000A450();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "PerformRequest: Sending value back to AMS", v58, 2u);
      }

      v59 = sub_10000A3A0();
      v60 = sub_10000A450();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v83 = v62;
        *v61 = 136315138;
        v63 = sub_10000A3D0();
        v65 = sub_100004FB4(v63, v64, &v83);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Plugin Response = %s", v61, 0xCu);
        sub_10000750C(v62);
      }

      v66 = v72;
      v84 = v48;
      *&v83 = v54;
      v74(&v83, 0);
      (*(v75 + 8))(v81, v76);
      (*(v66 + 8))(v79, v80);
    }

    else
    {
      if (qword_100014328 != -1)
      {
        swift_once();
      }

      v43 = sub_10000A3C0();
      sub_10000759C(v43, qword_100015550);
      v44 = sub_10000A3A0();
      v45 = sub_10000A440();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to cast response from session, returning empty response", v46, 2u);
      }

      v47 = sub_100007990();
      v84 = sub_100007628(&qword_100014430, &qword_10000AAD8);
      *&v83 = v47;
      a2(&v83, 0);
      (*(v13 + 8))(v79, v80);
    }

    v30 = &v83;
  }

  else
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A3C0();
    sub_10000759C(v25, qword_100015550);
    v26 = sub_10000A3A0();
    v27 = sub_10000A440();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get propertyValues for 'session', returning empty response", v28, 2u);
    }

    v29 = sub_100007990();
    *&v86[8] = sub_100007628(&qword_100014430, &qword_10000AAD8);
    *&v85 = v29;
    a2(&v85, 0);
    v30 = &v85;
  }

  return sub_100007D04(v30, &qword_100014420, &qword_10000AAD0);
}

uint64_t sub_100003BD8(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3)
{
  v6 = sub_10000A270();
  v135 = *(v6 - 8);
  v136 = v6;
  v7 = *(v135 + 64);
  __chkstk_darwin(v6);
  v137 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A2E0();
  v140 = *(v9 - 8);
  v141 = v9;
  v10 = *(v140 + 64);
  __chkstk_darwin(v9);
  v139 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v145 = sub_10000A2F0();
  v138 = *(v145 - 8);
  v12 = *(v138 + 64);
  __chkstk_darwin(v145);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A2D0();
  v144 = *(v15 - 8);
  v16 = *(v144 + 64);
  __chkstk_darwin(v15);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100007628(&qword_100014478, &qword_10000AB20);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v134 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v125 - v23;
  v25 = sub_10000A2B0();
  v142 = *(v25 - 8);
  v26 = *(v142 + 64);
  v27 = __chkstk_darwin(v25);
  v133 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v143 = &v125 - v30;
  __chkstk_darwin(v29);
  v146 = &v125 - v31;
  v32 = sub_10000A320();
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32);
  v35 = __chkstk_darwin(v34);
  if (!a1)
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v46 = sub_10000A3C0();
    sub_10000759C(v46, qword_100015550);
    v47 = sub_10000A3A0();
    v48 = sub_10000A440();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to get propertyValues for 'session', returning empty response", v49, 2u);
    }

    v50 = sub_100007990();
    *&v153[8] = sub_100007628(&qword_100014430, &qword_10000AAD8);
    *&v152 = v50;
    a2(&v152, 0);
    v51 = &v152;
    return sub_100007D04(v51, &qword_100014420, &qword_10000AAD0);
  }

  v128 = v38;
  v129 = v37;
  v131 = v25;
  v132 = &v125 - v36;
  v147 = a2;
  v148 = a3;
  v130 = v35;
  v39 = *(a1 + 16);
  if (v39)
  {
    v40 = (a1 + 32);
    v41 = &_swiftEmptyArrayStorage;
    do
    {
      v42 = *v40;
      v43 = v40[1];
      *&v153[9] = *(v40 + 25);
      v152 = v42;
      *v153 = v43;
      sub_100007BD4(&v152, &v150);
      sub_10000A330();
      sub_100007C30(&v152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_100004EA4(0, *(v41 + 2) + 1, 1, v41);
      }

      v45 = *(v41 + 2);
      v44 = *(v41 + 3);
      if (v45 >= v44 >> 1)
      {
        v41 = sub_100004EA4((v44 > 1), v45 + 1, 1, v41);
      }

      *(v41 + 2) = v45 + 1;
      sub_100007B5C(&v150, &v41[32 * v45 + 32]);
      v40 += 3;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = &_swiftEmptyArrayStorage;
  }

  v52 = sub_1000030A4(v41);

  v53 = v147;
  if (!v52)
  {
    goto LABEL_32;
  }

  if (!v52[2])
  {

LABEL_32:
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v75 = sub_10000A3C0();
    sub_10000759C(v75, qword_100015550);
    v71 = sub_10000A3A0();
    v72 = sub_10000A440();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_37;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Failed to cast response from session, returning empty response";
    goto LABEL_36;
  }

  v54 = v52[4];

  if (!*(v54 + 16) || (v55 = sub_10000555C(0x47676E6964616572, 0xEB000000006C616FLL), (v56 & 1) == 0) || (sub_100007B00(*(v54 + 56) + 32 * v55, &v150), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v70 = sub_10000A3C0();
    sub_10000759C(v70, qword_100015550);
    v71 = sub_10000A3A0();
    v72 = sub_10000A440();
    if (!os_log_type_enabled(v71, v72))
    {
      goto LABEL_37;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Failed to retrieve reading goal, returning empty response";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v71, v72, v74, v73, 2u);

LABEL_37:

    v76 = sub_100007990();
    v151 = sub_100007628(&qword_100014430, &qword_10000AAD8);
    *&v150 = v76;
    v53(&v150, 0);
    goto LABEL_38;
  }

  v126 = v149;
  v127 = v54;
  sub_10000A310();
  sub_10000A2A0();
  (*(v144 + 104))(v18, enum case for Calendar.MatchingPolicy.nextTime(_:), v15);
  v57 = v138;
  (*(v138 + 104))(v14, enum case for Calendar.RepeatedTimePolicy.first(_:), v145);
  v58 = v139;
  v59 = v140;
  v60 = v141;
  (*(v140 + 104))(v139, enum case for Calendar.SearchDirection.forward(_:), v141);
  sub_10000A300();
  (*(v59 + 8))(v58, v60);
  (*(v57 + 8))(v14, v145);
  (*(v144 + 8))(v18, v15);
  v61 = v142;
  v62 = v131;
  if ((*(v142 + 48))(v24, 1, v131) == 1)
  {

    sub_100007D04(v24, &qword_100014478, &qword_10000AB20);
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v63 = sub_10000A3C0();
    sub_10000759C(v63, qword_100015550);
    v64 = sub_10000A3A0();
    v65 = sub_10000A440();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v147;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed computing the time remaining to reach the goal today", v68, 2u);
    }

    v69 = sub_100007990();
    v151 = sub_100007628(&qword_100014430, &qword_10000AAD8);
    *&v150 = v69;
    v67(&v150, 0);
    (*(v61 + 8))(v146, v131);
    goto LABEL_60;
  }

  v78 = *(v61 + 32);
  v78(v143, v24, v62);
  v79 = v137;
  sub_10000A200();
  v80 = v127;
  if (!*(v127 + 16))
  {
    goto LABEL_45;
  }

  v81 = sub_10000555C(1702125924, 0xE400000000000000);
  if ((v82 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_100007B00(*(v80 + 56) + 32 * v81, &v150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v83 = v134;
  sub_10000A260();

  v113 = v131;
  (*(v61 + 56))(v83, 0, 1, v131);
  v14 = v133;
  v78(v133, v83, v113);
  v114 = v128;
  sub_10000A310();
  v115 = sub_10000A2C0();
  (*(v129 + 8))(v114, v130);
  if ((v115 & 1) == 0)
  {
    goto LABEL_72;
  }

  v116 = v127;
  if (!*(v127 + 16) || (v117 = sub_10000555C(0xD000000000000013, 0x800000010000B310), (v118 & 1) == 0))
  {

    goto LABEL_74;
  }

  sub_100007B00(*(v116 + 56) + 32 * v117, &v150);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_74:
    (*(v61 + 8))(v14, v113);
    goto LABEL_46;
  }

  v126 = v149;
  if (qword_100014328 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v119 = sub_10000A3C0();
    sub_10000759C(v119, qword_100015550);
    v120 = sub_10000A3A0();
    v113 = sub_10000A450();
    if (os_log_type_enabled(v120, v113))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v120, v113, "remainingTimeToRead: %ld", v14, 0xCu);
    }

    sub_10000A290();
    v122 = v121;
    sub_10000A290();
    v124 = v123;
    result = (*(v142 + 8))(v133, v131);
    v90 = v122 - v124;
    if (COERCE__INT64(fabs(v122 - v124)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_80:
      __break(1u);
      return result;
    }

    if (v90 <= -9.22337204e18)
    {
      goto LABEL_80;
    }

    v61 = v142;
    v79 = v137;
    if (v90 < 9.22337204e18)
    {
      break;
    }

    __break(1u);
LABEL_72:
    (*(v61 + 8))(v14, v113);
LABEL_45:

LABEL_46:
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v84 = sub_10000A3C0();
    sub_10000759C(v84, qword_100015550);
    v85 = sub_10000A3A0();
    v86 = sub_10000A450();
    if (os_log_type_enabled(v85, v86))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "No reading activity today", v14, 2u);
    }

    sub_10000A290();
    v88 = v87;
    sub_10000A290();
    v90 = v88 - v89;
    if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v90 <= -9.22337204e18)
    {
      goto LABEL_76;
    }

    if (v90 < 9.22337204e18)
    {
      break;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v151 = &type metadata for Bool;
  LOBYTE(v150) = v126 < v90;
  sub_100007628(&qword_100014438, &qword_10000AAE0);
  inited = swift_initStackObject();
  v145 = xmmword_10000AA60;
  *(inited + 16) = xmmword_10000AA60;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  sub_100007B00(&v150, inited + 48);
  v92 = sub_10000775C(inited);
  swift_setDeallocating();
  sub_100007D04(inited + 32, &qword_100014440, &qword_10000AAE8);
  sub_100007628(&qword_100014448, &qword_10000AAF0);
  v93 = swift_initStackObject();
  *(v93 + 16) = v145;
  *(v93 + 32) = 0x7961702D6E6F736ALL;
  v94 = v93 + 32;
  *(v93 + 40) = 0xEC00000064616F6CLL;
  *(v93 + 48) = v92;
  v95 = sub_10000788C(v93);
  swift_setDeallocating();
  sub_100007D04(v94, &qword_100014450, &qword_10000AAF8);
  v96 = sub_100001954(v95);

  sub_10000750C(&v150);
  if (qword_100014328 != -1)
  {
    swift_once();
  }

  v97 = sub_10000A3C0();
  sub_10000759C(v97, qword_100015550);
  v98 = sub_10000A3A0();
  v99 = sub_10000A450();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "PerformRequest: Sending value back to AMS", v100, 2u);
  }

  v101 = sub_10000A3A0();
  v102 = sub_10000A450();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v150 = v104;
    *v103 = 136315138;
    v105 = sub_10000A3D0();
    v107 = sub_100004FB4(v105, v106, &v150);

    *(v103 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v101, v102, "Plugin Response = %s", v103, 0xCu);
    sub_10000750C(v104);
  }

  v108 = v147;
  v110 = v135;
  v109 = v136;
  v151 = sub_100007628(&qword_100014430, &qword_10000AAD8);
  *&v150 = v96;
  v108(&v150, 0);
  (*(v110 + 8))(v79, v109);
  v111 = *(v61 + 8);
  v112 = v131;
  v111(v143, v131);
  v111(v146, v112);
LABEL_60:
  (*(v129 + 8))(v132, v130);
LABEL_38:
  v51 = &v150;
  return sub_100007D04(v51, &qword_100014420, &qword_10000AAD0);
}

char *sub_100004EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007628(&qword_100014470, &qword_10000AB18);
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

uint64_t sub_100004FB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005080(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007B00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000750C(v11);
  return v7;
}

unint64_t sub_100005080(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000518C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000A480();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000518C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000051D8(a1, a2);
  sub_100005308(&off_1000105C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000051D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000053F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000A480();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000A410();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000053F4(v10, 0);
        result = sub_10000A470();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100005308(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100005468(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000053F4(uint64_t a1, uint64_t a2)
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

  sub_100007628(&qword_100014488, &unk_10000AB30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005468(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007628(&qword_100014488, &unk_10000AB30);
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

unint64_t sub_10000555C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000A570();
  sub_10000A3F0();
  v6 = sub_10000A590();

  return sub_1000055D4(a1, a2, v6);
}

unint64_t sub_1000055D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A510())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000568C(void *a1, int64_t a2, char a3)
{
  result = sub_1000056AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000056AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100007628(&qword_100014480, &qword_10000AB28);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100007628(&qword_100014430, &qword_10000AAD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000057E0()
{
  v0 = sub_10000A240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - v7;
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_10000A3E0();
  v13 = [v11 containerURLForSecurityApplicationGroupIdentifier:v12];

  if (v13)
  {
    sub_10000A230();

    sub_10000A220();
    (*(v1 + 16))(v5, v8, v0);
    v14 = objc_allocWithZone(sub_10000A360());
    sub_10000A350();
    v15 = objc_allocWithZone(sub_10000A390());
    v16 = sub_10000A370();
    v17 = *(v1 + 8);
    v17(v8, v0);
    v17(v10, v0);
  }

  else
  {
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v18 = sub_10000A3C0();
    sub_10000759C(v18, qword_100015550);
    v19 = sub_10000A3A0();
    v20 = sub_10000A440();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error while loading container for book messages. Ensure you have access to the application group folder.", v21, 2u);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_100005ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007B6C(a1, v31, &qword_100014420, &qword_10000AAD0);
  if (!v32)
  {
    sub_100007D04(v31, &qword_100014420, &qword_10000AAD0);
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v16 = sub_10000A3C0();
    sub_10000759C(v16, qword_100015550);
    v17 = sub_10000A3A0();
    v18 = sub_10000A440();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Tried to run command but no value was found", v19, 2u);
    }

    memset(v33, 0, sizeof(v33));
    sub_100007B6C(v33, v31, &qword_100014420, &qword_10000AAD0);
    v20 = v32;
    if (v32)
    {
      v21 = sub_100007558(v31, v32);
      v22 = *(v20 - 8);
      v23 = *(v22 + 64);
      __chkstk_darwin(v21);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25);
      v26 = sub_10000A500();
      (*(v22 + 8))(v25, v20);
      sub_10000750C(v31);
      if (a2)
      {
LABEL_14:
        v27 = sub_10000A210();
LABEL_19:
        (*(a3 + 16))(a3, v26, v27);
        swift_unknownObjectRelease();

        return sub_100007D04(v33, &qword_100014420, &qword_10000AAD0);
      }
    }

    else
    {
      v26 = 0;
      if (a2)
      {
        goto LABEL_14;
      }
    }

    v27 = 0;
    goto LABEL_19;
  }

  sub_100007B5C(v31, v33);
  if (qword_100014328 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A3C0();
  sub_10000759C(v5, qword_100015550);
  v6 = sub_10000A3A0();
  v7 = sub_10000A450();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Returning values to AMS", v8, 2u);
  }

  sub_100007B00(v33, v31);
  sub_100007B6C(v31, v29, &qword_100014420, &qword_10000AAD0);
  v9 = v30;
  if (v30)
  {
    v10 = sub_100007558(v29, v30);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_10000A500();
    (*(v11 + 8))(v14, v9);
    sub_10000750C(v29);
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v15, 0);
  swift_unknownObjectRelease();
  sub_100007D04(v31, &qword_100014420, &qword_10000AAD0);
  return sub_10000750C(v33);
}

void sub_100005F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000076FC;
  *(v10 + 24) = v9;
  if (!a3)
  {
    sub_1000075D4();
    v23 = 0u;
    v24 = 0u;
    v14 = swift_allocError();
    *v15 = 3;
    _Block_copy(a5);
    _Block_copy(a5);

    sub_100005ACC(&v23, v14, a5);
LABEL_12:

    sub_100007D04(&v23, &qword_100014420, &qword_10000AAD0);

    _Block_release(a5);
    return;
  }

  v11 = qword_100014320;
  if (!qword_100014320)
  {
    _Block_copy(a5);
    _Block_copy(a5);
    v16 = qword_100014328;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A3C0();
    sub_10000759C(v17, qword_100015550);
    v18 = sub_10000A3A0();
    v19 = sub_10000A440();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to instantiate Engagement Collector Manager", v20, 2u);
    }

    sub_1000075D4();
    v23 = 0u;
    v24 = 0u;
    v21 = swift_allocError();
    *v22 = 5;
    _Block_copy(a5);
    sub_100005ACC(&v23, v21, a5);
    _Block_release(a5);
    goto LABEL_12;
  }

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = sub_100007704;
  v12[5] = v10;
  v12[6] = a4;
  _Block_copy(a5);
  _Block_copy(a5);

  v13 = v11;

  sub_10000A380();

  _Block_release(a5);
}

uint64_t sub_100006290(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100007F6C;
  *(v5 + 24) = v4;
  v6 = qword_100014320;
  if (qword_100014320)
  {
    v7 = swift_allocObject();
    v7[2] = sub_100007F48;
    v7[3] = v5;
    v7[4] = a1;
    _Block_copy(a2);

    v8 = v6;
    sub_10000A380();
  }

  else
  {
    _Block_copy(a2);
    v10 = qword_100014328;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A3C0();
    sub_10000759C(v11, qword_100015550);
    v12 = sub_10000A3A0();
    v13 = sub_10000A440();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to instantiate Engagement Collector Manager", v14, 2u);
    }

    sub_1000075D4();
    memset(v17, 0, sizeof(v17));
    v15 = swift_allocError();
    *v16 = 5;
    _Block_copy(a2);
    sub_100005ACC(v17, v15, a2);
    _Block_release(a2);

    sub_100007D04(v17, &qword_100014420, &qword_10000AAD0);
  }
}

uint64_t sub_100006528(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100007F6C;
  *(v5 + 24) = v4;
  v6 = qword_100014320;
  if (qword_100014320)
  {
    v7 = swift_allocObject();
    v7[2] = sub_100007F48;
    v7[3] = v5;
    v7[4] = a1;
    _Block_copy(a2);

    v8 = v6;
    sub_10000A380();
  }

  else
  {
    _Block_copy(a2);
    v10 = qword_100014328;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A3C0();
    sub_10000759C(v11, qword_100015550);
    v12 = sub_10000A3A0();
    v13 = sub_10000A440();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to instantiate Engagement Collector Manager", v14, 2u);
    }

    sub_1000075D4();
    memset(v17, 0, sizeof(v17));
    v15 = swift_allocError();
    *v16 = 5;
    _Block_copy(a2);
    sub_100005ACC(v17, v15, a2);
    _Block_release(a2);

    sub_100007D04(v17, &qword_100014420, &qword_10000AAD0);
  }
}

uint64_t sub_1000067C0(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100007F6C;
  *(v5 + 24) = v4;
  v6 = qword_100014320;
  if (qword_100014320)
  {
    v7 = swift_allocObject();
    v7[2] = sub_100007F48;
    v7[3] = v5;
    v7[4] = a1;
    _Block_copy(a2);

    v8 = v6;
    sub_10000A380();
  }

  else
  {
    _Block_copy(a2);
    v10 = qword_100014328;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A3C0();
    sub_10000759C(v11, qword_100015550);
    v12 = sub_10000A3A0();
    v13 = sub_10000A440();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to instantiate Engagement Collector Manager", v14, 2u);
    }

    sub_1000075D4();
    memset(v17, 0, sizeof(v17));
    v15 = swift_allocError();
    *v16 = 5;
    _Block_copy(a2);
    sub_100005ACC(v17, v15, a2);
    _Block_release(a2);

    sub_100007D04(v17, &qword_100014420, &qword_10000AAD0);
  }
}

void sub_100006A60(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = objc_opt_self();
  sub_100007558(a1, a1[3]);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  LODWORD(v6) = [v6 isValidJSONObject:sub_10000A500()];
  swift_unknownObjectRelease();
  if (!v6)
  {
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    v55._countAndFlagsBits = 91;
    v55._object = 0xE100000000000000;
    sub_10000A400(v55);
    sub_10000A490();
    v56._countAndFlagsBits = 93;
    v56._object = 0xE100000000000000;
    sub_10000A400(v56);
    v10 = v53;
    if (qword_100014328 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A3C0();
    sub_10000759C(v11, qword_100015550);

    v12 = sub_10000A3A0();
    v13 = sub_10000A440();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v53 = v15;
      *v14 = 136315138;
      v16 = sub_100004FB4(v10, *(&v10 + 1), &v53);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid input = %s", v14, 0xCu);
      sub_10000750C(v15);
    }

    else
    {
    }

    sub_1000075D4();
    v53 = 0u;
    v54 = 0u;
    swift_allocError();
    v18 = 3;
    goto LABEL_9;
  }

  v7 = sub_10000A1F0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_10000A1E0();
  sub_100007670();
  sub_10000A1D0();

  v27 = v53;
  v29 = *(&v53 + 1);
  v28 = v54;
  if (qword_100014328 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A3C0();
  sub_10000759C(v30, qword_100015550);
  v31 = sub_10000A3A0();
  v32 = sub_10000A450();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Setting up Engagement Collector", v33, 2u);
  }

  v34 = sub_1000057E0();
  v35 = qword_100014320;
  qword_100014320 = v34;

  if (!qword_100014320)
  {

    v47 = sub_10000A3A0();
    v48 = sub_10000A440();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to instantiate Engagement Collector Manager", v49, 2u);
    }

    sub_1000075D4();
    v53 = 0u;
    v54 = 0u;
    swift_allocError();
    v18 = 5;
LABEL_9:
    *v17 = v18;
    sub_100007B6C(&v53, v51, &qword_100014420, &qword_10000AAD0);
    v19 = v52;
    if (v52)
    {
      v20 = sub_100007558(v51, v52);
      v21 = *(v19 - 8);
      v22 = *(v21 + 64);
      __chkstk_darwin(v20);
      v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
      (*(v21 + 16))(v24);
      v25 = sub_10000A500();
      (*(v21 + 8))(v24, v19);
      sub_10000750C(v51);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_10000A210();
    (a3)[2](a3, v25, v26);
    swift_unknownObjectRelease();

    sub_100007D04(&v53, &qword_100014420, &qword_10000AAD0);
    goto LABEL_30;
  }

  v36 = sub_10000A3A0();
  v37 = sub_10000A450();
  if (os_log_type_enabled(v36, v37))
  {
    v50 = v29;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v53 = v39;
    v40 = 0xED00007974726570;
    *v38 = 136315138;
    v41 = 0x6F72506863746566;
    if (v27 != 2)
    {
      v41 = 0xD000000000000016;
      v40 = 0x800000010000B280;
    }

    v42 = 0x800000010000B240;
    v43 = 0xD000000000000013;
    if (v27)
    {
      v43 = 0xD000000000000010;
      v42 = 0x800000010000B260;
    }

    if (v27 <= 1)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    if (v27 <= 1)
    {
      v45 = v42;
    }

    else
    {
      v45 = v40;
    }

    v46 = sub_100004FB4(v44, v45, &v53);

    *(v38 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "Executing command: %s", v38, 0xCu);
    sub_10000750C(v39);

    v29 = v50;
  }

  else
  {
  }

  _Block_copy(a3);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      sub_100005F60(2, v29, v28, a2, a3);
    }

    else
    {
      sub_1000067C0(a2, a3);
    }
  }

  else if (v27)
  {
    sub_100006528(a2, a3);
  }

  else
  {
    sub_100006290(a2, a3);
  }

  _Block_release(a3);

LABEL_30:
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_10000750C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100007558(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000759C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000075D4()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

uint64_t sub_100007628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007670()
{
  result = qword_100014428;
  if (!qword_100014428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014428);
  }

  return result;
}

uint64_t sub_1000076C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000770C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000774C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_100001C54(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_10000775C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007628(&qword_100014458, &qword_10000AB00);
    v3 = sub_10000A4A0();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007B6C(v4, &v13, &qword_100014440, &qword_10000AAE8);
      v5 = v13;
      v6 = v14;
      result = sub_10000555C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007B5C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000788C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007628(&qword_100014460, &qword_10000AB08);
    v3 = sub_10000A4A0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000555C(v5, v6);
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

unint64_t sub_100007990()
{
  v7[3] = sub_100007628(&qword_100014430, &qword_10000AAD8);
  v7[0] = &_swiftEmptyDictionarySingleton;
  sub_100007628(&qword_100014438, &qword_10000AAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000AA60;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  sub_100007B00(v7, inited + 48);
  v1 = sub_10000775C(inited);
  swift_setDeallocating();
  sub_100007D04(inited + 32, &qword_100014440, &qword_10000AAE8);
  sub_100007628(&qword_100014448, &qword_10000AAF0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_10000AA60;
  *(v2 + 32) = 0x7961702D6E6F736ALL;
  v3 = v2 + 32;
  *(v2 + 40) = 0xEC00000064616F6CLL;
  *(v2 + 48) = v1;
  v4 = sub_10000788C(v2);
  swift_setDeallocating();
  sub_100007D04(v3, &qword_100014450, &qword_10000AAF8);
  v5 = sub_100001954(v4);

  sub_10000750C(v7);
  return v5;
}

uint64_t sub_100007B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100007B5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007B6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007628(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007CC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007D04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007628(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for BooksEngagementPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooksEngagementPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007EF4()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100007F78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007974726570;
  v3 = 0xD000000000000010;
  v4 = 0x6F72506863746566;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x6F72506863746566;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v5 == 2)
    {
      v7 = 0xED00007974726570;
    }

    else
    {
      v7 = 0x800000010000B280;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (v5)
    {
      v7 = 0x800000010000B260;
    }

    else
    {
      v7 = 0x800000010000B240;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000016;
    v2 = 0x800000010000B280;
  }

  v8 = 0x800000010000B260;
  if (!a2)
  {
    v3 = 0xD000000000000013;
    v8 = 0x800000010000B240;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10000A510();
  }

  return v11 & 1;
}

Swift::Int sub_1000080AC()
{
  sub_10000A570();
  sub_10000A3F0();
  return sub_10000A590();
}

Swift::Int sub_100008128()
{
  sub_10000A570();
  sub_10000A3F0();
  return sub_10000A590();
}

uint64_t sub_100008180@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000105E8;
  v7._object = v3;
  v5 = sub_10000A4B0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_1000081D4(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_100008218@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100010620;
  v8._object = a2;
  v6 = sub_10000A4B0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10000827C(uint64_t a1)
{
  v2 = sub_100009228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000082B8(uint64_t a1)
{
  v2 = sub_100009228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000082F4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007628(&qword_100014540, &qword_10000AD60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_100007558(a1, a1[3]);
  sub_100009228();
  sub_10000A5B0();
  v15[8] = a2;
  v16 = a3;
  v17 = a4;
  sub_100009548();
  sub_10000A4F0();
  return (*(v9 + 8))(v12, v8);
}

_BYTE *sub_100008450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000090AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000084A0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007628(&qword_100014530, &qword_10000AD58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_100007558(a1, a1[3]);
  sub_10000944C();
  sub_10000A5B0();
  v15[8] = a2;
  v16 = a3;
  v17 = a4;
  sub_1000094F4();
  sub_10000A4F0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000085FC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_100007628(&qword_100014598, &qword_10000B040);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100007558(a1, a1[3]);
  sub_100009B30();
  sub_10000A5B0();
  v17 = a2;
  v16 = 0;
  sub_100009BD8();
  sub_10000A4F0();
  if (!v4)
  {
    v15 = 1;
    sub_10000A4E0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000087A4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5._countAndFlagsBits = 0x646E616D6D6F635BLL;
  v5._object = 0xEA0000000000203ALL;
  sub_10000A400(v5);
  sub_10000A490();
  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_10000A400(v6);
  return 0;
}

__n128 sub_100008840(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

Swift::Int sub_10000887C()
{
  sub_10000A570();
  sub_10000A580(0);
  return sub_10000A590();
}

Swift::Int sub_1000088E8()
{
  sub_10000A570();
  sub_10000A580(0);
  return sub_10000A590();
}

uint64_t sub_100008940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10000A510();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000089D4(uint64_t a1)
{
  v2 = sub_10000944C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100008A10(uint64_t a1)
{
  v2 = sub_10000944C();

  return CodingKey.debugDescription.getter(a1, v2);
}

_BYTE *sub_100008A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000092D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100008AB4()
{
  if (*v0)
  {
    result = 0x79747265706F7270;
  }

  else
  {
    result = 0x646E616D6D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_100008AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_10000A510() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10000A510();

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

uint64_t sub_100008BE4(uint64_t a1)
{
  v2 = sub_100009B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100008C20(uint64_t a1)
{
  v2 = sub_100009B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100008C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000996C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_100008CB8()
{
  v1 = *v0;
  sub_10000A570();
  sub_10000A3F0();

  return sub_10000A590();
}

uint64_t sub_100008D94()
{
  *v0;
  *v0;
  *v0;
  sub_10000A3F0();
}

Swift::Int sub_100008E5C()
{
  v1 = *v0;
  sub_10000A570();
  sub_10000A3F0();

  return sub_10000A590();
}

uint64_t sub_100008F34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A08C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100008F64(unint64_t *a1@<X8>)
{
  v2 = 0xED00007974726570;
  v3 = 0x6F72506863746566;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000016;
    v2 = 0x800000010000B280;
  }

  v4 = 0x800000010000B240;
  v5 = 0xD000000000000013;
  if (*v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000010000B260;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

_BYTE *sub_1000090AC(uint64_t *a1)
{
  v3 = sub_100007628(&qword_100014500, &qword_10000AD48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100007558(a1, a1[3]);
  sub_100009228();
  sub_10000A5A0();
  if (v1)
  {
    sub_10000750C(a1);
  }

  else
  {
    sub_10000927C();
    sub_10000A4D0();
    (*(v4 + 8))(v7, v3);
    v7 = v10[8];
    sub_10000750C(a1);
  }

  return v7;
}

unint64_t sub_100009228()
{
  result = qword_100014508;
  if (!qword_100014508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014508);
  }

  return result;
}

unint64_t sub_10000927C()
{
  result = qword_100014510;
  if (!qword_100014510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014510);
  }

  return result;
}

_BYTE *sub_1000092D0(uint64_t *a1)
{
  v3 = sub_100007628(&qword_100014518, &qword_10000AD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100007558(a1, a1[3]);
  sub_10000944C();
  sub_10000A5A0();
  if (v1)
  {
    sub_10000750C(a1);
  }

  else
  {
    sub_1000094A0();
    sub_10000A4D0();
    (*(v4 + 8))(v7, v3);
    v7 = v10[8];
    sub_10000750C(a1);
  }

  return v7;
}

unint64_t sub_10000944C()
{
  result = qword_100014520;
  if (!qword_100014520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014520);
  }

  return result;
}

unint64_t sub_1000094A0()
{
  result = qword_100014528;
  if (!qword_100014528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014528);
  }

  return result;
}

unint64_t sub_1000094F4()
{
  result = qword_100014538;
  if (!qword_100014538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014538);
  }

  return result;
}

unint64_t sub_100009548()
{
  result = qword_100014548;
  if (!qword_100014548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014548);
  }

  return result;
}

uint64_t sub_1000095C0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_100009610(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10000969C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000096F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100009760()
{
  result = qword_100014550;
  if (!qword_100014550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014550);
  }

  return result;
}

unint64_t sub_1000097B8()
{
  result = qword_100014558;
  if (!qword_100014558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014558);
  }

  return result;
}

unint64_t sub_100009810()
{
  result = qword_100014560;
  if (!qword_100014560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014560);
  }

  return result;
}

unint64_t sub_100009868()
{
  result = qword_100014568;
  if (!qword_100014568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014568);
  }

  return result;
}

unint64_t sub_1000098C0()
{
  result = qword_100014570;
  if (!qword_100014570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014570);
  }

  return result;
}

unint64_t sub_100009918()
{
  result = qword_100014578;
  if (!qword_100014578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014578);
  }

  return result;
}

uint64_t sub_10000996C(uint64_t *a1)
{
  v3 = sub_100007628(&qword_100014580, &qword_10000B038);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100007558(a1, v8);
  sub_100009B30();
  sub_10000A5A0();
  if (!v1)
  {
    v10[14] = 0;
    sub_100009B84();
    sub_10000A4D0();
    v8 = v10[15];
    v10[13] = 1;
    sub_10000A4C0();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000750C(a1);
  return v8;
}

unint64_t sub_100009B30()
{
  result = qword_100014588;
  if (!qword_100014588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014588);
  }

  return result;
}

unint64_t sub_100009B84()
{
  result = qword_100014590;
  if (!qword_100014590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014590);
  }

  return result;
}

unint64_t sub_100009BD8()
{
  result = qword_1000145A0;
  if (!qword_1000145A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Command(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Command(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100009EDC()
{
  result = qword_1000145A8;
  if (!qword_1000145A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145A8);
  }

  return result;
}

unint64_t sub_100009F34()
{
  result = qword_1000145B0;
  if (!qword_1000145B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B0);
  }

  return result;
}

unint64_t sub_100009F8C()
{
  result = qword_1000145B8;
  if (!qword_1000145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B8);
  }

  return result;
}

unint64_t sub_100009FE4()
{
  result = qword_1000145C0;
  if (!qword_1000145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C0);
  }

  return result;
}

unint64_t sub_10000A038()
{
  result = qword_1000145C8;
  if (!qword_1000145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C8);
  }

  return result;
}

uint64_t sub_10000A08C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100010658;
  v6._object = a2;
  v4 = sub_10000A4B0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000A0EC()
{
  v0 = sub_10000A3C0();
  sub_10000A16C(v0, qword_100015550);
  sub_10000759C(v0, qword_100015550);
  return sub_10000A3B0();
}

uint64_t *sub_10000A16C(uint64_t a1, uint64_t *a2)
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