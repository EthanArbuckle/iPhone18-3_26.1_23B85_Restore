uint64_t sub_100001824()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100001898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1000018E4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_100001938()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000019A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100001A68(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001AB0(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E00, &unk_100034A40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044DF8, &qword_100034A38);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100001BE8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E00, &unk_100034A40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100001DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100001E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_100001E68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_100001EBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100001F2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100001FEC(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E18, &qword_100034AA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044E10, &qword_100034A98);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100002124(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E18, &qword_100034AA0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044E10, &qword_100034A98);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_1000022CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100002344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000023EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100002470(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

void sub_100002518(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1000025A8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_100001A68(a2, a3);
  sub_1000332D4();
  return swift_endAccess();
}

uint64_t sub_100002620(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E28, &qword_100034AF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044E20, &qword_100034AF0);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100002758(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E28, &qword_100034AF8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

void sub_1000028CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1000332E4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1000332E4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_100002A44(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_100002AAC(a1, a2, a3, a4);
  return v11;
}

unint64_t sub_100002AAC(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v10 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  v15 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v31 = 0;
  v32 = 1;
  sub_1000332C4();
  v27[1] = v11;
  v27[2] = v10;
  (*(v11 + 32))(v5 + v15, v14, v10);
  v16 = type metadata accessor for ActivityItem();
  v17 = (*(v16 + 448))(1, a1, a2);

  swift_beginAccess();
  v30 = v17;
  sub_1000332C4();
  swift_endAccess();
  v31 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_16:
    v18 = sub_100034054();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_3:
      v28 = v6;
      v29 = v5;
      v19 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v6 = sub_100033FC4();
          v5 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v5 = v29;
            LOBYTE(v6) = v28;
            break;
          }
        }

        else
        {
          if (v19 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a3 + 8 * v19 + 32);

          v5 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_13;
          }
        }

        v20 = *(*v6 + 240);

        v22 = v20(v21);

        if (v22)
        {
          sub_100033FF4();
          v23 = v31[2];
          sub_100034024();
          sub_100034034();
          sub_100034004();
        }

        else
        {
        }

        ++v19;
        if (v5 == v18)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v31 = sub_1000063B0(v24);
  sub_100004B48(&v31);

  v25 = v31;
  swift_beginAccess();
  v30 = v25;
  sub_100001A68(&qword_100044E08, &unk_100035A80);
  sub_1000332C4();
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup_includeEntireCategory) = v6 & 1;
  return v5;
}

uint64_t sub_100002EC8()
{
  v1 = (*(*v0 + 112))();
  v2 = (*(*v1 + 240))(v1);

  return v2 & 1;
}

