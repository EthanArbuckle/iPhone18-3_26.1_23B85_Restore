id sub_42469C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

uint64_t sub_424720()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.mediaPicker);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Canceled song selections.", v8, 2u);
  }

  v9 = v1 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  v12 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
  swift_beginAccess();
  *(v1 + v12) = _swiftEmptyArrayStorage;

  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_428E20(v4, v1 + v14);
  swift_endAccess();
  sub_4253F8();
  return sub_12E1C(v4, &unk_DEA510);
}

void sub_4249C0()
{
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.mediaPicker);
  v2 = v0;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems;
    swift_beginAccess();
    v7 = *&v2[v6];
    if (v7 >> 62)
    {
      v8 = sub_ABB060();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_0, v3, v4, "Confirmed song selections. Adding %{public}ld songs to the playlist", v5, 0xCu);
  }

  else
  {
  }

  sub_4221E4();
}

void *sub_424B64(void *a1)
{
  ObjectType = swift_getObjectType();
  if ((([*&v1[OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration] selectionMode] - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "viewControllers");
  sub_13C80(0, &qword_DE7500);
  v6 = sub_AB9760();

  if (v6 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = a1;
  v10 = sub_ABA790();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    v12 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem, &selRef_cancelTapped, 1);
    result = v11;
    *(v11 + 32) = v12;
    return result;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_424D1C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v42 - v6;
  v8 = [*(v1 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration) selectionMode];
  v9 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage;
  v10 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem, &selRef_doneTapped, 0);
  v42[0] = v8;
  v11 = (v8 - 1) & 0xFFFFFFFFFFFFFFFDLL;
  if (!v11)
  {
    v12 = v10;
    v13 = v10;
    sub_AB9730();
    if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v48 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v9 = v48;
    v10 = v12;
  }

  v45 = a1;

  v14 = sub_4252F4();
  v15 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(v1 + v15, v7, &unk_DEA510);
  v16 = type metadata accessor for PlaybackIntentDescriptor(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v42[1] = v17 + 48;
  v43 = v18;
  v19 = v18(v7, 1, v16);
  sub_12E1C(v7, &unk_DEA510);
  if (v19 != 1)
  {
    v20 = v14;
    sub_AB9730();
    if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v48 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v9 = v48;
  }

  v21 = sub_42469C(&OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem, &selRef_cancelTapped, 1);
  if (v11)
  {
    v22 = v1 + v15;
    v23 = v44;
    sub_15F84(v22, v44, &unk_DEA510);
    v24 = v43(v23, 1, v16);
    sub_12E1C(v23, &unk_DEA510);
    v25 = v45;
    if (v24 == 1)
    {
      v26 = v21;
      sub_AB9730();
      if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v48 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v9 = v48;
    }
  }

  else
  {
    v25 = v45;
  }

  v27 = [v25 navigationItem];
  v28 = sub_387A78();

  if (v28)
  {
    if (v11 && (v42[0] - 2) > 2)
    {
    }

    else
    {
      v29 = v28;
      sub_AB9730();
      if (*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v48 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v9 = v48;
    }
  }

  v30 = [v25 navigationItem];
  v31 = [v30 rightBarButtonItems];
  if (v31)
  {
    v32 = v31;
    sub_13C80(0, &unk_DF12E0);
    v33 = sub_AB9760();

    v47 = _swiftEmptyArrayStorage;
    if (v33 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v35 = 0;
      v45 = v33 & 0xC000000000000001;
      while (1)
      {
        if (v45)
        {
          v36 = sub_3600B8(v35, v33);
        }

        else
        {
          if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v46 = v36;
        __chkstk_darwin(v36);
        v42[-2] = &v46;

        v39 = sub_1B3D18(sub_428F70, &v42[-4], v9);

        if (v39)
        {
        }

        else
        {
          sub_ABAE90();
          sub_ABAED0();
          sub_ABAEE0();
          sub_ABAEA0();
        }

        ++v35;
        if (v38 == i)
        {
          v40 = v47;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v40 = _swiftEmptyArrayStorage;
LABEL_41:

    sub_19620(v40);
    return v48;
  }

  else
  {
  }

  return v9;
}

id sub_4252F4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_42539C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_41D3EC(v1);
  }
}

void sub_4253F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(v1 + v6, v5, &unk_DEA510);
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_12E1C(v5, &unk_DEA510);
  if (v6 != 1)
  {
    sub_13C80(0, &qword_DE8ED0);
    v15 = sub_ABA150();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = v1;
    OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(sub_428F68, v16);

    return;
  }

  v19.receiver = v1;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "viewControllers");
  sub_13C80(0, &qword_DE7500);
  v9 = sub_AB9760();

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  v10 = sub_ABB060();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_4:
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v13 = sub_35F8D4(v12, v9);
    goto LABEL_9;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v9 + 8 * v12 + 32);
LABEL_9:
    v14 = v13;

    sub_41D3EC(v14);

    return;
  }

  __break(1u);
}

void sub_42566C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  swift_beginAccess();
  sub_15F84(a1 + v6, v5, &unk_DEA510);
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_12E1C(v5, &unk_DEA510);
  if (v6 == 1)
  {
    return;
  }

  v16.receiver = a1;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "viewControllers");
  sub_13C80(0, &qword_DE7500);
  v9 = sub_AB9760();

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  v10 = sub_ABB060();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_4:
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v13 = sub_35F8D4(v12, v9);
    goto LABEL_9;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v9 + 8 * v12 + 32);
LABEL_9:
    v14 = v13;

    sub_41D3EC(v14);

    return;
  }

  __break(1u);
}

void sub_425898()
{
  sub_176DC(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate);

  sub_3A7960(*(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt), *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt + 8));

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor, &unk_DEA510);
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem);
}

uint64_t sub_425A80(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_425AF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_425B94;
}

void sub_425B94(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_425C1C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_ABB3C0();
  }

  return 1;
}

uint64_t sub_425C7C(uint64_t a1, uint64_t a2)
{
  sub_3F9D0(*(a2 + 200), *(a2 + 208));
  *(a2 + 200) = xmmword_AF82C0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v3 = sub_AB4E50();
  if (v3)
  {
    v4 = 0x72616D6B63656863;
  }

  else
  {
    v4 = 0x7269632E73756C70;
  }

  if (v3)
  {
    v5 = 0xE90000000000006BLL;
  }

  else
  {
    v5 = 0xEB00000000656C63;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_425D14()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.mediaPicker);
  __swift_project_value_buffer(v0, static Logger.mediaPicker);
  return static Logger.music(_:)();
}

uint64_t static Logger.mediaPicker.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.mediaPicker);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_425E28()
{
  v0._countAndFlagsBits = 0x412E72656B636950;
  v0._object = 0xEA00000000006464;
  v2 = AccessibilityIdentifier.init(name:)(v0);
  *ymmword_E716F8 = v2;
  return v2.rawValue._countAndFlagsBits;
}

unint64_t sub_425E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_425F34(v11, 0, 0, 1, a1, a2);
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
    sub_808B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_425F34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_426040(a5, a6);
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
    result = sub_ABAE60();
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

char *sub_426040(uint64_t a1, unint64_t a2)
{
  v3 = sub_42608C(a1, a2);
  sub_4261BC(&off_CEF7A8);
  return v3;
}

char *sub_42608C(uint64_t a1, unint64_t a2)
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

  v6 = sub_284478(v5, 0);
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

  result = sub_ABAE60();
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
        v10 = sub_AB94C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_284478(v10, 0);
        result = sub_ABAD70();
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

