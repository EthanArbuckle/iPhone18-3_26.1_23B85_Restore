uint64_t JSSettingsItemToggle.isToggled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9E2F88@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9E300C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_AB5520();
  return sub_9E2C20(v4);
}

uint64_t JSSettingsItemToggle.isToggled.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_AB5520();
  return sub_9E2C20(v3);
}

uint64_t (*JSSettingsItemToggle.isToggled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *(a1 + 8) = *(a1 + 9);
  return sub_9E323C;
}

uint64_t sub_9E323C(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_AB5510();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_AB5520();
  return sub_9E2C20(v4);
}

uint64_t JSSettingsItemToggle.$isToggled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSSettingsItemToggle.$isToggled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSSettingsItemToggle.$isToggled.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSSettingsItemToggle.description.getter()
{
  v1 = v0;
  sub_ABAD90(26);
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  sub_AB94A0(v10);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_AB94A0(v12);
  sub_ABAF70();
  v13._countAndFlagsBits = 0x67676F547369203BLL;
  v13._object = 0xEF22203D2064656CLL;
  sub_AB94A0(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v1)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_AB94A0(v7);

  v14._countAndFlagsBits = 15906;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  return 0;
}

uint64_t JSSettingsItemToggle.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS;
  v7 = v3[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS];
  v3[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS] = 1;
  v11[0] = a1;
  v11[1] = a2;
  sub_F46A0(a3, v12);
  if (!v12[3])
  {

    goto LABEL_9;
  }

  sub_F46A0(v12, v10);

  if (!swift_dynamicCast() || (a1 != 0x656C67676F547369 || a2 != 0xE900000000000064) && (sub_ABB3C0() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
LABEL_9:
    result = sub_12E1C(v11, &unk_E27200);
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_AB5520();
  sub_9E2C20(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  sub_12E1C(v12, &unk_DE8E40);

LABEL_10:
  v3[v6] = v7;
  return result;
}

id JSSettingsItemToggle.__allocating_init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v10[15] = 0;
  sub_AB54D0();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v7[OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS] = 0;
  return JSObject.init(type:)(a1);
}

id JSSettingsItemToggle.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v9[15] = 0;
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle_isUpdatingFromJS) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9E3C40()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSSettingsItemToggle__isToggled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSSettingsItemToggle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItemToggle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSSettingsItemToggle()
{
  result = qword_E25A50;
  if (!qword_E25A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9E3DD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSettingsItemToggle();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_9E3E1C()
{
  sub_9E3EB4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9E3EB4()
{
  if (!qword_DFC638)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DFC638);
    }
  }
}

uint64_t sub_9E3F04()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_9E3F5C()
{

  return swift_deallocObject();
}

uint64_t sub_9E4044(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t JSBiographyItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v9;
        v7[1] = v10;

        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40);
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  return sub_12E1C(v12, &unk_E27200);
}

id JSBiographyItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSBiographyItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSBiographyItem_headline);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9E4324()
{
}

id JSBiographyItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *OS_os_log.jsBridge.unsafeMutableAddressor()
{
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.jsBridge;
}

uint64_t *OS_os_log.scripting.unsafeMutableAddressor()
{
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.scripting;
}

uint64_t sub_9E44DC()
{
  sub_C43C0();
  result = OS_os_log.init(musicCategory:)();
  static OS_os_log.scripting = result;
  return result;
}

uint64_t sub_9E454C()
{
  sub_C43C0();
  result = OS_os_log.init(musicCategory:)();
  static OS_os_log.jsBridge = result;
  return result;
}

uint64_t sub_9E4658(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_AB4BC0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_AB4BD0();
}

uint64_t JSGroupedItemizedTextListViewModel.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9E47F0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9E4874(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSGroupedItemizedTextListViewModel.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

void (*JSGroupedItemizedTextListViewModel.sections.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

uint64_t JSGroupedItemizedTextListViewModel.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSGroupedItemizedTextListViewModel.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSGroupedItemizedTextListViewModel.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AB0);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSGroupedItemizedTextListViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_F46A0(a3, v11);
  if (v11[3])
  {
    sub_F46A0(v11, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25A98);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        __swift_destroy_boxed_opaque_existential_0(v9);
        sub_12E1C(v11, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v10, &unk_E27200);
}

id JSGroupedItemizedTextListViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v12[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25A98);
  sub_AB54D0();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v10 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSGroupedItemizedTextListViewModel.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25A98);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9E516C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore34JSGroupedItemizedTextListViewModel__sections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25AA8);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSGroupedItemizedTextListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGroupedItemizedTextListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSGroupedItemizedTextListViewModel()
{
  result = qword_E25AE0;
  if (!qword_E25AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9E52DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSGroupedItemizedTextListViewModel();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_9E5324()
{
  sub_9E53B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9E53B4()
{
  if (!qword_E25AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E25A98);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E25AF0);
    }
  }
}

void sub_9E5430(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2)
  {
    if ((v1[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS] & 1) == 0)
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
        LOBYTE(v4) = v1[v3];
      }

      v5 = static JSBridge.shared;
      v15 = &type metadata for Bool;
      v14[0] = v4;
      sub_60044();
      sub_F46A0(v14, v13);
      v6 = swift_allocObject();
      *(v6 + 16) = 1;
      v7 = v13[1];
      *(v6 + 24) = v13[0];
      *(v6 + 40) = v7;
      *(v6 + 56) = 0x7463656C65537369;
      *(v6 + 64) = 0xEA00000000006465;
      *(v6 + 72) = v1;
      *(v6 + 80) = v5;
      *(v6 + 88) = 0;
      v8 = v1;
      v9 = v5;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF020, v6);

      sub_12E1C(v14, &unk_DE8E40);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [objc_opt_self() defaultCenter];
      if (qword_E240D8 != -1)
      {
        swift_once();
      }

      [v12 postNotificationName:static JSOrderedPlaylistSelector.itemsDidChangeNotification object:v11];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t JSOrderedPlaylistSelectorItem.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSOrderedPlaylistSelectorItem.isSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_9E5430(v4);
}

void (*JSOrderedPlaylistSelectorItem.isSelected.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_9E576C;
}

void sub_9E576C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_9E5430(v5);

  free(v1);
}

uint64_t JSOrderedPlaylistSelectorItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS) = 1;
  v17[0] = a1;
  v17[1] = a2;
  sub_F46A0(a3, v18);
  if (!v18[3])
  {

    goto LABEL_21;
  }

  sub_F46A0(v18, v16);

  if (!swift_dynamicCast())
  {
LABEL_14:
    if (swift_dynamicCast() && (a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465 || (sub_ABB3C0() & 1) != 0))
    {
      v11 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected;
      swift_beginAccess();
      v12 = *(v3 + v11);
      *(v3 + v11) = v14;
      sub_9E5430(v12);
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_21:
    JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
    result = sub_12E1C(v17, &unk_E27200);
    goto LABEL_22;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {
    if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      v9 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText;
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText;
LABEL_7:
  v10 = (v3 + v9);
  swift_beginAccess();
  *v10 = v14;
  v10[1] = v15;

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(v16);
  sub_12E1C(v18, &unk_DE8E40);

LABEL_22:
  *(v3 + v7) = v8;
  return result;
}

id JSOrderedPlaylistSelectorItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS] = 0;
  return JSMediaItem.init(type:)(a1);
}

id JSOrderedPlaylistSelectorItem.init(type:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_titleText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_subtitleText);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_isUpdatingFromJS) = 0;

  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_9E5B30()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore29JSOrderedPlaylistSelectorItem_delegate;

  return sub_176DC(v1);
}

uint64_t type metadata accessor for JSOrderedPlaylistSelectorItem()
{
  result = qword_E25B28;
  if (!qword_E25B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9E5C9C()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

id JSLocalStorage.init()()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_AB9260();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_scriptingUserDefaults) = v3;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  *(v0 + v4) = sub_97420(_swiftEmptyArrayStorage);
  v7[0] = _swiftEmptyArrayStorage;
  v7[1] = 1;
  memset(&v7[2], 0, 24);
  v8 = 0;
  v5 = JSObject.init(type:)(v7);
  sub_9E5E28(1);

  return v5;
}

uint64_t sub_9E5E28(int a1)
{
  v4 = v1;
  ObjectType = swift_getObjectType();
  sub_9E6F34();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v61);
  if (!v62)
  {
    sub_9BC10(&v61);
    goto LABEL_9;
  }

  LOBYTE(v2) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v9 = _swiftEmptyArrayStorage;
