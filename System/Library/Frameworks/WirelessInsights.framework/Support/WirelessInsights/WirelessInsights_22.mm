uint64_t sub_1001CC384()
{
  v1 = v0;
  v56[1] = swift_getObjectType();
  v68 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v2 = *(*(v68 - 8) + 64);
  v3 = __chkstk_darwin(v68);
  v67 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v66 = v56 - v6;
  __chkstk_darwin(v5);
  v65 = v56 - v7;
  v8 = type metadata accessor for InternalServicePrediction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v64 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v12);
  v57 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((swift_isaMask & *v0) + 0x220))(v14);
  v17 = sub_1001DA930(v16);

  v18 = *(v17 + 16);
  if (v18)
  {
    v56[0] = v0;
    v71 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v18, 0);
    v19 = v71;
    v20 = v17 + 64;
    v21 = -1 << *(v17 + 32);
    result = _HashTable.startBucket.getter();
    v23 = result;
    v24 = 0;
    v60 = v17 + 72;
    v61 = v18;
    v62 = v17 + 64;
    v63 = v9;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v17 + 32))
    {
      v26 = v23 >> 6;
      if ((*(v20 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_27;
      }

      v27 = *(v17 + 36);
      v69 = v24;
      v70 = v27;
      v28 = *(v9 + 72);
      v29 = v65;
      sub_1001DC504(*(v17 + 48) + v28 * v23, v65, type metadata accessor for InternalServicePrediction);
      v30 = *(*(v17 + 56) + 8 * v23);
      v31 = v17;
      v32 = v29;
      v33 = v66;
      sub_1001DC56C(v32, v66, type metadata accessor for InternalServicePrediction);
      v34 = v68;
      *(v33 + *(v68 + 48)) = v30;
      v35 = v33;
      v36 = v19;
      v37 = v67;
      sub_1001DE0E8(v35, v67);
      v38 = *(v37 + *(v34 + 48));

      v39 = v37;
      v19 = v36;
      v40 = v64;
      sub_1001DC56C(v39, v64, type metadata accessor for InternalServicePrediction);
      v71 = v19;
      v42 = v19[2];
      v41 = v19[3];
      if (v42 >= v41 >> 1)
      {
        sub_1001BBCAC(v41 > 1, v42 + 1, 1);
        v19 = v71;
      }

      v19[2] = v42 + 1;
      v43 = v63;
      result = sub_1001DC56C(v40, v19 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v42 * v28, type metadata accessor for InternalServicePrediction);
      v25 = 1 << *(v31 + 32);
      if (v23 >= v25)
      {
        goto LABEL_28;
      }

      v20 = v62;
      v44 = *(v62 + 8 * v26);
      if ((v44 & (1 << v23)) == 0)
      {
        goto LABEL_29;
      }

      v9 = v43;
      v17 = v31;
      if (v70 != *(v31 + 36))
      {
        goto LABEL_30;
      }

      v45 = v44 & (-2 << (v23 & 0x3F));
      if (v45)
      {
        v25 = __clz(__rbit64(v45)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v26 << 6;
        v47 = v26 + 1;
        v48 = (v60 + 8 * v26);
        while (v47 < (v25 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            result = sub_1001DE158(v23, v70, 0);
            v25 = __clz(__rbit64(v49)) + v46;
            goto LABEL_19;
          }
        }

        result = sub_1001DE158(v23, v70, 0);
LABEL_19:
        v17 = v31;
      }

      v24 = v69 + 1;
      v23 = v25;
      if (v69 + 1 == v61)
      {

        v1 = v56[0];
        goto LABEL_22;
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
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_22:
    v51 = v57;
    sub_100003E50(&off_1002B7A38, v57);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v19[2];

      _os_log_impl(&_mh_execute_header, v52, v53, "Submitting metrics for %ld stopped predictions", v54, 0xCu);
    }

    else
    {
    }

    (*(v58 + 8))(v51, v59);
    (*((swift_isaMask & *v1) + 0x2C8))(v19);

    return (*((swift_isaMask & *v1) + 0x270))(v55);
  }

  return result;
}

uint64_t sub_1001CC9FC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v93 = type metadata accessor for Logger();
  v97 = *(v93 - 8);
  v3 = *(v97 + 64);
  v4 = __chkstk_darwin(v93);
  v80 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v75[-v6];
  v84 = type metadata accessor for InternalServicePrediction();
  v91 = *(v84 - 8);
  v8 = *(v91 + 64);
  v9 = __chkstk_darwin(v84);
  v11 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v90 = &v75[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v75[-v15];
  __chkstk_darwin(v14);
  v89 = &v75[-v17];
  v88 = type metadata accessor for Date();
  v18 = *(v88 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v88);
  v82 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v75[-v22];
  v24 = v1[36];
  v25 = v1[37];
  v95 = v1;
  sub_100014E1C(v1 + 33, v24);
  v26 = *(v25 + 8);
  v87 = v23;
  v27 = v24;
  v28 = v7;
  v29 = a1;
  v26(v27, v25);
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  v92 = (v97 + 8);
  v86 = (v18 + 8);
  v97 = v29;

  v36 = 0;
  *&v37 = 136315138;
  v83 = v37;
  *&v37 = 136315394;
  v79 = v37;
  v85 = v28;
  v81 = v11;
  v96 = v16;
  if (v33)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        v39 = v89;
        sub_1001DC504(*(v97 + 48) + *(v91 + 72) * (__clz(__rbit64(v33)) | (v36 << 6)), v89, type metadata accessor for InternalServicePrediction);
        sub_1001DC56C(v39, v16, type metadata accessor for InternalServicePrediction);
        sub_100003E50(&off_1002B7A38, v28);
        v40 = v90;
        sub_1001DC504(v16, v90, type metadata accessor for InternalServicePrediction);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v98[0] = v44;
          *v43 = v83;
          sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v40;
          v48 = v47;
          sub_1001DE088(v46, type metadata accessor for InternalServicePrediction);
          v49 = sub_10017A8A8(v45, v48, v98);

          *(v43 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v41, v42, "Removed prediction %s", v43, 0xCu);
          sub_100164B98(v44);
          v28 = v85;
        }

        else
        {

          sub_1001DE088(v40, type metadata accessor for InternalServicePrediction);
        }

        v50 = *v92;
        v51 = (*v92)(v28, v93);
        v33 &= v33 - 1;
        v52 = (*((swift_isaMask & *v95) + 0x220))(v51);
        v16 = v96;
        if (*(v52 + 16))
        {
          v53 = sub_1001D6204(v96);
          if (v54)
          {
            break;
          }
        }

LABEL_6:
        result = sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v55 = *(*(v52 + 56) + 8 * v53);

      v56 = v82;
      PrivateServicePrediction.predictedStartTime.getter();
      Date.timeIntervalSince(_:)();
      v58 = v57;
      (*v86)(v56, v88);
      v59 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      result = swift_beginAccess();
      if (*(v55 + v59))
      {
        goto LABEL_27;
      }

      if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_30;
      }

      if (v58 <= -9.22337204e18)
      {
        goto LABEL_31;
      }

      if (v58 >= 9.22337204e18)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      *(v55 + 48) = v58;
      *(v55 + 56) = 0;
      swift_beginAccess();
      if (*(v55 + 16) < v58)
      {
        break;
      }

      v16 = v96;
      sub_1001DE088(v96, type metadata accessor for InternalServicePrediction);
      swift_beginAccess();
      *(v55 + 44) = 1;

      if (!v33)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    *(v55 + 44) = 0;
    v60 = v80;
    sub_100003E50(&off_1002B7A38, v80);
    sub_1001DC504(v96, v81, type metadata accessor for InternalServicePrediction);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v77 = v61;
      v64 = v63;
      v78 = swift_slowAlloc();
      v98[0] = v78;
      *v64 = v79;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
      v76 = v62;
      v65 = v81;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_1001DE088(v65, type metadata accessor for InternalServicePrediction);
      v69 = sub_10017A8A8(v66, v68, v98);
      v28 = v85;

      *(v64 + 4) = v69;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v58;
      v70 = v64;
      v71 = v77;
      _os_log_impl(&_mh_execute_header, v77, v76, "Submitting accuracy because the prediction %s disappeared %f seconds before the predicted start time", v70, 0x16u);
      sub_100164B98(v78);

      v72 = v80;
    }

    else
    {

      sub_1001DE088(v81, type metadata accessor for InternalServicePrediction);
      v72 = v60;
    }

    v50(v72, v93);
    v73 = v95;
    v16 = v96;
    (*((swift_isaMask & *v95) + 0x2A8))(v96, v55);
    v74 = (*((swift_isaMask & *v73) + 0x230))(v98);
    sub_1001CD4F8(v16);

    v74(v98, 0);
LABEL_27:

    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v34)
    {
      (*v86)(v87, v88);
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      v36 = v38;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001CD4F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001D6204(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001DA548();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for InternalServicePrediction();
  sub_1001DE088(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for InternalServicePrediction);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1001D9E90(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1001CD5BC(uint64_t a1)
{
  v2 = v1;
  v65 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v52 - v11;
  v53 = type metadata accessor for InternalServicePrediction();
  v12 = *(*(v53 - 8) + 64);
  v13 = __chkstk_darwin(v53);
  v61 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v19 = &v52 - v17;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *((swift_isaMask & *v65) + 0x220);
    v58 = (swift_isaMask & *v65) + 544;
    v59 = v21;
    v22 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v57 = *(v16 + 72);
    v64 = (v6 + 8);
    *&v18 = 136315138;
    v54 = v18;
    v55 = v5;
    v56 = ObjectType;
    v63 = v10;
    v60 = &v52 - v17;
    do
    {
      sub_1001DC504(v22, v19, type metadata accessor for InternalServicePrediction);
      v23 = v19;
      v24 = v62;
      sub_100003E50(&off_1002B7A38, v62);
      v25 = v23;
      v26 = v61;
      sub_1001DC504(v25, v61, type metadata accessor for InternalServicePrediction);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v67[0] = v30;
        *v29 = v54;
        sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        sub_1001DE088(v26, type metadata accessor for InternalServicePrediction);
        v34 = sub_10017A8A8(v31, v33, v67);
        v5 = v55;

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Finished prediction %s", v29, 0xCu);
        sub_100164B98(v30);
      }

      else
      {

        sub_1001DE088(v26, type metadata accessor for InternalServicePrediction);
      }

      v35 = *v64;
      v36 = (*v64)(v24, v5);
      v37 = v59(v36);
      v38 = v63;
      v19 = v60;
      if (*(v37 + 16) && (v39 = sub_1001D6204(v60), (v40 & 1) != 0))
      {
        v41 = *(*(v37 + 56) + 8 * v39);

        sub_100003E50(&off_1002B7A38, v38);

        v42 = Logger.logObject.getter();
        v43 = v38;
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v42, v44))
        {
          v45 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v66 = v41;
          v67[0] = v52;
          *v45 = v54;
          type metadata accessor for ServicePredictionAccuracyCounter(0);

          v46 = String.init<A>(describing:)();
          v48 = sub_10017A8A8(v46, v47, v67);
          v5 = v55;

          *(v45 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v42, v44, "Submitting accuracy %s", v45, 0xCu);
          sub_100164B98(v52);

          v49 = v63;
        }

        else
        {

          v49 = v43;
        }

        v35(v49, v5);
        v50 = v65;
        (*((swift_isaMask & *v65) + 0x2A8))(v19, v41);
        v51 = (*((swift_isaMask & *v50) + 0x230))(v67);
        sub_1001CD4F8(v19);

        v51(v67, 0);
      }

      else
      {
      }

      result = sub_1001DE088(v19, type metadata accessor for InternalServicePrediction);
      v22 += v57;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_1001CDC10(void *a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  [a1 latitude];
  v8 = v7;
  [a1 longitude];
  v10 = [objc_allocWithZone(CLLocation) initWithLatitude:v8 longitude:v9];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v10;

  sub_100176B80(0, 0, v6, &unk_10024C770, v12);
}

uint64_t sub_1001CDD70(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v10 - v6;
  if ((a1 & 1) == 0)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_100176B80(0, 0, v7, &unk_10024C780, v9);
  }

  return result;
}

uint64_t sub_1001CDE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = ((swift_isaMask & *a4) + 720) & 0xFFFFFFFFFFFFLL | 0x8714000000000000;
  v4[3] = *((swift_isaMask & *a4) + 0x2D0);
  v4[4] = v5;
  return _swift_task_switch(sub_1001CDED4, a4, 0);
}

uint64_t sub_1001CDED4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))(0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001CE058(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v12;
    v32 = v5;
    v15 = v2[36];
    v16 = v2[37];
    sub_100014E1C(v2 + 33, v15);
    v17 = (*(v16 + 8))(v15, v16);
    __chkstk_darwin(v17);
    *(&v29 - 2) = v14;
    v18 = sub_1001C37EC(sub_1001DE218, (&v29 - 4), a1);
    (*((swift_isaMask & *v2) + 0x178))(v18);
    sub_100003E50(&off_1002B7A38, v8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v21 = 136315138;
      (*((swift_isaMask & *v2) + 0x170))();
      type metadata accessor for PrivateServicePrediction();
      v22 = Array.description.getter();
      v29 = v4;
      v23 = v22;
      v24 = v9;
      v26 = v25;

      v27 = sub_10017A8A8(v23, v26, &v33);
      v9 = v24;

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating simulated predictions to %s", v21, 0xCu);
      sub_100164B98(v30);

      v28 = (*(v32 + 8))(v8, v29);
    }

    else
    {

      v28 = (*(v32 + 8))(v8, v4);
    }

    (*((swift_isaMask & *v2) + 0x258))(v28);
    return (*(v31 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_1001CE46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WIS.SimulatedPredictionItem();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v7 + 16))(v10, a2, v6);
  return sub_1001637B8(v14, v10, a3);
}

uint64_t sub_1001CE5E4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((swift_isaMask & *v1) + 0x158))(v7);
  if (result != a1)
  {
    sub_100003E50(&off_1002B7A38, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v13 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v14 = 0x6574616C756D6973;
        }

        else
        {
          v14 = 0x64656E69626D6F63;
        }

        if (a1 == 1)
        {
          v15 = 0xE900000000000064;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        v14 = 1818322290;
      }

      v16 = sub_10017A8A8(v14, v15, &v19);

      *(v13 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Updating simulation mode to %s", v13, 0xCu);
      sub_100164B98(v18);

      (*(v5 + 8))(v9, v4);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v17 = (*((swift_isaMask & *v2) + 0x160))(a1);
    return (*((swift_isaMask & *v2) + 0x258))(v17);
  }

  return result;
}