uint64_t sub_4261BC(uint64_t result)
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

  result = sub_4262A8(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

char *sub_4262A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E25170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

Swift::Int sub_42639C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDF8);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for JSBarButtonItem();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_13C80(0, &unk_DF12E0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_32740C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_426614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v8 = sub_ABB0B0();
    v25 = v8;
    sub_ABAF90();
    v9 = sub_ABAFC0();
    if (v9)
    {
      v10 = v9;
      sub_13C80(0, &qword_DE7500);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = sub_ABA780(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = sub_ABAFC0();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v8;
}

Swift::Int sub_426850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBC0);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      sub_13C80(0, &qword_DEA550);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_13C80(0, &qword_DED7C0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_328D3C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_426AD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEFA0);
    v2 = sub_ABB0B0();
    v19 = v2;
    sub_ABAF90();
    v3 = sub_ABAFC0();
    if (v3)
    {
      v4 = v3;
      sub_13C80(0, &qword_DEBCB0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_32C290(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_ABA780(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_ABAFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_426D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163DE0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_426D8C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_426D8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_4271D0(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_426E84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_426E84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = result;
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  while (2)
  {
    v5 = *(v4 + a3);
    v16 = a3;
LABEL_4:
    if ((v5 & 1) != 0 || (v6 = a3 - 1, !*(v4 + a3 - 1)))
    {
LABEL_26:
      a3 = v16 + 1;
      if (v16 + 1 != a2)
      {
        continue;
      }

      return result;
    }

    break;
  }

  v17 = a3;
  static ApplicationCapabilities.shared.getter(v18);
  v7 = v19;
  v20 = v19;

  sub_70C54(v18);
  if (!*(v7 + 16) || (sub_ABB5C0(), sub_AB93F0(), v8 = sub_ABB610(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_25:
    result = sub_12E1C(&v20, &unk_DFC570);
    goto LABEL_26;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v7 + 48) + v10);
    if (v12 > 4)
    {
      break;
    }

    if (v12 == 2)
    {
      goto LABEL_21;
    }

LABEL_18:
    v13 = sub_ABB3C0();

    if (v13)
    {
      goto LABEL_22;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (*(*(v7 + 48) + v10) <= 7u || v12 != 8 || 0x8000000000B5B970 != 0x8000000000B5B9B0)
  {
    goto LABEL_18;
  }

LABEL_21:

LABEL_22:
  result = sub_12E1C(&v20, &unk_DFC570);
  if (v4)
  {
    v5 = *(v4 + v17);
    *(v4 + v17) = *(v4 + v6);
    *(v4 + v6) = v5;
    a3 = v6;
    if (v6 == v14)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_4271D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_157:
    v4 = *v99;
    if (!*v99)
    {
      goto LABEL_198;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_159;
    }

    goto LABEL_192;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v104 = v6;
    v8 = (v6 + 1);
    v100 = v7;
    if ((v6 + 1) >= v5)
    {
      goto LABEL_66;
    }

    v9 = 0;
    v10 = *a3;
    v106 = *a3;
    if ((*(*a3 + v8) & 1) != 0 || !v6[v10])
    {
      goto LABEL_26;
    }

    static ApplicationCapabilities.shared.getter(v111);
    v11 = v112;
    v119 = v112;

    sub_70C54(v111);
    if (!*(v11 + 16))
    {
      v4 = v5;
LABEL_24:
      v9 = 0;
      goto LABEL_25;
    }

    v4 = v5;
    sub_ABB5C0();
    sub_AB93F0();
    v12 = sub_ABB610();
    v13 = -1 << *(v11 + 32);
    v14 = v12 & ~v13;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_24;
    }

    v15 = ~v13;
    while (1)
    {
      v16 = *(*(v11 + 48) + v14);
      if (v16 > 4)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = 0x8000000000B5B970;
        goto LABEL_19;
      }

LABEL_20:
      v9 = sub_ABB3C0();

      if ((v9 & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    if (*(*(v11 + 48) + v14) <= 7u || v16 != 8)
    {
      goto LABEL_20;
    }

    v17 = 0x8000000000B5B9B0;
LABEL_19:
    if (0x8000000000B5B970 != v17)
    {
      goto LABEL_20;
    }

    v9 = 1;
LABEL_25:
    result = sub_12E1C(&v119, &unk_DFC570);
    v5 = v4;
    v10 = v106;
LABEL_26:
    v18 = v104 + 2;
    if ((v104 + 2) >= v5)
    {
LABEL_56:
      v8 = v18;
      if ((v9 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_57:
      v26 = v104;
      if (v8 < v104)
      {
        goto LABEL_189;
      }

      if (v104 < v8)
      {
        v27 = (v8 - 1);
        while (1)
        {
          if (v26 != v27)
          {
            v30 = *a3;
            if (!*a3)
            {
LABEL_195:
              __break(1u);
              goto LABEL_196;
            }

            v28 = v26[v30];
            v26[v30] = v27[v30];
            v27[v30] = v28;
          }

          if (++v26 >= v27--)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_66;
    }

    v102 = v5;
    while (2)
    {
      v19 = v8;
      v8 = v18;
      if ((v18[v10] & 1) != 0 || !*(v10 + v19))
      {
        if (v9)
        {
          goto LABEL_57;
        }

LABEL_29:
        v18 = (v8 + 1);
        if (v8 + 1 != v5)
        {
          continue;
        }

        v18 = v5;
        goto LABEL_56;
      }

      break;
    }

    static ApplicationCapabilities.shared.getter(v113);
    v20 = v114;
    v118[0] = v114;

    sub_70C54(v113);
    if (!*(v20 + 16))
    {
      result = sub_12E1C(v118, &unk_DFC570);
      if (v9)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    sub_ABB5C0();
    sub_AB93F0();
    v21 = sub_ABB610();
    v22 = -1 << *(v20 + 32);
    v23 = v21 & ~v22;
    if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      result = sub_12E1C(v118, &unk_DFC570);
      v7 = v100;
LABEL_50:
      v10 = v106;
      if (v9)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(v20 + 48) + v23);
      if (v25 > 4)
      {
        break;
      }

      if (v25 == 2)
      {
        goto LABEL_52;
      }

LABEL_44:
      v4 = sub_ABB3C0();

      if (v4)
      {
        goto LABEL_53;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        result = sub_12E1C(v118, &unk_DFC570);
        v7 = v100;
        v5 = v102;
        goto LABEL_50;
      }
    }

    if (*(*(v20 + 48) + v23) <= 7u || v25 != 8 || 0x8000000000B5B970 != 0x8000000000B5B9B0)
    {
      goto LABEL_44;
    }

LABEL_52:

LABEL_53:
    result = sub_12E1C(v118, &unk_DFC570);
    v7 = v100;
    v5 = v102;
    v10 = v106;
    if (v9)
    {
      goto LABEL_29;
    }

LABEL_66:
    v31 = a3[1];
    if (v8 >= v31)
    {
      goto LABEL_104;
    }

    if (__OFSUB__(v8, v104))
    {
      goto LABEL_188;
    }

    if (v8 - v104 >= a4)
    {
LABEL_104:
      if (v8 < v104)
      {
        goto LABEL_187;
      }

      goto LABEL_105;
    }

    v32 = &v104[a4];
    if (__OFADD__(v104, a4))
    {
      goto LABEL_190;
    }

    if (v32 >= v31)
    {
      v32 = a3[1];
    }

    if (v32 < v104)
    {
LABEL_191:
      __break(1u);
LABEL_192:
      result = sub_163DA4(v7);
      v7 = result;
LABEL_159:
      v91 = v7;
      v92 = (v7 + 16);
      v7 = *(v7 + 16);
      if (v7 >= 2)
      {
        while (*a3)
        {
          v93 = (v91 + 16 * v7);
          v94 = *v93;
          v95 = &v92[2 * v7];
          v96 = v95[1];
          sub_427F60((*a3 + *v93), (*a3 + *v95), *a3 + v96, v4);
          if (v110)
          {
          }

          if (v96 < v94)
          {
            goto LABEL_184;
          }

          if (v7 - 2 >= *v92)
          {
            goto LABEL_185;
          }

          *v93 = v94;
          v93[1] = v96;
          v97 = *v92 - v7;
          if (*v92 < v7)
          {
            goto LABEL_186;
          }

          v7 = *v92 - 1;
          result = memmove(v95, v95 + 2, 16 * v97);
          *v92 = v7;
          if (v7 <= 1)
          {
          }
        }

LABEL_196:
        __break(1u);
        break;
      }
    }

    if (v8 != v32)
    {
      v33 = *a3;
      v101 = v32;
      v103 = *a3;
      while (1)
      {
        v34 = *(v33 + v8);
        v35 = v8;
        v107 = v8;
        while (1)
        {
          if (v34)
          {
            goto LABEL_101;
          }

          v36 = (v35 - 1);
          if (!*(v33 + v35 - 1))
          {
            break;
          }

          static ApplicationCapabilities.shared.getter(v115);
          v37 = v116;
          v117 = v116;

          sub_70C54(v115);
          if (!*(v37 + 16) || (sub_ABB5C0(), sub_AB93F0(), v38 = sub_ABB610(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
          {
LABEL_100:
            sub_12E1C(&v117, &unk_DFC570);
            v8 = v107;
            v32 = v101;
            v33 = v103;
            goto LABEL_101;
          }

          v4 = ~v39;
          while (1)
          {
            v41 = *(*(v37 + 48) + v40);
            if (v41 <= 4)
            {
              if (v41 == 2)
              {
                break;
              }

              goto LABEL_92;
            }

            if (*(*(v37 + 48) + v40) > 7u && v41 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
            {
              break;
            }

LABEL_92:
            v42 = sub_ABB3C0();

            if (v42)
            {
              goto LABEL_96;
            }

            v40 = (v40 + 1) & v4;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_100;
            }
          }

LABEL_96:
          result = sub_12E1C(&v117, &unk_DFC570);
          v33 = v103;
          if (!v103)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v34 = *(v103 + v35);
          *(v103 + v35) = v36[v103];
          v36[v103] = v34;
          --v35;
          v43 = v36 == v104;
          v8 = v107;
          v32 = v101;
          if (v43)
          {
            goto LABEL_101;
          }
        }

        v8 = v107;
LABEL_101:
        if (++v8 == v32)
        {
          v8 = v32;
          v7 = v100;
          goto LABEL_104;
        }
      }
    }

    if (v8 < v104)
    {
      goto LABEL_187;
    }

LABEL_105:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_6A6C0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_6A6C0((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v4 = v7 + 32;
    v47 = (v7 + 32 + 16 * v45);
    *v47 = v104;
    v47[1] = v8;
    v105 = *v99;
    if (*v99)
    {
      v108 = v8;
      if (!v45)
      {
LABEL_3:
        v6 = v108;
        v5 = a3[1];
        if (v108 >= v5)
        {
          goto LABEL_157;
        }

        continue;
      }

      while (2)
      {
        v48 = v46 - 1;
        if (v46 >= 4)
        {
          v53 = v4 + 16 * v46;
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_172;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_173;
          }

          v60 = (v7 + 16 * v46);
          v62 = *v60;
          v61 = v60[1];
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_175;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_177;
          }

          if (v64 >= v56)
          {
            v82 = (v4 + 16 * v48);
            v84 = *v82;
            v83 = v82[1];
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_183;
            }

            if (v51 < v85)
            {
              v48 = v46 - 2;
            }
          }

          else
          {
LABEL_124:
            if (v52)
            {
              goto LABEL_174;
            }

            v65 = (v7 + 16 * v46);
            v67 = *v65;
            v66 = v65[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_176;
            }

            v71 = (v4 + 16 * v48);
            v73 = *v71;
            v72 = v71[1];
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_179;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_181;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_139;
            }

            if (v51 < v74)
            {
              v48 = v46 - 2;
            }
          }
        }

        else
        {
          if (v46 == 3)
          {
            v49 = *(v7 + 32);
            v50 = *(v7 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_124;
          }

          if (v46 < 2)
          {
            goto LABEL_182;
          }

          v75 = (v7 + 16 * v46);
          v77 = *v75;
          v76 = v75[1];
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_139:
          if (v70)
          {
            goto LABEL_178;
          }

          v78 = (v4 + 16 * v48);
          v80 = *v78;
          v79 = v78[1];
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_180;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }
        }

        if (v48 - 1 >= v46)
        {
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
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (!*a3)
        {
          __break(1u);
          goto LABEL_194;
        }

        v86 = v7;
        v87 = (v4 + 16 * (v48 - 1));
        v7 = *v87;
        v88 = (v4 + 16 * v48);
        v89 = v88[1];
        sub_427F60((*a3 + *v87), (*a3 + *v88), *a3 + v89, v105);
        if (v110)
        {
        }

        if (v89 < v7)
        {
          goto LABEL_169;
        }

        if (v48 > *(v86 + 16))
        {
          goto LABEL_170;
        }

        *v87 = v7;
        v87[1] = v89;
        v90 = *(v86 + 16);
        if (v48 >= v90)
        {
          goto LABEL_171;
        }

        v7 = v86;
        v110 = 0;
        v46 = v90 - 1;
        result = memmove((v4 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v86 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_427F60(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < (a3 - __dst))
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_78;
    }

    v35 = v5;
    v37 = &v4[v8];
LABEL_8:
    if ((*v6 & 1) != 0 || !*v4)
    {
      goto LABEL_25;
    }

    v11 = v6;
    v39 = v4;
    static ApplicationCapabilities.shared.getter(v41);
    v12 = v42;
    v43 = v42;

    sub_70C54(v41);
    if (!*(v12 + 16) || (sub_ABB5C0(), sub_AB93F0(), v13 = sub_ABB610(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
    {
LABEL_24:
      sub_12E1C(&v43, &unk_DFC570);
      v10 = v37;
      v4 = v39;
      v5 = v35;
      v6 = v11;
LABEL_25:
      v19 = v4 + 1;
      v11 = v4;
      v20 = v6;
      if (v7 < v4)
      {
        ++v4;
        goto LABEL_29;
      }

      ++v4;
      if (v7 >= v19)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v12 + 48) + v15);
      if (v17 <= 4)
      {
        if (v17 == 2)
        {
          goto LABEL_33;
        }
      }

      else if (*(*(v12 + 48) + v15) > 7u && v17 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
      {
LABEL_33:

LABEL_34:
        sub_12E1C(&v43, &unk_DFC570);
        v20 = v11 + 1;
        v4 = v39;
        if (v7 < v11)
        {
          v5 = v35;
          v10 = v37;
          goto LABEL_29;
        }

        v5 = v35;
        v10 = v37;
        if (v7 >= v20)
        {
LABEL_29:
          *v7 = *v11;
        }

LABEL_30:
        ++v7;
        if (v4 >= v10 || (v6 = v20, v20 >= v5))
        {
          v6 = v7;
          goto LABEL_78;
        }

        goto LABEL_8;
      }

      v18 = sub_ABB3C0();

      if (v18)
      {
        goto LABEL_34;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
    v40 = v4;
    while (1)
    {
      v21 = v6 - 1;
      v33 = v6 - 1;
      v34 = v6;
      while (1)
      {
        v22 = v5 - 1;
        if ((*(v10 - 1) & 1) != 0 || !*v21)
        {
          goto LABEL_64;
        }

        v36 = v5 - 1;
        v38 = v10;
        static ApplicationCapabilities.shared.getter(v41);
        v23 = v42;
        v43 = v42;

        sub_70C54(v41);
        if (*(v23 + 16))
        {
          sub_ABB5C0();
          sub_AB93F0();
          v24 = sub_ABB610();
          v25 = -1 << *(v23 + 32);
          v26 = v24 & ~v25;
          if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            break;
          }
        }

LABEL_63:
        sub_12E1C(&v43, &unk_DFC570);
        v10 = v38;
        v4 = v40;
        v6 = v34;
        v22 = v5 - 1;
        v21 = v33;
LABEL_64:
        v30 = v10 - 1;
        if (v5 < v10 || v22 >= v10)
        {
          *v22 = *v30;
        }

        --v10;
        v5 = v22;
        if (v30 <= v4)
        {
          v10 = v30;
          goto LABEL_78;
        }
      }

      v27 = ~v25;
      while (1)
      {
        v28 = *(*(v23 + 48) + v26);
        if (v28 <= 4)
        {
          if (v28 == 2)
          {
            break;
          }

          goto LABEL_61;
        }

        if (*(*(v23 + 48) + v26) > 7u && v28 == 8 && 0x8000000000B5B970 == 0x8000000000B5B9B0)
        {
          break;
        }

LABEL_61:
        v29 = sub_ABB3C0();

        if (v29)
        {
          goto LABEL_68;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_63;
        }
      }

LABEL_68:
      sub_12E1C(&v43, &unk_DFC570);
      v31 = v5-- >= v34;
      if (!v31 || v36 >= v34)
      {
        *v36 = *v33;
      }

      v10 = v38;
      v4 = v40;
      if (v38 > v40)
      {
        v6 = v33;
        if (v33 > v7)
        {
          continue;
        }
      }

      v6 = v33;
      break;
    }
  }

LABEL_78:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_4286D8(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, double))
{
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a6(a2, v10, a5, a3);
  }

  return result;
}

uint64_t sub_428774(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05F50);
  __chkstk_darwin(v18);
  v4 = &v17 - v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = sub_12E1C(v4, &qword_E05F50))
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(a1 + 48);
    v15 = sub_AB3820();
    (*(*(v15 - 8) + 16))(v4, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v4[*(v18 + 48)] = v16;

    v19(v4, v16);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_42893C(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 9) | (8 * v12);
    v14 = *(*(a1 + 56) + v13);
    v15 = *(*(a1 + 48) + v13);

    a2(&v15, v14);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *_s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v2);
  variable initialization expression of SymbolButton.Configuration.symbol(&v14);
  v22 = v16;
  v3 = UIFontTextStyleBody;
  sub_429A1C(&v22, type metadata accessor for TextStyle);
  v4 = *(v2 + 5);
  v23[4] = *(v2 + 4);
  v23[5] = v4;
  v23[6] = *(v2 + 6);
  v24 = *(v2 + 14);
  v5 = *(v2 + 1);
  v23[0] = *v2;
  v23[1] = v5;
  v6 = *(v2 + 3);
  v23[2] = *(v2 + 2);
  v23[3] = v6;
  sub_155A00(v23);
  *v2 = v14;
  *(v2 + 2) = v17;
  *(v2 + 3) = xmmword_B054A0;
  v7 = v19;
  v8 = v20;
  *(v2 + 4) = v18;
  *(v2 + 5) = v7;
  *(v2 + 2) = v15;
  *(v2 + 3) = v3;
  *(v2 + 6) = v8;
  *(v2 + 14) = v21;
  v9 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v10 = SymbolButton.init(configuration:handler:)(v2, 0, 0);
  v11 = SymbolButton.withProvider(_:)(sub_425C7C, 0);

  if (qword_DE6BB0 != -1)
  {
    swift_once();
  }

  v12 = UIView.withAccessibilityIdentifier(_:)(*ymmword_E716F8, *&ymmword_E716F8[8]);

  (*&stru_1A8.segname[swift_isaMask & *v12])(1);
  return v12;
}

uint64_t type metadata accessor for MediaPickerNavigationController()
{
  result = qword_E05EF8;
  if (!qword_E05EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_428CD0()
{
  sub_428DA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_428DA0()
{
  if (!qword_E05BC8)
  {
    type metadata accessor for PlaybackIntentDescriptor(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E05BC8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication31MediaPickerNavigationControllerC6PromptO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_428E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_428E90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_428EE8()
{

  return swift_deallocObject();
}

uint64_t sub_428F30()
{

  return swift_deallocObject();
}

uint64_t sub_4290B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.ResultContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_42911C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_4293F0()
{
  v0 = [objc_allocWithZone(MPMediaPickerConfiguration) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  [v0 setTypeIdentifiers:isa];

  [v0 setShowsCatalogContent:1];
  [v0 setSelectionMode:1];
  return v0;
}

void sub_4294E8()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_prompt);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___doneBarButtonItem) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  *(v0 + v2) = sub_96FE0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedItems) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_selectedPlaybackIntentDescriptor;
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController____lazy_storage___spinnerBarButtonItem) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_429608()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_DE7500);
  isa = sub_AB9740().super.isa;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "setViewControllers:", isa);

  v4 = OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_viewControllerBarButtonItemsRegistrations;
  swift_beginAccess();
  *&v0[v4] = _swiftEmptyDictionarySingleton;

  v25.receiver = v0;
  v25.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v25, "viewControllers");
  v6 = sub_AB9760();

  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v22 = v6 & 0xC000000000000001;
    v23 = v6;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v12 = sub_35F8D4(v8, v6);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(v6 + 8 * v8 + 32);
      }

      v11 = v12;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_41D3EC(v12);
      swift_beginAccess();
      v14 = sub_D1498(v11, *&v1[v4]);
      swift_endAccess();
      if (v14)
      {

        v11 = v14;
      }

      else
      {
        v6 = i;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = sub_AB3080();

        swift_beginAccess();
        v16 = *&v1[v4];
        if ((v16 & 0xC000000000000001) != 0)
        {
          if (v16 < 0)
          {
            v17 = *&v1[v4];
          }

          else
          {
            v17 = v16 & 0xFFFFFFFFFFFFFF8;
          }

          v18 = sub_ABAFA0();
          if (__OFADD__(v18, 1))
          {
            goto LABEL_21;
          }

          *&v1[v4] = sub_426614(v17, v18 + 1, &unk_DFEF90, &unk_AFA840, &type metadata accessor for NSKeyValueObservation, sub_328D50);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *&v1[v4];
        sub_92FE8(v15, v11, isUniquelyReferenced_nonNull_native);
        *&v1[v4] = v24;
        swift_endAccess();
        v9 = v22;
        v6 = v23;
        v10 = v21;
      }

      ++v8;
      if (v13 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

id sub_429938@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationItem];
  *a2 = result;
  return result;
}

uint64_t sub_429984()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4299D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_429A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_429B68(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = v62 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_personName];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize] = vdupq_n_s64(0x4049000000000000uLL);
  *&v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize] = vdupq_n_s64(0x404E000000000000uLL);
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets];
  *v13 = xmmword_B0EC40;
  *(v13 + 1) = xmmword_B0EC50;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets];
  __asm { FMOV            V1.2D, #12.0 }

  *v14 = xmmword_AFF7B0;
  *(v14 + 1) = _Q1;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  *v20 = sub_42A614();
  v20[1] = v21;
  v22 = type metadata accessor for PersonCell();
  v70.receiver = v4;
  v70.super_class = v22;
  v23 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  v24 = *&v23[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  v69 = &v23[OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents];
  v25 = v23;

  v26 = [v25 traitCollection];
  sub_42A7A8(v26, v24);

  sub_ABA670();
  v27 = sub_ABA680();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  sub_200394(v11);
  v28 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = v28[4];
  v67 = v28[5];
  v34 = v67;
  v68 = v33;
  v35 = &v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v66 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v65 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v64 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v63 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v62[2] = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v62[1] = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v35 = v29;
  *(v35 + 1) = v30;
  *(v35 + 2) = v31;
  *(v35 + 3) = v32;
  *(v35 + 4) = v33;
  *(v35 + 5) = v34;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  sub_2F1C8(v66, v65, v64, v63);
  v44 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v45 = *(v44 + 168);
  v71[0] = *(v44 + 152);
  v71[1] = v45;
  v71[2] = *(v44 + 184);
  *(v44 + 152) = v29;
  *(v44 + 160) = v30;
  *(v44 + 168) = v31;
  *(v44 + 176) = v32;
  v46 = v67;
  *(v44 + 184) = v68;
  *(v44 + 192) = v46;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  sub_75948(v71);
  sub_B2A40(v71);

  sub_42A2EC();
  v55 = v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v55 & 1) == 0)
  {
    [v25 setNeedsLayout];
  }

  v56 = *&v25[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v57 = *(v69 + 1);
  if (!(v57 >> 62))
  {
    v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
    if (v58)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    v61 = [v25 layer];

    [v61 setAllowsGroupOpacity:0];
    return;
  }

  v58 = sub_ABB060();
  if (!v58)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v58 >= 1)
  {

    for (i = 0; i != v58; ++i)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = sub_36003C(i, v57);
      }

      else
      {
        v60 = *(v57 + 8 * i + 32);
      }

      TextStackView.add(_:)(v60);
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_42A2EC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];
  if (v3 == &dword_0 + 2)
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize + 8];
    *v4 = v5;
    *(v4 + 1) = v6;
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v8 = *(v7 + 80);
    v9 = *(v7 + 88);
    *(v7 + 80) = v5;
    *(v7 + 88) = v6;
    sub_75614(v8, v9);
    v10 = OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets;
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize];
    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize + 8];
    *v4 = v11;
    *(v4 + 1) = v12;
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
    v14 = *(v13 + 80);
    v15 = *(v13 + 88);
    *(v13 + 80) = v11;
    *(v13 + 88) = v12;
    sub_75614(v14, v15);
    v10 = OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets;
  }

  v16 = &v1[v10];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  v21 = &v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v22 = *v21;
  v23 = *(v21 + 1);
  *v21 = v17;
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  v25 = v22;
  v26 = v23;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_42A454()
{
}

id sub_42A4AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PersonCell()
{
  result = qword_E05F88;
  if (!qword_E05F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42A614()
{
  sub_89F60();
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v9[0] = v1;
  *(&v9[0] + 1) = v4;
  v9[1] = xmmword_AF7C20;
  v10 = 0;
  v11 = 0;
  v12 = v0;
  v13 = 1;
  v14 = xmmword_B0EC60;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1701667182, 0xE400000000000000, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = v5;
  v15[0] = v1;
  v15[1] = v4;
  v16 = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v0;
  v20 = 1;
  v21 = xmmword_B0EC60;
  sub_2F118(v9, v8);

  sub_2F174(v15);
  return v5;
}

uint64_t sub_42A7A8(void *a1, _OWORD *a2)
{
  sub_89F60();
  v4 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  v9 = v7;
  v10 = v8;
  v11 = v4;
  v12 = [a1 horizontalSizeClass];
  v13 = [a1 preferredContentSizeCategory];
  v14 = sub_ABA330();

  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v16 = [a1 preferredContentSizeCategory];
    v17 = sub_ABA320();

    if (v17)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  if (v12 == &dword_0 + 2)
  {
    v18 = 26.0;
  }

  else
  {
    v18 = 20.0;
  }

  if (v12 == &dword_0 + 2)
  {
    v19 = 38.0;
  }

  else
  {
    v19 = 36.0;
  }

  *&v25 = v9;
  *(&v25 + 1) = v10;
  v26 = xmmword_AF7C20;
  v27 = 0uLL;
  *&v28 = v11;
  *(&v28 + 1) = v15;
  *&v29 = v19;
  *(&v29 + 1) = v18;
  swift_beginAccess();
  v20 = a2[5];
  v30[2] = a2[4];
  v30[3] = v20;
  v30[4] = a2[6];
  v21 = a2[3];
  v30[0] = a2[2];
  v30[1] = v21;
  v22 = v28;
  a2[4] = 0uLL;
  a2[5] = v22;
  a2[6] = v29;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  sub_2F118(&v25, v31);
  sub_2F174(v30);
  sub_2EB2A8();

  v31[0] = v9;
  v31[1] = v10;
  v32 = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v11;
  v36 = v15;
  v37 = v19;
  v38 = v18;
  return sub_2F174(v31);
}

double sub_42A9F8(void *a1)
{
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  v2 = sub_42A614();
  v4 = v3;
  sub_42A7A8(a1, v2);
  sub_2F48A4(v4, a1, 0, 0);

  return 0.0;
}

void sub_42AB1C()
{
  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
    if (v3)
    {
      v4 = v2;
      v5 = *(v2 + 16);
      v6 = v3;
      v7 = v5(ObjectType, v4);
      swift_beginAccess();
      v8 = *(v7 + 120);
      v9 = *(v7 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      if (v9)
      {
        v10 = (*(v4 + 24))(ObjectType, v4);
        [v0 effectiveUserInterfaceLayoutDirection];
        v11 = sub_3A204();
        [v11 bounds];

        if (*(*&v6[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
        {
          sub_37C7B0(v6, v7);
          [v6 frame];
          CGRectGetWidth(v13);
        }

        v12 = v10;
        sub_ABA490();
        [v12 setFrame:?];
      }

      else
      {
        [v6 setHidden:1];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_42AD6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = *&v1[*a1];
    if (v5)
    {
      v6 = v4;
      v7 = *(v4 + 16);
      v8 = v5;
      v9 = v7(ObjectType, v6);
      swift_beginAccess();
      v10 = *(v9 + 120);
      v11 = *(v9 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v10) & 0xF;
      }

      if (v11)
      {
        v12 = (*(v6 + 24))(ObjectType, v6);
        [v1 effectiveUserInterfaceLayoutDirection];
        v13 = [v1 contentView];
        if (!v13)
        {
          v13 = v1;
        }

        v14 = v13;
        [v13 bounds];

        if (*(*&v8[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
        {
          sub_37C7B0(v8, v9);
          [v8 frame];
          CGRectGetWidth(v16);
        }

        v15 = v12;
        sub_ABA490();
        [v15 setFrame:?];
      }

      else
      {
        [v8 setHidden:1];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_42AFA4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents];
  *v12 = sub_42C174();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for RankedMusicVideoVerticalCell();
  v16 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupOpacity:0];

  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  if (qword_DE6BB8 != -1)
  {
    swift_once();
  }

  v19 = xmmword_E05F98;
  v20 = qword_E05FA8;
  v21 = qword_E05FB0;
  v22 = &v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v22 = v19;
  *(v22 + 2) = v20;
  *(v22 + 3) = v21;
  type metadata accessor for UIEdgeInsets(0);
  v23 = &v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v24 = *(v22 + 1);
    *v23 = *v22;
    *(v23 + 1) = v24;
    sub_35D498();
    [v16 setNeedsLayout];
  }

  v25 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v16[v25] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v26 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v27 = *(v26 + 144);
  *(v26 + 144) = 2;
  if (v27 != 2)
  {
    v28 = *(v26 + 112);

    v29 = [v28 image];
    sub_788B8(v29);
  }

  v30 = *&v16[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v31 = *&v16[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 24];
  if (!(v31 >> 62))
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_19:

    return;
  }

  v32 = sub_ABB060();
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v32 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v32; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = sub_36003C(i, v31);
      }

      else
      {
        v34 = *(v31 + 8 * i + 32);
      }

      TextStackView.add(_:)(v34);
    }
  }
}

id sub_42B3B0(id result, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank];
  v5 = v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank + 8];
  *v3 = result;
  v3[8] = a2 & 1;
  if ((a2 & 1) == 0)
  {
    if (v5 & 1 | (v4 != result))
    {
      v6 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents];
      v7 = v2;
      v8 = sub_ABB330();
      v10 = v9;
      swift_beginAccess();
      *(v6 + 112) = v8;
      *(v6 + 120) = v10;

      sub_2EB704();
      return [v7 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_42B4A8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_42B5C0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_42B6C0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_42B754(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_42B86C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_42B940(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView);
  *(v1 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView) = a1;
  v8 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle];
    *&v4[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle] = UIFontTextStyleSubheadline;
    v6 = v4;
    v7 = UIFontTextStyleSubheadline;
    sub_4CAFD0();
  }
}

void sub_42B9E0()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for RankedMusicVideoVerticalCell();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v0 traitCollection];
  [v11 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  swift_beginAccess();
  v31 = v8;
  v12 = sub_76368(0, 0, 1);
  v14 = v13;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  CGRectGetMinY(v33);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v12;
  v34.size.height = v14;
  CGRectGetHeight(v34);
  v30 = v14;
  sub_ABA470();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_ABA490();
  if (sub_76B28(v23, v24, v25, v26))
  {
    v35.origin.x = v16;
    v35.origin.y = v18;
    v35.size.width = v20;
    v35.size.height = v22;
    CGRectGetMaxY(v35);
    v36.origin.x = v4;
    v36.origin.y = v6;
    v36.size.width = v31;
    v36.size.height = v10;
    CGRectGetMinY(v36);
  }

  v27 = *&v0[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView];
  if (v27 && *(*&v27[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v28 = v27;
    [v28 frame];
    CGRectGetWidth(v37);
  }

  v29 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v29 setFrame:?];

  sub_42AD6C(&OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView);
}

__n128 sub_42BE1C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E05F98 = *&UIEdgeInsetsZero.top;
  *&qword_E05FA8 = v1;
  return result;
}

uint64_t sub_42BEFC()
{
}

id sub_42BF94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RankedMusicVideoVerticalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RankedMusicVideoVerticalCell()
{
  result = qword_E05FE8;
  if (!qword_E05FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_42C144()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_42C174()
{
  sub_89F60();
  v0 = sub_ABA580();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v40 = 0;
  v41 = 0;
  v42 = v0;
  v43 = 1;
  v44 = xmmword_B00180;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1802396018, 0xE400000000000000, v39);
  v6 = objc_opt_self();
  v7 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v59);
  v24 = v5;

  v23 = v0;
  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v9 = [v2 clearColor];
  v26 = v1;
  *&v33[0] = v1;
  *(&v33[0] + 1) = v9;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v8;
  v37 = 2;
  v38 = xmmword_AF7C30;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v11 = v7;
  v20 = v9;
  v19 = v8;
  sub_2F118(v33, v59);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v13 = qword_E718C8;
  v14 = qword_E718C8;
  v15 = [v2 clearColor];
  *&v27[0] = v13;
  *(&v27[0] + 1) = v15;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_AF7C40;
  swift_allocObject();
  v16 = TextStackView.Component.init(identifier:labelProperties:)(0x614E747369747261, 0xEA0000000000656DLL, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF82E0;
  *(v17 + 32) = v24;
  *(v17 + 40) = v10;
  *(v17 + 48) = v16;
  sub_2F118(v27, v59);

  v45[0] = v13;
  v45[1] = v15;
  v46 = xmmword_AF7C20;
  v47 = 0;
  v48 = 0;
  v49 = v12;
  v50 = 1;
  v51 = xmmword_AF7C40;
  sub_2F174(v45);
  v52[0] = v26;
  v52[1] = v9;
  v53 = xmmword_AF7C20;
  v54 = 0;
  v55 = 0;
  v56 = v8;
  v57 = 2;
  v58 = xmmword_AF7C30;
  sub_2F174(v52);
  v59[0] = v26;
  v59[1] = v25;
  v60 = xmmword_AF7C20;
  v61 = 0;
  v62 = 0;
  v63 = v23;
  v64 = 1;
  v65 = xmmword_B00180;
  sub_2F174(v59);
  return v24;
}

void sub_42C5B4()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_rank;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_artistName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_textComponents);
  *v4 = sub_42C174();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

void sub_42C674()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71760);
    v5 = v3;
    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136446210;
      v10 = v5;
      v11 = [v10 description];
      v12 = sub_AB92A0();
      v14 = v13;

      v15 = sub_425E68(v12, v14, &v20);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_0, v6, v7, "Performing pop onto navigation controller=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    oslog = [v5 popViewControllerAnimated:1];
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E71760);
    oslog = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, oslog, v17, "Failed to pop navigation", v18, 2u);
    }
  }
}

void sub_42C90C()
{
  v1 = *(v0 + 16);

  v3 = v1(v2);

  if (v3)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E71760);
    v18 = v3;
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136446210;
      v9 = v18;
      v10 = [v9 description];
      v11 = sub_AB92A0();
      v13 = v12;

      v14 = sub_425E68(v11, v13, &v19);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_0, v5, v6, "Performing pop to root onto navigation controller=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E71760);
    v18 = sub_AB4BA0();
    v16 = sub_AB9F40();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v18, v16, "Failed to pop to root", v17, 2u);
    }
  }
}

