uint64_t sub_1000177F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100070160, &qword_100057D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017864()
{
  result = qword_10006EEB8;
  if (!qword_10006EEB8)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EEB8);
  }

  return result;
}

id sub_1000178BC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100002814(&qword_10006F0B0, &qword_100057A80);
    sub_10000E5D8(0, &qword_100070180, NSError_ptr);
    if (swift_dynamicCast())
    {
      v1 = [v12 domain];
      v2 = sub_100050518();
      v4 = v3;

      if (sub_100050518() == v2 && v5 == v4)
      {
      }

      else
      {
        v7 = sub_1000509B8();

        if ((v7 & 1) == 0)
        {
          if (qword_10006E930 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B380;
LABEL_11:
          v9 = v8;

          return v9;
        }
      }

      switch([v12 code])
      {
        case 1uLL:
          if (qword_10006E940 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B390;
          break;
        case 2uLL:
          if (qword_10006E948 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B398;
          break;
        case 3uLL:
          if (qword_10006E950 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3A0;
          break;
        case 4uLL:
          if (qword_10006E958 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3A8;
          break;
        case 5uLL:
          if (qword_10006E960 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3B0;
          break;
        case 6uLL:
          if (qword_10006E968 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3B8;
          break;
        case 7uLL:
          if (qword_10006E970 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3C0;
          break;
        case 8uLL:
          if (qword_10006E978 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3C8;
          break;
        case 9uLL:
          if (qword_10006E980 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3D0;
          break;
        case 0xAuLL:
          if (qword_10006E988 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3D8;
          break;
        case 0xBuLL:
          if (qword_10006E990 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3E0;
          break;
        case 0xCuLL:
          if (qword_10006E998 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3E8;
          break;
        case 0xDuLL:
          if (qword_10006E9A0 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3F0;
          break;
        case 0xEuLL:
          if (qword_10006E9A8 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3F8;
          break;
        case 0xFuLL:
          if (qword_10006E9B0 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B400;
          break;
        default:
          if (qword_10006E938 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B388;
          break;
      }

      goto LABEL_11;
    }
  }

  if (qword_10006E930 != -1)
  {
    swift_once();
  }

  v11 = qword_10007B380;

  return v11;
}

uint64_t sub_100017EA8(uint64_t a1)
{
  v2 = sub_100050518();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_10004A138(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_100015440(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100017F70()
{
  result = qword_100070188;
  if (!qword_100070188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070188);
  }

  return result;
}

uint64_t sub_100017FC8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_100050518();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v6 = sub_10004A138(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_100015440(*(a1 + 56) + 32 * v6, v11);
  sub_100017F70();
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018078(uint64_t a1)
{
  v2 = sub_100002814(&unk_100070190, &qword_100058E20);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v71 = &v68 - v7;
  v8 = __chkstk_darwin(v6);
  v70 = &v68 - v9;
  v10 = __chkstk_darwin(v8);
  v69 = &v68 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v68 - v19;
  __chkstk_darwin(v18);
  v22 = &v68 - v21;
  v76 = 0;
  v77 = 0xE000000000000000;
  v74 = a1;
  sub_100018B18(a1, &v68 - v21);
  v23 = sub_1000502F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v22, 1, v23);
  v73 = v24;
  if (v26 == 1)
  {
    sub_100018B88(v22);
  }

  else
  {
    v27 = sub_1000502A8();
    v29 = v28;
    (*(v24 + 8))(v22, v23);
    if (v29)
    {
      v78._countAndFlagsBits = v27;
      v78._object = v29;
      sub_100050578(v78);
    }
  }

  v79._countAndFlagsBits = 58;
  v79._object = 0xE100000000000000;
  sub_100050578(v79);
  sub_100018B18(v74, v20);
  if (v25(v20, 1, v23) == 1)
  {
    sub_100018B88(v20);
  }

  else
  {
    v30 = sub_100050268();
    v32 = v31;
    (*(v73 + 8))(v20, v23);
    if (v32)
    {
      v80._countAndFlagsBits = v30;
      v80._object = v32;
      sub_100050578(v80);
    }
  }

  v81._countAndFlagsBits = 124;
  v81._object = 0xE100000000000000;
  sub_100050578(v81);
  v33 = v74;
  sub_100018B18(v74, v17);
  if (v25(v17, 1, v23) == 1)
  {
    sub_100018B88(v17);
    v34 = v73;
  }

  else
  {
    v35 = sub_100050258();
    v37 = v36;
    v34 = v73;
    (*(v73 + 8))(v17, v23);
    if (v37)
    {
      v82._countAndFlagsBits = v35;
      v82._object = v37;
      sub_100050578(v82);
    }
  }

  v83._countAndFlagsBits = 58;
  v83._object = 0xE100000000000000;
  sub_100050578(v83);
  sub_100018B18(v33, v14);
  v38 = v25(v14, 1, v23);
  v39 = v70;
  if (v38 == 1)
  {
    sub_100018B88(v14);
  }

  else
  {
    v40 = sub_100050248();
    v42 = v41;
    (*(v34 + 8))(v14, v23);
    if (v42)
    {
      v84._countAndFlagsBits = v40;
      v84._object = v42;
      sub_100050578(v84);
    }
  }

  v85._countAndFlagsBits = 124;
  v85._object = 0xE100000000000000;
  sub_100050578(v85);
  v43 = v69;
  sub_100018B18(v33, v69);
  v44 = v25(v43, 1, v23);
  v45 = v71;
  if (v44 == 1)
  {
    sub_100018B88(v43);
  }

  else
  {
    v46 = v43;
    v47 = sub_1000502B8();
    v49 = v48;
    (*(v34 + 8))(v46, v23);
    if (v49)
    {
      v86._countAndFlagsBits = v47;
      v86._object = v49;
      sub_100050578(v86);
    }
  }

  v87._countAndFlagsBits = 58;
  v87._object = 0xE100000000000000;
  sub_100050578(v87);
  sub_100018B18(v33, v39);
  if (v25(v39, 1, v23) == 1)
  {
    sub_100018B88(v39);
  }

  else
  {
    v50 = sub_100050288();
    v52 = v51;
    (*(v34 + 8))(v39, v23);
    if (v52)
    {
      v88._countAndFlagsBits = v50;
      v88._object = v52;
      sub_100050578(v88);
    }
  }

  v89._countAndFlagsBits = 124;
  v89._object = 0xE100000000000000;
  sub_100050578(v89);
  sub_100018B18(v33, v45);
  if (v25(v45, 1, v23) == 1)
  {
    sub_100018B88(v45);
  }

  else
  {
    v53 = sub_1000502C8();
    v55 = v54;
    (*(v34 + 8))(v45, v23);
    if (v55)
    {
      v90._countAndFlagsBits = v53;
      v90._object = v55;
      sub_100050578(v90);
    }
  }

  v91._countAndFlagsBits = 58;
  v91._object = 0xE100000000000000;
  sub_100050578(v91);
  v56 = v72;
  sub_100018B18(v33, v72);
  if (v25(v56, 1, v23) == 1)
  {
    sub_100018B88(v56);
  }

  else
  {
    v57 = sub_100050298();
    v59 = v58;
    (*(v34 + 8))(v56, v23);
    if (v59)
    {
      v92._countAndFlagsBits = v57;
      v92._object = v59;
      sub_100050578(v92);
    }
  }

  v93._countAndFlagsBits = 124;
  v93._object = 0xE100000000000000;
  sub_100050578(v93);
  if (qword_10006EA18 != -1)
  {
    swift_once();
  }

  v60 = sub_100050188();
  sub_1000071F4(v60, qword_10007B540);
  v61 = v76;
  v62 = v77;

  v63 = sub_100050168();
  v64 = sub_100050718();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v75 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_100046C30(v61, v62, &v75);
    _os_log_impl(&_mh_execute_header, v63, v64, "Calculate model info string = %s", v65, 0xCu);
    sub_10000CC70(v66);
  }

  return v61;
}

uint64_t sub_1000187F0(uint64_t a1)
{
  v2 = sub_100050518();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_10004A138(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v4, v30), !swift_dynamicCast()))
  {
LABEL_6:
    v29 = 0;
    v7 = sub_100050518();
    if (*(a1 + 16))
    {
      v9 = sub_10004A138(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v9, v30), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        v31._countAndFlagsBits = 58;
        v31._object = 0xE100000000000000;
        sub_100050578(v31);
        v12 = sub_100050518();
        if (*(a1 + 16))
        {
          v14 = sub_10004A138(v12, v13);
          v16 = v15;

          if ((v16 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v14, v30), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            v32._countAndFlagsBits = 124;
            v32._object = 0xE100000000000000;
            sub_100050578(v32);
            v17 = sub_100050518();
            if (*(a1 + 16))
            {
              v19 = sub_10004A138(v17, v18);
              v21 = v20;

              if ((v21 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v19, v30), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                v33._countAndFlagsBits = 58;
                v33._object = 0xE100000000000000;
                sub_100050578(v33);
                v22 = sub_100050518();
                if (*(a1 + 16))
                {
                  v24 = sub_10004A138(v22, v23);
                  v26 = v25;

                  if ((v26 & 1) == 0)
                  {
                    return v29;
                  }

                  sub_100015440(*(a1 + 56) + 32 * v24, v30);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v29;
                  }

                  sub_100050578(v28);
                }

                return v29;
              }

              sub_100050578(v28);
            }

            goto LABEL_21;
          }

          sub_100050578(v28);
        }

        goto LABEL_16;
      }

      sub_100050578(v28);
    }

    goto LABEL_11;
  }

  return v29;
}

uint64_t sub_100018B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&unk_100070190, &qword_100058E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B88(uint64_t a1)
{
  v2 = sub_100002814(&unk_100070190, &qword_100058E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018C0C()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100018CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_100018D6C()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  if (*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10004FB58();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100018EB4()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);

  return v1;
}

uint64_t sub_100018F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  a2[1] = v4;
}

uint64_t sub_100019028(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  v6 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);
      if (sub_1000509B8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000191E0()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);
}

uint64_t sub_10001928C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);
}

uint64_t sub_100019340(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }
}

uint64_t sub_1000194B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (sub_10000D730(*(v2 + *a2), a1))
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }
}

uint64_t sub_100019614@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1000196CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots;
  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots);

  v6 = sub_10000DC80(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }
}

uint64_t sub_10001983C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
}

uint64_t sub_1000198E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse);
}

uint64_t sub_100019994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB48();
}

uint64_t sub_100019AC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_100002814(&qword_100070160, &qword_100057D20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  sub_100005070(a1, &v14 - v10, &qword_100070160, &qword_100057D20);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_100019B9C(uint64_t a1, uint64_t *a2)
{
  v5 = sub_100002814(&qword_100070160, &qword_100057D20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v12 - v7;
  v9 = *a2;
  swift_beginAccess();
  sub_100005070(v2 + v9, v8, &qword_100070160, &qword_100057D20);
  LOBYTE(a2) = sub_10001D5D0(v8, a1);
  sub_10000CBA0(v8, &qword_100070160, &qword_100057D20);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-2] = v2;
    v12[-1] = a1;
    v12[2] = v2;
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }

  else
  {
    sub_100005070(a1, v8, &qword_100070160, &qword_100057D20);
    swift_beginAccess();
    sub_10001D9C0(v8, v2 + v9);
    swift_endAccess();
  }

  return sub_10000CBA0(a1, &qword_100070160, &qword_100057D20);
}

uint64_t sub_100019DA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_10001DAB8(a2, a1 + v5, &qword_100070160, &qword_100057D20);
  return swift_endAccess();
}

uint64_t sub_100019E68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  return *(v2 + *a2);
}

uint64_t sub_100019F08@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100019FE4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();
  }

  return result;
}

void *sub_10001A0E8()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  v2 = v1;
  return v1;
}

id sub_10001A198@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  *a2 = v4;

  return v4;
}

void sub_10001A258(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_10001A40C(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v37 - v8);
  v10 = sub_10004FAD8();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v37 = &v37 - v15;
  v16 = __chkstk_darwin(v14);
  v38 = &v37 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - v19;
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  swift_getKeyPath();
  v43 = v1;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v23 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(v1 + v23, v9, &qword_1000711B0, &qword_100057D28);
  v24 = type metadata accessor for CompositionModel.Session(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v9, 1, v24))
  {
    v26 = v41;
    sub_10000CBA0(v9, &qword_1000711B0, &qword_100057D28);
    sub_100005070(v40, v7, &qword_1000711B0, &qword_100057D28);
    if (v25(v7, 1, v24) == 1)
    {
      return sub_10000CBA0(v7, &qword_1000711B0, &qword_100057D28);
    }

    else
    {
      v32 = *v7;
      sub_10001D2F4(v7);
      v33 = [v32 uuid];

      v34 = v37;
      sub_10004FAB8();

      v35 = v38;
      (*(v26 + 32))(v38, v34, v10);
      if (qword_10006E9C8 != -1)
      {
        swift_once();
      }

      v36 = v39;
      (*(v26 + 16))(v39, v35, v10);
      swift_beginAccess();
      sub_100047CC8(0, v36);
      swift_endAccess();
      return (*(v26 + 8))(v35, v10);
    }
  }

  else
  {
    v28 = *v9;
    sub_10000CBA0(v9, &qword_1000711B0, &qword_100057D28);
    v29 = [v28 uuid];

    sub_10004FAB8();
    v30 = v41;
    (*(v41 + 32))(v22, v20, v10);
    if (qword_10006E9C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = qword_10007B420;
    qword_10007B420 = 0x8000000000000000;
    sub_10004C37C(v2, v22, isUniquelyReferenced_nonNull_native);
    qword_10007B420 = v42;
    swift_endAccess();
    return (*(v30 + 8))(v22, v10);
  }
}

uint64_t sub_10001A97C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v9 = *a1;
  swift_beginAccess();
  return sub_100005070(v11 + v9, a4, a2, a3);
}

uint64_t sub_10001AA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v10 = *a2;
  swift_beginAccess();
  return sub_100005070(v9 + v10, a5, a3, a4);
}

uint64_t sub_10001AB40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_100005070(a1, &v10[-v6], &qword_1000711B0, &qword_100057D28);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB48();

  return sub_10000CBA0(v7, &qword_1000711B0, &qword_100057D28);
}

uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_100005070(a2, &v13[-v9], &qword_1000711B0, &qword_100057D28);
  v11 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(a1 + v11, v8, &qword_1000711B0, &qword_100057D28);
  swift_beginAccess();
  sub_10001DAB8(v10, a1 + v11, &qword_1000711B0, &qword_100057D28);
  swift_endAccess();
  sub_10001A40C(v8);
  sub_10000CBA0(v8, &qword_1000711B0, &qword_100057D28);
  return sub_10000CBA0(v10, &qword_1000711B0, &qword_100057D28);
}

unint64_t sub_10001ADF0()
{
  result = sub_100004A78(&_swiftEmptyArrayStorage);
  qword_10007B420 = result;
  return result;
}

void sub_10001AE18(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for CompositionModel.Session(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v19 = sub_100018D6C();
    if (v19)
    {
      v20 = v19;
      if ([v19 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
      {
        v54 = nullsub_1;
        v55 = 0;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_10001B644;
        v53 = &unk_10006B0F0;
        v21 = _Block_copy(&aBlock);
        [v20 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v21];
        swift_unknownObjectRelease();
        _Block_release(v21);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_getKeyPath();
    aBlock = v5;
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
    sub_10004FB58();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v30 = sub_10004F958();
      [v29 endWritingToolsWithError:v30];

      swift_unknownObjectRelease();
    }

    return;
  }

  swift_getKeyPath();
  aBlock = v4;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB58();

  v22 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(v5 + v22, v13, &qword_1000711B0, &qword_100057D28);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CBA0(v13, &qword_1000711B0, &qword_100057D28);
    if (qword_10006EA20 != -1)
    {
      swift_once();
    }

    v23 = sub_100050188();
    sub_1000071F4(v23, qword_10007B558);
    v24 = sub_100050168();
    v25 = sub_100050738();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100046C30(0xD00000000000001FLL, 0x8000000100052850, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s is called without session. The session may have been ended by a different view trying to start a new session", v26, 0xCu);
      sub_10000CC70(v27);
    }

    if (a3)
    {
      a3();
    }

    return;
  }

  sub_10001D290(v13, v18);
  if (qword_10006EA20 != -1)
  {
    swift_once();
  }

  v31 = sub_100050188();
  sub_1000071F4(v31, qword_10007B558);
  v32 = sub_100050168();
  v33 = sub_100050758();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109120;
    if (a1 == 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = a1 & 1;
    }

    *(v34 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v32, v33, "Ending WT session, accepted: %{BOOL}d", v34, 8u);
  }

  if (v18[2])
  {
    v49 = a3;
    v36 = a4;
    sub_100050338();
    v37 = sub_100050168();
    v38 = sub_100050758();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Ending GES session", v39, 2u);
    }

    sub_100050348();
    v40 = sub_100050328();

    a4 = v36;
    a3 = v49;
    if (v40)
    {
      goto LABEL_32;
    }

    v41 = sub_100050168();
    v42 = sub_100050738();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "GES session termination returned failure";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);
    }
  }

  else
  {
    v41 = sub_100050168();
    v42 = sub_100050758();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "No GES session to end";
      goto LABEL_30;
    }
  }