LABEL_17:
    v13 = sub_99E520(_swiftEmptyArrayStorage);
    goto LABEL_18;
  }

  if (!v60[2])
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v6 = sub_2EBF88(0x4B6465726564726FLL, 0xEB00000000737965);
  if ((v7 & 1) == 0)
  {

LABEL_12:
    v9 = _swiftEmptyArrayStorage;
    if (v60[2])
    {
      goto LABEL_13;
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = *(v60[7] + 8 * v6);
  swift_unknownObjectRetain();

  *&v61 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = v60;
  if (!v60[2])
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = sub_2EBF88(0x7365756C6176, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(v60[7] + 8 * v10);
  swift_unknownObjectRetain();

  *&v61 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v13 = v60;
LABEL_18:
  v54 = v4;
  v55 = a1;
  v14 = v9[2];
  v57 = v13;
  if (!v14)
  {
    v58 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v15 = 0;
  v16 = v9 + 5;
  v17 = (v14 - 1);
  v58 = _swiftEmptyArrayStorage;
  do
  {
    v18 = &v16[2 * v15];
    v19 = v15;
    while (1)
    {
      if (v19 >= v9[2])
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (*(v13 + 16))
      {
        break;
      }

LABEL_21:
      v19 = (v19 + 1);
      v18 += 2;
      if (v14 == v19)
      {
        goto LABEL_33;
      }
    }

    v3 = *(v18 - 1);
    v20 = *v18;

    sub_2EBF88(v3, v20);
    if ((v21 & 1) == 0)
    {

      goto LABEL_21;
    }

    v2 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v58;
    p_ObjectType = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_6D5A0(0, v58[2] + 1, 1);
      v2 = v61;
    }

    v24 = v2[2];
    v23 = v2[3];
    if (v24 >= v23 >> 1)
    {
      sub_6D5A0((v23 > 1), v24 + 1, 1);
      v2 = v61;
    }

    v15 = (v19 + 1);
    v2[2] = v24 + 1;
    v58 = v2;
    v25 = &v2[2 * v24];
    v25[4] = v3;
    v25[5] = v20;
    v17 = p_ObjectType;
    v13 = v57;
  }

  while (p_ObjectType != v19);
LABEL_33:

  v3 = sub_99E520(_swiftEmptyArrayStorage);
  v2 = 0;
  v19 = (v13 + 64);
  v26 = 1 << *(v13 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v13 + 64);
  v16 = ((v26 + 63) >> 6);
LABEL_36:
  v29 = v2;
  v56 = v3;
  if (!v28)
  {
    goto LABEL_38;
  }

  do
  {
    v2 = v29;
LABEL_41:
    p_ObjectType = &ObjectType;
    v30 = __clz(__rbit64(v28)) | (v2 << 6);
    v31 = (*(v13 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(v13 + 56) + 8 * v30);
    v28 &= v28 - 1;
    *&v61 = *v31;
    *(&v61 + 1) = v33;
    __chkstk_darwin();
    v52[2] = &v61;

    swift_unknownObjectRetain();
    if (sub_1B39BC(sub_91115C, v52, v58))
    {
      swift_unknownObjectRetain();
      v35 = v56;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v35;
      sub_9A31D0(v34, v32, v33, v36);

      swift_unknownObjectRelease();
      v3 = v61;
      v13 = v57;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
    v29 = v2;
    v3 = v56;
    v13 = v57;
  }

  while (v28);
  while (1)
  {
LABEL_38:
    v2 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v2 >= v16)
    {
      break;
    }

    v28 = v19[v2];
    v29 = (v29 + 1);
    if (v28)
    {
      goto LABEL_41;
    }
  }

  LOBYTE(v2) = v55;
  v19 = v54;
  if ((v55 & 1) == 0)
  {
    v37 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
    swift_beginAccess();
    if (sub_12C848(*(v19 + v37), v58))
    {
      swift_beginAccess();

      isa = sub_AB8FD0().super.isa;

      sub_9D6ACC(v3);
      v39 = sub_AB8FD0().super.isa;

      v40 = [(objc_class *)isa isEqualToDictionary:v39];

      if (v40)
      {
      }
    }
  }

  v41 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
  swift_beginAccess();
  v16 = v58;
  *(v19 + v41) = v58;

  v43 = sub_9D6D8C(v42);
  v44 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  swift_beginAccess();
  *(v19 + v44) = v43;

  if (qword_E23F48 != -1)
  {
LABEL_54:
    swift_once();
  }

  v45 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_AF8820;
  *(v46 + 56) = ObjectType;
  *(v46 + 32) = v19;
  *(v46 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  *(v46 + 64) = v16;
  v47 = v19;

  *(v46 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60);
  *(v46 + 96) = v3;
  sub_60044();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = _swiftEmptyArrayStorage;
  *(v48 + 32) = 0x657461647075;
  *(v48 + 40) = 0xE600000000000000;
  *(v48 + 48) = v47;
  *(v48 + 56) = v45;
  *(v48 + 64) = v2 & 1;
  v49 = v47;
  v50 = v45;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v48);
}

Swift::Void __swiftcall JSLocalStorage.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  countAndFlagsBits = _._countAndFlagsBits;
  if (_._countAndFlagsBits != 0x6D657449746573 || _._object != 0xE700000000000000)
  {
    object = _._object;
    if ((sub_ABB3C0() & 1) == 0)
    {
      if (countAndFlagsBits == 0x744965766F6D6572 && object == 0xEA00000000006D65 || (sub_ABB3C0() & 1) != 0)
      {
        if (*(arguments._rawValue + 2) != 1)
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, v32);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v18 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
        swift_beginAccess();
        v19 = *(v2 + v18);
        v20 = *(v19 + 16);
        if (!v20)
        {
LABEL_28:

          return;
        }

        v21 = 0;
        v22 = (v19 + 40);
        while (1)
        {
          v23 = *(v22 - 1) == v30 && *v22 == v31;
          if (v23 || (sub_ABB3C0() & 1) != 0)
          {
            break;
          }

          ++v21;
          v22 += 2;
          if (v20 == v21)
          {
            goto LABEL_28;
          }
        }

        swift_beginAccess();
        sub_A824A8(v21);
        swift_endAccess();

        memset(v32, 0, sizeof(v32));
        swift_beginAccess();
        sub_2E5370(v32, v30, v31);
        swift_endAccess();
      }

      else
      {
        if ((countAndFlagsBits != 0x7261656C63 || object != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
        {
          return;
        }

        v24 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
        swift_beginAccess();
        *(v2 + v24) = _swiftEmptyArrayStorage;

        v25 = sub_97420(_swiftEmptyArrayStorage);
        v26 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
        swift_beginAccess();
        *(v2 + v26) = v25;
      }

      sub_9E69FC();
      return;
    }
  }

  if (*(arguments._rawValue + 2) == 2)
  {
    sub_808B0(arguments._rawValue + 32, v32);
    if (swift_dynamicCast())
    {
      v7 = v30;
      v8 = v31;
      sub_808B0(arguments._rawValue + 64, v32);
      v9 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
      swift_beginAccess();
      v10 = *(v2 + v9);
      __chkstk_darwin();
      v28[2] = &v30;

      v11 = sub_1B39BC(sub_911130, v28, v10);

      if ((v11 & 1) == 0)
      {
        swift_beginAccess();
        v12 = *(v2 + v9);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v9) = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_6B0F0(0, *(v12 + 2) + 1, 1, v12);
          *(v2 + v9) = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v29 = v15 + 1;
          v27 = sub_6B0F0((v14 > 1), v15 + 1, 1, v12);
          v16 = v29;
          v12 = v27;
        }

        *(v12 + 2) = v16;
        v17 = &v12[16 * v15];
        *(v17 + 4) = v7;
        *(v17 + 5) = v8;
        *(v2 + v9) = v12;
        swift_endAccess();
      }

      sub_808B0(v32, &v30);
      swift_beginAccess();
      sub_2E5370(&v30, v7, v8);
      swift_endAccess();
      sub_9E69FC();
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }
}

uint64_t sub_9E69FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 0x4B6465726564726FLL;
  *(inited + 40) = 0xEB00000000737965;
  v2 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7365756C6176;
  *(inited + 88) = 0xE600000000000000;
  v5 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(inited + 120) = v7;
  *(inited + 96) = v6;

  v8 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  v11[3] = v7;
  v11[0] = v8;
  sub_9E6F34();
  sub_36A48();
  NSUserDefaults.subscript.setter(v11, v9, &type metadata for JSLocalStorage.ScriptingUserDefaultsKey);
  return sub_9E5E28(0);
}

Swift::Int sub_9E6BAC()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_9E6C20()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

uint64_t sub_9E6C74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4F690;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_9E6D18()
{
}

uint64_t sub_9E6DE8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_9BAB44(v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_ABB060();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_9E6F34()
{
  result = qword_E25B78;
  if (!qword_E25B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25B78);
  }

  return result;
}

uint64_t sub_9E6F88()
{

  return swift_deallocObject();
}

unint64_t sub_9E6FF4()
{
  result = qword_E25B80;
  if (!qword_E25B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25B80);
  }

  return result;
}

uint64_t JSNowPlayingComponentController.init()()
{
  v1 = v0;
  v13[0] = _swiftEmptyArrayStorage;
  memset(&v13[1], 0, 24);
  v13[4] = 1;
  v14 = 0;
  v2 = objc_allocWithZone(type metadata accessor for JSNowPlayingViewModel());
  v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode] = 3;
  v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode] = 5;
  *&v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary] = _swiftEmptyDictionarySingleton;
  v3 = &v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v4 = &v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v4 = 0;
  v4[1] = 0;
  v5 = JSObject.init(type:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25B88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x65646F4D77656976;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = v5;
  v7 = v5;
  v8 = sub_99F400(inited);
  swift_setDeallocating();
  sub_9E72D8(inited + 32);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSNowPlayingComponentController_viewModel) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25B98);
  *(v9 + 32) = v8;
  v11[0] = v9;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0xD000000000000014;
  v11[4] = 0x8000000000B7FEB0;
  v12 = 0;
  return sub_A874E4(v11, v1);
}

uint64_t sub_9E72D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSNowPlayingComponentController()
{
  result = qword_E25BC8;
  if (!qword_E25BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

MusicJSCore::JSNativeExecutionFence::Kind_optional __swiftcall JSNativeExecutionFence.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4EBC8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSNativeExecutionFence_Kind_layoutCompleted;
  }

  else
  {
    v4.value = MusicJSCore_JSNativeExecutionFence_Kind_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSNativeExecutionFence.Kind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4374756F79616CLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_9E743C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4374756F79616CLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF646574656C706DLL;
  }

  if (*a2)
  {
    v5 = 0x6F4374756F79616CLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*a2)
  {
    v6 = 0xEF646574656C706DLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9E74F0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9E7580()
{
  sub_AB93F0();
}

Swift::Int sub_9E75FC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9E7688@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4EBC8;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

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

void sub_9E76E8(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x6F4374756F79616CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF646574656C706DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSNativeExecutionFence.updateProperty(_:value:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen) & 1) == 0)
  {
    v5 = result;
    v10[0] = result;
    v10[1] = a2;
    sub_F46A0(a3, v11);
    if (v11[3])
    {
      sub_F46A0(v11, v9);

      if (swift_dynamicCast())
      {
        if (v5 == 1684957547 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
        {
          v6._rawValue = &off_D4EBC8;
          v7 = sub_ABB140(v6, v8);

          *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind) = v7 == 1;
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_12E1C(v11, &unk_DE8E40);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }

    return sub_12E1C(v10, &unk_E27200);
  }

  return result;
}

uint64_t sub_9E78B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E24D80);
  v7 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
  sub_AB3420();
  isa = sub_AB3370().super.isa;
  (*(v4 + 8))(v6, v3);
  v9 = [v7 stringFromDate:isa];

  v10 = sub_AB92A0();
  v12 = v11;

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF85F0;
  *(v14 + 32) = v1;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 56) = ObjectType;
  *(v14 + 64) = v10;
  *(v14 + 72) = v12;
  sub_13C80(0, &qword_DE8ED0);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = _swiftEmptyArrayStorage;
  *(v15 + 32) = 0xD000000000000010;
  *(v15 + 40) = 0x8000000000B7FF80;
  *(v15 + 48) = v1;
  *(v15 + 56) = v13;
  *(v15 + 64) = 0;
  v16 = v1;
  v17 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v15);
}

id JSNativeExecutionFence.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen] = 0;
  return JSObject.init(type:)(a1);
}

id JSNativeExecutionFence.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen) = 0;
  return JSObject.init(type:)(a1);
}

void _s11MusicJSCore22JSNativeExecutionFenceC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen;
  if (v2[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen] & 1) == 0 && (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (sub_ABB3C0()))
  {
    v2[v3] = 1;
    if (v2[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind])
    {
      v4 = [objc_opt_self() sharedApplication];
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v8[4] = sub_9E7E0C;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_1B5EB4;
      v8[3] = &block_descriptor_261;
      v6 = _Block_copy(v8);
      v7 = v2;

      [v4 _performBlockAfterCATransactionCommits:v6];
      _Block_release(v6);
    }

    else
    {

      sub_9E78B0();
    }
  }
}

unint64_t sub_9E7D4C()
{
  result = qword_E25BE8;
  if (!qword_E25BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25BE8);
  }

  return result;
}

uint64_t sub_9E7DD4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_261(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9E7E48()
{

  return swift_deallocObject();
}

id JSBackgroundFetchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  v10[0] = _swiftEmptyArrayStorage;
  v10[1] = 1;
  memset(&v10[2], 0, 24);
  v11 = 0;
  v2 = JSObject.init(type:)(v10);
  v3 = qword_E23F48;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static JSBridge.shared;
  sub_60044();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000016;
  *(v6 + 24) = 0x8000000000B7DF00;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = 1;
  v7 = v4;
  v8 = v5;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B31B8, v6);

  return v7;
}

id JSBackgroundFetchManager.init()()
{
  v8[0] = _swiftEmptyArrayStorage;
  v8[1] = 1;
  memset(&v8[2], 0, 24);
  v9 = 0;
  v0 = JSObject.init(type:)(v8);
  v1 = qword_E23F48;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = static JSBridge.shared;
  sub_60044();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x8000000000B7DF00;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 48) = 1;
  v5 = v2;
  v6 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3CFC, v4);

  return v5;
}

void _s11MusicJSCore24JSBackgroundFetchManagerC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(a3 + 16) == 2)
    {
      sub_808B0(a3 + 32, v20);
      if (swift_dynamicCast())
      {
        v15 = v18;
        v14 = v19;
        sub_808B0(a3 + 64, v20);
        if (swift_dynamicCast())
        {
          sub_AB3180();

          if ((*(v11 + 48))(v9, 1, v10) == 1)
          {

            sub_171590(v9);
          }

          else
          {
            (*(v11 + 32))(v13, v9, v10);
            BackgroundFetchManager.shared.unsafeMutableAddressor();
            (*(v11 + 16))(v7, v13, v10);
            (*(v11 + 56))(v7, 0, 1, v10);

            BackgroundFetchManager.subscript.setter(v7, v15, v14);

            (*(v11 + 8))(v13, v10);
          }
        }

        else
        {
        }
      }
    }
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      sub_808B0(a3 + 32, v20);
      if (swift_dynamicCast())
      {
        v16 = v18;
        v17 = v19;
        BackgroundFetchManager.shared.unsafeMutableAddressor();
        (*(v11 + 56))(v7, 1, 1, v10);

        BackgroundFetchManager.subscript.setter(v7, v16, v17);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (a1 == 0x6C4165766F6D6572 && a2 == 0xE90000000000006CLL || (sub_ABB3C0() & 1) != 0)
  {
    BackgroundFetchManager.shared.unsafeMutableAddressor();

    BackgroundFetchManager.removeAll()();
  }
}

uint64_t JSMultiChoiceItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x786554656C746974 && a2 == 0xE900000000000074 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v9;
        v7[1] = v10;

        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40);
      }

      if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  return sub_12E1C(v12, &unk_E27200);
}

id JSMultiChoiceItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSMultiChoiceItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9E87DC()
{
}

id JSMultiChoiceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMultiChoiceItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t JSInlinePopup.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSInlinePopup.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSInlinePopup.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v16 = *v5;
      v15 = v5[1];
      v17 = *(v13 + 8);

      v17(v2, v16, v15, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*JSInlinePopup.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_9E8C74;
}

uint64_t JSInlinePopup.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = sub_ABB3C0();

  if ((v10 & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v16 = *v5;
      v15 = v5[1];
      v17 = *(v13 + 16);

      v17(v2, v16, v15, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*JSInlinePopup.message.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_9E8E58;
}

void sub_9E8E70(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {

    a3(v5, v6);
  }

  else
  {
    a3(*(*a1 + 24), v6);
  }

  free(v4);
}

void *JSInlinePopup.button.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSInlinePopup.button.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v6 = v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    v10 = a1;
    v9(v1, a1, ObjectType, v7);

    swift_unknownObjectRelease();
    return;
  }

LABEL_11:
}

void (*JSInlinePopup.button.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return sub_9E90EC;
}