void sub_42CBA0(void *a1, uint64_t a2)
{
  v5 = sub_AB5600();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v79 = &v73 - v11;
  __chkstk_darwin(v10);
  v13 = &v73 - v12;
  v14 = *(v2 + 16);

  v16 = v14(v15);

  if (v16)
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_E71760);
    v18 = *(v6 + 16);
    v18(v13, a2, v5);
    v19 = a1;
    v20 = v16;
    v21 = sub_AB4BA0();
    v22 = sub_AB9F50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v78 = a2;
      v24 = v23;
      v76 = swift_slowAlloc();
      v80 = v76;
      *v24 = 136446722;
      v25 = v19;
      v75 = v21;
      v26 = v5;
      v27 = v25;
      v28 = [v25 description];
      v73 = v20;
      v29 = v28;
      v30 = sub_AB92A0();
      v74 = v22;
      v31 = v30;
      v77 = v19;
      v33 = v32;

      v34 = sub_425E68(v31, v33, &v80);

      *(v24 + 4) = v34;
      *(v24 + 12) = 2082;
      v18(v79, v13, v26);
      v35 = sub_AB9350();
      v37 = v36;
      (*(v6 + 8))(v13, v26);
      v38 = sub_425E68(v35, v37, &v80);

      *(v24 + 14) = v38;
      *(v24 + 22) = 2082;
      v39 = v73;
      v40 = v73;
      v41 = [v40 description];
      v42 = sub_AB92A0();
      v44 = v43;

      v45 = sub_425E68(v42, v44, &v80);
      v19 = v77;

      *(v24 + 24) = v45;
      v46 = v75;
      _os_log_impl(&dword_0, v75, v74, "Pushing to viewController=%{public}s with playActivityFields=%{public}s onto navigation controller=%{public}s", v24, 0x20u);
      swift_arrayDestroy();

      v47 = v39;
    }

    else
    {
      (*(v6 + 8))(v13, v5);

      v47 = v20;
    }

    sub_AB55E0();
    v67 = sub_AB9260();

    [v19 setPlayActivityFeatureName:v67];

    v68 = sub_AB55F0();
    isa = 0;
    if (v69 >> 60 != 15)
    {
      v71 = v68;
      v72 = v69;
      isa = sub_AB3250().super.isa;
      sub_466A4(v71, v72);
    }

    [v19 setPlayActivityForwardedRecommendationData:isa];

    [v47 pushViewController:v19 animated:1];
  }

  else
  {
    if (qword_DE6BC0 != -1)
    {
      swift_once();
    }

    v48 = sub_AB4BC0();
    __swift_project_value_buffer(v48, qword_E71760);
    v49 = *(v6 + 16);
    v49(v9, a2, v5);
    v50 = a1;
    v51 = sub_AB4BA0();
    v52 = sub_AB9F40();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v77 = v51;
      v54 = v53;
      v78 = swift_slowAlloc();
      v80 = v78;
      *v54 = 136446466;
      v55 = v50;
      v56 = [v55 description];
      v57 = sub_AB92A0();
      LODWORD(v76) = v52;
      v58 = v57;
      v60 = v59;

      v61 = sub_425E68(v58, v60, &v80);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2082;
      v49(v79, v9, v5);
      v62 = sub_AB9350();
      v64 = v63;
      (*(v6 + 8))(v9, v5);
      v65 = sub_425E68(v62, v64, &v80);

      *(v54 + 14) = v65;
      v66 = v77;
      _os_log_impl(&dword_0, v77, v76, "Failed to push to viewController=%{public}s with playActivityFields=%{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v6 + 8))(v9, v5);
    }
  }
}