LABEL_32:
  v45 = sub_100018D6C();
  if (v45)
  {
    v46 = v45;
    if ([v45 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v54 = nullsub_1;
      v55 = 0;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10001B644;
      v53 = &unk_10006B0C8;
      v47 = _Block_copy(&aBlock);
      [v46 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v47];
      swift_unknownObjectRelease();
      _Block_release(v47);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v48 = sub_100018D6C();
  if (v48)
  {
    [v48 didEndWritingToolsSession:*v18 accepted:(a1 == 2) | (a1 & 1)];
    swift_unknownObjectRelease();
  }

  sub_10001B688(v18, v5, a3, a4);
  sub_10001D2F4(v18);
}

uint64_t sub_10001B644(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10001B688(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v40[1] = a4;
  v42 = a3;
  v6 = sub_100002814(&qword_100070160, &qword_100057D20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = v40 - v8;
  v9 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v40 - v11;
  v13 = sub_100002814(&qword_100071090, &qword_100057BB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v40 - v15;
  v17 = sub_100002814(&qword_100071120, qword_100057BC0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v40 - v20;
  v22 = type metadata accessor for CompositionModel.Session(0);
  sub_100005070(a1 + *(v22 + 28), v16, &qword_100071090, &qword_100057BB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CBA0(v16, &qword_100071090, &qword_100057BB0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    if (qword_10006EA20 != -1)
    {
      swift_once();
    }

    v23 = sub_100050188();
    sub_1000071F4(v23, qword_10007B558);
    v24 = sub_100050168();
    v25 = sub_100050728();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "user reverted while continuation was still active", v26, 2u);
    }

    sub_10001D55C();
    v27 = swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    v43 = v27;
    sub_100050638();
    (*(v18 + 8))(v21, v17);
  }

  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v40[-2] = a2;
  v40[-1] = v12;
  v43 = a2;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel);
  sub_10004FB48();

  sub_10000CBA0(v12, &qword_1000711B0, &qword_100057D28);
  v30 = (a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  if (*(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8))
  {
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    v40[-3] = 0;
    v40[-2] = 0;
    v40[-4] = a2;
    v43 = a2;
    sub_10004FB48();
  }

  else
  {
    *v30 = 0;
    v30[1] = 0;
  }

  sub_100019490(&_swiftEmptyArrayStorage);
  sub_1000191B8(&_swiftEmptyArrayStorage);
  if (*(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse))
  {
    v32 = swift_getKeyPath();
    __chkstk_darwin(v32);
    v40[-2] = a2;
    v40[-1] = 0;
    v43 = a2;
    sub_10004FB48();
  }

  swift_getKeyPath();
  v43 = a2;
  sub_10004FB58();

  v43 = a2;
  swift_getKeyPath();
  sub_10004FB78();

  v33 = *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse);
  *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse) = &_swiftEmptyDictionarySingleton;

  v43 = a2;
  swift_getKeyPath();
  sub_10004FB68();

  swift_getKeyPath();
  v43 = a2;
  sub_10004FB58();

  v43 = a2;
  swift_getKeyPath();
  sub_10004FB78();

  v34 = *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots);
  *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots) = &_swiftEmptyArrayStorage;

  v43 = a2;
  swift_getKeyPath();
  sub_10004FB68();

  swift_getKeyPath();
  v43 = a2;
  sub_10004FB58();

  v35 = *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);

  sub_100045880();

  v36 = sub_10004FAD8();
  v37 = *(*(v36 - 8) + 56);
  v38 = v41;
  v37(v41, 1, 1, v36);
  sub_100019A74(v38);
  v37(v38, 1, 1, v36);
  result = sub_100019B74(v38);
  if (v42)
  {
    return v42(result);
  }

  return result;
}

uint64_t sub_10001BE40()
{
  v1 = v0;
  v2 = *(*(sub_10004FB38() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_1000504D8() - 8) + 64);
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__state) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inclusionPolicy) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__prompt);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__resultAttributedString) = 0;
  v6 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__resultAttributedStringRange;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inputStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__promptStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachments) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__generatedImages) = &_swiftEmptyArrayStorage;
  v7 = sub_10001D0E0();
  v8 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__modelInfoString);
  *v8 = v7;
  v8[1] = v9;
  v10 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__allowedResultOptions) = 0;
  v11 = type metadata accessor for AttachmentManager(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = &_swiftEmptyArrayStorage;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0;
  *(v14 + 64) = &_swiftEmptyArrayStorage;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) = v14;
  v15 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_education;
  v16 = type metadata accessor for CompositionEducationModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0xD000000000000010;
  *(v19 + 24) = 0x8000000100052880;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  v20 = [objc_allocWithZone(NSUserDefaults) init];
  v21 = sub_1000504E8();
  v22 = [v20 BOOLForKey:v21];

  *(v19 + 32) = v22;
  *(v0 + v15) = v19;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__refinements) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse) = sub_10000396C(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedSlotSourceIds) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slotParser) = 0;
  v23 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID;
  v24 = sub_10004FAD8();
  v25 = *(*(v24 - 8) + 56);
  v25(v1 + v23, 1, 1, v24);
  v25(v1 + v23, 1, 1, v24);
  v26 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID;
  v25(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, 1, 1, v24);
  v25(v1 + v26, 1, 1, v24);
  sub_100050068();
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isFeatureEnabled) = sub_100050058() & 1;
  v27 = type metadata accessor for CompositionRateLimitModel();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  sub_100050468();
  sub_10004FB08();
  *(v30 + 24) = sub_100050528();
  *(v30 + 32) = v31;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__rateLimitModel) = v30;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__wantsInlineEditing) = 1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isForEditableContent) = 1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isWebKitView) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__hasGeneratedResponseDrafts) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__activeGeneratedResponseIndex) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isHandoff) = 0;
  v32 = v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *v32 = 0;
  *(v32 + 24) = -1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__showingOriginal) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__allWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonSelectedWordCount) = 0;
  v33 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  v34 = type metadata accessor for CompositionModel.Session(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v1 + v33, 1, 1, v34);
  v35(v1 + v33, 1, 1, v34);
  v36 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_userInfoSearcher;
  type metadata accessor for UserInfoSearcher();
  swift_allocObject();
  *(v1 + v36) = sub_10001E548();
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = -1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  return v1;
}

uint64_t sub_10001C41C()
{
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__delegate);
  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__prompt + 8);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inputStringsForFeedback);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__promptStringsForFeedback);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachments);

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__generatedImages);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__modelInfoString + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);

  v9 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_education);

  v10 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__refinements);

  v11 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots);

  v12 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse);

  v13 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedSlotSourceIds);

  v14 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slotParser);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID, &qword_100070160, &qword_100057D20);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, &qword_100070160, &qword_100057D20);
  v15 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__rateLimitModel);

  sub_100013054(*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 24));
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session, &qword_1000711B0, &qword_100057D28);
  v16 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_userInfoSearcher);

  v17 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel___observationRegistrar;
  v18 = sub_10004FB98();
  v19 = *(*(v18 - 8) + 8);

  return v19(v0 + v17, v18);
}

uint64_t sub_10001C664()
{
  v0 = ToolModel.deinit();
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__delegate);
  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__prompt + 8);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inputStringsForFeedback);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__promptStringsForFeedback);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachments);

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__generatedImages);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__modelInfoString + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);

  v9 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_education);

  v10 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__refinements);

  v11 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots);

  v12 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse);

  v13 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedSlotSourceIds);

  v14 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slotParser);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID, &qword_100070160, &qword_100057D20);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, &qword_100070160, &qword_100057D20);
  v15 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__rateLimitModel);

  sub_100013054(*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 24));
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session, &qword_1000711B0, &qword_100057D28);
  v16 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_userInfoSearcher);

  v17 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel___observationRegistrar;
  v18 = sub_10004FB98();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  return v0;
}