uint64_t sub_1001CE8EC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v31 = type metadata accessor for Date();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((swift_isaMask & *v1) + 0x1A8))(v11) != a1)
  {
    v29 = v7;
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v13);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v30 = v4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v17 = 136315138;
      if (a1)
      {
        if (a1 == 1)
        {
          v18 = 0x6976726573206E69;
        }

        else
        {
          v18 = 0x7320666F2074756FLL;
        }

        if (a1 == 1)
        {
          v19 = 0xEA00000000006563;
        }

        else
        {
          v19 = 0xEE00656369767265;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
      }

      v20 = sub_10017A8A8(v18, v19, &v32);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Registration state updated to %s", v17, 0xCu);
      sub_100164B98(v28);
    }

    (*(v9 + 8))(v13, v8);
    (*((swift_isaMask & *v2) + 0x1B0))(a1);
    v21 = v2[36];
    v22 = v2[37];
    sub_100014E1C(v2 + 33, v21);
    v23 = v29;
    v24 = (*(v22 + 8))(v21, v22);
    v25 = (*((swift_isaMask & *v2) + 0x220))(v24);
    __chkstk_darwin(v25);
    *(&v28 - 16) = a1;
    *(&v28 - 1) = v23;
    sub_1001CA2B4(sub_1001DE244, (&v28 - 4), v25);

    (*(v30 + 8))(v23, v31);
  }

  v26 = (*(*v2[18] + 728))(a1);
  return (*((swift_isaMask & *v2) + 0x2B8))(v26);
}

uint64_t sub_1001CEDCC(unsigned int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((swift_isaMask & *v1) + 0x1C0))(v11);
  if (v14 != a1)
  {
    v32 = a1;
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v30 = v5;
    v31 = v4;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      if (v32)
      {
        if (v32 == 1)
        {
          v20 = 1801545079;
        }

        else
        {
          v20 = 0x676E6F727473;
        }

        if (v32 == 1)
        {
          v21 = 0xE400000000000000;
        }

        else
        {
          v21 = 0xE600000000000000;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }

      v22 = sub_10017A8A8(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Signal strength updated to %s", v18, 0xCu);
      sub_100164B98(v19);
    }

    (*(v9 + 8))(v13, v8);
    v23 = v32;
    (*((swift_isaMask & *v2) + 0x1C8))(v32);
    v24 = v2[36];
    v25 = v2[37];
    sub_100014E1C(v2 + 33, v24);
    v26 = v33;
    v27 = (*(v25 + 8))(v24, v25);
    v28 = (*((swift_isaMask & *v2) + 0x220))(v27);
    __chkstk_darwin(v28);
    *(&v30 - 16) = v23;
    *(&v30 - 1) = v26;
    sub_1001CA2B4(sub_1001DE270, (&v30 - 4), v28);

    v14 = (*(v30 + 8))(v26, v31);
  }

  return (*((swift_isaMask & *v2) + 0x2B8))(v14);
}

uint64_t sub_1001CF258(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *v1) + 0x1D8))(v12);
  v28 = v4;
  if ((v15 & 1) != v4)
  {
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Airplane mode updated to %{BOOL}d", v18, 8u);
    }

    (*(v10 + 8))(v14, v9);
    v19 = a1 & 1;
    (*((swift_isaMask & *v2) + 0x1E0))(v19);
    v20 = v2[36];
    v21 = v2[37];
    sub_100014E1C(v2 + 33, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v23 = (*((swift_isaMask & *v2) + 0x220))(v22);
    __chkstk_darwin(v23);
    *(&v26 - 16) = v19;
    *(&v26 - 1) = v8;
    sub_1001CA2B4(sub_1001DE30C, (&v26 - 4), v23);

    (*(v26 + 8))(v8, v27);
  }

  v24 = (*(*v2[18] + 736))(v28);
  return (*((swift_isaMask & *v2) + 0x2B8))(v24);
}

uint64_t sub_1001CF690(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *v1) + 0x1F0))(v12);
  if ((v15 & 1) != v4)
  {
    (*((swift_isaMask & *v1) + 0x2B0))();
    sub_100003E50(&off_1002B7A38, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Congestion state changed to %{BOOL}d", v18, 8u);
    }

    (*(v10 + 8))(v14, v9);
    v19 = a1 & 1;
    (*((swift_isaMask & *v2) + 0x1F8))(v19);
    v20 = v2[36];
    v21 = v2[37];
    sub_100014E1C(v2 + 33, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v23 = (*((swift_isaMask & *v2) + 0x220))(v22);
    __chkstk_darwin(v23);
    *(&v25 - 16) = v19;
    *(&v25 - 1) = v8;
    sub_1001CA2B4(sub_1001DE338, (&v25 - 4), v23);

    v15 = (*(v26 + 8))(v8, v27);
  }

  return (*((swift_isaMask & *v2) + 0x2B8))(v15);
}

uint64_t sub_1001CFA84(const void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v12);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    v18 = sub_10016601C();
    v20 = sub_10017A8A8(v18, v19, &v34);
    v32 = v8;
    v21 = v7;
    v22 = a1;
    v23 = v20;

    *(v16 + 4) = v23;
    a1 = v22;
    v7 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Updating configuration to %s", v16, 0xCu);
    sub_100164B98(v17);

    (*(v33 + 8))(v12, v32);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*((swift_isaMask & *v1) + 0x240))(a1);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v26 = sub_1001BCC20(&qword_1002D7BF8, v25, type metadata accessor for ServicePredictionController);
  v27 = swift_allocObject();
  v28 = a1;
  v29 = v27;
  v27[2] = v2;
  v27[3] = v26;
  v27[4] = v2;
  memcpy(v27 + 5, v28, 0x178uLL);
  swift_retain_n();
  sub_100176B80(0, 0, v7, &unk_10024C790, v29);
}

uint64_t sub_1001CFDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001CFE10, a4, 0);
}

uint64_t sub_1001CFE10()
{
  v1 = *(v0[2] + 144);
  v0[4] = v1;
  v2 = *v1 + 680;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0xD404000000000000;
  return _swift_task_switch(sub_1001CFE58, v1, 0);
}

uint64_t sub_1001CFE58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24));

  return _swift_task_switch(sub_1001CFEC8, v3, 0);
}

uint64_t sub_1001CFEC8()
{
  v1 = *(*(v0 + 16) + 136);
  *(v0 + 56) = v1;
  if (!v1)
  {
    return (*(v0 + 8))();
  }

  v2 = ((swift_isaMask & *v1) + 240) & 0xFFFFFFFFFFFFLL | 0x1206000000000000;
  *(v0 + 64) = *((swift_isaMask & *v1) + 0xF0);
  *(v0 + 72) = v2;
  return _swift_task_switch(sub_1001CFF30, v1, 0);
}

uint64_t sub_1001CFF30()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001CFF98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = ((swift_isaMask & *v1) + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;
  v2[4] = *((swift_isaMask & *v1) + 0x150);
  v2[5] = v3;
  return _swift_task_switch(sub_1001CFFEC, v1, 0);
}

uint64_t sub_1001CFFEC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  return _swift_task_switch(sub_1001D005C, 0, 0);
}

uint64_t sub_1001D005C()
{
  v1 = v0[6];
  v2 = v0[2];
  WIS.XPC.ServicePredictionFetchResponse.init(predictions:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1001D00C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = swift_isaMask & *v1;
  v2[8] = *(v6 + 0x150);
  v2[9] = (v6 + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;

  return _swift_task_switch(sub_1001D01D0, v1, 0);
}

uint64_t sub_1001D01D0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  *(v0 + 80) = (*(v0 + 64))();

  return _swift_task_switch(sub_1001D0240, 0, 0);
}

uint64_t sub_1001D0240()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[4];
  sub_100003E50(&off_1002B7A38, v0[7]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    type metadata accessor for PrivateServicePrediction();
    v11 = Array.description.getter();
    v13 = sub_10017A8A8(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending predictions %s", v9, 0xCu);
    sub_100164B98(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[2];
  type metadata accessor for PrivateServicePrediction();
  sub_1001BCC20(&qword_1002D7C00, 255, &type metadata accessor for PrivateServicePrediction);
  sub_1001BCC20(&qword_1002D7C08, 255, &type metadata accessor for PrivateServicePrediction);
  sub_1001BCC20(&qword_1002D7C10, 255, &type metadata accessor for PrivateServicePrediction);
  WIS.XPC.ServicePredictionSubscribeResponse.init(predictions:)();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001D04D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for PrivateServicePrediction();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ServicePrediction();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = swift_isaMask & *v1;
  v2[14] = *(v12 + 0x150);
  v2[15] = (v12 + 336) & 0xFFFFFFFFFFFFLL | 0x82D000000000000;

  return _swift_task_switch(sub_1001D06A0, v1, 0);
}

uint64_t sub_1001D06A0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);
  *(v0 + 128) = (*(v0 + 112))();

  return _swift_task_switch(sub_1001D0710, 0, 0);
}

uint64_t sub_1001D0710()
{
  v44 = v0;
  v1 = v0[16];
  v2 = v0[4];
  sub_100003E50(&off_1002B7A38, v0[13]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_10017A8A8(v12, v13, &v43);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending predictions %s", v10, 0xCu);
    sub_100164B98(v11);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[16];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v0[9];
    v21 = v0[6];
    v43 = _swiftEmptyArrayStorage;
    sub_1001D5FE4(0, v19, 0);
    v22 = v43;
    v23 = *(v21 + 16);
    v21 += 16;
    v24 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v41 = *(v21 + 56);
    v42 = v23;
    v25 = (v21 - 8);
    do
    {
      v26 = v0[10];
      v27 = v0[7];
      v28 = v0[5];
      v42(v27, v24, v28);
      sub_1001C5880(v26);
      (*v25)(v27, v28);
      v43 = v22;
      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        sub_1001D5FE4(v29 > 1, v30 + 1, 1);
        v22 = v43;
      }

      v31 = v0[10];
      v32 = v0[8];
      v22[2] = v30 + 1;
      (*(v20 + 32))(v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30, v31, v32);
      v24 += v41;
      --v19;
    }

    while (v19);
  }

  v33 = v0[16];

  v34 = v0[13];
  v35 = v0[10];
  v36 = v0[7];
  v37 = v0[8];
  v38 = v0[2];
  sub_1001BCC20(&qword_1002D7C18, 255, &type metadata accessor for ServicePrediction);
  sub_1001BCC20(&qword_1002D7C20, 255, &type metadata accessor for ServicePrediction);
  sub_1001BCC20(&qword_1002D7C28, 255, &type metadata accessor for ServicePrediction);
  WIS.XPC.ServicePredictionSubscribeResponse.init(predictions:)();

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001D0AF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D0B14, 0, 0);
}

uint64_t sub_1001D0B14()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = WIS.XPC.ServicePredictionSimulateRequest.simulatedPredictions.getter();
  v3 = swift_isaMask & *v1;
  v0[6] = *(v3 + 0x2F8);
  v0[7] = (v3 + 760) & 0xFFFFFFFFFFFFLL | 0xD770000000000000;

  return _swift_task_switch(sub_1001D0BC4, v1, 0);
}

uint64_t sub_1001D0BC4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 40));

  return _swift_task_switch(sub_1001D0C3C, 0, 0);
}

uint64_t sub_1001D0C3C()
{
  v1 = *(v0 + 16);
  WIS.XPC.ServicePredictionSimulateResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D0C9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0D30, 0, 0);
}

uint64_t sub_1001D0D30()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  WIS.XPC.ServicePredictionSetSimulationModeRequest.simulationMode.getter();
  *(v0 + 64) = sub_1001DC2EC(v1);
  v4 = swift_isaMask & *v2;
  *(v0 + 48) = *(v4 + 0x300);
  *(v0 + 56) = (v4 + 768) & 0xFFFFFFFFFFFFLL | 0xBAC1000000000000;

  return _swift_task_switch(sub_1001D0DF8, v2, 0);
}

uint64_t sub_1001D0DF8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 64));

  return _swift_task_switch(sub_1001D0E68, 0, 0);
}

uint64_t sub_1001D0E68()
{
  v1 = v0[5];
  v2 = v0[2];
  WIS.XPC.ServicePredictionSetSimulationModeResponse.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001D0ED4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = ((swift_isaMask & *v1) + 344) & 0xFFFFFFFFFFFFLL | 0x4DB7000000000000;
  v2[4] = *((swift_isaMask & *v1) + 0x158);
  v2[5] = v3;
  return _swift_task_switch(sub_1001D0F28, v1, 0);
}

uint64_t sub_1001D0F28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = (*(v0 + 32))();

  return _swift_task_switch(sub_1001D0F98, 0, 0);
}

uint64_t sub_1001D0F98()
{
  *(v0 + 48);
  v1 = *(v0 + 16);
  WIS.XPC.ServicePredictionGetSimulationModeResponse.init(simulationMode:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D104C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for InternalServicePrediction() - 8);
  v2[4] = v3;
  v4 = *(v3 + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for PrivateServicePrediction();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001D1164, 0, 0);
}

uint64_t sub_1001D1164()
{
  v1 = *(*(v0 + 24) + 144);
  v2 = static xpc_event_publisher_action_t.add.getter();
  v3 = *(*v1 + 720);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1001D129C;

  return v7(v2 & 1);
}

uint64_t sub_1001D129C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1001D139C, 0, 0);
}

uint64_t sub_1001D139C()
{
  if (v0[10])
  {
    v1 = v0[10];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    sub_1001D5FA0(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      v6 = v0[8];
      v8 = v0[5];
      v7 = v0[6];
      sub_1001DC504(v5, v8, type metadata accessor for InternalServicePrediction);
      (*(v3 + 16))(v6, v8, v7);
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001D5FA0(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[8];
      v12 = v0[6];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v18;
      --v2;
    }

    while (v2);
  }

  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[2];
  WIS.XPC.MapsSuggestionsPredictionFetchResponse.init(predictions:)();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001D1594(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D15B8, 0, 0);
}

uint64_t sub_1001D15B8()
{
  v1 = v0[3];
  v2 = *(v0[4] + 144);
  v0[5] = v2;
  WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdRequest.threshold.getter();
  v0[6] = v3;
  v4 = *v2;
  v0[7] = *(*v2 + 616);
  v0[8] = (v4 + 616) & 0xFFFFFFFFFFFFLL | 0xF358000000000000;

  return _swift_task_switch(sub_1001D1660, v2, 0);
}

uint64_t sub_1001D1660()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D16D0, 0, 0);
}

uint64_t sub_1001D16D0()
{
  v1 = *(v0 + 16);
  WIS.XPC.MapsSuggestionsPredictionSetOutOfServiceThresholdResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D1730(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1754, 0, 0);
}

uint64_t sub_1001D1754()
{
  v1 = v0[3];
  v2 = *(v0[4] + 144);
  v0[5] = v2;
  WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalRequest.updateInterval.getter();
  v0[6] = v3;
  v4 = *v2;
  v0[7] = *(*v2 + 624);
  v0[8] = (v4 + 624) & 0xFFFFFFFFFFFFLL | 0xCEF9000000000000;

  return _swift_task_switch(sub_1001D17FC, v2, 0);
}

uint64_t sub_1001D17FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D186C, 0, 0);
}