void sub_9E90EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v3 == v7)
      {
        goto LABEL_11;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_11:
      v13 = v3;
      goto LABEL_12;
    }

    v20 = v2[10];
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    v12 = v3;
    v11(v20, v3, ObjectType, v9);
    swift_unknownObjectRelease();

    v7 = v12;
LABEL_12:

    v7 = *v4;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v14 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v2[10];
    v16 = *(v14 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 24);
    v19 = v3;
    v18(v15, v3, v17, v16);
    swift_unknownObjectRelease();

    v7 = v19;
  }

LABEL_16:

  free(v2);
}

void *JSInlinePopup.childViewModel.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSInlinePopup.childViewModel.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v6 = v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    v10 = a1;
    v9(v1, a1, ObjectType, v7);

    swift_unknownObjectRelease();
    return;
  }

LABEL_11:
}

void (*JSInlinePopup.childViewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return sub_9E94A0;
}

void sub_9E94A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v3 == v7)
      {
        goto LABEL_11;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_11:
      v13 = v3;
      goto LABEL_12;
    }

    v20 = v2[10];
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);
    v12 = v3;
    v11(v20, v3, ObjectType, v9);
    swift_unknownObjectRelease();

    v7 = v12;
LABEL_12:

    v7 = *v4;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v14 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v2[10];
    v16 = *(v14 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 32);
    v19 = v3;
    v18(v15, v3, v17, v16);
    swift_unknownObjectRelease();

    v7 = v19;
  }

LABEL_16:

  free(v2);
}

uint64_t JSInlinePopup.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v7 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 56) = ObjectType;
  *(v8 + 32) = v3;
  if (a1)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v9 = a2;
    v10 = v3;

    v12 = sub_9ED890(v11, 0, a2);

    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v8 + 88) = sub_13C80(0, &qword_DFA720);
    v13 = v3;
  }

  v12 = [objc_allocWithZone(NSNull) init];
LABEL_8:
  *(v8 + 64) = v12;
  sub_13C80(0, &qword_DE8ED0);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x8000000000B7FB10;
  *(v14 + 48) = v3;
  *(v14 + 56) = v7;
  *(v14 + 64) = 0;
  v15 = v3;
  v16 = v7;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v14);
}

uint64_t sub_9E9864()
{

  return swift_deallocObject();
}

uint64_t JSInlinePopup.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a1;
  v27[1] = a2;
  sub_F46A0(a3, v28);
  if (!v28[3])
  {

    goto LABEL_15;
  }

  sub_F46A0(v28, v25);

  if (!swift_dynamicCast())
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_15:
    if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      sub_F46A0(a3, v25);
      if (v26)
      {
        type metadata accessor for JSInlinePopupButton();
        if (swift_dynamicCast())
        {
          v7 = v23;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        sub_12E1C(v25, &unk_DE8E40);
        v7 = 0;
      }

      v8 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
      swift_beginAccess();
      v9 = *(v3 + v8);
      *(v3 + v8) = v7;
      if (v7)
      {
        if (v9)
        {
          v10 = v7 == v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          goto LABEL_49;
        }
      }

      else if (!v9)
      {
        goto LABEL_49;
      }

      v11 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 24);
        v15 = v7;
        v14(v3, v7, ObjectType, v12);
LABEL_33:

        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    else
    {
      if ((a1 != 0x656956646C696863 || a2 != 0xEE006C65646F4D77) && (sub_ABB3C0() & 1) == 0)
      {
        JSViewModel.updateProperty(_:value:)(a1, a2, a3);
        return sub_12E1C(v27, &unk_E27200);
      }

      sub_F46A0(a3, v25);
      if (v26)
      {
        type metadata accessor for JSViewModel();
        if (swift_dynamicCast())
        {
          v16 = v23;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        sub_12E1C(v25, &unk_DE8E40);
        v16 = 0;
      }

      v17 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
      swift_beginAccess();
      v9 = *(v3 + v17);
      *(v3 + v17) = v16;
      if (v16)
      {
        if (v9 && v16 == v9)
        {
          goto LABEL_49;
        }
      }

      else if (!v9)
      {
        goto LABEL_49;
      }

      v18 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 8);
        v20 = swift_getObjectType();
        v21 = *(v19 + 32);
        v15 = v16;
        v21(v3, v16, v20, v19);
        goto LABEL_33;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {
    if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      JSInlinePopup.message.setter(v23, v24);
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  JSInlinePopup.title.setter(v23, v24);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v25);
LABEL_50:
  sub_12E1C(v28, &unk_DE8E40);
}

id JSInlinePopup.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel) = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v6 = 0;
  v6[1] = 0;

  return JSObject.init(type:)(a1);
}

void sub_9E9E24()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel);
}

uint64_t JSSocialOnboardingVerticalStack.BarButtonItemKind.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 1701736292;
  }

  return 0xD000000000000010;
}

uint64_t sub_9E9F98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701736292;
  v5 = 0x8000000000B7CBC0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000000B7CBC0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C65636E6163;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 1701736292;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_9EA080()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9EA11C()
{
  sub_AB93F0();
}

Swift::Int sub_9EA1A4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9EA23C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore31JSSocialOnboardingVerticalStackC17BarButtonItemKindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9EA26C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701736292;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000000B7CBC0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSSocialOnboardingVerticalStack.pinnedChildViewModel.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_70E5C(v2);
  return v2;
}

uint64_t JSSocialOnboardingVerticalStack.isEditing.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSocialOnboardingVerticalStack.requiresValidation.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
  swift_beginAccess();
  return *(v0 + v1);
}

void *JSSocialOnboardingVerticalStack.nextStepButton.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSSocialOnboardingVerticalStack.cancelStepButton.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSSocialOnboardingVerticalStack.cancelBarButtonItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSSocialOnboardingVerticalStack.enqueueFinishEditingCallback()()
{
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF4EC0;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  sub_13C80(0, &qword_DE8ED0);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000000B80070;
  *(v4 + 48) = v0;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  v5 = v0;
  v6 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v4);
}

uint64_t JSSocialOnboardingVerticalStack.reportSelectionForBarButtonItem(_:impressions:pageDetailsProvider:)(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_AF8820;
  *(v10 + 56) = ObjectType;
  *(v10 + 32) = v4;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = 0xE400000000000000;
      v13 = 1701736292;
    }

    else
    {
      v12 = 0x8000000000B7CBC0;
      v13 = 0xD000000000000010;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x6C65636E6163;
  }

  *(v10 + 88) = &type metadata for String;
  *(v10 + 64) = v13;
  *(v10 + 72) = v12;
  if (a2)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v14 = a3;
    v15 = v4;

    v17 = sub_9ED890(v16, 0, a3);

    *(v11 + 120) = sub_13C80(0, &qword_DFA720);
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v10 + 120) = sub_13C80(0, &qword_DFA720);
    v18 = v4;
  }

  v17 = [objc_allocWithZone(NSNull) init];
LABEL_13:
  *(v11 + 96) = v17;
  sub_13C80(0, &qword_DE8ED0);
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = _swiftEmptyArrayStorage;
  *(v19 + 32) = 0xD00000000000001DLL;
  *(v19 + 40) = 0x8000000000B80090;
  *(v19 + 48) = v4;
  *(v19 + 56) = v9;
  *(v19 + 64) = 0;
  v20 = v4;
  v21 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v19);
}

uint64_t JSSocialOnboardingVerticalStack.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[0] = a1;
  v38[1] = a2;
  sub_F46A0(a3, v39);
  if (!v39[3])
  {

    goto LABEL_9;
  }

  sub_F46A0(v39, v37);
  type metadata accessor for JSGridItemButton();

  if (swift_dynamicCast())
  {
    v7 = v35;
    if (a1 == 0x706574537478656ELL && a2 == 0xEE006E6F74747542 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
LABEL_7:
      swift_beginAccess();
      v9 = *(v3 + v8);
      *(v3 + v8) = v7;

LABEL_52:
      __swift_destroy_boxed_opaque_existential_0(v37);
LABEL_53:
      sub_12E1C(v39, &unk_DE8E40);
    }

    if (a1 == 0xD000000000000010 && 0x8000000000B80130 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton;
      goto LABEL_7;
    }
  }

  if (swift_dynamicCast())
  {
    v11 = v36;
    if (a1 == 0xD000000000000017 && 0x8000000000B800F0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsHeaderText;
LABEL_20:
      v13 = (v3 + v12);
      swift_beginAccess();
      *v13 = v35;
      v13[1] = v11;

      goto LABEL_52;
    }

    if (a1 == 0xD000000000000017 && 0x8000000000B80110 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsFooterText;
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24F58);
  if (!swift_dynamicCast())
  {
LABEL_46:
    if (swift_dynamicCast())
    {
      if (a1 == 0x6E69746964457369 && a2 == 0xE900000000000067 || (sub_ABB3C0() & 1) != 0)
      {
        v25 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
LABEL_51:
        swift_beginAccess();
        *(v3 + v25) = v35;
        goto LABEL_52;
      }

      if (a1 == 0xD000000000000012 && 0x8000000000B800D0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v25 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
        goto LABEL_51;
      }
    }

    type metadata accessor for JSBarButtonItem();
    if (swift_dynamicCast())
    {
      v7 = v35;
      if (a1 == 0xD000000000000013 && 0x8000000000B4B4E0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem;
        goto LABEL_7;
      }
    }

    v26 = type metadata accessor for JSObject();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000014 && 0x8000000000B800B0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v34 = v26;
        v33[0] = v35;
        v27 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v33);
        if ((~v27 & 0xF000000000000007) != 0)
        {
          v28 = v27;
          v29 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel;
          swift_beginAccess();
          v30 = *(v3 + v29);
          *(v3 + v29) = v28;
          sub_2D4D8(v30);
        }

        goto LABEL_52;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v37);
LABEL_9:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_12E1C(v38, &unk_E27200);
  }

  result = 0x656956646C696863;
  v14 = v35;
  if (a1 != 0x656956646C696863 || a2 != 0xEF736C65646F4D77)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      goto LABEL_46;
    }
  }

  v32 = v3;
  if (!(v35 >> 62))
  {
    v15 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (v15)
    {
      goto LABEL_32;
    }

LABEL_73:
    v17 = _swiftEmptyArrayStorage;
LABEL_74:

    v31 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_childViewModelKinds;
    swift_beginAccess();
    *(v32 + v31) = v17;

    __swift_destroy_boxed_opaque_existential_0(v37);
    goto LABEL_53;
  }

  result = sub_ABB060();
  v15 = result;
  if (!result)
  {
    goto LABEL_73;
  }

LABEL_32:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = sub_9BAB18(v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v34 = type metadata accessor for JSObject();
      v33[0] = v19;
      v20 = v19;
      v21 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v33);
      if ((~v21 & 0xF000000000000007) != 0)
      {
        v22 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_A9877C(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_A9877C((v23 > 1), v24 + 1, 1, v17);
        }

        *(v17 + 2) = v24 + 1;
        *&v17[8 * v24 + 32] = v22;
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

id JSSocialOnboardingVerticalStack.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_childViewModelKinds) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel) = 0xF000000000000007;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation) = 1;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsHeaderText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsFooterText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem) = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_9EB068()
{

  sub_2D4D8(*(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel));

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem);
}

uint64_t _s11MusicJSCore31JSSocialOnboardingVerticalStackC17BarButtonItemKindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F6C8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9EB1F8()
{
  result = qword_E25D10;
  if (!qword_E25D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25D10);
  }

  return result;
}

uint64_t sub_9EB284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t JSUserNotificationAuthorizationViewModel.isModalInPresentation.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSUserNotificationAuthorizationViewModel.didCompleteUserNotificationAuthorization(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  v4 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  v5 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 8];
  v6 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 16];
  v7 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 24];
  v8 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 32];
  *v3 = a1;
  *(v3 + 1) = a2;
  *(v3 + 1) = xmmword_AFAA90;
  *(v3 + 4) = 0;

  sub_9EB4FC(v4, v5, v6, v7, v8);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF4EC0;
  *(v10 + 56) = type metadata accessor for JSUserNotificationAuthorizationViewModel();
  *(v10 + 32) = v2;
  sub_60044();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = _swiftEmptyArrayStorage;
  *(v11 + 32) = 0xD000000000000030;
  *(v11 + 40) = 0x8000000000B801A0;
  *(v11 + 48) = v2;
  *(v11 + 56) = v9;
  *(v11 + 64) = 0;
  v12 = v2;
  v13 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v11);
}

void sub_9EB4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t sub_9EB578()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall JSUserNotificationAuthorizationViewModel.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  if (_._countAndFlagsBits == 0xD000000000000038 && 0x8000000000B801E0 == _._object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v9);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v2 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext;
    v6 = *(v2 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext);
    if (v6)
    {
      v7 = *(v5 + 32);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0;
      v6(v4);

      v4 = v7;
    }
  }
}

uint64_t JSUserNotificationAuthorizationViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    if (swift_dynamicCast())
    {
      if (a1 == 0x4F7363697274656DLL && a2 == 0xEE0079616C726576 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
        swift_beginAccess();
        *(v3 + v7) = v10;

LABEL_14:
        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40);
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD000000000000015 && 0x8000000000B80220 == a2 || (sub_ABB3C0() & 1) != 0))
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
      swift_beginAccess();
      *(v3 + v8) = v10;
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v12, &unk_E27200);
}

id JSUserNotificationAuthorizationViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation] = 1;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  v6[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSUserNotificationAuthorizationViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation) = 1;
  v2 = v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_9EBA28()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 32);

  sub_9EB4FC(v1, v2, v3, v4, v5);
}

id JSUserNotificationAuthorizationViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSUserNotificationAuthorizationViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9EBAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_9EBB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_9EBB60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t sub_9EBC10(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  result = sub_ABB060();
  v2 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      for (i = 0; i != v2; ++i)
      {
        sub_9BAB18(i, v1);
        type metadata accessor for JSSettingsAuthenticationSection();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v5 = v6;

          v3 = v5;
        }

        else
        {
          type metadata accessor for JSSettingsSection();
          if (swift_dynamicCastClass())
          {
            swift_unknownObjectRetain();
            sub_AB9730();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }

    else
    {
      type metadata accessor for JSSettingsAuthenticationSection();
      v3 = 0;
      v7 = 32;
      do
      {
        v10 = *(v1 + v7);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v8 = v11;
          v9 = v10;

          v3 = v8;
        }

        else
        {
          type metadata accessor for JSSettingsSection();
          if (swift_dynamicCastClass())
          {
            v12 = v10;
            sub_AB9730();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();
          }
        }

        v7 += 8;
        --v2;
      }

      while (v2);
    }

    if (!v3)
    {
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t JSTabComponentController.Identifier.contentViewAccessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = AccessibilityIdentifier.radioContentView.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.videosContentView.unsafeMutableAddressor();
    }
  }

  else if (a1)
  {
    v1 = AccessibilityIdentifier.browseContentView.unsafeMutableAddressor();
  }

  else
  {
    v1 = AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

uint64_t JSTabComponentController.__allocating_init(identifier:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_9EC038(a1, a2, a3);

  return v8;
}

uint64_t JSTabComponentController.init(identifier:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_9EC038(a1, a2, a3);

  return v3;
}

uint64_t sub_9EBFA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore24JSTabComponentController_identifier + 8);

  return v1;
}

uint64_t sub_9EC038(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD000000000000013;
  v5 = v3 + OBJC_IVAR____TtC11MusicJSCore24JSTabComponentController_identifier;
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  v6 = "browseTabController";
  v7 = "videosTabController";
  v8 = 0xD000000000000012;
  if (a1 != 2)
  {
    v8 = 0xD000000000000013;
    v7 = "e24JSTabComponentController";
  }

  if (a1)
  {
    v6 = "radioTabController";
  }

  if (a1 > 1u)
  {
    v4 = v8;
    v6 = v7;
  }

  v12[0] = _swiftEmptyArrayStorage;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v4;
  v12[4] = v6 | 0x8000000000000000;
  v13 = 0;

  return sub_A8F47C(v12, v3, a2, a3);
}

unint64_t sub_9EC11C()
{
  result = qword_E25D80;
  if (!qword_E25D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E25D80);
  }

  return result;
}

uint64_t type metadata accessor for JSTabComponentController()
{
  result = qword_E25DB0;
  if (!qword_E25DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9EC238(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSSettingsLink.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSettingsLink.description.getter()
{
  v1 = v0;
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  sub_ABAF70();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v15._countAndFlagsBits = v9;
    v15._object = v8;
    sub_AB94A0(v15);

    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    sub_AB94A0(v16);
    v17._countAndFlagsBits = 0x3D2074786574203BLL;
    v17._object = 0xEA00000000002220;
    sub_AB94A0(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  return 0;
}

uint64_t JSSettingsLink.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_F46A0(a3, v12);
  if (v12[3])
  {
    sub_F46A0(v12, v10);

    if (swift_dynamicCast())
    {
      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
        swift_beginAccess();
        *v6 = v8;
        v6[1] = v9;

        __swift_destroy_boxed_opaque_existential_0(v10);
        sub_12E1C(v12, &unk_DE8E40);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
  }

  return sub_12E1C(v11, &unk_E27200);
}

id JSSettingsLink.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsLink.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsLink.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9EC744@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t JSStaticImageViewModel.staticImageViewModelDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSStaticImageViewModel.staticImageViewModelDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

id sub_9EC8FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_9EC9CC(v4, v5, v6);
}

id JSStaticImageViewModel.imageResource.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v2 = *v1;
  sub_9EC9CC(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

id sub_9EC9CC(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2BA40(result, a2, a3 & 1);
  }

  return result;
}

void sub_9EC9E4(void *a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  sub_9EC9CC(a1, a2, a3);
  sub_1D3AA0(v8, v9, v10);
  v11 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v3, ObjectType, v12);
    sub_1D3AA0(a1, a2, a3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D3AA0(a1, a2, a3);
  }
}

uint64_t JSStaticImageViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_F46A0(a3, v27);
  if (v27[3])
  {
    sub_F46A0(v27, v25);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000011 && 0x8000000000B803F0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
        swift_beginAccess();
        v8 = *v7;
        v9 = *(v7 + 8);
        *v7 = v23;
        *(v7 + 8) = v24;
        v10 = *(v7 + 16);
        *(v7 + 16) = 0;

        sub_1D3AA0(v8, v9, v10);
        v11 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v3, ObjectType, v12);
          swift_unknownObjectRelease();
        }

LABEL_18:
        __swift_destroy_boxed_opaque_existential_0(v25);
        sub_12E1C(v27, &unk_DE8E40);
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
        swift_beginAccess();
        v15 = *v14;
        v16 = *(v14 + 8);
        *v14 = v23;
        *(v14 + 8) = 0;
        v17 = *(v14 + 16);
        *(v14 + 16) = 1;
        v18 = v23;
        sub_1D3AA0(v15, v16, v17);
        v19 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = *(v19 + 8);
          v21 = swift_getObjectType();
          (*(v20 + 8))(v3, v21, v20);
          swift_unknownObjectRelease();
        }

        goto LABEL_18;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v26, &unk_E27200);
}

id JSStaticImageViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  *(v6 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSStaticImageViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = v1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v5 = 0;
  v5[1] = 0;

  return JSObject.init(type:)(a1);
}

void sub_9ECF88()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource + 16);

  sub_1D3AA0(v1, v2, v3);
}

id JSStaticImageViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSStaticImageViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_9ED02C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_9EC9CC(*a1, v2, v3);
  sub_9EC9E4(v1, v2, v3);
}

id JSImpressionsBatch.__allocating_init(impressions:location:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v7 = objc_allocWithZone(v3);
    v8 = sub_9ED890(a1, a2, a3);
  }

  else
  {

    return 0;
  }

  return v8;
}

{
  v7 = objc_allocWithZone(v3);
  v8 = sub_9ED890(a1, a2, a3);

  return v8;
}

id JSImpressionsBatch.init(impressions:location:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_9ED890(a1, a2, a3);

  return v4;
}

uint64_t JSImpressionsBatch.debugDescription.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_ABAD90(55);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v12, "debugDescription");
  v4 = sub_AB92A0();
  v6 = v5;

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  sub_AB94A0(v15);

  v16._countAndFlagsBits = 0x73736572706D490ALL;
  v16._object = 0xEE00203A736E6F69;
  sub_AB94A0(v16);
  type metadata accessor for JSImpression();
  v17._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v17);

  v18._countAndFlagsBits = 0x6F697461636F4C0ALL;
  v18._object = 0xEB00000000203A6ELL;
  sub_AB94A0(v18);
  if (!*&v1[OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_location])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF4EC0;
    *(v7 + 32) = sub_97420(_swiftEmptyArrayStorage);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  v8 = sub_AB9770();
  v10 = v9;

  v19._countAndFlagsBits = v8;
  v19._object = v10;
  sub_AB94A0(v19);

  v20._object = 0x8000000000B80470;
  v20._countAndFlagsBits = 0xD000000000000016;
  sub_AB94A0(v20);
  swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25E40);
  v21._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v21);

  return v13;
}

id JSImpressionsBatch.__allocating_init(impressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_9ED890(a1, 0, a2);

  return v6;
}

BOOL JSImpressionsBatch.isEmpty.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_impressions);
  if (v1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 == 0;
}

uint64_t sub_9ED550()
{

  return swift_unknownObjectWeakDestroy();
}

id JSImpression.__allocating_init(fields:jsObject:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_9EDB80(a1, a2);

  return v6;
}

id JSImpression.init(fields:jsObject:)(uint64_t a1, void *a2)
{
  v3 = sub_9EDB80(a1, a2);

  return v3;
}

uint64_t JSImpression.debugDescription.getter()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, "debugDescription");
  v2 = sub_AB92A0();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  sub_AB94A0(v9);
  v10._countAndFlagsBits = sub_AB9000();
  sub_AB94A0(v10);

  return v7;
}

id sub_9ED890(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = 0x6973736572706D69;
  *(inited + 40) = 0xEB00000000736E6FLL;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FD8);
  *(inited + 48) = a1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  if (a2)
  {
    *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF678);
    *&v17 = a2;
    sub_9ACFC(&v17, (inited + 96));
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v9 = objc_allocWithZone(NSNull);

    v10 = [v9 init];
    *(inited + 120) = sub_13C80(0, &qword_E27CD0);
    *(inited + 96) = v10;
    if (*(&v18 + 1))
    {
      sub_9BC10(&v17);
    }
  }

  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000000B7D740;
  *(inited + 168) = sub_13C80(0, &qword_DFA720);
  if (a3)
  {

    v11 = a3;
  }

  else
  {
    v12 = objc_allocWithZone(NSNull);

    v11 = [v12 init];
  }

  *(inited + 144) = v11;
  v13 = a3;
  v14 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_impressions) = a1;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_location) = a2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v15 + 32) = v14;
  v17 = v15;
  v18 = 0uLL;
  v19 = 1;
  v20 = 0;
  return JSObject.init(type:)(&v17);
}

id sub_9EDB80(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  *(inited + 48) = a1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x7463656A626FLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 120) = sub_13C80(0, &qword_DFA720);
  if (a2)
  {

    v7 = a2;
  }

  else
  {
    v8 = objc_allocWithZone(NSNull);

    v7 = [v8 init];
  }

  *(inited + 96) = v7;
  v9 = a2;
  v10 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  *(v2 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  *(v11 + 32) = v10;
  v13[0] = v11;
  memset(&v13[1], 0, 24);
  v13[4] = 1;
  v14 = 0;
  return JSObject.init(type:)(v13);
}

uint64_t JSSiriAceRequest.utterance.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSiriAceRequest.shouldReplay.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Void __swiftcall JSSiriAceRequest.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v2 = _._countAndFlagsBits == 1684956531 && _._object == 0xE400000000000000;
  if (v2 || (sub_ABB3C0() & 1) != 0)
  {

    sub_9EDFB8();
  }
}