void *sub_42D240()
{
  v1 = sub_AB5600();
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);

  v7 = v5(v6);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 viewControllers];
    sub_72C6C();
    v10 = sub_AB9760();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_17:

      return _swiftEmptyArrayStorage;
    }
  }

  v11 = sub_ABB060();
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v28 = _swiftEmptyArrayStorage;
  result = sub_6D870(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v28;
    v22[1] = v27 + 32;
    v23 = v10 & 0xC000000000000001;
    v24 = v11;
    v25 = v10;
    do
    {
      if (v23)
      {
        v15 = sub_35F8D4(v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 playActivityFeatureName];
      sub_AB92A0();
      v18 = [v16 playActivityForwardedRecommendationData];
      if (v18)
      {
        v19 = v18;
        sub_AB3260();
      }

      sub_AB55D0();

      v28 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_6D870(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      ++v13;
      v14[2] = v21 + 1;
      (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v4, v26);
      v10 = v25;
    }

    while (v24 != v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_42D5AC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71760);
  __swift_project_value_buffer(v0, qword_E71760);
  return static Logger.music(_:)();
}

void sub_42D61C(uint64_t a1)
{
  *(a1 + qword_E060E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a1 + qword_E060F0) = 0;
  *(a1 + qword_E06100) = 0x4000;
  *(a1 + qword_E06108) = 0;
  sub_ABAFD0();
  __break(1u);
}

void *sub_42D6C0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  result = *&v0[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setAllowsMultipleSelectionDuringEditing:1];
  [v0 loadViewIfNeeded];
  result = *&v0[v2];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [result setAllowsSelectionDuringEditing:1];
  [v0 loadViewIfNeeded];
  result = *&v0[v2];
  if (result)
  {
    [result setDragInteractionEnabled:0];
    v4 = *JSOrderedPlaylistSelector.itemsDidChangeNotification.unsafeMutableAddressor();
    v5 = *&v0[qword_E060F8];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v7 = v4;
    v8 = v5;
    *&v1[qword_E06108] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v7, v5, 1, 1, sub_42FBF8, v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_42D83C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[qword_E060F0];
    Strong[qword_E060F0] = 1;
    if (v1 == 1)
    {
    }

    else
    {
      v2 = Strong;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        sub_42F818(v3);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_42D8DC(uint64_t result)
{
  v2 = *(v1 + qword_E060F0);
  *(v1 + qword_E060F0) = result;
  if (v2 != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_42F818(result);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_42D950(void *a1)
{
  v1 = a1;
  sub_42D6C0();
}

uint64_t sub_42D998(char a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  v4 = *&v1[qword_DFE2F0];
  if (v4)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = *(result + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_42FC28;
      *(v7 + 24) = v6;
      v12[4] = sub_15AB68;
      v12[5] = v7;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_48D4FC;
      v12[3] = &block_descriptor_72_0;
      v8 = _Block_copy(v12);
      v9 = v4;
      v10 = v1;

      [v5 enumerateItemsUsingBlock:v8];
      _Block_release(v8);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_42DB58(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_42D998(a3);
}

void sub_42DBAC(char a1, char a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "setEditing:animated:", a1 & 1, a2 & 1);
  [v2 loadViewIfNeeded];
  v5 = *&v2[qword_DFE2F8];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v6 visibleCells];
  sub_13C80(0, &qword_DFE230);
  v8 = sub_AB9760();

  if (v8 >> 62)
  {
    v9 = sub_ABB060();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_360438(i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      [v11 setNeedsUpdateConfiguration];
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_42DD0C(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_42DBAC(a3, a4);
}

void sub_42DD68()
{
  v1 = *(v0 + qword_E060F0);
  *(v0 + qword_E060F0) = 0;
  if (v1 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_42F818(Strong);

      swift_unknownObjectRelease();
    }
  }
}

void sub_42DDD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85E0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E060E0 = v11;
}

void sub_42DF30()
{
  v1 = *&v0[qword_E060F8];
  v2 = type metadata accessor for JSOrderedPlaylistSelectorModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector] = v1;
  v25.receiver = v3;
  v25.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v25, "init");
  sub_13C80(0, &unk_DEDE10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF4EC0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v13;
  if (qword_DE6BC8 != -1)
  {
    swift_once();
  }

  v14 = qword_E060E0;
  *(inited + 48) = qword_E060E0;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v15;
  *(inited + 72) = v14;
  v16 = v14;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v19 = sub_AB8FD0().super.isa;

  v20 = [v17 initWithProperties:isa relationships:v19];

  [v8 setItemProperties:v20];
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  v24[4] = sub_42F61C;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_151E0;
  v24[3] = &block_descriptor_138;
  v22 = _Block_copy(v24);
  v23 = v0;

  [v8 performWithResponseHandler:v22];
  _Block_release(v22);
}

uint64_t sub_42E2A0(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_42F6B4, v3);
}

void sub_42E370(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = a2;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v4;
    sub_3B4724(v5);
  }
}

void sub_42E40C()
{
  v1 = *&v0[qword_DFE2F0];
  if (v1)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_42FAA4;
      *(v5 + 24) = v4;
      v10[4] = sub_5794C;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_48D4FC;
      v10[3] = &block_descriptor_61_0;
      v6 = _Block_copy(v10);
      v7 = v1;
      v8 = v0;

      [v3 enumerateItemsUsingBlock:v6];
      _Block_release(v6);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

id sub_42E5A8(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result;
  [result music_inheritedLayoutInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = UIEdgeInsetsInsetRect_1(v6, v8, v10, v12, v15, v17, v19, v21);
  v23 = [v1 traitCollection];
  sub_14CD64(v23, *&v1[qword_E06100], v22);
  v25 = v24;

  return [a1 setRowHeight:v25];
}

uint64_t sub_42E6F4(uint64_t result, void *a2)
{
  v3 = *(v2 + qword_DFE2F0);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v64 = v2;
  v6 = *(result + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
  v7 = v3;
  isa = sub_AB3770().super.isa;
  [v6 itemAtIndexPath:isa];

  type metadata accessor for JSOrderedPlaylistSelectorItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v63 = v7;
    v11 = (v9 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText);
    swift_beginAccess();
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v14 = v12;
LABEL_14:
      v20 = &v5[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v21 = *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v22 = *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
      *v20 = v13;
      v20[1] = v14;

      sub_142858(v21, v22);

      v23 = (v10 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText);
      swift_beginAccess();
      if (v23[1])
      {
        v24 = *v23;
        v25 = v23[1];
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      swift_bridgeObjectRetain_n();

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v62 = v10;
      if (!v26)
      {
        v27 = [a2 playlist];
        if (v27)
        {
          v28 = v5;
          v29 = v27;
          v30 = sub_1506B4();
          v32 = v31;

          if (v32)
          {

            v24 = v30;
            v25 = v32;
          }

          v5 = v28;
        }
      }

      v33 = &v5[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v34 = *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v35 = *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v33 = v24;
      v33[1] = v25;
      sub_142A70(v34, v35);

      v36 = [a2 playlist];
      v37 = v36;
      if (v36)
      {
        v36 = sub_13C80(0, &unk_DE8EA0);
        v38 = &off_D17A48;
      }

      else
      {
        v38 = 0;
        *(&v75 + 1) = 0;
        *&v76 = 0;
      }

      *&v75 = v37;
      *(&v76 + 1) = v36;
      *&v77 = v38;
      sub_15F84(&v75, &v67, &unk_DE9C60);
      v39 = v69;
      if (v69)
      {
        v40 = v70;
        __swift_project_boxed_opaque_existential_1(&v67, v69);
        v41 = sub_4CAA30(&off_CEFDE8, v39, v40);
        __swift_destroy_boxed_opaque_existential_0(&v67);
      }

      else
      {
        sub_12E1C(&v67, &unk_DE9C60);
        v41 = _swiftEmptyArrayStorage;
      }

      sub_178218(v41);

      sub_12E1C(&v75, &unk_DE9C60);
      v42 = *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
      *&v5[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = *(v64 + qword_E06100);
      sub_143510(v42);
      v43 = [a2 playlist];
      v44 = v5;
      if (v43)
      {
        v45 = v43;
        v46 = [v43 type];
      }

      else
      {
        v46 = 0;
      }

      static Artwork.Placeholder.playlist(ofType:)(v46, &v67);
      v47 = v67;
      v49 = v68;
      v48 = v69;
      v50 = v70;
      v51 = v71;
      v73 = *(&v67 + 1);
      v74 = v67;
      v72 = v68;
      v52 = &v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
      v60 = *&v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
      v61 = *&v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
      v58 = *&v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
      v59 = *&v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
      sub_15F84(&v74, &v75, &unk_DFDE40);
      sub_15F84(&v73, &v75, &unk_DFDE40);
      sub_15F84(&v72, &v75, &unk_E00030);
      *v52 = v47;
      *(v52 + 2) = v49;
      *(v52 + 3) = v48;
      *(v52 + 4) = v50;
      *(v52 + 5) = v51;
      v65 = v48;
      sub_2F1C8(v61, v60, v59, v58);
      v53 = *&v44[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
      v54 = *(v53 + 168);
      v75 = *(v53 + 152);
      v76 = v54;
      v77 = *(v53 + 184);
      *(v53 + 152) = v47;
      *(v53 + 168) = v49;
      *(v53 + 176) = v48;
      *(v53 + 184) = v50;
      *(v53 + 192) = v51;
      sub_15F84(&v74, v66, &unk_DFDE40);
      sub_15F84(&v73, v66, &unk_DFDE40);
      sub_15F84(&v72, v66, &unk_E00030);
      v55 = v65;
      sub_15F84(&v74, v66, &unk_DFDE40);
      sub_15F84(&v73, v66, &unk_DFDE40);
      sub_15F84(&v72, v66, &unk_E00030);
      v56 = v55;
      sub_75948(&v75);
      sub_12E1C(&v75, &unk_DF8690);
      sub_12E1C(&v74, &unk_DFDE40);
      sub_12E1C(&v73, &unk_DFDE40);
      sub_12E1C(&v72, &unk_E00030);

      sub_12E1C(&v74, &unk_DFDE40);
      sub_12E1C(&v73, &unk_DFDE40);
      sub_12E1C(&v72, &unk_E00030);

      v57 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
      swift_beginAccess();
      [v44 setSelected:*(v62 + v57)];

      return swift_unknownObjectRelease();
    }

    v15 = [a2 playlist];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 name];
      if (v17)
      {
        v18 = v17;
        v13 = sub_AB92A0();
        v14 = v19;

        goto LABEL_14;
      }
    }

    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_14;
  }

  return swift_unknownObjectRelease();
}

void sub_42EDA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_42FABC();

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_42EEB4()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 1;
}

void sub_42EF80(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v23 = sub_AB3820();
  v8 = *(v23 - 8);
  v9 = __chkstk_darwin(v23);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  sub_AB3790();
  sub_AB3790();
  v22 = a4;
  v14 = a5;
  v15 = a1;
  v24 = JSOrderedPlaylistSelector.items.getter();
  v16 = sub_AB37E0();
  v17 = sub_AB37E0();
  v18 = sub_2E5F34(v16);
  if (!(v24 >> 62))
  {
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (sub_ABB060() < v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v17 & 0x8000000000000000) == 0)
  {
    sub_1AFC54(v17, v17, v18);

    JSOrderedPlaylistSelector.items.setter(v24);
    sub_42D8DC(1);
    v19 = *(v8 + 8);
    v20 = v23;
    v19(v11, v23);
    v19(v13, v20);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_42F188(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  type metadata accessor for JSOrderedPlaylistSelectorItem();
  swift_unknownObjectRetain();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
    v7 = v5;
    swift_beginAccess();
    if (*(v7 + v6) == 1)
    {
      [a4 loadViewIfNeeded];
      v8 = *&a4[qword_DFE2F8];
      if (v8)
      {
        v9 = v8;
        isa = sub_AB3770().super.isa;
        [v9 selectItemAtIndexPath:isa animated:0 scrollPosition:0];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_42F2E0()
{
  sub_176DC(v0 + qword_E060E8);
}

uint64_t sub_42F330(uint64_t a1)
{
  sub_176DC(a1 + qword_E060E8);
}

uint64_t type metadata accessor for JSOrderedPlaylistSelectorViewController()
{
  result = qword_E06138;
  if (!qword_E06138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_42F484(id *a1)
{
  result = [*a1 playlist];
  if (result)
  {
    v2 = result;
    v3 = MPModelPlaylist.preferredArtworkCatalog.getter();

    return v3;
  }

  return result;
}

id sub_42F4D0()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  [v0 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v0 _setFloatingElementKinds:isa];

  sub_42E5A8(v0);
  return v0;
}

uint64_t sub_42F5E4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_42F63C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_42F674()
{

  return swift_deallocObject();
}

id sub_42F6BC(char *a1, id a2)
{
  v3 = [a2 playlist];
  if (v3)
  {
    v4 = v3;
    v5 = MPModelPlaylist.preferredArtworkCatalog.getter();
  }

  else
  {
    v5 = 0;
  }

  v6 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v5;
  v7 = v5;

  sub_74EA4(v5);
  result = [a1 tableViewCell];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  [result _setDrawsSeparatorAtTopOfSection:1];

  result = [a1 tableViewCell];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result _setShouldHaveFullLengthTopSeparator:1];

  result = [a1 tableViewCell];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = result;
  [result _setDrawsTopSeparatorDuringReordering:1];

  return [a1 setShowsReorderControl:1];
}

void sub_42F818(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_onboardingVerticalStack];
  v3 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
  swift_beginAccess();
  if (*(v2 + v3) == 1 && (a1[OBJC_IVAR____TtC16MusicApplication45JSSocialOnboardingVerticalStackViewController_isUpdating] & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [a1 parentViewController];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = v6;
        v8 = [v7 navigationItem];

        v6 = [v7 parentViewController];
        v4 = v8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }
    }

    v8 = v4;
LABEL_10:
    v9 = [v8 rightBarButtonItem];

    if (v9)
    {
      v10 = *&a1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
      if (v10 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
      {

        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = sub_35F8D4(v12, v10);
          }

          else
          {
            if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          swift_getObjectType();
          v16 = swift_conformsToProtocol2();
          if (v16 && v14)
          {
            v17 = v16;
            ObjectType = swift_getObjectType();
            LOBYTE(v17) = (*(v17 + 8))(ObjectType, v17);

            if (v17)
            {
              v19 = 1;
LABEL_26:

              goto LABEL_31;
            }
          }

          else
          {
          }

          ++v12;
          if (v15 == i)
          {
            v19 = 0;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

      v19 = 0;
LABEL_31:
      [v9 setEnabled:v19];
    }
  }
}

void sub_42FABC()
{
  v1 = *(v0 + qword_DFE2F0);
  if (v1)
  {
    type metadata accessor for JSOrderedPlaylistSelectorModelResponse();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults);
      v4 = v1;
      isa = sub_AB3770().super.isa;
      [v3 itemAtIndexPath:isa];

      type metadata accessor for JSOrderedPlaylistSelectorItem();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
        swift_beginAccess();
        JSOrderedPlaylistSelectorItem.isSelected.setter((*(v7 + v8) & 1) == 0);
        sub_42D8DC(1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_42FC34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong contentScrollViewForEdge:1];

      if (v4)
      {
        [v4 setKeyboardDismissMode:1];
      }
    }

    if (([*(v1 + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != &dword_4 + 2)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        v8 = v7;
        if (v7)
        {
          v9 = [v7 navigationItem];

          v10 = [v9 largeTitleDisplayMode];
        }

        else
        {
          v10 = 0;
        }

        *(v1 + 16) = v10;
        *(v1 + 24) = v8 == 0;
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          v13 = [v11 navigationItem];

          [v13 setLargeTitleDisplayMode:2];
        }
      }
    }

    v14 = *(v1 + 72);
    if (v14)
    {

      v14(v1);
      sub_17654(v14);
    }
  }

  return result;
}

uint64_t sub_42FE04(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 88);
    if (v3)
    {
      sub_307CC(*(result + 88));

      v4 = a1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text;
      v5 = *(a1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
      v6 = *(v4 + 8);

      v3(v5, v6);

      return sub_17654(v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_42FEC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (([*(result + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if (v3 != &dword_4 + 2 && (*(v1 + 24) & 1) == 0)
      {
        v4 = *(v1 + 16);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = [Strong navigationItem];

          [v7 setLargeTitleDisplayMode:v4];
        }
      }
    }

    v8 = *(v1 + 88);
    if (v8)
    {

      v8(0, 0);
      sub_17654(v8);
    }

    v9 = *(v1 + 104);
    if (v9)
    {

      v9(v1);
      sub_17654(v9);
    }
  }

  return result;
}

double sub_43001C()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  *&v5 = sub_AB9320();
  *(&v5 + 1) = v2;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11[0] = v5;
  v11[1] = v2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  sub_576EC(&v5, &v4);
  sub_57748(v11);
  xmmword_E71798 = v7;
  xmmword_E717A8 = v8;
  xmmword_E717B8 = v9;
  qword_E717C8 = v10;
  result = *&v5;
  xmmword_E71778 = v5;
  xmmword_E71788 = v6;
  return result;
}

uint64_t sub_43018C(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v5 = a1;
  v5[1] = a2;

  v6 = [*(v2 + 32) searchBar];
  if (a2)
  {

    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  v8 = *(v2 + 88);
  if (v8)
  {

    v8(a1, a2);

    return sub_17654(v8);
  }

  else
  {
  }
}

id sub_4302B8()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    sub_3811BC();
    v3 = v0;
    v4 = static UIKeyCommand.findKeyCommand(affecting:)();
    v5 = *(v0 + 128);
    *(v3 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_430320()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4 = (v0 + 64);
    if (*(v0 + 64))
    {
      goto LABEL_11;
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong navigationItem];

  v4 = (v0 + 64);
  if ((*(v0 + 64) & 1) == 0)
  {
LABEL_7:
    [*(v0 + 32) setActive:0];
    if (v3)
    {
      [v3 setSearchController:0];
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  [v3 setSearchController:*(v0 + 32)];
LABEL_9:
  [v3 setPreferredSearchBarPlacement:2];
  v5 = swift_unknownObjectWeakLoadStrong();
  v15 = v3;
  if (v5)
  {
    v6 = [v5 traitCollection];

    v7 = [v6 userInterfaceIdiom];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  [v15 setHidesSearchBarWhenScrolling:v8];

LABEL_14:
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_4302B8();
    [v10 removeKeyCommand:v11];
  }

  if (*v4 == 1)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_4302B8();
      [v13 addKeyCommand:v14];
    }
  }
}

void sub_43050C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  if (v4)
  {
    v5 = a1;
    sub_307CC(v4);
    v4(v5);
    sub_17654(v4);
  }
}

id sub_430690(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;

  result = [a1 setText:0];
  v5 = *(v1 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  if (v5)
  {

    v5(v1);

    return sub_17654(v5);
  }

  return result;
}

id sub_430838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibrarySearchController.BarDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_430900()
{
  swift_unknownObjectWeakDestroy();

  sub_17654(*(v0 + 72));
  sub_17654(*(v0 + 88));
  sub_17654(*(v0 + 104));

  return v0;
}

uint64_t sub_430958()
{
  sub_430900();

  return swift_deallocClassInstance();
}

uint64_t sub_4309D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  v5 = type metadata accessor for LibrarySearchController.BarDelegate();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = [objc_allocWithZone(v5) init];
  *(v2 + 128) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_unknownObjectWeakAssign();
  v6 = *(v2 + 120);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = (v6 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didBeginEditing);
  v9 = *(v6 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didBeginEditing);
  *v8 = sub_430CE8;
  v8[1] = v7;

  sub_17654(v9);

  v10 = *(v2 + 120);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = (v10 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  v13 = *(v10 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  *v12 = sub_430CF0;
  v12[1] = v11;

  sub_17654(v13);

  v14 = *(v2 + 120);
  v15 = swift_allocObject();
  swift_weakInit();

  v16 = (v14 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  v17 = *(v14 + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  *v16 = sub_430CF8;
  v16[1] = v15;

  sub_17654(v17);

  [*(v2 + 32) setObscuresBackgroundDuringPresentation:0];
  v18 = [*(v2 + 32) searchBar];
  [v18 setDelegate:*(v2 + 120)];

  v19 = [*(v2 + 32) searchBar];
  [v19 setReturnKeyType:9];

  if (a2)
  {
    v20 = [*(v2 + 32) searchBar];
    v21 = sub_AB9260();
    [v20 setPlaceholder:v21];
  }

  sub_430320();
  return v2;
}

uint64_t sub_430CB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_430D04()
{
  result = qword_E068E8;
  if (!qword_E068E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E068E8);
  }

  return result;
}

void sub_430D68(uint64_t a1)
{
  v1 = (a1 + qword_E06900);
  *v1 = 0;
  v1[1] = 0;
  v2 = (a1 + qword_E06908);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_430DE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a3);
  v5 = *&v4[qword_E06908];
  if (v5)
  {

    v5(v6);
    sub_17654(v5);
  }
}

uint64_t sub_430EAC()
{

  sub_439BE8(v0 + qword_E068F8, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_17654(*(v0 + qword_E06900));
  v1 = *(v0 + qword_E06908);

  return sub_17654(v1);
}

id sub_430F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayProxCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_430F60(uint64_t a1)
{

  sub_439BE8(a1 + qword_E068F8, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_17654(*(a1 + qword_E06900));
  v2 = *(a1 + qword_E06908);

  return sub_17654(v2);
}

uint64_t sub_431008()
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4310DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_431150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

void sub_4311C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v3 = a1;

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v4)
  {

    *(v1 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage) = 0;
  }
}

uint64_t sub_4312A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_431318()
{
  v1 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__name;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_431480()
{
  sub_431D6C(319, &qword_DFE858, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_431D08(319, qword_DFE860, &unk_E00030, &unk_AF98E0, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_431D6C(319, &qword_DFC638, &type metadata for Bool, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_431614(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_4316E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_431794()
{
  sub_4318D0(319, &qword_E06C80, &type metadata accessor for Artwork);
  if (v0 <= 0x3F)
  {
    sub_4318D0(319, &unk_E06C88, sub_472EC);
    if (v1 <= 0x3F)
    {
      sub_431D6C(319, &qword_DF0B70, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_4318D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_431954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_431A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_431B04()
{
  type metadata accessor for SharePlayProxCard.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_431C4C();
    if (v1 <= 0x3F)
    {
      sub_431D08(319, &qword_DEC940, &qword_E07D90, &unk_AF9030, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_431D6C(319, &qword_E06D58, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_431D6C(319, &unk_E06D60, &type metadata for ImagePicker.SourceType, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_431C4C()
{
  if (!qword_E06D48)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    sub_431CB0();
    v0 = sub_AB5B80();
    if (!v1)
    {
      atomic_store(v0, &qword_E06D48);
    }
  }
}

unint64_t sub_431CB0()
{
  result = qword_E06D50;
  if (!qword_E06D50)
  {
    type metadata accessor for SharePlayProxCard.CardState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06D50);
  }

  return result;
}

void sub_431D08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_431D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_431DD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayProxCard.CardState(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t sub_431E18()
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v1 = String.trim()();
  countAndFlagsBits = v1._countAndFlagsBits;

  v3 = (v1._object >> 56) & 0xF;
  if ((v1._object & 0x2000000000000000) == 0)
  {
    v3 = v1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    countAndFlagsBits = *(v0 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 48));
  }

  return countAndFlagsBits;
}

uint64_t sub_431EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v28 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DA8);
  __chkstk_darwin(v25[0]);
  v8 = v25 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DB0);
  __chkstk_darwin(v30);
  v10 = v25 - v9;
  *v8 = sub_AB6440();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DB8);
  sub_4323C4(v1, &v8[*(v11 + 44)]);
  v26 = type metadata accessor for SharePlayProxCard(0);
  v12 = v1 + *(v26 + 28);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v35) = v13;
  v36 = v14;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7660();
  v32 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DC0);
  sub_36A00(&qword_E06DC8, &qword_E06DA8);
  v25[1] = &protocol conformance descriptor for TupleView<A>;
  sub_36A00(&qword_E06DD0, &qword_E06DC0);
  sub_AB7180();
  sub_12E1C(v8, &qword_E06DA8);

  v15 = sub_AB7A30();
  v17 = v16;
  v18 = &v10[*(v30 + 36)];
  sub_437E74(v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE998) + 36));
  *v19 = v15;
  v19[1] = v17;
  sub_AB91E0();
  sub_AB3550();
  v35 = sub_AB9320();
  v36 = v20;
  v21 = v2 + *(v26 + 36);
  v22 = *v21;
  v23 = *(v21 + 1);
  v33 = v22;
  v34 = v23;
  sub_AB7660();
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DD8);
  sub_4388F4();
  sub_36A48();
  sub_36A00(&qword_E06DF0, &qword_E06DD8);
  sub_AB7280();
  sub_12E1C(v10, &qword_E06DB0);
}

uint64_t sub_4323C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v396 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v388 = v3;
  v389 = v4;
  __chkstk_darwin(v3);
  v390 = v5;
  v391 = &v332 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E10);
  __chkstk_darwin(v392);
  v395 = &v332 - v6;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E18);
  v7 = __chkstk_darwin(v394);
  v431 = &v332 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v393 = &v332 - v10;
  __chkstk_darwin(v9);
  v430 = &v332 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E20);
  v386 = *(v12 - 8);
  v387 = v12;
  __chkstk_darwin(v12);
  v375 = &v332 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E28);
  v373 = *(v14 - 8);
  v374 = v14;
  v15 = __chkstk_darwin(v14);
  v345 = &v332 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v346 = &v332 - v17;
  v18 = sub_AB2E80();
  v341 = *(v18 - 8);
  v342 = v18;
  __chkstk_darwin(v18);
  v340 = &v332 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_AB2E90();
  v337 = *(v339 - 8);
  __chkstk_darwin(v339);
  v338 = &v332 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB2EB0();
  __chkstk_darwin(v21 - 8);
  v336 = &v332 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v23 - 8);
  v335 = &v332 - v24;
  v343 = sub_AB2F20();
  v368 = *(v343 - 8);
  v25 = __chkstk_darwin(v343);
  v344 = &v332 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v334 = &v332 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10);
  v29 = __chkstk_darwin(v28 - 8);
  v367 = &v332 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v376 = &v332 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E30);
  v33 = __chkstk_darwin(v32 - 8);
  v372 = &v332 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v371 = &v332 - v35;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E38);
  __chkstk_darwin(v357);
  v359 = (&v332 - v36);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E40);
  __chkstk_darwin(v358);
  v362 = &v332 - v37;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E48);
  __chkstk_darwin(v361);
  v366 = &v332 - v38;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E50);
  __chkstk_darwin(v360);
  v365 = &v332 - v39;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E58);
  v40 = __chkstk_darwin(v364);
  v370 = &v332 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v363 = &v332 - v43;
  __chkstk_darwin(v42);
  v377 = &v332 - v44;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E60);
  __chkstk_darwin(v347);
  v349 = &v332 - v45;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E68);
  __chkstk_darwin(v348);
  v351 = &v332 - v46;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E70);
  __chkstk_darwin(v350);
  v354 = &v332 - v47;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E78);
  __chkstk_darwin(v352);
  v356 = &v332 - v48;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E80);
  v49 = __chkstk_darwin(v355);
  v369 = &v332 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v353 = &v332 - v52;
  __chkstk_darwin(v51);
  v401 = &v332 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E88);
  v55 = __chkstk_darwin(v54 - 8);
  v428 = &v332 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v436 = &v332 - v57;
  v433 = sub_AB6C70();
  v435 = *(v433 - 8);
  __chkstk_darwin(v433);
  v432 = &v332 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB840);
  __chkstk_darwin(v59 - 8);
  v61 = &v332 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E90);
  v63 = v62 - 8;
  v64 = __chkstk_darwin(v62);
  v429 = &v332 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v67 = &v332 - v66;
  v68 = *a1;
  v69 = sub_AB6BC0();
  (*(*(v69 - 8) + 56))(v61, 1, 1, v69);
  v70 = sub_AB6C20();
  sub_12E1C(v61, &qword_DEB840);
  KeyPath = swift_getKeyPath();
  v479 = v68;
  v480 = KeyPath;
  v481 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8C0);
  sub_849E8();
  sub_AB7240();

  v72 = sub_AB7430();
  v73 = swift_getKeyPath();
  v74 = *(v63 + 44);
  v427 = v67;
  v75 = &v67[v74];
  *v75 = v73;
  v75[1] = v72;
  v434 = a1;
  v76 = a1[2];
  v479 = a1[1];
  v480 = v76;
  v402 = sub_36A48();

  v77 = sub_AB6F20();
  v79 = v78;
  LOBYTE(v68) = v80;
  sub_AB6BB0();
  v399 = enum case for Font.Leading.tight(_:);
  v81 = v435;
  v398 = *(v435 + 104);
  v400 = v435 + 104;
  v82 = v432;
  v83 = v433;
  v398(v432);
  sub_AB6CA0();
  v397 = *(v81 + 8);
  v435 = v81 + 8;
  v397(v82, v83);

  v84 = sub_AB6E80();
  v86 = v85;
  LOBYTE(v81) = v87;

  sub_36B74(v77, v79, v68 & 1);

  v425 = sub_AB6E70();
  v424 = v88;
  LOBYTE(v76) = v89;
  v426 = v90;
  sub_36B74(v84, v86, v81 & 1);

  v422 = swift_getKeyPath();
  v423 = sub_AB6A90();
  sub_AB5690();
  v421 = v91;
  v420 = v92;
  v419 = v93;
  v418 = v94;
  v411 = v76 & 1;
  LOBYTE(v444) = v76 & 1;
  LOBYTE(v534) = 0;
  v417 = sub_AB6AB0();
  sub_AB5690();
  v384 = v96;
  v385 = v95;
  v382 = v98;
  v383 = v97;
  LOBYTE(v479) = 0;
  v416 = sub_AB6AC0();
  sub_AB5690();
  v415 = v99;
  v414 = v100;
  v413 = v101;
  v412 = v102;
  v103 = v434[4];
  v479 = v434[3];
  v480 = v103;

  v104 = sub_AB6F20();
  v106 = v105;
  LOBYTE(v84) = v107;
  sub_AB6B90();
  v108 = v432;
  v109 = v433;
  (v398)(v432, v399, v433);
  sub_AB6CA0();
  v397(v108, v109);

  v409 = sub_AB6E80();
  v408 = v110;
  LOBYTE(v81) = v111;
  v410 = v112;

  v113 = v84 & 1;
  v114 = v434;
  sub_36B74(v104, v106, v113);

  v406 = swift_getKeyPath();
  v407 = sub_AB74E0();
  v405 = swift_getKeyPath();
  v403 = v81 & 1;
  LOBYTE(v479) = v81 & 1;
  v404 = sub_AB6A90();
  sub_AB5690();
  v380 = v116;
  v381 = v115;
  v378 = v118;
  v379 = v117;
  if (*(v114 + 72) != 1)
  {
    (*(v386 + 56))(v436, 1, 1, v387);
    sub_431E18();
    if (!v229)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v333 = 1;
  v119 = *(v114 + 48);
  v479 = *(v114 + 40);
  v480 = v119;

  v120 = sub_AB6F20();
  v122 = v121;
  v124 = v123;
  v332 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB960);
  v127 = v349;
  v128 = &v349[*(v126 + 36)];
  v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB968) + 28);
  v130 = enum case for Text.Case.uppercase(_:);
  v131 = sub_AB6E60();
  v132 = *(v131 - 8);
  (*(v132 + 104))(v128 + v129, v130, v131);
  (*(v132 + 56))(v128 + v129, 0, 1, v131);
  *v128 = swift_getKeyPath();
  *v127 = v120;
  *(v127 + 8) = v122;
  v133 = v434;
  *(v127 + 16) = v124 & 1;
  *(v127 + 24) = v332;
  v134 = sub_AB6CB0();
  v135 = swift_getKeyPath();
  v136 = (v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB948) + 36));
  *v136 = v135;
  v136[1] = v134;
  v137 = sub_AB74E0();
  v138 = swift_getKeyPath();
  v139 = (v127 + *(v347 + 36));
  *v139 = v138;
  v139[1] = v137;
  sub_AB7A40();
  sub_AB5E90();
  v140 = v351;
  sub_36B0C(v127, v351, &qword_E06E60);
  v141 = (v140 + *(v348 + 36));
  v142 = v525;
  v141[4] = v524;
  v141[5] = v142;
  v141[6] = v526;
  v143 = v521;
  *v141 = v520;
  v141[1] = v143;
  v144 = v523;
  v141[2] = v522;
  v141[3] = v144;
  LOBYTE(v137) = sub_AB6A90();
  sub_AB5690();
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = v140;
  v154 = v354;
  sub_36B0C(v153, v354, &qword_E06E68);
  v155 = v154 + *(v350 + 36);
  *v155 = v137;
  *(v155 + 8) = v146;
  *(v155 + 16) = v148;
  *(v155 + 24) = v150;
  *(v155 + 32) = v152;
  *(v155 + 40) = 0;
  LOBYTE(v137) = sub_AB6AC0();
  sub_AB5690();
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v164 = v154;
  v165 = v356;
  sub_36B0C(v164, v356, &qword_E06E70);
  v166 = v165 + *(v352 + 36);
  *v166 = v137;
  *(v166 + 8) = v157;
  *(v166 + 16) = v159;
  *(v166 + 24) = v161;
  *(v166 + 32) = v163;
  *(v166 + 40) = 0;
  LOBYTE(v137) = sub_AB6AB0();
  sub_AB5690();
  v168 = v167;
  v170 = v169;
  v172 = v171;
  v174 = v173;
  v175 = v165;
  v176 = v353;
  sub_36B0C(v175, v353, &qword_E06E78);
  v177 = v176 + *(v355 + 36);
  *v177 = v137;
  *(v177 + 8) = v168;
  *(v177 + 16) = v170;
  *(v177 + 24) = v172;
  *(v177 + 32) = v174;
  *(v177 + 40) = 0;
  v178 = v401;
  sub_36B0C(v176, v401, &qword_E06E80);
  v179 = sub_AB62E0();
  v180 = v359;
  *v359 = v179;
  *(v180 + 8) = 0;
  *(v180 + 16) = 1;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F18);
  sub_434AD4(v133, v180 + *(v181 + 44));
  v182 = [objc_opt_self() quaternarySystemFillColor];
  v183 = sub_AB7510();
  v184 = sub_AB6AA0();
  v185 = v180 + *(v357 + 36);
  *v185 = v183;
  *(v185 + 8) = v184;
  sub_AB7A30();
  sub_AB5E90();
  v186 = v362;
  sub_36B0C(v180, v362, &qword_E06E38);
  v187 = (v186 + *(v358 + 36));
  v188 = v532;
  v187[4] = v531;
  v187[5] = v188;
  v187[6] = v533;
  v189 = v528;
  *v187 = v527;
  v187[1] = v189;
  v190 = v530;
  v187[2] = v529;
  v187[3] = v190;
  sub_AB7A30();
  sub_AB5E90();
  v191 = v366;
  sub_36B0C(v186, v366, &qword_E06E40);
  v192 = (v191 + *(v361 + 36));
  v193 = v539;
  v192[4] = v538;
  v192[5] = v193;
  v192[6] = v540;
  v194 = v535;
  *v192 = v534;
  v192[1] = v194;
  v195 = v537;
  v192[2] = v536;
  v192[3] = v195;
  v196 = v365;
  v197 = &v365[*(v360 + 36)];
  v198 = *(sub_AB5E60() + 20);
  v199 = enum case for RoundedCornerStyle.continuous(_:);
  v200 = sub_AB63A0();
  (*(*(v200 - 8) + 104))(&v197[v198], v199, v200);
  __asm { FMOV            V0.2D, #16.0 }

  *v197 = _Q0;
  *&v197[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20) + 36)] = 256;
  sub_36B0C(v191, v196, &qword_E06E48);
  LOBYTE(v199) = sub_AB6AC0();
  sub_AB5690();
  v207 = v206;
  v209 = v208;
  v211 = v210;
  v213 = v212;
  v214 = v363;
  sub_36B0C(v196, v363, &qword_E06E50);
  v215 = v214 + *(v364 + 36);
  *v215 = v199;
  *(v215 + 8) = v207;
  *(v215 + 16) = v209;
  *(v215 + 24) = v211;
  *(v215 + 32) = v213;
  *(v215 + 40) = 0;
  sub_36B0C(v214, v377, &qword_E06E58);
  v217 = *(v133 + 56);
  v216 = *(v133 + 64);
  v479 = v217;
  v480 = v216;
  strcpy(&v444, "{{userName}}");
  BYTE13(v444) = 0;
  HIWORD(v444) = -5120;
  v218 = sub_ABAB20();
  v219 = v178;
  v221 = v367;
  v220 = v368;
  if (v218)
  {
    sub_431E18();
    if (!v222)
    {
      v265 = v371;
      (*(v373 + 56))(v371, 1, 1, v374);
      goto LABEL_19;
    }
  }

  v479 = v217;
  v480 = v216;
  strcpy(&v444, "{{userName}}");
  BYTE13(v444) = 0;
  HIWORD(v444) = -5120;

  v223 = sub_431E18();
  if (v224)
  {
    v225 = v223;
  }

  else
  {
    v225 = 0;
  }

  if (v224)
  {
    v226 = v224;
  }

  else
  {
    v226 = 0xE000000000000000;
  }

  v461 = v225;
  v462 = v226;
  sub_ABAAB0();

  v227 = sub_AB31C0();
  (*(*(v227 - 8) + 56))(v335, 1, 1, v227);
  (*(v337 + 104))(v338, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v339);
  (*(v341 + 104))(v340, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v342);
  sub_AB2EA0();
  v228 = v334;
  sub_AB2EF0();
  v230 = v376;
  v231 = v343;
  (*(v220 + 32))(v376, v228, v343);
  v232 = v344;
  (*(v220 + 56))(v230, 0, 1, v231);
  sub_15F84(v230, v221, &unk_DE9D10);
  v233 = *(v220 + 48);
  v234 = v233(v221, 1, v231);
  if (v234 == 1)
  {
    sub_AB2E30();
    if (v233(v221, 1, v231) != 1)
    {
      sub_12E1C(v221, &unk_DE9D10);
    }
  }

  else
  {
    (*(v220 + 32))(v232, v221, v231);
  }

  v402 = sub_AB6F10();
  v367 = v236;
  v368 = v235;
  v238 = v237;
  sub_AB7A40();
  sub_AB5E90();
  v239 = v238 & 1;
  LOBYTE(v444) = v238 & 1;
  sub_AB6CB0();
  v240 = v432;
  v241 = v433;
  (v398)(v432, v399, v433);
  v400 = sub_AB6CA0();
  v397(v240, v241);

  v242 = swift_getKeyPath();
  v243 = sub_AB74E0();
  v244 = swift_getKeyPath();
  v245 = sub_AB6A90();
  sub_AB5690();
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v253 = v252;
  LOBYTE(v479) = 0;
  v254 = swift_getKeyPath();
  v255 = v374;
  v256 = v345;
  v257 = &v345[*(v374 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F20);
  sub_AB5A80();
  sub_12E1C(v376, &unk_DE9D10);
  *v257 = v254;
  v258 = v367;
  v259 = v368;
  *v256 = v402;
  *(v256 + 8) = v259;
  *(v256 + 16) = v239;
  *(v256 + 24) = v258;
  v260 = v442;
  *(v256 + 96) = v441;
  *(v256 + 112) = v260;
  *(v256 + 128) = v443;
  v261 = v438;
  *(v256 + 32) = v437;
  *(v256 + 48) = v261;
  v262 = v440;
  *(v256 + 64) = v439;
  *(v256 + 80) = v262;
  v263 = v400;
  *(v256 + 144) = v242;
  *(v256 + 152) = v263;
  *(v256 + 160) = v244;
  *(v256 + 168) = v243;
  *(v256 + 176) = v245;
  *(v256 + 184) = v247;
  *(v256 + 192) = v249;
  *(v256 + 200) = v251;
  *(v256 + 208) = v253;
  *(v256 + 216) = 0;
  v264 = v346;
  sub_36B0C(v256, v346, &qword_E06E28);
  v265 = v371;
  sub_36B0C(v264, v371, &qword_E06E28);
  (*(v373 + 56))(v265, 0, 1, v255);
  v219 = v401;
LABEL_19:
  v266 = v369;
  sub_15F84(v219, v369, &qword_E06E80);
  v267 = v377;
  v268 = v370;
  sub_15F84(v377, v370, &qword_E06E58);
  v269 = v265;
  v270 = v265;
  v271 = v372;
  sub_15F84(v269, v372, &qword_E06E30);
  v272 = v375;
  sub_15F84(v266, v375, &qword_E06E80);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F28);
  sub_15F84(v268, v272 + *(v273 + 48), &qword_E06E58);
  sub_15F84(v271, v272 + *(v273 + 64), &qword_E06E30);
  sub_12E1C(v270, &qword_E06E30);
  sub_12E1C(v267, &qword_E06E58);
  sub_12E1C(v401, &qword_E06E80);
  sub_12E1C(v271, &qword_E06E30);
  sub_12E1C(v268, &qword_E06E58);
  sub_12E1C(v266, &qword_E06E80);
  v274 = v436;
  sub_36B0C(v272, v436, &qword_E06E20);
  (*(v386 + 56))(v274, 0, 1, v387);
  v114 = v434;
  sub_431E18();
  if (!v275)
  {
    v276 = 1;
    goto LABEL_22;
  }