uint64_t sub_10001C8AC()
{
  v0 = *sub_10001C664();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10001C928()
{
  sub_10001CB34(319, &qword_100070020, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10001CB34(319, &unk_100070310, type metadata accessor for CompositionModel.Session);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_10004FB98();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001CB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000507E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001CBA8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CC14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002814(&qword_100071090, &qword_100057BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10001CCE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002814(&qword_100071090, &qword_100057BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001CD94()
{
  sub_10000E5D8(319, &unk_100071100, WTSession_ptr);
  if (v0 <= 0x3F)
  {
    sub_10000E5D8(319, &qword_10006F748, WTContext_ptr);
    if (v1 <= 0x3F)
    {
      sub_10001CB34(319, &qword_100071110, &type metadata accessor for GenerativeExperiencesSession);
      if (v2 <= 0x3F)
      {
        sub_10001CEA4();
        if (v3 <= 0x3F)
        {
          sub_10001CF08();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001CEA4()
{
  if (!qword_100071118)
  {
    sub_1000028C0(&qword_100071120, qword_100057BC0);
    v0 = sub_1000507E8();
    if (!v1)
    {
      atomic_store(v0, &qword_100071118);
    }
  }
}

void sub_10001CF08()
{
  if (!qword_100071128)
  {
    sub_10000E5D8(255, &qword_100071130, NSAttributedString_ptr);
    v0 = sub_1000507E8();
    if (!v1)
    {
      atomic_store(v0, &qword_100071128);
    }
  }
}

unint64_t sub_10001CF74()
{
  result = qword_100071170;
  if (!qword_100071170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071170);
  }

  return result;
}

unint64_t sub_10001CFCC()
{
  result = qword_100071178;
  if (!qword_100071178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071178);
  }

  return result;
}

unint64_t sub_10001D024()
{
  result = qword_100071180;
  if (!qword_100071180)
  {
    sub_1000028C0(&qword_100071188, qword_100057C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071180);
  }

  return result;
}

unint64_t sub_10001D08C()
{
  result = qword_100071190;
  if (!qword_100071190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071190);
  }

  return result;
}

uint64_t sub_10001D0E0()
{
  sub_10004FFE8();
  sub_10004FFD8();
  sub_10004FFC8();

  if (v7)
  {
    sub_1000050D8(&v6, v8);
    sub_10000D634(v8, v8[3]);
    v0 = sub_10004FFF8();
    sub_10000CC70(v8);
  }

  else
  {
    sub_10000CBA0(&v6, &qword_100071198, &unk_100057D10);
    if (qword_10006EA08 != -1)
    {
      swift_once();
    }

    v1 = sub_100050188();
    sub_1000071F4(v1, qword_10007B510);
    v2 = sub_100050168();
    v3 = sub_100050738();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No LLM is available to show", v4, 2u);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_10001D290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D2F4(uint64_t a1)
{
  v2 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001D350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001D3A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10001D460(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100019340(v4);
}

void sub_10001D490(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10001A258(v2);
}

void sub_10001D4C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse) = v2;
  v4 = v2;
}

uint64_t sub_10001D504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100019028(v2, v3);
}

unint64_t sub_10001D55C()
{
  result = qword_1000711C0;
  if (!qword_1000711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711C0);
  }

  return result;
}

uint64_t sub_10001D5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004FAD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002814(&qword_100070160, &qword_100057D20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002814(&qword_1000711C8, &qword_100057EC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100005070(a1, &v24 - v16, &qword_100070160, &qword_100057D20);
  sub_100005070(a2, &v17[v18], &qword_100070160, &qword_100057D20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100005070(v17, v12, &qword_100070160, &qword_100057D20);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10001DB20(&unk_1000711D0, &type metadata accessor for UUID);
      v21 = sub_100050448();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_10000CBA0(v17, &qword_100070160, &qword_100057D20);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10000CBA0(v17, &qword_1000711C8, &qword_100057EC0);
    v20 = 1;
    return v20 & 1;
  }

  sub_10000CBA0(v17, &qword_100070160, &qword_100057D20);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10001D9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100070160, &qword_100057D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001DC50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_10001DCA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) = *(v0 + 24);
}

uint64_t sub_10001DD48(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_10001DD8C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10001DDD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001DDF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DE4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10001DE9C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001DF20(void *a1)
{
  v3 = v1;
  v5 = sub_100002814(&qword_100071298, &qword_100058138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000D634(a1, a1[3]);
  sub_10001EA90();
  sub_100050AC8();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_100050978();
  if (!v2)
  {
    v19 = v3[2];
    HIBYTE(v18) = 1;
    sub_100002814(&qword_1000712A8, &qword_100058140);
    sub_10001EAE4(&qword_1000712B0, &qword_1000712A8, &qword_100058140);
    sub_100050988();
    v19 = v3[3];
    HIBYTE(v18) = 2;
    sub_100002814(&qword_1000712B8, &qword_100058148);
    sub_10001EAE4(&qword_1000712C0, &qword_1000712B8, &qword_100058148);
    sub_100050988();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v19) = 3;
    sub_100050968();
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v19) = 4;
    sub_100050968();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10001E1AC(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  sub_100050568();
  v6 = v2[2];
  v7 = *(v6 + 16);
  sub_100050A88(v7);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_100050568();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_10001E798(a1, v2[3]);
  if (!v2[5])
  {
    sub_100050A98(0);
    if (v2[7])
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100050A98(0);
    return;
  }

  v11 = v2[4];
  sub_100050A98(1u);
  sub_100050568();
  if (!v2[7])
  {
    goto LABEL_10;
  }

LABEL_6:
  v12 = v2[6];
  sub_100050A98(1u);

  sub_100050568();
}

uint64_t sub_10001E2BC()
{
  v1 = *v0;
  v2 = 0x736E4174726F6873;
  v3 = 0x4449656372756F73;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x676F6C616964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001E35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001ED9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E390(uint64_t a1)
{
  v2 = sub_10001EA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E3CC(uint64_t a1)
{
  v2 = sub_10001EA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E420(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10001E8F4(v7, v8) & 1;
}

Swift::Int sub_10001E46C()
{
  sub_100050A78();
  sub_10001E1AC(v1);
  return sub_100050AA8();
}

Swift::Int sub_10001E4B0()
{
  sub_100050A78();
  sub_10001E1AC(v1);
  return sub_100050AA8();
}

uint64_t sub_10001E4EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10001E548()
{
  v1 = sub_10004FEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100002814(&qword_100071280, &qword_100058048) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = sub_10004FF18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultEnvironment];
  v18[3] = sub_10001E9DC();
  v18[4] = &protocol witness table for LNEnvironment;
  v18[0] = v12;
  sub_10004FED8();
  (*(v2 + 104))(v5, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  sub_10004FF08();
  v13 = sub_10004FEF8();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  sub_10000CC70(v18);
  *(v0 + 16) = v13;
  *(v0 + 24) = v15;
  return v0;
}

void sub_10001E798(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  sub_100050AA8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_100050A78();

    sub_100050568();
    v14 = sub_100050AA8();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_100050A88(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10001E8F4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1000509B8() & 1) == 0 || (sub_10000D730(a1[2], a2[2]) & 1) == 0 || (sub_10000E060(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  if (v5)
  {
    if (!v6 || (a1[4] != a2[4] || v5 != v6) && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a2[7];
  if (v7)
  {
    if (v8 && (a1[6] == a2[6] && v7 == v8 || (sub_1000509B8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10001E9DC()
{
  result = qword_100071288;
  if (!qword_100071288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071288);
  }

  return result;
}

unint64_t sub_10001EA3C()
{
  result = qword_100071290;
  if (!qword_100071290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071290);
  }

  return result;
}

unint64_t sub_10001EA90()
{
  result = qword_1000712A0;
  if (!qword_1000712A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712A0);
  }

  return result;
}

uint64_t sub_10001EAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EC98()
{
  result = qword_1000712C8;
  if (!qword_1000712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712C8);
  }

  return result;
}

unint64_t sub_10001ECF0()
{
  result = qword_1000712D0;
  if (!qword_1000712D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D0);
  }

  return result;
}

unint64_t sub_10001ED48()
{
  result = qword_1000712D8;
  if (!qword_1000712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D8);
  }

  return result;
}

uint64_t sub_10001ED9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E4174726F6873 && a2 == 0xEB00000000726577;
  if (v4 || (sub_1000509B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE900000000000073 || (sub_1000509B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000509B8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001EF50(uint64_t a1)
{
  v2 = sub_10001F698(a1);
  v3 = [v2 domain];

  v4 = sub_100050518();
  v6 = v5;

  if (v4 == sub_100050518() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1000509B8();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = sub_10001F698(a1);
    v12 = [v11 code];

    v13 = vdupq_n_s64(v12);
    return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100069FD0, v13), vceqq_s64(unk_100069FE0, v13)), vuzp1q_s32(vceqq_s64(xmmword_100069FF0, v13), vceqq_s64(unk_10006A000, v13))))) & 1;
  }

  return result;
}

uint64_t sub_10001F088(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001F698(v5);
  v9 = [v8 domain];

  v10 = sub_100050518();
  v12 = v11;

  if (v10 == sub_100050518() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = sub_1000509B8();

  if (v15)
  {
LABEL_9:
    v18 = sub_10001F698(a1);
    v19 = [v18 code];

    v17 = v19 == 35;
    return v17 & 1;
  }

  (*(v3 + 16))(v7, v1, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {
    v16 = v21[1];
    v17 = sub_1000503F8();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

id sub_10001F260(uint64_t a1, uint64_t a2)
{
  sub_100004808(&_swiftEmptyArrayStorage);
  v4 = sub_100050518();
  v6 = v5;
  v7 = sub_10001F7E0(a1, a2);
  v9 = v8;

  v35 = &type metadata for String;
  *&v34 = v7;
  *(&v34 + 1) = v9;
  sub_100005060(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C(v33, v4, v6, isUniquelyReferenced_nonNull_native);

  sub_10001F7E0(a1, a2);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v15 = sub_100050518();
    v17 = v16;
    v35 = &type metadata for String;
    *&v34 = v12;
    *(&v34 + 1) = v14;
    sub_100005060(&v34, v33);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, v15, v17, v18);
  }

  if (sub_100020C34(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD000000000000021, 0x80000001000529E0, v19);
  }

  if (sub_100020F44(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD00000000000001DLL, 0x80000001000529C0, v20);
  }

  if (sub_1000210A8(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD000000000000015, 0x80000001000529A0, v21);
  }

  v22 = sub_100050A28();
  v35 = &type metadata for String;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  sub_100005060(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C(v33, 0xD00000000000001DLL, 0x8000000100052980, v24);
  v25 = sub_10001F698(a1);
  v26 = [v25 domain];

  if (!v26)
  {
    sub_100050518();
    v26 = sub_1000504E8();
  }

  v27 = sub_10001F698(a1);
  v28 = [v27 code];

  v29 = objc_allocWithZone(NSError);
  isa = sub_100050408().super.isa;

  v31 = [v29 initWithDomain:v26 code:v28 userInfo:isa];

  return v31;
}

uint64_t sub_10001F634()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B438);
  sub_1000071F4(v0, qword_10007B438);
  return sub_10004F978();
}

uint64_t sub_10001F698(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (sub_1000509A8())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = sub_10004F958();

  return v8;
}

uint64_t sub_10001F7E0(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v88 = sub_100050078();
  v84 = *(v88 - 8);
  v3 = *(v84 + 64);
  __chkstk_darwin(v88);
  v87 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000504B8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v90 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_1000712E0, &qword_100058268);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v95 = v74 - v11;
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v80 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v92 = v74 - v17;
  __chkstk_darwin(v16);
  v19 = v74 - v18;
  v103 = sub_1000500A8();
  v97 = *(v103 - 8);
  v20 = *(v97 + 64);
  __chkstk_darwin(v103);
  v91 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004FB38();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000504D8();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050468();
  sub_10004FB08();
  v79 = sub_100050528();
  v101 = v30;
  sub_100050468();
  sub_10004FB08();
  v78 = sub_100050528();
  v102 = v31;
  v85 = "Try a longer selection.";
  v86 = 0xD000000000000011;
  sub_100050468();
  sub_10004FB08();
  v83 = sub_100050528();
  v99 = v32;
  sub_100050468();
  sub_10004FB08();
  v82 = sub_100050528();
  v96 = v33;
  sub_100050468();
  sub_10004FB08();
  v75 = sub_100050528();
  v100 = v34;
  sub_100050468();
  sub_10004FB08();
  v74[1] = sub_100050528();
  v36 = v35;
  v76 = "nticationErrorKey";
  sub_100050468();
  sub_10004FB08();
  v81 = sub_100050528();
  v38 = v37;
  sub_100050468();
  sub_10004FB08();
  v93 = v29;
  v94 = v25;
  v77 = sub_100050528();
  v40 = v39;
  v41 = *(v12 + 16);
  v42 = v98;
  v41(v19);
  v43 = v95;
  v44 = v103;
  if (swift_dynamicCast())
  {

    v45 = v97;
    (*(v97 + 56))(v43, 0, 1, v44);
    v46 = v91;
    (*(v45 + 32))(v91, v43, v44);
    v47 = sub_100050088();
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      sub_1000504A8();
      v106._countAndFlagsBits = 0x65736E6F70736552;
      v106._object = 0xEE00206D6F726620;
      sub_100050498(v106);
      v107._countAndFlagsBits = sub_10001D0E0();
      sub_100050488(v107);

      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      sub_100050498(v108);
      sub_1000504C8();
      sub_10004FB08();
      v51 = sub_100050528();
      sub_1000504A8();
      v109._countAndFlagsBits = 10256610;
      v109._object = 0xA300000000000000;
      sub_100050498(v109);
      v110._countAndFlagsBits = v49;
      v110._object = v50;
      sub_100050488(v110);

      v111._countAndFlagsBits = 10322146;
      v111._object = 0xA300000000000000;
      sub_100050498(v111);
      sub_1000504C8();
      sub_10004FB08();
      sub_100050528();
      (*(v45 + 8))(v46, v103);
      return v51;
    }

    v52 = v87;
    sub_100050098();
    v53 = v84;
    v54 = v88;
    v55 = (*(v84 + 88))(v52, v88);
    if (v55 == enum case for GenerativeError.ErrorType.networking(_:) || v55 == enum case for GenerativeError.ErrorType.availability(_:) || v55 == enum case for GenerativeError.ErrorType.canceled(_:))
    {

      (*(v53 + 8))(v52, v54);
      sub_100050468();
      sub_10004FB08();
      v51 = sub_100050528();
      sub_100050468();
      sub_10004FB08();
      sub_100050528();
      (*(v45 + 8))(v46, v44);
      return v51;
    }

    if (v55 == enum case for GenerativeError.ErrorType.authentication(_:))
    {

      sub_100050468();
      sub_10004FB08();
      v51 = sub_100050528();
      sub_1000504A8();
      v112._countAndFlagsBits = 0x7920657461647055;
      v112._object = 0xEC0000002072756FLL;
      sub_100050498(v112);
      v113._countAndFlagsBits = sub_10001D0E0();
      sub_100050488(v113);

      v114._countAndFlagsBits = 0xD000000000000015;
      v114._object = 0x8000000100052CA0;
      sub_100050498(v114);
      sub_1000504C8();
      sub_10004FB08();
      sub_100050528();
      (*(v45 + 8))(v46, v44);
      (*(v53 + 8))(v87, v88);
      return v51;
    }

    (*(v45 + 8))(v46, v44);
    (*(v53 + 8))(v52, v54);
    return v83;
  }

  v90 = v38;
  v91 = v36;
  v88 = v40;
  (*(v97 + 56))(v43, 1, 1, v44);
  sub_100021270(v43);
  (v41)(v92, v42, a1);
  if (swift_dynamicCast())
  {

    if (v105 != 2)
    {
      sub_1000212D8(v104, v105);
      return v83;
    }

    goto LABEL_6;
  }

  if (sub_100020F44(a1))
  {

    sub_100050468();
    sub_10004FB08();
    v51 = sub_100050528();
    sub_100050468();
    sub_10004FB08();
    goto LABEL_9;
  }

  (v41)(v80, v42, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    v56 = v104;
    v57 = sub_10001F698(a1);
    v58 = [v57 code];

    v51 = v81;
    if (v58 != 3)
    {

      return v51;
    }

    goto LABEL_18;
  }

  v103 = a1;
  v59 = sub_10001F698(a1);
  v60 = [v59 domain];

  v61 = sub_100050518();
  v63 = v62;

  v64 = sub_100050518();
  v51 = v81;
  if (v64 == v61 && v65 == v63)
  {

LABEL_27:

    v68 = v103;
    v69 = sub_10001F698(v103);
    v70 = [v69 code];

    if (v70 == 1)
    {
LABEL_18:

      return v79;
    }

    if (v70 > 0x1B)
    {
      goto LABEL_44;
    }

    if (((1 << v70) & 0xCD08000) != 0)
    {
LABEL_32:

      sub_100050468();
      sub_10004FB08();
      return sub_100050528();
    }

    if (((1 << v70) & 0x5A00) == 0 && v70 != 24)
    {
LABEL_44:
      if (v70 - 4 >= 4 && v70 != 8)
      {
        if (sub_10001EF50(v68) & 1) != 0 || (sub_10001F088(v68))
        {
          goto LABEL_32;
        }

        if (v70 != 38)
        {
          return v51;
        }
      }
    }

LABEL_6:

    sub_100050468();
    sub_10004FB08();
    v51 = sub_100050528();
    sub_100050468();
    sub_10004FB08();
LABEL_9:
    sub_100050528();
    return v51;
  }

  v67 = sub_1000509B8();

  if (v67)
  {
    goto LABEL_27;
  }

  if ((v61 != 0xD00000000000001ALL || 0x8000000100052AE0 != v63) && (sub_1000509B8() & 1) == 0)
  {

    if (v61 == 0xD000000000000016 && 0x80000001000513D0 == v63)
    {
    }

    else
    {
      v72 = sub_1000509B8();

      if ((v72 & 1) == 0)
      {
        return v51;
      }
    }

    v73 = sub_10001F698(v103);
    [v73 code];

    return v51;
  }

  v71 = sub_10001F698(v103);
  [v71 code];

  return v75;
}

BOOL sub_100020C34(uint64_t a1)
{
  v2 = v1;
  v28 = sub_100050078();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_1000712E0, &qword_100058268);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000500A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v2, a1);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v12, 0, 1, v17);
    (*(v18 + 32))(v21, v12, v17);
    sub_100050098();
    (*(v18 + 8))(v21, v17);
    v24 = v28;
    v25 = (*(v4 + 88))(v7, v28) == enum case for GenerativeError.ErrorType.authentication(_:);
    (*(v4 + 8))(v7, v24);
  }

  else
  {
    v23(v12, 1, 1, v17);
    sub_100021270(v12);
    return 0;
  }

  return v25;
}

BOOL sub_100020F44(uint64_t a1)
{
  v2 = sub_10001F698(a1);
  v3 = [v2 domain];

  v4 = sub_100050518();
  v6 = v5;

  if (sub_100050518() == v4 && v7 == v6)
  {
    v10 = 2;
LABEL_8:

    goto LABEL_9;
  }

  v9 = sub_1000509B8();

  if (v9)
  {
    v10 = 2;
LABEL_9:

LABEL_10:
    v11 = sub_10001F698(a1);
    v12 = [v11 code];

    return v12 == v10;
  }

  if (sub_100050518() == v4 && v14 == v6)
  {
    v10 = 1002;
    goto LABEL_8;
  }

  v16 = sub_1000509B8();

  result = 0;
  if (v16)
  {
    v10 = 1002;
    goto LABEL_10;
  }

  return result;
}

BOOL sub_1000210A8(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  v7 = sub_10001F698(a1);
  v8 = [v7 domain];

  v9 = sub_100050518();
  v11 = v10;

  if (sub_100050518() == v9 && v12 == v11)
  {

    goto LABEL_10;
  }

  v14 = sub_1000509B8();

  result = 0;
  if (v14)
  {
LABEL_10:
    v15 = sub_10001F698(a1);
    v16 = [v15 code];

    return v16 == 39;
  }

  return result;
}

uint64_t sub_100021270(uint64_t a1)
{
  v2 = sub_100002814(&qword_1000712E0, &qword_100058268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000212D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1000212F0()
{
  result = qword_1000712E8;
  if (!qword_1000712E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712E8);
  }

  return result;
}

unint64_t sub_100021348()
{
  result = qword_1000712F0;
  if (!qword_1000712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F0);
  }

  return result;
}

unint64_t sub_1000213A0()
{
  result = qword_1000712F8;
  if (!qword_1000712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F8);
  }

  return result;
}

uint64_t sub_100021444()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B450);
  sub_1000071F4(v0, qword_10007B450);
  return sub_10004F978();
}

uint64_t sub_1000214A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004F9A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004F978();
  v16 = *(v14 + 56);
  v16(v12, 1, 1, v13);
  sub_10004F978();
  v16(v10, 0, 1, v13);
  sub_10004F708();
  v17 = sub_10004F718();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004F6E8();
  v18 = sub_10004F6D8();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100021754(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = sub_10004F8A8();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v9 = sub_100050628();
  v2[21] = v9;
  v2[22] = v8;

  return _swift_task_switch(sub_1000218C8, v9, v8);
}

uint64_t sub_1000218C8()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v5;
    *(v0 + 48) = v4;
    sub_1000224FC();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    v6 = type metadata accessor for WritingToolsIntentManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v10 = sub_100050628();

    return _swift_task_switch(sub_100021B6C, v10, v9);
  }

  else
  {
    v11 = *(v0 + 160);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050188();
    sub_1000071F4(v12, qword_10007B4F8);
    v13 = sub_100050168();
    v14 = sub_100050728();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to obtain an app audit token from AppIntents.", v15, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100021B6C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v4 = *(v0 + 112);
  v23 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  sub_100050468();
  sub_10004FB08();
  v7 = sub_100050528();
  *(v0 + 208) = v8;
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  *(v2 + 6) = 100;
  v9 = type metadata accessor for WritingToolsModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_100009ACC(1, 0);
  *(v0 + 216) = v12;
  *(v2 + 2) = v12;
  sub_100008F38(8, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v12;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v13 = *(v12 + 24);
  v14 = objc_allocWithZone(BSAuditToken);

  v15 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v15;
  sub_100011960([v14 initWithAuditToken:v0 + 296]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v16 = *(v4 + 16);
  v16(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v24, v23);
  sub_100007288();
  v16(v25, v24, v23);
  v17 = sub_100050798();
  v18 = [objc_allocWithZone(WTContext) initWithAttributedText:v17 range:{0, objc_msgSend(v17, "length")}];
  *(v0 + 224) = v18;

  v19 = *(v4 + 8);
  *(v0 + 232) = v19;
  *(v0 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v24, v23);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v20, v21);
}

uint64_t sub_100021E50@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B450);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100021EF8()
{
  v0 = sub_100002814(&qword_100071318, &qword_1000583F8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002814(&qword_100071320, &qword_100058400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10004F778();
  v5._countAndFlagsBits = 0x73696C20656B614DLL;
  v5._object = 0xEF206D6F72662074;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_100071328, &unk_100058430);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_10002209C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100021754(a1, v4);
}

uint64_t sub_10002213C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002814(&qword_10006F080, &unk_100059350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100002814(&qword_10006F088, &unk_100056320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100002814(&qword_10006F090, &qword_100058950);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10004F9A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10004F8A8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10004F678();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v25 = result;
  return result;
}

uint64_t sub_10002246C(uint64_t a1)
{
  v2 = sub_1000212F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000224FC()
{
  result = qword_100071310;
  if (!qword_100071310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071310);
  }

  return result;
}

uint64_t sub_100022558@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_100022584()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25CompositionEducationModel___observationRegistrar;
  v3 = sub_10004FB98();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionEducationModel()
{
  result = qword_100071360;
  if (!qword_100071360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002267C()
{
  result = sub_10004FB98();
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

uint64_t sub_100022720()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25CompositionRateLimitModel___observationRegistrar;
  v3 = sub_10004FB98();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionRateLimitModel()
{
  result = qword_100071490;
  if (!qword_100071490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022818()
{
  result = sub_10004FB98();
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

unint64_t sub_1000228C0()
{
  result = qword_1000715D0;
  if (!qword_1000715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715D0);
  }

  return result;
}

unint64_t sub_100022918()
{
  result = qword_1000715D8;
  if (!qword_1000715D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715D8);
  }

  return result;
}

unint64_t sub_100022970()
{
  result = qword_1000715E0;
  if (!qword_1000715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E0);
  }

  return result;
}

uint64_t sub_100022A14()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B468);
  sub_1000071F4(v0, qword_10007B468);
  return sub_10004F978();
}

uint64_t sub_100022A78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004F9A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004F978();
  v16 = *(v14 + 56);
  v16(v12, 1, 1, v13);
  sub_10004F978();
  v16(v10, 0, 1, v13);
  sub_10004F708();
  v17 = sub_10004F718();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004F6E8();
  v18 = sub_10004F6D8();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100022D24()
{
  v0 = sub_100002814(&qword_100071680, &qword_1000589A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002814(&qword_100071688, &qword_1000589A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_1000228C0();
  sub_10004F778();
  v5._countAndFlagsBits = 0x20656B614DLL;
  v5._object = 0xE500000000000000;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_100071690, &qword_1000589D8);
  sub_10004F758();

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  sub_10004F768(v6);
  swift_getKeyPath();
  sub_100002814(&qword_100071698, &unk_100058A08);
  sub_10004F758();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_10004F768(v7);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100022F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_10004F8A8();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_100050658();
  v3[22] = sub_100050648();
  v10 = sub_100050628();
  v3[23] = v10;
  v3[24] = v9;

  return _swift_task_switch(sub_1000230A4, v10, v9);
}

uint64_t sub_1000230A4()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = v1[1];
    *(v0 + 288) = *v1;
    *(v0 + 304) = v3;
    sub_10004F698();
    *(v0 + 200) = qword_100058A18[*(v0 + 352)];
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    *(v0 + 48) = *(v0 + 88);
    sub_1000256F4();
    *(v0 + 208) = sub_10004F7C8();
    sub_10004F698();
    v6 = type metadata accessor for WritingToolsIntentManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    *(v0 + 216) = swift_allocObject();
    *(v0 + 224) = sub_100050648();
    v10 = sub_100050628();

    return _swift_task_switch(sub_10002336C, v10, v9);
  }

  else
  {
    v11 = *(v0 + 176);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050188();
    sub_1000071F4(v12, qword_10007B4F8);
    v13 = sub_100050168();
    v14 = sub_100050728();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to obtain an app audit token from AppIntents.", v15, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10002336C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 152);
  v26 = *(v0 + 160);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);

  sub_100050468();
  sub_10004FB08();
  v10 = sub_100050528();
  *(v0 + 232) = v11;
  *(v2 + 3) = v10;
  *(v2 + 4) = v11;
  *(v2 + 6) = 100;
  v12 = type metadata accessor for WritingToolsModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_100009ACC(1, 0);
  *(v0 + 240) = v15;
  *(v2 + 2) = v15;
  sub_100008F38(v4, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 64) = v15;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v16 = *(v15 + 24);
  v17 = objc_allocWithZone(BSAuditToken);

  v18 = *(v0 + 304);
  *(v0 + 320) = *(v0 + 288);
  *(v0 + 336) = v18;
  sub_100011960([v17 initWithAuditToken:v0 + 320]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v19 = *(v6 + 16);
  v19(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v26, v7);
  sub_100007288();
  v19(v5, v26, v7);
  v20 = sub_100050798();
  v21 = [objc_allocWithZone(WTContext) initWithAttributedText:v20 range:{0, objc_msgSend(v20, "length")}];
  *(v0 + 248) = v21;

  v22 = *(v6 + 8);
  *(v0 + 256) = v22;
  *(v0 + 264) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v26, v7);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v21;
  v23 = *(v0 + 184);
  v24 = *(v0 + 192);

  return _swift_task_switch(sub_100023640, v23, v24);
}

uint64_t sub_100023640()
{
  v1 = v0[18];
  sub_10004F898();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000236E0;
  v3 = v0[27];
  v4 = v0[17];

  return sub_100025888(v4);
}

uint64_t sub_1000236E0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_1000239F4;
  }

  else
  {
    v7 = sub_10002381C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10002381C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];

  v2(v5, v6);
  (*(v7 + 32))(v5, v4, v6);
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[27];
  v21 = v0[31];
  v22 = v0[20];
  v14 = v0[18];
  v23 = v0[19];
  v24 = v0[17];
  v15 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v16 = v0[10];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v9(v13 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v15);

  v17 = *(*v13 + 48);
  v18 = *(*v13 + 52);
  swift_deallocClassInstance();
  v9(v14, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000239F4()
{
  v1 = v0[35];
  v2 = v0[22];

  v0[9] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v3 = v0[3];
    if (v3 == 1)
    {
      v4 = v0[35];

      v5 = v0[9];

      v7 = v0[32];
      v6 = v0[33];
      v8 = v0[30];
      v9 = v0[29];
      v10 = v0[26];
      v11 = v0[27];
      v40 = v0[31];
      v41 = v0[20];
      v12 = v0[18];
      v42 = v0[19];
      v43 = v0[17];
      v13 = v0[15];
      v44 = v0[14];
      v45 = v0[13];
      v14 = v0[10];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v7(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

      v15 = *(*v11 + 48);
      v16 = *(*v11 + 52);
      swift_deallocClassInstance();
      v7(v12, v13);

      v17 = v0[1];
      goto LABEL_6;
    }

    v18 = v0[4];
    v19 = v0[5];
    sub_1000072D4(v0[2], v3);
  }

  v20 = v0[35];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[30];
  v24 = v0[31];
  v25 = v0[29];
  v27 = v0[26];
  v26 = v0[27];
  v46 = v0[18];
  v28 = v0[15];
  v29 = v0[9];

  swift_willThrow();

  swift_setDeallocating();
  v22(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v28);

  v30 = *(*v26 + 48);
  v31 = *(*v26 + 52);
  swift_deallocClassInstance();
  v22(v46, v28);
  v32 = v0[35];
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[17];
  v35 = v0[18];
  v38 = v0[13];
  v37 = v0[14];

  v17 = v0[1];
LABEL_6:

  return v17();
}

uint64_t sub_100023CF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023DA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006CB4;

  return sub_100022F2C(a1, v5, v4);
}

uint64_t sub_100023E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002524C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023E78(uint64_t a1)
{
  v2 = sub_1000228C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100023EB4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_100050458();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000504B8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32 = v26 - v8;
  v9 = sub_10004F988();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004FB38();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000504D8();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10004F9A8();
  v29 = *(v18 - 8);
  v30 = v18;
  v19 = *(v29 + 64);
  __chkstk_darwin(v18);
  sub_100050468();
  sub_10004FB08();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v10 + 104);
  v26[1] = v10 + 104;
  v21(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10004F9B8();
  sub_1000504A8();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100050498(v34);
  v22 = v28;
  v23 = v31;
  (*(v1 + 104))(v28, enum case for String.LocalizationValue.Placeholder.int(_:), v31);
  sub_100050478();
  (*(v1 + 8))(v22, v23);
  v35._countAndFlagsBits = 0x73656E6F7420;
  v35._object = 0xE600000000000000;
  sub_100050498(v35);
  sub_1000504C8();
  sub_10004FB08();
  v21(v13, v20, v27);
  v24 = v32;
  sub_10004F9B8();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_10004F7F8();
}

uint64_t sub_10002432C()
{
  v0 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v30 - v2;
  v4 = sub_100002814(&qword_10006F090, &qword_100058950);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v30 - v6;
  v8 = sub_10004F9A8();
  v32 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_100071668, &qword_100058958);
  v13 = sub_100002814(&qword_10006ED78, &qword_1000559C0);
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v36 = 2 * v14;
  v16 = swift_allocObject();
  v37 = v16;
  *(v16 + 16) = xmmword_100056D20;
  v31 = *(v13 + 48);
  v17 = v13;
  *(v16 + v15) = 0;
  v18 = v16 + v15;
  sub_10004F978();
  v19 = *(v9 + 56);
  v33 = v9 + 56;
  v34 = v19;
  v19(v7, 1, 1, v8);
  sub_10004F6F8();
  v38 = sub_10004F718();
  v20 = *(v38 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(v3, 0, 1, v38);
  v30[0] = v12;
  v30[1] = v22;
  v23 = v18;
  sub_10004F728();
  v35 = v18;
  v31 = *(v17 + 48);
  *(v18 + v14) = 1;
  sub_10004F978();
  v24 = v32;
  v25 = v34;
  v34(v7, 1, 1, v32);
  sub_10004F6F8();
  v21(v3, 0, 1, v38);
  sub_10004F728();
  v26 = (v23 + v36);
  v27 = *(v17 + 48);
  *v26 = 2;
  sub_10004F978();
  v25(v7, 1, 1, v24);
  sub_10004F6F8();
  v21(v3, 0, 1, v38);
  sub_10004F728();
  v28 = sub_100004A9C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10007B480 = v28;
  return result;
}

uint64_t sub_1000247C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737365666F7270;
  v4 = 0xEC0000006C616E6FLL;
  if (v2 != 1)
  {
    v3 = 0x657369636E6F63;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x796C646E65697266;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x69737365666F7270;
  v8 = 0xEC0000006C616E6FLL;
  if (*a2 != 1)
  {
    v7 = 0x657369636E6F63;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x796C646E65697266;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000509B8();
  }

  return v11 & 1;
}

unint64_t sub_1000248D8()
{
  result = qword_1000715E8;
  if (!qword_1000715E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E8);
  }

  return result;
}

Swift::Int sub_10002492C()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_1000249D8()
{
  *v0;
  *v0;
  sub_100050568();
}

Swift::Int sub_100024A70()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_100024B18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000256A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100024B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC0000006C616E6FLL;
  v5 = 0x69737365666F7270;
  if (v2 != 1)
  {
    v5 = 0x657369636E6F63;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C646E65697266;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100024BB4()
{
  result = qword_1000715F0;
  if (!qword_1000715F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F0);
  }

  return result;
}

unint64_t sub_100024C0C()
{
  result = qword_1000715F8;
  if (!qword_1000715F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F8);
  }

  return result;
}

unint64_t sub_100024C64()
{
  result = qword_100071600;
  if (!qword_100071600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071600);
  }

  return result;
}

unint64_t sub_100024CC8()
{
  result = qword_100071608;
  if (!qword_100071608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071608);
  }

  return result;
}

unint64_t sub_100024D20()
{
  result = qword_100071610;
  if (!qword_100071610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071610);
  }

  return result;
}