void sub_9EDFB8()
{
  v1 = sub_AB4BC0();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
  swift_beginAccess();
  v6 = v0[v5];
  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_E23F98 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.scripting;
    sub_AB4BD0();
    v12 = sub_AB4BA0();
    v13 = sub_AB9F30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "[JSSiriAceRequest] ShouldReplay is false or missing", v14, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = [objc_opt_self() sharedProvider];
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    aBlock[4] = sub_9EF744;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6E8288;
    aBlock[3] = &block_descriptor_262;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v7 getTokenForcingRefresh:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t JSSiriAceRequest.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_F46A0(a3, v19);
  if (!v19[3])
  {

    return sub_12E1C(v18, &unk_E27200);
  }

  sub_F46A0(v19, v17);

  if (swift_dynamicCast())
  {
    v7 = v15;
    v6 = v16;
    if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065 || (sub_ABB3C0() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance;
LABEL_21:
      v12 = (v3 + v8);
      swift_beginAccess();
      *v12 = v7;
LABEL_22:
      v12[1] = v6;
LABEL_23:

      goto LABEL_24;
    }
  }

  if (!swift_dynamicCast() || ((v10 = v15, a1 != 0x6552646C756F6873) || a2 != 0xEC00000079616C70) && (sub_ABB3C0() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
      v7 = v15;
      v6 = v16;
      if (a1 == 0xD000000000000011 && 0x8000000000B80580 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier;
        goto LABEL_21;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    if (swift_dynamicCast())
    {
      if (a1 == 0x5564616F6C796170 && a2 == 0xEF61746144726573 || (sub_ABB3C0() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData;
        swift_beginAccess();
        *(v3 + v13) = v15;
        goto LABEL_23;
      }
    }

    if (swift_dynamicCast())
    {
      v10 = v15;
      if (a1 == 0xD000000000000015 && 0x8000000000B80540 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
        goto LABEL_15;
      }

      if (a1 == 0xD000000000000015 && 0x8000000000B80560 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
        goto LABEL_15;
      }

      if (a1 == 0x7246736579457369 && a2 == 0xEA00000000006565 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
        goto LABEL_15;
      }
    }

    if (swift_dynamicCast())
    {
      v6 = v16;
      if (a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_inputOrigin;
LABEL_51:
        v12 = (v3 + v14);
        swift_beginAccess();
        *v12 = v15;
        goto LABEL_22;
      }

      if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_interactionType;
        goto LABEL_51;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
    return sub_12E1C(v18, &unk_E27200);
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
LABEL_15:
  swift_beginAccess();
  *(v3 + v11) = v10;
LABEL_24:
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_12E1C(v19, &unk_DE8E40);
}

void sub_9EE748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_E23F98 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.scripting;
    sub_AB4BD0();
    swift_errorRetain();
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      aBlock[6] = a3;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
      v15 = sub_AB9350();
      v17 = sub_425E68(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "[JSSiriAceRequest] error refreshing client token %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = (a4 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
    swift_beginAccess();
    v19 = v18[1];
    if (v19)
    {
      v20 = *v18;

      v21 = sub_9EEA50(v20, v19);
    }

    else
    {
      v21 = sub_9EED40();
    }

    aBlock[4] = sub_9EF22C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1811AC;
    aBlock[3] = &block_descriptor_3_13;
    v22 = _Block_copy(aBlock);
    [v21 performRequestWithCompletion:v22];
    _Block_release(v22);
  }
}

id sub_9EEA50(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.scripting;
  sub_AB4BD0();

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_425E68(a1, a2, v22);
    _os_log_impl(&dword_0, v11, v12, "[JSSiriAceRequest] Creating utterance based request for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_allocWithZone(SAStartRequest) init];
  v16 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  [v15 setEyesFree:*(v3 + v16)];
  swift_beginAccess();

  v17 = sub_AB9260();

  [v15 setInputOrigin:v17];

  v18 = sub_AB9260();
  [v15 setUtterance:v18];

  result = [objc_allocWithZone(AFSiriAceRequest) initWithStartRequest:v15 requestOptions:0];
  if (result)
  {
    v20 = result;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_9EED40()
{
  v1 = sub_AB4BC0();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.scripting;
  sub_AB4BD0();
  v6 = v0;
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315138;
    v11 = &v6[OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier];
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_425E68(v13, v12, v32);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "[JSSiriAceRequest] Creating directInvocation request for identifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  v15 = objc_allocWithZone(SKIDirectInvocationPayload);

  v16 = sub_AB9260();

  v17 = [v15 initWithIdentifier:v16];

  v18 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData;
  swift_beginAccess();
  if (*&v6[v18])
  {

    isa = sub_AB8FD0().super.isa;

    [v17 setUserData:isa];
  }

  v20 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v21 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
  swift_beginAccess();
  [v20 setVoiceTriggerEnabled:v6[v21]];
  v22 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
  swift_beginAccess();
  [v20 setTextToSpeechEnabled:v6[v22]];
  v23 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  [v20 setEyesFree:v6[v23]];
  swift_beginAccess();

  v24 = sub_AB9260();

  [v20 setInputOrigin:v24];

  swift_beginAccess();

  v25 = sub_AB9260();

  [v20 setInteractionType:v25];

  v26 = objc_opt_self();
  v27 = [v26 runSiriKitExecutorCommandWithContext:v20 payload:v17];
  v28 = [v26 wrapCommandInStartLocalRequest:v27];
  result = [objc_allocWithZone(AFSiriAceRequest) initWithStartLocalRequest:v28 requestOptions:0];
  if (result)
  {
    v30 = result;

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9EF22C(char a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E23F98 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.scripting;
  sub_AB4BD0();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_425E68(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "[JSSiriAceRequest] AFSiriAceRequest result %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return (*(v3 + 8))(v5, v2);
}

id JSSiriAceRequest.init(type:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay) = 2;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier);
  *v4 = 0xD00000000000002CLL;
  v4[1] = 0x8000000000B7D5A0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree) = 1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_inputOrigin);
  *v5 = sub_AB92A0();
  v5[1] = v6;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_interactionType);
  *v7 = sub_AB92A0();
  v7[1] = v8;

  return JSObject.init(type:)(a1);
}

uint64_t sub_9EF55C()
{
}

void sub_9EF668(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1684956531 && a2 == 0xE400000000000000;
  if (v2 || (sub_ABB3C0() & 1) != 0)
  {
    sub_9EDFB8();
  }
}

uint64_t sub_9EF70C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_262(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9EF76C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_9EF81C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSToggleSelectorViewModel.footerText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSToggleSelectorViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25F20);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
        swift_beginAccess();
        *(v3 + v7) = v10;
LABEL_14:

        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;
        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v13, &unk_E27200);
}

id JSToggleSelectorViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  *(v6 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSToggleSelectorViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items) = _swiftEmptyArrayStorage;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9EFC08()
{
}

id JSToggleSelectorViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSToggleSelectorViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9EFCA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_9EFD04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id JSObject.init(type:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v21 = objc_allocWithZone(NSUUID);

      v22 = [v21 init];
      v23 = [v22 UUIDString];

      v24 = sub_AB92A0();
      v26 = v25;

      v27 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *v27 = v24;
      v27[1] = v26;
      v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
      v53.receiver = v1;
      v53.super_class = type metadata accessor for JSObject();
      v28 = objc_msgSendSuper2(&v53, "init");
      v29 = qword_E23F48;
      v30 = v28;
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = static JSBridge.shared;
      sub_60044();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;
      *(v32 + 32) = v3;
      *(v32 + 40) = v2;
      *(v32 + 48) = v4 & 1;
      v33 = v30;
      v34 = v31;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F02A0, v32);

      sub_9F02B0(a1);

      return v33;
    }

    else
    {
      v37 = [objc_allocWithZone(NSUUID) init];
      v38 = [v37 UUIDString];

      v39 = sub_AB92A0();
      v41 = v40;

      v42 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *v42 = v39;
      v42[1] = v41;
      v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
      v54.receiver = v1;
      v54.super_class = type metadata accessor for JSObject();
      return objc_msgSendSuper2(&v54, "init");
    }
  }

  else if (*(a1 + 40))
  {
    v36 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v36 = v3;
    v36[1] = v2;
    v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
    v52.receiver = v1;
    v52.super_class = type metadata accessor for JSObject();
    return objc_msgSendSuper2(&v52, "init");
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = (*(a1 + 17) << 8) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 40) | v4;
    v8 = objc_allocWithZone(NSUUID);
    v49 = v3;

    sub_9F02E0(v2, v7, v5, v6);
    v9 = [v8 init];
    v10 = [v9 UUIDString];

    v11 = sub_AB92A0();
    v13 = v12;

    v14 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v14 = v11;
    v14[1] = v13;
    v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
    v51.receiver = v1;
    v51.super_class = type metadata accessor for JSObject();
    v15 = objc_msgSendSuper2(&v51, "init");
    v16 = qword_E23F48;
    v48 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v47 = static JSBridge.shared;
    if (v6 == 1)
    {
      v46 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v46 = v7;
      v17 = v5;
      v18 = v6;
      v19 = v2;
    }

    sub_60044();
    v43 = swift_allocObject();
    *(v43 + 16) = v48;
    *(v43 + 24) = v47;
    *(v43 + 32) = v46;
    *(v43 + 40) = v17;
    *(v43 + 48) = v18;
    *(v43 + 56) = v49;
    *(v43 + 64) = v19 & 1;
    sub_9F02E0(v2, v7, v5, v6);
    sub_9F02E0(v2, v7, v5, v6);
    v44 = v48;
    v45 = v47;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F035C, v43);

    sub_9F02B0(a1);
    sub_9F0370(v2, v7, v5, v6);
    sub_9F0370(v2, v7, v5, v6);

    return v44;
  }
}

uint64_t sub_9F0258()
{

  return swift_deallocObject();
}

unint64_t sub_9F02E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_9B3BE4(a2, a3, a4);
  }

  return result;
}

uint64_t sub_9F02FC()
{
  if (*(v0 + 48))
  {
    sub_9B360C(*(v0 + 32));
  }

  return swift_deallocObject();
}

void sub_9F0370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_9F038C(a2, a3, a4);
  }
}

uint64_t sub_9F038C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_9B360C(result);
  }

  return result;
}

id JSObject.__deallocating_deinit()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    v4 = *&v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    v3 = *&v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
    sub_60044();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v4;
    v5[4] = v3;

    v6 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F054C, v5);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSObject();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t JSObject.nativeBridgeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);

  return v1;
}

uint64_t JSObject.isEqual(_:)(uint64_t a1)
{
  sub_F46A0(a1, v18);
  v3 = v19;
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v4 = *(v3 - 8);
    v5 = __chkstk_darwin();
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_ABB3A0();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for JSObject();
  v17.receiver = v1;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = 1;
    return v11 & 1;
  }

  sub_F46A0(a1, v18);
  if (!v19)
  {
    sub_9BC10(v18);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v12 = v16;
  if (*&v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier] == *&v16[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier] && *&v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8] == *&v16[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8])
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore8JSBridgeC20ScriptingConstructorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore8JSObjectC33NativelyInstantiatedObjectOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore8JSObjectC4TypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_9F0A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_9F0AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_9F0AF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t objectdestroy_5Tm_2()
{

  return swift_deallocObject();
}

id JSStoreHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v50 = &v49 - v6;
  v53 = sub_AB3430();
  v51 = *(v53 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[0] = _swiftEmptyArrayStorage;
  memset(&v61[1], 0, 24);
  v61[4] = 1;
  v62 = 0;
  v8 = JSObject.init(type:)(v61);
  v9 = qword_E23F48;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static JSBridge.shared;
  v60 = &type metadata for Int;
  *&v59 = a1;
  v12 = sub_13C80(0, &qword_DE8ED0);
  sub_15F84(&v59, &v57, &unk_DE8E40);
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = v58;
  *(v13 + 24) = v57;
  *(v13 + 40) = v14;
  *(v13 + 56) = 0x737574617473;
  *(v13 + 64) = 0xE600000000000000;
  *(v13 + 72) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = 0;
  v15 = v10;
  v16 = v11;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F12C0, v13);

  sub_12E1C(&v59, &unk_DE8E40);
  sub_15F84(a2, &v57, &unk_DE8E40);
  v17 = a2;
  if (*(&v58 + 1))
  {
    sub_9ACFC(&v57, &v59);
    sub_808B0(&v59, &v57);
    sub_15F84(&v57, v56, &unk_DE8E40);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = v56[1];
    *(v18 + 24) = v56[0];
    *(v18 + 40) = v19;
    *(v18 + 56) = 0x74757074756FLL;
    *(v18 + 64) = 0xE600000000000000;
    *(v18 + 72) = v15;
    *(v18 + 80) = v16;
    *(v18 + 88) = 0;
    v20 = v15;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v18);

    sub_12E1C(&v57, &unk_DE8E40);
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    sub_12E1C(&v57, &unk_DE8E40);
  }

  v22 = v55;
  v52 = v12;
  if (v55)
  {
    v23 = v55;
    v24 = ICURLPerformanceMetrics.JSSerialized.getter();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *&v59 = v24;
    sub_15F84(&v59, &v57, &unk_DE8E40);
    v25 = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = v58;
    *(v26 + 24) = v57;
    *(v26 + 40) = v27;
    *(v26 + 56) = 0xD000000000000012;
    *(v26 + 64) = 0x8000000000B6C300;
    *(v26 + 72) = v15;
    *(v26 + 80) = v16;
    *(v26 + 88) = 0;
    v28 = v15;
    v29 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v26);
    v17 = v25;
    v22 = v55;

    sub_12E1C(&v59, &unk_DE8E40);
  }

  v30 = v54;
  v31 = v50;
  sub_15F84(v54, v50, &unk_E01230);
  v32 = v51;
  v33 = v53;
  if ((*(v51 + 48))(v31, 1, v53) == 1)
  {

    sub_12E1C(v30, &unk_E01230);
    sub_12E1C(v17, &unk_DE8E40);
    v34 = v31;
    v35 = &unk_E01230;
  }

  else
  {
    v36 = *(v32 + 32);
    v55 = v17;
    v37 = v49;
    v36(v49, v31, v33);
    sub_13C80(0, &qword_E24D80);
    v38 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
    isa = sub_AB3370().super.isa;
    v40 = [v38 stringFromDate:isa];

    v41 = sub_AB92A0();
    v43 = v42;

    v60 = &type metadata for String;
    *&v59 = v41;
    *(&v59 + 1) = v43;
    sub_15F84(&v59, &v57, &unk_DE8E40);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = v58;
    *(v44 + 24) = v57;
    *(v44 + 40) = v45;
    strcpy((v44 + 56), "expirationDate");
    *(v44 + 71) = -18;
    *(v44 + 72) = v15;
    *(v44 + 80) = v16;
    *(v44 + 88) = 0;
    v46 = v15;
    v47 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v44);

    sub_12E1C(v54, &unk_E01230);
    sub_12E1C(v55, &unk_DE8E40);
    (*(v32 + 8))(v37, v53);
    v34 = &v59;
    v35 = &unk_DE8E40;
  }

  sub_12E1C(v34, v35);
  return v15;
}