LABEL_20:

LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v276 = v479;
LABEL_22:
  LODWORD(v433) = v276;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v277 = sub_436C18(v114);
  v278 = v391;
  sub_438BAC(v114, v391);
  v279 = (*(v389 + 80) + 16) & ~*(v389 + 80);
  v280 = swift_allocObject();
  v281 = sub_438C24(v278, v280 + v279);
  __chkstk_darwin(v281);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E98);
  sub_4391D0(&qword_E06EA0, &qword_E06E98, &unk_B0F4D0, sub_4391A0);
  v282 = v395;
  sub_AB7690();
  v283 = swift_getKeyPath();
  v284 = swift_allocObject();
  *(v284 + 16) = v433;
  v285 = &v282[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EE8) + 36)];
  *v285 = v283;
  v285[1] = sub_439564;
  v285[2] = v284;
  LOBYTE(v283) = sub_AB6AA0();
  v286 = &v282[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EF0) + 36)];
  v435 = v277;
  *v286 = v277;
  v286[8] = v283;
  v287 = &v282[*(v392 + 36)];
  v288 = enum case for RoundedCornerStyle.continuous(_:);
  v289 = sub_AB63A0();
  (*(*(v289 - 8) + 104))(v287, v288, v289);
  *&v287[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EF8) + 36)] = 256;

  LOBYTE(v287) = sub_AB6AB0();
  sub_AB5690();
  v291 = v290;
  v293 = v292;
  v295 = v294;
  v297 = v296;
  v298 = v282;
  v299 = v393;
  sub_36B0C(v298, v393, &qword_E06E10);
  v300 = v299 + *(v394 + 36);
  *v300 = v287;
  *(v300 + 8) = v291;
  *(v300 + 16) = v293;
  *(v300 + 24) = v295;
  *(v300 + 32) = v297;
  *(v300 + 40) = 0;
  v301 = v430;
  sub_36B0C(v299, v430, &qword_E06E18);
  v302 = v429;
  sub_15F84(v427, v429, &qword_E06E90);
  sub_15F84(v436, v428, &qword_E06E88);
  sub_15F84(v301, v431, &qword_E06E18);
  v303 = v302;
  v304 = v396;
  sub_15F84(v303, v396, &qword_E06E90);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F00);
  v306 = (v304 + v305[12]);
  *&v444 = v425;
  *(&v444 + 1) = v424;
  LOBYTE(v445) = v411;
  *(&v445 + 1) = *v515;
  DWORD1(v445) = *&v515[3];
  *(&v445 + 1) = v426;
  *&v446 = v422;
  BYTE8(v446) = 1;
  *(&v446 + 9) = *v514;
  HIDWORD(v446) = *&v514[3];
  LOBYTE(v447) = v423;
  *(&v447 + 1) = *v513;
  DWORD1(v447) = *&v513[3];
  *(&v447 + 1) = v421;
  *&v448 = v420;
  *(&v448 + 1) = v419;
  *&v449 = v418;
  BYTE8(v449) = 0;
  HIDWORD(v449) = *(v517 + 3);
  *(&v449 + 9) = v517[0];
  LOBYTE(v450) = v417;
  DWORD1(v450) = *&v516[3];
  *(&v450 + 1) = *v516;
  v308 = v384;
  v307 = v385;
  *(&v450 + 1) = v385;
  *&v451 = v384;
  v310 = v382;
  v309 = v383;
  *(&v451 + 1) = v383;
  *&v452 = v382;
  BYTE8(v452) = 0;
  *(&v452 + 9) = *v519;
  HIDWORD(v452) = *&v519[3];
  LOBYTE(v453) = v416;
  DWORD1(v453) = *&v518[3];
  *(&v453 + 1) = *v518;
  *(&v453 + 1) = v415;
  *&v454[0] = v414;
  *(&v454[0] + 1) = v413;
  *&v454[1] = v412;
  WORD4(v454[1]) = 0;
  BYTE10(v454[1]) = 1;
  v311 = v444;
  v312 = v445;
  v313 = v447;
  v314 = v448;
  v306[2] = v446;
  v306[3] = v313;
  *v306 = v311;
  v306[1] = v312;
  v315 = v449;
  v316 = v451;
  v317 = v452;
  v306[6] = v450;
  v306[7] = v316;
  v306[4] = v314;
  v306[5] = v315;
  v318 = v453;
  v319 = v454[0];
  *(v306 + 171) = *(v454 + 11);
  v306[9] = v318;
  v306[10] = v319;
  v306[8] = v317;
  v320 = (v304 + v305[16]);
  *&v455 = v409;
  *(&v455 + 1) = v408;
  LOBYTE(v456) = v403;
  *(&v456 + 1) = v511[0];
  DWORD1(v456) = *(v511 + 3);
  *(&v456 + 1) = v410;
  *&v457 = v406;
  BYTE8(v457) = 1;
  HIDWORD(v457) = *&v510[3];
  *(&v457 + 9) = *v510;
  *&v458 = v405;
  *(&v458 + 1) = v407;
  LOBYTE(v459) = v404;
  DWORD1(v459) = *(v512 + 3);
  *(&v459 + 1) = v512[0];
  v322 = v380;
  v321 = v381;
  *(&v459 + 1) = v381;
  *&v460[0] = v380;
  v324 = v378;
  v323 = v379;
  *(&v460[0] + 1) = v379;
  *&v460[1] = v378;
  WORD4(v460[1]) = 0;
  BYTE10(v460[1]) = 1;
  v325 = v456;
  *v320 = v455;
  v320[1] = v325;
  v326 = v457;
  v327 = v458;
  *(v320 + 91) = *(v460 + 11);
  v328 = v460[0];
  v320[4] = v459;
  v320[5] = v328;
  v320[2] = v326;
  v320[3] = v327;
  v329 = v428;
  sub_15F84(v428, v304 + v305[20], &qword_E06E88);
  v330 = v431;
  sub_15F84(v431, v304 + v305[24], &qword_E06E18);
  sub_15F84(&v444, &v479, &qword_E06F08);
  sub_15F84(&v455, &v479, &qword_E06F10);
  sub_12E1C(v430, &qword_E06E18);
  sub_12E1C(v436, &qword_E06E88);
  sub_12E1C(v427, &qword_E06E90);
  sub_12E1C(v330, &qword_E06E18);
  sub_12E1C(v329, &qword_E06E88);
  v461 = v409;
  v462 = v408;
  v463 = v403;
  *v464 = v511[0];
  *&v464[3] = *(v511 + 3);
  v465 = v410;
  v466 = v406;
  v467 = 1;
  *v468 = *v510;
  *&v468[3] = *&v510[3];
  v469 = v405;
  v470 = v407;
  v471 = v404;
  *&v472[3] = *(v512 + 3);
  *v472 = v512[0];
  v473 = v321;
  v474 = v322;
  v475 = v323;
  v476 = v324;
  v477 = 0;
  v478 = 1;
  sub_12E1C(&v461, &qword_E06F10);
  v479 = v425;
  v480 = v424;
  LOBYTE(v481) = v411;
  *(&v481 + 1) = *v515;
  HIDWORD(v481) = *&v515[3];
  v482 = v426;
  v483 = v422;
  v484 = 1;
  *v485 = *v514;
  *&v485[3] = *&v514[3];
  v486 = v423;
  *v487 = *v513;
  *&v487[3] = *&v513[3];
  v488 = v421;
  v489 = v420;
  v490 = v419;
  v491 = v418;
  v492 = 0;
  *&v493[3] = *(v517 + 3);
  *v493 = v517[0];
  v494 = v417;
  *&v495[3] = *&v516[3];
  *v495 = *v516;
  v496 = v307;
  v497 = v308;
  v498 = v309;
  v499 = v310;
  v500 = 0;
  *&v501[3] = *&v519[3];
  *v501 = *v519;
  v502 = v416;
  *&v503[3] = *&v518[3];
  *v503 = *v518;
  v504 = v415;
  v505 = v414;
  v506 = v413;
  v507 = v412;
  v508 = 0;
  v509 = 1;
  sub_12E1C(&v479, &qword_E06F08);
  sub_12E1C(v429, &qword_E06E90);
}