unint64_t sub_100024D74()
{
  result = qword_100071618;
  if (!qword_100071618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071618);
  }

  return result;
}

unint64_t sub_100024DCC()
{
  result = qword_100071620;
  if (!qword_100071620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071620);
  }

  return result;
}

unint64_t sub_100024E78()
{
  result = qword_100071628;
  if (!qword_100071628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071628);
  }

  return result;
}

uint64_t sub_100024ED0(uint64_t a1)
{
  v2 = sub_100024E78();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100024F20()
{
  result = qword_100071630;
  if (!qword_100071630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071630);
  }

  return result;
}

unint64_t sub_100024F78()
{
  result = qword_100071638;
  if (!qword_100071638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071638);
  }

  return result;
}

unint64_t sub_100024FD0()
{
  result = qword_100071640;
  if (!qword_100071640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071640);
  }

  return result;
}

uint64_t sub_100025024()
{
  if (qword_10006E9E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100025080(uint64_t a1)
{
  v2 = sub_100024DCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100025130(uint64_t *a1, int a2)
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

uint64_t sub_100025178(uint64_t result, int a2, int a3)
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

uint64_t sub_10002524C()
{
  v0 = sub_10004F798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v36 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = sub_100002814(&qword_10006F088, &unk_100056320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v15 = sub_100002814(&qword_10006F090, &qword_100058950);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v29 - v17;
  v29[0] = v29 - v17;
  v19 = sub_10004F9A8();
  v35 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v33 = sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  v22 = *(v20 + 56);
  v32 = v20 + 56;
  v34 = v22;
  v22(v18, 1, 1, v19);
  v23 = sub_10004F8A8();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_10004F678();
  v25 = *(*(v24 - 8) + 56);
  v25(v10, 1, 1, v24);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v1 + 104);
  v29[1] = v1 + 104;
  v30 = v26;
  v26(v4);
  v27 = v29[0];
  v33 = sub_10004F6C8();
  sub_100002814(&qword_100071670, &qword_100058960);
  sub_10004F978();
  v34(v27, 1, 1, v35);
  v37 = 3;
  v25(v10, 1, 1, v24);
  v25(v36, 1, 1, v24);
  v30(v4, v31, v0);
  sub_100024E78();
  sub_10004F6B8();
  return v33;
}

uint64_t sub_1000256A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A228;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000256F4()
{
  result = qword_100071678;
  if (!qword_100071678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071678);
  }

  return result;
}

uint64_t sub_100025750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_10002577C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_1000257B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026704(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + 24);
}

uint64_t sub_10002585C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000089AC(v4);
}

uint64_t sub_100025888(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_100050658();
  v2[23] = sub_100050648();
  v4 = sub_100050628();
  v2[24] = v4;
  v2[25] = v3;

  return _swift_task_switch(sub_100025920, v4, v3);
}

uint64_t sub_100025920()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  swift_getKeyPath();
  v0[17] = v2;
  sub_100026704(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v0[26] = *(v2 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context);
  v0[27] = v3;
  v4 = *(v1 + 40);
  v0[28] = v4;

  v5 = v3;
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_100025A70;

  return sub_10002CD74(v5, v4);
}

uint64_t sub_100025A70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v7 = *(v3 + 200);
  v8 = *(v3 + 192);
  if (v1)
  {
    v9 = sub_100026088;
  }

  else
  {
    v9 = sub_100025BCC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100025BCC()
{
  v1 = v0[30];
  v2 = v0[23];

  if (!v1)
  {
    sub_1000266A0();
    swift_allocError();
    *v18 = 0u;
    v18[1] = 0u;
    swift_willThrow();
    swift_getErrorValue();
    v19 = v0[10];
    v20 = sub_10001F260(v0[11], v0[12]);
    v21 = [v20 userInfo];
    v22 = sub_100050418();

    v23 = sub_100050518();
    if (*(v22 + 16))
    {
      v25 = sub_10004A138(v23, v24);
      v27 = v26;

      if (v27)
      {
        sub_100015440(*(v22 + 56) + 32 * v25, (v0 + 2));

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_16:
          swift_allocError();
          *v40 = 0u;
          v40[1] = 0u;
          goto LABEL_17;
        }

        v29 = v0[13];
        v28 = v0[14];
        v30 = [v20 userInfo];
        v31 = sub_100050418();

        v32 = sub_100050518();
        if (*(v31 + 16))
        {
          v43 = v29;
          v34 = sub_10004A138(v32, v33);
          v36 = v35;

          if (v36)
          {
            sub_100015440(*(v31 + 56) + 32 * v34, (v0 + 6));

            if (swift_dynamicCast())
            {
              v37 = v0[15];
              v38 = v0[16];
              swift_allocError();
              *v39 = v43;
              v39[1] = v28;
              v39[2] = v37;
              v39[3] = v38;
LABEL_17:
              v41 = v0[26];
              swift_willThrow();

              v17 = v0[1];
              goto LABEL_18;
            }

            goto LABEL_15;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

LABEL_15:

    goto LABEL_16;
  }

  v3 = v0[30];
  v4 = v0[26];
  swift_getKeyPath();
  v0[19] = v4;
  sub_100026704(&qword_10006FCF0, type metadata accessor for ToolModel);

  sub_10004FB58();

  v5 = *(v4 + 136);

  if (v5)
  {
    v6 = v0[22];
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    v9 = objc_allocWithZone(NSAttributedString);
    v10 = sub_1000504E8();
    v11 = [v9 initWithString:v10];

    [v3 appendAttributedString:v11];
  }

  v12 = v0[26];
  swift_getKeyPath();
  v0[20] = v12;
  sub_100026704(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  if (*(v12 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
  {
    v13 = *(v12 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);

    sub_100050698();
  }

  v14 = v0[28];
  v15 = v0[26];
  v16 = v0[21];
  sub_1000290EC(0);
  [v14 setCompletedUnitCount:100];
  sub_10004F8B8();

  v17 = v0[1];
LABEL_18:

  return v17();
}

uint64_t sub_100026088()
{
  v1 = v0[23];

  v2 = v0[31];
  swift_getErrorValue();
  v3 = v0[10];
  v4 = sub_10001F260(v0[11], v0[12]);
  v5 = [v4 userInfo];
  v6 = sub_100050418();

  v7 = sub_100050518();
  if (!*(v6 + 16))
  {

    goto LABEL_9;
  }

  v9 = sub_10004A138(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_100015440(*(v6 + 56) + 32 * v9, (v0 + 2));

  if (swift_dynamicCast())
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = [v4 userInfo];
    v15 = sub_100050418();

    v16 = sub_100050518();
    if (*(v15 + 16))
    {
      v18 = sub_10004A138(v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_100015440(*(v15 + 56) + 32 * v18, (v0 + 6));

        if (swift_dynamicCast())
        {
          v21 = v0[15];
          v22 = v0[16];
          sub_1000266A0();
          swift_allocError();
          *v23 = v13;
          v23[1] = v12;
          v23[2] = v21;
          v23[3] = v22;
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_1000266A0();
  swift_allocError();
  *v24 = 0u;
  v24[1] = 0u;
LABEL_11:
  v25 = v0[26];
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_100026320()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text;
  v4 = sub_10004F8A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsIntentManager()
{
  result = qword_1000716D8;
  if (!qword_1000716D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026438()
{
  result = sub_10004F8A8();
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

uint64_t sub_100026500(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000089AC(v4);
}

uint64_t sub_10002652C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000504B8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (a2 >= 2)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1000504A8();
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      sub_100050498(v14);
      v15._countAndFlagsBits = a1;
      v15._object = a2;
      sub_100050488(v15);
      v16._countAndFlagsBits = 10;
      v16._object = 0xE100000000000000;
      sub_100050498(v16);
      v12._countAndFlagsBits = a3;
      v12._object = a4;
    }

    else
    {
      sub_1000504A8();
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      sub_100050498(v17);
      v12._countAndFlagsBits = a1;
      v12._object = a2;
    }

    sub_100050488(v12);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_100050498(v18);
    return sub_10004F998();
  }

  else
  {

    return sub_10004F978();
  }
}

unint64_t sub_1000266A0()
{
  result = qword_1000717A8;
  if (!qword_1000717A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000717A8);
  }

  return result;
}

uint64_t sub_100026704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002674C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100026764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000267B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100026818(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005070(a3, v27 - v11, &qword_10006F5F8, &qword_1000579B0);
  v13 = sub_100050678();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000CBA0(v12, &qword_10006F5F8, &qword_1000579B0);
  }

  else
  {
    sub_100050668();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100050628();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100050558() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100026B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005070(a3, v27 - v11, &qword_10006F5F8, &qword_1000579B0);
  v13 = sub_100050678();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000CBA0(v12, &qword_10006F5F8, &qword_1000579B0);
  }

  else
  {
    sub_100050668();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100050628();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100050558() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100002814(&qword_1000722A8, &qword_1000591E0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100002814(&qword_1000722A8, &qword_1000591E0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100026E60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004FCE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1000377F4(&qword_100072270, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v9 = sub_100050428(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
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
      sub_1000377F4(&qword_100072278, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v17 = sub_100050448();
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

uint64_t sub_100027078(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004FD18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1000377F4(&qword_100072260, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v9 = sub_100050428(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
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
      sub_1000377F4(&qword_100072268, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v17 = sub_100050448();
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

BOOL sub_100027290(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_100050A78();
  sub_100050A88(a1);
  v5 = sub_100050AA8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10002735C()
{
  v1 = v0;
  v2 = sub_10004F958();
  v3 = sub_1000276B4(v2, v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10006EA08 != -1)
  {
    swift_once();
  }

  v4 = sub_100050188();
  sub_1000071F4(v4, qword_10007B510);
  v5 = v2;
  v6 = sub_100050168();
  v7 = sub_100050758();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred: %@, but handoff to Montara", v8, 0xCu);
    sub_10000CBA0(v9, &qword_100072230, &qword_100058ED0);
  }

  type metadata accessor for RewritingModel();
  if (sub_10002AFD4())
  {
    v11 = v5;
    v2 = sub_100050168();
    v12 = sub_100050738();

    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v2, v12, "%@ occurred while in handoff, this is not expected", v13, 0xCu);
      sub_10000CBA0(v14, &qword_100072230, &qword_100058ED0);

      return v3 & 1;
    }

LABEL_12:
    return v3 & 1;
  }

  v16 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState;
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) == 1)
  {

    *(v1 + v16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  return v3 & 1;
}

uint64_t sub_1000276B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100050028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10000BAFC() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100050018();
  v8 = sub_100050008();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v14[0] = a2;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  if (!*(a2 + 96))
  {
    v10 = *(a2 + 72);
    if (v10 != 9)
    {
      if (v10 == 5)
      {
        v9 = sub_1000278F4();
        return v9 & 1;
      }

LABEL_11:
      v9 = sub_100027AF8();
      return v9 & 1;
    }

    if (sub_100027AF8())
    {
      v14[3] = &type metadata for WritingTools;
      v14[4] = sub_100038A58();
      LOBYTE(v14[0]) = 15;
      v11 = sub_10004FBA8();
      sub_10000CC70(v14);
      v9 = v11;
      return v9 & 1;
    }

LABEL_14:
    v9 = 0;
    return v9 & 1;
  }

  swift_getKeyPath();
  v14[0] = a2;
  sub_10004FB58();

  if (*(a2 + 96) != 2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  if (*(a2 + 72) == 1 && *(a2 + 80) == 0)
  {
    goto LABEL_11;
  }

  return v9 & 1;
}

uint64_t sub_1000278F4()
{
  sub_10000E5D8(0, &qword_100070180, NSError_ptr);
  sub_100038AAC();
  v1 = v0;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = sub_10004F958();

  v4 = [v3 domain];

  v5 = sub_100050518();
  v7 = v6;

  if (v5 == sub_100050518() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1000509B8();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v1;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v13 = v12;
  }

  v14 = sub_10004F958();

  v15 = [v14 code];

  v16 = vdupq_n_s64(v15);
  return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_10006A108, v16), vceqq_s64(unk_10006A118, v16)), vuzp1q_s32(vceqq_s64(xmmword_10006A128, v16), vceqq_s64(unk_10006A138, v16))))) & 1;
}

uint64_t sub_100027AF8()
{
  sub_10000E5D8(0, &qword_100070180, NSError_ptr);
  sub_100038AAC();
  v1 = v0;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = sub_10004F958();

  v4 = [v3 domain];

  v5 = sub_100050518();
  v7 = v6;

  if (v5 == sub_100050518() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1000509B8();

    if ((v10 & 1) == 0)
    {
      type metadata accessor for SummarizationClientError(0);
      v11 = v1;
      if (swift_dynamicCast())
      {
        v12 = sub_1000503F8();
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    }
  }

  v13 = v1;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v14 = v13;
  }

  v15 = sub_10004F958();

  v16 = [v15 code];

  v12 = v16 == 35;
  return v12 & 1;
}

id sub_100027D10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100027DC8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100011960(v2);
}

uint64_t sub_100027DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_100027EC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 96);
  *(a2 + 24) = v7;
  return sub_100013C24(v4, v5, v6, v7);
}

uint64_t sub_100027F84(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_100013C24(*a1, v3, v4, v6);
  return sub_100011C9C(v2, v3, v4, v6);
}

unint64_t sub_100027FE8()
{
  result = sub_100004A54(&_swiftEmptyArrayStorage);
  qword_10007B488 = result;
  return result;
}

uint64_t sub_100028088(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_10002818C()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  swift_getKeyPath();
  sub_10000A594(v2, v3, v4, v1);
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__isForEditableContent);
  swift_getKeyPath();
  sub_10004FB58();

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__wantsInlineEditing);
  swift_getKeyPath();
  sub_10004FB58();

  if (v5 != 1)
  {
    sub_100013054(v2, v3, v4, v1);
    return 0;
  }

  if (v1)
  {
LABEL_18:
    result = sub_1000508D8();
    __break(1u);
    return result;
  }

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  sub_100013054(v2, v3, v4, 0);
  if (v2 > 5u)
  {
    if (v2 - 6 >= 2)
    {
      if (v2 == 8)
      {
        if (v8)
        {
          return (v6 >> 2) & 1;
        }
      }

      else if (v8)
      {
        return (v6 >> 3) & 1;
      }
    }

    return 0;
  }

  if (v2 - 2 < 4)
  {
    return v8;
  }

  result = v8;
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100028450()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
}

uint64_t sub_1000284F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  return result;
}

uint64_t sub_1000285A8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_1000286B8()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);
}

uint64_t sub_100028764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);
}

uint64_t sub_100028818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions;
  if (sub_10000E218(*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions), a1))
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }
}

void sub_100028960(void *a1)
{
  v2 = v1;
  v4 = sub_10004FAD8();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v32 = v1;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  v9 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v9)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    v32 = v2;
    sub_10004FB58();

    if (!*(v2 + v8))
    {
      if (!a1)
      {
        return;
      }

      if (qword_10006E9F0 != -1)
      {
        swift_once();
      }

      v14 = [a1 uuid];
      sub_10004FAB8();

      swift_beginAccess();
      sub_100047EC0(0, v7);
      goto LABEL_29;
    }

    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v28 = &v28;
      __chkstk_darwin(KeyPath);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB48();
    }

    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString))
    {
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      sub_10004FB48();
    }

    v16 = v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16))
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 1;
    }

    else
    {
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      *(&v28 - 3) = 0;
      *(&v28 - 2) = 0;
      *(&v28 - 4) = v2;
      *(&v28 - 8) = 1;
      v32 = v2;
      sub_10004FB48();
    }

    sub_100012198(0);
    v18 = *(v2 + 136);
    v29 = v4;
    if (v18)
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      *(&v28 - 2) = v2;
      *(&v28 - 1) = 0;
      v32 = v2;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB48();

      if (*(v2 + 144))
      {
LABEL_20:
        v20 = swift_getKeyPath();
        __chkstk_darwin(v20);
        *(&v28 - 2) = v2;
        *(&v28 - 8) = 0;
        v32 = v2;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
        sub_10004FB48();

LABEL_25:
        v21 = v29;
        v22 = sub_100003BDC(&_swiftEmptyArrayStorage);
        sub_10002A730(v22);
        v23 = sub_100003DC4(&_swiftEmptyArrayStorage);
        sub_10002A780(v23);
        v24 = sub_100003FC8(&_swiftEmptyArrayStorage);
        sub_10002A954(v24);
        if (qword_10006E9F0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        v32 = v2;
        sub_10004FB58();

        v25 = *(v2 + v8);
        if (!v25)
        {
          __break(1u);
          return;
        }

        v26 = [v25 uuid];
        sub_10004FAB8();

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = qword_10007B488;
        qword_10007B488 = 0x8000000000000000;
        sub_10004C4F8(v2, v7, isUniquelyReferenced_nonNull_native);
        (*(v30 + 8))(v7, v21);
        qword_10007B488 = v31;
LABEL_29:
        swift_endAccess();
        return;
      }
    }

    else
    {
      if (sub_10002818C())
      {
        sub_100012E5C();
      }

      *(v2 + 136) = 0;
      if (*(v2 + 144))
      {
        goto LABEL_20;
      }
    }

    *(v2 + 144) = 0;
    sub_100012A64(0);
    goto LABEL_25;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v10 = v9;
  v11 = a1;
  v12 = sub_1000507A8();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1000290EC(void *a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_100028960(v10);
}