uint64_t objectdestroyTm_27()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

id JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24 = 3;
  v13 = objc_allocWithZone(v12);
  v14 = JSWhatsNewFeaturedItemViewModel.init(type:)(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v17;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5520();
  return v20;
}

uint64_t JSWhatsNewFeaturedItemViewModel.imageContext.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t sub_9F1708(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_9F1768()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F17BC()
{
  sub_AB93F0();
}

Swift::Int sub_9F17F4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F1844@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore31JSWhatsNewFeaturedItemViewModelC13NativeFeatureO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t JSWhatsNewFeaturedItemViewModel.ImageContext.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D49656C646E7562;
  }

  else
  {
    return 0x6D496D6574737973;
  }
}

uint64_t sub_9F18CC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6D49656C646E7562;
  }

  else
  {
    v2 = 0x6D496D6574737973;
  }

  if (*a2)
  {
    v3 = 0x6D49656C646E7562;
  }

  else
  {
    v3 = 0x6D496D6574737973;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_9F1960()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F19E4()
{
  sub_AB93F0();
}

Swift::Int sub_9F1A54()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_9F1AE0(uint64_t *a1@<X8>)
{
  v2 = 0x6D496D6574737973;
  if (*v1)
  {
    v2 = 0x6D49656C646E7562;
  }

  *a1 = v2;
  a1[1] = 0xEB00000000656761;
}

unint64_t JSWhatsNewFeaturedItemViewModel.ImageBundleIdentifier.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_9F1B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "temImage";
  }

  else
  {
    v4 = "musicApplication";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "musicApplication";
  }

  else
  {
    v7 = "temImage";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_9F1C18()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F1C9C()
{
  sub_AB93F0();
}

Swift::Int sub_9F1D0C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_9F1D98(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "musicApplication";
  }

  else
  {
    v3 = "temImage";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.title.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$title.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.subtitle.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$subtitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$subtitle.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.imageName.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageName.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

uint64_t JSWhatsNewFeaturedItemViewModel.imageContext.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9F28F8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9F2978(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

void (*JSWhatsNewFeaturedItemViewModel.imageContext.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BCE8C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageContext.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FE8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageContext.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF0);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FE8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.additionalDescription.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$additionalDescription.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$additionalDescription.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_9F3134@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$additionalDescriptionLinkTitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$additionalDescriptionLinkTitle.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_9F3554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_AB5520();
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.nativeFeature.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$nativeFeature.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26020);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26018);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$nativeFeature.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26020);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26018);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t sub_9F3994(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.imageBundleIdentifier.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_AB5500();
  return sub_6BE0F8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageBundleIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26038);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26030);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageBundleIdentifier.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26038);
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

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26030);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

uint64_t JSWhatsNewFeaturedItemViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_F46A0(a3, v18);
  if (v18[3])
  {
    sub_F46A0(v18, v16);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_6;
      }

      if (a1 == 0x6E6F436567616D69 && a2 == 0xEC00000074786574 || (sub_ABB3C0() & 1) != 0)
      {
        v9._rawValue = &off_D4E1D0;
        v10 = sub_ABB140(v9, v15);

        if (v10 > 1)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (a1 == 0xD000000000000015 && 0x8000000000B63370 == a2 || (sub_ABB3C0() & 1) != 0 || a1 == 0xD00000000000001ELL && 0x8000000000B80720 == a2 || (sub_ABB3C0() & 1) != 0)
      {
LABEL_6:
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(v16);
        sub_12E1C(v18, &unk_DE8E40);
      }

      if (a1 == 0x654665766974616ELL && a2 == 0xED00006572757461 || (sub_ABB3C0() & 1) != 0)
      {
        v11._rawValue = &off_D4E220;
        v12 = sub_ABB140(v11, v15);

        if (v12 > 2)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (a1 == 0xD000000000000015 && 0x8000000000B80740 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v13._rawValue = &off_D4E288;
        v14 = sub_ABB140(v13, v15);

        if (v14 > 1)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v17, &unk_E27200);
}

id JSWhatsNewFeaturedItemViewModel.init(type:)(uint64_t a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26030);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26018);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FE8);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_AB54D0();
  v17 = *(v13 + 32);
  v17(v1 + v16, v15, v12);
  v18 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_AB54D0();
  v17(v1 + v18, v15, v12);
  v19 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_AB54D0();
  v17(v1 + v19, v15, v12);
  v20 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  LOBYTE(v42) = 0;
  sub_AB54D0();
  (*(v9 + 32))(v1 + v20, v11, v32);
  v21 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v42 = 0;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  sub_AB54D0();
  v22 = v34;
  v23 = *(v33 + 32);
  v23(v1 + v21, v8, v34);
  v24 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle;
  v42 = 0;
  v43 = 0;
  sub_AB54D0();
  v23(v1 + v24, v8, v22);
  v25 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  LOBYTE(v42) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26008);
  v26 = v35;
  sub_AB54D0();
  (*(v36 + 32))(v1 + v25, v26, v37);
  v27 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  LOBYTE(v42) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26028);
  v28 = v38;
  sub_AB54D0();
  (*(v39 + 32))(v1 + v27, v28, v40);
  v29 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v30 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v30 = 0;
  v30[1] = 0;
  return JSObject.init(type:)(v41);
}

uint64_t sub_9F4994()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FE8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle, v7);
  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26018);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26030);
  v13 = *(*(v12 - 8) + 8);

  return v13(v0 + v11, v12);
}

uint64_t _s11MusicJSCore31JSWhatsNewFeaturedItemViewModelC13NativeFeatureO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E220;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9F4E58()
{
  result = qword_E26040;
  if (!qword_E26040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26040);
  }

  return result;
}

unint64_t sub_9F4EB0()
{
  result = qword_E26048;
  if (!qword_E26048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26048);
  }

  return result;
}

unint64_t sub_9F4F08()
{
  result = qword_E26050;
  if (!qword_E26050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26050);
  }

  return result;
}

uint64_t type metadata accessor for JSWhatsNewFeaturedItemViewModel()
{
  result = qword_E26080;
  if (!qword_E26080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9F4FB0()
{
  sub_299798(319, &qword_DFE858);
  if (v0 <= 0x3F)
  {
    sub_299798(319, &qword_E26090);
    if (v1 <= 0x3F)
    {
      sub_3641C(319, &qword_E26098, &unk_DEE6F0);
      if (v2 <= 0x3F)
      {
        sub_3641C(319, &qword_E260A0, &qword_E26008);
        if (v3 <= 0x3F)
        {
          sub_3641C(319, &qword_E260A8, &qword_E26028);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

id JSMusicKitHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v7 = &v46 - v6;
  v8 = sub_AB3430();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin();
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = _swiftEmptyArrayStorage;
  memset(&v57[1], 0, 24);
  v57[4] = 1;
  v58 = 0;
  v10 = JSObject.init(type:)(v57);
  v11 = qword_E23F48;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  ObjectType = &type metadata for Int;
  v55[0] = a1;
  v14 = sub_13C80(0, &qword_DE8ED0);
  sub_15F84(v55, &v53, &unk_DE8E40);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  v16 = v54;
  *(v15 + 24) = v53;
  *(v15 + 40) = v16;
  *(v15 + 56) = 0x737574617473;
  *(v15 + 64) = 0xE600000000000000;
  *(v15 + 72) = v12;
  *(v15 + 80) = v13;
  *(v15 + 88) = 0;
  v17 = v12;
  v18 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F12C0, v15);

  sub_12E1C(v55, &unk_DE8E40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v55[0] = a2;
    sub_15F84(v55, &v53, &unk_DE8E40);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = v54;
    *(v19 + 24) = v53;
    *(v19 + 40) = v20;
    *(v19 + 56) = 0x74757074756FLL;
    *(v19 + 64) = 0xE600000000000000;
    *(v19 + 72) = v17;
    *(v19 + 80) = v18;
    *(v19 + 88) = 0;
    v21 = v17;
    v22 = v18;
    swift_unknownObjectRetain();
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v19);

    sub_12E1C(v55, &unk_DE8E40);
  }

  v52 = v14;
  if (v48)
  {
    v23 = sub_A9767C(v48);

    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    v55[0] = v23;
    sub_15F84(v55, &v53, &unk_DE8E40);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = v54;
    *(v24 + 24) = v53;
    *(v24 + 40) = v25;
    *(v24 + 56) = 0xD000000000000012;
    *(v24 + 64) = 0x8000000000B6C300;
    *(v24 + 72) = v17;
    *(v24 + 80) = v18;
    *(v24 + 88) = 0;
    v26 = v17;
    v27 = v18;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v24);

    sub_12E1C(v55, &unk_DE8E40);
  }

  v28 = v51;
  sub_15F84(v51, v7, &unk_E01230);
  v29 = v49;
  v30 = v50;
  if ((*(v49 + 48))(v7, 1, v50) == 1)
  {
    sub_12E1C(v28, &unk_E01230);

    swift_unknownObjectRelease();
    v31 = v7;
    v32 = &unk_E01230;
  }

  else
  {
    v33 = v47;
    (*(v29 + 32))(v47, v7, v30);
    sub_13C80(0, &qword_E24D80);
    v34 = v29;
    v35 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
    isa = sub_AB3370().super.isa;
    v37 = [v35 stringFromDate:isa];

    v38 = sub_AB92A0();
    v40 = v39;

    ObjectType = &type metadata for String;
    v55[0] = v38;
    v55[1] = v40;
    sub_15F84(v55, &v53, &unk_DE8E40);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = v54;
    *(v41 + 24) = v53;
    *(v41 + 40) = v42;
    strcpy((v41 + 56), "expirationDate");
    *(v41 + 71) = -18;
    *(v41 + 72) = v17;
    *(v41 + 80) = v18;
    *(v41 + 88) = 0;
    v43 = v17;
    v44 = v18;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v41);

    swift_unknownObjectRelease();
    sub_12E1C(v28, &unk_E01230);
    (*(v34 + 8))(v33, v30);
    v31 = v55;
    v32 = &unk_DE8E40;
  }

  sub_12E1C(v31, v32);
  return v17;
}

NSString sub_9F58E8()
{
  result = sub_AB9260();
  static JSSearchLandingViewModel.itemsDidChangeNotification = result;
  return result;
}

uint64_t *JSSearchLandingViewModel.itemsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_E23FB8 != -1)
  {
    swift_once();
  }

  return &static JSSearchLandingViewModel.itemsDidChangeNotification;
}

id static JSSearchLandingViewModel.itemsDidChangeNotification.getter()
{
  if (qword_E23FB8 != -1)
  {
    swift_once();
  }

  v1 = static JSSearchLandingViewModel.itemsDidChangeNotification;

  return v1;
}

uint64_t JSSearchLandingViewModel.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSearchLandingViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9F5AE8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_9F5B6C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSearchLandingViewModel.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E260E8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9F5C5C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E260E8);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9F5CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26138);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E260E8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSearchLandingViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_F46A0(a3, v27);
  if (v27[3])
  {
    sub_F46A0(v27, v25);

    if (swift_dynamicCast())
    {
      v7 = v24;
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
        swift_beginAccess();
        *v8 = v23;
        v8[1] = v7;

        v9 = v3 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_19:
          __swift_destroy_boxed_opaque_existential_0(v25);
          sub_12E1C(v27, &unk_DE8E40);
        }

        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v3, ObjectType, v10);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246B0);
    if (swift_dynamicCast())
    {
      v12 = v23;
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = sub_AB5500();
        *v14 = _swiftEmptyArrayStorage;

        v13(v22, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v3;
        v16 = sub_AB5500();
        sub_9A14FC(v12);
        v16(v22, 0);

        v17 = [objc_opt_self() defaultCenter];
        if (qword_E23FB8 != -1)
        {
          swift_once();
        }

        [v17 postNotificationName:static JSSearchLandingViewModel.itemsDidChangeNotification object:v15];

        v18 = v15 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 8);
        v20 = swift_getObjectType();
        (*(v19 + 8))(v15, v20, v19);
        goto LABEL_18;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v26, &unk_E27200);
}

