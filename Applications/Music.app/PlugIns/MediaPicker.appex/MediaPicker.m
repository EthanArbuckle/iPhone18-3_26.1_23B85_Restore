uint64_t sub_1000016F8()
{
  type metadata accessor for MediaPickerServiceCoordinator();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_10000CB70 = v0;
  return result;
}

uint64_t sub_10000173C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

void type metadata accessor for MPMediaPickerSelectionMode()
{
  if (!qword_10000CA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000CA10);
    }
  }
}

void sub_1000017EC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = [objc_allocWithZone(sub_100004050()) initWithFrame:{v2, v4, v6, v8}];
  v10 = sub_100004000();
  v11 = *((swift_isaMask & **v10) + 0xD0);
  v12 = *v10;
  v13 = v9;
  v11(v9, &protocol witness table for Window, 0, 0, 0);
}

id sub_10000191C()
{
  v1 = v0;
  v2 = sub_100004080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicMediaPickerServiceViewController();
  v68.receiver = v0;
  v68.super_class = v7;
  objc_msgSendSuper2(&v68, "viewDidLoad");
  v8 = sub_100004030();
  v10 = v9;
  v11 = qword_10000C8E0;
  v12 = v8;
  if (v11 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v14 = &MediaPickerServiceCoordinator;
  v15 = v12;
  if (Strong)
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      sub_100003F98(0, &unk_10000CB60, UIViewController_ptr);
      v15 = Strong;
      v18 = sub_100004180();

      v14 = &MediaPickerServiceCoordinator;
      if (v18)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v19 = Strong;
    }

    [Strong willMoveToParentViewController:0];
    if ([Strong isViewLoaded])
    {
      result = [Strong v14[23].name];
      if (!result)
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v21 = result;
      [result removeFromSuperview];
    }

    [Strong removeFromParentViewController];
    v15 = Strong;
    goto LABEL_12;
  }