uint64_t sub_1000292B8()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);
}

uint64_t sub_100029364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);
}

uint64_t sub_100029418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100029444(v4);
}

uint64_t sub_100029444(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);

  v5 = sub_100050688();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

void sub_1000295E8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100029780()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  result = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 8);
  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16);
  return result;
}

__n128 sub_100029830@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000298EC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100029A90(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_100029B44@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100029C28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (v8 = v6[1], (sub_1000509B8() & 1) != 0))
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }
}

uint64_t sub_100029D90()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);

  return v1;
}

uint64_t sub_100029E4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_100029F04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
      if (sub_1000509B8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_10002A0BC(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100070188, NSNumber_ptr);
  v7 = v6;
  v8 = a1;
  v9 = sub_1000507A8();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

void *sub_10002A264(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10002A30C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_10002A3F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_100005070(v5 + v3, a1, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A4D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_100005070(v3 + v4, a2, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A5A8(uint64_t a1, uint64_t *a2)
{
  sub_100005070(a1, v5, &unk_1000711A0, &qword_100058BF0);
  v3 = *a2;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB48();

  return sub_10000CBA0(v5, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A6B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100038980(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10002A7D0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_10002A888@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_10002A990(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }
}

uint64_t sub_10002AAE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_10002AB4C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v6 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      sub_10004FB58();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002ACA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  return *(v2 + *a2);
}

uint64_t sub_10002AD48(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_10002AB4C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }
}

uint64_t sub_10002AE84(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v6 = *(a1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      sub_10004FB58();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002AFD4()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState);
}

uint64_t sub_10002B07C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10002B130(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_10002B248()
{
  v1 = v0;
  v2 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_100050678();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100050658();

  v7 = sub_100050648();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_10002684C(0, 0, v5, &unk_100058D50, v8);
}

uint64_t sub_10002B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004FAD8();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_100050658();
  v4[12] = sub_100050648();
  v9 = sub_100050628();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_10002B460, v9, v8);
}

uint64_t sub_10002B460()
{
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  v0[15] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v0[16] = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v2 = *(v1 + 104);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_29;
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v3;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_29:
    v53 = v0[12];

    goto LABEL_30;
  }

LABEL_28:
  v52 = sub_1000508E8();
  v0[18] = v52;
  if (!v52)
  {
    goto LABEL_29;
  }

LABEL_4:
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID;
  v0[19] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v0[20] = v5;

  swift_beginAccess();
  v6 = 0;
  while (1)
  {
    v10 = v0[17];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_100050878();
    }

    else
    {
      if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v11 = *(v10 + 8 * v6 + 32);
    }

    v12 = v11;
    v0[21] = v11;
    v0[22] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v16 = v0[8];
    swift_getKeyPath();
    v0[6] = v16;

    sub_10004FB58();

    v17 = *(v16 + 104);
    v18 = v0[17];
    if (!v17)
    {
      break;
    }

    v19 = *(v16 + 104);

    v20 = sub_10000D9F0(v18, v17);

    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[11];
    v24 = v0[8];
    v25 = [v12 uuid];
    sub_10004FAB8();

    swift_getKeyPath();
    v0[7] = v24;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v26 = *(v24 + v21);
    if (*(v26 + 16))
    {
      v27 = v0[11];
      v28 = *(v24 + v21);

      v29 = sub_10004A0A0(v27);
      if (v30)
      {
        v41 = v0[10];
        v40 = v0[11];
        v42 = v0[9];
        v43 = *(*(v26 + 56) + 8 * v29);
        v0[23] = v43;
        v44 = *(v41 + 8);
        v45 = v43;
        v44(v40, v42);

        v46 = [v12 range];
        v48 = v47;
        v49 = swift_task_alloc();
        v0[24] = v49;
        *v49 = v0;
        v49[1] = sub_10002B978;
        v50 = v0[8];

        return sub_100035E9C(v45, v46, v48, v12, 1);
      }
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];

    (*(v8 + 8))(v7, v9);
    v6 = v0[22];
    if (v6 == v0[18])
    {
      v38 = v0[17];
      v39 = v0[12];

      goto LABEL_30;
    }
  }

  v31 = v0[17];

LABEL_17:
  v32 = v0[17];
  v33 = v0[12];

  if (qword_10006EA28 != -1)
  {
    swift_once();
  }

  v34 = sub_100050188();
  sub_1000071F4(v34, qword_10007B570);
  v35 = sub_100050168();
  v36 = sub_100050758();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "contexts changed while sending to results to client - stopping", v37, 2u);
  }

LABEL_30:
  v54 = v0[11];

  v55 = v0[1];

  return v55();
}

uint64_t sub_10002B978()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_10002BA98, v4, v3);
}

uint64_t sub_10002BA98()
{
  v2 = *(v1 + 184);

  v3 = *(v1 + 176);
  if (v3 == *(v1 + 144))
  {
LABEL_2:
    v4 = *(v1 + 136);
    v5 = *(v1 + 96);
  }

  else
  {
    while (1)
    {
      v9 = *(v1 + 136);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = sub_100050878();
      }

      else
      {
        if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v9 + 8 * v3 + 32);
      }

      v0 = v10;
      *(v1 + 168) = v10;
      *(v1 + 176) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v1 + 128);
      v11 = *(v1 + 136);
      v13 = *(v1 + 120);
      v14 = *(v1 + 64);
      swift_getKeyPath();
      *(v1 + 48) = v14;

      sub_10004FB58();

      v15 = *(v14 + 104);
      v16 = *(v1 + 136);
      if (!v15)
      {
        break;
      }

      v17 = *(v14 + 104);

      v18 = sub_10000D9F0(v16, v15);

      if ((v18 & 1) == 0)
      {
        goto LABEL_16;
      }

      v20 = *(v1 + 152);
      v19 = *(v1 + 160);
      v21 = *(v1 + 88);
      v22 = *(v1 + 64);
      v23 = [v0 uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v1 + 56) = v22;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v24 = *(v22 + v19);
      if (*(v24 + 16))
      {
        v25 = *(v1 + 88);
        v26 = *(v22 + v19);

        v27 = sub_10004A0A0(v25);
        if (v28)
        {
          v40 = *(v1 + 80);
          v39 = *(v1 + 88);
          v41 = *(v1 + 72);
          v42 = *(*(v24 + 56) + 8 * v27);
          *(v1 + 184) = v42;
          v43 = *(v40 + 8);
          v44 = v42;
          v43(v39, v41);

          v45 = [v0 range];
          v47 = v46;
          v48 = swift_task_alloc();
          *(v1 + 192) = v48;
          *v48 = v1;
          v48[1] = sub_10002B978;
          v49 = *(v1 + 64);

          return sub_100035E9C(v44, v45, v47, v0, 1);
        }
      }

      v7 = *(v1 + 80);
      v6 = *(v1 + 88);
      v8 = *(v1 + 72);

      (*(v7 + 8))(v6, v8);
      v3 = *(v1 + 176);
      if (v3 == *(v1 + 144))
      {
        goto LABEL_2;
      }
    }

    v29 = *(v1 + 136);

LABEL_16:
    v30 = *(v1 + 136);
    v31 = *(v1 + 96);

    if (qword_10006EA28 == -1)
    {
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
LABEL_17:
    v32 = sub_100050188();
    sub_1000071F4(v32, qword_10007B570);
    v33 = sub_100050168();
    v34 = sub_100050758();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "contexts changed while sending to results to client - stopping", v35, 2u);
    }
  }

  v36 = *(v1 + 88);

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_10002BED8(void *a1)
{
  v2 = v1;
  v4 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_100002814(&qword_100072288, &qword_100059130);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v34 = v2;
  v13 = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  v33 = v12;
  v32 = v13;
  sub_10004FB58();

  if (*(v2 + 96))
  {
    goto LABEL_11;
  }

  v14 = *(v2 + 72);
  v30 = v7;
  if (v14 == 6)
  {
    sub_10004FC78();
  }

  else
  {
    sub_10000ABB4(v14);
  }

  v15 = sub_10004FC88();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = sub_10004FBE8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_10004FBD8();
  v19 = [a1 attributedText];
  v31 = a1;
  [a1 range];
  sub_100004808(&_swiftEmptyArrayStorage);

  sub_100002814(&qword_100072238, &unk_100059018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100057A10;
  *(inited + 32) = sub_100050518();
  *(inited + 40) = v21;
  swift_getKeyPath();
  v34 = v2;
  sub_10004FB58();

  v22 = *(v2 + 24);
  if (!v22)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_11:
    result = sub_1000508D8();
    __break(1u);
    return result;
  }

  v23 = [v22 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v23;
  sub_100004808(inited);
  swift_setDeallocating();
  sub_10000CBA0(inited + 32, &qword_10006ED38, &unk_100055980);
  v24 = sub_10004FBC8();
  v26 = v25;

  if (sub_10002818C())
  {
    [v31 setRange:{v24, v26}];
  }

  else
  {
    v27 = v31;
    v35.location = [v31 range];
    v36.location = v24;
    v36.length = v26;
    v28 = NSUnionRange(v35, v36);
    [v27 setRange:{v28.location, v28.length}];
  }

  sub_10000CBA0(v11, &qword_100072288, &qword_100059130);
  return 1;
}

uint64_t sub_10002C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000508A8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_100050658();
  v5[7] = sub_100050648();
  v10 = sub_100050628();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_10002C960, v10, v9);
}

uint64_t sub_10002C960()
{
  v1 = *(v0 + 48);
  sub_1000509F8();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_10002CA2C;
  v3 = *(v0 + 48);

  return sub_10003787C(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10002CA2C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_100039194;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_10002CBC0;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10002CBC0()
{
  v1 = v0[7];

  if (qword_10006EA28 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = sub_100050188();
  sub_1000071F4(v3, qword_10007B570);
  swift_errorRetain();
  v4 = sub_100050168();
  v5 = sub_100050738();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Assigning error after 0.5s delay: %@", v7, 0xCu);
    sub_10000CBA0(v8, &qword_100072230, &qword_100058ED0);
  }

  v10 = v0[6];
  v12 = v0[2];
  v11 = v0[3];

  swift_errorRetain();
  sub_100012198(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10002CD74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100050658();
  v3[10] = sub_100050648();
  v5 = sub_100050628();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_10002CE10, v5, v4);
}

uint64_t sub_10002CE10()
{
  v1 = v0[9];
  swift_getKeyPath();
  v0[2] = v1;
  v0[13] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v0[14] = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v2 = *(v1 + 96);
  if (v2 == 255)
  {
    v10 = v0[10];

    goto LABEL_5;
  }

  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = v0[9];
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v0[3] = v6;
  v0[15] = v7;
  sub_10000A594(v3, v4, v5, v2);
  v0[16] = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  if (*(v6 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session))
  {
    v9 = v0[10];

    sub_100013054(v3, v4, v5, v2);
LABEL_5:
    v11 = v0[1];

    return v11(0);
  }

  v25 = v2;
  v13 = v0[9];
  sub_1000290EC([objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0]);
  swift_getKeyPath();
  v0[4] = v13;
  sub_10004FB58();

  v14 = *(v6 + v8);
  if (v14)
  {
    v15 = sub_10000AF9C(v3, v4, v5, v25);
    v16 = v14;
    sub_100013054(v3, v4, v5, v25);
    [v16 setCompositionSessionType:v15];
  }

  else
  {
    sub_100013054(v3, v4, v5, v25);
  }

  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[7];
  sub_100002814(&qword_100072280, &qword_100059100);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100058BE0;
  *(v20 + 32) = v19;
  v21 = v19;
  sub_100011E90(v20);
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_10002D19C;
  v23 = v0[9];
  v24 = v0[7];

  return sub_10002D404(v24, 1, 0, v17);
}

uint64_t sub_10002D19C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10002D2BC, v4, v3);
}

uint64_t sub_10002D2BC()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v4;
  sub_10004FB58();

  if (*(v4 + 120))
  {
    v5 = *(v4 + 120);
    swift_willThrow();
    swift_errorRetain();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[9];
    swift_getKeyPath();
    v0[6] = v10;
    sub_10004FB58();

    v11 = [*(v10 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) mutableCopy];
    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_10002D404(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 1912) = v4;
  *(v5 + 1904) = a4;
  *(v5 + 2737) = a3;
  *(v5 + 2736) = a2;
  *(v5 + 1896) = a1;
  v6 = *(*(sub_100002814(&qword_1000721D8, &qword_100058E10) - 8) + 64) + 15;
  *(v5 + 1920) = swift_task_alloc();
  v7 = *(*(sub_100002814(&qword_1000721E0, &qword_100058E18) - 8) + 64) + 15;
  *(v5 + 1928) = swift_task_alloc();
  v8 = *(*(sub_100002814(&unk_100070190, &qword_100058E20) - 8) + 64) + 15;
  *(v5 + 1936) = swift_task_alloc();
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  v9 = *(*(sub_100002814(&qword_1000721E8, &qword_100058E28) - 8) + 64) + 15;
  *(v5 + 1968) = swift_task_alloc();
  v10 = sub_100002814(&qword_1000721F0, &qword_100058E30);
  *(v5 + 1976) = v10;
  v11 = *(v10 - 8);
  *(v5 + 1984) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 1992) = swift_task_alloc();
  v13 = *(*(sub_100002814(&qword_1000721F8, &qword_100058E38) - 8) + 64) + 15;
  *(v5 + 2000) = swift_task_alloc();
  v14 = *(*(sub_100002814(&qword_100072200, &qword_100058E40) - 8) + 64) + 15;
  *(v5 + 2008) = swift_task_alloc();
  v15 = sub_1000501B8();
  *(v5 + 2016) = v15;
  v16 = *(v15 - 8);
  *(v5 + 2024) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 2032) = swift_task_alloc();
  v18 = sub_1000501D8();
  *(v5 + 2040) = v18;
  v19 = *(v18 - 8);
  *(v5 + 2048) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 2056) = swift_task_alloc();
  v21 = sub_100002814(&qword_100072208, &qword_100058E48);
  *(v5 + 2064) = v21;
  v22 = *(v21 - 8);
  *(v5 + 2072) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 2080) = swift_task_alloc();
  v24 = sub_100002814(&qword_100072210, &unk_100058E50);
  *(v5 + 2088) = v24;
  v25 = *(v24 - 8);
  *(v5 + 2096) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 2104) = swift_task_alloc();
  v27 = *(*(sub_100002814(&qword_100070160, &qword_100057D20) - 8) + 64) + 15;
  *(v5 + 2112) = swift_task_alloc();
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  v28 = sub_100002814(&qword_100072218, &unk_100058E60);
  *(v5 + 2136) = v28;
  v29 = *(v28 - 8);
  *(v5 + 2144) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 2152) = swift_task_alloc();
  v31 = sub_10004FC88();
  *(v5 + 2160) = v31;
  v32 = *(v31 - 8);
  *(v5 + 2168) = v32;
  v33 = *(v32 + 64) + 15;
  *(v5 + 2176) = swift_task_alloc();
  v34 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  *(v5 + 2184) = v34;
  v35 = *(v34 - 8);
  *(v5 + 2192) = v35;
  v36 = *(v35 + 64) + 15;
  *(v5 + 2200) = swift_task_alloc();
  v37 = sub_100002814(&qword_100072220, &qword_100058E70);
  *(v5 + 2208) = v37;
  v38 = *(v37 - 8);
  *(v5 + 2216) = v38;
  v39 = *(v38 + 64) + 15;
  *(v5 + 2224) = swift_task_alloc();
  v40 = sub_100002814(&qword_100072228, &qword_100058E78);
  *(v5 + 2232) = v40;
  v41 = *(v40 - 8);
  *(v5 + 2240) = v41;
  v42 = *(v41 + 64) + 15;
  *(v5 + 2248) = swift_task_alloc();
  *(v5 + 2256) = swift_task_alloc();
  v43 = sub_10004FAD8();
  *(v5 + 2264) = v43;
  v44 = *(v43 - 8);
  *(v5 + 2272) = v44;
  v45 = *(v44 + 64) + 15;
  *(v5 + 2280) = swift_task_alloc();
  *(v5 + 2288) = swift_task_alloc();
  *(v5 + 2296) = sub_100050658();
  *(v5 + 2304) = sub_100050648();
  v47 = sub_100050628();
  *(v5 + 2312) = v47;
  *(v5 + 2320) = v46;

  return _swift_task_switch(sub_10002DAD8, v47, v46);
}