uint64_t sub_1001D186C()
{
  v1 = *(v0 + 16);
  WIS.XPC.MapsSuggestionsPredictionSetUpdateIntervalResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D18CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D18F0, 0, 0);
}

uint64_t sub_1001D18F0()
{
  v1 = v0[3];
  v2 = *(v0[4] + 144);
  v0[5] = v2;
  v0[6] = WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdRequest.threshold.getter();
  v3 = *v2;
  v0[7] = *(*v2 + 632);
  v0[8] = (v3 + 632) & 0xFFFFFFFFFFFFLL | 0x30E5000000000000;

  return _swift_task_switch(sub_1001D1998, v2, 0);
}

uint64_t sub_1001D1998()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D1A04, 0, 0);
}

uint64_t sub_1001D1A04()
{
  v1 = *(v0 + 16);
  WIS.XPC.MapsSuggestionsPredictionSetRsrpThresholdResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D1A64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1A88, 0, 0);
}

uint64_t sub_1001D1A88()
{
  v1 = *(v0[4] + 136);
  v0[5] = v1;
  if (v1)
  {
    v2 = v0[3];
    WIS.XPC.MapsNavigationPredicionSetLookAheadTimeRequest.lookAhead.getter();
    v0[6] = v3;
    v4 = swift_isaMask & *v1;
    v0[7] = *(v4 + 0x110);
    v0[8] = (v4 + 272) & 0xFFFFFFFFFFFFLL | 0xC682000000000000;

    return _swift_task_switch(sub_1001D1B80, v1, 0);
  }

  else
  {
    v5 = v0[2];
    WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse.init()();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001D1B80()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48));

  return _swift_task_switch(sub_1001D1BF0, 0, 0);
}

uint64_t sub_1001D1BF0()
{
  v1 = *(v0 + 16);
  WIS.XPC.MapsNavigationPredicionSetLookAheadTimeResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D1C50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D1C74, 0, 0);
}

uint64_t sub_1001D1C74()
{
  v1 = v0[3];
  v2 = *(v0[4] + 144);
  v0[5] = v2;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.departureLatitude.getter();
  v0[6] = v3;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.departureLongitude.getter();
  v0[7] = v4;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.arrivalLatitude.getter();
  v0[8] = v5;
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelRequest.arrivalLongitude.getter();
  v0[9] = v6;
  v7 = *v2;
  v0[10] = *(*v2 + 640);
  v0[11] = (v7 + 640) & 0xFFFFFFFFFFFFLL | 0x2779000000000000;

  return _swift_task_switch(sub_1001D1D34, v2, 0);
}

uint64_t sub_1001D1D34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  (*(v0 + 80))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_task_switch(sub_1001D1DA8, 0, 0);
}

uint64_t sub_1001D1DA8()
{
  v1 = *(v0 + 16);
  WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse.init()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D1E28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 776) & 0xFFFFFFFFFFFFLL | 0xA805000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x308);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001DFBCC, a4, 0);
}

uint64_t sub_1001D1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_1001D1EC4, 0, 0);
}

uint64_t sub_1001D1EC4()
{
  v1 = *(v0[2] + 304);
  v0[3] = v1;
  v2 = *v1 + 568;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x883E000000000000;
  return _swift_task_switch(sub_1001D1F0C, v1, 0);
}

uint64_t sub_1001D1F0C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))(*(v0 + 48));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D1F94(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v3;
  *(v11 + 40) = a1;

  sub_100176B80(0, 0, v9, a3, v11);
}

uint64_t sub_1001D20A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 784) & 0xFFFFFFFFFFFFLL | 0xBEB6000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x310);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001B59C4, a4, 0);
}

uint64_t sub_1001D20F8(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;

  sub_100176B80(0, 0, v6, &unk_10024C830, v8);
}

uint64_t sub_1001D2208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  v6 = ((swift_isaMask & *a4) + 792) & 0xFFFFFFFFFFFFLL | 0x2A0F000000000000;
  *(v5 + 24) = *((swift_isaMask & *a4) + 0x318);
  *(v5 + 32) = v6;
  return _swift_task_switch(sub_1001D2260, a4, 0);
}

uint64_t sub_1001D2260()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))(*(v0 + 64));

  return _swift_task_switch(sub_1001D22D0, 0, 0);
}

uint64_t sub_1001D22D0()
{
  v1 = *(v0[2] + 304);
  v0[5] = v1;
  v2 = *v1 + 560;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x6A5B000000000000;
  return _swift_task_switch(sub_1001D2318, v1, 0);
}

uint64_t sub_1001D2318()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 64));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D2380(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12[-v5 - 8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  v9 = *(a1 + 16);
  *(v8 + 40) = *a1;
  *(v8 + 56) = v9;
  *(v8 + 72) = *(a1 + 32);
  *(v8 + 88) = *(a1 + 48);

  sub_10001A718(a1, v12, &qword_1002D7C30, &qword_10024AE28);
  sub_100176B80(0, 0, v6, &unk_10024C840, v8);
}

uint64_t sub_1001D24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001D24E8, 0, 0);
}

uint64_t sub_1001D24E8()
{
  v1 = *(v0[2] + 304);
  v0[4] = v1;
  v2 = *v1 + 576;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0xAC2000000000000;
  return _swift_task_switch(sub_100015548, v1, 0);
}

uint64_t sub_1001D2530(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_100176B80(0, 0, v6, &unk_10024C858, v8);
}

uint64_t sub_1001D263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001D265C, 0, 0);
}

uint64_t sub_1001D265C()
{
  v1 = *(v0[2] + 304);
  v0[4] = v1;
  v2 = *v1 + 584;
  v0[5] = *v2;
  v0[6] = v2 & 0xFFFFFFFFFFFFLL | 0x78E8000000000000;
  return _swift_task_switch(sub_1001DFBF0, v1, 0);
}

uint64_t sub_1001D26D8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  sub_100164B98((v0 + 152));
  v6 = *(v0 + 200);

  v7 = *(v0 + 208);

  v8 = *(v0 + 232);
  swift_unknownObjectRelease();
  v9 = *(v0 + 240);

  v10 = *(v0 + 256);

  sub_100164B98((v0 + 264));
  v11 = *(v0 + 304);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001D2768()
{
  sub_1001D26D8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001D2794@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ServicePredictionController();

  return sub_100003E50(a1, a2);
}

uint64_t sub_1001D27DC(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x290);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return v8(a1);
}

uint64_t sub_1001D2914(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x298);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return v8(a1);
}

uint64_t sub_1001D2B04(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x2A0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10017F434;

  return v8(a1);
}

uint64_t sub_1001D2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001D2C5C, 0, 0);
}

uint64_t sub_1001D2C5C()
{
  v1 = sub_1000CE644();
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    *(v0 + 40) = v3;

    v4 = ((swift_isaMask & *v3) + 808) & 0xFFFFFFFFFFFFLL | 0xF62A000000000000;
    *(v0 + 48) = *((swift_isaMask & *v3) + 0x328);
    *(v0 + 56) = v4;

    return _swift_task_switch(sub_1001D2D54, v3, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1001D2D54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 24));

  return _swift_task_switch(sub_1001D2DCC, 0, 0);
}

uint64_t sub_1001D2F58()
{
  v1 = sub_1000CE644();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    v0[3] = v3;

    v9 = (*((swift_isaMask & *v3) + 0x280) + **((swift_isaMask & *v3) + 0x280));
    v4 = *(*((swift_isaMask & *v3) + 0x280) + 4);
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_1001D30F8;
    v6 = v0[2];

    return v9(v6);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1001D30F8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001D3390(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  sub_100164A3C(&unk_1002D8220, &qword_10024D4D8);
  *(v2 + 24) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_1001D3424, 0, 0);
}