LABEL_13:

  [objc_opt_self() setPrefersInMemoryDatabase:1];
  v22 = [v12 v14[23].name];

  if (v22)
  {
    [v1 addChildViewController:v12];
    result = [v1 v14[23].name];
    if (result)
    {
      v23 = result;
      v65 = v10;
      [result bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [v22 setFrame:{v25, v27, v29, v31}];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      result = [v1 v14[23].name];
      if (result)
      {
        v32 = result;
        [result addSubview:v22];

        sub_100003E14(&qword_10000CB18, &qword_100004878);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100004800;
        v34 = [v22 topAnchor];
        result = [v1 v14[23].name];
        if (result)
        {
          v35 = result;
          v36 = [result topAnchor];

          v37 = [v34 constraintEqualToAnchor:v36];
          *(v33 + 32) = v37;
          v38 = [v22 bottomAnchor];
          result = [v1 v14[23].name];
          if (result)
          {
            v39 = result;
            v40 = [result bottomAnchor];

            v41 = [v38 constraintEqualToAnchor:v40];
            *(v33 + 40) = v41;
            v42 = [v22 leadingAnchor];
            result = [v1 v14[23].name];
            if (result)
            {
              v43 = result;
              v44 = [result leadingAnchor];

              v45 = [v42 constraintEqualToAnchor:v44];
              *(v33 + 48) = v45;
              v46 = [v22 trailingAnchor];
              result = [v1 v14[23].name];
              if (result)
              {
                v47 = result;
                v48 = objc_opt_self();
                v49 = [v47 trailingAnchor];

                v50 = [v46 constraintEqualToAnchor:v49];
                *(v33 + 56) = v50;
                sub_100003F98(0, &qword_10000CB58, NSLayoutConstraint_ptr);
                isa = sub_1000040F0().super.isa;

                [v48 activateConstraints:isa];

                [v12 didMoveToParentViewController:v1];
                v67 = v12;
                v52 = v65;
                v53 = *(v65 + 16);
                v54 = swift_unknownObjectRetain();
                v53(v54, &off_100008550, ObjectType, v52);
                v55 = v67;
                swift_unknownObjectWeakAssign();
                v56 = *sub_100003FE0();
                v57 = *sub_100004010();
                v58 = &v56[direct field offset for JSSegueCoordinator.seguePerformingDelegate];
                swift_beginAccess();
                *(v58 + 1) = &protocol witness table for MusicSeguePerformer;
                swift_unknownObjectWeakAssign();

                v59 = *sub_100003FF0();

                v60 = *sub_100004020();

                swift_beginAccess();
                *(v59 + 24) = &protocol witness table for MusicHTTPRequestAuthenticator;
                swift_unknownObjectWeakAssign();
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v61 = sub_100004060();
  (*(v3 + 16))(v6, v61, v2);
  v62 = sub_100004070();
  v63 = sub_100004140();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Could not get a view from CreateMediaPickerNavigationController().", v64, 2u);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000215C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_100004190();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100003E14(&qword_10000CB50, &unk_1000048A0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100003F30(v5);
    return 0;
  }
}

void sub_10000221C()
{
  v0 = sub_100004080();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100004160())
  {
    v5 = sub_100004000();
    v6 = *((swift_isaMask & **v5) + 0xC0);
    v7 = *v5;
    LOBYTE(v6) = v6();

    if ((v6 & 1) == 0 && qword_10000C8E8 != -1)
    {
      swift_once();
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_100004040();
    v9 = v15;
  }

  else
  {
    v10 = sub_100004060();
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_100004070();
    v12 = sub_100004130();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "update(with:) was called when self.mediaPickerViewController was nil", v13, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }
}

id sub_1000024E0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

id sub_100002680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicMediaPickerServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000026F8()
{
  result = sub_10000215C();
  if (result)
  {
    [result remoteMediaPickerDidCancel];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100002778(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002844(v11, 0, 0, 1, a1, a2);
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
    sub_100003ED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003DC8(v11);
  return v7;
}

unint64_t sub_100002844(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002950(a5, a6);
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
    result = sub_1000041D0();
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

char *sub_100002950(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000299C(a1, a2);
  sub_100002ACC(&off_100008508);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000299C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002BB8(v5, 0);
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

  result = sub_1000041D0();
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
        v10 = sub_1000040D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002BB8(v10, 0);
        result = sub_1000041B0();
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

uint64_t sub_100002ACC(uint64_t result)
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

  result = sub_100002C2C(result, v12, 1, v3);
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

void *sub_100002BB8(uint64_t a1, uint64_t a2)
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

  sub_100003E14(&qword_10000CB40, &qword_100004888);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E14(&qword_10000CB40, &qword_100004888);
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

uint64_t sub_100002D20(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_100003F98(0, a3, a4);
  if (a2 >> 62)
  {
    v7 = sub_100004200();
    v10 = *a4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v7;
    }

LABEL_10:
    sub_1000041C0(85);
    v9._countAndFlagsBits = 0xD000000000000046;
    v9._object = 0x8000000100004990;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  v8 = *a4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v7;
  }

  sub_1000041C0(82);
  v9._object = 0x8000000100004940;
  v9._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_1000040C0(v9);
  v12._countAndFlagsBits = sub_100004220();
  sub_1000040C0(v12);

  v13._countAndFlagsBits = 0x756F662074756220;
  v13._object = 0xEB0000000020646ELL;
  sub_1000040C0(v13);
  swift_getObjectType();
  v14._countAndFlagsBits = sub_100004220();
  sub_1000040C0(v14);

  result = sub_1000041E0();
  __break(1u);
  return result;
}

void sub_100002EF0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000041F0())
    {
LABEL_3:
      sub_100003E14(&qword_10000CB30, &qword_100004880);
      v3 = sub_1000041A0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1000041F0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_100002D20(v7, v1, &qword_10000CB20, MPMediaPredicate_ptr);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100004170(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100003F98(0, &qword_10000CB20, MPMediaPredicate_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100004180();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_100004170(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100003F98(0, &qword_10000CB20, MPMediaPredicate_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100004180();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_100003200(unint64_t a1, char a2, void *a3)
{
  v7 = *(sub_100004080() - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v89 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v89 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v89 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v89 - v22;
  if (a2)
  {
    v24 = a1;
    v25 = sub_10000215C();
    if (v25)
    {
      [v25 remoteMediaPickerDidPickPlaybackArchive:v24];
      swift_unknownObjectRelease();
    }

    sub_100003EC4(a1, 1);
    return;
  }

  v89[1] = v3;
  v90 = v21;
  v26 = [a3 selectionMode];
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v49 = sub_100004060();
      v50 = v90;
      (*(v7 + 16))(v17, v49, v90);
      v51 = sub_100004070();
      v52 = sub_100004130();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "A SelectionMode of .collections is not yet supported", v53, 2u);
      }

      (*(v7 + 8))(v17, v50);
      return;
    }

    if (v26 == 4)
    {
      v37 = sub_100004060();
      v38 = v90;
      (*(v7 + 16))(v14, v37, v90);
      v39 = sub_100004070();
      v40 = sub_100004150();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received result of type .modelObject(_) when selectionMode was .playbackArchive", v41, 2u);
      }

      (*(v7 + 8))(v14, v38);
      return;
    }

LABEL_46:
    v54 = sub_100004060();
    v55 = v90;
    (*(v7 + 16))(v11, v54, v90);
    v56 = a3;
    v57 = v7;
    v58 = sub_100004070();
    v59 = sub_100004140();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v55;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v92 = v62;
      *v61 = 136446210;
      v91 = [v56 selectionMode];
      type metadata accessor for MPMediaPickerSelectionMode();
      v63 = sub_1000040B0();
      v65 = sub_100002778(v63, v64, &v92);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unknown selectionMode = %{public}s", v61, 0xCu);
      sub_100003DC8(v62);

      (*(v57 + 8))(v11, v60);
    }

    else
    {

      (*(v7 + 8))(v11, v55);
    }

    return;
  }

  if (v26 < 2)
  {
    v92 = &_swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      v27 = sub_1000041F0();
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    v29 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v27 == v28)
      {
        v42 = objc_allocWithZone(MPMediaItemCollection);
        sub_100003F98(0, &qword_10000CB10, MPMediaItem_ptr);
        isa = sub_1000040F0().super.isa;

        v90 = [v42 initWithItems:isa];

        v44 = sub_10000215C();
        if (v44)
        {
          [v44 remoteMediaPickerDidPickMediaItems:v90];

          swift_unknownObjectRelease();
        }

        else
        {
          v66 = v90;
        }

        return;
      }

      if (v29)
      {
        v30 = sub_100002D20(v28, a1, &qword_10000CB38, MPModelObject_ptr);
      }

      else
      {
        if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v30 = *(a1 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (!v33)
      {
        break;
      }

      v34 = [objc_opt_self() genericObjectWithModelObject:v33];
      v35 = [objc_opt_self() itemFromModelObject:v34];

      ++v28;
      if (v35)
      {
LABEL_21:
        sub_1000040E0();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100004100();
        }

        sub_100004110();
        v28 = v32;
      }
    }

    [objc_allocWithZone(MPModelObjectMediaItem) initWithModelObject:v31];

    goto LABEL_21;
  }

  if (v26 != 2)
  {
    goto LABEL_46;
  }

  if ([a3 picksSingleCollectionEntity])
  {
    if (a1 >> 62)
    {
      if (sub_1000041F0())
      {
        goto LABEL_38;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v45 = sub_100002D20(0, a1, &qword_10000CB38, MPModelObject_ptr);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v45 = *(a1 + 32);
      }

      a1 = v45;
      v46 = v7;
      v47 = [v45 identifiers];
      v29 = [v47 library];

      if (v29)
      {
        v48 = [v29 persistentID];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (v29)
        {
          v92 = v48;
          v72 = MPMediaItemPropertyAlbumPersistentID;
          v29 = sub_100004210();
        }

        else
        {
          v72 = MPMediaItemPropertyAlbumPersistentID;
        }

LABEL_66:
        v73 = [objc_opt_self() predicateWithValue:v29 forProperty:v72];
        swift_unknownObjectRelease();

        sub_100003E14(&qword_10000CB18, &qword_100004878);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100004810;
        *(inited + 32) = v73;
        v75 = v73;
        sub_100002EF0(inited);
        swift_setDeallocating();
        v76 = *(inited + 16);
        swift_arrayDestroy();
        v77 = objc_allocWithZone(MPMediaQuery);
        sub_100003F98(0, &qword_10000CB20, MPMediaPredicate_ptr);
        sub_100003E5C();
        v78 = sub_100004120().super.isa;

        v79 = [v77 initWithFilterPredicates:v78];

        v80 = [objc_allocWithZone(MPMediaItemCollection) initWithItemsQuery:v79];
        if (v80)
        {
          v81 = v80;
          v82 = sub_10000215C();
          if (v82)
          {
            [v82 remoteMediaPickerDidPickMediaItems:v81];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        else
        {
        }

        return;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (v29)
        {
          v92 = v48;
          v72 = MPMediaPlaylistPropertyPersistentID;
          v29 = sub_100004210();
        }

        else
        {
LABEL_65:
          v72 = MPMediaPlaylistPropertyPersistentID;
        }

        goto LABEL_66;
      }

      goto LABEL_75;
    }

    a1 = 0;
    v46 = v7;
LABEL_75:
    v83 = sub_100004060();
    v84 = v90;
    (*(v46 + 16))(v23, v83, v90);
    v85 = v46;
    v86 = sub_100004070();
    v87 = sub_100004140();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "A non-playlist/album was picked while picksSingleCollectionEntity was true.", v88, 2u);
    }

    (*(v85 + 8))(v23, v84);
    return;
  }

  v67 = sub_100004060();
  v68 = v90;
  (*(v7 + 16))(v20, v67, v90);
  v69 = sub_100004070();
  v70 = sub_100004130();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "A SelectionMode of .singleCollection for non-legacy clients is not yet supported", v71, 2u);
  }

  (*(v7 + 8))(v20, v68);
}

uint64_t sub_100003DC8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003E14(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003E5C()
{
  result = qword_10000CB28;
  if (!qword_10000CB28)
  {
    sub_100003F98(255, &qword_10000CB20, MPMediaPredicate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CB28);
  }

  return result;
}

void sub_100003EC4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100003ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003F30(uint64_t a1)
{
  v2 = sub_100003E14(&qword_10000CB48, &unk_100004890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003F98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}