uint64_t sub_10002DAD8()
{
  v1 = v0;
  sub_100013450();
  v23 = *(v0 + 1912);
  swift_getKeyPath();
  *(v1 + 2328) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  *(v1 + 1464) = v23;
  *(v1 + 2336) = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v24 = *(v23 + 72);
  *(v1 + 2344) = v24;
  v25 = *(v23 + 80);
  *(v1 + 2352) = v25;
  v26 = *(v23 + 88);
  *(v1 + 2360) = v26;
  if (*(v23 + 96) > 1u || *(v23 + 96))
  {
    return sub_1000508D8();
  }

  if (((1 << v24) & 0x33F) == 0)
  {
    if (v24 == 6)
    {
      v87 = *(v1 + 1912);
      v88 = *(v1 + 1896);
      sub_10000A594(v24, v25, v26, 0);
      v89 = [v88 attributedText];
      v90 = [v88 range];
      v92 = [v89 attributedSubstringFromRange:{v90, v91}];

      v93 = [v92 string];
      v94 = sub_100050518();
      v96 = v95;

      *(v1 + 2632) = v96;

      sub_100029C00(v94, v96);
      *(v1 + 1320) = 0;
      *(v1 + 1328) = 0xE000000000000000;
      swift_getKeyPath();
      *(v1 + 2640) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
      *(v1 + 1400) = v87;
      *(v1 + 2648) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v97 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      *(v1 + 2656) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v87 + v97, v1 + 600, &unk_1000711A0, &qword_100058BF0);
      if (*(v1 + 624))
      {
        v98 = *(v1 + 1912);
        sub_10000D6CC(v1 + 600, v1 + 720);
        sub_10000CBA0(v1 + 600, &unk_1000711A0, &qword_100058BF0);
        v99 = sub_10000D634((v1 + 720), *(v1 + 744));
        swift_getKeyPath();
        *(v1 + 1888) = v98;
        sub_10004FB58();

        v100 = *(v23 + 96);
        if (v100 == 255)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v101 = v1;
        v103 = *(v23 + 80);
        v102 = *(v23 + 88);
        v104 = *(v23 + 72);
        v105 = *v99;
        sub_10000A594(v104, v103, v102, *(v23 + 96));
        sub_1000163C8(v104, v103, v102, v100, 0, 0, 0, 0, 2);
        sub_100013054(v104, v103, v102, v100);
        sub_10000CC70((v101 + 720));
        v1 = v101;
      }

      else
      {
        sub_10000CBA0(v1 + 600, &unk_1000711A0, &qword_100058BF0);
      }

      v186 = *(v1 + 2032);
      v187 = *(v1 + 2024);
      v188 = *(v1 + 2016);
      v189 = *(v1 + 1912);
      v190 = sub_100050238();
      v191 = *(v190 + 48);
      v192 = *(v190 + 52);
      swift_allocObject();
      sub_100050228();
      (*(v187 + 104))(v186, enum case for SummarizationClient.TextAssistantSummarizationOptions.Source.textAssistant(_:), v188);
      swift_getKeyPath();
      *(v1 + 1360) = v189;
      sub_10004FB58();

      v11 = *(v189 + 24);
      if (!v11)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v193 = *(v1 + 2008);
      [v11 pid];
      sub_100050198();
      v207 = *(v1 + 2280);
      v208 = *(v1 + 2272);
      v209 = *(v1 + 2080);
      v210 = *(v1 + 2072);
      v246 = *(v1 + 2064);
      v250 = *(v1 + 2104);
      v211 = *(v1 + 2056);
      v212 = *(v1 + 2048);
      v239 = *(v1 + 2264);
      v242 = *(v1 + 2040);
      v213 = *(v1 + 2032);
      v214 = *(v1 + 2008);
      v215 = sub_1000501A8();
      (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
      sub_1000501C8();
      sub_10004FAC8();
      sub_10004FAA8();
      v216 = *(v208 + 8);
      *(v1 + 2664) = v216;
      *(v1 + 2672) = (v208 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v216(v207, v239);
      sub_1000501E8();

      (*(v212 + 8))(v211, v242);
      sub_1000506D8();
      (*(v210 + 8))(v209, v246);
      *(v1 + 2680) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString;
      *(v1 + 2688) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
      *(v1 + 2704) = 0;
      *(v1 + 2696) = 0xE000000000000000;
      v217 = *(v1 + 2296);
      v156 = sub_100050648();
      *(v1 + 2712) = v156;
      v218 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v219 = swift_task_alloc();
      *(v1 + 2720) = v219;
      *v219 = v1;
      v219[1] = sub_100032E10;
      v220 = *(v1 + 2104);
      v14 = *(v1 + 2088);
      v11 = *(v1 + 2000);
      v13 = &protocol witness table for MainActor;
      v15 = v1 + 1376;
    }

    else
    {
      v170 = *(v1 + 1912);
      sub_10000A594(v24, v25, v26, 0);
      sub_100004808(&_swiftEmptyArrayStorage);

      sub_100002814(&qword_100072238, &unk_100059018);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_100057A10;
      *(v171 + 32) = sub_100050518();
      *(v171 + 40) = v172;
      swift_getKeyPath();
      *(v1 + 1352) = v170;
      sub_10004FB58();

      v11 = *(v170 + 24);
      if (!v11)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v173 = *(v1 + 1912);
      v174 = *(v1 + 1896);
      v175 = [v11 pid];
      *(v171 + 72) = &type metadata for Int32;
      *(v171 + 48) = v175;
      *(v1 + 2528) = sub_100004808(v171);
      swift_setDeallocating();
      sub_10000CBA0(v171 + 32, &qword_10006ED38, &unk_100055980);
      swift_deallocClassInstance();
      swift_getKeyPath();
      *(v1 + 2536) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
      *(v1 + 1368) = v173;
      *(v1 + 2544) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      v176 = v174;
      sub_10004FB58();

      v177 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      *(v1 + 2552) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v173 + v177, v1 + 680, &unk_1000711A0, &qword_100058BF0);
      if (*(v1 + 704))
      {
        v178 = *(v1 + 1912);
        sub_10000D6CC(v1 + 680, v1 + 480);
        sub_10000CBA0(v1 + 680, &unk_1000711A0, &qword_100058BF0);
        v179 = sub_10000D634((v1 + 480), *(v1 + 504));
        swift_getKeyPath();
        *(v1 + 1576) = v178;
        sub_10004FB58();

        v180 = *(v23 + 96);
        if (v180 == 255)
        {
LABEL_98:
          __break(1u);
          return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, v12, v13, v14, v15);
        }

        v182 = *(v23 + 80);
        v181 = *(v23 + 88);
        v183 = *(v23 + 72);
        v184 = *v179;
        sub_10000A594(v183, v182, v181, *(v23 + 96));
        sub_1000163C8(v183, v182, v181, v180, 0, 0, 0, 0, 2);
        sub_100013054(v183, v182, v181, v180);
        sub_10000CC70((v1 + 480));
      }

      else
      {
        sub_10000CBA0(v1 + 680, &unk_1000711A0, &qword_100058BF0);
      }

      v253 = *(v1 + 2248);
      v238 = *(v1 + 2224);
      v256 = *(v1 + 2216);
      v194 = *(v1 + 2200);
      v241 = *(v1 + 2192);
      v245 = *(v1 + 2184);
      v249 = *(v1 + 2208);
      v195 = *(v1 + 2176);
      v196 = *(v1 + 2168);
      v231 = *(v1 + 2152);
      v227 = *(v1 + 2160);
      v229 = *(v1 + 2144);
      v234 = *(v1 + 2136);
      v197 = *(v1 + 1896);
      v198 = sub_10004FBE8();
      v199 = *(v198 + 48);
      v200 = *(v198 + 52);
      swift_allocObject();
      sub_10004FBD8();
      v201 = [v197 attributedText];
      [v197 range];
      sub_10000ABB4(7u);

      sub_10004FBB8();

      (*(v196 + 8))(v195, v227);
      v202 = swift_task_alloc();
      *(v202 + 16) = v197;
      *(v202 + 24) = v194;
      sub_100002814(&qword_100072240, &qword_100059028);
      (*(v229 + 104))(v231, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v234);
      sub_1000506F8();

      (*(v241 + 8))(v194, v245);
      sub_1000506D8();
      (*(v256 + 8))(v238, v249);
      *(v1 + 2560) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
      *(v1 + 2568) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString;
      *(v1 + 2576) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback;
      *(v1 + 2584) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
      *(v1 + 2592) = TCTextCompositionAssistantOptionKeyModelPromptLocale;
      *(v1 + 2600) = TCTextCompositionAssistantOptionKeyModelPromptTokenCount;
      v203 = *(v1 + 2296);
      v156 = sub_100050648();
      *(v1 + 2608) = v156;
      v204 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v205 = swift_task_alloc();
      *(v1 + 2616) = v205;
      *v205 = v1;
      v205[1] = sub_100031630;
      v206 = *(v1 + 2248);
      v14 = *(v1 + 2232);
      v13 = &protocol witness table for MainActor;
      v11 = v1 + 88;
      v15 = v1 + 1392;
    }

LABEL_65:
    v12 = v156;

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, v12, v13, v14, v15);
  }

  v27 = *(v1 + 1912);
  v247 = v24;
  sub_10000A594(v24, v25, v26, 0);
  sub_100004808(&_swiftEmptyArrayStorage);

  sub_100002814(&qword_100072238, &unk_100059018);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100057A10;
  *(v28 + 32) = sub_100050518();
  *(v28 + 40) = v29;
  swift_getKeyPath();
  *(v1 + 1584) = v27;
  sub_10004FB58();

  v11 = *(v27 + 24);
  if (!v11)
  {
    goto LABEL_93;
  }

  v30 = *(v1 + 1912);
  v31 = [v11 pid];
  *(v28 + 72) = &type metadata for Int32;
  *(v28 + 48) = v31;
  v32 = sub_100004808(v28);
  swift_setDeallocating();
  sub_10000CBA0(v28 + 32, &qword_10006ED38, &unk_100055980);
  swift_deallocClassInstance();
  v33 = sub_100050518();
  v35 = v34;
  swift_getKeyPath();
  *(v1 + 2368) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  *(v1 + 1600) = v30;
  *(v1 + 2376) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v235 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions;
  v36 = *(v30 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  v37 = 3;
  if ((v36 & 0xC) != 0)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  v39 = v38 | v36;
  if (v36)
  {
    v37 = v39;
  }

  *(v1 + 1048) = &type metadata for UInt;
  *(v1 + 1024) = v37;
  sub_100005060((v1 + 1024), (v1 + 992));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C((v1 + 992), v33, v35, isUniquelyReferenced_nonNull_native);

  if (v26)
  {
    v41 = sub_100050518();
    v43 = v42;
    *(v1 + 856) = &type metadata for String;
    *(v1 + 832) = v25;
    *(v1 + 840) = v26;
    sub_100005060((v1 + 832), (v1 + 800));
    v44 = v247;
    sub_10000A594(v247, v25, v26, 0);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v259 = v32;
    v46 = v1;
    sub_10004C22C((v1 + 800), v41, v43, v45);

    v47 = v259;
  }

  else
  {
    v47 = v32;
    v46 = v1;
    v44 = v247;
  }

  if (v44 - 2 >= 4 && v44)
  {
    v81 = v46;
    v82 = v47;
  }

  else
  {
    v81 = v46;
    v82 = v47;
    if ((*(v46 + 2736) & 1) == 0)
    {
      v83 = sub_100050518();
      v85 = v84;
      *(v46 + 920) = &type metadata for Int;
      *(v46 + 896) = sub_1000380E8(0x7FFFFFFFFFFFFFFFuLL);
      sub_100005060((v46 + 896), (v46 + 864));
      v86 = swift_isUniquelyReferenced_nonNull_native();
      sub_10004C22C((v46 + 864), v83, v85, v86);
    }
  }

  v106 = *(v81 + 1912);
  if (sub_10002818C())
  {
    v107 = *(v81 + 1912);
    swift_getKeyPath();
    *(v81 + 1832) = v107;
    sub_10004FB58();

    if ((*(v30 + v235) & 0x10) != 0)
    {
      v109 = 1;
    }

    else
    {
      v108 = *(v81 + 1912);
      swift_getKeyPath();
      *(v81 + 1840) = v108;
      sub_10004FB58();

      v109 = *(v108 + 64) ^ 1;
    }

    v110 = sub_100050518();
    v112 = v111;
    *(v81 + 984) = &type metadata for Bool;
    *(v81 + 960) = v109 & 1;
    sub_100005060((v81 + 960), (v81 + 928));
    v113 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C((v81 + 928), v110, v112, v113);
  }

  *(v81 + 2384) = v82;
  v114 = *(v81 + 1912);
  swift_getKeyPath();
  *(v81 + 1624) = v114;
  sub_10004FB58();

  v115 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  *(v81 + 2392) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v114 + v115, v81 + 400, &unk_1000711A0, &qword_100058BF0);
  if (*(v81 + 424))
  {
    v116 = *(v81 + 1912);
    sub_10000D6CC(v81 + 400, v81 + 200);
    sub_10000CBA0(v81 + 400, &unk_1000711A0, &qword_100058BF0);
    v117 = sub_10000D634((v81 + 200), *(v81 + 224));
    swift_getKeyPath();
    *(v81 + 1824) = v116;
    sub_10004FB58();

    v118 = *(v23 + 96);
    if (v118 == 255)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v119 = v81;
    v121 = *(v23 + 80);
    v120 = *(v23 + 88);
    v122 = *(v23 + 72);
    v123 = *v117;
    sub_10000A594(v122, v121, v120, *(v23 + 96));
    sub_1000163C8(v122, v121, v120, v118, v25, v26, 0, 0, 2);
    sub_100013054(v122, v121, v120, v118);
    sub_10000CC70((v119 + 200));
    v81 = v119;
  }

  else
  {
    sub_10000CBA0(v81 + 400, &unk_1000711A0, &qword_100058BF0);
  }

  if (*(v81 + 2737) != 1)
  {
    v142 = *(v81 + 1896);
    v141 = [v142 attributedText];
    [v142 range];
    v143 = v142;
    v139 = *(v81 + 1896);
    goto LABEL_64;
  }

  v124 = *(v81 + 2288);
  v125 = *(v81 + 1912);
  v126 = [*(v81 + 1896) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v81 + 1800) = v125;
  sub_10004FB58();

  v127 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v128 = *(v125 + v127);
  if (!*(v128 + 16))
  {
    goto LABEL_69;
  }

  v129 = *(v81 + 2288);

  v130 = sub_10004A0A0(v129);
  if ((v131 & 1) == 0)
  {

LABEL_69:
    (*(*(v81 + 2272) + 8))(*(v81 + 2288), *(v81 + 2264));
    goto LABEL_70;
  }

  v132 = *(v81 + 2288);
  v133 = *(v81 + 2264);
  v134 = *(*(v128 + 56) + 8 * v130);
  v135 = *(*(v81 + 2272) + 8);

  v135(v132, v133);

  if (!(v134 >> 62))
  {
    v136 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v136)
    {
      goto LABEL_56;
    }

    goto LABEL_86;
  }

  v136 = sub_1000508E8();
  if (!v136)
  {
LABEL_86:

LABEL_70:
    sub_100013054(v247, v25, v26, 0);

    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v160 = sub_100050188();
    sub_1000071F4(v160, qword_10007B570);
    v161 = sub_100050168();
    v162 = sub_100050738();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&_mh_execute_header, v161, v162, "Error in follow-up rewriting: Asked to refine text, but current rewritten context is not specified", v163, 2u);
    }

    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_100057A10;
    *(v164 + 32) = sub_100050518();
    *(v164 + 72) = &type metadata for String;
    *(v164 + 40) = v165;
    *(v164 + 48) = 0xD00000000000002BLL;
    *(v164 + 56) = 0x80000001000531A0;
    sub_100004808(v164);
    swift_setDeallocating();
    sub_10000CBA0(v164 + 32, &qword_10006ED38, &unk_100055980);
    swift_deallocClassInstance();
    v166 = objc_allocWithZone(NSError);
    v167 = sub_1000504E8();
    isa = sub_100050408().super.isa;

    v169 = [v166 initWithDomain:v167 code:1 userInfo:isa];

    swift_willThrow();
    v2 = *(v81 + 1912);
    v3 = sub_10002735C();
    v4 = *(v81 + 1912);
    if (v3)
    {
      swift_getKeyPath();
      *(v81 + 1640) = v4;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v4 + v5, v81 + 360, &unk_1000711A0, &qword_100058BF0);
      if (*(v81 + 384))
      {
        v6 = *(v81 + 1912);
        sub_10000D6CC(v81 + 360, v81 + 440);
        sub_10000CBA0(v81 + 360, &unk_1000711A0, &qword_100058BF0);
        v7 = sub_10000D634((v81 + 440), *(v81 + 464));
        v8 = sub_10001D0E0();
        v10 = v9;
        swift_getKeyPath();
        *(v81 + 1568) = v6;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
        sub_10004FB58();

        v16 = *(v6 + 96);
        if (v16 != 255)
        {
          v17 = *(v81 + 2304);
          v18 = *(v81 + 1912);
          v20 = v18[10];
          v19 = v18[11];
          v21 = v18[9];
          sub_10000A594(v21, v20, v19, v16);

          v22 = *v7;
          sub_100016F2C(v8, v10, v21, v20, v19, v16);

          sub_100013054(v21, v20, v19, v16);

          sub_10000CC70((v81 + 440));
          goto LABEL_28;
        }

        goto LABEL_91;
      }

      v66 = *(v81 + 2304);

      v67 = v81 + 360;
    }

    else
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100012198(v169);
      if (qword_10006EA28 != -1)
      {
        swift_once();
      }

      v48 = sub_100050188();
      sub_1000071F4(v48, qword_10007B570);
      swift_errorRetain();
      v49 = sub_100050168();
      v50 = sub_100050738();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&_mh_execute_header, v49, v50, "Error occurred in rewriting: %@", v51, 0xCu);
        sub_10000CBA0(v52, &qword_100072230, &qword_100058ED0);
      }

      v54 = *(v81 + 1912);

      swift_getKeyPath();
      *(v81 + 1816) = v54;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v55 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v54 + v55, v81 + 520, &unk_1000711A0, &qword_100058BF0);
      if (*(v81 + 544))
      {
        v56 = *(v81 + 1912);
        sub_10000D6CC(v81 + 520, v81 + 280);
        sub_10000CBA0(v81 + 520, &unk_1000711A0, &qword_100058BF0);
        v57 = sub_10000D634((v81 + 280), *(v81 + 304));
        swift_getKeyPath();
        *(v81 + 1672) = v56;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
        sub_10004FB58();

        v58 = *(v56 + 96);
        if (v58 != 255)
        {
          v59 = *(v81 + 2304);
          v60 = *(v81 + 1912);
          v62 = v60[10];
          v61 = v60[11];
          v63 = v60[9];
          sub_10000A594(v63, v62, v61, v58);

          v64 = *v57;
          sub_100016A2C(v169, v63, v62, v61, v58);

          sub_100013054(v63, v62, v61, v58);

          sub_10000CC70((v81 + 280));
          goto LABEL_28;
        }

        goto LABEL_92;
      }

      v68 = *(v81 + 2304);

      v67 = v81 + 520;
    }

    sub_10000CBA0(v67, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_28;
  }