id JSSearchLandingViewModel.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E260E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel__items;
  v12[1] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246B0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v8, v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v10 = 0;
  v10[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_9F63F4()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate);

  v1 = OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E260E8);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for JSSearchLandingViewModel()
{
  result = qword_E26120;
  if (!qword_E26120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9F6584()
{
  sub_9F6628();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9F6628()
{
  if (!qword_E26130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E246B0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E26130);
    }
  }
}

uint64_t sub_9F66A8(char *a1, char *a2)
{
  if (*&aDefault_33[8 * *a1] == *&aDefault_33[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_9F6710()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F676C()
{
  sub_AB93F0();
}

Swift::Int sub_9F67AC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F6804@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSShelfSectionC6HeightO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t JSShelfSection.UniformCellType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D75626C61;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000011;
    }

    if (a1)
    {
      v6 = 0x747369747261;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x726574736F70;
    if (a1 != 9)
    {
      v2 = 0x6174536F69646172;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x6F526D6F74737563;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_9F69D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = JSShelfSection.UniformCellType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSShelfSection.UniformCellType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9F6A5C()
{
  v1 = *v0;
  sub_ABB5C0();
  JSShelfSection.UniformCellType.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F6AC0()
{
  JSShelfSection.UniformCellType.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_9F6B14()
{
  v1 = *v0;
  sub_ABB5C0();
  JSShelfSection.UniformCellType.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_9F6B74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_9F6BA4@<X0>(uint64_t *a1@<X8>)
{
  result = JSShelfSection.UniformCellType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_9F6C18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_ABB060();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_361634(v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = &v8[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v10 + 1) = &protocol witness table for JSShelfSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t JSShelfSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSShelfSection.isFeatured.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.isRankedList.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.height.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.uniformCellType.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.description.getter()
{
  v1 = v0;
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  sub_ABAF70();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v15._countAndFlagsBits = v9;
    v15._object = v8;
    sub_AB94A0(v15);

    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    sub_AB94A0(v16);
    v17._countAndFlagsBits = 0x20656C746974203BLL;
    v17._object = 0xEB0000000022203DLL;
    sub_AB94A0(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  return 0;
}

Swift::Void __swiftcall JSShelfSection.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v3 = _._countAndFlagsBits == 0x7449646E65707061 && _._object == 0xEB00000000736D65;
  if (v3 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246A0);
      if (swift_dynamicCast())
      {
        sub_9F7194();
      }
    }
  }
}

uint64_t sub_9F7194()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();

  sub_9A14CC(v2);
  result = swift_endAccess();
  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    result = sub_ABB060();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_361634(v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v9 + 1) = &protocol witness table for JSShelfSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t JSShelfSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_F46A0(a3, v19);
  if (!v19[3])
  {

    return sub_12E1C(v18, &unk_E27200);
  }

  sub_F46A0(v19, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246A0);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
        swift_beginAccess();
        *v7 = v16;

        goto LABEL_22;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured;
LABEL_21:
        swift_beginAccess();
        *(v3 + v8) = v16._countAndFlagsBits;
        goto LABEL_22;
      }

      if (a1 == 0x64656B6E61527369 && a2 == 0xEC0000007473694CLL || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList;
        goto LABEL_21;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v9._rawValue = &off_D4E710;
        v10 = sub_ABB140(v9, v16);

        if (v10 <= 2)
        {
          v11 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height;
          swift_beginAccess();
          *(v3 + v11) = v10;
        }

        goto LABEL_22;
      }

      if (a1 == 0x436D726F66696E75 && a2 == 0xEF657079546C6C65 || (sub_ABB3C0() & 1) != 0)
      {
        v12 = _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(v16._countAndFlagsBits, v16._object);
        if (v12 != 11)
        {
          v13 = v12;
          v14 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
          swift_beginAccess();
          *(v3 + v14) = v13;
        }

        goto LABEL_22;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
    return sub_12E1C(v18, &unk_E27200);
  }

  if ((a1 != 0x736D657469 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_9F6C18(v15);
LABEL_22:
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_12E1C(v19, &unk_DE8E40);
}

uint64_t JSShelfSection.gridItemAccessorySocialProfilesDidChange(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id JSShelfSection.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType] = 11;
  *&v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return JSObject.init(type:)(a1);
}

id JSShelfSection.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items) = _swiftEmptyArrayStorage;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType) = 11;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return JSObject.init(type:)(a1);
}

uint64_t sub_9F78DC()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate;

  return sub_176DC(v1);
}

uint64_t _s11MusicJSCore14JSShelfSectionC6HeightO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E710;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E778;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_9F7A74()
{
  result = qword_E26178;
  if (!qword_E26178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26178);
  }

  return result;
}

unint64_t sub_9F7ACC()
{
  result = qword_E26180;
  if (!qword_E26180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26180);
  }

  return result;
}

uint64_t sub_9F7B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t *JSSegueCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_E23FC0 != -1)
  {
    swift_once();
  }

  return &static JSSegueCoordinator.shared;
}

void JSSegueCoordinator.perform(segue:with:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_E23FC8 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E261B0);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "No segue Performing Delegate is set. Will NOT perform segue.", v11, 2u);
    }
  }
}

id JSSegueCoordinator.init()()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_pendingSeguesInitiationContexts;
  *&v0[v6] = sub_99E050(&_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  *&v0[v7] = sub_99E198(&_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] = 0;
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(v7) = sub_AB7CF0();
  (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v8 = [objc_allocWithZone(NSUUID) init];
  v9 = [v8 UUIDString];

  v10 = sub_AB92A0();
  v12 = v11;

  v13 = &v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  *v13 = v10;
  v13[1] = v12;
  v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
  v14 = type metadata accessor for JSObject();
  v22.receiver = v0;
  v22.super_class = v14;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = qword_E23F48;
  v1 = v15;
  if (v16 != -1)
  {
LABEL_5:
    swift_once();
  }

  v17 = static JSBridge.shared;
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v17;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000000B80950;
  *(v18 + 48) = 1;
  v19 = v1;
  v20 = v17;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F02A0, v18);

  return v19;
}

id sub_9F8074()
{
  v0 = objc_allocWithZone(type metadata accessor for JSSegueCoordinator());
  result = JSSegueCoordinator.init()();
  static JSSegueCoordinator.shared = result;
  return result;
}

id static JSSegueCoordinator.shared.getter()
{
  if (qword_E23FC0 != -1)
  {
    swift_once();
  }

  v1 = static JSSegueCoordinator.shared;

  return v1;
}

uint64_t JSSegueCoordinator.seguePerformingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSSegueCoordinator.seguePerformingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSSegueCoordinator.isSource(_:registeredForSegueOfType:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v9 = sub_AB3440();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v20 = v9;
  v21 = v11;
  swift_unknownObjectWeakAssign();
  v19[8] = a2 & 1;
  v12 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (*(v13 + 16) && (v14 = sub_9A1BBC(v19), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + v14);
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  sub_9A5068(v19);
  return v16;
}

uint64_t JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  sub_F46A0(a5, v36);
  memset(v39, 0, sizeof(v39));
  v38[0] = a1;
  v38[1] = a3;
  v38[2] = a4;
  v11 = a4;
  v12 = a1;

  sub_44F27C(v36, v39);
  if (JSSegueCoordinator.isSource(_:registeredForSegueOfType:)(v12, a2 & 1))
  {
    sub_2D384(v38, v36);
    swift_beginAccess();
    v13 = v12;
    sub_9A0B80(v36, v13, a2 & 1);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0xD000000000000041;
    v15 = inited + 32;
    *(inited + 40) = 0x8000000000B80970;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    v16 = sub_97420(inited);
    swift_setDeallocating();
    sub_12E1C(v15, &qword_DF06F0);
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v17 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_AF8820;
    v19 = type metadata accessor for JSObject();
    v20 = 0x8000000000B7C690;
    v21 = 0x7463656C6573;
    if (a2)
    {
      v21 = 0xD000000000000015;
    }

    *(v18 + 88) = &type metadata for String;
    if ((a2 & 1) == 0)
    {
      v20 = 0xE600000000000000;
    }

    *(v18 + 32) = v13;
    *(v18 + 56) = v19;
    *(v18 + 64) = v21;
    *(v18 + 72) = v20;
    *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
    *(v18 + 96) = v16;
    sub_13C80(0, &qword_DE8ED0);
    v22 = swift_allocObject();
    strcpy((v22 + 16), "initiateSegue");
    *(v22 + 30) = -4864;
    *(v22 + 32) = v18;
    *(v22 + 40) = v6;
    *(v22 + 48) = v17;
    v23 = v13;
    v24 = v6;
    v25 = v17;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F97A8, v22);
  }

  else
  {
    v26 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
    *&v26[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
    v27 = [objc_allocWithZone(NSUUID) init];
    v28 = [v27 UUIDString];

    v29 = sub_AB92A0();
    v31 = v30;

    v32 = &v26[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v32 = v29;
    v32[1] = v31;
    v26[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
    v33 = type metadata accessor for JSObject();
    v37.receiver = v26;
    v37.super_class = v33;
    v34 = objc_msgSendSuper2(&v37, "init");
    JSSegueCoordinator.perform(segue:with:)(v34, v38);
    sub_9F87A0(v12, a2 & 1, v38);
  }

  return sub_16170(v38);
}

uint64_t sub_9F87A0(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_AF85F0;
  v10 = 0x8000000000B7C690;
  v11 = 0x7463656C6573;
  if (a2)
  {
    v11 = 0xD000000000000015;
  }

  *(v8 + 56) = &type metadata for String;
  if ((a2 & 1) == 0)
  {
    v10 = 0xE600000000000000;
  }

  *(v8 + 32) = v11;
  *(v8 + 40) = v10;
  *(v8 + 88) = type metadata accessor for JSObject();
  *(v9 + 8) = a1;
  if (*(a3 + 8))
  {
    v12 = *(a3 + 16);
    v13 = type metadata accessor for JSImpressionsBatch();
    objc_allocWithZone(v13);
    v14 = v12;
    v15 = a1;

    v17 = sub_9ED890(v16, 0, v12);

    v27 = v13;
    *&v26 = v17;
    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    if (v19 >= v18 >> 1)
    {
      v9 = sub_A98518((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v19 + 1;
    sub_9ACFC(&v26, &v9[32 * v19 + 32]);
  }

  else
  {
    v20 = a1;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v21 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0);
  v22 = swift_allocObject();
  v22[2] = 0xD000000000000014;
  v22[3] = 0x8000000000B80AE0;
  v22[4] = v9;
  v22[5] = v4;
  v22[6] = v21;
  v23 = v4;
  v24 = v21;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F9A58, v22);
}

Swift::Void __swiftcall JSSegueCoordinator.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = _._countAndFlagsBits == 0xD000000000000014 && 0x8000000000B809C0 == _._object;
  if (v5 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) != 3)
    {
      return;
    }

    sub_808B0(arguments._rawValue + 32, v13);
    type metadata accessor for JSObject();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v6 = v12._countAndFlagsBits;
    sub_808B0(arguments._rawValue + 64, v13);
    if (swift_dynamicCast())
    {
      v7._rawValue = &off_D4DF58;
      v8 = sub_ABB140(v7, v12);

      if (v8 <= 1)
      {
        sub_808B0(arguments._rawValue + 96, v13);
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v9 = v12._countAndFlagsBits;
        }

        else
        {
          v9 = 0;
        }

        sub_9F8C5C(v12._countAndFlagsBits, v8, v9);

        return;
      }
    }

LABEL_23:

    return;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000000B809E0 == object || (sub_ABB3C0()) && *(arguments._rawValue + 2) == 3)
  {
    sub_808B0(arguments._rawValue + 32, v13);
    type metadata accessor for JSObject();
    if (swift_dynamicCast())
    {
      v6 = v12._countAndFlagsBits;
      sub_808B0(arguments._rawValue + 64, v13);
      if (swift_dynamicCast())
      {
        v10._rawValue = &off_D4DF58;
        v11 = sub_ABB140(v10, v12);

        if (v11 <= 1)
        {
          sub_808B0(arguments._rawValue + 96, v13);
          if (swift_dynamicCast())
          {
            sub_9F8E68(v12._countAndFlagsBits, v11, v12._countAndFlagsBits);
          }
        }
      }

      goto LABEL_23;
    }
  }
}