uint64_t sub_434AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F30);
  v3 = __chkstk_darwin(v164);
  v166 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v165 = &v139 - v5;
  v159 = sub_AB4780();
  v147 = *(v159 - 1);
  __chkstk_darwin(v159);
  v156 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v155 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9B30);
  __chkstk_darwin(v9 - 8);
  v158 = &v139 - v10;
  v146 = sub_AB8A60();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  v13 = __chkstk_darwin(v12 - 8);
  v145 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v157 = &v139 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB818);
  __chkstk_darwin(v16 - 8);
  v152 = &v139 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB820);
  v154 = *(v143 - 8);
  __chkstk_darwin(v143);
  v153 = &v139 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EF8);
  __chkstk_darwin(v149);
  v150 = &v139 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F38);
  __chkstk_darwin(v148);
  v151 = &v139 - v20;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F40);
  v21 = __chkstk_darwin(v162);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v139 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F48);
  __chkstk_darwin(v160);
  v27 = (&v139 - v26);
  v28 = sub_AB7540();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F50);
  v33 = __chkstk_darwin(v32 - 8);
  v163 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v161 = &v139 - v35;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v36 = *(type metadata accessor for SharePlayProxCard(0) + 20);
  v168 = a1;
  v37 = *(a1 + v36 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v183)
  {
    v159 = v183;
    sub_AB7520();
    (*(v29 + 104))(v31, enum case for Image.ResizingMode.stretch(_:), v28);
    v38 = sub_AB7590();
    (*(v29 + 8))(v31, v28);

    sub_AB7A30();
    sub_AB5970();
    v39 = v189;
    v40 = v190;
    v41 = v191;
    v42 = v192;
    v44 = v193;
    v43 = v194;
    LOBYTE(v183) = v190;
    LOBYTE(v170) = v192;
    v45 = sub_AB6AA0();
    sub_AB5690();
    v169[0] = 0;
    *&v176 = v38;
    *(&v176 + 1) = v39;
    LOBYTE(v177) = v40;
    *(&v177 + 1) = v41;
    LOBYTE(v178) = v42;
    *(&v178 + 1) = v44;
    *&v179 = v43;
    WORD4(v179) = 256;
    *(&v179 + 10) = v170;
    HIWORD(v179) = WORD2(v170);
    LOBYTE(v180) = v45;
    DWORD1(v180) = *(&v183 + 3);
    *(&v180 + 1) = v183;
    *(&v180 + 1) = v46;
    *v181 = v47;
    *&v181[8] = v48;
    *&v181[16] = v49;
    v181[24] = 0;
    v187 = v180;
    v188[0] = *v181;
    *(v188 + 9) = *&v181[9];
    v183 = v176;
    v184 = v177;
    v185 = v178;
    v186 = v179;
    v182 = 0;
    BYTE9(v188[1]) = 0;
    sub_15F84(&v176, &v170, &qword_E06F70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F70);
    sub_43971C();
    sub_AB6610();
    v50 = v174;
    v51 = v175[0];
    v187 = v174;
    v188[0] = v175[0];
    v52 = *(v175 + 10);
    *(v188 + 10) = *(v175 + 10);
    v53 = v171;
    v183 = v170;
    v184 = v171;
    v55 = v172;
    v54 = v173;
    v185 = v172;
    v186 = v173;
    *v27 = v170;
    v27[1] = v53;
    v27[4] = v50;
    v27[5] = v51;
    v27[2] = v55;
    v27[3] = v54;
    *(v27 + 90) = v52;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v183, v169, &qword_E06F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58);
    sub_439698();
    sub_439908();
    v56 = v161;
    sub_AB6610();
    sub_12E1C(&v176, &qword_E06F70);

    sub_12E1C(&v183, &qword_E06F58);
    v57 = v56;
  }

  else
  {
    v58 = v157;
    v59 = v158;
    v139 = v23;
    v140 = v25;
    v60 = v159;
    v141 = v27;
    if (*(v37 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage))
    {
      v61 = v144;
      v62 = v146;
      (*(v144 + 56))(v157, 1, 1, v146);
    }

    else
    {
      v63 = type metadata accessor for SharePlayProxCard.ViewModel(0);
      v64 = *(v168 + *(v63 + 44));
      if (v64)
      {
        v159 = v64;
        sub_AB7520();
        (*(v29 + 104))(v31, enum case for Image.ResizingMode.stretch(_:), v28);
        v65 = sub_AB7590();
        (*(v29 + 8))(v31, v28);

        sub_AB7A30();
        sub_AB5970();
        v66 = v189;
        v67 = v190;
        v68 = v191;
        v69 = v192;
        v71 = v193;
        v70 = v194;
        LOBYTE(v183) = v190;
        LOBYTE(v170) = v192;
        v72 = sub_AB6AA0();
        sub_AB5690();
        v169[0] = 0;
        *&v176 = v65;
        *(&v176 + 1) = v66;
        LOBYTE(v177) = v67;
        *(&v177 + 1) = v68;
        LOBYTE(v178) = v69;
        *(&v178 + 1) = v71;
        *&v179 = v70;
        WORD4(v179) = 256;
        *(&v179 + 10) = v170;
        HIWORD(v179) = WORD2(v170);
        LOBYTE(v180) = v72;
        DWORD1(v180) = *(&v183 + 3);
        *(&v180 + 1) = v183;
        *(&v180 + 1) = v73;
        *v181 = v74;
        *&v181[8] = v75;
        *&v181[16] = v76;
        v181[24] = 0;
        v187 = v180;
        v188[0] = *v181;
        *(v188 + 9) = *&v181[9];
        v183 = v176;
        v184 = v177;
        v185 = v178;
        v186 = v179;
        v182 = 1;
        BYTE9(v188[1]) = 1;
        sub_15F84(&v176, &v170, &qword_E06F70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F70);
        sub_43971C();
        sub_AB6610();
        v77 = v174;
        v78 = v175[0];
        v187 = v174;
        v188[0] = v175[0];
        v79 = *(v175 + 10);
        *(v188 + 10) = *(v175 + 10);
        v80 = v171;
        v183 = v170;
        v184 = v171;
        v82 = v172;
        v81 = v173;
        v185 = v172;
        v186 = v173;
        v83 = v141;
        *v141 = v170;
        v83[1] = v80;
        v83[4] = v77;
        v83[5] = v78;
        v83[2] = v82;
        v83[3] = v81;
        *(v83 + 90) = v79;
        swift_storeEnumTagMultiPayload();
        sub_15F84(&v183, v169, &qword_E06F58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58);
        sub_439698();
        sub_439908();
        v57 = v161;
        sub_AB6610();
        sub_12E1C(&v176, &qword_E06F70);

        sub_12E1C(&v183, &qword_E06F58);
        goto LABEL_11;
      }

      sub_15F84(v168 + *(v63 + 40), v58, &unk_DE9C50);
      v62 = v146;
      v61 = v144;
    }

    v84 = v145;
    sub_36B0C(v58, v145, &unk_DE9C50);
    v85 = 1;
    v86 = (*(v61 + 48))(v84, 1, v62);
    v87 = v61;
    v88 = v141;
    v89 = v60;
    v90 = v62;
    v91 = v147;
    v92 = v152;
    if (v86 != 1)
    {
      v93 = v142;
      (*(v87 + 32))(v142, v84, v90);
      v94 = sub_AB89C0();
      (*(*(v94 - 8) + 56))(v59, 1, 1, v94);
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v93, v59, v92);
      v85 = 0;
    }

    v95 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v95 - 8) + 56))(v92, v85, 1, v95);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20);
    v97 = v155;
    (*(*(v96 - 8) + 56))(v155, 8, 11, v96);
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, &v170);
    v98 = v156;
    (*(v91 + 104))(v156, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v89);
    v99 = v153;
    static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v92, v97, &v170, v98, v153);
    (*(v91 + 8))(v98, v89);
    sub_439BE8(v97, type metadata accessor for ArtworkImage.Placeholder);
    sub_12E1C(v92, &qword_DEB818);
    sub_AB7A30();
    sub_AB5970();
    v100 = v150;
    (*(v154 + 32))(v150, v99, v143);
    v101 = (v100 + *(v149 + 36));
    v102 = v184;
    *v101 = v183;
    v101[1] = v102;
    v101[2] = v185;
    v103 = v151;
    sub_36B0C(v100, v151, &qword_DF8EF8);
    *(v103 + *(v148 + 36)) = 256;
    LOBYTE(v100) = sub_AB6AA0();
    sub_AB5690();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = v139;
    sub_36B0C(v103, v139, &qword_E06F38);
    v113 = v112 + *(v162 + 36);
    *v113 = v100;
    *(v113 + 8) = v105;
    *(v113 + 16) = v107;
    *(v113 + 24) = v109;
    *(v113 + 32) = v111;
    *(v113 + 40) = 0;
    v114 = v140;
    sub_36B0C(v112, v140, &qword_E06F40);
    sub_15F84(v114, v88, &qword_E06F40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06F58);
    sub_439698();
    sub_439908();
    v57 = v161;
    sub_AB6610();
    sub_12E1C(v114, &qword_E06F40);
  }