LABEL_56:
  v137 = __OFSUB__(v136, 1);
  v11 = v136 - 1;
  if (v137)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v134 & 0xC000000000000001) != 0)
  {
LABEL_88:
    v138 = sub_100050878();
    goto LABEL_61;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v11 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v138 = *(v134 + 8 * v11 + 32);
LABEL_61:
  v139 = v138;
  v140 = *(v81 + 1912);

  if (sub_10002BED8(v139))
  {
    v141 = [v139 attributedText];
    [v139 range];
LABEL_64:
    *(v81 + 2408) = v139;
    *(v81 + 2400) = v141;
    v144 = *(v81 + 2224);
    v255 = *(v81 + 2256);
    v258 = *(v81 + 2216);
    v252 = *(v81 + 2208);
    v145 = *(v81 + 2200);
    v146 = *(v81 + 2192);
    v244 = *(v81 + 2184);
    v147 = *(v81 + 2176);
    v148 = *(v81 + 2168);
    v226 = *(v81 + 2160);
    v149 = *(v81 + 2144);
    v233 = *(v81 + 2152);
    v237 = *(v81 + 2136);
    v150 = sub_10004FBE8();
    v151 = *(v150 + 48);
    v152 = *(v150 + 52);
    swift_allocObject();
    v153 = v139;
    sub_10004FBD8();
    sub_10000ABB4(v247);
    sub_10004FBB8();

    (*(v148 + 8))(v147, v226);
    v154 = swift_task_alloc();
    *(v154 + 16) = v153;
    *(v154 + 24) = v145;
    sub_100002814(&qword_100072240, &qword_100059028);
    (*(v149 + 104))(v233, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v237);
    sub_1000506F8();

    (*(v146 + 8))(v145, v244);
    sub_1000506D8();
    (*(v258 + 8))(v144, v252);
    *(v81 + 2416) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions;
    *(v81 + 2424) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
    v155 = *(v81 + 2296);
    v156 = sub_100050648();
    *(v81 + 2432) = v156;
    v157 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v158 = swift_task_alloc();
    *(v81 + 2440) = v158;
    *v158 = v81;
    v158[1] = sub_10002FA78;
    v159 = *(v81 + 2256);
    v14 = *(v81 + 2232);
    v13 = &protocol witness table for MainActor;
    v11 = v81 + 16;
    v15 = v81 + 1648;
    goto LABEL_65;
  }

  v185 = *(v81 + 2304);

  sub_100013054(v247, v25, v26, 0);

LABEL_28:
  v69 = *(v81 + 2288);
  v70 = *(v81 + 2280);
  v71 = *(v81 + 2256);
  v72 = *(v81 + 2248);
  v73 = *(v81 + 2224);
  v74 = v81;
  v75 = *(v81 + 2200);
  v76 = v74[272];
  v77 = v74[269];
  v78 = v74[266];
  v79 = v74[265];
  v221 = v74[264];
  v222 = v74[263];
  v223 = v74[260];
  v224 = v74[257];
  v225 = v74[254];
  v228 = v74[251];
  v230 = v74[250];
  v232 = v74[249];
  v236 = v74[246];
  v240 = v74[245];
  v243 = v74[244];
  v248 = v74[243];
  v251 = v74[242];
  v254 = v74[241];
  v257 = v74[240];

  v80 = v74[1];

  return v80();
}

uint64_t sub_10002FA78()
{
  v2 = *v1;
  v3 = *(*v1 + 2440);
  v4 = *v1;
  v2[306] = v0;

  v5 = v2[304];
  if (v0)
  {
    v6 = v2[295];
    v7 = v2[294];
    v8 = v2[293];

    sub_100013054(v8, v7, v6, 0);
    v9 = v2[290];
    v10 = v2[289];
    v11 = sub_100035730;
  }

  else
  {

    v9 = v2[290];
    v10 = v2[289];
    v11 = sub_10002FBD8;
  }

  return _swift_task_switch(v11, v10, v9);
}

void *sub_10002FBD8()
{
  v197 = v0;
  v1 = *(v0 + 16);
  *(v0 + 2456) = v1;
  v3 = *(v0 + 24);
  length = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 2464) = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 2472) = *(v0 + 56);
  *(v0 + 2480) = v5;
  v6 = *(v0 + 80);
  *(v0 + 2488) = *(v0 + 72);
  *(v0 + 2496) = v6;
  if (!v1)
  {
    v24 = *(v0 + 2376);
    v25 = *(v0 + 2368);
    v26 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1656) = v26;
    sub_10004FB58();

    v27 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
    v28 = *(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
    v29 = v28;
    if (!v28)
    {
      v30 = *(v0 + 1896);
      v31 = [v30 attributedText];
      v32 = [v30 range];
      v29 = [v31 attributedSubstringFromRange:{v32, v33}];
    }

    v34 = *(v0 + 2376);
    v35 = *(v0 + 2368);
    v36 = *(v0 + 1912);
    v37 = v28;
    sub_1000295E8(v29);
    swift_getKeyPath();
    *(v0 + 1664) = v36;
    sub_10004FB58();

    v191 = v27;
    v194 = v26;
    result = *(v26 + v27);
    if (!result)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v38 = *(v0 + 2392);
    v39 = *(v0 + 2376);
    v40 = *(v0 + 2368);
    v41 = *(v0 + 1912);
    v42 = [result string];
    sub_100050518();

    v43 = sub_1000507C8();
    v45 = v44;
    v47 = v46;

    sub_1000298EC(v43, v45, v47 & 1);
    swift_getKeyPath();
    *(v0 + 1680) = v41;
    sub_10004FB58();

    sub_100005070(v41 + v38, v0 + 320, &unk_1000711A0, &qword_100058BF0);
    if (!*(v0 + 344))
    {
      sub_10000CBA0(v0 + 320, &unk_1000711A0, &qword_100058BF0);
      v100 = v191;
      goto LABEL_54;
    }

    v48 = *(v0 + 2376);
    v49 = *(v0 + 2368);
    v50 = *(v0 + 2336);
    v51 = *(v0 + 2328);
    v52 = *(v0 + 1912);
    sub_10000D6CC(v0 + 320, v0 + 240);
    sub_10000CBA0(v0 + 320, &unk_1000711A0, &qword_100058BF0);
    v173 = sub_10000D634((v0 + 240), *(v0 + 264));
    swift_getKeyPath();
    *(v0 + 1704) = v52;
    sub_10004FB58();

    v53 = *(v52 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);
    v171 = *(v52 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1712) = v52;
    v186 = v53;

    sub_10004FB58();

    v54 = *(v52 + 96);
    if (v54 == 255)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v55 = *(v52 + 72);
    v56 = *(v52 + 80);
    v57 = *(v52 + 88);
    v188 = *(v0 + 2376);
    v178 = *(v0 + 2368);
    v58 = *(v0 + 2336);
    v59 = *(v0 + 2328);
    v60 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1720) = v60;
    v184 = v55;
    v181 = v57;
    sub_10000A594(v55, v56, v57, v54);
    sub_10004FB58();

    v61 = *(v60 + 136);
    swift_getKeyPath();
    *(v0 + 1728) = v60;
    sub_10004FB58();

    result = *(v194 + v191);
    if (!result)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v62 = v54;
    v161 = v61;
    v63 = *(v0 + 2376);
    v64 = *(v0 + 2368);
    v65 = *(v0 + 1912);
    v66 = [result string];
    sub_100050518();

    swift_getKeyPath();
    *(v0 + 1736) = v65;
    sub_10004FB58();

    v67 = *(v65 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
    v160 = *(v65 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
    swift_getKeyPath();
    *(v0 + 1744) = v65;
    v179 = v67;

    sub_10004FB58();

    v68 = *(v65 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1752) = v65;
    v165 = v68;
    v176 = v68;
    sub_10004FB58();

    v69 = *v173;
    v70 = qword_10006EA10;
    v167 = *(v65 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
    v174 = v167;
    if (v70 != -1)
    {
      swift_once();
    }

    v71 = sub_100050188();
    sub_1000071F4(v71, qword_10007B528);

    sub_100013C24(v55, v56, v181, v62);
    v72 = sub_100050168();
    v73 = sub_100050718();

    sub_100013054(v184, v56, v181, v62);
    v159 = v73;
    v169 = v69;
    v162 = v62;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *v74 = 136643075;
      *(v74 + 4) = sub_100046C30(v171, v186, &v196);
      *(v74 + 12) = 2081;
      sub_10000ACE8();
      v75 = sub_1000504E8();

      v76 = [v75 key];

      v77 = sub_100050518();
      v79 = v78;

      v80 = sub_100046C30(v77, v79, &v196);

      *(v74 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v72, v159, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v74, 0x16u);
      swift_arrayDestroy();
    }

    if (v161)
    {
      if (qword_10006E908 != -1)
      {
        swift_once();
      }

      v101 = qword_10007B358;
      v81 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
      v103 = v81[2];
      v102 = v81[3];
      if (v103 >= v102 >> 1)
      {
        v81 = sub_100037F0C((v102 > 1), v103 + 1, 1, v81);
      }

      v81[2] = v103 + 1;
      v81[v103 + 4] = v101;
      if ((v161 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v81 = &_swiftEmptyArrayStorage;
      if ((v161 & 2) == 0)
      {
LABEL_36:
        sub_100002814(&qword_100070168, &qword_100057A70);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_100056D20;
        if (qword_10006E8A0 != -1)
        {
          swift_once();
        }

        v108 = qword_10007B2F0;
        *(v107 + 32) = qword_10007B2F0;
        v109 = v108;
        v110 = sub_1000504E8();

        v111 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v107 + 40) = v110;
        *(v107 + 48) = v111;
        v112 = v111;
        v113 = sub_10001761C(v184, v56, v181, v162);
        sub_100013054(v184, v56, v181, v162);
        *(v107 + 56) = v113;
        if (qword_10006E8A8 != -1)
        {
          swift_once();
        }

        v114 = qword_10007B2F8;
        *(v107 + 64) = qword_10007B2F8;
        type metadata accessor for IAPayloadValue(0);
        v115 = v114;
        isa = sub_1000505D8().super.isa;

        *(v107 + 72) = isa;
        v117 = sub_100004938(v107);
        swift_setDeallocating();
        sub_100002814(&qword_100070170, &qword_100057A78);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v118 = IAPayloadKeyWritingToolsResultText;
        v119 = sub_1000504E8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = v117;
        sub_10004C390(v119, v118, isUniquelyReferenced_nonNull_native);

        v121 = v196;
        if (v179)
        {
          v122 = IAPayloadKeyWritingToolsInputLanguage;
          v123 = sub_1000504E8();
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_10004C390(v123, v122, v124);

          v121 = v196;
        }

        if (v165)
        {
          v125 = qword_10006E8F0;
          v126 = v176;
          if (v125 != -1)
          {
            swift_once();
          }

          v127 = qword_10007B340;
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_10004C390(v126, v127, v128);

          v121 = v196;
        }

        if (v167)
        {
          v129 = qword_10006E8F8;
          v130 = v174;
          if (v129 != -1)
          {
            swift_once();
          }

          v131 = qword_10007B348;
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v196 = v121;
          sub_10004C390(v130, v131, v132);
        }

        v133 = *(v0 + 2272);
        v134 = *(v0 + 2264);
        v135 = *(v0 + 2128);
        v136 = IASignalWritingToolsResultsGenerated;
        v137 = IAChannelWritingTools;
        sub_100005070(v169 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v135, &qword_100070160, &qword_100057D20);
        if ((*(v133 + 48))(v135, 1, v134) == 1)
        {
          sub_10000CBA0(*(v0 + 2128), &qword_100070160, &qword_100057D20);
          v138 = 0;
        }

        else
        {
          v139 = *(v0 + 2272);
          v140 = *(v0 + 2264);
          v141 = *(v0 + 2128);
          sub_10004FAA8();
          (*(v139 + 8))(v141, v140);
          v138 = sub_1000504E8();
        }

        v100 = v191;
        v142 = objc_opt_self();
        type metadata accessor for IAPayloadKey(0);
        sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
        sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey);
        v143 = sub_100050408().super.isa;

        [v142 sendSignal:v136 toChannel:v137 withNullableUniqueStringID:v138 withPayload:v143];

        sub_10000CC70((v0 + 240));
LABEL_54:
        v144 = *(v0 + 2376);
        v145 = *(v0 + 2368);
        v146 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1688) = v146;
        sub_10004FB58();

        v147 = *(v194 + v100);
        *(v0 + 2512) = v147;
        if (v147)
        {
          v148 = *(v0 + 2384);
          v149 = *(v0 + 2360);
          v150 = *(v0 + 2352);
          v151 = *(v0 + 2344);
          v152 = *(v0 + 1896);
          v153 = v147;
          sub_100013054(v151, v150, v149, 0);

          v154 = [v152 range];
          v156 = v155;
          v157 = swift_task_alloc();
          *(v0 + 2520) = v157;
          *v157 = v0;
          v157[1] = sub_1000311A4;
          v158 = *(v0 + 1912);
          v95 = *(v0 + 1896);
          v96 = v153;
          v97 = v154;
          v98 = v156;
          v99 = 1;
          goto LABEL_56;
        }

        goto LABEL_60;
      }
    }

    if (qword_10006E910 != -1)
    {
      swift_once();
    }

    v104 = qword_10007B360;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_100037F0C(0, v81[2] + 1, 1, v81);
    }

    v106 = v81[2];
    v105 = v81[3];
    if (v106 >= v105 >> 1)
    {
      v81 = sub_100037F0C((v105 > 1), v106 + 1, 1, v81);
    }

    v81[2] = v106 + 1;
    v81[v106 + 4] = v104;
    goto LABEL_36;
  }

  if (sub_1000506A8())
  {
    v7 = *(v0 + 2400);
    v189 = *(v0 + 2408);
    v192 = *(v0 + 2384);
    v8 = *(v0 + 2360);
    v9 = *(v0 + 2352);
    v10 = *(v0 + 2344);
    v11 = *(v0 + 2304);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));

    sub_100013054(v10, v9, v8, 0);

    v12 = *(v0 + 2288);
    v13 = *(v0 + 2280);
    v14 = *(v0 + 2256);
    v15 = *(v0 + 2248);
    v16 = *(v0 + 2224);
    v17 = *(v0 + 2200);
    v18 = *(v0 + 2176);
    v19 = *(v0 + 2152);
    v20 = *(v0 + 2128);
    v21 = *(v0 + 2120);
    v163 = *(v0 + 2112);
    v164 = *(v0 + 2104);
    v166 = *(v0 + 2080);
    v168 = *(v0 + 2056);
    v170 = *(v0 + 2032);
    v172 = *(v0 + 2008);
    v175 = *(v0 + 2000);
    v177 = *(v0 + 1992);
    v180 = *(v0 + 1968);
    v182 = *(v0 + 1960);
    v183 = *(v0 + 1952);
    v185 = *(v0 + 1944);
    v187 = *(v0 + 1936);
    v190 = *(v0 + 1928);
    v193 = *(v0 + 1920);

    v22 = *(v0 + 8);

    return v22();
  }

  location = v3;
  if (*(v0 + 2737) == 1)
  {
    v82 = *(v0 + 2416);
    v83 = *(v0 + 2376);
    v84 = *(v0 + 2368);
    v85 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1792) = v85;
    sub_10004FB58();

    if (!sub_100027290(4uLL, *(v85 + v82)))
    {
      v200.location = [*(v0 + 1896) range];
      v200.length = v86;
      v199.location = location;
      v199.length = length;
      v87 = NSIntersectionRange(v199, v200);
      location = v87.location;
      length = v87.length;
    }
  }

  v88 = *(v0 + 2336);
  v89 = *(v0 + 2328);
  v90 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1760) = v90;
  sub_10004FB58();

  *(v0 + 1768) = v90;
  swift_getKeyPath();
  sub_10004FB78();

  v91 = *(v90 + 136);
  v92 = v91 | v4;
  sub_1000126C0(v91 | v4);
  *(v90 + 136) = v92;
  *(v0 + 1776) = v90;
  swift_getKeyPath();
  sub_10004FB68();

  v93 = swift_task_alloc();
  *(v0 + 2504) = v93;
  *v93 = v0;
  v93[1] = sub_100030E0C;
  v94 = *(v0 + 1912);
  v95 = *(v0 + 1896);
  v96 = v1;
  v97 = location;
  v98 = length;
  v99 = 0;
LABEL_56:

  return sub_100035E9C(v96, v97, v98, v95, v99);
}

uint64_t sub_100030E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 2504);
  v6 = *v0;

  v3 = *(v1 + 2320);
  v4 = *(v1 + 2312);

  return _swift_task_switch(sub_100030F2C, v4, v3);
}

uint64_t sub_100030F2C()
{
  v1 = *(v0 + 1912);
  v2 = *(v1 + *(v0 + 2424));
  v3 = *(v0 + 2456);
  if (v2)
  {
    sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
    v4 = v3;
    v5 = v2;
    v6 = sub_1000507A8();

    v3 = *(v0 + 2456);
    v1 = *(v0 + 1912);
    if (v6)
    {
      v7 = *(v0 + 2424);
      v8 = *(v1 + v7);
      *(v1 + v7) = v3;

      goto LABEL_7;
    }

    v9 = *(v0 + 2456);
  }

  else
  {
    v9 = v3;
  }

  v10 = *(v0 + 2448);
  v11 = *(v0 + 2376);
  v12 = *(v0 + 2368);
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v1;
  *(v13 + 24) = v3;
  *(v0 + 1784) = v1;
  sub_10004FB48();

LABEL_7:
  v14 = *(v0 + 2488);
  v15 = *(v0 + 2480);
  v16 = *(v0 + 1912);
  v17 = *(v0 + 1904);
  sub_100029A54(*(v0 + 2464), *(v0 + 2472));
  sub_100029C00(v15, v14);
  if (v17)
  {
    v18 = [*(v0 + 1904) completedUnitCount];
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v18, v19, v22, v20, v21);
    }

    [*(v0 + 1904) setCompletedUnitCount:v22];
  }

  v23 = *(v0 + 2496);
  v24 = *(v0 + 2456);
  v25 = *(v0 + 1912);
  v26 = sub_100017EA8(v23);
  sub_100029F04(v26, v27);
  v28 = sub_100017F64(v23);
  sub_10002A094(v28);
  v29 = sub_100017FBC(v23);

  sub_10002A3D0(v29);

  v30 = *(v0 + 2296);
  v31 = sub_100050648();
  *(v0 + 2432) = v31;
  v32 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v33 = swift_task_alloc();
  *(v0 + 2440) = v33;
  *v33 = v0;
  v33[1] = sub_10002FA78;
  v34 = *(v0 + 2256);
  v20 = *(v0 + 2232);
  v22 = &protocol witness table for MainActor;
  v18 = (v0 + 16);
  v21 = v0 + 1648;
  v19 = v31;

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v18, v19, v22, v20, v21);
}

uint64_t sub_1000311A4()
{
  v1 = *v0;
  v2 = *(*v0 + 2520);
  v3 = *(*v0 + 2512);
  v7 = *v0;

  v4 = *(v1 + 2320);
  v5 = *(v1 + 2312);

  return _swift_task_switch(sub_1000312E4, v5, v4);
}