uint64_t sub_1001D3424()
{
  v1 = sub_1000CE644();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    v0[4] = v3;

    v11 = (*((swift_isaMask & *v3) + 0x280) + **((swift_isaMask & *v3) + 0x280));
    v4 = *(*((swift_isaMask & *v3) + 0x280) + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1001D35E4;
    v6 = v0[3];

    return v11(v6);
  }

  else
  {
    v9 = v0[2];
    v8 = v0[3];

    v9[2](v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1001D35E4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v8 = *v0;

  v4 = *(v1 + 24);
  v5 = *(v1 + 16);

  v5[2](v5);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1001D3744(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1001D3768, 0, 0);
}

uint64_t sub_1001D3768()
{
  v1 = sub_1000CE644();
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100168AD4();
    *(v0 + 32) = v3;

    v4 = ((swift_isaMask & *v3) + 800) & 0xFFFFFFFFFFFFLL | 0xF38000000000000;
    *(v0 + 40) = *((swift_isaMask & *v3) + 0x320);
    *(v0 + 48) = v4;

    return _swift_task_switch(sub_1001D3860, v3, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1001D3860()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 56));

  return _swift_task_switch(sub_1001D38D8, 0, 0);
}

NSString sub_1001D39F4()
{
  *v0;
  *v0;
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_1001D3AAC()
{
  v1 = 0x6C62616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001D3B20()
{
  v1 = 0x61636F4C74417369;
  if (*v0 != 1)
  {
    v1 = 0x4C7441746F4E7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_1001D3B9C()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024C6E0;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  v2 = *v0;
  *(inited + 72) = &type metadata for ServicePredictionController.PredictionSource;
  *(inited + 80) = &off_1002B7A28;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000010025DE30;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  v3 = *(v0 + 2);
  *(inited + 104) = *(v0 + 1);
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000010025DE50;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  *(inited + 160) = v3;
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x800000010025D140;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  v4 = *(v0 + 4);
  *(inited + 216) = *(v0 + 3);
  *(inited + 256) = 0xD00000000000001FLL;
  *(inited + 264) = 0x800000010025D160;
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  *(inited + 272) = v4;
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x800000010025DE70;
  v5 = *(v0 + 5);
  *(inited + 352) = &type metadata for Int;
  *(inited + 360) = &off_1002B54E0;
  *(inited + 328) = v5;
  *(inited + 368) = 0xD000000000000014;
  *(inited + 376) = 0x800000010025D180;
  v6 = v0[48];
  *(inited + 408) = &type metadata for Bool;
  *(inited + 416) = &off_1002B54D0;
  *(inited + 384) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1001D3D60()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10024C6F0;
  *(v2 + 32) = 0x656372756F73;
  *(v2 + 40) = 0xE600000000000000;
  v3 = _s30ServicePredictionEventAccuracyVMa(0);
  v4 = v3[7];
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  *(v2 + 72) = v5;
  *(v2 + 80) = &off_1002B7B88;
  v6 = sub_1001B8BDC((v2 + 48));
  (*(*(v5 - 8) + 16))(v6, &v1[v4], v5);
  strcpy((v2 + 88), "accuracyState");
  *(v2 + 102) = -4864;
  v7 = *v1;
  *(v2 + 128) = &type metadata for ServicePredictionAccuracyCounter.State;
  *(v2 + 136) = &off_1002B7B38;
  *(v2 + 104) = v7;
  *(v2 + 144) = 1701869940;
  *(v2 + 152) = 0xE400000000000000;
  v8 = v3[8];
  v9 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  *(v2 + 184) = v9;
  *(v2 + 192) = &off_1002B7188;
  v10 = sub_1001B8BDC((v2 + 160));
  (*(*(v9 - 8) + 16))(v10, &v1[v8], v9);
  *(v2 + 200) = 0xD000000000000010;
  *(v2 + 208) = 0x800000010025DE90;
  v11 = v1[v3[10]];
  *(v2 + 240) = &type metadata for Bool;
  *(v2 + 248) = &off_1002B54D0;
  *(v2 + 216) = v11;
  v160 = 0xD00000000000001BLL;
  *(v2 + 256) = 0xD00000000000001BLL;
  *(v2 + 264) = 0x800000010025DEB0;
  v12 = *&v1[v3[12]];
  *(v2 + 296) = &type metadata for Int;
  *(v2 + 304) = &off_1002B54E0;
  *(v2 + 272) = v12;
  strcpy((v2 + 312), "didEventOccur");
  *(v2 + 326) = -4864;
  LOBYTE(v12) = v1[v3[13]];
  *(v2 + 352) = &_s23ServicePredictionMetricV15EventOccurrenceON;
  *(v2 + 360) = &off_1002B7A90;
  *(v2 + 328) = v12;
  *(v2 + 368) = 0xD000000000000016;
  *(v2 + 376) = 0x800000010025DED0;
  v13 = *&v1[v3[14]];
  *(v2 + 408) = &type metadata for Int;
  *(v2 + 416) = &off_1002B54E0;
  *(v2 + 384) = v13;
  *(v2 + 424) = 0xD000000000000016;
  *(v2 + 432) = 0x800000010025D1C0;
  v14 = *&v1[v3[15]];
  *(v2 + 464) = &type metadata for Int;
  *(v2 + 472) = &off_1002B54E0;
  *(v2 + 440) = v14;
  v159 = 0xD000000000000013;
  *(v2 + 480) = 0xD000000000000013;
  *(v2 + 488) = 0x800000010025D1E0;
  v15 = *&v1[v3[16]];
  *(v2 + 520) = &type metadata for Int;
  *(v2 + 528) = &off_1002B54E0;
  *(v2 + 496) = v15;
  *(v2 + 536) = 0xD000000000000014;
  *(v2 + 544) = 0x800000010025DEF0;
  v16 = *&v1[v3[17]];
  *(v2 + 576) = &type metadata for Int;
  *(v2 + 584) = &off_1002B54E0;
  *(v2 + 552) = v16;
  v158 = 0xD000000000000016;
  *(v2 + 592) = 0xD000000000000016;
  *(v2 + 600) = 0x800000010025DF10;
  v17 = *&v1[v3[18]];
  *(v2 + 632) = &type metadata for Int;
  *(v2 + 640) = &off_1002B54E0;
  *(v2 + 608) = v17;
  *(v2 + 648) = 0x61746E6563726570;
  *(v2 + 656) = 0xEF726F7272456567;
  v18 = *&v1[v3[19]];
  *(v2 + 688) = &type metadata for Int;
  *(v2 + 696) = &off_1002B54E0;
  *(v2 + 664) = v18;
  *(v2 + 704) = 0xD000000000000011;
  *(v2 + 712) = 0x800000010025DF30;
  v19 = *&v1[v3[20]];
  *(v2 + 744) = &type metadata for Int;
  *(v2 + 752) = &off_1002B54E0;
  *(v2 + 720) = v19;
  strcpy((v2 + 760), "haveLocation");
  *(v2 + 773) = 0;
  *(v2 + 774) = -5120;
  LOBYTE(v19) = v1[v3[21]];
  *(v2 + 800) = &_s23ServicePredictionMetricV8LocationON;
  *(v2 + 808) = &off_1002B7AB8;
  *(v2 + 776) = v19;
  strcpy((v2 + 816), "atDestination");
  *(v2 + 830) = -4864;
  LOBYTE(v19) = v1[v3[23]];
  *(v2 + 856) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(v2 + 864) = &off_1002B7AE0;
  *(v2 + 832) = v19;
  *(v2 + 872) = 0xD000000000000014;
  *(v2 + 880) = 0x800000010025DF50;
  LOBYTE(v19) = v1[v3[22]];
  *(v2 + 912) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(v2 + 920) = &off_1002B7AE0;
  *(v2 + 888) = v19;
  *(v2 + 928) = 0x6E6F697461727564;
  *(v2 + 936) = 0xE800000000000000;
  v20 = *&v1[v3[9]];
  *(v2 + 968) = &type metadata for Int;
  *(v2 + 976) = &off_1002B54E0;
  *(v2 + 944) = v20;
  v21 = sub_1001B8A88(v2);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v167 = v21;
  v23 = &v1[v3[24]];
  if ((v23[1] & 1) == 0)
  {
    v24 = *v23;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v24;
    sub_10001A700(&v164, v162);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v26 = sub_1001DE80C(v162, v163);
    sub_1001DB604(*v26, 0x65636E6174736964, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v161);
    result = sub_100164B98(v162);
    v21 = v161;
    v167 = v161;
  }

  v27 = &v1[v3[25]];
  if (v27[8])
  {
    goto LABEL_8;
  }

  v28 = *v27;
  if ((~*&v28 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v165 = &type metadata for Int;
  v166 = &off_1002B54E0;
  *&v164 = v28;
  sub_10001A700(&v164, v162);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v21;
  v30 = sub_1001DE80C(v162, v163);
  sub_1001DB604(*v30, 0xD000000000000014, 0x800000010025E140, v29, &v161);
  sub_100164B98(v162);
  v21 = v161;
  v167 = v161;
LABEL_8:
  v31 = &v1[v3[26]];
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v165 = &type metadata for String;
    v166 = &off_1002B54C0;
    *&v164 = v33;
    *(&v164 + 1) = v32;
    sub_10001A700(&v164, v162);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v35 = v163;
    v36 = sub_1001DE80C(v162, v163);
    v37 = *(*(v35 - 8) + 64);
    __chkstk_darwin(v36);
    v39 = (&v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    sub_1001DB76C(*v39, v39[1], 0x6372756F53627573, 0xED00006570795465, v34, &v161);
    sub_100164B98(v162);
    v21 = v161;
    v167 = v161;
  }

  v41 = &v1[v3[27]];
  if ((v41[1] & 1) == 0)
  {
    v42 = *v41;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v42;
    sub_10001A700(&v164, v162);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v44 = sub_1001DE80C(v162, v163);
    sub_1001DB604(*v44, 0xD000000000000019, 0x800000010025E120, v43, &v161);
    sub_100164B98(v162);
    v21 = v161;
    v167 = v161;
  }

  v45 = &v1[v3[28]];
  if ((v45[1] & 1) == 0)
  {
    v46 = *v45;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v46;
    sub_10001A700(&v164, v162);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v48 = sub_1001DE80C(v162, v163);
    sub_1001DB604(*v48, 0xD000000000000019, 0x800000010025E100, v47, &v161);
    sub_100164B98(v162);
    v21 = v161;
    v167 = v161;
  }

  v49 = &v1[v3[29]];
  v50 = v49[1];
  if (v50)
  {
    v51 = *v49;
    v165 = &type metadata for String;
    v166 = &off_1002B54C0;
    *&v164 = v51;
    *(&v164 + 1) = v50;
    sub_10001A700(&v164, v162);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v53 = v163;
    v54 = sub_1001DE80C(v162, v163);
    v55 = *(*(v53 - 8) + 64);
    __chkstk_darwin(v54);
    v57 = (&v157 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57);
    sub_1001DB76C(*v57, v57[1], 0xD000000000000011, 0x800000010025E0E0, v52, &v161);
    sub_100164B98(v162);
    v21 = v161;
    v167 = v161;
  }

  v59 = v1[1];
  if (v59 == 3)
  {
    sub_1001D9A2C(0x73616552706F7473, 0xEA00000000006E6FLL, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v165 = &type metadata for ServicePredictionAccuracyCounter.RemovalReason;
    v166 = &off_1002B7B60;
    LOBYTE(v164) = v59;
    sub_10001A700(&v164, v162);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v21;
    v61 = v163;
    v62 = sub_1001DE80C(v162, v163);
    v63 = *(*(v61 - 8) + 64);
    __chkstk_darwin(v62);
    v65 = &v157 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v65);
    sub_1001DB95C(v65, 0x73616552706F7473, 0xEA00000000006E6FLL, v60, &v161, &type metadata for ServicePredictionAccuracyCounter.RemovalReason, &off_1002B7B60);
    sub_100164B98(v162);
    v167 = v161;
  }

  if (v1[16])
  {
    sub_1001D9A2C(v159, 0x800000010025DF70, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v67 = *(v1 + 1);
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v67;
    sub_10001A700(&v164, v162);
    v68 = v167;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v68;
    v70 = v163;
    v71 = sub_1001DE80C(v162, v163);
    v72 = *(*(v70 - 8) + 64);
    __chkstk_darwin(v71);
    v74 = &v157 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74);
    sub_1001DB95C(v74, v159, 0x800000010025DF70, v69, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v76 = &v1[v3[11]];
  v77 = v76[1];
  if (v77)
  {
    v78 = *v76;
    v165 = &type metadata for String;
    v166 = &off_1002B54C0;
    *&v164 = v78;
    *(&v164 + 1) = v77;
    sub_10001A700(&v164, v162);

    v79 = v167;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v79;
    v81 = v163;
    v82 = sub_1001DE80C(v162, v163);
    v83 = *(*(v81 - 8) + 64);
    __chkstk_darwin(v82);
    v85 = &v157 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v85);
    sub_1001DB95C(v85, v158, 0x800000010025DF90, v80, &v161, &type metadata for String, &off_1002B54C0);
    sub_100164B98(v162);
    v167 = v161;
  }

  else
  {
    sub_1001D9A2C(v158, 0x800000010025DF90, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  v87 = &v1[v3[30]];
  if (v87[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025DFB0, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v88 = *v87;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v88;
    sub_10001A700(&v164, v162);
    v89 = v167;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v89;
    v91 = v163;
    v92 = sub_1001DE80C(v162, v163);
    v93 = *(*(v91 - 8) + 64);
    __chkstk_darwin(v92);
    v95 = &v157 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v95);
    sub_1001DB95C(v95, 0xD000000000000023, 0x800000010025DFB0, v90, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v97 = &v1[v3[31]];
  if (v97[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025DFE0, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v98 = *v97;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v98;
    sub_10001A700(&v164, v162);
    v99 = v167;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v99;
    v101 = v163;
    v102 = sub_1001DE80C(v162, v163);
    v103 = *(*(v101 - 8) + 64);
    __chkstk_darwin(v102);
    v105 = &v157 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v106 + 16))(v105);
    sub_1001DB95C(v105, 0xD000000000000023, 0x800000010025DFE0, v100, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v107 = &v1[v3[32]];
  if (v107[1])
  {
    sub_1001D9A2C(0xD000000000000020, 0x800000010025E010, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v108 = *v107;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v108;
    sub_10001A700(&v164, v162);
    v109 = v167;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v109;
    v111 = v163;
    v112 = sub_1001DE80C(v162, v163);
    v113 = *(*(v111 - 8) + 64);
    __chkstk_darwin(v112);
    v115 = &v157 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v116 + 16))(v115);
    sub_1001DB95C(v115, 0xD000000000000020, 0x800000010025E010, v110, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v117 = &v1[v3[33]];
  if (v117[1])
  {
    sub_1001D9A2C(0xD000000000000021, 0x800000010025E040, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v118 = *v117;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v118;
    sub_10001A700(&v164, v162);
    v119 = v167;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v119;
    v121 = v163;
    v122 = sub_1001DE80C(v162, v163);
    v123 = *(*(v121 - 8) + 64);
    __chkstk_darwin(v122);
    v125 = &v157 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v126 + 16))(v125);
    sub_1001DB95C(v125, 0xD000000000000021, 0x800000010025E040, v120, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v127 = &v1[v3[34]];
  if (v127[1])
  {
    sub_1001D9A2C(0xD000000000000023, 0x800000010025E070, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v128 = *v127;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v128;
    sub_10001A700(&v164, v162);
    v129 = v167;
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v129;
    v131 = v163;
    v132 = sub_1001DE80C(v162, v163);
    v133 = *(*(v131 - 8) + 64);
    __chkstk_darwin(v132);
    v135 = &v157 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v136 + 16))(v135);
    sub_1001DB95C(v135, 0xD000000000000023, 0x800000010025E070, v130, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v137 = &v1[v3[35]];
  if (v137[1])
  {
    sub_1001D9A2C(0xD00000000000001CLL, 0x800000010025E0A0, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
  }

  else
  {
    v138 = *v137;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v138;
    sub_10001A700(&v164, v162);
    v139 = v167;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v139;
    v141 = v163;
    v142 = sub_1001DE80C(v162, v163);
    v143 = *(*(v141 - 8) + 64);
    __chkstk_darwin(v142);
    v145 = &v157 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v146 + 16))(v145);
    sub_1001DB95C(v145, 0xD00000000000001CLL, 0x800000010025E0A0, v140, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    v167 = v161;
  }

  v147 = &v1[v3[36]];
  if (v147[1])
  {
    sub_1001D9A2C(v160, 0x800000010025E0C0, &v164);
    sub_1000157F0(&v164, &qword_1002D7C38, &qword_10024C878);
    return v167;
  }

  else
  {
    v148 = *v147;
    v165 = &type metadata for Int;
    v166 = &off_1002B54E0;
    *&v164 = v148;
    sub_10001A700(&v164, v162);
    v149 = v167;
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v149;
    v151 = v163;
    v152 = sub_1001DE80C(v162, v163);
    v153 = *(*(v151 - 8) + 64);
    __chkstk_darwin(v152);
    v155 = &v157 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v156 + 16))(v155);
    sub_1001DB95C(v155, v160, 0x800000010025E0C0, v150, &v161, &type metadata for Int, &off_1002B54E0);
    sub_100164B98(v162);
    return v161;
  }
}

unint64_t sub_1001D53F4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002497B0;
  *(inited + 32) = 0x6469656C646E7562;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &off_1002B54C0;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_1000157F0(inited + 32, &qword_1002D71F0, &qword_10024B160);
  return v4;
}

uint64_t sub_1001D54C0()
{
  v1 = 0x64657472617473;
  if (*v0 != 1)
  {
    v1 = 0x646570706F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

uint64_t sub_1001D5530()
{
  v1 = 0x64657269707865;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6552656372756F73;
  }
}

uint64_t sub_1001D55A8()
{
  v1 = v0;
  v2 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:))
  {
    return 0x6563697665446E6FLL;
  }

  if (v7 == enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:))
  {
    v9 = 0x736567677573;
  }

  else
  {
    if (v7 != enum case for PrivateServicePrediction.ServicePredictionSource.navigation(_:))
    {
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      v10._object = 0x800000010025E180;
      v10._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v10);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v9 = 0x61676976616ELL;
  }

  return v9 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
}

uint64_t sub_1001D57C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateServicePrediction();
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
    sub_1001BCC20(&qword_1002D7C10, 255, &type metadata accessor for PrivateServicePrediction);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t sub_1001D59DC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100002A5C;

  return v7();
}

uint64_t sub_1001D5AC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002A5C;

  return v8();
}

uint64_t sub_1001D5BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10001A718(a3, v25 - v11, &qword_1002D7180, &qword_10024ABF0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000157F0(v12, &qword_1002D7180, &qword_10024ABF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

    return v23;
  }

LABEL_8:
  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001D5EA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A58;

  return v7(a1);
}

size_t sub_1001D5FA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1001D6028(a1, a2, a3, *v3, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
  *v3 = result;
  return result;
}

size_t sub_1001D5FE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1001D6028(a1, a2, a3, *v3, &qword_1002D8238, &qword_10024D520, &type metadata accessor for ServicePrediction);
  *v3 = result;
  return result;
}

size_t sub_1001D6028(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100164A3C(a5, a6);
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

unint64_t sub_1001D6204(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for InternalServicePrediction();
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001D62A0(a1, v5);
}

unint64_t sub_1001D62A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalServicePrediction();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1001DC504(*(v2 + 48) + v12 * v10, v8, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1001D6458(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for InternalServicePrediction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v9 + 48) + v15 * v13, v8, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DE088(a2, type metadata accessor for InternalServicePrediction);
    sub_1001DC504(*(v9 + 48) + v15 * v13, v24, type metadata accessor for InternalServicePrediction);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    v18 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001DC504(a2, v8, type metadata accessor for InternalServicePrediction);
    v25 = *v17;
    sub_1001D94A4(v8, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_1001DC56C(a2, v20, type metadata accessor for InternalServicePrediction);
    return 1;
  }
}

uint64_t sub_1001D6718(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v9 + 48) + v15 * v13, v8, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v8, type metadata accessor for InternalUpcomingFlightPrediction);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DE088(a2, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1001DC504(*(v9 + 48) + v15 * v13, v24, type metadata accessor for InternalUpcomingFlightPrediction);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    v18 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001DC504(a2, v8, type metadata accessor for InternalUpcomingFlightPrediction);
    v25 = *v17;
    sub_1001D9758(v8, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_1001DC56C(a2, v20, type metadata accessor for InternalUpcomingFlightPrediction);
    return 1;
  }
}

uint64_t sub_1001D69EC(uint64_t a1)
{
  v3 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for InternalServicePrediction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_1000157F0(v6, &qword_1002D8260, &qword_10024D538))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1001DC504(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for InternalServicePrediction);
      sub_1001D762C(v6);
      sub_1001DE088(v12, type metadata accessor for InternalServicePrediction);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1001D6BF4(uint64_t a1, void *a2)
{
  v5 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v67 - v10;
  v12 = type metadata accessor for InternalServicePrediction();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v84 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - v17;
  __chkstk_darwin(v16);
  v80 = (&v67 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v67 = v11;
  v70 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v79 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v83 = v24 & v21;
  v72 = (63 - v23) >> 6;
  v78 = (v19 + 56);
  v68 = v19;
  v77 = (v19 + 48);
  v82 = a2 + 7;

  v26 = 0;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v83;
    v28 = v26;
    if (v83)
    {
LABEL_15:
      v2 = (v27 - 1) & v27;
      v32 = v67;
      sub_1001DC504(*(a1 + 48) + v68[9] * (__clz(__rbit64(v27)) | (v28 << 6)), v67, type metadata accessor for InternalServicePrediction);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v72 <= (v26 + 1) ? v26 + 1 : v72;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_56;
        }

        if (v28 >= v72)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v67;
    }

    v74 = *v78;
    v74(v32, v33, 1, v12);
    v85 = a1;
    v86 = v22;
    v87 = v79;
    v88 = v30;
    v89 = v2;
    v73 = *v77;
    if (v73(v32, 1, v12) == 1)
    {
      sub_1000157F0(v32, &qword_1002D8260, &qword_10024D538);
      goto LABEL_51;
    }

    sub_1001DC56C(v32, v80, type metadata accessor for InternalServicePrediction);
    v34 = a2[5];
    v71 = sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v82[v26 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1001DE088(v80, type metadata accessor for InternalServicePrediction);
    v26 = v30;
    v83 = v2;
  }

  v76 = ~v36;
  v37 = a2[6];
  v83 = v68[9];
  sub_1001DC504(v37 + v83 * v26, v18, type metadata accessor for InternalServicePrediction);
  v81 = sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
  while (1)
  {
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1001DE088(v18, type metadata accessor for InternalServicePrediction);
    if (v38)
    {
      break;
    }

    v26 = (v26 + 1) & v76;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v82[v26 >> 6]) == 0)
    {
      goto LABEL_6;
    }

    sub_1001DC504(a2[6] + v83 * v26, v18, type metadata accessor for InternalServicePrediction);
  }

  v39 = sub_1001DE088(v80, type metadata accessor for InternalServicePrediction);
  v40 = *(a2 + 32);
  v67 = ((1 << v40) + 63) >> 6;
  v25 = 8 * v67;
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v68 = &v67;
    __chkstk_darwin(v39);
    v42 = &v67 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v82, v41);
    v43 = *&v42[8 * v28] & ~v22;
    v44 = a2[2];
    v80 = v42;
    *&v42[8 * v28] = v43;
    v45 = v44 - 1;
    v26 = v70;
    v46 = i;
    v47 = v72;
    v69 = a1;
LABEL_25:
    v76 = v45;
    while (v2)
    {
      v48 = v30;
LABEL_37:
      v51 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      sub_1001DC504(*(a1 + 48) + (v51 | (v48 << 6)) * v83, v26, type metadata accessor for InternalServicePrediction);
      v52 = 0;
LABEL_38:
      v74(v26, v52, 1, v12);
      v85 = a1;
      v86 = v46;
      v87 = v79;
      v88 = v30;
      v89 = v2;
      if (v73(v26, 1, v12) == 1)
      {
        sub_1000157F0(v26, &qword_1002D8260, &qword_10024D538);
        a2 = sub_1001D8480(v80, v67, v76, a2);
        goto LABEL_51;
      }

      sub_1001DC56C(v26, v84, type metadata accessor for InternalServicePrediction);
      v53 = a2[5];
      v54 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v55 = a2;
      v56 = -1 << *(a2 + 32);
      v57 = v54 & ~v56;
      v28 = v57 >> 6;
      v22 = 1 << v57;
      if (((1 << v57) & v82[v57 >> 6]) != 0)
      {
        sub_1001DC504(v55[6] + v57 * v83, v18, type metadata accessor for InternalServicePrediction);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1001DE088(v18, type metadata accessor for InternalServicePrediction);
        if ((v58 & 1) == 0)
        {
          v59 = ~v56;
          do
          {
            v57 = (v57 + 1) & v59;
            v28 = v57 >> 6;
            v22 = 1 << v57;
            if (((1 << v57) & v82[v57 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_1001DC504(v55[6] + v57 * v83, v18, type metadata accessor for InternalServicePrediction);
            v60 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_1001DE088(v18, type metadata accessor for InternalServicePrediction);
          }

          while ((v60 & 1) == 0);
        }

        sub_1001DE088(v84, type metadata accessor for InternalServicePrediction);
        v61 = v80[v28];
        v80[v28] = v61 & ~v22;
        a2 = v55;
        a1 = v69;
        v26 = v70;
        v46 = i;
        v47 = v72;
        if ((v61 & v22) != 0)
        {
          v45 = v76 - 1;
          if (__OFSUB__(v76, 1))
          {
            __break(1u);
          }

          if (v76 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_1001DE088(v84, type metadata accessor for InternalServicePrediction);
        a2 = v55;
        a1 = v69;
        v26 = v70;
        v46 = i;
        v47 = v72;
      }
    }

    if (v47 <= (v30 + 1))
    {
      v49 = v30 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v2 = 0;
        v52 = 1;
        v30 = v50;
        goto LABEL_38;
      }

      v2 = *(v46 + 8 * v48);
      ++v30;
      if (v2)
      {
        v30 = v48;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v63 = v25;

    v80 = a2;
    v64 = v63;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v65 = v80;

      a2 = v65;
      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();
  memcpy(v66, v82, v64);
  a2 = sub_1001D7F68(v66, v67, v80, v26, &v85);

LABEL_51:
  sub_10017F9D4();
  return a2;
}

uint64_t sub_1001D762C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InternalServicePrediction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v1 + 40);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v23 = v2;
    v24 = v5;
    v25 = a1;
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1001DC504(*(v9 + 48) + v15 * v13, v8, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a1 = v25;
        goto LABEL_10;
      }
    }

    v18 = v23;
    v19 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v18;
    v26 = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001D8780();
      v21 = v26;
    }

    a1 = v25;
    sub_1001DC56C(*(v21 + 48) + v15 * v13, v25, type metadata accessor for InternalServicePrediction);
    sub_1001D91CC(v13);
    v17 = 0;
    *v18 = v26;
LABEL_10:
    v5 = v24;
  }

  else
  {
    v17 = 1;
  }

  return (*(v5 + 56))(a1, v17, 1, v4);
}

uint64_t sub_1001D78D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InternalServicePrediction();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1001DC56C(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for InternalServicePrediction);
      v24 = *(v11 + 40);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1001DC56C(v7, *(v11 + 48) + v19 * v23, type metadata accessor for InternalServicePrediction);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1001D7C10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_1001DC56C(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for InternalUpcomingFlightPrediction);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
      sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1001DC56C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for InternalUpcomingFlightPrediction);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

void *sub_1001D7F68(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v49 = a2;
  v9 = sub_100164A3C(&qword_1002D8260, &qword_10024D538);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v55 = &v49 - v11;
  v12 = type metadata accessor for InternalServicePrediction();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v60 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v51 = a1;
  v52 = a5;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v56 = v23;
  v53 = (v23 + 48);
  v54 = (v23 + 56);
  v58 = a3 + 56;
  v59 = a3;
  while (2)
  {
    v50 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v24 = a5[1];
        v27 = a5[2];
        v26 = a5[3];
        v28 = a5[4];
        v57 = v27;
        if (!v28)
        {
          v30 = (v27 + 64) >> 6;
          if (v30 <= v26 + 1)
          {
            v31 = v26 + 1;
          }

          else
          {
            v31 = (v27 + 64) >> 6;
          }

          v32 = v31 - 1;
          while (1)
          {
            v29 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v29 >= v30)
            {
              v33 = 0;
              v35 = 1;
              v34 = v55;
              goto LABEL_14;
            }

            v28 = *(v24 + 8 * v29);
            ++v26;
            if (v28)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v29 = v26;
LABEL_13:
        v33 = (v28 - 1) & v28;
        v34 = v55;
        sub_1001DC504(*(v25 + 48) + *(v56 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v55, type metadata accessor for InternalServicePrediction);
        v35 = 0;
        v32 = v29;
LABEL_14:
        (*v54)(v34, v35, 1, v12);
        *a5 = v25;
        a5[1] = v24;
        a5[2] = v57;
        a5[3] = v32;
        a5[4] = v33;
        if ((*v53)(v34, 1, v12) == 1)
        {
          sub_1000157F0(v34, &qword_1002D8260, &qword_10024D538);
          v48 = v59;

          return sub_1001D8480(v51, v49, v50, v48);
        }

        sub_1001DC56C(v34, v60, type metadata accessor for InternalServicePrediction);
        v36 = v59;
        v37 = *(v59 + 40);
        sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v58 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_1001DE088(v60, type metadata accessor for InternalServicePrediction);
        a5 = v52;
      }

      v43 = *(v56 + 72);
      sub_1001DC504(*(v59 + 48) + v43 * v40, v16, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
      if ((v44 & 1) == 0)
      {
        v45 = ~v39;
        do
        {
          v40 = (v40 + 1) & v45;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v58 + 8 * (v40 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_1001DC504(*(v59 + 48) + v43 * v40, v16, type metadata accessor for InternalServicePrediction);
          v46 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_1001DE088(v16, type metadata accessor for InternalServicePrediction);
        }

        while ((v46 & 1) == 0);
      }

      result = sub_1001DE088(v60, type metadata accessor for InternalServicePrediction);
      a5 = v52;
      v47 = v51[v41];
      v51[v41] = v47 & ~v42;
    }

    while ((v47 & v42) == 0);
    v22 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v50 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_1001D8480(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InternalServicePrediction();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_1001DC504(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for InternalServicePrediction);
    v22 = *(v12 + 40);
    sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_1001DC56C(v11, *(v12 + 48) + v26 * v21, type metadata accessor for InternalServicePrediction);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    if (!a3)
    {
LABEL_28:

      return v12;
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
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

void *sub_1001D8780()
{
  v1 = v0;
  v2 = type metadata accessor for InternalServicePrediction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1001DC504(*(v7 + 48) + v22, v6, type metadata accessor for InternalServicePrediction);
        result = sub_1001DC56C(v6, *(v9 + 48) + v22, type metadata accessor for InternalServicePrediction);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1001D898C()
{
  v1 = v0;
  v2 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1001DC504(*(v7 + 48) + v22, v6, type metadata accessor for InternalUpcomingFlightPrediction);
        result = sub_1001DC56C(v6, *(v9 + 48) + v22, type metadata accessor for InternalUpcomingFlightPrediction);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_1001D8B98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InternalServicePrediction();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D8268, &qword_10024D540);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_1001DC504(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for InternalServicePrediction);
      v23 = *(v11 + 40);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1001DC56C(v7, *(v11 + 48) + v18 * v22, type metadata accessor for InternalServicePrediction);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1001D8EA4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D8258, &qword_10024D530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_1001DC504(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for InternalUpcomingFlightPrediction);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
      sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1001DC56C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for InternalUpcomingFlightPrediction);
      ++*(v11 + 16);
      v8 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1001D91CC(int64_t a1)
{
  v3 = type metadata accessor for InternalServicePrediction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v29 = v10;
      v16 = (v15 + 1) & v13;
      v17 = *(v4 + 72);
      while (1)
      {
        v18 = v17 * v12;
        sub_1001DC504(*(v9 + 48) + v17 * v12, v8, type metadata accessor for InternalServicePrediction);
        v19 = *(v9 + 40);
        sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
        v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
        sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
        v21 = v20 & v13;
        if (a1 >= v16)
        {
          if (v21 < v16 || a1 < v21)
          {
            goto LABEL_6;
          }
        }

        else if (v21 < v16 && a1 < v21)
        {
          goto LABEL_6;
        }

        v24 = v17 * a1;
        if (v17 * a1 < v18 || *(v9 + 48) + v17 * a1 >= (*(v9 + 48) + v18 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v12;
          if (v24 == v18)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v12;
LABEL_6:
        v12 = (v12 + 1) & v13;
        if (((*(v29 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          v10 = v29;
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v9 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v27;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1001D94A4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for InternalServicePrediction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001D78D4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1001D8780();
      goto LABEL_12;
    }

    sub_1001D8B98(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v8 + 72);
    do
    {
      sub_1001DC504(*(v14 + 48) + v19 * a2, v11, type metadata accessor for InternalServicePrediction);
      sub_1001BCC20(&qword_1002D79C0, 255, type metadata accessor for InternalServicePrediction);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v11, type metadata accessor for InternalServicePrediction);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1001DC56C(a1, *(v21 + 48) + *(v26 + 72) * a2, type metadata accessor for InternalServicePrediction);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001D9758(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v28 = v8;
  v29 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v10;
    sub_1001D7C10(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1001D898C();
      goto LABEL_12;
    }

    v27 = v10;
    sub_1001D8EA4(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  dispatch thunk of Hashable.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = -1 << *(v15 + 32);
  a2 = v17 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      sub_1001DC504(*(v15 + 48) + v20 * a2, v12, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1001DE088(v12, type metadata accessor for InternalUpcomingFlightPrediction);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1001DC56C(a1, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for InternalUpcomingFlightPrediction);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1001D9A2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100164498(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001DA788();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10001A700((*(v12 + 56) + 40 * v9), a3);
    sub_1001DA134(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001D9AD8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for InternalServicePrediction();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v46 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v48)
      {
        sub_1001DC56C(v28, v9, type metadata accessor for InternalServicePrediction);
        v29 = *(v13 + 56);
        v30 = v9;
        v31 = *(v29 + 8 * v26);
      }

      else
      {
        sub_1001DC504(v28, v9, type metadata accessor for InternalServicePrediction);
        v32 = *(v13 + 56);
        v30 = v9;
        v31 = *(v32 + 8 * v26);
      }

      v33 = *(v14 + 40);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
      v34 = v30;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1001DC56C(v34, *(v14 + 48) + v27 * v22, type metadata accessor for InternalServicePrediction);
      *(*(v14 + 56) + 8 * v22) = v31;
      v9 = v34;
      ++*(v14 + 16);
      v13 = v45;
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

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1001D9E90(int64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for InternalServicePrediction();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (_HashTable.previousHole(before:)() + 1) & ~v10;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_1001DC504(*(a2 + 48) + v14 * v11, v8, type metadata accessor for InternalServicePrediction);
      v16 = *(a2 + 40);
      sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = sub_1001DE088(v8, type metadata accessor for InternalServicePrediction);
      v18 = v17 & v12;
      if (a1 >= v13)
      {
        if (v18 >= v13 && a1 >= v18)
        {
LABEL_15:
          v21 = *(a2 + 48);
          result = v21 + v14 * a1;
          if (v14 * a1 < v15 || result >= v21 + v15 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v15)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v11);
          if (a1 != v11 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v11;
          }
        }
      }

      else if (v18 >= v13 || a1 >= v18)
      {
        goto LABEL_15;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001DA134(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_1001DA2F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for InternalServicePrediction();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001D6204(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1001DA548();
      goto LABEL_7;
    }

    sub_1001D9AD8(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1001D6204(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001DC504(a2, v11, type metadata accessor for InternalServicePrediction);
      return sub_1001DA494(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1001DA494(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for InternalServicePrediction();
  result = sub_1001DC56C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for InternalServicePrediction);
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

void *sub_1001DA548()
{
  v1 = v0;
  v2 = type metadata accessor for InternalServicePrediction();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1001DC504(*(v6 + 48) + v22, v5, type metadata accessor for InternalServicePrediction);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_1001DC56C(v5, *(v8 + 48) + v22, type metadata accessor for InternalServicePrediction);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1001DA788()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100164B34(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001A700(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001DA930(int64_t a1)
{
  v2 = v1;
  v45 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v4 = *(*(v45 - 8) + 64);
  v5 = __chkstk_darwin(v45);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v36 - v7;
  v8 = type metadata accessor for InternalServicePrediction();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = v12;
    v38 = v2;
    v36 = &v36;
    __chkstk_darwin(v10);
    v39 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v13);
    v40 = 0;
    v14 = 0;
    v46 = a1;
    v2 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);
    a1 = (v15 + 63) >> 6;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v47 = (v17 - 1) & v17;
LABEL_12:
      v21 = v18 | (v14 << 6);
      v22 = v46;
      v12 = v41;
      sub_1001DC504(v46[6] + *(v42 + 72) * v21, v41, type metadata accessor for InternalServicePrediction);
      v23 = v21;
      v24 = *(v22[7] + 8 * v21);
      v25 = v43;
      sub_1001DC504(v12, v43, type metadata accessor for InternalServicePrediction);
      v26 = v45;
      *(v25 + *(v45 + 48)) = v24;
      v27 = v25;
      v28 = v44;
      sub_1001DE0E8(v27, v44);
      v29 = *(v28 + *(v26 + 48));
      v30 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      LODWORD(v30) = *(v29 + v30);
      swift_retain_n();

      sub_1001DE088(v28, type metadata accessor for InternalServicePrediction);

      sub_1001DE088(v12, type metadata accessor for InternalServicePrediction);
      v17 = v47;
      if (v30 == 2)
      {
        *&v39[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
          return sub_1001DB088(v39, v37, v40, v46);
        }
      }
    }

    v19 = v14;
    while (1)
    {
      v14 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v14 >= a1)
      {
        return sub_1001DB088(v39, v37, v40, v46);
      }

      v20 = *(v2 + 8 * v14);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  sub_1001DAD48(v33, v12, a1);
  v35 = v34;

  if (!v2)
  {
    return v35;
  }

  return result;
}

void sub_1001DAD48(void *a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v40 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v5 = *(*(v40 - 8) + 64);
  v6 = __chkstk_darwin(v40);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v32 - v8;
  v9 = type metadata accessor for InternalServicePrediction();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v9 - 8);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v34 = a1;
    v35 = 0;
    v33 = a2;
    v12 = 0;
    v13 = v41 + 8;
    v14 = 1 << *(v41 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v41[8];
    v17 = (v14 + 63) >> 6;
    v18 = v39;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v42 = (v16 - 1) & v16;
LABEL_14:
      v22 = v19 | (v12 << 6);
      v23 = v41;
      v24 = v36;
      sub_1001DC504(v41[6] + *(v37 + 72) * v22, v36, type metadata accessor for InternalServicePrediction);
      v25 = v22;
      v26 = *(v23[7] + 8 * v22);
      v27 = v38;
      sub_1001DC504(v24, v38, type metadata accessor for InternalServicePrediction);
      v28 = v40;
      *(v27 + *(v40 + 48)) = v26;
      sub_1001DE0E8(v27, v18);
      v29 = *(v18 + *(v28 + 48));
      v30 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      swift_beginAccess();
      LODWORD(v30) = *(v29 + v30);
      swift_retain_n();

      sub_1001DE088(v18, type metadata accessor for InternalServicePrediction);

      sub_1001DE088(v24, type metadata accessor for InternalServicePrediction);
      v16 = v42;
      if (v30 == 2)
      {
        *(v34 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_18:
          sub_1001DB088(v34, v33, v35, v41);

          return;
        }
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_18;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001DB088(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for InternalServicePrediction();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v36 = &v35 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100164A3C(&qword_1002D8248, &qword_10024D528);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v35 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v36;
    v41 = *(v37 + 72);
    sub_1001DC504(v22 + v41 * v21, v36, type metadata accessor for InternalServicePrediction);
    v24 = *(a4[7] + 8 * v21);
    sub_1001DC56C(v23, v42, type metadata accessor for InternalServicePrediction);
    v25 = *(v14 + 40);
    sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
    v40 = v24;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
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
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_1001DC56C(v42, *(v14 + 48) + v29 * v41, type metadata accessor for InternalServicePrediction);
    *(*(v14 + 56) + 8 * v29) = v40;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
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

uint64_t sub_1001DB3FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1001DB4F0;

  return v6(v2 + 32);
}

uint64_t sub_1001DB4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001DB604(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = &type metadata for Int;
  v26 = &off_1002B54E0;
  v9 = *a5;
  v11 = sub_100164498(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_100164B98(v18);
      return sub_10001A700(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_100164498(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_1001DE80C(&v24, &type metadata for Int);
  sub_1001DBC20(v11, a2, a3, *v23, v17);

  return sub_100164B98(&v24);
}

uint64_t sub_1001DB76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v31 = &type metadata for String;
  v32 = &off_1002B54C0;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v10 = *a6;
  v12 = sub_100164498(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 40 * v12);
      sub_100164B98(v19);
      return sub_10001A700(&v30, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v15, a5 & 1);
  v21 = *a6;
  v22 = sub_100164498(a3, a4);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_1001DE80C(&v30, &type metadata for String);
  v25 = *(*(&type metadata for String - 1) + 64);
  __chkstk_darwin(v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_1001DBB90(v12, a3, a4, *v27, v27[1], v18);

  return sub_100164B98(&v30);
}

uint64_t sub_1001DB95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v14 = sub_1001B8BDC(&v36);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_100164498(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_100164B98(v24);
      return sub_10001A700(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1001DA788();
    goto LABEL_7;
  }

  sub_1001B79CC(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_100164498(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = sub_1001DE80C(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_1001DBCB4(v17, a2, a3, v33, v23, a6, a7);

  return sub_100164B98(&v36);
}

uint64_t sub_1001DBB90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &off_1002B54C0;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_10001A700(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1001DBC20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int;
  v13 = &off_1002B54E0;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001A700(&v11, a5[7] + 40 * a1);
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

uint64_t sub_1001DBCB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1001B8BDC(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_10001A700(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

id sub_1001DBD8C(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    _StringGuts.grow(_:)(32);
    v6._object = 0x800000010025E8E0;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    type metadata accessor for WISRelayAdaptorRegistrationState(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = sub_1000CE644();
    if (result)
    {
      v3 = result;
      v4 = sub_100168AD4();

      v5 = *((swift_isaMask & *v4) + 0x390);

      v5(0x2010101uLL >> (8 * v1));
      (*((swift_isaMask & *v4) + 0x398))(0x4030201uLL >> (8 * v1));
    }
  }

  return result;
}

id sub_1001DBF58(unint64_t a1)
{
  if (a1 >= 3)
  {
    _StringGuts.grow(_:)(30);
    v5._object = 0x800000010025E8C0;
    v5._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v5);
    type metadata accessor for WISRelayAdaptorSignalStrength(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = sub_1000CE644();
    if (result)
    {
      v3 = result;
      v4 = sub_100168AD4();

      (*((swift_isaMask & *v4) + 0x3A0))(a1);
    }
  }

  return result;
}

uint64_t sub_1001DC0C8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 mcc];
    v3 = [v2 integerValue];

    v4 = [v1 mnc];
    v5 = [v4 integerValue];

    v6 = [v1 rat];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [v1 band];
    v11 = [v10 integerValue];

    v12 = [v1 frequency];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 integerValue];
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 == 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20[0] = v3;
  v20[1] = v5;
  v20[2] = v7;
  v20[3] = v9;
  v20[4] = v11;
  v20[5] = v14;
  v21 = v15;
  v16 = sub_1000CE644();
  if (v16)
  {
    v17 = v16;
    v18 = sub_100168AD4();

    (*((swift_isaMask & *v18) + 0x3B0))(v20);
  }
}

uint64_t sub_1001DC2EC(uint64_t a1)
{
  v2 = type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.unrestricted(_:))
  {
    v8 = 2;
LABEL_7:
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v7 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.simulatedOnly(_:))
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (v7 == enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.real(_:))
  {
    v8 = 0;
    goto LABEL_7;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v10._object = 0x800000010025E8A0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001DC504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DC56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001DC5D4(uint64_t a1)
{
  v2 = sub_100164A3C(&unk_1002D8280, &qword_10024D578);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100164A3C(&qword_1002D8248, &qword_10024D528);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001A718(v10, v6, &unk_1002D8280, &qword_10024D578);
      result = sub_1001D6204(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for InternalServicePrediction();
      result = sub_1001DC56C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for InternalServicePrediction);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

id sub_1001DC800(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v52 = &v46 - v12;
  v48 = type metadata accessor for Logger();
  v50 = *(v48 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v48);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[3] = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  v59[4] = &off_1002B54A8;
  v58[3] = &type metadata for DefaultDateProvider;
  v58[4] = &off_1002B7A00;
  swift_defaultActor_initialize();
  *(a5 + 216) = 0;
  *(a5 + 112) = _swiftEmptyArrayStorage;
  *(a5 + 120) = _swiftEmptyArrayStorage;
  *(a5 + 128) = _swiftEmptyArrayStorage;
  *(a5 + 192) = 0;
  *(a5 + 224) = 0;
  *(a5 + 200) = _swiftEmptyArrayStorage;
  *(a5 + 208) = 0;
  *(a5 + 240) = sub_1001DC5D4(_swiftEmptyArrayStorage);
  type metadata accessor for RoamingPLMNPredictionController();
  sub_10019CBB4(v56);
  sub_10019CBEC(v55);
  *(a5 + 304) = sub_10019CC24(v56, v55);
  *(a5 + 232) = a1;
  sub_100164B34(v59, a5 + 152);
  sub_100164B34(v58, a5 + 264);
  v49 = a2;
  *(a5 + 248) = a2;
  *(a5 + 256) = a3;
  v16 = a1;

  v17 = [v16 relayRegistrationStateFetchedRawValue];
  if (v17 < 3)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * (v17 == 3);
  }

  swift_beginAccess();
  *(a5 + 216) = v18;
  v51 = a4;
  memcpy((a5 + 312), a4, 0x178uLL);
  sub_100003E50(&off_1002B7A38, v15);
  v19 = v16;
  v47 = v15;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = a3;
    v24 = v23;
    *&v56[0] = v23;
    *v22 = 136315138;
    v25 = [v19 relayRegistrationStateRawValue];
    v26 = 0xEE00656369767265;
    v27 = 0x7320666F2074756FLL;
    if (v25 != 3)
    {
      v27 = 0x6E776F6E6B6E75;
      v26 = 0xE700000000000000;
    }

    v28 = v25 >= 3;
    if (v25 >= 3)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x6976726573206E69;
    }

    if (v28)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0xEA00000000006563;
    }

    v31 = sub_10017A8A8(v29, v30, v56);

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting with registration state %s", v22, 0xCu);
    sub_100164B98(v24);
    a3 = v46;
  }

  (*(v50 + 8))(v47, v48);
  swift_beginAccess();
  *(a5 + 218) = 0;
  swift_beginAccess();
  *(a5 + 219) = 0;
  v32 = [v19 relayRegistrationStateRawValue];
  if (v32 < 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2 * (v32 == 3);
  }

  type metadata accessor for MapsSuggestionController(0);
  v57 = 0;
  memset(v56, 0, sizeof(v56));

  sub_1001A691C(v55);
  sub_10019CBEC(v54);
  v34 = sub_1001A6960();
  v35 = v49;
  v36 = v51;
  *(a5 + 144) = sub_1001A702C(0, v33, v56, v55, v49, a3, v51, v54, v34, v37);
  type metadata accessor for MapsNavigationController();
  *(a5 + 136) = sub_1001BA164(v36, 0);
  v38 = type metadata accessor for ServicePredictionController();
  v53.receiver = a5;
  v53.super_class = v38;
  v39 = objc_msgSendSuper2(&v53, "init");
  v40 = type metadata accessor for TaskPriority();
  v41 = v52;
  (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v35;
  v42[5] = a3;
  v42[6] = v39;
  v42[7] = v19;
  v43 = v39;

  v44 = v43;
  sub_100176B80(0, 0, v41, &unk_10024D570, v42);

  sub_100164B98(v58);
  sub_100164B98(v59);
  return v44;
}

id sub_1001DCD80(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v58 = a6;
  swift_getObjectType();
  v13 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v55 = &v50 - v15;
  v53 = type metadata accessor for Logger();
  v52 = *(v53 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v53);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(a7 + 216) = 0;
  *(a7 + 112) = _swiftEmptyArrayStorage;
  *(a7 + 120) = _swiftEmptyArrayStorage;
  *(a7 + 128) = _swiftEmptyArrayStorage;
  *(a7 + 192) = 0;
  *(a7 + 224) = 0;
  *(a7 + 200) = _swiftEmptyArrayStorage;
  *(a7 + 208) = 0;
  *(a7 + 240) = sub_1001DC5D4(_swiftEmptyArrayStorage);
  type metadata accessor for RoamingPLMNPredictionController();
  sub_10019CBB4(v62);
  sub_10019CBEC(v61);
  *(a7 + 304) = sub_10019CC24(v62, v61);
  *(a7 + 232) = a1;
  v57 = a2;
  sub_100164B34(a2, a7 + 152);
  v56 = a3;
  sub_100164B34(a3, a7 + 264);
  v19 = a4;
  *(a7 + 248) = a4;
  *(a7 + 256) = a5;
  swift_unknownObjectRetain();
  v54 = a5;

  v20 = [a1 relayRegistrationStateFetchedRawValue];
  if (v20 < 3)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2 * (v20 == 3);
  }

  swift_beginAccess();
  *(a7 + 216) = v21;
  memcpy((a7 + 312), v58, 0x178uLL);
  sub_100003E50(&off_1002B7A38, v18);
  swift_unknownObjectRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  v24 = &selRef_basebandSupportsWirelessInsights;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = v52;
    v51 = v19;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v62[0] = v27;
    *v26 = 136315138;
    v28 = [a1 relayRegistrationStateRawValue];
    v29 = 2 * (v28 == 3);
    if (v28 < 3)
    {
      v29 = 1;
    }

    v30 = 0xEA00000000006563;
    v31 = 0x6976726573206E69;
    if (v29 != 1)
    {
      v31 = 0x7320666F2074756FLL;
      v30 = 0xEE00656369767265;
    }

    if (v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x6E776F6E6B6E75;
    }

    if (v29)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    v34 = sub_10017A8A8(v32, v33, v62);

    *(v26 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting with registration state %s", v26, 0xCu);
    sub_100164B98(v27);

    (*(v25 + 8))(v18, v53);
    v19 = v51;
    v24 = &selRef_basebandSupportsWirelessInsights;
  }

  else
  {

    (*(v52 + 8))(v18, v53);
  }

  swift_beginAccess();
  *(a7 + 218) = 0;
  swift_beginAccess();
  *(a7 + 219) = 0;
  type metadata accessor for MapsSuggestionController(0);
  v35 = [a1 v24[72]];
  if (v35 < 3)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2 * (v35 == 3);
  }

  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v37 = v54;

  sub_1001A691C(v61);
  sub_10019CBEC(v60);
  v38 = sub_1001A6960();
  v49 = v39;
  LODWORD(v39) = v36;
  v40 = v58;
  *(a7 + 144) = sub_1001A702C(0, v39, v62, v61, v19, v37, v58, v60, v38, v49);
  type metadata accessor for MapsNavigationController();
  *(a7 + 136) = sub_1001BA164(v40, 0);
  v41 = type metadata accessor for ServicePredictionController();
  v59.receiver = a7;
  v59.super_class = v41;
  v42 = objc_msgSendSuper2(&v59, "init");
  v43 = type metadata accessor for TaskPriority();
  v44 = v55;
  (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v19;
  v45[5] = v37;
  v45[6] = v42;
  v45[7] = a1;
  v46 = v42;

  v47 = v46;
  sub_100176B80(0, 0, v44, &unk_10024D568, v45);

  sub_100164B98(v56);
  sub_100164B98(v57);
  return v47;
}

id sub_1001DD36C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  type metadata accessor for ServicePredictionController();
  v12 = swift_allocObject();

  return sub_1001DCD80(a1, a2, a3, a4, a5, a6, v12);
}

uint64_t sub_1001DD3FC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001C4C68(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DD4C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10017F434;

  return sub_1001C66F0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DD55C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v86);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v15 = type metadata accessor for InternalServicePrediction();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v77 = &v72 - v20;
  v21 = __chkstk_darwin(v19);
  v81 = &v72 - v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v72 - v24;
  v25 = __chkstk_darwin(v23);
  v80 = &v72 - v26;
  __chkstk_darwin(v25);
  v29 = *(a2 + 16);
  v30 = *(a3 + 16);
  if (v30)
  {
    v31 = &v72 - v28;
    v72 = v29;
    v73 = a1;
    v74 = a4;
    v32 = *(v27 + 72);
    v84 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v33 = a3 + v84;
    LODWORD(v78) = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    v90 = (v8 + 8);
    v91 = (v8 + 104);
    v83 = _swiftEmptyArrayStorage;
    v87 = a3 + v84;
    v75 = v30;
    v85 = v32;
    v79 = v12;
    do
    {
      sub_1001DC504(v33, v31, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v34 = v12;
      v35 = v12;
      v36 = v86;
      v89 = *v91;
      v89(v34, v78, v86);
      v37 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v38 = *v90;
      (*v90)(v35, v36);
      v88 = v38;
      v38(v14, v36);
      if (v37)
      {
        sub_1001DC56C(v31, v80, type metadata accessor for InternalServicePrediction);
        v39 = v83;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BBCAC(0, v39[2] + 1, 1);
          v39 = v92;
        }

        v12 = v79;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          sub_1001BBCAC(v41 > 1, v42 + 1, 1);
          v39 = v92;
        }

        v39[2] = v42 + 1;
        v32 = v85;
        v83 = v39;
        sub_1001DC56C(v80, v39 + v84 + v42 * v85, type metadata accessor for InternalServicePrediction);
      }

      else
      {
        sub_1001DE088(v31, type metadata accessor for InternalServicePrediction);
        v12 = v79;
      }

      v33 += v32;
      --v30;
    }

    while (v30);
    v78 = v83[2];

    LODWORD(v80) = enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:);
    v83 = _swiftEmptyArrayStorage;
    v43 = v87;
    v45 = v75;
    v44 = v76;
    do
    {
      sub_1001DC504(v43, v44, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v47 = v86;
      v89(v12, v80, v86);
      v48 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v49 = v12;
      v50 = v12;
      v51 = v88;
      v88(v50, v47);
      v51(v14, v47);
      if (v48)
      {
        sub_1001DC56C(v44, v81, type metadata accessor for InternalServicePrediction);
        v52 = v83;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v52;
        v92 = v52;
        if ((v53 & 1) == 0)
        {
          sub_1001BBCAC(0, v52[2] + 1, 1);
          v44 = v76;
          v54 = v92;
        }

        v12 = v49;
        v56 = v54[2];
        v55 = v54[3];
        if (v56 >= v55 >> 1)
        {
          sub_1001BBCAC(v55 > 1, v56 + 1, 1);
          v44 = v76;
          v54 = v92;
        }

        v54[2] = v56 + 1;
        v46 = v85;
        v83 = v54;
        sub_1001DC56C(v81, v54 + v84 + v56 * v85, type metadata accessor for InternalServicePrediction);
      }

      else
      {
        sub_1001DE088(v44, type metadata accessor for InternalServicePrediction);
        v12 = v49;
        v46 = v85;
      }

      v43 += v46;
      --v45;
    }

    while (v45);
    v81 = v83[2];

    LODWORD(v83) = enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:);
    v57 = _swiftEmptyArrayStorage;
    v58 = v75;
    v59 = v77;
    v61 = v86;
    v60 = v87;
    do
    {
      v87 = v60;
      sub_1001DC504(v60, v59, type metadata accessor for InternalServicePrediction);
      PrivateServicePrediction.type.getter();
      v89(v12, v83, v61);
      v62 = static PrivateServicePrediction.ServicePredictionType.== infix(_:_:)();
      v63 = v88;
      v88(v12, v61);
      v63(v14, v61);
      if (v62)
      {
        sub_1001DC56C(v59, v82, type metadata accessor for InternalServicePrediction);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v57;
        if ((v64 & 1) == 0)
        {
          sub_1001BBCAC(0, v57[2] + 1, 1);
          v57 = v92;
        }

        v66 = v57[2];
        v65 = v57[3];
        if (v66 >= v65 >> 1)
        {
          sub_1001BBCAC(v65 > 1, v66 + 1, 1);
          v57 = v92;
        }

        v57[2] = v66 + 1;
        v67 = v57 + v84 + v66 * v85;
        v46 = v85;
        sub_1001DC56C(v82, v67, type metadata accessor for InternalServicePrediction);
        v59 = v77;
      }

      else
      {
        sub_1001DE088(v59, type metadata accessor for InternalServicePrediction);
      }

      v60 = v87 + v46;
      --v58;
    }

    while (v58);
    a4 = v74;
    v30 = v75;
    LOBYTE(a1) = v73;
    v29 = v72;
    v68 = v78;
    v69 = v81;
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
    v68 = _swiftEmptyArrayStorage[2];

    v69 = _swiftEmptyArrayStorage[2];
  }

  v70 = v57[2];

  *a4 = a1;
  *(a4 + 8) = v29;
  *(a4 + 16) = v30;
  *(a4 + 24) = v68;
  *(a4 + 32) = v69;
  *(a4 + 40) = v70;
  *(a4 + 48) = 1;
  return result;
}

uint64_t sub_1001DDD40(uint64_t a1)
{
  v2 = type metadata accessor for InternalServicePrediction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1001BCC20(&qword_1002D8240, 255, type metadata accessor for InternalServicePrediction);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1001DC504(v12, v7, type metadata accessor for InternalServicePrediction);
      sub_1001D6458(v9, v7);
      sub_1001DE088(v9, type metadata accessor for InternalServicePrediction);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1001DDED4(uint64_t a1)
{
  v2 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1001BCC20(&qword_1002D8250, 255, type metadata accessor for InternalUpcomingFlightPrediction);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1001DC504(v12, v7, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1001D6718(v9, v7);
      sub_1001DE088(v9, type metadata accessor for InternalUpcomingFlightPrediction);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1001DE088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DE0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001DE184()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001CDE80(v3, v4, v5, v2);
}

uint64_t sub_1001DE29C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  v6 = *(a1 + *(sub_100164A3C(&qword_1002D7BE8, &qword_10024C750) + 48));
  return a2(v5, v4);
}

uint64_t sub_1001DE364(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(a1 + *(sub_100164A3C(&qword_1002D7BE8, &qword_10024C750) + 48));
  return a2(v4, v5);
}

uint64_t sub_1001DE3D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001CFDF0(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1001DE46C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D1E28(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE508()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D1EA0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE5A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D20A0(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE640()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D2208(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE6DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001D24C8(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1001DE774()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001D263C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001DE80C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1001DE8AC()
{
  result = qword_1002D7C48;
  if (!qword_1002D7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C48);
  }

  return result;
}

unint64_t sub_1001DE908()
{
  result = qword_1002D7C58;
  if (!qword_1002D7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C58);
  }

  return result;
}

unint64_t sub_1001DE960()
{
  result = qword_1002D7C60;
  if (!qword_1002D7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C60);
  }

  return result;
}

unint64_t sub_1001DE9B8()
{
  result = qword_1002D7C68;
  if (!qword_1002D7C68)
  {
    sub_100169B50(&qword_1002D7C70, qword_10024CB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C68);
  }

  return result;
}

unint64_t sub_1001DEA20()
{
  result = qword_1002D7C78;
  if (!qword_1002D7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C78);
  }

  return result;
}

unint64_t sub_1001DEA78()
{
  result = qword_1002D7C80;
  if (!qword_1002D7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C80);
  }

  return result;
}

unint64_t sub_1001DEAD0()
{
  result = qword_1002D7C88;
  if (!qword_1002D7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C88);
  }

  return result;
}

unint64_t sub_1001DEB28()
{
  result = qword_1002D7C90;
  if (!qword_1002D7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C90);
  }

  return result;
}

unint64_t sub_1001DEB80()
{
  result = qword_1002D7C98;
  if (!qword_1002D7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C98);
  }

  return result;
}

unint64_t sub_1001DEBD8()
{
  result = qword_1002D7CA0;
  if (!qword_1002D7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7CA0);
  }

  return result;
}

void sub_1001DEC54()
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(319);
  if (v0 <= 0x3F)
  {
    sub_1001DED14();
    if (v1 <= 0x3F)
    {
      sub_1001DFB78(319, &unk_1002D7D10, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001DED14()
{
  if (!qword_1002D7D00)
  {
    sub_100169B50(&qword_1002D7D08, &qword_10024D008);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D7D00);
    }
  }
}

__n128 sub_1001DEDB0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001DEDCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001DEE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001DEE7C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1001DEF3C()
{
  sub_1001923F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t _s17wirelessinsightsd14SignalStrengthOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17wirelessinsightsd14SignalStrengthOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001DF208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001DF25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001DF2E8(uint64_t a1, int a2)
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

uint64_t sub_1001DF330(uint64_t result, int a2, int a3)
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

uint64_t sub_1001DF3A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002A5C;

  return sub_1001D3744(a1, v5, v6, v4);
}

uint64_t sub_1001DF444()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_1001D3390(v2, v3);
}

uint64_t sub_1001DF4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002A5C;

  return sub_1001D59DC(v2, v3, v5);
}

uint64_t sub_1001DF5B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DF5F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002A5C;

  return sub_1001D5AC4(a1, v4, v5, v7);
}

uint64_t sub_1001DF6C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return sub_1001D5EA8(a1, v5);
}

uint64_t sub_1001DF77C(uint64_t a1)
{
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return sub_1001D2C3C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001DF818(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1001DF874()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001DF8BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002A5C;

  return sub_1001DB3FC(a1, v5);
}

uint64_t sub_1001DF974(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10017F434;

  return sub_1001DB3FC(a1, v5);
}

uint64_t sub_1001DFA2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002A5C;

  return sub_1001C43CC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001DFAD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1001DFB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_MetricLogHeader_2eproto(awd::metrics *this)
{
  result = awd::metrics::MetricLog::default_instance_;
  if (awd::metrics::MetricLog::default_instance_)
  {
    return (*(*awd::metrics::MetricLog::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::MetricLog::MergeFrom(awd::metrics::MetricLog *this, const awd::metrics::MetricLog *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    sub_10001C3A0(this + 6, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      v7 = *(a2 + 1);
      *(this + 17) |= 1u;
      v8 = *(this + 1);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 16);
    *(this + 17) |= 2u;
    *(this + 16) = v9;
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    v10 = *(a2 + 5);
    *(this + 17) |= 4u;
    *(this + 5) = v10;
    v5 = *(a2 + 17);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    v11 = *(a2 + 8);
    *(this + 17) |= 8u;
    *(this + 8) = v11;
    v5 = *(a2 + 17);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 3);
    *(this + 17) |= 0x10u;
    v13 = *(this + 3);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v5 = *(a2 + 17);
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

LABEL_24:
    v14 = *(a2 + 5);
    *(this + 17) |= 0x20u;
    *(this + 5) = v14;
    if ((*(a2 + 17) & 0x40) == 0)
    {
      return;
    }

LABEL_13:
    v6 = *(a2 + 9);
    *(this + 17) |= 0x40u;
    *(this + 9) = v6;
  }
}

void sub_1001DFEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MetricLog::Clear(uint64_t this)
{
  if (*(this + 68))
  {
    if (*(this + 68))
    {
      v1 = *(this + 8);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 32) = 0;
    if ((*(this + 68) & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 40) = 0;
    *(this + 36) = 0;
  }

  *(this + 56) = 0;
  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::MetricLog::MergePartialFromCodedStream(awd::metrics::MetricLog *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 == 3)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_52;
              }
            }

            else if (v7 == 4 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_60;
            }

            goto LABEL_42;
          }

          if (v7 == 1)
          {
            if (v8 != 2)
            {
              goto LABEL_42;
            }

            *(this + 17) |= 1u;
            if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v14 < v9 && *v14 == 16)
            {
              v10 = v14 + 1;
              *(a2 + 1) = v10;
LABEL_34:
              v39 = 0;
              if (v10 >= v9 || (v15 = *v10, (v15 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v15 = v39;
                v16 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v16 = v10 + 1;
                *(a2 + 1) = v16;
              }

              *(this + 16) = v15 != 0;
              *(this + 17) |= 2u;
              if (v16 < v9 && *v16 == 24)
              {
                v18 = v16 + 1;
                *(a2 + 1) = v18;
LABEL_52:
                if (v18 >= v9 || (v21 = *v18, v21 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v22 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v21;
                  v22 = v18 + 1;
                  *(a2 + 1) = v22;
                }

                *(this + 17) |= 4u;
                if (v22 < v9 && *v22 == 32)
                {
                  v12 = v22 + 1;
                  *(a2 + 1) = v12;
LABEL_60:
                  if (v12 >= v9 || (v23 = *v12, v23 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
                    if (!result)
                    {
                      return result;
                    }

                    v24 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 5) = v23;
                    v24 = v12 + 1;
                    *(a2 + 1) = v24;
                  }

                  *(this + 17) |= 0x20u;
                  if (v24 < v9 && *v24 == 40)
                  {
                    v17 = v24 + 1;
                    *(a2 + 1) = v17;
                    goto LABEL_68;
                  }
                }
              }
            }
          }

          else
          {
            if (v7 == 2 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_34;
            }

LABEL_42:
            if (v8 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
            {
              return 0;
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_42;
          }

          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_96:
          if (v19 >= v9 || (v37 = *v19, v37 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v38 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v37;
            v38 = v19 + 1;
            *(a2 + 1) = v38;
          }

          v13 = *(this + 17) | 8;
          *(this + 17) = v13;
          if (v38 < v9 && *v38 == 66)
          {
            *(a2 + 1) = v38 + 1;
            goto LABEL_104;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 2)
          {
            goto LABEL_42;
          }

          v13 = *(this + 17);
LABEL_104:
          *(this + 17) = v13 | 0x10;
          if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 5)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_42;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_68:
      if (v17 >= v9 || (v25 = *v17, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v25;
        v26 = (v17 + 1);
        *(a2 + 1) = v26;
      }

      *(this + 17) |= 0x40u;
      if (v26 < v9)
      {
        v27 = *v26;
        goto LABEL_75;
      }
    }

    if (v7 != 6)
    {
      goto LABEL_42;
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v20 = *(a2 + 1);
    v9 = *(a2 + 2);
    while (1)
    {
      v40 = 0;
      if (v20 >= v9 || *v20 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
        {
          return 0;
        }
      }

      else
      {
        v40 = *v20;
        *(a2 + 1) = v20 + 1;
      }

      v28 = *(this + 14);
      if (v28 == *(this + 15))
      {
        sub_10001C3A0(this + 6, v28 + 1);
        v28 = *(this + 14);
      }

      v29 = v40;
      v30 = *(this + 6);
      *(this + 14) = v28 + 1;
      *(v30 + 4 * v28) = v29;
      v31 = *(this + 15) - *(this + 14);
      if (v31 >= 1)
      {
        v32 = v31 + 1;
        do
        {
          v33 = *(a2 + 1);
          v34 = *(a2 + 2);
          if (v33 >= v34 || *v33 != 48)
          {
            break;
          }

          *(a2 + 1) = v33 + 1;
          if ((v33 + 1) >= v34 || (v35 = v33[1], (v35 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
            {
              return 0;
            }

            v35 = v40;
            v30 = *(this + 6);
          }

          else
          {
            v40 = v33[1];
            *(a2 + 1) = v33 + 2;
          }

          v36 = *(this + 14);
          *(this + 14) = v36 + 1;
          *(v30 + 4 * v36) = v35;
          --v32;
        }

        while (v32 > 1);
      }

LABEL_93:
      v26 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v26 >= v9)
      {
        break;
      }

      v27 = *v26;
      if (v27 == 56)
      {
        v19 = (v26 + 1);
        *(a2 + 1) = v19;
        goto LABEL_96;
      }

LABEL_75:
      if (v27 != 48)
      {
        goto LABEL_1;
      }

      v20 = (v26 + 1);
      *(a2 + 1) = v20;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_42;
  }

  result = sub_1001E0570(a2, this + 48);
  if (result)
  {
    goto LABEL_93;
  }

  return result;
}

uint64_t sub_1001E0570(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        sub_10001C3A0(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t awd::metrics::protobuf_ShutdownFile_MetricFile_2eproto(awd::metrics *this)
{
  result = awd::metrics::MetricFile::default_instance_;
  if (awd::metrics::MetricFile::default_instance_)
  {
    return (*(*awd::metrics::MetricFile::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_MetricFile_2eproto_impl(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/WirelessInsightsExecutables/AWDMetrics/cpp/MetricFile.pb.cc", a4);
  awd::metrics::protobuf_AddDesc_MetricLog_2eproto(v4);
  operator new();
}

uint64_t awd::metrics::MetricFile::MetricFile(uint64_t this)
{
  *(this + 112) = 0;
  *this = off_1002B8678;
  *(this + 8) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 44) = 0;
  *(this + 128) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 136) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 80) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 88) = 0;
  *(this + 120) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 144) = 0;
  return this;
}

void awd::metrics::protobuf_AddDesc_MetricFile_2eproto(awd::metrics *this)
{
  v1 = awd::metrics::protobuf_AddDesc_MetricFile_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[1] = awd::metrics::protobuf_AddDesc_MetricFile_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1001E0894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricFile::MergeFrom(awd::metrics::MetricFile *this, const awd::metrics::MetricFile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v35);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 12) + 8 * v4);
      v6 = *(this + 27);
      v7 = *(this + 26);
      if (v7 >= v6)
      {
        if (v6 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v6 + 1);
          v6 = *(this + 27);
        }

        *(this + 27) = v6 + 1;
        sub_1001E22DC();
      }

      v8 = *(this + 12);
      *(this + 26) = v7 + 1;
      awd::metrics::MetricLog::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 26));
  }

  v9 = *(a2 + 36);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (v9)
  {
    v11 = *(a2 + 1);
    *(this + 36) |= 1u;
    *(this + 1) = v11;
    v9 = *(a2 + 36);
    if ((v9 & 2) == 0)
    {
LABEL_14:
      if ((v9 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a2 + 2);
  *(this + 36) |= 2u;
  v13 = *(this + 2);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v9 = *(a2 + 36);
  if ((v9 & 4) == 0)
  {
LABEL_15:
    if ((v9 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(a2 + 3);
  *(this + 36) |= 4u;
  v15 = *(this + 3);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v9 = *(a2 + 36);
  if ((v9 & 8) == 0)
  {
LABEL_16:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = *(a2 + 8);
  *(this + 36) |= 8u;
  *(this + 8) = v16;
  v9 = *(a2 + 36);
  if ((v9 & 0x10) == 0)
  {
LABEL_17:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_40:
    v18 = *(a2 + 40);
    *(this + 36) |= 0x20u;
    *(this + 40) = v18;
    v9 = *(a2 + 36);
    if ((v9 & 0x40) == 0)
    {
LABEL_19:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_39:
  v17 = *(a2 + 9);
  *(this + 36) |= 0x10u;
  *(this + 9) = v17;
  v9 = *(a2 + 36);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_18:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_41:
  v19 = *(a2 + 11);
  *(this + 36) |= 0x40u;
  *(this + 11) = v19;
  v9 = *(a2 + 36);
  if ((v9 & 0x80) != 0)
  {
LABEL_20:
    v10 = *(a2 + 34);
    *(this + 36) |= 0x80u;
    *(this + 34) = v10;
    v9 = *(a2 + 36);
  }

LABEL_21:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v9 & 0x100) != 0)
  {
    v20 = *(a2 + 6);
    *(this + 36) |= 0x100u;
    v21 = *(this + 6);
    if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v21, v20);
    v9 = *(a2 + 36);
    if ((v9 & 0x200) == 0)
    {
LABEL_24:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_49;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v22 = *(a2 + 7);
  *(this + 36) |= 0x200u;
  v23 = *(this + 7);
  if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v9 = *(a2 + 36);
  if ((v9 & 0x400) == 0)
  {
LABEL_25:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_49:
  v24 = *(a2 + 8);
  *(this + 36) |= 0x400u;
  v25 = *(this + 8);
  if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v9 = *(a2 + 36);
  if ((v9 & 0x800) == 0)
  {
LABEL_26:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_52:
  v26 = *(a2 + 9);
  *(this + 36) |= 0x800u;
  v27 = *(this + 9);
  if (v27 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v9 = *(a2 + 36);
  if ((v9 & 0x1000) == 0)
  {
LABEL_27:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_55:
  v28 = *(a2 + 10);
  *(this + 36) |= 0x1000u;
  v29 = *(this + 10);
  if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v9 = *(a2 + 36);
  if ((v9 & 0x2000) == 0)
  {
LABEL_28:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30 = *(a2 + 11);
  *(this + 36) |= 0x2000u;
  *(this + 11) = v30;
  v9 = *(a2 + 36);
  if ((v9 & 0x8000) == 0)
  {
LABEL_29:
    if ((v9 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_62;
  }

LABEL_59:
  v31 = *(a2 + 15);
  *(this + 36) |= 0x8000u;
  v32 = *(this + 15);
  if (v32 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v32, v31);
  if ((*(a2 + 36) & 0x10000) != 0)
  {
LABEL_62:
    v33 = *(a2 + 16);
    *(this + 36) |= 0x10000u;
    v34 = *(this + 16);
    if (v34 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v34, v33);
  }
}

void sub_1001E0D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricFile::~MetricFile(awd::metrics::MetricFile *this)
{
  *this = off_1002B8678;
  awd::metrics::MetricFile::SharedDtor(this);
  sub_1000C8650(this + 12);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MetricFile::~MetricFile(this);

  operator delete();
}

void awd::metrics::MetricFile::SharedDtor(awd::metrics::MetricFile *this)
{
  v1 = *(this + 2);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(this + 3);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = *(this + 6);
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = *(this + 7);
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = *(this + 8);
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = *(this + 9);
  if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  v11 = *(this + 10);
  if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    operator delete();
  }

  v12 = *(this + 15);
  if (v12 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete();
  }

  v13 = *(this + 16);
  if (v13 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    operator delete();
  }

  awd::metrics::protobuf_AddDesc_MetricFile_2eproto(this);
}

uint64_t awd::metrics::MetricFile::Clear(awd::metrics::MetricFile *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 144) & 4) != 0)
    {
      v4 = *(this + 3);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    *(this + 11) = 0;
    *(this + 34) = 0;
    *(this + 4) = 0;
    *(this + 40) = 0;
    v2 = *(this + 36);
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(this + 6);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 2) != 0)
    {
      v6 = *(this + 7);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 4) != 0)
    {
      v7 = *(this + 8);
      if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 8) != 0)
    {
      v8 = *(this + 9);
      if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 145) & 0x10) != 0)
    {
      v9 = *(this + 10);
      if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 11) = 0;
    if ((*(this + 145) & 0x80) != 0)
    {
      v10 = *(this + 15);
      if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }
  }

  if (*(this + 146))
  {
    v11 = *(this + 16);
    if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
      }
    }
  }

  result = sub_1000C85E0(this + 96);
  *(this + 36) = 0;
  return result;
}

uint64_t awd::metrics::MetricFile::MergePartialFromCodedStream(awd::metrics::MetricFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2))
    {
      break;
    }

    TagFallback = *v5;
    if ((TagFallback & 0x80000000) != 0)
    {
      break;
    }

    *(a2 + 8) = TagFallback;
    *(a2 + 1) = v5 + 1;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v17 = *(this + 36) | 1;
        *(this + 36) = v17;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_50;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v17 = *(this + 36);
LABEL_50:
        *(this + 36) = v17 | 2;
        if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 26)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_56:
        *(this + 36) |= 4u;
        if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v24 >= v14 || *v24 != 32)
        {
          continue;
        }

        v20 = v24 + 1;
        *(a2 + 1) = v20;
LABEL_62:
        v56[0] = 0;
        if (v20 >= v14 || (v25 = *v20, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56);
          if (!result)
          {
            return result;
          }

          v25 = v56[0];
          v26 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v26 = v20 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 40) = v25 != 0;
        *(this + 36) |= 0x20u;
        if (v26 >= v14 || *v26 != 40)
        {
          continue;
        }

        v15 = v26 + 1;
        *(a2 + 1) = v15;
LABEL_70:
        if (v15 >= v14 || (v27 = *v15, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v27;
          v28 = v15 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 36) |= 0x40u;
        if (v28 >= v14 || *v28 != 48)
        {
          continue;
        }

        v18 = v28 + 1;
        *(a2 + 1) = v18;
LABEL_78:
        if (v18 >= v14 || (v29 = *v18, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v29;
          v30 = v18 + 1;
          *(a2 + 1) = v30;
        }

        v21 = *(this + 36) | 0x80;
        *(this + 36) = v21;
        if (v30 >= v14 || *v30 != 58)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_86:
        *(this + 36) = v21 | 0x800;
        if (*(this + 9) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 66)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_92:
        *(this + 36) |= 0x100u;
        if (*(this + 6) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 74)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_98:
        *(this + 36) |= 0x200u;
        if (*(this + 7) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 82)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_104:
        *(this + 36) |= 0x1000u;
        if (*(this + 10) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 90)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_110:
        *(this + 36) |= 0x400u;
        if (*(this + 8) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v35 >= v12 || *v35 != 96)
        {
          continue;
        }

        v19 = v35 + 1;
        *(a2 + 1) = v19;
LABEL_116:
        *v56 = 0;
        if (v19 >= v12 || (v36 = *v19, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v56);
          if (!result)
          {
            return result;
          }

          v36 = *v56;
          v37 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v37 = v19 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 11) = v36;
        *(this + 36) |= 0x2000u;
        if (v37 >= v12 || *v37 != 104)
        {
          continue;
        }

        v16 = v37 + 1;
        *(a2 + 1) = v16;
LABEL_124:
        if (v16 >= v12 || (v38 = *v16, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v38;
          v39 = v16 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 36) |= 8u;
        if (v39 >= v12 || *v39 != 112)
        {
          continue;
        }

        v13 = v39 + 1;
        *(a2 + 1) = v13;
LABEL_132:
        if (v13 >= v12 || (v40 = *v13, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v40;
          v41 = (v13 + 1);
          *(a2 + 1) = v41;
        }

        *(this + 36) |= 0x10u;
        if (v41 >= v12 || *v41 != 122)
        {
          continue;
        }

        break;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_56;
        }

        goto LABEL_42;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_62;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_70;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_78;
      case 7u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v21 = *(this + 36);
        goto LABEL_86;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_92;
        }

        goto LABEL_42;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_98;
        }

        goto LABEL_42;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_104;
        }

        goto LABEL_42;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_42;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_116;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_124;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_132;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_42;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_160;
        }

        goto LABEL_42;
      case 0x21u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_167;
      default:
LABEL_42:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    do
    {
      *(a2 + 1) = v41 + 1;
LABEL_140:
      v42 = *(this + 27);
      v43 = *(this + 26);
      if (v43 >= v42)
      {
        if (v42 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96), v42 + 1);
          v42 = *(this + 27);
        }

        *(this + 27) = v42 + 1;
        sub_1001E22DC();
      }

      v44 = *(this + 12);
      *(this + 26) = v43 + 1;
      v45 = *(v44 + 8 * v43);
      v56[0] = 0;
      v46 = *(a2 + 1);
      if (v46 >= *(a2 + 2) || *v46 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
        {
          return 0;
        }
      }

      else
      {
        v56[0] = *v46;
        *(a2 + 1) = v46 + 1;
      }

      v47 = *(a2 + 14);
      v48 = *(a2 + 15);
      *(a2 + 14) = v47 + 1;
      if (v47 >= v48)
      {
        return 0;
      }

      v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v56[0]);
      if (!awd::metrics::MetricLog::MergePartialFromCodedStream(v45, a2, v50) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v49);
      v51 = *(a2 + 14);
      v52 = __OFSUB__(v51, 1);
      v53 = v51 - 1;
      if (v53 < 0 == v52)
      {
        *(a2 + 14) = v53;
      }

      v41 = *(a2 + 1);
      v54 = *(a2 + 2);
    }

    while (v41 < v54 && *v41 == 122);
    if (v54 - v41 >= 2 && *v41 == 130 && v41[1] == 2)
    {
      *(a2 + 1) = v41 + 2;
LABEL_160:
      *(this + 36) |= 0x8000u;
      if (*(this + 15) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v55 = *(a2 + 1);
      if (*(a2 + 4) - v55 >= 2 && *v55 == 138 && v55[1] == 2)
      {
        *(a2 + 1) = v55 + 2;
LABEL_167:
        *(this + 36) |= 0x10000u;
        if (*(this + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
  *(a2 + 8) = TagFallback;
  if (TagFallback)
  {
    goto LABEL_6;
  }

  return 1;
}