LABEL_11:
  v115 = sub_AB6A50();
  v116 = v165;
  *v165 = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FA8);
  sub_435C34(v116 + *(v117 + 44));
  v118 = sub_AB6B00();
  sub_AB5690();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FB0) + 36);
  *v127 = v118;
  *(v127 + 8) = v120;
  *(v127 + 16) = v122;
  *(v127 + 24) = v124;
  *(v127 + 32) = v126;
  *(v127 + 40) = 0;
  v128 = sub_AB6AF0();
  sub_AB5690();
  v129 = v163;
  v130 = v116 + *(v164 + 36);
  *v130 = v128;
  *(v130 + 8) = v131;
  *(v130 + 16) = v132;
  *(v130 + 24) = v133;
  *(v130 + 32) = v134;
  *(v130 + 40) = 0;
  sub_15F84(v57, v129, &qword_E06F50);
  v135 = v166;
  sub_15F84(v116, v166, &qword_E06F30);
  v136 = v167;
  sub_15F84(v129, v167, &qword_E06F50);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FB8);
  sub_15F84(v135, v136 + *(v137 + 48), &qword_E06F30);
  sub_12E1C(v116, &qword_E06F30);
  sub_12E1C(v57, &qword_E06F50);
  sub_12E1C(v135, &qword_E06F30);
  return sub_12E1C(v129, &qword_E06F50);
}

uint64_t sub_435C34@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FC8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FD0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  *v18 = sub_AB62E0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FD8);
  sub_435FA0(&v18[*(v19 + 44)]);
  *v12 = sub_AB62E0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FE0) + 44)];
  *v6 = sub_AB6450();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FE8);
  sub_4368F8(&v6[*(v21 + 44)]);
  sub_15F84(v6, v4, &qword_E06FC0);
  sub_15F84(v4, v20, &qword_E06FC0);
  v22 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FF0) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_12E1C(v6, &qword_E06FC0);
  sub_12E1C(v4, &qword_E06FC0);
  sub_15F84(v18, v16, &qword_E06FD0);
  sub_15F84(v12, v10, &qword_E06FC8);
  v23 = v27;
  sub_15F84(v16, v27, &qword_E06FD0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06FF8);
  sub_15F84(v10, v23 + *(v24 + 48), &qword_E06FC8);
  sub_12E1C(v12, &qword_E06FC8);
  sub_12E1C(v18, &qword_E06FD0);
  sub_12E1C(v10, &qword_E06FC8);
  return sub_12E1C(v16, &qword_E06FD0);
}

uint64_t sub_435FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07000);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07008);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_4361A4();
  sub_4365A0(v7);
  sub_15F84(v13, v11, &qword_E07008);
  sub_15F84(v7, v5, &qword_E07000);
  sub_15F84(v11, a1, &qword_E07008);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07048);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_15F84(v5, a1 + *(v14 + 64), &qword_E07000);
  sub_12E1C(v7, &qword_E07000);
  sub_12E1C(v13, &qword_E07008);
  sub_12E1C(v5, &qword_E07000);
  return sub_12E1C(v11, &qword_E07008);
}

uint64_t sub_4361A4()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07028);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07030);
  __chkstk_darwin(v32);
  v9 = &v31 - v8;
  v10 = sub_431E18();
  if (v11)
  {
    v33 = v10;
    v34 = v11;
    sub_36A48();
    v12 = sub_AB6F20();
    v14 = v13;
    v16 = v15;
    v17 = sub_AB6E70();
    v19 = v18;
    v21 = v20;
    v31 = v5;
    v23 = v22;
    sub_36B74(v12, v14, v16 & 1);

    *v9 = v17;
    *(v9 + 1) = v19;
    v9[16] = v21 & 1;
    *(v9 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_439B04();
    return sub_AB6610();
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v33 = sub_AB9320();
    v34 = v25;
    sub_438BAC(v0, &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    sub_438C24(&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    sub_36A48();
    sub_AB76E0();
    v28 = sub_AB74E0();
    KeyPath = swift_getKeyPath();
    v30 = &v7[*(v5 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    sub_15F84(v7, v9, &qword_E07028);
    swift_storeEnumTagMultiPayload();
    sub_439B04();
    sub_AB6610();
    return sub_12E1C(v7, &qword_E07028);
  }
}

uint64_t sub_4365A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  __chkstk_darwin(v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07018);
  v19[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  sub_431E18();
  if (v11)
  {

    sub_AB91E0();
    sub_AB3550();
    v19[1] = sub_AB9320();
    v19[2] = v12;
    sub_438BAC(v1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    sub_438C24(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    sub_36A48();
    sub_AB76E0();
    KeyPath = swift_getKeyPath();
    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07020) + 36)];
    *v16 = KeyPath;
    *(v16 + 1) = 1;
    v16[16] = 0;
    *&v10[*(v8 + 36)] = 0x3FF0000000000000;
    sub_36B0C(v10, a1, &qword_E07018);
    return (*(v19[0] + 56))(a1, 0, 1, v8);
  }

  else
  {
    v18 = *(v19[0] + 56);

    return v18(a1, 1, 1, v8);
  }
}

uint64_t sub_4368F8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07000);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07008);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_4361A4();
  sub_4365A0(v7);
  sub_15F84(v13, v11, &qword_E07008);
  sub_15F84(v7, v5, &qword_E07000);
  sub_15F84(v11, a1, &qword_E07008);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07010);
  sub_15F84(v5, a1 + *(v14 + 48), &qword_E07000);
  sub_12E1C(v7, &qword_E07000);
  sub_12E1C(v13, &qword_E07008);
  sub_12E1C(v5, &qword_E07000);
  return sub_12E1C(v11, &qword_E07008);
}

uint64_t sub_436AE8(uint64_t a1)
{
  v2 = sub_AB5A90();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_AB61A0();
}

id sub_436BB0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    LSApplicationWorkspace.openMusicSettings()();

    return sub_AB5A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_436C18(uint64_t a1)
{
  type metadata accessor for SharePlayProxCard(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v6 == 1)
  {
    if (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) != 1)
    {
      return sub_AB7490();
    }

    goto LABEL_7;
  }

  sub_431E18();
  if (!v2)
  {
LABEL_7:
    v5 = [objc_opt_self() systemFillColor];
    return sub_AB7510();
  }

  v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  return sub_AB7510();
}

__n128 sub_436D34@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EC8);
  __chkstk_darwin(v4);
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07058);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EC0);
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06EB0);
  __chkstk_darwin(v14);
  v16 = &v34[-v15];
  *v6 = sub_AB62E0();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07060);
  sub_437140(a1, &v6[*(v17 + 44)]);
  v18 = sub_AB6B90();
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_439348();
  sub_AB7240();
  sub_12E1C(v6, &qword_E06EC8);
  if (v35)
  {
    v21 = sub_AB74D0();
  }

  else
  {
    v21 = sub_AB74B0();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v7);
  v24 = &v13[*(v11 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v13, v16, &qword_E06EC0);
  v25 = &v16[*(v14 + 36)];
  v26 = v42;
  v25[4] = v41;
  v25[5] = v26;
  v25[6] = v43;
  v27 = v38;
  *v25 = v37;
  v25[1] = v27;
  v28 = v40;
  v25[2] = v39;
  v25[3] = v28;
  sub_AB7A30();
  sub_AB5E90();
  v29 = v36;
  sub_36B0C(v16, v36, &qword_E06EB0);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E98) + 36);
  v31 = v49;
  *(v30 + 64) = v48;
  *(v30 + 80) = v31;
  *(v30 + 96) = v50;
  v32 = v45;
  *v30 = v44;
  *(v30 + 16) = v32;
  result = v47;
  *(v30 + 32) = v46;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_437140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v38 == 1 && (*(a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52) + 16) & 1) == 0)
  {
    sub_AB58D0();
    (*(v5 + 32))(v13, v7, v4);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v5 + 56))(v13, v15, 1, v4);
  v16 = a1 + *(type metadata accessor for SharePlayProxCard.ViewModel(0) + 52);
  v18 = *v16;
  v17 = *(v16 + 8);
  if (*(v16 + 16))
  {
    v38 = *v16;
    v39 = v17;
    sub_36A48();

    v33 = sub_AB6F20();
    v34 = v19;
    v35 = v20 & 1;
    v36 = v21;
    v37 = 1;
    sub_AB6610();
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    sub_20E8F8(v38, v39, v40);
  }

  else
  {

    v38 = v18(v14);
    v39 = v27;
    sub_36A48();
    v33 = sub_AB6F20();
    v34 = v28;
    v35 = v29 & 1;
    v36 = v30;
    v37 = 0;
    sub_AB6610();
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    sub_20E8F8(v38, v39, v40);
    sub_438C14(v18, v17, 0);
  }

  sub_15F84(v13, v11, &qword_DEDB90);
  sub_15F84(v11, a2, &qword_DEDB90);
  v31 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07068) + 48);
  *v31 = v22;
  *(v31 + 8) = v23;
  *(v31 + 16) = v24;
  *(v31 + 24) = v25;
  *(v31 + 32) = v26;
  sub_20E8F8(v22, v23, v24);
  sub_12E1C(v13, &qword_DEDB90);
  sub_20E934(v22, v23, v24);
  sub_20E934(v22, v23, v24);
  return sub_12E1C(v11, &qword_DEDB90);
}

uint64_t sub_437550@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SharePlayProxCard(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v47[1] = v5;
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540);
  v56 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v52 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = v47 - v13;
  v14 = __chkstk_darwin(v12);
  v50 = v47 - v15;
  v16 = __chkstk_darwin(v14);
  v49 = v47 - v17;
  v18 = __chkstk_darwin(v16);
  v48 = v47 - v19;
  v20 = __chkstk_darwin(v18);
  v54 = v47 - v21;
  v22 = __chkstk_darwin(v20);
  v57 = v47 - v23;
  __chkstk_darwin(v22);
  v55 = v47 - v24;
  sub_AB91E0();
  sub_AB3550();
  v58 = sub_AB9320();
  v59 = v25;
  v26 = a1;
  sub_438BAC(a1, v6);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = swift_allocObject();
  sub_438C24(v6, v28 + v27);
  sub_36A48();
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v58 = sub_AB9320();
  v59 = v29;
  v47[0] = v26;
  sub_438BAC(v26, v6);
  v30 = swift_allocObject();
  sub_438C24(v6, v30 + v27);
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v58 = sub_AB9320();
  v59 = v31;
  sub_438BAC(v26, v6);
  v32 = swift_allocObject();
  sub_438C24(v6, v32 + v27);
  v33 = v54;
  sub_AB76E0();
  sub_AB91E0();
  sub_AB3550();
  v58 = sub_AB9320();
  v59 = v34;
  sub_438BAC(v47[0], v6);
  v35 = swift_allocObject();
  sub_438C24(v6, v35 + v27);
  v36 = v48;
  sub_AB76E0();
  v37 = *(v56 + 16);
  v38 = v49;
  v37(v49, v55, v9);
  v39 = v50;
  v37(v50, v57, v9);
  v40 = v51;
  v37(v51, v33, v9);
  v41 = v52;
  v42 = v36;
  v37(v52, v36, v9);
  v43 = v53;
  v37(v53, v38, v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E08);
  v37(&v43[v44[12]], v39, v9);
  v37(&v43[v44[16]], v40, v9);
  v37(&v43[v44[20]], v41, v9);
  v45 = *(v56 + 8);
  v45(v42, v9);
  v45(v54, v9);
  v45(v57, v9);
  v45(v55, v9);
  v45(v41, v9);
  v45(v40, v9);
  v45(v39, v9);
  return (v45)(v38, v9);
}

uint64_t sub_437CBC()
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978);
  sub_AB7650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  return sub_AB7650();
}

void sub_437D80(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharePlayProxCard(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *(v1 + OBJC_IVAR____TtCV16MusicApplication17SharePlayProxCard9CardState_removedImage) = 1;
}

double sub_437E74@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_431CB0();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978);
  sub_AB7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7660();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v8, *(&v8 + 1), v9, v5, v6, v7, v5, v6, a1, v7, 0, 0, v1);

  sub_AB7A30();
  sub_AB5970();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9B8) + 36));
  *v2 = v8;
  v2[1] = v9;
  result = *&v10;
  v2[2] = v10;
  return result;
}

uint64_t sub_438050@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_4380D0@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06DF8);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540);
  v47 = *(v43 - 8);
  v4 = __chkstk_darwin(v43);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = &v37 - v7;
  v8 = __chkstk_darwin(v6);
  v46 = &v37 - v9;
  __chkstk_darwin(v8);
  v45 = &v37 - v10;
  v11 = sub_AB35C0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_AB9250();
  __chkstk_darwin(v12 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEAD0);
  v38 = *(v40 - 8);
  v13 = v38;
  v14 = __chkstk_darwin(v40);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  sub_AB91E0();
  sub_AB3550();
  v18 = sub_AB9320();
  v20 = v19;
  type metadata accessor for SharePlayProxCard(0);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_431CB0();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v48 = v18;
  v49 = v20;
  sub_36A48();
  v37 = v17;
  sub_AB7B10();

  sub_AB6360();
  v21 = v45;
  sub_AB76D0();
  sub_AB6360();
  sub_AB5670();
  v22 = sub_AB5680();
  (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
  v23 = v46;
  sub_AB76B0();
  v24 = *(v13 + 16);
  v25 = v39;
  v26 = v17;
  v27 = v40;
  v24(v39, v26, v40);
  v28 = *(v47 + 16);
  v29 = v41;
  v30 = v43;
  v28(v41, v21, v43);
  v31 = v42;
  v28(v42, v23, v30);
  v32 = v44;
  v24(v44, v25, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E06E00);
  v28(&v32[*(v33 + 48)], v29, v30);
  v28(&v32[*(v33 + 64)], v31, v30);
  v34 = *(v47 + 8);
  v34(v46, v30);
  v34(v45, v30);
  v35 = *(v38 + 8);
  v35(v37, v27);
  v34(v31, v30);
  v34(v29, v30);
  return (v35)(v25, v27);
}