uint64_t sub_1000312E4()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2304);

  v3 = *(v0 + 2280);
  v4 = *(v0 + 1912);
  v5 = [*(v0 + 1896) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 1336) = v4;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v6 = *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  swift_getKeyPath();
  *(v0 + 1880) = v4;
  v7 = v6;
  sub_10004FB58();

  *(v0 + 1872) = v4;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  sub_100047ED4(v6, v3);
  swift_endAccess();
  *(v0 + 1864) = v4;
  swift_getKeyPath();
  sub_10004FB68();

  v8 = *(v0 + 2288);
  v9 = *(v0 + 2280);
  v10 = *(v0 + 2256);
  v11 = *(v0 + 2248);
  v12 = *(v0 + 2224);
  v13 = *(v0 + 2200);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2152);
  v16 = *(v0 + 2128);
  v17 = *(v0 + 2120);
  v20 = *(v0 + 2112);
  v21 = *(v0 + 2104);
  v22 = *(v0 + 2080);
  v23 = *(v0 + 2056);
  v24 = *(v0 + 2032);
  v25 = *(v0 + 2008);
  v26 = *(v0 + 2000);
  v27 = *(v0 + 1992);
  v28 = *(v0 + 1968);
  v29 = *(v0 + 1960);
  v30 = *(v0 + 1952);
  v31 = *(v0 + 1944);
  v32 = *(v0 + 1936);
  v33 = *(v0 + 1928);
  v34 = *(v0 + 1920);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100031630()
{
  v2 = *v1;
  v3 = *(*v1 + 2616);
  v4 = *v1;
  v2[328] = v0;

  v5 = v2[326];
  if (v0)
  {
    v6 = v2[316];
    v7 = v2[295];
    v8 = v2[294];
    v9 = v2[293];

    sub_100013054(v9, v8, v7, 0);

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_100034890;
  }

  else
  {

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_1000317A4;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_1000317A4()
{
  v237 = v0;
  if (!*(v0 + 88))
  {
    v13 = *(v0 + 2552);
    v14 = *(v0 + 2544);
    v15 = *(v0 + 2536);
    v16 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1408) = v16;
    sub_10004FB58();

    sub_100005070(v16 + v13, v0 + 640, &unk_1000711A0, &qword_100058BF0);
    if (!*(v0 + 664))
    {
      v58 = *(v0 + 2528);
      v59 = *(v0 + 2360);
      v60 = *(v0 + 2352);
      v61 = *(v0 + 2344);
      v62 = *(v0 + 2304);

      sub_100013054(v61, v60, v59, 0);

      sub_10000CBA0(v0 + 640, &unk_1000711A0, &qword_100058BF0);
LABEL_63:
      v138 = *(v0 + 2280);
      v139 = *(v0 + 1912);
      v140 = [*(v0 + 1896) uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v0 + 1336) = v139;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v141 = *(v139 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
      swift_getKeyPath();
      *(v0 + 1880) = v139;
      v142 = v141;
      sub_10004FB58();

      *(v0 + 1872) = v139;
      swift_getKeyPath();
      sub_10004FB78();

      swift_beginAccess();
      sub_100047ED4(v141, v138);
      swift_endAccess();
      *(v0 + 1864) = v139;
      swift_getKeyPath();
      sub_10004FB68();

      goto LABEL_64;
    }

    v17 = *(v0 + 2544);
    v18 = *(v0 + 2536);
    v19 = *(v0 + 2336);
    v20 = *(v0 + 2328);
    v21 = *(v0 + 1912);
    v22 = (v21 + *(v0 + 2568));
    sub_10000D6CC(v0 + 640, v0 + 560);
    sub_10000CBA0(v0 + 640, &unk_1000711A0, &qword_100058BF0);
    v212 = sub_10000D634((v0 + 560), *(v0 + 584));
    swift_getKeyPath();
    *(v0 + 1424) = v21;
    sub_10004FB58();

    v23 = v22[1];
    v207 = *v22;
    swift_getKeyPath();
    *(v0 + 1432) = v21;
    v209 = v23;

    sub_10004FB58();

    v28 = *(v21 + 96);
    if (v28 == 255)
    {
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, v25, v26, v28, v27);
    }

    v29 = *(v21 + 72);
    v30 = *(v21 + 80);
    v31 = *(v21 + 88);
    v228 = *(v0 + 2584);
    v215 = *(v0 + 2544);
    v205 = *(v0 + 2536);
    v32 = *(v0 + 2528);
    v33 = *(v0 + 2360);
    v34 = *(v0 + 2352);
    v35 = *(v0 + 2344);
    v36 = *(v0 + 2336);
    v37 = *(v0 + 2328);
    v38 = *(v0 + 2304);
    v39 = *(v0 + 1912);
    v234 = v29;
    v218 = v31;
    v221 = v30;
    v225 = v28;
    sub_10000A594(v29, v30, v31, v28);

    sub_100013054(v35, v34, v33, 0);

    swift_getKeyPath();
    *(v0 + 1440) = v39;
    sub_10004FB58();

    v197 = *(v39 + 136);
    swift_getKeyPath();
    *(v0 + 1448) = v39;
    sub_10004FB58();

    v40 = *(v39 + v228);
    if (v40)
    {
      v41 = [v40 string];
      sub_100050518();
      v229 = v42;
    }

    else
    {
      v229 = 0;
    }

    v79 = *(v0 + 2544);
    v80 = *(v0 + 2536);
    v81 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1456) = v81;
    sub_10004FB58();

    v82 = *(v81 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
    v195 = *(v81 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
    swift_getKeyPath();
    *(v0 + 1344) = v81;

    sub_10004FB58();

    v83 = *(v81 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1472) = v81;
    v199 = v83;
    v216 = v83;
    sub_10004FB58();

    v201 = *v212;
    v203 = *(v81 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
    v84 = qword_10006EA10;
    v213 = v203;
    if (v84 != -1)
    {
      swift_once();
    }

    v85 = sub_100050188();
    sub_1000071F4(v85, qword_10007B528);

    v86 = v234;
    sub_100013C24(v234, v221, v218, v225);
    v87 = sub_100050168();
    v88 = sub_100050718();

    sub_100013054(v234, v221, v218, v225);
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v236[0] = swift_slowAlloc();
      *v89 = 136643075;
      *(v89 + 4) = sub_100046C30(v207, v209, v236);
      *(v89 + 12) = 2081;
      sub_10000ACE8();
      v90 = sub_1000504E8();

      v91 = [v90 key];

      v92 = sub_100050518();
      v94 = v93;

      v95 = sub_100046C30(v92, v94, v236);

      *(v89 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v87, v88, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v89, 0x16u);
      swift_arrayDestroy();

      v86 = v234;
    }

    if (v197)
    {
      if (qword_10006E908 != -1)
      {
        swift_once();
      }

      v97 = qword_10007B358;
      v96 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
      v99 = v96[2];
      v98 = v96[3];
      if (v99 >= v98 >> 1)
      {
        v96 = sub_100037F0C((v98 > 1), v99 + 1, 1, v96);
      }

      v96[2] = v99 + 1;
      v96[v99 + 4] = v97;
      v86 = v234;
      if ((v197 & 2) == 0)
      {
LABEL_44:
        sub_100002814(&qword_100070168, &qword_100057A70);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_100056D20;
        if (qword_10006E8A0 != -1)
        {
          swift_once();
        }

        v104 = qword_10007B2F0;
        *(v103 + 32) = qword_10007B2F0;
        v105 = v104;
        v106 = sub_1000504E8();

        v107 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v103 + 40) = v106;
        *(v103 + 48) = v107;
        v108 = v107;
        v109 = sub_10001761C(v86, v221, v218, v225);
        sub_100013054(v86, v221, v218, v225);
        *(v103 + 56) = v109;
        if (qword_10006E8A8 != -1)
        {
          swift_once();
        }

        v110 = qword_10007B2F8;
        *(v103 + 64) = qword_10007B2F8;
        type metadata accessor for IAPayloadValue(0);
        v111 = v110;
        isa = sub_1000505D8().super.isa;

        *(v103 + 72) = isa;
        v57 = sub_100004938(v103);
        swift_setDeallocating();
        sub_100002814(&qword_100070170, &qword_100057A78);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v229)
        {
          v113 = IAPayloadKeyWritingToolsResultText;
          v114 = sub_1000504E8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_10004C390(v114, v113, isUniquelyReferenced_nonNull_native);

          v57 = v236[0];
        }

        if (v82)
        {
          v116 = IAPayloadKeyWritingToolsInputLanguage;
          v117 = sub_1000504E8();
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_10004C390(v117, v116, v118);

          v57 = v236[0];
        }

        if (!v199)
        {
          goto LABEL_55;
        }

        v119 = qword_10006E8F0;
        v73 = v216;
        if (v119 == -1)
        {
LABEL_54:
          v120 = qword_10007B340;
          v121 = swift_isUniquelyReferenced_nonNull_native();
          v236[0] = v57;
          sub_10004C390(v73, v120, v121);

          v57 = v236[0];
LABEL_55:
          if (v203)
          {
            v122 = qword_10006E8F8;
            v123 = v213;
            if (v122 != -1)
            {
              swift_once();
            }

            v124 = qword_10007B348;
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v236[0] = v57;
            sub_10004C390(v123, v124, v125);
          }

          v126 = *(v0 + 2272);
          v127 = *(v0 + 2264);
          v128 = *(v0 + 2120);
          v129 = IASignalWritingToolsResultsGenerated;
          v130 = IAChannelWritingTools;
          sub_100005070(v201 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v128, &qword_100070160, &qword_100057D20);
          if ((*(v126 + 48))(v128, 1, v127) == 1)
          {
            sub_10000CBA0(*(v0 + 2120), &qword_100070160, &qword_100057D20);
            v131 = 0;
          }

          else
          {
            v132 = *(v0 + 2272);
            v133 = *(v0 + 2264);
            v134 = *(v0 + 2120);
            sub_10004FAA8();
            (*(v132 + 8))(v134, v133);
            v131 = sub_1000504E8();
          }

          v135 = *(v0 + 1896);
          v136 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
          sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey);
          v137 = sub_100050408().super.isa;

          [v136 sendSignal:v129 toChannel:v130 withNullableUniqueStringID:v131 withPayload:v137];

          sub_10000CC70((v0 + 560));
          goto LABEL_63;
        }

LABEL_98:
        swift_once();
        goto LABEL_54;
      }
    }

    else
    {
      v96 = &_swiftEmptyArrayStorage;
      if ((v197 & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    if (qword_10006E910 != -1)
    {
      swift_once();
    }

    v100 = qword_10007B360;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_100037F0C(0, v96[2] + 1, 1, v96);
    }

    v102 = v96[2];
    v101 = v96[3];
    if (v102 >= v101 >> 1)
    {
      v96 = sub_100037F0C((v101 > 1), v102 + 1, 1, v96);
    }

    v96[2] = v102 + 1;
    v96[v102 + 4] = v100;
    v86 = v234;
    goto LABEL_44;
  }

  v233 = *(v0 + 88);
  v227 = *(v0 + 96);
  v224 = *(v0 + 104);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  if ((sub_1000506A8() & 1) == 0)
  {
    v210 = v1;
    v213 = v4;
    v216 = v6;
    v219 = v3;
    v222 = v5;
    v43 = *(v0 + 2584);
    v44 = *(v0 + 2336);
    v45 = *(v0 + 2328);
    v46 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1480) = v46;
    sub_10004FB58();

    *(v0 + 1488) = v46;
    swift_getKeyPath();
    sub_10004FB78();

    v47 = *(v46 + 136);
    v48 = v47 | v2;
    sub_1000126C0(v47 | v2);
    *(v46 + 136) = v48;
    *(v0 + 1496) = v46;
    swift_getKeyPath();
    sub_10004FB68();

    v49 = *(v46 + v43);
    if (v49)
    {
      sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
      v50 = v233;
      v51 = v49;
      v52 = sub_1000507A8();

      v53 = v216;
      if (v52)
      {
        v54 = *(v0 + 2584);
        v55 = *(v0 + 1912);
        v56 = *(v55 + v54);
        *(v55 + v54) = v233;

        v57 = *(v0 + 2624);
LABEL_14:
        v68 = *(v0 + 1912);
        v69 = v68 + *(v0 + 2560);
        if ((*(v69 + 16) & 1) == 0 && *v69 == v227 && *(v69 + 8) == v224)
        {
          *v69 = v227;
          *(v69 + 8) = v224;
          *(v69 + 16) = 0;
        }

        else
        {
          v70 = *(v0 + 2544);
          v71 = *(v0 + 2536);
          swift_getKeyPath();
          v72 = swift_task_alloc();
          *(v72 + 16) = v68;
          *(v72 + 24) = v227;
          *(v72 + 32) = v224;
          *(v72 + 40) = 0;
          *(v0 + 1512) = v68;
          sub_10004FB48();
        }

        v73 = v219;
        v74 = v222;
        v75 = *(v0 + 2568);
        v76 = *(v0 + 1912);
        if (*(v76 + v75) != v210 || *(v76 + v75 + 8) != v213)
        {
          v77 = *(v76 + v75 + 8);
          if ((sub_1000509B8() & 1) == 0)
          {
            v231 = *(v0 + 2544);
            v155 = *(v0 + 2536);
            v156 = *(v0 + 1912);
            swift_getKeyPath();
            v157 = swift_task_alloc();
            v157[2] = v156;
            v157[3] = v210;
            v157[4] = v213;
            *(v0 + 1520) = v156;
            v73 = v219;
            sub_10004FB48();

            v74 = v222;

            goto LABEL_68;
          }

          v75 = *(v0 + 2568);
          v76 = *(v0 + 1912);
        }

        v78 = (v76 + v75);
        *v78 = v210;
        v78[1] = v213;

LABEL_68:
        v158 = *(v0 + 2576);
        v159 = *(v0 + 1912);
        if (*(v159 + v158) != v73 || *(v159 + v158 + 8) != v53)
        {
          v160 = *(v159 + v158 + 8);
          if ((sub_1000509B8() & 1) == 0)
          {
            v163 = *(v0 + 2544);
            v232 = *(v0 + 2536);
            v164 = v73;
            v73 = *(v0 + 1912);
            swift_getKeyPath();
            v165 = swift_task_alloc();
            v165[2] = v73;
            v165[3] = v164;
            v165[4] = v53;
            *(v0 + 1528) = v73;
            sub_10004FB48();

            v162 = *(v0 + 1904);
            if (!v162)
            {
              goto LABEL_77;
            }

LABEL_75:
            v166 = [v162 completedUnitCount];
            if (!__OFADD__(v166, 1))
            {
              [*(v0 + 1904) setCompletedUnitCount:v166 + 1];
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_98;
          }

          v158 = *(v0 + 2576);
          v159 = *(v0 + 1912);
        }

        v161 = (v159 + v158);
        *v161 = v73;
        v161[1] = v53;

        v162 = *(v0 + 1904);
        if (!v162)
        {
LABEL_77:
          v167 = *(v0 + 2592);
          v168 = sub_100050518();
          if (*(v74 + 16))
          {
            v170 = sub_10004A138(v168, v169);
            v172 = v171;

            if (v172)
            {
              sub_100015440(*(v74 + 56) + 32 * v170, v0 + 1088);
              v173 = swift_dynamicCast();
              v174 = *(v0 + 1304);
              v175 = v173 == 0;
              if (v173)
              {
                v176 = *(v0 + 1304);
              }

              else
              {
                v176 = 0;
              }

              if (v175)
              {
                v177 = 0;
              }

              else
              {
                v177 = *(v0 + 1312);
              }

LABEL_87:
              v178 = *(v0 + 2600);
              v179 = *(v0 + 1912);
              sub_100029F04(v176, v177);
              v180 = sub_100050518();
              if (*(v74 + 16))
              {
                v182 = sub_10004A138(v180, v181);
                v184 = v183;

                if (v184)
                {
                  sub_100015440(*(v74 + 56) + 32 * v182, v0 + 1056);
                  sub_10000E5D8(0, &qword_100070188, NSNumber_ptr);
                  v185 = swift_dynamicCast();
                  v186 = *(v0 + 1552);
                  if (v185)
                  {
                    v187 = *(v0 + 1552);
                  }

                  else
                  {
                    v187 = 0;
                  }

LABEL_94:
                  v188 = *(v0 + 1912);
                  sub_10002A094(v187);
                  v189 = sub_100017FBC(v74);

                  sub_10002A3D0(v189);

                  v190 = *(v0 + 2296);
                  v191 = sub_100050648();
                  *(v0 + 2608) = v191;
                  v192 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
                  v193 = swift_task_alloc();
                  *(v0 + 2616) = v193;
                  *v193 = v0;
                  v193[1] = sub_100031630;
                  v194 = *(v0 + 2248);
                  v28 = *(v0 + 2232);
                  v26 = &protocol witness table for MainActor;
                  v27 = v0 + 1392;
                  v24 = v0 + 88;
                  v25 = v191;

                  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, v25, v26, v28, v27);
                }
              }

              else
              {
              }

              v187 = 0;
              goto LABEL_94;
            }
          }

          else
          {
          }

          v176 = 0;
          v177 = 0;
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v63 = v233;
      v53 = v216;
    }

    v57 = *(v0 + 2624);
    v64 = *(v0 + 2544);
    v65 = *(v0 + 2536);
    v66 = *(v0 + 1912);
    swift_getKeyPath();
    v67 = swift_task_alloc();
    *(v67 + 16) = v66;
    *(v67 + 24) = v233;
    *(v0 + 1504) = v66;
    sub_10004FB48();

    goto LABEL_14;
  }

  v7 = *(v0 + 2528);
  v8 = *(v0 + 2360);
  v9 = *(v0 + 2352);
  v10 = *(v0 + 2344);
  v11 = *(v0 + 2304);
  v12 = *(v0 + 1896);
  (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));

  sub_100013054(v10, v9, v8, 0);

LABEL_64:
  v143 = *(v0 + 2288);
  v144 = *(v0 + 2280);
  v145 = *(v0 + 2256);
  v146 = *(v0 + 2248);
  v147 = *(v0 + 2224);
  v148 = *(v0 + 2200);
  v149 = *(v0 + 2176);
  v150 = *(v0 + 2152);
  v151 = *(v0 + 2128);
  v152 = *(v0 + 2120);
  v196 = *(v0 + 2112);
  v198 = *(v0 + 2104);
  v200 = *(v0 + 2080);
  v202 = *(v0 + 2056);
  v204 = *(v0 + 2032);
  v206 = *(v0 + 2008);
  v208 = *(v0 + 2000);
  v211 = *(v0 + 1992);
  v214 = *(v0 + 1968);
  v217 = *(v0 + 1960);
  v220 = *(v0 + 1952);
  v223 = *(v0 + 1944);
  v226 = *(v0 + 1936);
  v230 = *(v0 + 1928);
  v235 = *(v0 + 1920);

  v153 = *(v0 + 8);

  return v153();
}