void sub_9F8C5C(void *a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_pendingSeguesInitiationContexts;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    v13 = a1;
    goto LABEL_6;
  }

  v9 = a1;
  v10 = sub_9A1C28(v9, a2 & 1);
  if ((v11 & 1) == 0)
  {
LABEL_6:
    swift_endAccess();

    return;
  }

  sub_2D384(*(v8 + 56) + 56 * v10, v23);
  v25[0] = v23[0];
  v25[1] = v23[1];
  v25[2] = v23[2];
  v26 = v24;
  swift_endAccess();
  swift_beginAccess();
  sub_A4435C(v9, a2 & 1, v23);
  swift_endAccess();
  sub_12E1C(v23, &qword_E24698);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
    *&v14[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
    v15 = [objc_allocWithZone(NSUUID) init];
    v16 = [v15 UUIDString];

    v17 = sub_AB92A0();
    v19 = v18;

    v20 = &v14[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v20 = v17;
    v20[1] = v19;
    v14[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
    v22.receiver = v14;
    v22.super_class = type metadata accessor for JSObject();
    v12 = objc_msgSendSuper2(&v22, "init");
  }

  v21 = a3;
  JSSegueCoordinator.perform(segue:with:)(v12, v25);
  sub_9F87A0(v9, a2 & 1, v25);

  sub_16170(v25);
}

uint64_t sub_9F8E68(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v11 = sub_AB3440();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v19 = v11;
  v20 = v13;
  swift_unknownObjectWeakAssign();
  v18[8] = a2 & 1;
  v14 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_9A3318(a3, v18, isUniquelyReferenced_nonNull_native);
  *(v4 + v14) = v17;
  swift_endAccess();
  sub_9F9048();
  return sub_9A5068(v18);
}

uint64_t JSSegueCoordinator.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_F46A0(a3, &v5);

  return sub_12E1C(v4, &unk_E27200);
}

void sub_9F9048()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] = 1;
    sub_13C80(0, &qword_DE8ED0);
    v9 = sub_ABA150();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_9F99D4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_263;
    v11 = _Block_copy(aBlock);
    v12 = v0;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_9F92F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    sub_9A500C(*(v3 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))), v18);
    sub_99F510(v18, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      swift_beginAccess();
      v12 = sub_9A1BBC(v17);
      if (v13)
      {
        v14 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(a1 + v2);
        *(a1 + v2) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_A9B3B0();
        }

        sub_9A5068(*(v16 + 48) + 32 * v14);
        sub_9A273C(v14, v16);
        *(a1 + v2) = v16;
      }

      swift_endAccess();
    }

    v6 &= v6 - 1;
    result = sub_9A5068(v17);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *(a1 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup) = 0;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_9F94A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong hash];

    v3 = v2;
  }

  else
  {
    sub_36A48();
    v3 = sub_ABAAD0();
  }

  sub_ABB5D0(v3);
  sub_AB93F0();
}

Swift::Int sub_9F9574()
{
  sub_ABB5C0();
  sub_9F94A0();
  return sub_ABB610();
}

Swift::Int sub_9F95B8()
{
  sub_ABB5C0();
  sub_9F94A0();
  return sub_ABB610();
}

uint64_t sub_9F9628()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate);
}

uint64_t sub_9F96F8()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E261B0);
  __swift_project_value_buffer(v0, qword_E261B0);
  return static Logger.music(_:)();
}

uint64_t sub_9F975C()
{

  return swift_deallocObject();
}

unint64_t sub_9F97E4()
{
  result = qword_E26210;
  if (!qword_E26210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26210);
  }

  return result;
}

uint64_t sub_9F9838(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {

      return 0;
    }

    sub_13C80(0, &qword_DFA720);
    v7 = sub_ABA790();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {

      return 0;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v9 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8))
  {
    v10 = 0xD000000000000015;
  }

  else
  {
    v10 = 0x7463656C6573;
  }

  if (*(a1 + 8))
  {
    v11 = 0x8000000000B7C690;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (*(a2 + 8))
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0x7463656C6573;
  }

  if (*(a2 + 8))
  {
    v13 = 0x8000000000B7C690;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    return 1;
  }

  else
  {
    v14 = sub_ABB3C0();

    return v14 & 1;
  }
}

uint64_t sub_9F999C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_263(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

id JSInterstellarViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSInterstellarViewModel.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSInterstellarViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSInterstellarViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_9F9B84()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver;
  *(v0 + v1) = *PushNotificationObserver.shared.unsafeMutableAddressor();
  v2 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;

  *(v0 + v2) = sub_99EA28(_swiftEmptyArrayStorage);
  v11[0] = _swiftEmptyArrayStorage;
  v11[1] = 1;
  memset(&v11[2], 0, 24);
  v12 = 0;
  v3 = JSObject.init(type:)(v11);
  v4 = qword_E23F48;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  sub_60044();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000018;
  *(v7 + 24) = 0x8000000000B80C30;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = 1;
  v8 = v5;
  v9 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v7);

  return v8;
}

Swift::Void __swiftcall JSPushNotificationObserver.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v43 - v9;
  __chkstk_darwin();
  v44 = &v43 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin();
  v45 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690);
  __chkstk_darwin();
  v14 = &v43 - v13;
  if (countAndFlagsBits == 0xD000000000000011 && 0x8000000000B80B50 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v16 = v47;
        v15 = v48;
        v17 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v18 = *&v2[v17];
        if (*(v18 + 16))
        {
          v19 = sub_2EBF88(v16, v15);
          if (v20)
          {
            v21 = *(v18 + 56);
            v22 = v46;
            sub_52B3F0(v21 + *(v46 + 72) * v19, v14);
            v23 = 0;
            goto LABEL_20;
          }

          v23 = 1;
        }

        else
        {
          v23 = 1;
        }

        v22 = v46;
LABEL_20:
        (*(v22 + 56))(v14, v23, 1, v6);
        swift_endAccess();
        if ((*(v22 + 48))(v14, 1, v6) == 1)
        {
          sub_12E1C(v14, &qword_E24690);
          v39 = sub_AB9990();
          v40 = v45;
          (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v2;
          v41[5] = v16;
          v41[6] = v15;
          v42 = v2;
          sub_DBDC8(0, 0, v40, &unk_B3F988, v41);
        }

        else
        {

          sub_12E1C(v14, &qword_E24690);
        }
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x8000000000B80B70 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v25 = v47;
        v24 = v48;
        v26 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v27 = *&v2[v26];
        if (*(v27 + 16) && (v28 = v2, v29 = sub_2EBF88(v25, v24), (v30 & 1) != 0))
        {
          v31 = v46;
          sub_52B3F0(*(v27 + 56) + *(v46 + 72) * v29, v10);
          v32 = v44;
          sub_52B328(v10, v44);
          swift_endAccess();
          v33 = sub_AB9990();
          v34 = v45;
          (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
          sub_52B3F0(v32, v8);
          v35 = (*(v31 + 80) + 40) & ~*(v31 + 80);
          v36 = swift_allocObject();
          v36[2] = 0;
          v36[3] = 0;
          v36[4] = v28;
          sub_52B328(v8, v36 + v35);
          v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v37 = v25;
          v37[1] = v24;
          v38 = v28;
          sub_DBDC8(0, 0, v34, &unk_B3F978, v36);

          sub_6AC730(v32);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }
}

uint64_t sub_9FA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_9FA304, 0, 0);
}

uint64_t sub_9FA304()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = *&stru_68.segname[(swift_isaMask & *v1) - 8];

  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_9FA4A4;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  return v9(v5, v7, v6, sub_9FAFB0, v2);
}

uint64_t sub_9FA4A4()
{

  return _swift_task_switch(sub_9FA5C0, 0, 0);
}

uint64_t sub_9FA5C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  swift_beginAccess();
  sub_9A0C5C(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_9FA6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF8820;
    v10 = type metadata accessor for JSPushNotificationObserver();
    *(v9 + 32) = v7;
    *(v9 + 88) = &type metadata for String;
    *(v9 + 56) = v10;
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    *(v9 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    *(v9 + 96) = a3;
    sub_60044();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0xD000000000000016;
    *(v11 + 40) = 0x8000000000B80C50;
    *(v11 + 48) = v7;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v7;

    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v11);
  }

  return result;
}

uint64_t sub_9FA864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690);
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_9FA904, 0, 0);
}

uint64_t sub_9FA904()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v0[10] = v1;
  v2 = ((swift_isaMask & *v1) + 120) & 0xFFFFFFFFFFFFLL | 0xDB0A000000000000;
  v0[11] = *&stru_68.segname[swift_isaMask & *v1];
  v0[12] = v2;
  return _swift_task_switch(sub_9FA95C, v1, 0);
}

uint64_t sub_9FA95C()
{
  (*(v0 + 88))(*(v0 + 48));

  return _swift_task_switch(sub_9FA9CC, 0, 0);
}

uint64_t sub_9FA9CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  swift_beginAccess();

  sub_9A0C5C(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_9FAAF8()
{
}

uint64_t sub_9FABA8()
{
  v1 = (type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = sub_AB3470();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_9FACC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_17BD0;

  return sub_9FA864(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_9FADFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_9FAE44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_9FA264(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_9FAF30()
{

  return swift_deallocObject();
}

uint64_t sub_9FAF78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9FAFB8()
{

  return swift_deallocObject();
}

uint64_t sub_9FB020()
{
  type metadata accessor for JSViewModelRequestCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = _swiftEmptyArrayStorage;
  static JSViewModelRequestCoordinator.sharedCoordinator = result;
  return result;
}

uint64_t *JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor()
{
  if (qword_E23FD0 != -1)
  {
    swift_once();
  }

  return &static JSViewModelRequestCoordinator.sharedCoordinator;
}

uint64_t static JSViewModelRequestCoordinator.sharedCoordinator.getter()
{
  if (qword_E23FD0 != -1)
  {
    swift_once();
  }
}

NSUUID __swiftcall JSViewModelRequestCoordinator.beginCoordinating()()
{
  v1 = [objc_allocWithZone(NSUUID) init];
  sub_60044();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  v3 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9FB58C, v2);

  return v3;
}

uint64_t sub_9FB1A8(uint64_t a1, void *a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    goto LABEL_5;
  }

  type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  *(v13 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 16) = v13;
  swift_beginAccess();

  sub_AB9730();
  if (*(&dword_10 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v19 = *(&dword_10 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8));
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v12 = *(a1 + 16);
  if (v12)
  {
LABEL_5:
    swift_beginAccess();

    v14 = a2;
    sub_AB9730();
    if (*(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v19 = *(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8));
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
  }

  sub_60044();
  v15 = sub_ABA150();
  aBlock[4] = sub_9FBB8C;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_264;
  v16 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_9FB54C()
{

  return swift_deallocObject();
}

uint64_t JSViewModelRequestCoordinator.finishCoordinating(token:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_60044();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9FBA98, v7);
}

uint64_t sub_9FB640(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_41;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  v7 = v6 != 0;
  if (v6)
  {
    v35 = a1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_5:
    v36 = v9;
    v40 = v11;
    v41 = v10;
    v12 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = sub_9BB0B8(v12, v5);
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v13 = *(v5 + 8 * v12 + 32);

        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v6 = sub_ABB060();
          goto LABEL_3;
        }
      }

      swift_beginAccess();
      a1 = *(v13 + 16);

      v14 = sub_A82398(a2, a1);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a3;
        *(v17 + 24) = a4;
        v37 = v17;
        swift_beginAccess();
        v18 = *(v13 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 24) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_6AA00(0, v18[2] + 1, 1, v18);
          *(v13 + 24) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v26 = sub_6AA00((v20 > 1), v21 + 1, 1, v18);
          v22 = v21 + 1;
          v18 = v26;
        }

        v18[2] = v22;
        v23 = &v18[2 * v21];
        v23[4] = sub_2D4D0;
        v23[5] = v37;
        *(v13 + 24) = v18;
        swift_endAccess();
        swift_beginAccess();
        v24 = sub_A82534(v14);
        swift_endAccess();

        v25 = *(v13 + 16);
        if (v25 >> 62)
        {
          a1 = sub_ABB060();
        }

        else
        {
          a1 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
        }

        v10 = v41;
        if (!a1)
        {
          v10 = v12;
        }

        v11 = (a1 != 0) & v40;
        v9 = 1;
        if (v8 == v6)
        {
          a1 = v35;
          v7 = 1;
          goto LABEL_27;
        }

        goto LABEL_5;
      }

      ++v12;
      if (v8 == v6)
      {
        v7 = v36;
        a1 = v35;
        v10 = v41;
        v11 = v40;
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_27:

  if (!v7)
  {
    return a3(result);
  }

  if (v11)
  {
    return result;
  }

  v28 = *(a1 + 24);
  if ((v28 & 0xC000000000000001) != 0)
  {

    v29 = sub_9BB0B8(v10, v28);

    goto LABEL_33;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v10 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v29 = *(v28 + 8 * v10 + 32);

LABEL_33:
  swift_beginAccess();
  v30 = *(v29 + 24);

  swift_beginAccess();
  sub_A82534(v10);
  swift_endAccess();

  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 40;
    do
    {
      v33 = *(v32 - 8);

      v33(v34);

      v32 += 16;
      --v31;
    }

    while (v31);
  }
}

uint64_t sub_9FBA50()
{

  return swift_deallocObject();
}

uint64_t JSViewModelRequestCoordinator.deinit()
{

  return v0;
}

uint64_t JSViewModelRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_9FBB54()
{

  return swift_deallocObject();
}