void *sub_100002F40()
{
  v15 = &_swiftEmptySetSingleton;
  v14[0] = &_swiftEmptySetSingleton;
  v14[1] = &_swiftEmptySetSingleton;
  v1 = *(*v0 + 112);
  v2 = *v1();
  v3 = (*(v2 + 384))();

  if ((v3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = (v1)(v4);
  v6 = (*(*v5 + 240))(v5);

  if (v6)
  {
    v8 = (v1)(v7);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);

    sub_100005AEC(&v13, v9, v10);

    if (*(v0 + OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup_includeEntireCategory) == 1)
    {
LABEL_4:
      sub_1000030E4(v0, &v15, v14);
    }
  }

  swift_beginAccess();
  v11 = v15;
  swift_beginAccess();
  return v11;
}

unint64_t sub_1000030E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = sub_100033294();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 160))(v8);
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_21:
  }

  result = sub_100034054();
  v14 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v30 = (v6 + 8);
    *&v12 = 136446210;
    v27 = v12;
    v28 = a2;
    v29 = a3;
    v31 = v14;
    v33 = v13;
    do
    {
      if (v16)
      {
        v17 = sub_100033FC4();
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      if ((*(*v17 + 384))())
      {
        v18 = *(v17 + 24);
        v19 = *(v17 + 32);
        if (*(v17 + 16) && *(v17 + 16) == 1)
        {
          v20 = *(v17 + 32);

          sub_100033274();

          v21 = sub_100033284();
          v22 = v10;
          v23 = sub_100033EB4();

          if (os_log_type_enabled(v21, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v34 = v25;
            *v24 = v27;
            v26 = sub_1000045A0(v18, v19, &v34);

            *(v24 + 4) = v26;
            _os_log_impl(&_mh_execute_header, v21, v23, "Unexpected category identifier %{public}s selected", v24, 0xCu);
            sub_100006A74(v25);
          }

          else
          {
          }

          (*v30)(v22, v32);
          v10 = v22;
          v14 = v31;
        }

        else
        {
          swift_beginAccess();

          sub_100005AEC(&v35, v18, v19);
          swift_endAccess();
        }

        v13 = v33;
      }

      else
      {
      }

      ++v15;
    }

    while (v14 != v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000034AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 112);
  v9 = v8();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  v12 = sub_100003BD8(v10, v11, a2);

  if (v12)
  {

    v15 = *(v8)(v14);
    (*(v15 + 392))(1);

    v17 = *(*v4 + 160);
    v18 = (v17)(v16);
    if (v18 >> 62)
    {
      goto LABEL_62;
    }

    a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    while (1)
    {
      if (!a1)
      {
        return result;
      }

      v20 = 0;
      while (1)
      {
        v21 = (v17)(result);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = sub_100033FC4();
          goto LABEL_9;
        }

        if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v22 = *(v21 + 8 * v20 + 32);

LABEL_9:
        ++v20;

        (*(*v22 + 392))(1);

        if (a1 == v20)
        {
          return result;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      a1 = sub_100034054();

      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_64;
      }
    }
  }

  v53 = a3;
  v54 = *(*v4 + 160);
  v23 = v54(v13);
  if (v23 >> 62)
  {
LABEL_64:
    v17 = sub_100034054();

    if (v17 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v53;
  if (v17)
  {
    v25 = 0;
    v50 = a1 + 56;
    v51 = v17;
    v52 = a1;
    while (1)
    {
      v27 = v54(v24);
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = sub_100033FC4();
      }

      else
      {
        if (v25 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v28 = *(v27 + 8 * v25 + 32);
      }

      v29 = v4;

      v17 = *(v28 + 16);
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      sub_100006698();

      sub_100033DC4();
      sub_100033DC4();
      if (v55 == v57 && v56 == v58)
      {
        break;
      }

      v33 = sub_1000340D4();

      if (v33)
      {
        goto LABEL_27;
      }

      v17 = &type metadata for ActivityItem.ActivityItemType;
      sub_100033DC4();
      sub_100033DC4();
      if (v55 == v57 && v56 == v58)
      {

        v4 = v29;
LABEL_45:
        v47 = v54(v45);
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = sub_100033FC4();
        }

        else
        {
          if (v25 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v48 = *(v47 + 8 * v25 + 32);
        }

        v17 = v53;
        v49 = sub_100003BD8(v30, v31, v53);

        (*(*v48 + 392))(v49 & 1);

        goto LABEL_19;
      }

      v46 = sub_1000340D4();

      v4 = v29;
      if (v46)
      {
        goto LABEL_45;
      }

LABEL_18:
      v17 = v53;
LABEL_19:
      if (++v25 == v51)
      {
      }
    }

LABEL_27:
    v4 = v29;
    v34 = v54(v32);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = sub_100033FC4();
      v35 = v52;
      v36 = v50;
    }

    else
    {
      v35 = v52;
      v36 = v50;
      if (v25 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v37 = *(v34 + 8 * v25 + 32);
    }

    if (*(v35 + 16) && (v38 = *(v35 + 40), sub_100034154(), sub_100033D74(), v39 = sub_100034164(), v40 = -1 << *(v35 + 32), v41 = v39 & ~v40, ((*(v36 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
    {
      v42 = ~v40;
      while (1)
      {
        v43 = (*(v35 + 48) + 16 * v41);
        v44 = *v43 == v30 && v43[1] == v31;
        if (v44 || (sub_1000340D4() & 1) != 0)
        {
          break;
        }

        v41 = (v41 + 1) & v42;
        if (((*(v36 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v26 = 1;
    }

    else
    {
LABEL_16:
      v26 = 0;
    }

    (*(*v37 + 392))(v26);

    goto LABEL_18;
  }
}

uint64_t sub_100003BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100034154();
  sub_100033D74();
  v7 = sub_100034164();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1000340D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t (*sub_100003CD0(void **a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  *a1 = sub_100002F40();
  a1[1] = v3;
  a1[2] = v4;
  return sub_100003D1C;
}

uint64_t sub_100003D1C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    return sub_1000034AC(*a1, v2, v4);
  }

  v6 = *a1;

  sub_1000034AC(v3, v2, v4);
}

uint64_t sub_100003DB8()
{
  v1 = (*(*v0 + 112))();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  sub_100033D74();
}

uint64_t sub_100003E40(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  v7 = (*(*a2 + 112))(v6);
  v9 = *(v7 + 24);
  v8 = *(v7 + 32);

  if (v5 == v9 && v4 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000340D4();
  }

  return v11 & 1;
}

uint64_t sub_100003F34()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category;
  v2 = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items;
  v4 = sub_100001A68(&qword_100044E10, &qword_100034A98);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v6 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_100004038()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category;
  v2 = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items;
  v4 = sub_100001A68(&qword_100044E10, &qword_100034A98);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v6 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

Swift::Int sub_100004178()
{
  sub_100034154();
  (*(*v0 + 296))(v2);
  return sub_100034164();
}

Swift::Int sub_100004278()
{
  sub_100034154();
  (*(**v0 + 296))(v2);
  return sub_100034164();
}

uint64_t sub_1000042E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 112))();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  v7 = (*(*v2 + 112))(v6);
  v9 = *(v7 + 24);
  v8 = *(v7 + 32);

  if (v5 == v9 && v4 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000340D4();
  }

  return v11 & 1;
}

uint64_t sub_1000043D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityGroup();
  result = sub_1000332B4();
  *a1 = result;
  return result;
}

char *sub_100004414(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A68(&qword_100044FF0, &unk_100035A90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100004518(uint64_t a1, uint64_t a2)
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

  sub_100001A68(&qword_100044FE8, qword_100034C00);
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

uint64_t sub_1000045A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000466C(v11, 0, 0, 1, a1, a2);
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
    sub_100006AC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006A74(v11);
  return v7;
}

unint64_t sub_10000466C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004778(a5, a6);
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
    result = sub_100033FE4();
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

char *sub_100004778(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000047C4(a1, a2);
  sub_1000048F4(&off_1000417C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000047C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000049E0(v5, 0);
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

  result = sub_100033FE4();
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
        v10 = sub_100033D94();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000049E0(v10, 0);
        result = sub_100033FA4();
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

uint64_t sub_1000048F4(uint64_t result)
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

  result = sub_100004A54(result, v12, 1, v3);
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

void *sub_1000049E0(uint64_t a1, uint64_t a2)
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

  sub_100001A68(&qword_100044FD8, &qword_100035220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004A54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A68(&qword_100044FD8, &qword_100035220);
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

uint64_t sub_100004B48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100006B84(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100004BC4(v6);
  return sub_100034004();
}

Swift::Int sub_100004BC4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000340B4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ActivityItem();
        v6 = sub_100033E24();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100004E54(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100004CC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100004CC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(*v8 + 192);

      v12 = v10(v11);
      v14 = v13;
      if (v12 == (*(*v9 + 192))() && v14 == v15)
      {

LABEL_5:
        ++v4;
        v6 = v22 + 1;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_1000340D4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v18;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100004E54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v113 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_103:
    v7 = *v113;
    if (!*v113)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_105:
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v108 = *&v8[16 * v106 + 24];
          sub_100005668((*a3 + 8 * v107), (*a3 + 8 * *&v8[16 * v106 + 16]), (*a3 + 8 * v108), v7);
          if (v5)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100005AD8(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_129;
          }

          v109 = &v8[16 * v106];
          *v109 = v107;
          *(v109 + 1) = v108;
          result = sub_100005A4C(v106 - 1);
          v106 = *(v8 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_100005AD8(v8);
    v8 = result;
    goto LABEL_105;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    v120 = v8;
    if (v7 < v6)
    {
      v116 = v6;
      v10 = v9;
      v11 = *a3;
      v12 = v7;
      v114 = v10;
      v13 = *(*a3 + 8 * v10);
      v14 = *(**(*a3 + 8 * v7) + 192);

      v16 = v14(v15);
      v18 = v17;
      v20 = v16 == (*(*v13 + 192))() && v18 == v19;
      v111 = v5;
      if (v20)
      {
        v118 = 0;
      }

      else
      {
        v118 = sub_1000340D4();
      }

      v21 = 8 * v114;
      v22 = v11 + 8 * v114 + 16;
      v23 = 8 * v114 + 8;
      v7 = v12;
      do
      {
        v26 = v7;
        v27 = v23;
        if (++v7 >= v116)
        {
          break;
        }

        v122 = v7;
        v28 = *(v22 - 8);
        v29 = *(**v22 + 192);

        v31 = v29(v30);
        v33 = v32;
        v35 = v31 == (*(*v28 + 192))() && v33 == v34;
        v24 = v35 ? 0 : sub_1000340D4();

        v25 = v118 ^ v24;
        v22 += 8;
        v23 = v27 + 8;
        v8 = v120;
        v7 = v122;
      }

      while ((v25 & 1) == 0);
      v5 = v111;
      if ((v118 & 1) == 0)
      {
        goto LABEL_29;
      }

      v36 = v114;
      if (v7 < v114)
      {
        goto LABEL_132;
      }

      if (v114 < v7)
      {
        do
        {
          if (v36 != v26)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v39 = *(v38 + v21);
            *(v38 + v21) = *(v38 + v27);
            *(v38 + v27) = v39;
          }

          ++v36;
          v27 -= 8;
          v21 += 8;
        }

        while (v36 < v26--);
LABEL_29:
        v9 = v114;
        goto LABEL_30;
      }

      v9 = v114;
    }

LABEL_30:
    v40 = a3[1];
    if (v7 < v40)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_131;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v7 < v9)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100004414(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v60 = *(v8 + 2);
    v59 = *(v8 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = sub_100004414((v59 > 1), v60 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v61;
    v62 = &v8[16 * v60];
    *(v62 + 4) = v9;
    *(v62 + 5) = v7;
    v63 = *v113;
    if (!*v113)
    {
      goto LABEL_140;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v8 + 4);
          v66 = *(v8 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_72:
          if (v68)
          {
            goto LABEL_119;
          }

          v81 = &v8[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_122;
          }

          v87 = &v8[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_126;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v91 = &v8[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_86:
        if (v86)
        {
          goto LABEL_121;
        }

        v94 = &v8[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_124;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_93:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
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

        if (!*a3)
        {
          goto LABEL_137;
        }

        v103 = *&v8[16 * v102 + 32];
        v104 = *&v8[16 * v64 + 40];
        sub_100005668((*a3 + 8 * v103), (*a3 + 8 * *&v8[16 * v64 + 32]), (*a3 + 8 * v104), v63);
        if (v5)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100005AD8(v8);
        }

        if (v102 >= *(v8 + 2))
        {
          goto LABEL_116;
        }

        v105 = &v8[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        result = sub_100005A4C(v64);
        v61 = *(v8 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v8[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_117;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_118;
      }

      v76 = &v8[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_120;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_123;
      }

      if (v80 >= v72)
      {
        v98 = &v8[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_127;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_103;
    }
  }

  v41 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_133;
  }

  if (v41 >= v40)
  {
    v41 = a3[1];
  }

  if (v41 < v9)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v7 == v41)
  {
    goto LABEL_52;
  }

  v112 = v5;
  v42 = *a3;
  v43 = *a3 + 8 * v7 - 8;
  v115 = v9;
  v117 = v41;
  v44 = v9 - v7;
LABEL_41:
  v123 = v7;
  v45 = *(v42 + 8 * v7);
  v46 = v44;
  v119 = v43;
  v47 = v43;
  while (1)
  {
    v48 = *v47;
    v49 = *(*v45 + 192);

    v51 = v49(v50);
    v53 = v52;
    if (v51 == (*(*v48 + 192))() && v53 == v54)
    {

LABEL_40:
      v7 = (v123 + 1);
      v43 = v119 + 8;
      --v44;
      if (v123 + 1 == v117)
      {
        v7 = v117;
        v5 = v112;
        v8 = v120;
        v9 = v115;
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v56 = sub_1000340D4();

    if ((v56 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!v42)
    {
      break;
    }

    v57 = *v47;
    v45 = v47[1];
    *v47 = v45;
    v47[1] = v57;
    --v47;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_40;
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
  return result;
}

uint64_t sub_100005668(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v25 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v44 = &v4[8 * v12];
    if (v10 >= 8 && v25 > v6)
    {
      v43 = v4;
LABEL_32:
      v42 = v25;
      v26 = v25 - 8;
      v5 -= 8;
      v27 = v44;
      do
      {
        v28 = *(v27 - 1);
        v27 -= 8;
        v29 = v26;
        v30 = *v26;
        v31 = *(*v28 + 192);

        v33 = v31(v32);
        v35 = v34;
        if (v33 == (*(*v30 + 192))() && v35 == v36)
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_1000340D4();
        }

        v39 = v5 + 8;
        if (v38)
        {
          v40 = v29;
          if (v39 != v42)
          {
            *v5 = *v29;
          }

          v4 = v43;
          if (v44 <= v43 || (v25 = v40, v40 <= v6))
          {
            v25 = v40;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v39 != v44)
        {
          *v5 = *v27;
        }

        v5 -= 8;
        v44 = v27;
        v26 = v29;
      }

      while (v27 > v43);
      v44 = v27;
      v25 = v42;
      v4 = v43;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v44 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *(**v14 + 192);

        v18 = v16(v17);
        v20 = v19;
        v22 = v18 == (*(*v15 + 192))() && v20 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1000340D4();

        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

        v24 = v14;
        v22 = v6 == v14;
        v14 += 8;
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
        if (v4 >= v44 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v24 = v4;
      v22 = v6 == v4;
      v4 += 8;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v24;
      goto LABEL_23;
    }

LABEL_25:
    v25 = v6;
  }

LABEL_49:
  if (v25 != v4 || v25 >= &v4[(v44 - v4 + (v44 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v25, v4, 8 * ((v44 - v4) / 8));
  }

  return 1;
}

uint64_t sub_100005A4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100005AD8(v3);
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

uint64_t sub_100005AEC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100034154();
  sub_100033D74();
  v9 = sub_100034164();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000340D4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100005E9C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005C3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  result = sub_100033F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100034154();
      sub_100033D74();
      result = sub_100034164();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100005E9C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005C3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000601C();
      goto LABEL_16;
    }

    sub_100006178(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100034154();
  sub_100033D74();
  result = sub_100034164();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000340D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000340E4();
  __break(1u);
  return result;
}

void *sub_10000601C()
{
  v1 = v0;
  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  v2 = *v0;
  v3 = sub_100033F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100006178(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  result = sub_100033F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100034154();

      sub_100033D74();
      result = sub_100034164();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

void *sub_1000063B0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100034054();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100004518(v3, 0);
  sub_100006444(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100006444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100034054();
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
      result = sub_100034054();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100006B20();
          for (i = 0; i != v6; ++i)
          {
            sub_100001A68(&qword_100044E08, &unk_100035A80);
            v9 = sub_1000065C4(v13, i, a3);
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
        type metadata accessor for ActivityItem();
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

uint64_t (*sub_1000065C4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100033FC4();
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
    *v3 = v5;
    return sub_100006644;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityGroup()
{
  result = qword_100046400;
  if (!qword_100046400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006698()
{
  result = qword_100044E30;
  if (!qword_100044E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044E30);
  }

  return result;
}

unint64_t sub_1000066F0()
{
  result = qword_100044E38;
  if (!qword_100044E38)
  {
    type metadata accessor for ActivityGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044E38);
  }

  return result;
}

void sub_10000675C()
{
  sub_100006868();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000068C0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000696C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100006868()
{
  if (!qword_100044E68)
  {
    type metadata accessor for ActivityItem();
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100044E68);
    }
  }
}

void sub_1000068C0()
{
  if (!qword_100044E70)
  {
    sub_100006924(&qword_100044E08, &unk_100035A80);
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100044E70);
    }
  }
}

uint64_t sub_100006924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000696C()
{
  if (!qword_100044E78)
  {
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100044E78);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ActivityGroup.Selection(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityGroup.Selection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityGroup.Selection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100006A24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006A44(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100006A74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006AC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006B20()
{
  result = qword_100044FE0;
  if (!qword_100044FE0)
  {
    sub_100006924(&qword_100044E08, &unk_100035A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044FE0);
  }

  return result;
}

uint64_t sub_100006BA0()
{
  error = 0;
  v1 = SecTaskCopySigningIdentifier(v0, &error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100033D34();

    swift_beginAccess();
    if (error)
    {
    }
  }

  else
  {
    v4 = sub_100033284();
    v5 = sub_100033EB4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      swift_beginAccess();
      sub_100001A68(&qword_100044FF8, &qword_100034C20);
      v8 = sub_100033D54();
      v10 = sub_1000045A0(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to extract bundle identifier from SecTask: %{public}s", v6, 0xCu);
      sub_100006A74(v7);
    }

    swift_beginAccess();
    if (error)
    {
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100006D7C()
{
  error = 0;
  sub_1000201E0(1);
  v1 = sub_100033D04();

  v2 = SecTaskCopyValueForEntitlement(v0, v1, &error);

  v17 = v2;
  sub_100001A68(&qword_100045008, &qword_100034C48);
  if (swift_dynamicCast())
  {
    v3 = v16;
    v4 = error;
    v5 = v16;
    if (!error)
    {
      return v5 & 1;
    }

LABEL_8:

    v5 = v3;
    return v5 & 1;
  }

  if (!error)
  {
    v5 = 0;
    return v5 & 1;
  }

  v6 = sub_100033284();
  v7 = sub_100033EB4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_1000201E0(1);
    v11 = sub_1000045A0(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    sub_100001A68(&qword_100045010, &qword_100034C50);
    v12 = sub_100033D54();
    v14 = sub_1000045A0(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to extract entitlement %s from SecTask: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v3 = 0;
  v5 = 0;
  v4 = error;
  if (error)
  {
    goto LABEL_8;
  }

  return v5 & 1;
}

void type metadata accessor for CFError()
{
  if (!qword_100045000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100045000);
    }
  }
}

uint64_t sub_100006FDC(char a1)
{
  if (!a1)
  {
    return 7368801;
  }

  if (a1 == 1)
  {
    return 0x79726F6765746163;
  }

  return 6448503;
}

uint64_t sub_100007028(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 6448503;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000340D4();
  }

  return v11 & 1;
}

Swift::Int sub_100007114()
{
  v1 = *v0;
  sub_100034154();
  sub_100033D74();

  return sub_100034164();
}

uint64_t sub_1000071A8()
{
  *v0;
  *v0;
  sub_100033D74();
}

Swift::Int sub_100007228()
{
  v1 = *v0;
  sub_100034154();
  sub_100033D74();

  return sub_100034164();
}

uint64_t sub_1000072B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B60C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000072E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100007340()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100007370(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10000DBBC(a1, &v10 - v7, &qword_100045018, &qword_100034C60);
  sub_10000DBBC(v8, v6, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(a1, &qword_100045018, &qword_100034C60);
  return sub_10000DC24(v8, &qword_100045018, &qword_100034C60);
}

uint64_t sub_100007488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();
}

uint64_t sub_100007544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  sub_10000DBBC(a1, &v9 - v6, &qword_100045018, &qword_100034C60);
  return (*(**a2 + 152))(v7);
}

uint64_t sub_100007610(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000DBBC(a1, v5, &qword_100045018, &qword_100034C60);

  sub_100033314();
  return sub_10000DC24(a1, &qword_100045018, &qword_100034C60);
}

uint64_t (*sub_100007700(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000077A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100032F84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10000782C(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045028, &qword_100034CB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045020, &qword_100034CB0);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100007964(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045028, &qword_100034CB8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045020, &qword_100034CB0);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100007B04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100007B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007BC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_100007C2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100007CA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100007D68(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045038, &qword_100034D10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045030, &qword_100034D08);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100007EA0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045038, &qword_100034D10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045030, &qword_100034D08);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1000080D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100008190(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000082C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_10000844C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_100008508(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000085C8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100008700(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008884@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_100008940(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100008A08(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100008B40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008CF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100008D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100008E1C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100008E88(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

uint64_t sub_100008F48(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100009080(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

uint64_t sub_100009224(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  v10 = v9;
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v42 = a1;
  v50 = a9;
  v41 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v41);
  v14 = &v38 - v13;
  v39 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v51 = *(v39 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v39);
  v17 = &v38 - v16;
  v40 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v18 = *(*(v40 - 8) + 64);
  v19 = __chkstk_darwin(v40);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  v24 = *(v10 + 48);
  v25 = *(v10 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v28 = sub_100032F84();
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  sub_10000DBBC(v23, v21, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v23, &qword_100045018, &qword_100034C60);
  v29 = v39;
  (*(v51 + 32))(v26 + v27, v17, v39);
  v30 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v54 = 0;
  sub_1000332C4();
  v31 = *(v11 + 32);
  v32 = v41;
  v31(v26 + v30, v14, v41);
  v33 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  v54 = 0;
  sub_1000332C4();
  v31(v26 + v33, v14, v32);
  *(v26 + 16) = v42;
  v34 = v44;
  *(v26 + 24) = v43;
  *(v26 + 32) = v34;
  swift_beginAccess();
  v52 = v45;
  v53 = v46;
  sub_1000332C4();
  swift_endAccess();
  v35 = v47;
  sub_10000DBBC(v47, v23, &qword_100045018, &qword_100034C60);
  v36 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v51 + 8))(v26 + v36, v29);
  sub_10000DBBC(v23, v21, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v23, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v52) = v48;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v52) = v49;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v50;

  sub_100033314();
  sub_10000DC24(v35, &qword_100045018, &qword_100034C60);
  return v26;
}

uint64_t sub_1000096FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v38 = a1;
  v46 = a9;
  v37 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v37);
  v13 = &v34 - v12;
  v47 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v35 = *(v47 - 8);
  v14 = *(v35 + 64);
  __chkstk_darwin(v47);
  v16 = &v34 - v15;
  v36 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v17 = *(*(v36 - 8) + 64);
  v18 = __chkstk_darwin(v36);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v23 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v24 = sub_100032F84();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_10000DBBC(v22, v20, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v22, &qword_100045018, &qword_100034C60);
  v25 = v35;
  (*(v35 + 32))(v9 + v23, v16, v47);
  v26 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v50 = 0;
  sub_1000332C4();
  v27 = *(v10 + 32);
  v28 = v37;
  v27(v9 + v26, v13, v37);
  v29 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  v50 = 0;
  sub_1000332C4();
  v27(v9 + v29, v13, v28);
  *(v9 + 16) = v38;
  v30 = v40;
  *(v9 + 24) = v39;
  *(v9 + 32) = v30;
  swift_beginAccess();
  v48 = v41;
  v49 = v42;
  sub_1000332C4();
  swift_endAccess();
  v31 = v43;
  sub_10000DBBC(v43, v22, &qword_100045018, &qword_100034C60);
  v32 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v25 + 8))(v9 + v32, v47);
  sub_10000DBBC(v22, v20, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v22, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v48) = v44;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v48) = v45;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v46;

  sub_100033314();
  sub_10000DC24(v31, &qword_100045018, &qword_100034C60);
  return v9;
}

uint64_t sub_100009BB8(char a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return sub_10000C76C(a2, a3);
    }

    else
    {

      return sub_10000CFFC(a2, a3);
    }
  }

  else
  {
    sub_100033024();
    sub_100033014();
    v6 = sub_100032FF4();

    v7 = sub_10000B7A8(a2, a3, v6);

    return v7;
  }
}

uint64_t sub_100009C94(char a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_10000C76C(a2, a3);
    }

    else
    {
      sub_10000CFFC(a2, a3);
    }

    a4();
  }

  else
  {
    sub_100033024();
    sub_100033014();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = v5;
    v10[5] = a2;
    v10[6] = a3;

    sub_100033004();
  }
}

uint64_t sub_100009D9C(uint64_t a1)
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v2 = sub_100033D34();
  v4 = v3;
  if (v2 == sub_100033D34() && v4 == v5)
  {

    goto LABEL_11;
  }

  v7 = sub_1000340D4();

  if (v7)
  {
LABEL_11:
    sub_100033D34();
    v10 = sub_100012B94();

    return v10;
  }

  v8 = [objc_opt_self() localizedNameForIdentifier:a1];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_100033D34();

  return v10;
}

uint64_t sub_100009EDC()
{
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
  }

  else
  {
    v1 = sub_1000340D4();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  if (v3 == sub_100033D34() && v4 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000340D4();
  }

  return v2 & 1;
}

uint64_t *sub_100009FE4()
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  return &qword_100047AE0;
}

uint64_t sub_10000A034()
{
  *(v0 + 16);
  sub_100033D74();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_100033D74();
}

UIImage sub_10000A0D0(void *a1)
{
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v7 = 0x737070416C6C41;
  v8 = sub_100033D34();
  v10 = v9;
  if (v8 == sub_100033D34() && v10 == v11)
  {

    v14 = 0xE700000000000000;
    goto LABEL_22;
  }

  v13 = sub_1000340D4();

  if ((v13 & 1) == 0)
  {
    v14 = 0xEA00000000007974;
    v7 = 0x6976697461657243;
    v15 = sub_100033D34();
    v17 = v16;
    if (v15 != sub_100033D34() || v17 != v18)
    {
      v20 = sub_1000340D4();

      if (v20)
      {
        goto LABEL_22;
      }

      v7 = 0x6F69746163756445;
      v21 = sub_100033D34();
      v23 = v22;
      if (v21 == sub_100033D34() && v23 == v24)
      {

        v14 = 0xE90000000000006ELL;
        goto LABEL_22;
      }

      v25 = sub_1000340D4();

      v14 = 0xE90000000000006ELL;
      if (v25)
      {
        goto LABEL_22;
      }

      v14 = 0xED0000746E656D6ELL;
      v7 = 0x6961747265746E45;
      v26 = sub_100033D34();
      v28 = v27;
      if (v26 != sub_100033D34() || v28 != v29)
      {
        v31 = sub_1000340D4();

        if (v31)
        {
          goto LABEL_22;
        }

        v7 = 0x73656D6147;
        v32 = sub_100033D34();
        v34 = v33;
        if (v32 == sub_100033D34() && v34 == v35)
        {

          v14 = 0xE500000000000000;
          goto LABEL_22;
        }

        v36 = sub_1000340D4();

        if (v36)
        {
          v14 = 0xE500000000000000;
          goto LABEL_22;
        }

        v14 = 0xED00007373656E74;
        v7 = 0x694668746C616548;
        v37 = sub_100033D34();
        v39 = v38;
        if (v37 != sub_100033D34() || v39 != v40)
        {
          v41 = sub_1000340D4();

          if (v41)
          {
            goto LABEL_22;
          }

          v42 = sub_100033D34();
          v44 = v43;
          if (v42 == sub_100033D34() && v44 == v45)
          {

LABEL_36:
            v14 = 0x800000010003A6D0;
            v7 = 0xD000000000000014;
            goto LABEL_22;
          }

          v46 = sub_1000340D4();

          if (v46)
          {
            goto LABEL_36;
          }

          v47 = sub_100033D34();
          v49 = v48;
          if (v47 == sub_100033D34() && v49 == v50)
          {

LABEL_41:
            v14 = 0xE500000000000000;
            v7 = 0x726568744FLL;
            goto LABEL_22;
          }

          v51 = sub_1000340D4();

          if (v51)
          {
            goto LABEL_41;
          }

          v14 = 0xEC00000079746976;
          v7 = 0x69746375646F7250;
          v52 = sub_100033D34();
          v54 = v53;
          if (v52 != sub_100033D34() || v54 != v55)
          {
            v56 = sub_1000340D4();

            if (v56)
            {
              goto LABEL_22;
            }

            v14 = 0xEF646F6F46646E41;
            v7 = 0x676E6970706F6853;
            v57 = sub_100033D34();
            v59 = v58;
            if (v57 != sub_100033D34() || v59 != v60)
            {
              v61 = sub_1000340D4();

              if (v61)
              {
                goto LABEL_22;
              }

              v62 = sub_100033D34();
              v64 = v63;
              if (v62 == sub_100033D34() && v64 == v65)
              {
              }

              else
              {
                v66 = sub_1000340D4();

                if ((v66 & 1) == 0)
                {
                  v7 = 0x6C6576617254;
                  v67 = sub_100033D34();
                  v69 = v68;
                  if (v67 == sub_100033D34() && v69 == v70)
                  {

                    v14 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v71 = sub_1000340D4();

                  if (v71)
                  {
                    v14 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v7 = 0x656974696C697455;
                  v72 = sub_100033D34();
                  v74 = v73;
                  if (v72 == sub_100033D34() && v74 == v75)
                  {

                    v14 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  v76 = sub_1000340D4();

                  if (v76)
                  {
                    v14 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  sub_100033274();
                  v77 = a1;
                  v78 = sub_100033284();
                  v79 = sub_100033EB4();

                  if (os_log_type_enabled(v78, v79))
                  {
                    v80 = swift_slowAlloc();
                    v81 = swift_slowAlloc();
                    v86 = v81;
                    *v80 = 136315138;
                    v82 = sub_100033D34();
                    v84 = sub_1000045A0(v82, v83, &v86);

                    *(v80 + 4) = v84;
                    _os_log_impl(&_mh_execute_header, v78, v79, "Failed to resolve icon for category identifier: %s", v80, 0xCu);
                    sub_100006A74(v81);
                  }

                  (*(v3 + 8))(v6, v2);
                  goto LABEL_41;
                }
              }

              v7 = 0xD000000000000010;
              v14 = 0x800000010003A6B0;
              goto LABEL_22;
            }
          }
        }
      }
    }

    goto LABEL_22;
  }

  v14 = 0xE700000000000000;
LABEL_22:
  sub_10000D598();
  v87._countAndFlagsBits = v7;
  v87._object = v14;
  return sub_100033F04(v87);
}

uint64_t sub_10000A9F8()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v3 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName;
  v5 = sub_100001A68(&qword_100045030, &qword_100034D08);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable;
  v7 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch, v7);
  v8(v0 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch, v7);
  v8(v0 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected, v7);
  return v0;
}

uint64_t sub_10000AB6C()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v3 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName;
  v5 = sub_100001A68(&qword_100045030, &qword_100034D08);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable;
  v7 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v6], v7);
  v8(&v0[OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch], v7);
  v8(&v0[OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch], v7);
  v8(&v0[OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected], v7);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

Swift::Int sub_10000AD1C()
{
  sub_100034154();
  (*(*v0 + 496))(v2);
  return sub_100034164();
}

uint64_t sub_10000AD84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 432))();
  *a1 = result;
  return result;
}

Swift::Int sub_10000AE70()
{
  sub_100034154();
  (*(**v0 + 496))(v2);
  return sub_100034164();
}

uint64_t sub_10000AEE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityItem();
  result = sub_1000332B4();
  *a1 = result;
  return result;
}

NSString sub_10000AF24()
{
  result = sub_100033D04();
  qword_100047AE0 = result;
  return result;
}

id sub_10000AF5C()
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v1 = qword_100047AE0;

  return v1;
}

void *sub_10000AFB8()
{
  v0 = [objc_opt_self() sharedCategories];
  v1 = [v0 availableCategoryIDs];

  type metadata accessor for Identifier(0);
  v2 = sub_100033DF4();

  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v3 = qword_100047AE0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000B4E4(0, v2[2] + 1, 1, v2);
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_10000B4E4((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  v2[v5 + 4] = v3;
  return v2;
}

uint64_t sub_10000B0EC(uint64_t a1, id *a2)
{
  result = sub_100033D14();
  *a2 = 0;
  return result;
}

uint64_t sub_10000B164(uint64_t a1, id *a2)
{
  v3 = sub_100033D24();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000B1E4@<X0>(void *a1@<X8>)
{
  sub_100033D34();
  v2 = sub_100033D04();

  *a1 = v2;
  return result;
}

uint64_t sub_10000B228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100033D34();
  v6 = v5;
  if (v4 == sub_100033D34() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000340D4();
  }

  return v9 & 1;
}

uint64_t sub_10000B2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100033D04();

  *a2 = v5;
  return result;
}

uint64_t sub_10000B2F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100033D34();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000B324(uint64_t a1)
{
  v2 = sub_10000DAE4(&qword_1000452E0, type metadata accessor for Identifier);
  v3 = sub_10000DAE4(&qword_1000452E8, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000B3E0()
{
  v1 = *v0;
  sub_100033D34();
  v2 = sub_100033DA4();

  return v2;
}

uint64_t sub_10000B41C()
{
  v1 = *v0;
  sub_100033D34();
  sub_100033D74();
}

Swift::Int sub_10000B470()
{
  v1 = *v0;
  sub_100033D34();
  sub_100034154();
  sub_100033D74();
  v2 = sub_100034164();

  return v2;
}

void *sub_10000B4E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001A68(&qword_1000452F0, &qword_100035218);
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
    type metadata accessor for Identifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000B60C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100041960;
  v6._object = a2;
  v4 = sub_100034094(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000B658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v3 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 7368801;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  if (*(a2 + 16) != 1)
  {
    v9 = 6448503;
    v8 = 0xE300000000000000;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 7368801;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1000340D4();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1000340D4();
}

uint64_t sub_10000B7A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v120 = a2;
  v5 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  __chkstk_darwin(v5);
  v104 = &v97 - v7;
  v117 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v107 = *(v117 - 8);
  v8 = *(v107 + 64);
  __chkstk_darwin(v117);
  v103 = &v97 - v9;
  v108 = sub_100001A68(&qword_1000452F8, &qword_100035228);
  v10 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v100 = &v97 - v11;
  v12 = sub_100001A68(&qword_100045300, &qword_100035230);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v97 - v18;
  __chkstk_darwin(v17);
  v110 = &v97 - v20;
  v101 = sub_100033294();
  v21 = *(v101 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v101);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100033034();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  v27 = __chkstk_darwin(v25);
  v98 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v99 = &v97 - v29;
  v113 = sub_100032F84();
  v118 = *(v113 - 8);
  v30 = *(v118 + 64);
  __chkstk_darwin(v113);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v33 = *(*(v115 - 8) + 64);
  v34 = __chkstk_darwin(v115);
  v114 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v102 = &v97 - v37;
  v38 = __chkstk_darwin(v36);
  v116 = &v97 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v97 - v41;
  __chkstk_darwin(v40);
  v119 = &v97 - v43;
  v112 = a1;
  if (!a3)
  {
LABEL_9:
    v109 = v16;
    v47 = a3;
    sub_100033274();
    v48 = v120;

    v49 = sub_100033284();
    v50 = sub_100033EA4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v123 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1000045A0(v112, v120, &v123);
      _os_log_impl(&_mh_execute_header, v49, v50, "Could not initially resolve app info for bundle identifier: %s", v51, 0xCu);
      sub_100006A74(v52);
      v48 = v120;
    }

    (*(v21 + 8))(v24, v101);
    v53 = v110;
    v54 = v25;
    v55 = v118 + 56;
    v56 = 1;
    v101 = *(v118 + 56);
    v101(v119, 1, 1, v113);
    if (v47)
    {
      sub_100033114();
      v56 = 0;
    }

    v118 = v55 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57 = v111;
    v58 = *(v111 + 56);
    v58(v53, v56, 1, v25);
    (*(v57 + 104))(v19, enum case for AppInfoSource.unknown(_:), v25);
    v58(v19, 0, 1, v25);
    v59 = *(v108 + 48);
    v60 = v100;
    sub_10000DBBC(v53, v100, &qword_100045300, &qword_100035230);
    sub_10000DBBC(v19, v60 + v59, &qword_100045300, &qword_100035230);
    v61 = v53;
    v62 = *(v57 + 48);
    if (v62(v60, 1, v54) == 1)
    {
      sub_10000DC24(v19, &qword_100045300, &qword_100035230);
      sub_10000DC24(v61, &qword_100045300, &qword_100035230);
      if (v62(v60 + v59, 1, v54) == 1)
      {
        sub_10000DC24(v60, &qword_100045300, &qword_100035230);
        LODWORD(v108) = 1;
LABEL_19:
        v64 = v112;
        v65 = v113;
LABEL_21:

        LODWORD(v111) = 0;
        v109 = v64;
        v110 = v48;
        v69 = v101;
        goto LABEL_22;
      }
    }

    else
    {
      v63 = v109;
      sub_10000DBBC(v60, v109, &qword_100045300, &qword_100035230);
      if (v62(v60 + v59, 1, v54) != 1)
      {
        v66 = v111;
        v67 = v99;
        (*(v111 + 32))(v99, v60 + v59, v54);
        sub_10000DAE4(&qword_100045308, &type metadata accessor for AppInfoSource);
        LODWORD(v108) = sub_100033CF4();
        v68 = *(v66 + 8);
        v68(v67, v54);
        sub_10000DC24(v19, &qword_100045300, &qword_100035230);
        sub_10000DC24(v110, &qword_100045300, &qword_100035230);
        v68(v63, v54);
        sub_10000DC24(v60, &qword_100045300, &qword_100035230);
        v64 = v112;
        v65 = v113;
        goto LABEL_21;
      }

      sub_10000DC24(v19, &qword_100045300, &qword_100035230);
      sub_10000DC24(v110, &qword_100045300, &qword_100035230);
      (*(v111 + 8))(v63, v54);
    }

    sub_10000DC24(v60, &qword_1000452F8, &qword_100035228);
    LODWORD(v108) = 0;
    goto LABEL_19;
  }

  v44 = sub_100033104();
  if (!v45)
  {

    goto LABEL_9;
  }

  if (v44 == a1 && v45 == v120 || (v109 = v44, v46 = v45, (sub_1000340D4() & 1) != 0))
  {

    goto LABEL_9;
  }

  v110 = v46;
  sub_1000330F4();
  v86 = v118;
  v65 = v113;
  if ((*(v118 + 48))(v42, 1, v113) == 1)
  {
    sub_10000DC24(v42, &qword_100045018, &qword_100034C60);
    v69 = *(v86 + 56);
    v69(v119, 1, 1, v65);
    v87 = v99;
    sub_100033114();
    v88 = v111;
    v89 = v98;
    (*(v111 + 104))(v98, enum case for AppInfoSource.unknown(_:), v25);
    sub_10000DAE4(&qword_100045310, &type metadata accessor for AppInfoSource);
    sub_100033DC4();
    sub_100033DC4();

    v90 = *(v88 + 8);
    v90(v89, v25);
    v90(v87, v25);
    LODWORD(v111) = 0;
    LODWORD(v108) = v123 == v121;
  }

  else
  {
    (*(v86 + 32))(v32, v42, v65);
    v91 = v119;
    (*(v86 + 16))(v119, v32, v65);
    v101 = *(v86 + 56);
    v100 = (v86 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v101(v91, 0, 1, v65);
    v92 = v99;
    sub_100033114();
    v93 = v111;
    v94 = v98;
    (*(v111 + 104))(v98, enum case for AppInfoSource.appStore(_:), v25);
    sub_10000DAE4(&qword_100045310, &type metadata accessor for AppInfoSource);
    sub_100033DC4();
    sub_100033DC4();

    v95 = *(v93 + 8);
    v95(v94, v25);
    v95(v92, v25);
    v96 = v32;
    v69 = v101;
    (*(v86 + 8))(v96, v65);
    LODWORD(v108) = 0;
    LODWORD(v111) = v123 == v121;
  }

  v64 = v112;
LABEL_22:
  sub_10000DBBC(v119, v116, &qword_100045018, &qword_100034C60);
  v70 = type metadata accessor for ActivityItem();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  v74 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v75 = v102;
  v69(v102, 1, 1, v65);
  sub_10000DBBC(v75, v114, &qword_100045018, &qword_100034C60);
  v76 = v103;
  sub_1000332C4();
  sub_10000DC24(v75, &qword_100045018, &qword_100034C60);
  v77 = v107;
  (*(v107 + 32))(v73 + v74, v76, v117);
  v78 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  LOBYTE(v123) = 0;
  v79 = v104;
  sub_1000332C4();
  v80 = v106;
  v81 = *(v105 + 32);
  v81(v73 + v78, v79, v106);
  v82 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  LOBYTE(v123) = 0;
  sub_1000332C4();
  v81(v73 + v82, v79, v80);
  *(v73 + 16) = 0;
  *(v73 + 24) = v64;
  *(v73 + 32) = v120;
  swift_beginAccess();
  v121 = v109;
  v122 = v110;

  sub_1000332C4();
  swift_endAccess();
  v83 = v116;
  sub_10000DBBC(v116, v75, &qword_100045018, &qword_100034C60);
  v84 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v77 + 8))(v73 + v84, v117);
  sub_10000DBBC(v75, v114, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v75, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v121) = 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v121) = v111;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v123) = v108 & 1;

  sub_100033314();
  sub_10000DC24(v83, &qword_100045018, &qword_100034C60);
  sub_10000DC24(v119, &qword_100045018, &qword_100034C60);
  return v73;
}

uint64_t sub_10000C76C(uint64_t a1, unint64_t a2)
{
  v81 = a1;
  v3 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  __chkstk_darwin(v3);
  v76 = &v71 - v5;
  v6 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v75 = &v71 - v9;
  v83 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v10 = *(*(v83 - 8) + 64);
  v11 = __chkstk_darwin(v83);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v79 = &v71 - v15;
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v18 = sub_100033294();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100033D04();
  v24 = sub_100009D9C(v23);
  v82 = a2;
  v80 = v13;
  if (v25)
  {
    v73 = v25;
    v74 = v24;
  }

  else
  {
    v71 = v17;
    sub_100033274();

    v26 = sub_100033284();
    v27 = sub_100033EB4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v74 = v7;
      v29 = v23;
      v30 = v28;
      v31 = swift_slowAlloc();
      v86 = v31;
      *v30 = 136315138;
      v32 = v81;
      *(v30 + 4) = sub_1000045A0(v81, v82, &v86);
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to resolve localized name for category identifier: %s", v30, 0xCu);
      sub_100006A74(v31);
      a2 = v82;

      v23 = v29;
      v7 = v74;

      (*(v19 + 8))(v22, v18);
    }

    else
    {

      (*(v19 + 8))(v22, v18);
      v32 = v81;
    }

    v73 = a2;
    v74 = v32;
    v17 = v71;
    v13 = v80;
  }

  v33 = sub_100033D34();
  v35 = v34;
  v36 = sub_100033D34();
  v72 = v23;
  if (v33 == v36 && v35 == v37)
  {
    goto LABEL_9;
  }

  v38 = sub_1000340D4();

  if (v38)
  {
LABEL_12:

    goto LABEL_13;
  }

  v59 = sub_100033D34();
  v61 = v60;
  if (v59 != sub_100033D34() || v61 != v62)
  {
    v63 = sub_1000340D4();

    if ((v63 & 1) == 0)
    {
      v64 = sub_100033D34();
      v65 = v23;
      v66 = v64;
      v68 = v67;

      if (v66 != sub_100033D34() || v68 != v69)
      {
        v70 = sub_1000340D4();

        LODWORD(v71) = v70 ^ 1;
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:

LABEL_10:

LABEL_13:
  LODWORD(v71) = 0;
LABEL_14:
  v39 = sub_100032F84();
  v40 = *(*(v39 - 8) + 56);
  v40(v17, 1, 1, v39);
  v41 = type metadata accessor for ActivityItem();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v46 = v79;
  v40(v79, 1, 1, v39);
  sub_10000DBBC(v46, v13, &qword_100045018, &qword_100034C60);
  v47 = v75;
  sub_1000332C4();
  sub_10000DC24(v46, &qword_100045018, &qword_100034C60);
  v48 = v7;
  (*(v7 + 32))(v44 + v45, v47, v6);
  v49 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  LOBYTE(v86) = 0;
  v50 = v76;
  sub_1000332C4();
  v75 = v6;
  v51 = v48;
  v52 = v17;
  v53 = v78;
  v54 = *(v77 + 32);
  v54(v44 + v49, v50, v78);
  v55 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  LOBYTE(v86) = 0;
  sub_1000332C4();
  v54(v44 + v55, v50, v53);
  *(v44 + 16) = 1;
  v56 = v82;
  *(v44 + 24) = v81;
  *(v44 + 32) = v56;
  swift_beginAccess();
  v84 = v74;
  v85 = v73;

  sub_1000332C4();
  swift_endAccess();
  sub_10000DBBC(v52, v46, &qword_100045018, &qword_100034C60);
  v57 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v51 + 8))(v44 + v57, v75);
  sub_10000DBBC(v46, v80, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v46, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v84) = v71 & 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v84) = 0;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v86) = 0;

  sub_100033314();

  sub_10000DC24(v52, &qword_100045018, &qword_100034C60);
  return v44;
}

uint64_t sub_10000CFFC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v36 - v4;
  v37 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v44 = *(v37 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v37);
  v8 = &v36 - v7;
  v38 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v9 = *(*(v38 - 8) + 64);
  v10 = __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v39 = &v36 - v16;
  v18 = sub_100032F84();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v20 = type metadata accessor for ActivityItem();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v19(v15, 1, 1, v18);
  sub_10000DBBC(v15, v12, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v15, &qword_100045018, &qword_100034C60);
  v25 = v23 + v24;
  v26 = v37;
  (*(v44 + 32))(v25, v8, v37);
  v27 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v47 = 0;
  sub_1000332C4();
  v28 = v41;
  v29 = *(v40 + 32);
  v29(v23 + v27, v5, v41);
  v30 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected;
  v47 = 0;
  sub_1000332C4();
  v29(v23 + v30, v5, v28);
  *(v23 + 16) = 2;
  v32 = v42;
  v31 = v43;
  *(v23 + 24) = v42;
  *(v23 + 32) = v31;
  swift_beginAccess();
  v45 = v32;
  v46 = v31;
  swift_bridgeObjectRetain_n();
  sub_1000332C4();
  swift_endAccess();
  v33 = v39;
  sub_10000DBBC(v39, v15, &qword_100045018, &qword_100034C60);
  v34 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v44 + 8))(v23 + v34, v26);
  sub_10000DBBC(v15, v12, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v15, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = 0;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = 0;

  sub_100033314();
  sub_10000DC24(v33, &qword_100045018, &qword_100034C60);
  return v23;
}

uint64_t sub_10000D500()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D540(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  sub_10000B7A8(v1[5], v1[6], a1);
  v3();
}

unint64_t sub_10000D598()
{
  result = qword_100045050;
  if (!qword_100045050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045050);
  }

  return result;
}

unint64_t sub_10000D610()
{
  result = qword_100045058;
  if (!qword_100045058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045058);
  }

  return result;
}

uint64_t type metadata accessor for ActivityItem()
{
  result = qword_1000468B0;
  if (!qword_1000468B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D718()
{
  sub_10000D87C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000D8E0(319, &qword_100045098, &type metadata for String, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000D8E0(319, &qword_1000450A0, &type metadata for Bool, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000D87C()
{
  if (!qword_100045090)
  {
    sub_100006924(&qword_100045018, &qword_100034C60);
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100045090);
    }
  }
}

void sub_10000D8E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivityItem.ActivityItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityItem.ActivityItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000DAE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DBBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A68(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000DC24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DCA4()
{
  if (*v0)
  {
  }

  else
  {
    v2 = v0[1];
    type metadata accessor for ActivityProvider();
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DD30()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for ActivityProvider();
  sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);

  return sub_100033564();
}

uint64_t sub_10000DDB8()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DE8C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  sub_10001130C(a2, a3);

  return sub_100033594();
}

uint64_t sub_10000DEF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ActivityGroup();
  sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);

  return sub_100033564();
}

uint64_t sub_10000DFEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = type metadata accessor for FCDisclosureGroupStyle();
  v3 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100001A68(&qword_100045328, &qword_100035240);
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v37);
  v8 = &v31 - v7;
  v38 = sub_100001A68(&qword_100045330, &qword_100035248);
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v38);
  v34 = &v31 - v10;
  v33 = sub_100001A68(&qword_100045338, &qword_100035250);
  v11 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v32 = &v31 - v12;
  v43 = *(v1 + 40);
  sub_100001A68(&qword_100045340, &qword_100035258);
  sub_100033BC4();
  v13 = swift_allocObject();
  v14 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = *(v1 + 48);
  v41 = v1;
  sub_10000F1E0(v1, &v42);
  sub_100001A68(&qword_100045348, &qword_100035260);
  sub_100001A68(&qword_100045350, &qword_100035268);
  sub_10000F218();
  sub_10000F300();
  sub_1000334C4();
  v15 = *(v1 + 16);
  if (v15)
  {
    v16 = *(*v15 + 112);
    v17 = *(v2 + 16);

    v19 = v16(v18);

    v21 = (*(*v19 + 488))(v20);

    v22 = *(v39 + 20);
    *&v5[v22] = swift_getKeyPath();
    sub_100001A68(&qword_1000453A0, &qword_100035C80);
    swift_storeEnumTagMultiPayload();
    *v5 = v21 & 1;
    sub_1000114F8(&qword_1000453A8, &qword_100045328, &qword_100035240);
    sub_10001130C(&qword_1000453B0, type metadata accessor for FCDisclosureGroupStyle);
    v23 = v34;
    v24 = v37;
    sub_100033A34();
    sub_10000F6FC(v5);
    (*(v35 + 8))(v8, v24);
    v25 = swift_allocObject();
    v26 = *(v2 + 16);
    *(v25 + 16) = *v2;
    *(v25 + 32) = v26;
    *(v25 + 48) = *(v2 + 32);
    *(v25 + 64) = *(v2 + 48);
    v27 = v32;
    (*(v36 + 32))(v32, v23, v38);
    v28 = (v27 + *(v33 + 36));
    *v28 = sub_10000F758;
    v28[1] = v25;
    v28[2] = 0;
    v28[3] = 0;
    sub_10000F9D4(v27, v40);
    return sub_10000F1E0(v2, &v42);
  }

  else
  {
    v30 = *(v2 + 24);
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for FCDisclosureGroupStyle()
{
  result = qword_100046CD0;
  if (!qword_100046CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_100001A68(&qword_1000454E8, &qword_100035528);
  v4 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v6 = &v23 - v5;
  v7 = sub_100001A68(&qword_100045388, &qword_100035278);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v11)
  {
    v13 = *(*v11 + 160);
    v14 = *(a1 + 16);

    v16 = v13(v15);

    if (v16 >> 62)
    {
      v22 = sub_100034054();

      if (v22)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v17)
      {
LABEL_4:
        type metadata accessor for ActivityGroup();
        sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
        v23 = a2;
        sub_100033564();
        swift_getKeyPath();
        sub_100033584();

        v27 = v29;
        v28 = v30;
        swift_getKeyPath();
        v18 = swift_allocObject();
        v19 = *(a1 + 16);
        *(v18 + 16) = *a1;
        *(v18 + 32) = v19;
        *(v18 + 48) = *(a1 + 32);
        *(v18 + 64) = *(a1 + 48);
        sub_10000F1E0(a1, v26);
        sub_100001A68(&qword_1000454F8, &unk_100035590);
        sub_100001A68(&qword_100045398, &qword_100035280);
        sub_10001140C();
        sub_1000114F8(&qword_100045390, &qword_100045398, &qword_100035280);
        sub_100033C54();
        v20 = v24;
        (*(v24 + 16))(v6, v10, v7);
        swift_storeEnumTagMultiPayload();
        sub_10000F38C();
        sub_100033784();
        return (*(v20 + 8))(v10, v7);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_10000F38C();
    return sub_100033784();
  }

  else
  {
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E9F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  sub_100001A68(&qword_1000454E0, &qword_100035520);
  sub_10001130C(&qword_1000454F0, type metadata accessor for ActivityItem);
  result = sub_100033C34();
  *a2 = v4;
  return result;
}

uint64_t sub_10000EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v38 = a5;
  v8 = type metadata accessor for ActivitySelectableRow(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100001A68(&qword_100045348, &qword_100035260);
  v12 = *(*(v37 - 8) + 64);
  v13 = __chkstk_darwin(v37);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v33 - v16;
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  v20 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  sub_100033AC4();
  v36 = sub_100033B04();

  v45 = a1;
  v46 = a2;
  v47 = a3;
  sub_100001A68(&qword_1000454E0, &qword_100035520);
  sub_100033C04();
  swift_getKeyPath();
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_100033C14();

  v21 = v39;
  v22 = v40;
  v23 = v41;
  v24 = sub_1000089E4();
  sub_100021668(v21, v22, v23, 0, 1, 1, v24 & 1, v11);
  v25 = *v35;
  if (*v35)
  {
    type metadata accessor for ActivityProvider();
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);

    v26 = sub_1000332A4();
    sub_100011260(v11, v17);
    v27 = &v17[*(v37 + 36)];
    *v27 = v26;
    v27[1] = v25;
    sub_100011540(v17, v19, &qword_100045348, &qword_100035260);
    v28 = v34;
    sub_10000DBBC(v19, v34, &qword_100045348, &qword_100035260);
    v29 = v38;
    *v38 = v36;
    v30 = sub_100001A68(&qword_100045520, &qword_1000355A8);
    sub_10000DBBC(v28, v29 + *(v30 + 48), &qword_100045348, &qword_100035260);

    sub_10000DC24(v19, &qword_100045348, &qword_100035260);
    sub_10000DC24(v28, &qword_100045348, &qword_100035260);
  }

  else
  {
    v32 = v35[1];
    type metadata accessor for ActivityProvider();
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for ActivitySelectableRow(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v7)
  {
    v9 = *(*v7 + 112);
    v10 = *(a1 + 16);

    v30[1] = v9(v11);
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    sub_100033564();
    swift_getKeyPath();
    sub_100033584();

    v12 = v40;
    v13 = v41;
    v14 = v42;
    swift_getKeyPath();
    v37 = v12;
    v38 = v13;
    v39 = v14;
    sub_100001A68(&qword_1000454E0, &qword_100035520);
    sub_100033C14();

    v15 = v34;
    v16 = v35;
    v17 = v36;

    v19 = (*(*v7 + 208))(v18);
    v21 = v20;

    if (*(a1 + 32))
    {
      v22 = 1;
    }

    else
    {
      v33 = *(a1 + 40);
      sub_100001A68(&qword_100045340, &qword_100035258);
      sub_100033BA4();
      v22 = v32;
    }

    v23 = sub_1000089E4();
    sub_100021668(v15, v16, v17, v19, v21 & 1, v22, v23 & 1, v6);
    v24 = *a1;
    if (*a1)
    {
      type metadata accessor for ActivityProvider();
      sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);

      v25 = sub_1000332A4();
      v26 = v31;
      sub_100011260(v6, v31);
      result = sub_100001A68(&qword_100045348, &qword_100035260);
      v28 = (v26 + *(result + 36));
      *v28 = v25;
      v28[1] = v24;
      return result;
    }
  }

  else
  {
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    sub_100033574();
    __break(1u);
  }

  v29 = *(a1 + 8);
  type metadata accessor for ActivityProvider();
  sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider);
  result = sub_100033574();
  __break(1u);
  return result;
}

unint64_t sub_10000F218()
{
  result = qword_100045358;
  if (!qword_100045358)
  {
    sub_100006924(&qword_100045348, &qword_100035260);
    sub_10001130C(&qword_100045360, type metadata accessor for ActivitySelectableRow);
    sub_1000114F8(&qword_100045368, &qword_100045370, &qword_100035270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045358);
  }

  return result;
}

unint64_t sub_10000F300()
{
  result = qword_100045378;
  if (!qword_100045378)
  {
    sub_100006924(&qword_100045350, &qword_100035268);
    sub_10000F38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045378);
  }

  return result;
}

unint64_t sub_10000F38C()
{
  result = qword_100045380;
  if (!qword_100045380)
  {
    sub_100006924(&qword_100045388, &qword_100035278);
    sub_1000114F8(&qword_100045390, &qword_100045398, &qword_100035280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045380);
  }

  return result;
}

uint64_t sub_10000F484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_100033B94();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  return result;
}

uint64_t sub_10000F528@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_10000DFEC(a1);
}

uint64_t sub_10000F574@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000F624@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for FCDisclosureGroupStyle() + 20);
  *&a1[v2] = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  result = swift_storeEnumTagMultiPayload();
  *a1 = 0;
  return result;
}

uint64_t sub_10000F68C@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for FCDisclosureGroupStyle() + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_10000F6FC(uint64_t a1)
{
  v2 = type metadata accessor for FCDisclosureGroupStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F758()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(*v1 + 112);
  v3 = *(v0 + 32);
  v4 = swift_retain_n();
  v5 = *v2(v4);
  LOBYTE(v2) = (*(v5 + 384))();

  v7 = *v1;
  if ((v2 & 1) == 0)
  {
    v11 = (*(v7 + 272))(v6);
    v13 = v12;

    v14 = *(v11 + 16);

    v0 = *(v13 + 16);

    if (!__OFADD__(v14, v0))
    {
      (*(*v1 + 216))(v14 + v0, v14 + v0 == 0);
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    v16 = *(v0 + 40);
    type metadata accessor for ActivityGroup();
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup);
    result = sub_100033574();
    __break(1u);
    return result;
  }

  v8 = (*(v7 + 112))(v6);

  v10 = (*(*v8 + 488))(v9);

  (*(*v1 + 216))((v10 & 1) == 0, 1);
LABEL_6:
}

uint64_t sub_10000F9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045338, &qword_100035250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v45 = sub_1000338C4();
  v48 = *(v45 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v45);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001A68(&qword_1000453B8, &qword_1000352C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v41 - v11;
  v12 = sub_1000338E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100001A68(&qword_1000453C0, &qword_1000352C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v46 = sub_100001A68(&qword_1000453C8, &qword_1000352D0);
  v44 = *(v46 - 8);
  v19 = *(v44 + 64);
  v20 = __chkstk_darwin(v46);
  v47 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  *v18 = sub_1000336C4();
  *(v18 + 1) = 0;
  v24 = 1;
  v18[16] = 1;
  v25 = sub_100001A68(&qword_1000453D0, &qword_1000352D8);
  sub_10000FF54(v3, &v18[*(v25 + 44)]);
  v18[*(v15 + 36)] = 0;
  (*(v13 + 16))(&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v27 = swift_allocObject() + v26;
  v28 = v45;
  (*(v13 + 32))(v27, &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v29 = v43;
  sub_100010824();
  sub_1000339F4();
  v30 = v48;

  sub_10000DC24(v18, &qword_1000453C0, &qword_1000352C8);
  if (sub_100033894())
  {
    v31 = v42;
    sub_1000338D4();
    (*(v30 + 32))(v29, v31, v28);
    v24 = 0;
  }

  (*(v30 + 56))(v29, v24, 1, v28);
  v32 = v44;
  v33 = *(v44 + 16);
  v34 = v47;
  v35 = v46;
  v33(v47, v23, v46);
  v36 = v49;
  sub_10000DBBC(v29, v49, &qword_1000453B8, &qword_1000352C0);
  v37 = v50;
  v33(v50, v34, v35);
  v38 = sub_100001A68(&qword_100045400, &qword_1000352F0);
  sub_10000DBBC(v36, &v37[*(v38 + 48)], &qword_1000453B8, &qword_1000352C0);
  sub_10000DC24(v29, &qword_1000453B8, &qword_1000352C0);
  v39 = *(v32 + 8);
  v39(v23, v35);
  sub_10000DC24(v36, &qword_1000453B8, &qword_1000352C0);
  return (v39)(v34, v35);
}

uint64_t sub_10000FF54@<X0>(_BYTE *a1@<X1>, char *a2@<X8>)
{
  v98 = a2;
  v3 = sub_1000333A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v84 - v9;
  v11 = sub_100001A68(&qword_1000454B0, &qword_100035410);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  v88 = sub_100001A68(&qword_1000454B8, &qword_100035418);
  v15 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v84 - v16;
  v17 = sub_100001A68(&qword_1000454C0, &qword_100035420);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v90 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v84 - v22;
  v23 = sub_100001A68(&qword_1000454C8, &qword_100035428);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v97 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v95 = &v84 - v27;
  v28 = sub_1000338A4();
  v93 = *(v28 - 8);
  v94 = v28;
  v29 = *(v93 + 64);
  v30 = __chkstk_darwin(v28);
  v96 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v92 = &v84 - v32;
  sub_1000338B4();
  if (*a1)
  {
    v33 = v95;
    (*(v18 + 56))(v95, 1, 1, v17);
  }

  else
  {
    v85 = sub_100033B44();
    if (sub_100033894())
    {
      v34 = 1.57079633;
    }

    else
    {
      v34 = 0.0;
    }

    sub_100033CB4();
    v36 = v35;
    v38 = v37;
    v39 = sub_100033914();
    sub_100033374();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v101 = 0;
    v48 = *(v11 + 36);
    v86 = a1;
    v49 = &v14[v48];
    v50 = sub_100001A68(&qword_1000454D0, &qword_100035430);
    v87 = v17;
    v51 = v3;
    v52 = *(v50 + 28);
    v53 = enum case for Image.Scale.small(_:);
    v54 = sub_100033B64();
    (*(*(v54 - 8) + 104))(v49 + v52, v53, v54);
    *v49 = swift_getKeyPath();
    *v14 = v85;
    *(v14 + 1) = v34;
    *(v14 + 2) = v36;
    *(v14 + 3) = v38;
    v14[32] = v39;
    *(v14 + 33) = *v100;
    *(v14 + 9) = *&v100[3];
    *(v14 + 5) = v41;
    *(v14 + 6) = v43;
    *(v14 + 7) = v45;
    *(v14 + 8) = v47;
    v14[72] = 0;
    sub_100033934();
    sub_100033944();
    v55 = sub_100033954();

    KeyPath = swift_getKeyPath();
    v57 = v91;
    sub_100011540(v14, v91, &qword_1000454B0, &qword_100035410);
    v58 = (v57 + *(v88 + 36));
    *v58 = KeyPath;
    v58[1] = v55;
    v59 = &v86[*(type metadata accessor for FCDisclosureGroupStyle() + 20)];
    sub_100010E90(v10);
    (*(v4 + 104))(v8, enum case for ColorScheme.dark(_:), v51);
    LOBYTE(KeyPath) = sub_100033394();
    v60 = *(v4 + 8);
    v60(v8, v51);
    v60(v10, v51);
    v61 = objc_opt_self();
    v62 = &selRef_systemGray2Color;
    if ((KeyPath & 1) == 0)
    {
      v62 = &selRef_systemGray4Color;
    }

    v63 = [v61 *v62];
    v64 = sub_100033AC4();
    v65 = swift_getKeyPath();
    v66 = v57;
    v67 = v90;
    sub_100011540(v66, v90, &qword_1000454B8, &qword_100035418);
    v68 = v87;
    v69 = (v67 + *(v87 + 36));
    *v69 = v65;
    v69[1] = v64;
    v70 = v67;
    v71 = v89;
    sub_100011540(v70, v89, &qword_1000454C0, &qword_100035420);
    v33 = v95;
    sub_100011540(v71, v95, &qword_1000454C0, &qword_100035420);
    (*(v18 + 56))(v33, 0, 1, v68);
  }

  v73 = v92;
  v72 = v93;
  v74 = *(v93 + 16);
  v75 = v96;
  v76 = v94;
  v74(v96, v92, v94);
  v99 = 1;
  v77 = v97;
  sub_10000DBBC(v33, v97, &qword_1000454C8, &qword_100035428);
  v78 = v98;
  v74(v98, v75, v76);
  v79 = sub_100001A68(&qword_1000454D8, &qword_1000354C8);
  v80 = &v78[*(v79 + 48)];
  v81 = v99;
  *v80 = 0;
  v80[8] = v81;
  sub_10000DBBC(v77, &v78[*(v79 + 64)], &qword_1000454C8, &qword_100035428);
  sub_10000DC24(v33, &qword_1000454C8, &qword_100035428);
  v82 = *(v72 + 8);
  v82(v73, v76);
  sub_10000DC24(v77, &qword_1000454C8, &qword_100035428);
  return (v82)(v75, v76);
}

uint64_t sub_1000106F4()
{
  v1 = sub_1000338E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001077C()
{
  v1 = *(sub_1000338E4() - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_100033C94();
  sub_100033434();
}

unint64_t sub_100010824()
{
  result = qword_1000453D8;
  if (!qword_1000453D8)
  {
    sub_100006924(&qword_1000453C0, &qword_1000352C8);
    sub_1000114F8(&qword_1000453E0, &qword_1000453E8, &unk_1000352E0);
    sub_1000114F8(&qword_1000453F0, &qword_1000453F8, &qword_100035D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453D8);
  }

  return result;
}

__n128 sub_100010944(uint64_t a1, uint64_t a2)
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

uint64_t sub_100010960(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000109BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100010A40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100010B10(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010BBC()
{
  sub_100010C38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100010C38()
{
  if (!qword_100045468)
  {
    sub_1000333A4();
    v0 = sub_1000333B4();
    if (!v1)
    {
      atomic_store(v0, &qword_100045468);
    }
  }
}

unint64_t sub_100010C94()
{
  result = qword_100045498;
  if (!qword_100045498)
  {
    sub_100006924(&qword_100045338, &qword_100035250);
    sub_100006924(&qword_100045328, &qword_100035240);
    type metadata accessor for FCDisclosureGroupStyle();
    sub_1000114F8(&qword_1000453A8, &qword_100045328, &qword_100035240);
    sub_10001130C(&qword_1000453B0, type metadata accessor for FCDisclosureGroupStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045498);
  }

  return result;
}

uint64_t sub_100010E24()
{
  v1 = *(v0 + 16);
  v2 = sub_100033884();
  *v3 = !*v3;
  return v2(&v5, 0);
}

uint64_t sub_100010E90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000336A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A68(&qword_1000453A0, &qword_100035C80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000DBBC(v2, &v17 - v11, &qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000333A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100033EC4();
    v16 = sub_1000338F4();
    sub_100033264();

    sub_100033694();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000110E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000111B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033654();
  *a1 = result;
  return result;
}

uint64_t sub_1000111DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_100033664();
}

uint64_t sub_100011208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000335F4();
  *a1 = result;
  return result;
}

uint64_t sub_100011234(uint64_t *a1)
{
  v1 = *a1;

  return sub_100033604();
}

uint64_t sub_100011260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySelectableRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001130C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011354()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001139C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a2 = sub_100033C74();
  a2[1] = v7;
  v8 = sub_100001A68(&qword_100045518, &qword_1000355A0);
  return sub_10000EA9C(v4, v5, v6, (v2 + 16), (a2 + *(v8 + 44)));
}

unint64_t sub_10001140C()
{
  result = qword_100045500;
  if (!qword_100045500)
  {
    sub_100006924(&qword_1000454F8, &unk_100035590);
    sub_1000114F8(&qword_100045508, &qword_100044E08, &unk_100035A80);
    sub_1000114F8(&qword_100045510, &qword_100044E08, &unk_100035A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045500);
  }

  return result;
}

uint64_t sub_1000114F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A68(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000115BC(uint64_t a1, void (**a2)(void, void))
{
  sub_100033FB4(42);

  a2[2](a1, a2);
  v5._countAndFlagsBits = sub_1000340C4();
  sub_100033D84(v5);

  v6._countAndFlagsBits = 0x656C646E7562202CLL;
  v6._object = 0xEB00000000204449;
  sub_100033D84(v6);
  a2[3](a1, a2);
  sub_100001A68(&qword_100045528, qword_1000355B0);
  v7._countAndFlagsBits = sub_100033D54();
  sub_100033D84(v7);

  v8._countAndFlagsBits = 0x44496D616574202CLL;
  v8._object = 0xE900000000000020;
  sub_100033D84(v8);
  a2[4](a1, a2);
  v9._countAndFlagsBits = sub_100033D54();
  sub_100033D84(v9);

  return 0xD000000000000010;
}

uint64_t sub_10001176C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_1000117E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100011878()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000118E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000119A8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100011AE0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100011C64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100011CB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t (*sub_100011D2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100011E04(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332E4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_100011F3C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100012114()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100012180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000121CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_100012248()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000122C0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

uint64_t (*sub_10001238C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

uint64_t sub_1000124FC()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded;
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText, v4);
  return v0;
}

uint64_t sub_1000125E4()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded;
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_100012708()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100012740();
  return v3;
}

uint64_t sub_100012740()
{
  v1 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - v4;
  v6 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded;
  LOBYTE(v16) = 0;
  sub_1000332C4();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v16 = 0;
  v17 = 0;
  sub_100001A68(&qword_100045528, qword_1000355B0);
  sub_1000332C4();
  v13 = *(v2 + 32);
  v13(v0 + v12, v5, v1);
  v14 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText;
  v16 = 0;
  v17 = 0;
  sub_1000332C4();
  v13(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_100012940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPickerViewConfiguration();
  result = sub_1000332B4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ActivityPickerViewConfiguration()
{
  result = qword_100046DF0;
  if (!qword_100046DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000129D4()
{
  sub_100012AA0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100012AF0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100012AA0()
{
  if (!qword_1000450A0)
  {
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_1000450A0);
    }
  }
}

void sub_100012AF0()
{
  if (!qword_100045568)
  {
    sub_100006924(&qword_100045528, qword_1000355B0);
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100045568);
    }
  }
}

id sub_100012B58()
{
  result = [objc_opt_self() mainBundle];
  qword_100046E08 = result;
  return result;
}

uint64_t sub_100012B94()
{
  v0 = sub_100001A68(&qword_100045688, qword_100035780);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_100046E00 != -1)
  {
    swift_once();
  }

  v4 = qword_100046E08;
  v5 = sub_100033D04();
  v6 = sub_100033D04();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_100033D34();
  sub_100032F94();
  v8 = sub_100032FA4();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = sub_100033D44();

  sub_100012D48(v3);
  return v9;
}

uint64_t sub_100012D48(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045688, qword_100035780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045688, qword_100035780);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  result = MGCopyAnswer();
  if (result)
  {
    v23 = result;
    if (swift_dynamicCast())
    {
      v21 = a1;
      v22 = a2;

      v24._countAndFlagsBits = 95;
      v24._object = 0xE100000000000000;
      sub_100033D84(v24);
      v9 = v21;
      v10 = v22;
      v11 = sub_100033D64();
      v13 = v12;

      v21 = v9;
      v22 = v10;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_100033D84(v25);

      if (qword_100046E00 != -1)
      {
        swift_once();
      }

      v14 = qword_100046E08;
      v15 = sub_100033D04();
    }

    else
    {
      if (qword_100046E00 != -1)
      {
        swift_once();
      }

      v14 = qword_100046E08;
      v15 = sub_100033D04();
    }

    v16 = sub_100033D04();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    sub_100033D34();
    sub_100032F94();
    v18 = sub_100032FA4();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v19 = sub_100033D44();

    sub_100012D48(v7);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000130D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100033294();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  v8 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  v9 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 8];
  v10 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 16];
  v11 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 24];
  v12 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 32];
  v13 = v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 40];
  if (v10 == 1)
  {
    v38 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 8];
    v39 = v8;
    v36 = v11;
    v37 = 1;
    v35 = v12;
    v34 = v13;
    v14 = [v1 _hostProcessIdentifier];
    [v1 _hostAuditToken];
    v19 = *(&v40 + 1);
    v15 = v40;
    v17 = v41;
    v16 = v42;
    v18 = [objc_opt_self() currentConnection];
    sub_100033274();
    sub_100018E6C(v14, v15, v19, v17, v16, v18, v6, &v40);
    LODWORD(v19) = v40;
    v20 = *(&v40 + 1);
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = *v7;
    v32 = *(v7 + 1);
    v33 = v25;
    v26 = *(v7 + 2);
    v27 = *(v7 + 3);
    v30 = *(v7 + 4);
    v31 = v26;
    *v7 = v40;
    *(v7 + 1) = v20;
    *(v7 + 2) = v21;
    *(v7 + 3) = v22;
    *(v7 + 4) = v23;
    v28 = v7[40];
    v7[40] = v24;

    sub_10001822C(v33, v32, v31);
    v10 = v37;
    v9 = v38;
    v8 = v39;
  }

  else
  {
    v24 = v13 & 1;
    v19 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  result = sub_100018C64(v8, v9, v10);
  *a1 = v19;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v24;
  return result;
}

void sub_1000132B0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0;
}

id sub_1000132C8()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_100013300()
{
  v1 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  [*&v0[OBJC_IVAR___ActivityPickerServiceViewController_connectionLock] lock];
  v2 = &v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  v3 = *&v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  if (v3)
  {
    v4 = v2[1];
    v5 = *&v0[v1];
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for ActivityPickerServiceViewController();
    v3 = sub_100032FB4();
    v7 = v6;
    swift_getObjectType();
    *(swift_allocObject() + 16) = v0;
    v8 = v0;
    v9 = v0;
    sub_100033054();
    *(swift_allocObject() + 16) = v8;
    v10 = v8;
    sub_100033064();
    v11 = *v2;
    *v2 = v3;
    v2[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_100033074();
    v5 = *&v9[v1];
  }

  [v5 unlock];
  return v3;
}

id sub_100013470(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  [*(v2 + OBJC_IVAR___ActivityPickerServiceViewController_connectionLock) lock];
  if (a1)
  {
    v5 = (v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
    if (*(v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection))
    {
      v6 = v5[1];
      v7 = *(v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100033064();
      swift_unknownObjectRelease();
      if (*v5)
      {
        v8 = v5[1];
        v9 = *v5;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100033044();
        swift_unknownObjectRelease();
      }
    }
  }

  v10 = (v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
  v11 = *(v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectRelease();
  v12 = *(v2 + v4);

  return [v12 unlock];
}

id sub_100013574()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x120))(1);
  sub_100033274();
  v7 = sub_100033284();
  v8 = sub_100033EA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "ActivityPickerServiceViewController deinit", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for ActivityPickerServiceViewController();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_100013818()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10001384C()
{
  v1 = v0;
  v2 = OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration;
  type metadata accessor for ActivityPickerViewConfiguration();
  *&v0[v2] = sub_100012708();
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController] = 0;
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder] = 0;
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder] = 0;
  v3 = &v0[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  *v3 = 0u;
  *(v3 + 2) = 1;
  v3[40] = 0;
  *(v3 + 24) = 0u;
  v4 = &v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  *&v1[v5] = [objc_allocWithZone(NSLock) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivityPickerServiceViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id sub_100013958(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000139EC(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

id sub_100013A48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

uint64_t sub_100013A9C()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100013D40;
  v19 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v17 = sub_100013F14;
  *(&v17 + 1) = &unk_100041C40;
  v7 = _Block_copy(&aBlock);
  v8 = [v1 _remoteViewControllerProxyWithErrorHandler:v7];
  _Block_release(v7);
  if (v8)
  {
    sub_100033F54();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  aBlock = v14;
  v17 = v15;
  sub_10000DBBC(&aBlock, &v14, &qword_1000456C8, &unk_1000357D0);
  if (*(&v15 + 1))
  {
    sub_100001A68(&qword_1000456D0, &qword_1000357E0);
    if (swift_dynamicCast())
    {
      sub_10000DC24(&aBlock, &qword_1000456C8, &unk_1000357D0);
      return v13[1];
    }
  }

  else
  {
    sub_10000DC24(&v14, &qword_1000456C8, &unk_1000357D0);
  }

  sub_100033274();
  v10 = sub_100033284();
  v11 = sub_100033EB4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to get client interface", v12, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_10000DC24(&aBlock, &qword_1000456C8, &unk_1000357D0);
  return 0;
}

uint64_t sub_100013D40(uint64_t a1)
{
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  swift_errorRetain();
  v7 = sub_100033284();
  v8 = sub_100033EB4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_100001A68(&qword_100045750, &unk_100035880);
    v11 = sub_100033D54();
    v13 = sub_1000045A0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get client proxy: %{public}s", v9, 0xCu);
    sub_100006A74(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_100013F14(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100013F80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v195 = a7;
  v189 = a5;
  v188 = a4;
  v187 = a3;
  v186 = a2;
  v185 = a1;
  v212 = sub_100033294();
  v196 = *(v212 - 8);
  v13 = *(v196 + 64);
  v14 = __chkstk_darwin(v212);
  v16 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v190 = &v179 - v18;
  v19 = __chkstk_darwin(v17);
  v194 = &v179 - v20;
  v21 = __chkstk_darwin(v19);
  v207 = &v179 - v22;
  v23 = __chkstk_darwin(v21);
  v209 = &v179 - v24;
  __chkstk_darwin(v23);
  v210 = &v179 - v25;
  v215 = sub_100001A68(&qword_1000456D8, &unk_1000357E8);
  v193 = *(v215 - 8);
  v26 = *(v193 + 8);
  v27 = __chkstk_darwin(v215);
  v201 = &v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v202 = &v179 - v30;
  __chkstk_darwin(v29);
  v205 = &v179 - v31;
  v32 = sub_1000331A4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v179 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityProvider();
  v192 = sub_100019B74(a6);
  sub_1000130D0(v222);
  v37 = v224;
  v225 = v223;
  sub_10000DC24(&v225, &qword_100045528, qword_1000355B0);
  if (!v37)
  {
    sub_100033274();
    v82 = sub_100033284();
    v83 = sub_100033EB4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Unable to configure activity picker: team identifier not available", v84, 2u);
    }

    (*(v196 + 8))(v16, v212);
    (*(*v192 + 200))(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  v183 = a6;
  sub_100033194();
  v220 = v32;
  v221 = &protocol witness table for KeyRetriever;
  v38 = sub_1000186FC(&v219);
  v181 = v33;
  v39 = *(v33 + 16);
  v39(v38, v36, v32);
  v40 = sub_1000331F4();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  v43 = sub_1000331B4();
  v44 = *(v9 + OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder);
  v214 = OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder;
  *(v9 + OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder) = v43;

  v220 = v32;
  v221 = &protocol witness table for KeyRetriever;
  v45 = sub_1000186FC(&v219);
  v182 = v32;
  v39(v45, v36, v32);
  v46 = sub_100033244();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  v203 = v37;
  v49 = sub_100033204();
  v50 = *(v9 + OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder);
  *(v9 + OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder) = v49;

  v53 = *(v195 + 16);
  v54 = &loc_100034000;
  v206 = v9;
  v184 = v36;
  v198 = a8;
  v204 = v53;
  if (!v53)
  {
    v67 = 0;
    v191 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v55 = 0;
  v200 = (v196 + 8);
  v208 = v193 + 8;
  v191 = _swiftEmptyArrayStorage;
  v56 = v195 + 40;
  *&v52 = 136446210;
  v197 = v52;
  v57 = v205;
  v180 = v195 + 40;
  do
  {
    v58 = (v56 + 16 * v55);
    v59 = v55;
    v211 = 0;
    v60 = v204;
    while (1)
    {
      if (v59 >= v60)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (__OFADD__(v59, 1))
      {
        goto LABEL_80;
      }

      v213 = v59 + 1;
      v62 = *(v58 - 1);
      v61 = *v58;
      sub_100018760(v62, *v58);
      sub_100018760(v62, v61);
      sub_100033164();
      if (*(v10 + v214))
      {
        break;
      }

      (*v208)(v57, v215);
      result = sub_1000187B4(v62, v61);
LABEL_6:
      ++v59;
      v58 += 2;
      if (v213 == v60)
      {
        v67 = v211;
        a8 = v198;
        goto LABEL_26;
      }
    }

    v63 = *(v10 + v214);

    v64 = v211;
    v65 = sub_1000331C4();
    v67 = v64;
    if (v64)
    {
      v211 = 0;

      sub_100033274();
      swift_errorRetain();
      v68 = sub_100033284();
      v69 = sub_100033EB4();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *&v199 = swift_slowAlloc();
        v219 = v199;
        *v70 = v197;
        v218 = v67;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v71 = sub_100033D54();
        v73 = sub_1000045A0(v71, v72, &v219);
        v54 = &loc_100034000;

        *(v70 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v68, v69, "Failed to decode application token: %{public}s", v70, 0xCu);
        sub_100006A74(v199);

        v10 = v206;
      }

      (*v200)(v210, v212);
      v57 = v205;
      (*v208)(v205, v215);
      result = sub_1000187B4(v62, v61);
      v60 = v204;
      goto LABEL_6;
    }

    v74 = v66;
    v75 = v65;
    (*v208)(v205, v215);

    sub_1000187B4(v62, v61);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100018274(0, *(v191 + 2) + 1, 1, v191);
      v191 = result;
    }

    a8 = v198;
    v77 = *(v191 + 2);
    v76 = *(v191 + 3);
    if (v77 >= v76 >> 1)
    {
      result = sub_100018274((v76 > 1), v77 + 1, 1, v191);
      v79 = v74;
      v191 = result;
      v78 = v75;
    }

    else
    {
      v78 = v75;
      v79 = v74;
    }

    v57 = v205;
    v80 = v191;
    *(v191 + 2) = v77 + 1;
    v81 = &v80[16 * v77];
    *(v81 + 4) = v78;
    *(v81 + 5) = v79;
    v55 = v213;
    v56 = v180;
  }

  while (v213 != v204);
LABEL_26:
  v210 = *(a8 + 16);
  if (!v210)
  {
    *&v197 = _swiftEmptyArrayStorage;
LABEL_47:
    v111 = a9;
    v112 = *(a9 + 16);
    v205 = v112;
    if (v112)
    {
      v113 = 0;
      v202 = (v196 + 8);
      v209 = v193 + 8;
      v193 = _swiftEmptyArrayStorage;
      v114 = a9 + 40;
      *&v52 = v54[316];
      v199 = v52;
      v180 = a9 + 40;
LABEL_49:
      v115 = (v114 + 16 * v113);
      v116 = v113;
      v211 = v67;
      v117 = v201;
      while (v116 < v112)
      {
        if (__OFADD__(v116, 1))
        {
          goto LABEL_84;
        }

        v213 = (v116 + 1);
        v119 = *(v115 - 1);
        v118 = *v115;
        sub_100018760(v119, *v115);
        sub_100018760(v119, v118);
        sub_100033164();
        if (*(v10 + v214))
        {
          v120 = *(v10 + v214);

          v121 = v211;
          v122 = sub_1000331E4();
          v67 = v121;
          if (!v121)
          {
            v132 = v123;
            v133 = v122;
            (*v209)(v201, v215);

            sub_1000187B4(v119, v118);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100018274(0, *(v193 + 2) + 1, 1, v193);
              v193 = result;
            }

            v135 = *(v193 + 2);
            v134 = *(v193 + 3);
            if (v135 >= v134 >> 1)
            {
              result = sub_100018274((v134 > 1), v135 + 1, 1, v193);
              v137 = v132;
              v193 = result;
              v136 = v133;
            }

            else
            {
              v136 = v133;
              v137 = v132;
            }

            v138 = v193;
            *(v193 + 2) = v135 + 1;
            v139 = &v138[16 * v135];
            *(v139 + 4) = v136;
            *(v139 + 5) = v137;
            v112 = v205;
            v113 = v213;
            v114 = v180;
            if (v213 != v205)
            {
              goto LABEL_49;
            }

            goto LABEL_69;
          }

          v211 = 0;

          v124 = v207;
          sub_100033274();
          swift_errorRetain();
          v125 = sub_100033284();
          v126 = sub_100033EB4();

          LODWORD(v208) = v126;
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v219 = v200;
            *v127 = v199;
            v218 = v67;
            swift_errorRetain();
            sub_100001A68(&qword_1000456E0, &qword_1000357F8);
            v128 = sub_100033D54();
            v130 = v111;
            v131 = sub_1000045A0(v128, v129, &v219);

            *(v127 + 4) = v131;
            v111 = v130;
            _os_log_impl(&_mh_execute_header, v125, v208, "Failed to decode web domain token: %{public}s", v127, 0xCu);
            sub_100006A74(v200);

            v10 = v206;

            (*v202)(v207, v212);
          }

          else
          {

            (*v202)(v124, v212);
          }

          v117 = v201;
          (*v209)(v201, v215);
          result = sub_1000187B4(v119, v118);
          v112 = v205;
        }

        else
        {
          (*v209)(v117, v215);
          result = sub_1000187B4(v119, v118);
        }

        ++v116;
        v115 += 2;
        if (v213 == v112)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_83;
    }

    v193 = _swiftEmptyArrayStorage;
LABEL_69:

    sub_100033274();
    v140 = v191;

    v141 = v197;

    v142 = v111;
    v143 = v193;

    v144 = sub_100033284();
    v145 = sub_100033EA4();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 134219264;
      *(v146 + 4) = v140[2];

      v215 = v142;
      *(v146 + 12) = 2048;
      *(v146 + 14) = v204;

      *(v146 + 22) = 2048;
      *(v146 + 24) = *(v141 + 16);

      *(v146 + 32) = 2048;
      *(v146 + 34) = v210;

      *(v146 + 42) = 2048;
      *(v146 + 44) = *(v143 + 2);

      *(v146 + 52) = 2048;
      *(v146 + 54) = v205;

      _os_log_impl(&_mh_execute_header, v144, v145, "Detokenized %ld/%ld applications, %ld/%ld categories, %ld/%ld webDomains", v146, 0x3Eu);
    }

    else
    {
    }

    v147 = v184;
    v148 = v190;
    v149 = v143;
    v150 = *(v196 + 8);
    v196 += 8;
    v150(v194, v212);
    v219 = v140;
    v217 = v149;
    v218 = v141;
    if (*(v10 + OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 40))
    {

      sub_10001580C(v151);

      sub_10001580C(v152);

      sub_10001580C(v153);
      sub_100033274();

      v154 = sub_100033284();
      v155 = sub_100033EA4();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *v156 = 136315650;
        v157 = sub_100033E04();
        v159 = sub_1000045A0(v157, v158, &v216);

        *(v156 + 4) = v159;
        *(v156 + 12) = 2080;
        v160 = sub_100033E04();
        v162 = sub_1000045A0(v160, v161, &v216);

        *(v156 + 14) = v162;
        *(v156 + 22) = 2080;
        v147 = v184;
        v163 = sub_100033E04();
        v165 = sub_1000045A0(v163, v164, &v216);

        *(v156 + 24) = v165;
        _os_log_impl(&_mh_execute_header, v154, v155, "Untokenized applications: %s, categories %s, webDomains: %s", v156, 0x20u);
        swift_arrayDestroy();
        v10 = v206;

        v166 = v190;
      }

      else
      {

        v166 = v148;
      }

      v150(v166, v212);
    }

    v167 = sub_100018808(v219);

    v168 = sub_100018808(v218);

    v169 = sub_100018808(v217);

    v170 = v192;
    (*(*v192 + 200))(v167, v168, v169);
    v171 = *(v10 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration);
    (*(*v171 + 112))(v185 & 1);
    v172 = *(*v171 + 160);
    v173 = v187;

    v172(v186, v173);
    v174 = *(*v171 + 208);
    v175 = v189;

    v174(v188, v175);
    (*((swift_isaMask & *v10) + 0x138))(v170);
    sub_100013300();
    swift_getObjectType();
    v176 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v177 = swift_allocObject();
    swift_weakInit();
    v178 = swift_allocObject();
    *(v178 + 16) = v176;
    *(v178 + 24) = v177;
    *(v178 + 32) = v183 & 1;

    sub_100033084();

    swift_unknownObjectRelease();

    (*(v181 + 8))(v147, v182);
  }

  v85 = 0;
  v205 = (v196 + 8);
  v208 = v193 + 8;
  *&v197 = _swiftEmptyArrayStorage;
  v86 = a8 + 40;
  *&v52 = v54[316];
  v199 = v52;
  v87 = v210;
  v180 = a8 + 40;
LABEL_28:
  v88 = (v86 + 16 * v85);
  v89 = v85;
  v211 = v67;
  v90 = v202;
  while (v89 < v87)
  {
    if (__OFADD__(v89, 1))
    {
      goto LABEL_82;
    }

    v213 = (v89 + 1);
    v92 = *(v88 - 1);
    v91 = *v88;
    sub_100018760(v92, *v88);
    sub_100018760(v92, v91);
    sub_100033164();
    if (*(v10 + v214))
    {
      v93 = *(v10 + v214);

      v94 = v211;
      v95 = sub_1000331D4();
      v67 = v94;
      if (!v94)
      {
        v103 = v96;
        v104 = v95;
        (*v208)(v202, v215);

        sub_1000187B4(v92, v91);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100018274(0, *(v197 + 16) + 1, 1, v197);
          *&v197 = result;
        }

        v54 = &loc_100034000;
        v106 = *(v197 + 16);
        v105 = *(v197 + 24);
        if (v106 >= v105 >> 1)
        {
          result = sub_100018274((v105 > 1), v106 + 1, 1, v197);
          v108 = v103;
          *&v197 = result;
          v107 = v104;
        }

        else
        {
          v107 = v104;
          v108 = v103;
        }

        v86 = v180;
        v109 = v197;
        *(v197 + 16) = v106 + 1;
        v110 = v109 + 16 * v106;
        *(v110 + 32) = v107;
        *(v110 + 40) = v108;
        v87 = v210;
        v85 = v213;
        if (v213 != v210)
        {
          goto LABEL_28;
        }

        goto LABEL_47;
      }

      v211 = 0;

      sub_100033274();
      swift_errorRetain();
      v97 = sub_100033284();
      v98 = sub_100033EB4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v219 = v200;
        *v99 = v199;
        v218 = v67;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v100 = sub_100033D54();
        v102 = sub_1000045A0(v100, v101, &v219);

        *(v99 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v97, v98, "Failed to decode category token: %{public}s", v99, 0xCu);
        sub_100006A74(v200);

        v10 = v206;
      }

      (*v205)(v209, v212);
      v90 = v202;
      (*v208)(v202, v215);
    }

    else
    {
      (*v208)(v90, v215);
    }

    result = sub_1000187B4(v92, v91);
    ++v89;
    v88 += 2;
    v87 = v210;
    if (v213 == v210)
    {
      v67 = v211;
      v54 = &loc_100034000;
      goto LABEL_47;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_10001580C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100018274(result, v11, 1, v3);
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

uint64_t sub_100015900(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100018274(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_10001848C(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_100018274((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_1000189CC();
  *v1 = v4;
  return result;
}

uint64_t sub_100015BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_100033294();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_10000DBBC(a1, v29, &qword_100045720, &unk_100035860);
    if (v30)
    {
      v13 = *&v29[0];
      sub_100033274();
      swift_errorRetain();
      v14 = sub_100033284();
      v15 = sub_100033EB4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v16 = 136446210;
        *&v28[0] = v13;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v17 = sub_100033D54();
        v19 = sub_1000045A0(v17, v18, aBlock);

        *(v16 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
        sub_100006A74(v26);
      }

      (*(v7 + 8))(v10, v6);
      sub_100013300();
      swift_getObjectType();
      sub_100033044();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000189D4(v29, v28);
      sub_100006AC0(v28, aBlock);
      sub_100001A68(&qword_100045728, &qword_100035870);
      if (swift_dynamicCast())
      {
        v20 = aBlock[6];
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = a4 & 1;
        aBlock[4] = sub_100018A28;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100013F14;
        aBlock[3] = &unk_100041D08;
        v24 = _Block_copy(aBlock);

        [v20 fetchAllSharedActivityWithReplyHandler:v24];
        _Block_release(v24);

        swift_unknownObjectRelease();
        return sub_100006A74(v28);
      }

      else
      {
        result = sub_100034044();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100016000(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v5 = sub_100033294();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100033CC4();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100033CE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = v20;
      if (a1)
      {
        sub_100033274();
        swift_errorRetain();
        v22 = sub_100033284();
        v23 = sub_100033ED4();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v36 = a1;
          aBlock[0] = v25;
          *v24 = 136446210;
          swift_errorRetain();
          sub_100001A68(&qword_100045750, &unk_100035880);
          v26 = sub_100033D54();
          v28 = sub_1000045A0(v26, v27, aBlock);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch family activity: %{public}s", v24, 0xCu);
          sub_100006A74(v25);
        }

        (*(v35 + 8))(v8, v5);
      }

      else
      {
        sub_100018A34();
        v35 = sub_100033EE4();
        v29 = swift_allocObject();
        *(v29 + 16) = v21;
        *(v29 + 24) = v33 & 1;
        aBlock[4] = sub_100018AB8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000164BC;
        aBlock[3] = &unk_100041D58;
        v30 = _Block_copy(aBlock);

        sub_100033CD4();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100018B04();
        sub_100001A68(&qword_100045740, &qword_100035878);
        sub_100018B5C();
        sub_100033F64();
        v31 = v35;
        sub_100033EF4();
        _Block_release(v30);

        (*(v34 + 8))(v12, v9);
        (*(v14 + 8))(v17, v13);
      }

      sub_100013300();
      swift_getObjectType();
      sub_100033044();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000164BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100016694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100033294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectWeakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v10 = OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController;
  v11 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController];
  if (v11)
  {
    v12 = *(**&v1[OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration] + 104);
    v13 = v11;
    if ((v12() & 1) == 0)
    {
      sub_100033274();
      v14 = sub_100033284();
      v15 = sub_100033EA4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "ActivityPickerServiceViewController: detaching existing UIHostingController controller from parent", v16, 2u);
      }

      (*(v5 + 8))(v8, v4);
      [v13 willMoveToParentViewController:0];
      v17 = [v13 view];
      if (!v17)
      {
        goto LABEL_51;
      }

      v18 = v17;
      [v17 removeFromSuperview];

      [v13 removeFromParentViewController];
      v13 = *&v2[v10];
      *&v2[v10] = 0;
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = v19;
  v21 = *(v19 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration);

  v22 = swift_unknownObjectWeakLoadStrong();

  sub_10002922C(v21, a1, v22, v70);
  sub_10001891C(v70, v69);
  v23 = objc_allocWithZone(sub_100001A68(&qword_1000456E8, &unk_100035800));
  v24 = sub_100033764();
  v25 = *&v2[v10];
  *&v2[v10] = v24;

  if (!*&v2[v10])
  {
LABEL_30:
    sub_100018978(v70);
LABEL_31:
    swift_unknownObjectWeakDestroy();
    return;
  }

  [v2 addChildViewController:?];
  v26 = [v2 view];
  if (!v26)
  {
    goto LABEL_33;
  }

  v27 = v26;
  v28 = *&v2[v10];
  if (!v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = [v28 view];
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v29;
  [v27 addSubview:v29];

  v31 = *&v2[v10];
  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = *&v2[v10];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = [v34 view];
  if (!v35)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v2 view];
  if (!v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = *&v2[v10];
  if (!v42)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = [v42 view];
  if (!v43)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v44 = v43;
  v45 = [v43 bottomAnchor];

  v46 = [v2 view];
  if (!v46)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v46;
  v48 = [v46 bottomAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = *&v2[v10];
  if (!v50)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v51 = [v50 view];
  if (!v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = v51;
  v53 = [v51 leftAnchor];

  v54 = [v2 view];
  if (!v54)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v55 = v54;
  v56 = [v54 leftAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  [v57 setActive:1];

  v58 = *&v2[v10];
  if (!v58)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v59 = [v58 view];
  if (!v59)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v60 = v59;
  v61 = [v59 rightAnchor];

  v62 = [v2 view];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 rightAnchor];

    v65 = [v61 constraintEqualToAnchor:v64];
    [v65 setActive:1];

    v66 = *&v2[v10];
    if (v66)
    {
      v67 = swift_unknownObjectWeakLoadStrong();
      v68 = v66;
      [v68 didMoveToParentViewController:v67];

      goto LABEL_30;
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_100016D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v144 = a3;
  v138 = a2;
  v147 = sub_100033294();
  v6 = *(v147 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v147);
  v131 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v127 - v11;
  v13 = __chkstk_darwin(v10);
  v135 = &v127 - v14;
  __chkstk_darwin(v13);
  v16 = &v127 - v15;
  v129 = sub_100001A68(&qword_1000456D8, &unk_1000357E8);
  v17 = *(*(v129 - 8) + 64);
  v18 = __chkstk_darwin(v129);
  v136 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v127 - v21;
  __chkstk_darwin(v20);
  v140 = &v127 - v23;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v141 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
  v27 = (v24 + 63) >> 6;
  v146 = (v6 + 8);
  v128 = (v22 + 8);

  v29 = 0;
  v30 = 0;
  v130 = _swiftEmptyArrayStorage;
  *&v31 = 136446210;
  v139 = v31;
  v145 = v4;
  v134 = a1;
  v143 = v12;
  while (v26)
  {
    v32 = v26;
LABEL_10:
    v26 = (v32 - 1) & v32;
    if (*(v4 + v141))
    {
      v142 = (v32 - 1) & v32;
      v34 = (*(a1 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v32)))));
      v36 = *v34;
      v35 = v34[1];

      sub_100033214();
      v133 = v16;

      v37 = v129;
      v38 = v140;
      v39 = sub_100033154();
      v41 = v40;
      (*v128)(v38, v37);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100018380(0, *(v130 + 2) + 1, 1, v130);
        v130 = result;
      }

      v12 = v143;
      v43 = *(v130 + 2);
      v42 = *(v130 + 3);
      if (v43 >= v42 >> 1)
      {
        result = sub_100018380((v42 > 1), v43 + 1, 1, v130);
        v130 = result;
      }

      v44 = v130;
      *(v130 + 2) = v43 + 1;
      v45 = &v44[16 * v43];
      *(v45 + 4) = v39;
      *(v45 + 5) = v41;
      v4 = v145;
      v30 = 0;
      v16 = v133;
      v26 = v142;
    }
  }

  while (1)
  {
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v33 >= v27)
    {
      break;
    }

    v32 = *(a1 + 56 + 8 * v33);
    ++v29;
    if (v32)
    {
      v29 = v33;
      goto LABEL_10;
    }
  }

  v46 = v138;
  v47 = v138 + 56;
  v48 = 1 << *(v138 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v138 + 56);
  v140 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v133 = _swiftEmptyArrayStorage;
  v53 = v135;
  while (v50)
  {
    v54 = v50;
LABEL_26:
    v50 = (v54 - 1) & v54;
    if (*&v140[v4])
    {
      v141 = (v54 - 1) & v54;
      v56 = v46;
      v57 = (*(v46 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v54)))));
      v58 = *v57;
      v59 = v57[1];

      v142 = v59;
      sub_100033224();
      if (v30)
      {

        sub_100033274();
        swift_errorRetain();
        v60 = sub_100033284();
        v61 = sub_100033EB4();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v151 = v63;
          *v62 = v139;
          *&v156 = v30;
          swift_errorRetain();
          sub_100001A68(&qword_1000456E0, &qword_1000357F8);
          v64 = sub_100033D54();
          v66 = sub_1000045A0(v64, v65, &v151);
          v53 = v135;

          *(v62 + 4) = v66;
          v46 = v138;
          _os_log_impl(&_mh_execute_header, v60, v61, "Failed to encode category token: %{public}s", v62, 0xCu);
          sub_100006A74(v63);
          v12 = v143;

          v4 = v145;

          (*v146)(v53, v147);

          v30 = 0;
          goto LABEL_30;
        }

        (*v146)(v53, v147);

        v30 = 0;
        v50 = v141;
        v46 = v56;
        v4 = v145;
      }

      else
      {
        v132 = 0;

        v67 = v129;
        v68 = v137;
        v69 = sub_100033154();
        v71 = v70;
        (*v128)(v68, v67);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100018380(0, *(v133 + 2) + 1, 1, v133);
          v133 = result;
        }

        v46 = v56;
        v73 = *(v133 + 2);
        v72 = *(v133 + 3);
        v4 = v145;
        if (v73 >= v72 >> 1)
        {
          result = sub_100018380((v72 > 1), v73 + 1, 1, v133);
          v133 = result;
        }

        v74 = v133;
        *(v133 + 2) = v73 + 1;
        v75 = &v74[16 * v73];
        *(v75 + 4) = v69;
        *(v75 + 5) = v71;
        v12 = v143;
        v30 = v132;
        v53 = v135;
LABEL_30:
        v50 = v141;
      }
    }
  }

  while (1)
  {
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v55 >= v51)
    {

      v76 = v144 + 56;
      v77 = 1 << *(v144 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v79 = v78 & *(v144 + 56);
      v140 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
      v80 = (v77 + 63) >> 6;

      v81 = 0;
      v137 = _swiftEmptyArrayStorage;
      while (v79)
      {
        v82 = v79;
LABEL_47:
        v79 = (v82 - 1) & v82;
        if (*&v140[v4])
        {
          v142 = (v82 - 1) & v82;
          v84 = (*(v144 + 48) + ((v81 << 10) | (16 * __clz(__rbit64(v82)))));
          v85 = *v84;
          v86 = v84[1];

          v141 = v86;
          sub_100033234();
          if (v30)
          {

            sub_100033274();
            swift_errorRetain();
            v87 = sub_100033284();
            v88 = sub_100033EB4();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v151 = v90;
              *v89 = v139;
              *&v156 = v30;
              swift_errorRetain();
              sub_100001A68(&qword_1000456E0, &qword_1000357F8);
              v91 = sub_100033D54();
              v93 = sub_1000045A0(v91, v92, &v151);
              v46 = v138;

              *(v89 + 4) = v93;
              _os_log_impl(&_mh_execute_header, v87, v88, "Failed to encode web domain token: %{public}s", v89, 0xCu);
              sub_100006A74(v90);
              v12 = v143;

              v4 = v145;
            }

            else
            {
            }

            (*v146)(v12, v147);

            v30 = 0;
            v79 = v142;
          }

          else
          {

            v94 = v129;
            v95 = v136;
            v96 = sub_100033154();
            v98 = v97;
            (*v128)(v95, v94);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100018380(0, *(v137 + 2) + 1, 1, v137);
              v137 = result;
            }

            v100 = *(v137 + 2);
            v99 = *(v137 + 3);
            if (v100 >= v99 >> 1)
            {
              result = sub_100018380((v99 > 1), v100 + 1, 1, v137);
              v137 = result;
            }

            v101 = v137;
            *(v137 + 2) = v100 + 1;
            v102 = &v101[16 * v100];
            *(v102 + 4) = v96;
            *(v102 + 5) = v98;
            v79 = v142;
            v12 = v143;
            v30 = 0;
            v46 = v138;
          }
        }
      }

      while (1)
      {
        v83 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_69;
        }

        if (v83 >= v80)
        {

          v103 = v131;
          sub_100033274();
          v104 = v134;

          v105 = v130;

          v106 = v133;

          v107 = sub_100033284();
          v108 = sub_100033EA4();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = v144;
            v111 = v105;
            v112 = v109;
            *v109 = 134219264;
            *(v109 + 4) = *(v111 + 2);

            *(v112 + 12) = 2048;
            *(v112 + 14) = *(v104 + 16);

            *(v112 + 22) = 2048;
            *(v112 + 24) = *(v106 + 2);

            *(v112 + 32) = 2048;
            *(v112 + 34) = *(v46 + 16);

            *(v112 + 42) = 2048;
            *(v112 + 44) = *(v137 + 2);

            *(v112 + 52) = 2048;
            *(v112 + 54) = *(v110 + 16);
            v103 = v131;

            _os_log_impl(&_mh_execute_header, v107, v108, "Tokenized %ld/%ld applications, %ld/%ld categories, %ld/%ld webDomains", v112, 0x3Eu);
          }

          else
          {
          }

          (*v146)(v103, v147);
          v149 = _swiftEmptyArrayStorage;
          v150 = _swiftEmptyArrayStorage;
          v148 = _swiftEmptyArrayStorage;
          sub_1000130D0(&v151);
          v113 = v154;
          v156 = v152;
          sub_10000DC24(&v156, &qword_100045528, qword_1000355B0);
          v155 = v153;
          v114 = sub_10000DC24(&v155, &qword_100045528, qword_1000355B0);
          if (v113)
          {

            sub_100015900(v115);

            sub_100015900(v116);

            v114 = sub_100015900(v117);
          }

          v118 = (*((swift_isaMask & *v4) + 0x128))(v114);
          if (v118)
          {
            v119 = v118;
            isa = sub_100033DE4().super.isa;

            v121 = sub_100033DE4().super.isa;

            v122 = sub_100033DE4().super.isa;

            v123 = sub_100033DE4().super.isa;

            v124 = sub_100033DE4().super.isa;

            v125 = sub_100033DE4().super.isa;
            v4 = v145;

            [v119 didSelectWithApplications:isa categories:v121 webDomains:v122 untokenizedApplications:v123 untokenizedCategories:v124 untokenizedWebDomains:v125];

            v126 = swift_unknownObjectRelease();
          }

          else
          {
          }

          result = (*(**(v4 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration) + 104))(v126);
          if ((result & 1) == 0)
          {
            return (*((swift_isaMask & *v4) + 0x150))();
          }

          return result;
        }

        v82 = *(v76 + 8 * v83);
        ++v81;
        if (v82)
        {
          v81 = v83;
          goto LABEL_47;
        }
      }
    }

    v54 = *(v47 + 8 * v55);
    ++v52;
    if (v54)
    {
      v52 = v55;
      goto LABEL_26;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}