uint64_t sub_4386F4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_438774()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_4387F8()
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  return sub_AB7650();
}

uint64_t sub_43886C()
{
  type metadata accessor for SharePlayProxCard(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  return sub_AB7650();
}

unint64_t sub_4388F4()
{
  result = qword_E06DE0;
  if (!qword_E06DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DC0);
    sub_36A00(&qword_E06DC8, &qword_E06DA8);
    sub_36A00(&qword_E06DD0, &qword_E06DC0);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E06DE8, &qword_DFE998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06DE0);
  }

  return result;
}

uint64_t sub_438A84@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_438B04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void sub_438B7C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_4311C4(v1);
}

uint64_t sub_438BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_438C14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_438C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v4 = v3[10];
  v5 = sub_AB8A60();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  sub_438C14(*(v2 + v3[13]), *(v2 + v3[13] + 8), *(v2 + v3[13] + 16));

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_438F10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_438F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_438F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_439014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

uint64_t sub_439040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

uint64_t sub_4390C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_439120()
{
  v1 = type metadata accessor for SharePlayProxCard(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_4391D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_439254()
{
  result = qword_E06EB8;
  if (!qword_E06EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC8);
    sub_439348();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06EB8);
  }

  return result;
}

unint64_t sub_439348()
{
  result = qword_E06ED0;
  if (!qword_E06ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06EC8);
    sub_36A00(&qword_E06ED8, &qword_E06EE0);
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06ED0);
  }

  return result;
}

uint64_t sub_43942C@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB61F0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_439490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_4394C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_4395C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07050);
  __chkstk_darwin(v2 - 8);
  sub_15F84(a1, &v5 - v3, &qword_E07050);
  return sub_AB61C0();
}

unint64_t sub_439698()
{
  result = qword_E06F60;
  if (!qword_E06F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F58);
    sub_43971C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F60);
  }

  return result;
}

unint64_t sub_43971C()
{
  result = qword_E06F68;
  if (!qword_E06F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F70);
    sub_4397D4(&qword_E06F78, &qword_E06F80, &unk_B0F638, sub_439884);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F68);
  }

  return result;
}

uint64_t sub_4397D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_36A00(&qword_DEFED0, &qword_DFEA90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_439884()
{
  result = qword_E06F88;
  if (!qword_E06F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F88);
  }

  return result;
}

unint64_t sub_439908()
{
  result = qword_E06F98;
  if (!qword_E06F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06F40);
    sub_4397D4(&qword_E06FA0, &qword_E06F38, &unk_B0F600, sub_20E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E06F98);
  }

  return result;
}

uint64_t sub_4399D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SharePlayProxCard(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_439A4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB61F0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_439B04()
{
  result = qword_E07038;
  if (!qword_E07038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07028);
    sub_36A00(&qword_E07040, &qword_DE8540);
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07038);
  }

  return result;
}

uint64_t sub_439BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_439C48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E06DD8);
  sub_4388F4();
  sub_36A48();
  sub_36A00(&qword_E06DF0, &qword_E06DD8);
  return swift_getOpaqueTypeConformance2();
}

char *sub_439D4C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v101 - v10;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden] = 1;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCornerTreatment;
  v17 = sub_ABA680();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(&v4[v16], 1, 1, v17);
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkPlaceholder];
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache] = 0;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];
  *v21 = sub_43C4F8();
  v21[1] = v22;
  v21[2] = v23;
  v21[3] = v24;
  v25 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  *&v4[v25] = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v28 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  *&v4[v28] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  *&v4[v29] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView] = 0;
  v30 = type metadata accessor for TVShowEpisodeCell();
  v114.receiver = v4;
  v114.super_class = v30;
  v31 = objc_msgSendSuper2(&v114, "initWithFrame:", a1, a2, a3, a4);
  v32 = *&v31[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  v33 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  v112 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  v34 = v31;
  v35 = v31;
  v113 = v31;
  v36 = v34;
  v37 = v32;
  v38 = UIView.Corner.medium.unsafeMutableAddressor();
  (*(v18 + 16))(v11, v38, v17);
  v19(v11, 0, 1, v17);
  v39 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  swift_beginAccess();
  sub_8A01C(v11, v37 + v39);
  swift_endAccess();
  sub_25D6BC();
  sub_12E1C(v11, &unk_DFFBC0);

  v40 = *&v35[v33];
  v109 = v40;
  v41 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v43 = *v41;
  v42 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  v47 = v41[5];
  v111 = v41[4];
  v46 = v111;
  v110 = v47;
  v48 = &v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v49 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 8];
  v108 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  v107 = v49;
  v50 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 24];
  v106 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 16];
  v51 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 40];
  v105 = *&v40[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder + 32];
  v104 = v51;
  *v48 = v43;
  *(v48 + 1) = v42;
  v52 = v42;
  v103 = v42;
  *(v48 + 2) = v44;
  *(v48 + 3) = v45;
  *(v48 + 4) = v46;
  *(v48 + 5) = v47;
  v53 = v44;
  v54 = v45;
  v55 = v43;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v102 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v60;
  sub_2F1C8(v108, v107, v106, v50);
  v64 = v109;
  v65 = *&v109[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v66 = *(v65 + 168);
  v115[0] = *(v65 + 152);
  v115[1] = v66;
  v115[2] = *(v65 + 184);
  v67 = v103;
  *(v65 + 152) = v43;
  *(v65 + 160) = v67;
  *(v65 + 168) = v44;
  *(v65 + 176) = v45;
  v68 = v110;
  *(v65 + 184) = v111;
  *(v65 + 192) = v68;
  v69 = v62;
  v70 = v63;
  v71 = v102;
  v72 = v61;

  sub_75948(v115);
  sub_12E1C(v115, &unk_DF8690);

  v73 = v112;
  v74 = v113;
  v75 = *&v113[v112];
  v76 = v75[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  v75[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 1;
  v77 = v75;
  sub_25D814(v76);

  v78 = *&v74[v73];
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = &v78[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  v81 = *&v78[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  *v80 = sub_43CC58;
  v80[1] = v79;
  v82 = v78;

  sub_17654(v81);

  v83 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  v84 = *&v36[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView];
  v85 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v84[v85] = 2;
  v86 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  v87 = *&v36[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView];
  v88 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v87 + v88) = 2;
  v89 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  v90 = *&v36[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView];
  v91 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v90 + v91) = 2;
  v92 = v84;

  TextStackView.add(_:)(v93);

  v94 = *&v36[v86];

  TextStackView.add(_:)(v95);

  v96 = *&v36[v89];

  TextStackView.add(_:)(v97);

  v98 = [v36 contentView];

  [v98 addSubview:*&v74[v73]];
  [v98 addSubview:*&v36[v83]];
  [v98 addSubview:*&v36[v86]];
  [v98 addSubview:*&v36[v89]];
  v99 = sub_43BD10();
  [v98 addSubview:v99];

  sub_43BDE0();
  return v36;
}

void sub_43A518()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
    if (v2)
    {

      v2(v3);
      sub_17654(v2);
    }
  }
}

uint64_t sub_43A61C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_43A730(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_43A82C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_43A944(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_43AA44(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_43AAD8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_43ABF0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_43ACC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4);
}

void sub_43ACE4(double a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition;
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition) = a1;
  if (sub_AB38D0())
  {
    *(*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView) + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = *(v1 + v2);
    sub_25DD64();
  }
}

void sub_43AD74(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed);
  v3 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed) = a1;
  if (v2 != v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView);
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed);
    *(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) = v3;
    if (v5 != v3)
    {
      sub_25EE8C();
    }
  }
}

uint64_t sub_43ADD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView);
  v2 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled);
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v51 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v3 != *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v3;
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6 >> 62)
    {
      result = sub_ABB060();
      if (!result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_19;
      }
    }

    v8 = result - 1;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_63;
    }

    v46 = v2;
    v48 = v0;

    v9 = 0;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v10 = *(sub_36003C(v9, v6) + 256);
    if (v10)
    {
LABEL_7:
      v11 = v10;
      if (([v11 isHidden] & 1) == 0)
      {
        v12 = *(v1 + v51);
        v13 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v14 = v11[v13];
        v11[v13] = v12;
        if (v12 != v14)
        {
          v15 = 1.0;
          if (v12)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v11 setAlpha:v15];
        }
      }

      if (v8 != v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v8 == v9)
        {
          break;
        }

LABEL_16:
        ++v9;
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v16 = *(v6 + 8 * v9 + 32);

        v10 = *(v16 + 256);
        if (v10)
        {
          goto LABEL_7;
        }
      }
    }

    v2 = v46;
    v0 = v48;
  }

LABEL_19:
  v17 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView);
  v18 = *(v0 + v2);
  v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v17[v19] = v18;
  v52 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v18 == v17[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    goto LABEL_37;
  }

  v17[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v18;
  v20 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v21 = *&v17[v20];
  if (v21 >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_37;
    }
  }

  v22 = result - 1;
  if (result < 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v47 = v2;
  v49 = v0;
  v45 = v17;

  v23 = 0;
  if ((v21 & 0xC000000000000001) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v24 = *(sub_36003C(v23, v21) + 256);
  if (v24)
  {
LABEL_25:
    v25 = v24;
    if (([v25 isHidden] & 1) == 0)
    {
      v26 = v17[v52];
      v27 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v28 = v25[v27];
      v25[v27] = v26;
      if (v26 != v28)
      {
        v29 = 1.0;
        if (v26)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v25 setAlpha:v29];
      }
    }

    if (v22 != v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
    while (1)
    {

      if (v22 == v23)
      {
        break;
      }

LABEL_34:
      ++v23;
      if ((v21 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

LABEL_32:
      v30 = *(v21 + 8 * v23 + 32);

      v24 = *(v30 + 256);
      if (v24)
      {
        goto LABEL_25;
      }
    }
  }

  v2 = v47;
  v0 = v49;
LABEL_37:
  v31 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView);
  v32 = *(v0 + v2);
  v33 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  result = swift_beginAccess();
  v31[v33] = v32;
  v53 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v32 == v31[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled])
  {
    return result;
  }

  v31[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = v32;
  v34 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v35 = *&v31[v34];
  if (v35 >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  v36 = result - 1;
  if (result < 1)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v50 = v31;

  v37 = 0;
  if ((v35 & 0xC000000000000001) == 0)
  {
    goto LABEL_50;
  }

LABEL_42:
  v38 = *(sub_36003C(v37, v35) + 256);
  if (v38)
  {
LABEL_43:
    v39 = v38;
    if (([v39 isHidden] & 1) == 0)
    {
      v40 = v31[v53];
      v41 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
      swift_beginAccess();
      v42 = v39[v41];
      v39[v41] = v40;
      if (v40 != v42)
      {
        v43 = 1.0;
        if (v40)
        {
          UIInterfaceGetContentDisabledAlpha();
        }

        [v39 setAlpha:{v43, v45}];
      }
    }

    if (v36 != v37)
    {
      goto LABEL_52;
    }
  }

  else
  {
    while (1)
    {

      if (v36 == v37)
      {
        break;
      }

LABEL_52:
      ++v37;
      if ((v35 & 0xC000000000000001) != 0)
      {
        goto LABEL_42;
      }

LABEL_50:
      v44 = *(v35 + 8 * v37 + 32);

      v38 = *(v44 + 256);
      if (v38)
      {
        goto LABEL_43;
      }
    }
  }
}

uint64_t sub_43B328()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;
  swift_retain_n();
  sub_2E6210(v6);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView);
  v8 = *(v1 + v3);
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v10 = *&v7[v9];
  *&v7[v9] = v8;
  swift_retain_n();
  v11 = v7;
  sub_2E6210(v10);

  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView);
  v13 = *(v1 + v3);
  v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = v13;
  swift_retain_n();
  v16 = v12;
  sub_2E6210(v15);

  return sub_25E028(v17);
}

uint64_t sub_43B4B8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView) + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent);
  v2 = v1[14];

  [v2 clearArtworkCatalogs];
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v1[25] = 0;
  v1[26] = 0;
}

id sub_43B628(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TVShowEpisodeCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_43B6F8(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for TVShowEpisodeCell();
  v24.receiver = v9;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23.receiver = v9;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, *a2, a3, a4, a5, a6);
  v25.origin.x = v16;
  v25.origin.y = v18;
  v25.size.width = v20;
  v25.size.height = v22;
  CGRectGetWidth(v25);
  [v9 *a1];
  CGRectGetWidth(v26);
  if (sub_AB38D0())
  {
    sub_43BDE0();
  }
}

void sub_43B804()
{
  v48.receiver = v0;
  v48.super_class = type metadata accessor for TVShowEpisodeCell();
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v46 = v11;
  [v0 effectiveUserInterfaceLayoutDirection];
  v12 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  sub_ABA490();
  [v12 setFrame:?];
  v49.origin.x = v3;
  v49.origin.y = v5;
  v49.size.width = v14;
  v49.size.height = v16;
  v17 = v5 + CGRectGetMaxY(v49);
  v18 = sub_43BD10();
  [v18 sizeThatFits:{v7, v9}];
  v47 = v19;
  v45 = v20;

  v50.origin.x = v3;
  v50.origin.y = v17;
  v50.size.width = v7;
  v50.size.height = v9 - v16;
  CGRectGetMaxX(v50);
  v21 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView] sizeThatFits:{v7, v9}];
  v23 = v22;
  v25 = v24;
  v26 = *&v0[v21];
  sub_ABA490();
  [v26 setFrame:?];

  v51.origin.x = v3;
  v51.origin.y = v17;
  v51.size.width = v23;
  v51.size.height = v25;
  MaxY = CGRectGetMaxY(v51);
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView];
  [v28 sizeThatFits:{v7, v9}];
  v30 = v29;
  sub_ABA490();
  [v28 setFrame:?];
  v52.origin.x = v3;
  v52.origin.y = MaxY;
  v52.size.width = v7 - v47 + -16.0;
  v52.size.height = v30;
  v31 = CGRectGetMaxY(v52);
  [v28 frame];
  sub_ABA470();
  v32 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  sub_ABA490();
  [v32 setFrame:v45];

  v33 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView] sizeThatFits:{v7, v9}];
  [*&v0[v33] setFrame:{v3, v31, v34, v35}];
  v36 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden;
  if ((v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden] & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView;
    v38 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
    if (v38)
    {
      v39 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
    }

    else
    {
      v40 = [objc_allocWithZone(UIView) init];
      v41 = qword_DE6C70;
      v39 = v40;
      if (v41 != -1)
      {
        swift_once();
      }

      [v39 setBackgroundColor:qword_E718B0];
      [v1 addSubview:v39];
      v42 = *&v0[v37];
      *&v0[v37] = v39;

      v38 = 0;
    }

    v43 = v38;
    v53.origin.x = v3;
    v53.origin.y = v5;
    v53.size.width = v7;
    v53.size.height = v9;
    [v39 setFrame:{v3, CGRectGetMaxY(v53), v7, 1.0 / v46}];
  }

  v44 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView];
  if (v44)
  {
    [v44 setHidden:v0[v36]];
  }
}

__n128 sub_43BCF4()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_E07070 = *&UIEdgeInsetsZero.top;
  *&qword_E07080 = v1;
  return result;
}

id sub_43BD10()
{
  v1 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 preferredContentSizeCategory];

    v6 = sub_45B16C();
    v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_43BDE0()
{
  v1 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  [v1 displayScale];
  sub_AB3A00();
  v4 = v3;
  type metadata accessor for CGSize(0);
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView];
  [v5 frame];
  v8 = v6;
  v9 = v7;
  if (sub_AB38D0())
  {
    [v5 frame];
    [v5 setFrame:?];
  }
}

id sub_43BF74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShowEpisodeCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVShowEpisodeCell()
{
  result = qword_E07118;
  if (!qword_E07118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43C180()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_43C2D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_43B328();
}

uint64_t (*sub_43C344(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_43C3A8;
}

uint64_t sub_43C3A8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_43B328();
  }

  return result;
}

double sub_43C3DC(double a1)
{
  v3 = a1 / 1.77777778;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView) sizeThatFits:{a1, 1.79769313e308}];
  v5 = v4 + 0.0;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView) sizeThatFits:{a1, 1.79769313e308}];
  v7 = v6;
  v8 = v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents;
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents + 8);
  swift_beginAccess();
  v10 = v5 + v7 + *(v9 + 104);
  [*(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView) sizeThatFits:{a1, 1.79769313e308}];
  v12 = v11;
  v13 = *(v8 + 16);
  swift_beginAccess();
  return v3 + v10 + v12 + *(v13 + 104);
}