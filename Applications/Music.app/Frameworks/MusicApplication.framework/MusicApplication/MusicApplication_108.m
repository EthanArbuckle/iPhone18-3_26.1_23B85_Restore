uint64_t sub_99FF00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t JSSocialMediaItem.accessorySocialProfiles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_9A0050(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v4 = sub_AB09B8(v6, a1);

  if ((v4 & 1) == 0)
  {
    return (*&stru_2E8.segname[(swift_isaMask & *v3) - 8])(result);
  }

  return result;
}

uint64_t sub_9A01B8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_9A0230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24630);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSocialMediaItem.$accessorySocialProfiles.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t JSSocialMediaItem.didSelectFollowButton(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(NSUUID) init];
  v5 = [v4 UUIDString];

  v6 = sub_AB92A0();
  v8 = v7;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_F46A0(a1, v22);
  v10 = swift_allocObject();
  v11 = v22[1];
  *(v10 + 24) = v22[0];
  *(v10 + 16) = v9;
  *(v10 + 40) = v11;
  v23[0] = sub_9A0848;
  v23[1] = v10;
  v23[2] = 0;
  v23[3] = 0xE000000000000000;
  v23[4] = 0;
  v12 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&v2[v12];
  *&v2[v12] = 0x8000000000000000;
  sub_9A2FB0(v23, v6, v8, isUniquelyReferenced_nonNull_native);

  *&v2[v12] = v21;
  swift_endAccess();
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  v16 = type metadata accessor for JSSocialMediaItem();
  *(v15 + 32) = v2;
  *(v15 + 88) = &type metadata for String;
  *(v15 + 56) = v16;
  *(v15 + 64) = v6;
  *(v15 + 72) = v8;
  sub_13C80(0, &qword_DE8ED0);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = _swiftEmptyArrayStorage;
  *(v17 + 32) = 0xD000000000000026;
  *(v17 + 40) = 0x8000000000B7D780;
  *(v17 + 48) = v2;
  *(v17 + 56) = v14;
  *(v17 + 64) = 0;
  v18 = v2;
  v19 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v17);
}

uint64_t sub_9A06D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_9A070C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      sub_F46A0(a3, v8);
      memset(v10, 0, sizeof(v10));
      v9[1] = 0;
      v9[2] = 0;
      v9[0] = v6;
      v7 = a1;
      sub_44F27C(v8, v10);
      if (qword_E23FC0 != -1)
      {
        swift_once();
      }

      JSSegueCoordinator.perform(segue:with:)(v7, v9);

      sub_16170(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_9A0800()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_9A0854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = *(a1 + 8);
    v19 = *a1;
    v20 = v9;
    v21 = v8;
    v22 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_9A2FB0(&v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v12 = sub_2EBF88(a2, a3);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_A9AED8();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 40 * v12 + 32);

      result = sub_27D8A4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_9A0978(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    result = sub_9A3430(a1, isUniquelyReferenced_nonNull_native);
    *v1 = v10;
  }

  else
  {
    result = sub_9A4E18();
    if (v6)
    {
      v7 = result;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v1;
      v11 = *v2;
      if (!v8)
      {
        sub_A9B530();
        v9 = v11;
      }

      result = sub_9A29A4(v7, v9);
      *v2 = v9;
    }
  }

  return result;
}

void sub_9A0A2C(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_9A3688(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v21;
  }

  else
  {
    v12 = sub_9A1CF4(a3, a4, a5);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v22 = *v6;
      if (!v15)
      {
        sub_A9B7F0();
        v16 = v22;
      }

      v17 = *(v16 + 48) + 24 * v14;
      v18 = *v17;

      v19 = *(*(v16 + 56) + 16 * v14);

      sub_9A2B48(v14, v16);
      *v6 = v16;
    }

    else
    {
    }
  }
}

void sub_9A0B80(uint64_t a1, void *a2, char a3)
{
  if (*a1 == 1)
  {
    sub_12E1C(a1, &qword_E24698);
    sub_A4435C(a2, a3 & 1, v9);

    sub_12E1C(v9, &qword_E24698);
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v9[2] = *(a1 + 32);
    v10 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_9A39D0(v9, a2, a3 & 1, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }
}

uint64_t sub_9A0C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690);
  __chkstk_darwin();
  v8 = &v15 - v7;
  type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_12E1C(a1, &qword_E24690);
    sub_A44428(a2, a3, v8);

    return sub_12E1C(v8, &qword_E24690);
  }

  else
  {
    sub_52B328(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_9A3B1C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  return result;
}

Swift::Void __swiftcall JSSocialMediaItem.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (_._countAndFlagsBits == 0xD00000000000001DLL && 0x8000000000B7D7B0 == _._object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0);
      if (swift_dynamicCast())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510();

        sub_9A1574(v16, sub_9A3E4C);
        sub_9A0050(*&v18[0]);
      }
    }
  }

  else if (countAndFlagsBits == 0xD00000000000002ELL && 0x8000000000B7D7D0 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 2)
    {
      sub_808B0(arguments._rawValue + 64, v18);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        sub_808B0(arguments._rawValue + 32, v18);
        if (swift_dynamicCast())
        {
          v6 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
          swift_beginAccess();
          v7 = *(v2 + v6);
          if (*(v7 + 16))
          {

            v8 = sub_2EBF88(v16, v17);
            if (v9)
            {
              v10 = *(v7 + 56) + 40 * v8;
              v15 = *v10;
              v11 = *(v10 + 32);

              v19 = 0;
              memset(v18, 0, sizeof(v18));
              swift_beginAccess();
              sub_9A0854(v18, v16, v17);
              swift_endAccess();
              v12 = v16;
              v15();

              return;
            }
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v13 = countAndFlagsBits;
    v14 = object;

    JSMediaItem.invokeMethod(_:arguments:)(*&v13, arguments);
  }
}

uint64_t JSSocialMediaItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000017 && 0x8000000000B7D820 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        sub_9A0050(v10);
LABEL_14:
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_12E1C(v14, &unk_DE8E40);
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001ALL && 0x8000000000B7D800 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v11;

        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_12E1C(v13, &unk_E27200);
}

uint64_t sub_9A13A8(uint64_t result)
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

  result = sub_A9877C(result, v10, 1, v3);
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

uint64_t sub_9A1574(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_ABB060();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
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

  v15 = sub_ABB060();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2A1E4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
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

uint64_t sub_9A168C(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id JSSocialMediaItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = objc_allocWithZone(v1);
  *&v7[OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork] = 0;
  v8 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0);
  sub_AB54D0();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *&v7[v9] = sub_99E3E0(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

id JSSocialMediaItem.init(type:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork) = 0;
  v7 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v10[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *(v1 + v8) = sub_99E3E0(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

uint64_t sub_9A1A18()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id JSSocialMediaItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSocialMediaItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9A1B7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSocialMediaItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_9A1BBC(uint64_t a1)
{
  sub_ABB5C0();
  sub_9F94A0();
  v2 = sub_ABB610();

  return sub_9A1E8C(a1, v2);
}

unint64_t sub_9A1C28(void *a1, char a2)
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();

  v4 = sub_ABB610();

  return sub_9A207C(a1, a2 & 1, v4);
}

unint64_t sub_9A1CF4(uint64_t a1, char a2, uint64_t a3)
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_AB93F0();

  sub_AB92A0();
  sub_AB93F0();

  v6 = sub_ABB610();

  return sub_9A2230(a1, a2, a3, v6);
}

unint64_t sub_9A1E20(unsigned __int8 a1)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  v2 = sub_ABB610();

  return sub_5229E4(a1, v2);
}

unint64_t sub_9A1E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      sub_9A500C(*(v6 + 48) + 32 * v5, &v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = swift_unknownObjectWeakLoadStrong();
      v9 = v11;
      if (Strong)
      {
        if (!v11)
        {
          v9 = Strong;
LABEL_4:

LABEL_5:
          sub_9A5068(&v19);
          goto LABEL_6;
        }

        sub_13C80(0, &qword_DFA720);
        v12 = sub_ABA790();

        if ((v12 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_4;
        }

        if ((v21 != *(a1 + 16) || v22 != *(a1 + 24)) && (sub_ABB3C0() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v20)
      {
        v13 = 0xD000000000000015;
      }

      else
      {
        v13 = 0x7463656C6573;
      }

      if (v20)
      {
        v14 = 0x8000000000B7C690;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      if (*(a1 + 8))
      {
        v15 = 0xD000000000000015;
      }

      else
      {
        v15 = 0x7463656C6573;
      }

      if (*(a1 + 8))
      {
        v16 = 0x8000000000B7C690;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == v15 && v14 == v16)
      {

        sub_9A5068(&v19);
        return v5;
      }

      v17 = sub_ABB3C0();

      sub_9A5068(&v19);
      if (v17)
      {
        return v5;
      }

LABEL_6:
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_9A207C(void *a1, char a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v19 = ~v4;
    v7 = 0x7463656C6573;
    type metadata accessor for JSObject();
    if (a2)
    {
      v7 = 0xD000000000000015;
      v8 = 0x8000000000B7C690;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    do
    {
      v9 = *(v3 + 48) + 16 * v5;
      v10 = *(v9 + 8);
      v11 = *v9;
      v12 = a1;
      v13 = sub_ABA790();

      if (v13)
      {
        if (v10)
        {
          v14 = 0xD000000000000015;
        }

        else
        {
          v14 = 0x7463656C6573;
        }

        if (v10)
        {
          v15 = 0x8000000000B7C690;
        }

        else
        {
          v15 = 0xE600000000000000;
        }

        if (v14 == v7 && v15 == v8)
        {

          return v5;
        }

        v17 = sub_ABB3C0();

        if (v17)
        {
          return v5;
        }
      }

      else
      {
      }

      v5 = (v5 + 1) & v19;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_9A2230(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_13C80(0, &qword_DFA720);
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v11 = *v8;
      v12 = v10;
      if ((sub_ABA790() & 1) == 0)
      {
LABEL_3:

        goto LABEL_4;
      }

      if (v9)
      {
        v13 = 0x616C5065726F7473;
        v14 = 0xED00006D726F6674;
        if (v9 != 1)
        {
          v13 = 0xD000000000000010;
          v14 = 0x8000000000B7D230;
        }
      }

      else
      {
        v13 = 0xD000000000000012;
        v14 = 0x8000000000B7D200;
      }

      if (a2)
      {
        if (a2 == 1)
        {
          v15 = 0x616C5065726F7473;
        }

        else
        {
          v15 = 0xD000000000000010;
        }

        if (a2 == 1)
        {
          v16 = 0xED00006D726F6674;
        }

        else
        {
          v16 = 0x8000000000B7D230;
        }

        if (v13 != v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0x8000000000B7D200;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_22;
        }
      }

      if (v14 == v16)
      {

        goto LABEL_23;
      }

LABEL_22:
      v17 = sub_ABB3C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_3;
      }

LABEL_23:
      v18 = sub_AB92A0();
      v20 = v19;
      if (v18 == sub_AB92A0() && v20 == v21)
      {

        return v6;
      }

      v23 = sub_ABB3C0();

      if (v23)
      {
        return v6;
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_9A24D8(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    v28 = v4;
    do
    {
      v12 = 16 * v6;
      v13 = v2;
      v14 = *(*(v2 + 48) + 16 * v6);
      v15 = v8;
      sub_ABB5C0();
      v16 = v14;
      sub_AB93F0();
      sub_AB93F0();

      v17 = sub_ABB610();

      v8 = v15;
      v18 = v17 & v7;
      if (v3 >= v15)
      {
        if (v18 < v15)
        {
          v4 = v28;
          v2 = v13;
        }

        else
        {
          v4 = v28;
          v2 = v13;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v28;
        v2 = v13;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + v12);
          if (16 * v3 != v12 || v20 >= v21 + 1)
          {
            *v20 = *v21;
          }

          v22 = *(v2 + 56);
          v23 = v22 + 56 * v3;
          v24 = (v22 + 56 * v6);
          if (v3 != v6 || v23 >= v24 + 56)
          {
            v9 = *v24;
            v10 = v24[1];
            v11 = v24[2];
            *(v23 + 48) = *(v24 + 6);
            *(v23 + 16) = v10;
            *(v23 + 32) = v11;
            *v23 = v9;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }
}

unint64_t sub_9A273C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_9A500C(*(a2 + 48) + 32 * v6, v22);
      sub_ABB5C0();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = [Strong hash];

        v12 = v11;
      }

      else
      {
        sub_36A48();
        v12 = sub_ABAAD0();
      }

      sub_ABB5D0(v12);
      sub_AB93F0();

      v13 = sub_ABB610();
      result = sub_9A5068(v22);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        result = v15 + 32 * v3;
        if (v3 < v6 || result >= v15 + 32 * v6 + 32)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v3 != v6)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + v3);
        v18 = (v16 + v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_9A29A4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_9A2B48(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 16);
      sub_ABB5C0();
      v12 = v10;
      v13 = v11;
      sub_ABA7A0();
      sub_AB93F0();

      sub_AB92A0();
      sub_AB93F0();

      v14 = sub_ABB610();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
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
}

unint64_t sub_9A2DC4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    while (1)
    {
      sub_ABB5C0();

      sub_AB93F0();
      v9 = sub_ABB610();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_9A2FB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_A9AED8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_A98ABC(v16, a4 & 1);
    v11 = sub_2EBF88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_ABB4C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v24 = *(v22 + 32);
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
  }

  else
  {
    sub_A9AC18(v11, a2, a3, a1, v21);
  }
}

uint64_t type metadata accessor for JSSocialMediaItem()
{
  result = qword_E24618;
  if (!qword_E24618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9A3178()
{

  return swift_deallocObject();
}

uint64_t sub_9A31D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_A9B080();
      v11 = v19;
      goto LABEL_8;
    }

    sub_A98DB0(v16, a4 & 1);
    v11 = sub_2EBF88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_A9AC74(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_9A3318(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_9A1BBC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_A9B3B0();
    goto LABEL_7;
  }

  sub_A99394(result, a3 & 1);
  result = sub_9A1BBC(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_9A500C(a2, v18);
  return sub_A9ACBC(v10, v18, a1 & 1, v16);
}

unint64_t sub_9A3430(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_9A4E18();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 >= v12 && (a2 & 1) == 0)
    {
      v15 = v7;
      sub_A9B530();
      v7 = v15;
      goto LABEL_8;
    }

    sub_A996E8(v12, a2 & 1);
    v7 = sub_9A4E18();
    if ((v13 & 1) != (v16 & 1))
    {
LABEL_16:
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v17 = *v3;
  if (v13)
  {
    *(*(v17 + 56) + 8 * v7) = a1;
  }

  else
  {

    return sub_A9AD38(v7, a1, v17);
  }
}

void sub_9A3544(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2EBF88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_A9B680();
      v11 = v19;
      goto LABEL_8;
    }

    sub_A99978(v16, a4 & 1);
    v11 = sub_2EBF88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_ABB4C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_A9C160(v11, a2, a3, a1, v21);
  }
}

void sub_9A3688(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_9A1CF4(a3, a4, a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_A9B7F0();
      v14 = v22;
      goto LABEL_8;
    }

    sub_A99BF4(v19, a6 & 1);
    v14 = sub_9A1CF4(a3, a4, a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      sub_ABB4C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 16 * v14;
    v29 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_A9AD78(v14, a3, a4, a5, a1, a2, v24);
    v26 = a3;

    v27 = a5;
  }
}

id sub_9A3804(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_9A1CF4(a3, a4, a5);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      v22 = v14;
      sub_A9B998();
      v14 = v22;
      goto LABEL_8;
    }

    sub_A99F7C(v19, a6 & 1);
    v14 = sub_9A1CF4(a3, a4, a5);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 16 * v14;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;
  }

  else
  {
    sub_A9AD78(v14, a3, a4, a5, a1, a2, v24);
    v28 = a3;

    return a5;
  }
}

id sub_9A39D0(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_9A1C28(a2, a3 & 1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_A9B1F0();
      v10 = v18;
      goto LABEL_8;
    }

    sub_A99058(v15, a4 & 1);
    v10 = sub_9A1C28(a2, a3 & 1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 56 * v10;

    return sub_9A50BC(a1, v21);
  }

  else
  {
    sub_A9ADD0(v10, a2, a3 & 1, a1, v20);

    return a2;
  }
}

uint64_t sub_9A3B1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2EBF88(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_A9BB60();
      goto LABEL_7;
    }

    sub_A9A350(v15, a4 & 1);
    v22 = sub_2EBF88(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8) + 72) * v12;

    return sub_52B38C(a1, v20);
  }

LABEL_13:
  sub_A9AE3C(v12, a2, a3, a1, v18);
}

_OWORD *sub_9A3CD4(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void), void (*a7)(unint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = sub_2EC28C(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = sub_2EC28C(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_0(v27);

    return sub_9ACFC(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

uint64_t sub_9A3E4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E246D0, &qword_E245D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0);
            v9 = sub_9BB294(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSSocialProfile();
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

uint64_t sub_9A3FDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24638, &qword_DEEFE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEFE8);
            v9 = sub_9BB348(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSSocialProfileCollectionItem();
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

uint64_t sub_9A416C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24678, &qword_E24670);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24670);
            v9 = sub_9BB3C8(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSGridItem();
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

uint64_t sub_9A42FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E246A8, &qword_E246A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246A0);
            v9 = sub_9BB474(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSShelfItem();
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

uint64_t sub_9A448C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24658, &qword_E24650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24650);
            v9 = sub_9BB524(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSFlowcaseItem();
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

uint64_t sub_9A461C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E246B8, &qword_E246B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246B0);
            v9 = sub_9BB5D8(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSSearchLandingItem();
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

uint64_t sub_9A47AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24648, &qword_E24640);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24640);
            v9 = sub_9BB658(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSGridSection();
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

uint64_t sub_9A493C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24688, &qword_E24680);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24680);
            v9 = sub_9BB70C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSMenuSection();
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

uint64_t sub_9A4ACC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E24668, &qword_E24660);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24660);
            v9 = sub_9BB7C0(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSBrickItem();
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

uint64_t sub_9A4C5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E246C8, &qword_E246C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E246C0);
            v9 = sub_9BB870(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSShelfSection();
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

uint64_t sub_9A4E18()
{
  sub_ABB5C0();
  sub_AB93F0();
  v0 = sub_ABB610();

  return sub_9A4DEC(v0);
}

id sub_9A4E84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_9A4F00()
{
  sub_9A4FA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9A4FA8()
{
  if (!qword_E24628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E245D0);
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E24628);
    }
  }
}

uint64_t sub_9A511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_F46A0(a3, v12);
  if (v12[3])
  {
    sub_F46A0(v12, v10);

    if (swift_dynamicCast())
    {
      if (a1 == 0x6D69547472617473 && a2 == 0xEE00706D61747365 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp;
LABEL_7:
        v7 = v3 + v6;
        *v7 = v9;
        *(v7 + 8) = 0;
        __swift_destroy_boxed_opaque_existential_0(v10);
        sub_12E1C(v12, &unk_DE8E40);
      }

      if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
  }

  return sub_12E1C(v11, &unk_E27200);
}

id sub_9A52B0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp];
  *v5 = 0;
  v5[8] = 1;
  return JSObject.init(type:)(a1);
}

uint64_t *JSBridge.shared.unsafeMutableAddressor()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  return &static JSBridge.shared;
}

id sub_9A53A8()
{
  result = [objc_allocWithZone(type metadata accessor for JSBridge()) init];
  static JSBridge.shared = result;
  return result;
}

uint64_t JSBridge.wasStarted.getter()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_AB7CF0();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) != 0x8000000000000000 || (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24) | *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 32)) != 0;
  }

  __break(1u);
  return result;
}

uint64_t JSBridge.isScriptDeployed.getter()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_AB7CF0();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v9 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
    result = 0;
    if (v9 >> 62)
    {
      if (v9 >> 62 != 2)
      {
        return 1;
      }

      v11 = v8[3];
      v10 = v8[4];
      v12 = *v8;
      v13 = v8[1];
      v14 = v11 | v10;
      if (v9 != 0x8000000000000000 || (v14 | v12 | v13) != 0)
      {
        v16 = v14 | v13;
        v17 = v9 == 0x8000000000000000 && v12 == 1;
        v18 = v17 && v16 == 0;
        if (!v18 && (v9 != 0x8000000000000000 || v12 != 2 || v16) && (v9 != 0x8000000000000000 || v12 != 3 || v16))
        {
          return 1;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a3;
  v21 = a2;
  v23 = a1;
  type metadata accessor for Signpost();
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20[1] = sub_13C80(0, &qword_DE8ED0);
  *v11 = sub_ABA150();
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v9 + 104);
  v13(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = sub_AB7CF0();
  v15 = *(v9 + 8);
  v15(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_9A7DF4(v7);
  Signpost.begin(dso:)(&dword_0);
  sub_9B1CA8(v7, type metadata accessor for Signpost);
  v26[0] = v23;
  v26[1] = v21;
  v27 = v22 & 1;
  v28 = a4;
  v29 = v24;
  swift_unknownObjectRetain();

  *v11 = sub_ABA150();
  v13(v11, v12, v8);
  v14 = sub_AB7CF0();
  v15(v11, v8);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v15 = v25;
  if (*(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) != 1)
  {
    v17 = v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
    v18 = *(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
    *(v25 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
    sub_9A5A8C(v15, v26);
    *(v15 + v16) = 0;
    if ((((*(v17 + 2) >> 62 == 0) ^ v18) & 1) == 0)
    {
      goto LABEL_8;
    }

    v14 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_7:
      [v14 postNotificationName:static JSBridge.didFailInitializationDidChange object:v15];

      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  sub_9A5A8C(v25, v26);
LABEL_8:

  return swift_unknownObjectRelease();
}

void sub_9A5A8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v20[-v6];
  v8 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  sub_15F84(a1 + v8, v7, &unk_E01230);
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  sub_12E1C(v7, &unk_E01230);
  if (v11 == 1)
  {
    sub_AB3420();
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_160B4(v5, a1 + v8, &unk_E01230);
    swift_endAccess();
  }

  v12 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v13 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v14 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v15 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  *v12 = xmmword_AF8620;
  *(v12 + 16) = 0x8000000000000000;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  sub_9B1C40(v13, v14, v15);
  sub_9AF348(a2);
  if ((v16 & 1) == 0)
  {
    BagProvider.shared.unsafeMutableAddressor();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *a2;
    v22 = *(a2 + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = *(a2 + 16);
    *(v18 + 24) = *a2;
    *(v18 + 40) = v19;
    *(v18 + 56) = *(a2 + 32);

    sub_15F84(&v21, v20, &unk_E24AA0);
    sub_15F84(&v22, v20, &unk_DEE6F0);
    BagProvider.getBag(completion:)(sub_9B3A3C, v18);
  }
}

uint64_t JSBridge.requestAccessToCommonSingletons(block:)(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9A8FCC, v5);
}

uint64_t sub_9A5E2C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v7 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v7 >> 62 == 1 || v7 >> 62 == 2 && ((v9 = v6[3], v8 = v6[4], v10 = *v6, !(v9 | v8)) ? (v11 = v7 == 0x8000000000000000) : (v11 = 0), v11 ? (v12 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8) == 0) : (v12 = 0), v12 ? (v13 = v10 == 4) : (v13 = 0), v13))
  {
    v14 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
    v15 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
    v43[4] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
    v43[5] = v15;
    v43[6] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
    v44 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
    v16 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
    v43[0] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
    v43[1] = v16;
    v17 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
    v43[2] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
    v43[3] = v17;
    if (*&v43[0])
    {
      v45 = *&v43[0];
      v49 = *(v14 + 56);
      v50 = *(v14 + 72);
      v51 = *(v14 + 88);
      v52 = *(v14 + 104);
      v46 = *(v14 + 8);
      v47 = *(v14 + 24);
      v48 = *(v14 + 40);
      v18 = *v14;
      v19 = v14[2];
      v20 = v14[3];
      v41[1] = v14[1];
      v41[2] = v19;
      v41[0] = v18;
      v21 = v14[4];
      v22 = v14[5];
      v23 = v14[6];
      v42 = *(v14 + 14);
      v41[5] = v22;
      v41[6] = v23;
      v41[3] = v20;
      v41[4] = v21;
      sub_9B3214(v41, v40);
      a2(&v45);
      return sub_12E1C(v43, &qword_E24AD8);
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    swift_beginAccess();
    v27 = *(a1 + v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_A98504(0, v27[2] + 1, 1, v27);
      *(a1 + v26) = v27;
    }

    v34 = v27[2];
    v35 = v27[3];
    v36 = v34 + 1;
    if (v34 >= v35 >> 1)
    {
      v37 = v27;
      v38 = v27[2];
      v39 = sub_A98504((v35 > 1), v34 + 1, 1, v37);
      v34 = v38;
      v27 = v39;
    }

    v27[2] = v36;
    v31 = &v27[2 * v34];
    v32 = sub_9B3D1C;
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v26 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    swift_beginAccess();
    v27 = *(a1 + v26);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v26) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_A98504(0, v27[2] + 1, 1, v27);
      *(a1 + v26) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_A98504((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v32 = sub_9B3960;
  }

  v31[4] = v32;
  v31[5] = v25;
  *(a1 + v26) = v27;
  return swift_endAccess();
}

uint64_t JSBridge.requestAccessToCommonSingletons()(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_9A6154, 0, 0);
}

uint64_t sub_9A6154()
{
  v1 = v0[33];
  v2 = swift_task_alloc();
  v0[34] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_9A624C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 17, 0, 0, 0xD000000000000021, 0x8000000000B7D900, sub_9A8FD8, v2, &type metadata for JSBridge.Singletons);
}

uint64_t sub_9A624C()
{

  return _swift_task_switch(sub_9A6364, 0, 0);
}

uint64_t sub_9A6364()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 152);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 168);
  v4 = *(v0 + 184);
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  *(v0 + 128) = v6;
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  *(v0 + 80) = v9;
  *(v5 + 112) = v6;
  *(v5 + 80) = v8;
  *(v5 + 96) = v7;
  *(v5 + 48) = v4;
  *(v5 + 64) = v9;
  *(v5 + 16) = v2;
  *(v5 + 32) = v3;
  *v5 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_9A63C0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_13C80(0, &qword_DE8ED0);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_9B38A4;
  v11[4] = v10;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3D24, v11);
}

uint64_t sub_9A6560(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v2;
  v3 = *(a1 + 16);
  v8 = *a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v15 = *(a1 + 112);
  v11 = v5;
  v12 = v1;
  sub_9B3214(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B38);
  return sub_AB98D0();
}

Swift::Void __swiftcall JSBridge.retryInitialization()()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_AB7CF0();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    sub_AB9F50();
    if (qword_E23FA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_AB4A90();
  *v5 = sub_ABA150();
  v7(v5, v6, v2);
  v10 = sub_AB7CF0();
  v9(v5, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    v13 = v12[2];
    if (!(v13 >> 62))
    {
      v14 = v12[3];
      v15 = v12[4];
      v17 = *v12;
      v16 = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12[2] = 0x8000000000000000;
      JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(v17, v16, v13 & 1, v14, v15);
      swift_unknownObjectRelease();
    }

    return;
  }

  v19 = *v12;
  v18 = v12[1];
  v20 = v12[3];
  v21 = v12[2];
  v22 = v12[4];
  *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  v23 = v21 >> 62;
  if (!(v21 >> 62))
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0x8000000000000000;
    v12[3] = 0;
    v12[4] = 0;
    JSBridge.start(rootElementSizing:applicationActivationMethod:selectedTabIdentifier:)(v19, v18, v21 & 1, v20, v22);
    swift_unknownObjectRelease();
  }

  *(v1 + v11) = 0;
  if ((v23 == 0) == (v12[2] >> 62 != 0))
  {
    v10 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_11:
      [v10 postNotificationName:static JSBridge.didFailInitializationDidChange object:v1];

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }
}

uint64_t JSBridge.initializationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &unk_E01230);
}

uint64_t JSBridge.initializationDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  swift_beginAccess();
  sub_160B4(a1, v1 + v3, &unk_E01230);
  return swift_endAccess();
}

NSString sub_9A6A80()
{
  result = sub_AB9260();
  static JSBridge.didFailInitializationDidChange = result;
  return result;
}

uint64_t *JSBridge.didFailInitializationDidChange.unsafeMutableAddressor()
{
  if (qword_E23F50 != -1)
  {
    swift_once();
  }

  return &static JSBridge.didFailInitializationDidChange;
}

NSString sub_9A6B2C()
{
  result = sub_AB9260();
  static JSBridge.bridgeInitializationDidSucceed = result;
  return result;
}

uint64_t *JSBridge.bridgeInitializationDidSucceed.unsafeMutableAddressor()
{
  if (qword_E23F58 != -1)
  {
    swift_once();
  }

  return &static JSBridge.bridgeInitializationDidSucceed;
}

uint64_t sub_9A6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_9A6C90(a2, a1);

  v13 = sub_A96570(a2);
  v15 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v14 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = v14;
  v18 = 1;

  sub_9A88F0(v17, a7);
  return sub_9B3534(v17);
}

char *sub_9A6C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a2 + 16);

    if (v5)
    {
      v6 = 0;
      v7 = a2 + 32;
      v8 = (a1 + 32);
      v9 = _swiftEmptyArrayStorage;
      while (1)
      {
        *&v21[0] = v6;
        sub_808B0(v7 + 32 * v6, v21 + 8);
        v23 = v21[0];
        v24 = v21[1];
        v25 = v22;
        if (!v22)
        {
          break;
        }

        ++v6;
        v17 = *&v21[0];
        sub_9ACFC((&v23 + 8), v21);
        v10 = v3;
        v11 = v8;
        while (v10)
        {
          v12 = *v11++;
          --v10;
          if (v12 == v17)
          {
            v20 = &type metadata for Any + 8;
            v19[0] = swift_allocObject();
            sub_808B0(v21, v19[0] + 16);
            goto LABEL_10;
          }
        }

        v20 = &type metadata for Any + 8;
        v19[0] = swift_allocObject();
        sub_808B0(v21, v19[0] + 16);
        v13 = JSSerialize(_:)(v19);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v20 = sub_13C80(0, &qword_DFA720);
        v19[0] = v13;
LABEL_10:
        sub_808B0(v19, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_A98518(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_A98518((v14 > 1), v15 + 1, 1, v9);
        }

        __swift_destroy_boxed_opaque_existential_0(v21);
        *(v9 + 2) = v15 + 1;
        sub_9ACFC(v18, &v9[32 * v15 + 32]);
        __swift_destroy_boxed_opaque_existential_0(v19);
        if (v6 == v5)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
LABEL_20:
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    return v9;
  }

  else
  {

    return sub_A96418(a2);
  }
}

uint64_t sub_9A6F04(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  v11 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
  v13 = *(a2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v25 = v12;
  v26 = v11;
  v14 = *(*v13 + 128);
  swift_bridgeObjectRetain_n();

  v15 = a1;
  v14(a1, &v25);

  if (a5)
  {
    v16 = 1;
    v17 = a3;
    v18 = a4;
  }

  else
  {
    v19 = _s11MusicJSCore27JSNativelyInstantiatedClassO10fromObjectACSgAA8JSObjectC_tcfC_0(v15);
    if (v19 == 44)
    {
    }

    v17 = JSNativelyInstantiatedClass.rawValue.getter(v19);
    v18 = v21;
    v16 = 0;
  }

  sub_9B3BE4(a3, a4, a5);
  sub_9B3C34(v17, v18, a5, v16);
  v22 = sub_A96418(a6);
  v25 = v17;
  v26 = v18;
  v27 = a5;
  v28 = v16;
  v29 = v22;
  v30 = v12;
  v31 = v11;
  v32 = 0;
  sub_9A88F0(&v25, a7 & 1);
  sub_9B3C8C(v17, v18, a5, v16);
  return sub_9B3534(&v25);
}

uint64_t sub_9A7094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v8 = a2;
  v9 = a3;
  v6 = *(*v5 + 128);

  v6(0, &v8);

  v8 = a2;
  v9 = a3;
  v10 = 2;

  sub_9A88F0(&v8, 0);
  return sub_9B3534(&v8);
}

uint64_t sub_9A7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9[0] = a1;
  v6 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v7 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v9[1] = a2;
  v9[2] = v6;
  v9[3] = v7;
  v10 = 3;

  sub_9A88F0(v9, a5);
  return sub_9B3534(v9);
}

uint64_t sub_9A71D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
  v11 = *(a2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
  v15 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  v10 = v15;
  v16 = v9;
  v12 = *(*v11 + 128);
  swift_bridgeObjectRetain_n();

  v13 = a1;
  v12(a1, &v15);

  v15 = a3;
  v16 = a4;
  v17 = v10;
  v18 = v9;
  v19 = 4;

  sub_9A88F0(&v15, a5);
  return sub_9B3534(&v15);
}

uint64_t sub_9A72D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_A96418(a3);
  v10 = *(a4 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v9 = *(a4 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v13 = 5;

  sub_9A88F0(v12, 0);
  return sub_9B3534(v12);
}

uint64_t sub_9A736C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v25 = 0u;
  v26 = 0u;
  if (a1)
  {
    sub_15F84(a2, &v18, &unk_DE8E40);
    if (v19)
    {
      sub_9ACFC(&v18, &v20);
      v13 = JSSerialize(_:)(&v20);
      v14 = sub_13C80(0, &qword_DFA720);
      __swift_destroy_boxed_opaque_existential_0(&v20);
      sub_12E1C(&v25, &unk_DE8E40);
      *&v25 = v13;
      *(&v26 + 1) = v14;
    }

    else
    {
      sub_12E1C(&v18, &unk_DE8E40);
    }
  }

  else
  {
    sub_12E1C(&v25, &unk_DE8E40);
    sub_15F84(a2, &v25, &unk_DE8E40);
  }

  *&v20 = a3;
  *(&v20 + 1) = a4;
  sub_15F84(&v25, v21, &unk_DE8E40);
  v21[32] = a1 & 1;
  v15 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
  v16 = *(a5 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  v22 = v15;
  v23 = v16;
  v24 = 6;

  sub_9A88F0(&v20, a7 & 1);
  sub_9B3534(&v20);
  return sub_12E1C(&v25, &unk_DE8E40);
}

uint64_t sub_9A7534()
{
  v1 = v0;
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = sub_AB7CF0();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  *v5 = sub_ABA150();
  v8(v5, v7, v2);
  v6 = sub_AB7CF0();
  v10(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  v12 = v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v13 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v14 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v15 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  v16 = (v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24);
  v17 = *v16;
  v18 = *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 32);
  v19 = v15 >> 62;
  if (*(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) != 1)
  {
    if (!v19 || v19 == 2 && ((v23 = v17 | v14, v15 == 0x8000000000000000) && !(v23 | v13 | v18) || (v24 = v23 | v18, v15 == 0x8000000000000000) && v13 == 1 && !v24 || v15 == 0x8000000000000000 && v13 == 2 && !v24 || v15 == 0x8000000000000000 && v13 == 3 && !v24))
    {
      result = 0;
      *(v1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 0;
      return result;
    }

    type metadata accessor for JSBridge.SuspensionContext();
    v26 = swift_allocObject();
    v26[2] = _swiftEmptyArrayStorage;
    v26[3] = _swiftEmptyArrayStorage;
    v26[4] = v13;
    v26[5] = v14;
    v26[6] = v15;
    v26[7] = v17;
    v26[8] = v18;
    *v12 = v26;
    *(v12 + 8) = xmmword_B10820;
    *v16 = 0;
    v16[1] = 0;
    *(v1 + v11) = 0;
    if (v19)
    {
      return 1;
    }

    v6 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_35:
      [v6 postNotificationName:static JSBridge.didFailInitializationDidChange object:v1];

      return 1;
    }

LABEL_39:
    swift_once();
    goto LABEL_35;
  }

  if (!v19)
  {
    return 0;
  }

  if (v19 == 2)
  {
    v20 = v17 | v14;
    if (v15 == 0x8000000000000000 && !(v20 | v13 | v18))
    {
      return 0;
    }

    v21 = v20 | v18;
    if (v15 == 0x8000000000000000 && v13 == 1 && !v21)
    {
      return 0;
    }

    if (v15 == 0x8000000000000000 && v13 == 2 && !v21 || v15 == 0x8000000000000000 && v13 == 3 && !v21)
    {
      return 0;
    }
  }

  type metadata accessor for JSBridge.SuspensionContext();
  v25 = swift_allocObject();
  v25[2] = _swiftEmptyArrayStorage;
  v25[3] = _swiftEmptyArrayStorage;
  v25[4] = v13;
  v25[5] = v14;
  v25[6] = v15;
  v25[7] = v17;
  v25[8] = v18;
  *v12 = v25;
  *(v12 + 8) = xmmword_B10820;
  result = 1;
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_9A78F0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v25 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v25 >> 62 == 1)
  {
    v3 = *v1;
    v4 = v1[1];
    swift_beginAccess();
    v5 = v3[3];
    swift_beginAccess();
    v6 = v3[2];

    v24 = v4;
    sub_9B361C(v3, v4, v25);
    sub_9A1388(v6);
    v7 = v5;
    v9 = v3[4];
    v8 = v3[5];
    v11 = v3[6];
    v10 = v3[7];
    v12 = v3[8];
    if (v11 >> 62 == 1)
    {
      if (*(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) == 1)
      {
        swift_beginAccess();
        sub_9B361C(v9, v8, v11);

        sub_9A1388(v7);
        swift_endAccess();
        sub_9B1C40(v9, v8, v11);
        v13 = v3;
        v14 = v24;
        v15 = v25;
      }

      else
      {
        swift_beginAccess();
        sub_9B361C(v9, v8, v11);

        sub_9A1388(v7);
        swift_endAccess();
        sub_9B1C40(v3, v24, v25);
        v13 = v9;
        v14 = v8;
        v15 = v11;
      }

      sub_9B1C40(v13, v14, v15);
      v18 = *v1;
      v19 = v1[1];
      v20 = v1[2];
      *v1 = v9;
      v1[1] = v8;
      v1[2] = v11;
      v1[3] = v10;
      v1[4] = v12;
    }

    else
    {
      v16 = v3[8];
      swift_beginAccess();
      sub_9B361C(v9, v8, v11);
      sub_9A1388(v7);
      swift_endAccess();
      v17 = *v1;
      v22 = v1[2];
      v23 = v1[1];
      *v1 = v9;
      v1[1] = v8;
      v1[2] = v11;
      v1[3] = v10;
      v1[4] = v16;
      sub_9B361C(v9, v8, v11);
      sub_9B1C40(v17, v23, v22);
      sub_9AC69C();
      sub_9B1C40(v9, v8, v11);
      v18 = v3;
      v19 = v24;
      v20 = v25;
    }

    return sub_9B1C40(v18, v19, v20);
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t JSBridge.environmentMonitorDidChangeNetworkReachability(_:)()
{
  sub_13C80(0, &qword_DE8ED0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B0F18, v1);
}

void sub_9A7CB4()
{
  sub_AB9F50();
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  sub_AB4A90();
  JSBridge.retryInitialization()();
}

uint64_t sub_9A7DF4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24A90);
  __chkstk_darwin();
  v4 = &v15[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B18);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC11MusicJSCore8JSBridge____lazy_storage___bootSignpost;
  swift_beginAccess();
  sub_15F84(v1 + v9, v8, &qword_E24B18);
  v10 = type metadata accessor for Signpost();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_9B1F40(v8, a1, type metadata accessor for Signpost);
  }

  sub_12E1C(v8, &qword_E24B18);
  v12 = sub_AB4B00();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = *OS_os_log.musicSignposts.unsafeMutableAddressor();
  Signpost.init(name:id:log:)("Boot JSBridge", 13, 2, v4, v13, a1);
  sub_9B1D08(a1, v6, type metadata accessor for Signpost);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_160B4(v6, v1 + v9, &qword_E24B18);
  return swift_endAccess();
}

unint64_t *sub_9A80AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_6D7E0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_808B0(v4, v8);
      sub_9A81A0(v9, v8);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6D7E0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_9ACFC(v9, &v2[4 * v6 + 4]);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_9A81A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  sub_808B0(a1, &v69);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AF0);
  if (swift_dynamicCast())
  {
    v7 = sub_9A80AC(v64);

    a2[3] = v6;
    *a2 = v7;
    return result;
  }

  sub_808B0(v4, &v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if (swift_dynamicCast())
  {
    if (*(v64 + 16))
    {
      v9 = sub_2EBF88(0xD000000000000016, 0x8000000000B7DFB0);
      if (v10)
      {
        sub_808B0(*(v64 + 56) + 32 * v9, &v69);
        if (swift_dynamicCast())
        {
          v11 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects);
          v69 = v64;
          v12 = *(*v11 + 120);

          v13 = v12(&v69);

          if (v13)
          {
            v14 = *(v64 + 16);

            if (v14 != 1)
            {
              goto LABEL_52;
            }

            result = type metadata accessor for JSObject();
            a2[3] = result;
            *a2 = v13;
            return result;
          }
        }
      }
    }
  }

  sub_808B0(v4, &v69);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
  if (!swift_dynamicCast())
  {
    return sub_808B0(v4, a2);
  }

  v54 = v15;
  v55 = a2;
  v16 = sub_97E70(&_swiftEmptyArrayStorage);
  v17 = 0;
  v4 = v64 + 64;
  v56 = v64;
  v18 = 1 << *(v64 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v64 + 64);
  a2 = ((v18 + 63) >> 6);
  while (v20)
  {
    v13 = v17;
LABEL_25:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v24 | (v13 << 6);
    sub_9ACA0(*(v56 + 48) + 40 * v25, v62);
    sub_808B0(*(v56 + 56) + 32 * v25, v61);
    v64 = v62[0];
    v65 = v62[1];
    *&v66 = v63;
    sub_9ACFC(v61, (&v66 + 8));
    v23 = v13;
LABEL_26:
    v71[0] = v66;
    v71[1] = v67;
    v72 = v68;
    v69 = v64;
    v70 = v65;
    if (!*(&v65 + 1))
    {

      v55[3] = v54;
      *v55 = v16;
      return result;
    }

    v57 = v23;
    v64 = v69;
    v65 = v70;
    *&v66 = *&v71[0];
    sub_9ACFC((v71 + 8), v61);
    sub_9A81A0(v60, v61);
    v59 = &type metadata for AnyHashable;
    *&v58 = swift_allocObject();
    sub_9ACA0(&v64, v58 + 16);
    sub_9A81A0(v62, &v58);
    __swift_destroy_boxed_opaque_existential_0(&v58);
    sub_13C80(0, &qword_DFA720);
    if (swift_dynamicCast())
    {
      v26 = v3;
      v27 = v58;
      sub_308C94();
      v28 = v27;
      sub_ABAD10();
      sub_808B0(v60, &v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_2EC004(v62);
      v32 = v16[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }

      v35 = v30;
      if (v16[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_330244();
        }
      }

      else
      {
        sub_325C7C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_2EC004(v62);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_58;
        }

        v31 = v36;
      }

      if (v35)
      {
        v47 = (v16[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_0(v47);
        sub_9ACFC(&v58, v47);

        sub_8085C(v62);
        __swift_destroy_boxed_opaque_existential_0(v60);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_8085C(&v64);
      }

      else
      {
        v16[(v31 >> 6) + 8] |= 1 << v31;
        sub_9ACA0(v62, v16[6] + 40 * v31);
        sub_9ACFC(&v58, (v16[7] + 32 * v31));

        sub_8085C(v62);
        __swift_destroy_boxed_opaque_existential_0(v60);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_8085C(&v64);
        v51 = v16[2];
        v43 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v43)
        {
          goto LABEL_56;
        }

        v16[2] = v52;
      }

      v17 = v57;
      v3 = v26;
    }

    else
    {
      sub_9ACA0(&v64, v62);
      sub_808B0(v60, &v58);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = sub_2EC004(v62);
      v41 = v16[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_55;
      }

      v45 = v40;
      if (v16[3] >= v44)
      {
        if (v38)
        {
          goto LABEL_41;
        }

        v53 = v39;
        sub_330244();
        v39 = v53;
        if (v45)
        {
          goto LABEL_15;
        }

LABEL_42:
        v16[(v39 >> 6) + 8] |= 1 << v39;
        v48 = v39;
        sub_9ACA0(v62, v16[6] + 40 * v39);
        sub_9ACFC(&v58, (v16[7] + 32 * v48));
        sub_8085C(v62);
        __swift_destroy_boxed_opaque_existential_0(v60);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_8085C(&v64);
        v49 = v16[2];
        v43 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v43)
        {
          goto LABEL_57;
        }

        v16[2] = v50;
        v17 = v57;
      }

      else
      {
        sub_325C7C(v44, v38);
        v39 = sub_2EC004(v62);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_58;
        }

LABEL_41:
        if ((v45 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_15:
        v21 = (v16[7] + 32 * v39);
        __swift_destroy_boxed_opaque_existential_0(v21);
        sub_9ACFC(&v58, v21);
        sub_8085C(v62);
        __swift_destroy_boxed_opaque_existential_0(v60);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_8085C(&v64);
        v17 = v57;
      }
    }
  }

  if (a2 <= v17 + 1)
  {
    v22 = (v17 + 1);
  }

  else
  {
    v22 = a2;
  }

  v23 = v22 - 1;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      v20 = 0;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      goto LABEL_26;
    }

    v20 = *(v4 + 8 * v13);
    ++v17;
    if (v20)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_52:

  return sub_808B0(v4, a2);
}

void sub_9A88F0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v9 = sub_ABA150();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_AB7CF0();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2)
  {
    sub_9B34FC(a1, &v56);
    v6 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup;
    swift_beginAccess();
    v10 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v6) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_A98628((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 16) = v13 + 1;
      v14 = (v10 + 80 * v13);
      v14[2] = v56;
      v15 = v57;
      v16 = v58;
      v17 = v59[0];
      *(v14 + 89) = *(v59 + 9);
      v14[4] = v16;
      v14[5] = v17;
      v14[3] = v15;
      *(v3 + v6) = v10;
      swift_endAccess();
      return;
    }

LABEL_26:
    v10 = sub_A98628(0, *(v10 + 16) + 1, 1, v10);
    *(v3 + v6) = v10;
    goto LABEL_4;
  }

  v18 = (v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v19 = *(v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  if (v19 >> 62 == 1)
  {
    v21 = *v18;
    v20 = v18[1];
    if (*(v3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) == 1)
    {
      sub_9B34FC(a1, &v56);
      swift_beginAccess();
      v22 = *(v21 + 24);

      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 24) = v22;
      if ((v23 & 1) == 0)
      {
        v22 = sub_A98628(0, *(v22 + 2) + 1, 1, v22);
        *(v21 + 24) = v22;
      }

      v24 = *(v22 + 2);
      v25 = *(v22 + 3);
      v26 = v24 + 1;
      if (v24 >= v25 >> 1)
      {
        v49 = v22;
        v50 = *(v22 + 2);
        v51 = sub_A98628((v25 > 1), v24 + 1, 1, v49);
        v24 = v50;
        v22 = v51;
      }

      *(v22 + 2) = v26;
      v27 = &v22[80 * v24];
      *(v27 + 2) = v56;
      v28 = v57;
      v29 = v58;
      v30 = v59[0];
      *(v27 + 89) = *(v59 + 9);
      *(v27 + 4) = v29;
      *(v27 + 5) = v30;
      *(v27 + 3) = v28;
      *(v21 + 24) = v22;
    }

    else
    {
      sub_9B34FC(a1, &v56);
      swift_beginAccess();
      v40 = *(v21 + 16);

      v41 = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 16) = v40;
      if ((v41 & 1) == 0)
      {
        v40 = sub_A98628(0, *(v40 + 2) + 1, 1, v40);
        *(v21 + 16) = v40;
      }

      v42 = *(v40 + 2);
      v43 = *(v40 + 3);
      v44 = v42 + 1;
      if (v42 >= v43 >> 1)
      {
        v52 = v40;
        v53 = *(v40 + 2);
        v54 = sub_A98628((v43 > 1), v42 + 1, 1, v52);
        v42 = v53;
        v40 = v54;
      }

      *(v40 + 2) = v44;
      v45 = &v40[80 * v42];
      *(v45 + 2) = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59[0];
      *(v45 + 89) = *(v59 + 9);
      *(v45 + 4) = v47;
      *(v45 + 5) = v48;
      *(v45 + 3) = v46;
      *(v21 + 16) = v40;
    }

    swift_endAccess();
    sub_9B1C40(v21, v20, v19);
  }

  else
  {
    sub_9B34FC(a1, &v56);
    v31 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
    swift_beginAccess();
    v32 = *(v3 + v31);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v31) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_A98628(0, *(v32 + 2) + 1, 1, v32);
      *(v3 + v31) = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_A98628((v34 > 1), v35 + 1, 1, v32);
    }

    *(v32 + 2) = v35 + 1;
    v36 = &v32[80 * v35];
    *(v36 + 2) = v56;
    v37 = v57;
    v38 = v58;
    v39 = v59[0];
    *(v36 + 89) = *(v59 + 9);
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *(v3 + v31) = v32;
    swift_endAccess();
    sub_9AC69C();
  }
}

void sub_9A8DB0(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  v9 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    a1(v9);
    return;
  }

  v11 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v12 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  a1(v9);
  *(v2 + v10) = 0;
  if (((v12 ^ (*(v11 + 16) >> 62 != 0)) & 1) == 0)
  {
    v8 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_6:
      [v8 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }
}

void sub_9A8FF8(void (*a1)(uint64_t))
{
  v16 = a1;
  v2 = v1;
  v3 = sub_AB7CC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_13C80(0, &qword_DE8ED0);
  *v6 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = sub_AB7CF0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *v6 = sub_ABA150();
  v9(v6, v8, v3);
  v7 = sub_AB7CF0();
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    v16(v2);
    return;
  }

  v13 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v14 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  v16(v2);
  *(v2 + v12) = 0;
  if (v14 == (*(v13 + 16) >> 62 != 0))
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_7:
      [v7 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }
}

uint64_t sub_9A926C(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v3 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v2 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8];
  v4 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  v5 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24];
  if (v4 >> 62 == 1)
  {
    sub_9B361C(*&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state], v2, v4);
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[6];

    while (1)
    {
      sub_9B361C(v6, v7, v8);

      if (v8 >> 62 != 1)
      {
        break;
      }

      v3 = v6;

      v6 = *(v6 + 32);
      v7 = v3[5];
      v8 = v3[6];
    }

    sub_9B1C40(v6, v7, v8);
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[6];
    *(v3 + 2) = xmmword_AF8610;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = 0x8000000000000000;
    sub_9B1C40(v9, v10, v11);
  }

  else if (v4 >> 62 == 2 && v3 == (&dword_4 + 1) && v2 == 0 && v4 == 0x8000000000000000 && *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 24] == 0)
  {
    *v1 = xmmword_B09CB0;
    *(v1 + 2) = 0x8000000000000000;
    *v5 = 0;
    *(v5 + 1) = 0;
    v17 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
    swift_beginAccess();
    v19 = *&a1[v17];
    *&a1[v17] = &_swiftEmptyArrayStorage;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    v21 = a1;
    JSThread.enqueueBlock(_:)(sub_9B3680, v20);
  }

  else
  {
    sub_ABAD90(90);
    v23._object = 0x8000000000B7E0F0;
    v23._countAndFlagsBits = 0xD000000000000057;
    sub_AB94A0(v23);
    sub_ABAF70();
    v24._countAndFlagsBits = 46;
    v24._object = 0xE100000000000000;
    sub_AB94A0(v24);
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_9A9514(char *a1, uint64_t a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment];
  if (v13)
  {
    v21 = result;

    sub_9AA244(a2, v13);
    v15 = v14;
    sub_13C80(0, &qword_DE8ED0);
    v16 = sub_ABA150();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    aBlock[4] = sub_9B36C8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_192;
    v18 = _Block_copy(aBlock);
    v19 = a1;

    sub_AB7C30();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_9B3158(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v21);
  }

  return result;
}

void sub_9A9810(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_AB7CC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_13C80(0, &qword_DE8ED0);
  *v6 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = sub_AB7CF0();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *v6 = sub_ABA150();
  v9(v6, v8, v3);
  v7 = sub_AB7CF0();
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState;
  if (*(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) == 1)
  {
    sub_9A9A7C(v16, v2);
    return;
  }

  v13 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v14 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16) >> 62 == 0;
  *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState) = 1;
  sub_9A9A7C(v16, v2);
  *(v2 + v12) = 0;
  if (v14 == (*(v13 + 16) >> 62 != 0))
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_E23F50 == -1)
    {
LABEL_7:
      [v7 postNotificationName:static JSBridge.didFailInitializationDidChange object:v2];

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }
}

uint64_t sub_9A9A7C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v84 = &_swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v56 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects;
    v55 = a1 + 32;
    v5 = &unk_DE8E40;
    v54 = *(a1 + 16);
    while (1)
    {
      sub_9B3564(v55 + 80 * v4, &v70);
      if (!v73[24])
      {
        v17 = *(&v70 + 1);
        v18 = v71;
        v19 = JSScriptingInstantiatedClass.constructScriptingDrivenInstance(_:)(*(&v70 + 1), v71, v70);
        v20 = *(a2 + v56);
        *&v62 = v17;
        *(&v62 + 1) = v18;
        v21 = *(*v20 + 128);

        v22 = v19;
        v21(v19, &v62);

        v23 = v22;
        sub_AB9730();
        if (*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v84 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();

        goto LABEL_5;
      }

      v6 = v5;
      if (v73[24] == 1)
      {
        break;
      }

      v24 = v70;
      v25 = v73[0];
      v77 = v71;
      v78 = v72;
      v26 = *(a2 + v56);
      v60[0] = *&v73[8];
      v27 = *(*v26 + 120);

      v28 = v27(v60);

      if (v28)
      {
        *&v60[0] = v28;
        type metadata accessor for JSObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B08);
        if (swift_dynamicCast())
        {
          v3 = v54;
          if (*(&v61[1] + 1))
          {
            sub_70DF8(v61, &v62);
            memset(v61, 0, 32);
            if (v25)
            {
              sub_15F84(&v77, &v58, v5);
              if (*(&v59 + 1))
              {
                sub_9ACFC(&v58, v60);
                sub_9A81A0(v60, &v58);
                __swift_destroy_boxed_opaque_existential_0(v60);
                sub_12E1C(v61, v5);
                v61[0] = v58;
                v61[1] = v59;
              }

              else
              {
                sub_12E1C(&v58, v5);
              }
            }

            else
            {
              sub_12E1C(v61, v5);
              sub_15F84(&v77, v61, v5);
            }

            v31 = *(&v63 + 1);
            v32 = v64;
            __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
            (*(v32 + 16))(v24, *(&v24 + 1), v61, v31, v32);

            sub_12E1C(v61, v5);
            sub_12E1C(&v77, v5);
            __swift_destroy_boxed_opaque_existential_0(&v62);
            goto LABEL_5;
          }
        }

        else
        {
          memset(v61, 0, 40);
          v3 = v54;
        }

        sub_12E1C(&v77, v5);
      }

      else
      {
        sub_12E1C(&v77, v5);

        memset(v61, 0, 40);
        v3 = v54;
      }

      sub_12E1C(v61, &qword_E24B00);
LABEL_5:
      if (++v4 == v3)
      {

        v2 = a2;
        goto LABEL_39;
      }
    }

    v7 = *(&v70 + 1);
    v53 = v70;
    v8 = v71;
    v9 = *(a2 + v56);
    v62 = __PAIR128__(v72, *(&v71 + 1));
    v10 = *(*v9 + 120);

    v11 = v10(&v62);

    if (v11)
    {
      *&v62 = v11;
      type metadata accessor for JSObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B08);
      if (swift_dynamicCast())
      {
        if (*(&v61[1] + 1))
        {
          sub_70DF8(v61, &v62);
          v12 = *(v8 + 16);
          if (v12)
          {
            *&v60[0] = &_swiftEmptyArrayStorage;
            sub_6D7E0(0, v12, 0);
            v13 = *&v60[0];
            v14 = v8 + 32;
            do
            {
              sub_808B0(v14, &v77);
              sub_9A81A0(&v77, v61);
              __swift_destroy_boxed_opaque_existential_0(&v77);
              *&v60[0] = v13;
              v16 = v13[2];
              v15 = v13[3];
              if (v16 >= v15 >> 1)
              {
                sub_6D7E0((v15 > 1), v16 + 1, 1);
                v13 = *&v60[0];
              }

              v13[2] = v16 + 1;
              sub_9ACFC(v61, &v13[4 * v16 + 4]);
              v14 += 32;
              --v12;
            }

            while (v12);

            v3 = v54;
          }

          else
          {

            v13 = &_swiftEmptyArrayStorage;
          }

          v29 = *(&v63 + 1);
          v30 = v64;
          __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
          (*(v30 + 8))(v53, v7, v13, v29, v30);

          __swift_destroy_boxed_opaque_existential_0(&v62);
          goto LABEL_30;
        }
      }

      else
      {
        memset(v61, 0, 40);
      }
    }

    else
    {

      memset(v61, 0, 40);
    }

    sub_12E1C(v61, &qword_E24B00);
LABEL_30:
    v5 = v6;
    goto LABEL_5;
  }

LABEL_39:
  v33 = v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state;
  v34 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
  v35 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
  v36 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
  *v33 = xmmword_AF8610;
  *(v33 + 16) = 0x8000000000000000;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  v37 = sub_9B1C40(v34, v35, v36);
  v38 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
  *&v73[16] = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
  v74 = v38;
  v75 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
  v76 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
  v39 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
  v70 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
  v71 = v39;
  v40 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
  v72 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
  *v73 = v40;
  v41 = v70;
  v42 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
  v43 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
  v82 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
  v83 = v42;
  v44 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
  v45 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
  v77 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
  v78 = v45;
  v46 = *(v2 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
  v80 = v44;
  v81 = v43;
  v79 = v46;
  if (v70)
  {
    v47 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks;
    v37 = swift_beginAccess();
    v48 = *(v2 + v47);
    v49 = *(v48 + 16);
    if (v49)
    {
      *(v2 + v47) = &_swiftEmptyArrayStorage;
      v66 = *&v73[16];
      v67 = v74;
      v68 = v75;
      v69 = v76;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      v65 = *v73;
      sub_9B3214(&v62, v61);
      v50 = v48 + 40;
      do
      {
        v51 = *(v50 - 8);
        *(&v61[3] + 8) = v80;
        *(&v61[4] + 8) = v81;
        *(&v61[5] + 8) = v82;
        *(&v61[6] + 8) = v83;
        *(v61 + 8) = v77;
        *(&v61[1] + 8) = v78;
        *&v61[0] = v41;
        *(&v61[2] + 8) = v79;

        v51(v61);

        v50 += 16;
        --v49;
      }

      while (v49);
      sub_12E1C(&v70, &qword_E24AD8);
    }
  }

  return sub_9AC69C(v37);
}

void sub_9AA244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s11MusicJSCore8JSThreadC13assertRunning2onyAC_tFZ_0();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    v8 = sub_AB9260();
    v9 = [v7 evaluateScript:v8];

    if (v9)
    {
      sub_6D4F0(0, v6, 0);
      v10 = &_swiftEmptyArrayStorage;
      v11 = a1 + 32;
      do
      {
        sub_9B34FC(v11, v37);
        v12 = sub_9AA624(v3);
        sub_9B3534(v37);
        *&v32 = v10;
        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          sub_6D4F0((v13 > 1), v14 + 1, 1);
          v10 = v32;
        }

        v10[2] = v14 + 1;
        v10[v14 + 4] = v12;
        v11 += 80;
        --v6;
      }

      while (v6);
      v15 = objc_autoreleasePoolPush();
      v16 = sub_AB9260();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_AF4EC0;
      *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF678);
      *(v17 + 32) = v10;

      isa = sub_AB9740().super.isa;

      v19 = [v9 invokeMethod:v16 withArguments:isa];

      if (v19)
      {

        v20 = [v19 toArray];

        if (v20)
        {
          v21 = sub_AB9760();

          v22 = *(v21 + 16);
          if (v22)
          {
            v23 = &_swiftEmptyArrayStorage;
            v24 = v21 + 32;
            do
            {
              sub_808B0(v24, v36);
              v25 = objc_autoreleasePoolPush();
              sub_808B0(v36, v37);
              sub_9AC048(v37, &v32);
              if (v35[24] == 255)
              {
                sub_12E1C(&v32, &unk_E24AE0);
              }

              else
              {
                v37[2] = v34;
                v38[0] = *v35;
                *(v38 + 9) = *&v35[9];
                v37[0] = v32;
                v37[1] = v33;
                sub_9B3564(v37, &v32);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v23 = sub_A98644(0, *(v23 + 2) + 1, 1, v23);
                }

                v27 = *(v23 + 2);
                v26 = *(v23 + 3);
                if (v27 >= v26 >> 1)
                {
                  v23 = sub_A98644((v26 > 1), v27 + 1, 1, v23);
                }

                sub_9B359C(v37);
                *(v23 + 2) = v27 + 1;
                v28 = &v23[80 * v27];
                v30 = v34;
                v29 = *v35;
                v31 = v33;
                *(v28 + 89) = *&v35[9];
                *(v28 + 4) = v30;
                *(v28 + 5) = v29;
                *(v28 + 3) = v31;
                *(v28 + 2) = v32;
              }

              objc_autoreleasePoolPop(v25);
              __swift_destroy_boxed_opaque_existential_0(v36);
              v24 += 32;
              --v22;
            }

            while (v22);
          }

          else
          {
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_9AA624(uint64_t a1)
{
  sub_9B34FC(v1, &v238);
  v3 = v238;
  if (v245 <= 2u)
  {
    if (v245)
    {
      if (v245 == 1)
      {
        v9 = v239;
        v10 = v240;
        v12 = *(&v241 + 1);
        v11 = v241;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_AF8600;
        *(v13 + 32) = 1701869940;
        *(v13 + 40) = 0xE400000000000000;
        *(v13 + 48) = 0xD000000000000012;
        *(v13 + 56) = 0x8000000000B7E060;
        *(v13 + 72) = &type metadata for String;
        strcpy((v13 + 80), "callbackName");
        *(v13 + 93) = 0;
        *(v13 + 94) = -5120;
        *(v13 + 96) = v3;
        *(v13 + 104) = v9;
        *(v13 + 120) = &type metadata for String;
        *(v13 + 128) = 0x746E656D75677261;
        *(v13 + 136) = 0xE900000000000073;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AF0);
        *(v13 + 144) = v10;
        *(v13 + 168) = v14;
        *(v13 + 176) = 0xD000000000000029;
        *(v13 + 184) = 0x8000000000B7E080;
        *(v13 + 192) = *(&v10 + 1);
        *(v13 + 216) = v14;
        *(v13 + 224) = 0xD000000000000016;
        *(v13 + 264) = &type metadata for String;
        *(v13 + 232) = 0x8000000000B7DFB0;
        *(v13 + 240) = v11;
        *(v13 + 248) = v12;
        v15 = sub_97420(v13);
      }

      else
      {
        v37 = v239;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_AF85F0;
        *(v38 + 32) = 1701869940;
        *(v38 + 40) = 0xE400000000000000;
        *(v38 + 48) = 0x7463757274736564;
        *(v38 + 56) = 0xEB000000006E6F69;
        *(v38 + 72) = &type metadata for String;
        *(v38 + 80) = 0xD000000000000016;
        *(v38 + 120) = &type metadata for String;
        *(v38 + 88) = 0x8000000000B7DFB0;
        *(v38 + 96) = v3;
        *(v38 + 104) = v37;
        v15 = sub_97420(v38);
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
      goto LABEL_19;
    }

    v22 = v238;
    v23 = v239;
    v129 = v240;
    v128 = BYTE8(v240);
    v24 = *(&v241 + 1);
    v25 = v241;
    v26 = v242;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_AF8820;
    *(v27 + 32) = 1701869940;
    *(v27 + 40) = 0xE400000000000000;
    strcpy((v27 + 48), "construction");
    *(v27 + 61) = 0;
    *(v27 + 62) = -5120;
    *(v27 + 72) = &type metadata for String;
    *(v27 + 80) = 0x746E656D75677261;
    *(v27 + 88) = 0xE900000000000073;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AF0);
    *(v27 + 96) = v25;
    *(v27 + 120) = v28;
    *(v27 + 128) = 0xD000000000000016;
    *(v27 + 168) = &type metadata for String;
    *(v27 + 136) = 0x8000000000B7DFB0;
    *(v27 + 144) = v24;
    *(v27 + 152) = v26;
    v15 = sub_97420(v27);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v128)
    {
      if (v22 < 0)
      {
        v51 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v29 = v23;
        v52 = v22;
      }

      else
      {
        v29 = v23;
        v30 = v22;
        switch(v22)
        {
          case 1:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v92 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v92;
            v93 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v93;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v94 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v94;
            v95 = *(&v230 + 1);
            v57 = v231;
            v193 = *(v83 + 88);
            v200 = *(v83 + 104);
            v166 = *(v83 + 56);
            v180 = *(v83 + 72);
            v138 = *(v83 + 24);
            v152 = *(v83 + 40);
            if (v230)
            {
              *v228 = v230;
              *&v228[16] = v231;
              *&v229[32] = *(v83 + 56);
              *&v229[48] = *(v83 + 72);
              *&v229[64] = *(v83 + 88);
              *&v229[80] = *(v83 + 104);
              goto LABEL_50;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v30, v29, v129, 1);
            *&v229[32] = v166;
            *&v229[48] = v180;
            *&v229[64] = v193;
            *&v229[80] = v200;
            v126 = v152;
            *v229 = v138;
            *v228 = 0;
            *&v228[8] = v95;
            *&v228[16] = v57;
            goto LABEL_73;
          case 2:
            v76 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v77 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v78 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v77;
            v79 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v80 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v80;
            v81 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v81;
            v207 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v177 = v79;
            v191 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v149 = v78;
            v163 = v234;
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v57 = *(&v80 + 1);
            v199 = *(v76 + 112);
            v135 = v232;
            if (v230)
            {
              *&v228[8] = *(v76 + 8);
              *v228 = v230;
              *v229 = *(&v231 + 1);
              v82 = *(v76 + 80);
              *&v229[40] = *(v76 + 64);
              *&v229[56] = v82;
              *&v229[72] = *(v76 + 96);
              *&v229[88] = *(v76 + 112);
              v66 = *(v76 + 48);
              *&v229[8] = *(v76 + 32);
              goto LABEL_36;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *&v228[8] = v207;
            *v228 = 0;
            *v229 = v57;
            *&v229[40] = v163;
            *&v229[56] = v177;
            *&v229[72] = v191;
            *&v229[88] = v199;
            *&v229[8] = v135;
            *&v229[24] = v149;
            goto LABEL_80;
          case 3:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v84 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v84;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v85 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v85;
            v86 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v86;
            v216 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v208 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v232;
            v178 = *(v83 + 88);
            v192 = *(v83 + 104);
            v136 = *(v83 + 40);
            v150 = *(v83 + 56);
            v164 = *(v83 + 72);
            if (v230)
            {
              *&v228[8] = *(v83 + 8);
              v87 = *(v83 + 24);
              *v228 = v230;
              *v229 = v87;
              *&v229[8] = v232;
              *&v229[32] = *(v83 + 56);
              *&v229[48] = *(v83 + 72);
              *&v229[64] = *(v83 + 88);
              *&v229[80] = *(v83 + 104);
              goto LABEL_51;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *&v228[8] = v208;
            v126 = v136;
            *&v229[32] = v150;
            *&v229[48] = v164;
            *&v229[64] = v178;
            *&v229[80] = v192;
            *v228 = 0;
            *v229 = v216;
            *&v229[8] = v57;
            goto LABEL_73;
          case 4:
            v59 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v60 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v61 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v61;
            v62 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v63 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v63;
            v64 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v64;
            v205 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v214 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v160 = v62;
            v174 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v57 = *(&v232 + 1);
            v188 = *(v59 + 112);
            v132 = v60;
            v146 = v234;
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              *&v228[8] = v205;
              *v229 = v214;
              *v228 = 0;
              *&v229[16] = v57;
              *&v229[56] = v160;
              *&v229[72] = v174;
              *&v229[88] = v188;
              *&v229[24] = v132;
              *&v229[40] = v146;
              goto LABEL_80;
            }

            *&v228[8] = *(v59 + 8);
            *v229 = *(v59 + 24);
            *v228 = v230;
            *&v229[16] = *(&v232 + 1);
            v65 = *(v59 + 96);
            *&v229[56] = *(v59 + 80);
            *&v229[72] = v65;
            *&v229[88] = *(v59 + 112);
            v66 = *(v59 + 48);
            *&v229[40] = *(v59 + 64);
LABEL_36:
            *&v229[24] = v66;
            goto LABEL_60;
          case 5:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v96 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v96;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v97 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v97;
            v98 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v98;
            v223 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v210 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v218 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = v98;
            v167 = *(v53 + 88);
            v181 = *(v53 + 104);
            v139 = *(v53 + 56);
            v153 = *(v53 + 72);
            if (v230)
            {
              *&v228[8] = *(v53 + 8);
              *v229 = *(v53 + 24);
              v99 = *(v53 + 40);
              *v228 = v230;
              *&v229[16] = v99;
              *&v229[24] = v233;
              *&v229[32] = *(v53 + 56);
              goto LABEL_45;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *&v228[8] = v210;
            *v229 = v218;
            *&v229[32] = v139;
            *&v229[48] = v153;
            *&v229[64] = v167;
            *v228 = 0;
            *&v229[16] = v223;
            *&v229[24] = v57;
            *&v229[80] = v181;
            goto LABEL_80;
          case 6:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v106 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v107 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v107;
            v108 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v109 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v109;
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v106;
            v219 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v224 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v211 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = *(&v106 + 1);
            v183 = *(v105 + 112);
            v155 = v108;
            v169 = *(v105 + 96);
            v141 = v234;
            if (v230)
            {
              *&v228[8] = *(v105 + 8);
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *v228 = v230;
              *&v229[32] = *(&v233 + 1);
              v110 = *(v105 + 80);
              *&v229[40] = *(v105 + 64);
              *&v229[56] = v110;
              goto LABEL_56;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *&v228[8] = v211;
            *v229 = v219;
            *&v229[16] = v224;
            *v228 = 0;
            *&v229[32] = v57;
            *&v229[40] = v141;
            *&v229[56] = v155;
            *&v229[72] = v169;
            v127 = v183;
            goto LABEL_79;
          case 7:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v88 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v88;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v89 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v89;
            v90 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v90;
            v179 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v151 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v165 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v137 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v234;
            v217 = *(v53 + 88);
            v222 = *(v53 + 104);
            v209 = *(v53 + 72);
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              *&v228[8] = v137;
              *v229 = v151;
              *&v229[16] = v165;
              *&v229[48] = v209;
              *v228 = 0;
              *&v229[32] = v179;
              *&v229[40] = v57;
              *&v229[64] = v217;
              *&v229[80] = v222;
              goto LABEL_80;
            }

            *&v228[8] = *(v53 + 8);
            *v229 = *(v53 + 24);
            *&v229[16] = *(v53 + 40);
            v91 = *(v53 + 56);
            *v228 = v230;
            *&v229[32] = v91;
            *&v229[40] = v234;
LABEL_45:
            *&v229[48] = *(v53 + 72);
            goto LABEL_46;
          case 8:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v116 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v116;
            v117 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v118 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v118;
            v119 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v119;
            v171 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v185 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v143 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v157 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = *(&v234 + 1);
            v225 = *(v105 + 112);
            v213 = v117;
            v221 = *(v105 + 96);
            if (v230)
            {
              *&v228[8] = *(v105 + 8);
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *&v229[32] = *(v105 + 56);
              *v228 = v230;
              *&v229[48] = *(&v234 + 1);
              v120 = *(v105 + 96);
              *&v229[56] = *(v105 + 80);
              *&v229[72] = v120;
              goto LABEL_59;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *&v228[8] = v143;
            *v229 = v157;
            *&v229[16] = v171;
            *&v229[32] = v185;
            *v228 = 0;
            *&v229[48] = v57;
            *&v229[56] = v213;
            *&v229[72] = v221;
            v127 = v225;
            goto LABEL_79;
          case 9:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v72 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v72;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v73 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v73;
            v74 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v74;
            v190 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v162 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v176 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v134 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v148 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = v72;
            v206 = *(v53 + 88);
            v215 = *(v53 + 104);
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              *v229 = v148;
              *&v229[16] = v162;
              *&v229[32] = v176;
              *&v228[8] = v134;
              *&v229[64] = v206;
              *v228 = 0;
              *&v229[48] = v190;
              *&v229[56] = v57;
              *&v229[80] = v215;
              goto LABEL_80;
            }

            *v229 = *(v53 + 24);
            *&v229[16] = *(v53 + 40);
            *&v229[32] = *(v53 + 56);
            v75 = *(v53 + 72);
            *v228 = v230;
            *&v229[48] = v75;
            *&v229[56] = v72;
            *&v228[8] = *(v53 + 8);
LABEL_46:
            *&v229[64] = *(v53 + 88);
            goto LABEL_47;
          case 10:
            v105 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v111 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v112 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v111;
            v113 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v114 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v236 = v112;
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v230 = v113;
            v231 = v114;
            v115 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v115;
            v184 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v195 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v156 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v170 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v142 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = *(&v235 + 1);
            v220 = *(v105 + 112);
            v212 = *(v105 + 96);
            if (v113)
            {
              *v229 = *(v105 + 24);
              *&v229[16] = *(v105 + 40);
              *&v229[32] = *(v105 + 56);
              *&v229[48] = *(v105 + 72);
              *&v228[8] = *(v105 + 8);
              *v228 = v113;
              *&v229[64] = *(&v235 + 1);
LABEL_56:
              *&v229[72] = *(v105 + 96);
LABEL_59:
              *&v229[88] = *(v105 + 112);
              goto LABEL_60;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v22, v29, v129, 1);
            *v229 = v156;
            *&v229[16] = v170;
            *&v229[32] = v184;
            *&v229[48] = v195;
            *&v228[8] = v142;
            *v228 = 0;
            *&v229[64] = v57;
            *&v229[72] = v212;
            v127 = v220;
LABEL_79:
            *&v229[88] = v127;
            goto LABEL_80;
          case 11:
            v53 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v54 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v54;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v55 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v55;
            v56 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v56;
            v197 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v173 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v187 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v145 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v159 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v131 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v57 = v236;
            v204 = *(v53 + 104);
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              *&v229[16] = v159;
              *&v229[32] = v173;
              *&v229[48] = v187;
              *&v228[8] = v131;
              *v228 = 0;
              *&v229[64] = v197;
              *&v229[72] = v57;
              *v229 = v145;
              *&v229[80] = v204;
              goto LABEL_80;
            }

            *&v229[16] = *(v53 + 40);
            *&v229[32] = *(v53 + 56);
            *&v229[48] = *(v53 + 72);
            v58 = *(v53 + 88);
            *v228 = v230;
            *&v229[64] = v58;
            *&v229[72] = v236;
            *&v228[8] = *(v53 + 8);
            *v229 = *(v53 + 24);
LABEL_47:
            *&v229[80] = *(v53 + 104);
            goto LABEL_60;
          case 12:
            v67 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v68 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v68;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v69 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v69;
            v70 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v70;
            v189 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v198 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v161 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v175 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v133 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v147 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v57 = *(&v236 + 1);
            v71 = v237;
            if (v230)
            {
              *&v229[16] = *(v67 + 40);
              *&v229[32] = *(v67 + 56);
              *&v229[48] = *(v67 + 72);
              *&v229[64] = *(v67 + 88);
              *&v228[8] = *(v67 + 8);
              *v229 = *(v67 + 24);
              *v228 = v230;
              *&v229[80] = *(&v236 + 1);
              *&v229[88] = v237;
              goto LABEL_60;
            }

            sub_15F84(&v230, v228, &qword_E24AD8);
            sub_9B35CC(v30, v29, v129, 1);
            *&v229[16] = v161;
            *&v229[32] = v175;
            *&v229[48] = v189;
            *&v229[64] = v198;
            *&v228[8] = v133;
            *v229 = v147;
            *v228 = 0;
            *&v229[80] = v57;
            *&v229[88] = v71;
            goto LABEL_80;
          case 13:
            v83 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v100 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v100;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v101 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v102 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v102;
            v103 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v103;
            v203 = v101;
            v194 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v201 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v140 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v154 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v168 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            v182 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v57 = v237;
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              *&v229[32] = v182;
              *&v229[48] = v194;
              *&v229[64] = v201;
              *&v228[8] = v140;
              *v229 = v154;
              *v228 = 0;
              *&v229[80] = v203;
              *&v229[88] = v57;
              *&v229[16] = v168;
              goto LABEL_80;
            }

            *&v229[32] = *(v83 + 56);
            *&v229[48] = *(v83 + 72);
            *&v229[64] = *(v83 + 88);
            v104 = *(v83 + 104);
            *v228 = v230;
            *&v229[80] = v104;
            *&v229[88] = v237;
            *&v228[8] = *(v83 + 8);
LABEL_50:
            *v229 = *(v83 + 24);
LABEL_51:
            *&v229[16] = *(v83 + 40);
LABEL_60:
            sub_15F84(&v230, &v226, &qword_E24AD8);
            v36 = v57;
            goto LABEL_61;
          default:
            v31 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
            v32 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
            v234 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
            v235 = v32;
            v236 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
            v237 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
            v33 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
            v230 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
            v231 = v33;
            v34 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
            v232 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
            v233 = v34;
            v35 = v230;
            v196 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 88);
            v202 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 104);
            v130 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 8);
            v144 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 24);
            v172 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 56);
            v186 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 72);
            v158 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 40);
            if (!v230)
            {
              sub_15F84(&v230, v228, &qword_E24AD8);
              sub_9B35CC(v22, v29, v129, 1);
              v126 = v158;
              *&v229[32] = v172;
              *&v229[48] = v186;
              *&v229[64] = v196;
              *&v229[80] = v202;
              *&v228[8] = v130;
              *v229 = v144;
              *v228 = 0;
LABEL_73:
              *&v229[16] = v126;
LABEL_80:
              sub_12E1C(v228, &qword_E24AD8);
              return v15;
            }

            *v228 = v230;
            *&v229[32] = *(v31 + 56);
            *&v229[48] = *(v31 + 72);
            *&v229[64] = *(v31 + 88);
            *&v229[80] = *(v31 + 104);
            *&v228[8] = *(v31 + 8);
            *v229 = *(v31 + 24);
            *&v229[16] = *(v31 + 40);
            sub_15F84(&v230, &v226, &qword_E24AD8);
            v36 = v35;
LABEL_61:
            v51 = v36;
            sub_12E1C(v228, &qword_E24AD8);
            v52 = v30;
            break;
        }
      }

      v121 = swift_allocObject();
      *(v121 + 32) = 0xD000000000000016;
      *(v121 + 16) = xmmword_AF85F0;
      *(v121 + 40) = 0x8000000000B7DFB0;
      v122 = *&v51[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
      *(v121 + 48) = *&v51[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *(v121 + 56) = v122;
      *(v121 + 72) = &type metadata for String;
      strcpy((v121 + 80), "propertyName");
      *(v121 + 120) = &type metadata for String;
      *(v121 + 93) = 0;
      *(v121 + 94) = -5120;
      *(v121 + 96) = v29;
      *(v121 + 104) = v129;
      v123 = v51;

      v124 = sub_97420(v121);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(&v231 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
      *&v230 = v124;
      sub_9ACFC(&v230, v228);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v15;
      sub_9330C(v228, 0xD000000000000014, 0x8000000000B7E0B0, isUniquelyReferenced_nonNull_native);

      v47 = v52;
      v48 = v29;
      v49 = v129;
      v50 = 1;
    }

    else
    {
      *(&v231 + 1) = &type metadata for String;
      *&v230 = v22;
      *(&v230 + 1) = v23;
      sub_9ACFC(&v230, v228);

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v15;
      sub_9330C(v228, 0x63757274736E6F63, 0xEF656D614E726F74, v46);
      v47 = v22;
      v48 = v23;
      v49 = v129;
      v50 = 0;
    }

    sub_9B35CC(v47, v48, v49, v50);
    return v226;
  }

  else
  {
    if (v245 <= 4u)
    {
      v4 = v239;
      v5 = v240;
      if (v245 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        v6 = swift_allocObject();
        *(v6 + 32) = 1701869940;
        *(v6 + 16) = xmmword_AF8820;
        v7 = "globalScopeAssignment";
        v8 = 0xD000000000000015;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        v6 = swift_allocObject();
        *(v6 + 32) = 1701869940;
        *(v6 + 16) = xmmword_AF8820;
        v7 = "independentlyInstantiatedObjectReconciliation";
        v8 = 0xD00000000000002DLL;
      }

      *(v6 + 40) = 0xE400000000000000;
      *(v6 + 48) = v8;
      *(v6 + 56) = (v7 - 32) | 0x8000000000000000;
      *(v6 + 72) = &type metadata for String;
      *(v6 + 80) = 0x614E6C61626F6C67;
      *(v6 + 88) = 0xEA0000000000656DLL;
      *(v6 + 96) = v3;
      *(v6 + 104) = v4;
      *(v6 + 120) = &type metadata for String;
      *(v6 + 128) = 0xD000000000000016;
      *(v6 + 168) = &type metadata for String;
      *(v6 + 136) = 0x8000000000B7DFB0;
      *(v6 + 144) = v5;
      v15 = sub_97420(v6);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
      goto LABEL_19;
    }

    if (v245 == 5)
    {
      v16 = v239;
      v17 = *(&v240 + 1);
      v19 = v240;
      v18 = v241;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_AF85D0;
      *(v20 + 32) = 1701869940;
      *(v20 + 40) = 0xE400000000000000;
      *(v20 + 48) = 0xD000000000000010;
      *(v20 + 56) = 0x8000000000B7DFD0;
      *(v20 + 72) = &type metadata for String;
      *(v20 + 80) = 0x614E646F6874656DLL;
      *(v20 + 88) = 0xEA0000000000656DLL;
      *(v20 + 96) = v3;
      *(v20 + 104) = v16;
      *(v20 + 120) = &type metadata for String;
      *(v20 + 128) = 0x746E656D75677261;
      *(v20 + 136) = 0xE900000000000073;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AF0);
      *(v20 + 144) = v19;
      *(v20 + 168) = v21;
      *(v20 + 176) = 0xD000000000000016;
      *(v20 + 216) = &type metadata for String;
      *(v20 + 184) = 0x8000000000B7DFB0;
      *(v20 + 192) = v17;
      *(v20 + 200) = v18;
      v15 = sub_97420(v20);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
LABEL_19:
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v15;
    }

    v40 = v239;
    v41 = v242;
    v42 = v243;
    v43 = v244;
    v230 = v240;
    v231 = v241;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_AF85D0;
    *(v44 + 32) = 1701869940;
    *(v44 + 40) = 0xE400000000000000;
    strcpy((v44 + 48), "propertyUpdate");
    *(v44 + 63) = -18;
    *(v44 + 72) = &type metadata for String;
    strcpy((v44 + 80), "propertyName");
    *(v44 + 93) = 0;
    *(v44 + 94) = -5120;
    *(v44 + 96) = v3;
    *(v44 + 104) = v40;
    *(v44 + 120) = &type metadata for String;
    *(v44 + 128) = 0xD000000000000016;
    *(v44 + 136) = 0x8000000000B7DFB0;
    *(v44 + 144) = v42;
    *(v44 + 152) = v43;
    *(v44 + 168) = &type metadata for String;
    *(v44 + 176) = 0xD000000000000019;
    *(v44 + 184) = 0x8000000000B7DFF0;
    *(v44 + 216) = &type metadata for Bool;
    *(v44 + 192) = v41;
    v15 = sub_97420(v44);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_15F84(&v230, &v226, &unk_DE8E40);
    if (v227)
    {
      sub_9ACFC(&v226, v228);
      sub_808B0(v228, &v226);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_9330C(&v226, 0x65756C6176, 0xE500000000000000, v45);
      __swift_destroy_boxed_opaque_existential_0(v228);
      sub_12E1C(&v230, &unk_DE8E40);
    }

    else
    {
      sub_12E1C(&v230, &unk_DE8E40);
      sub_12E1C(&v226, &unk_DE8E40);
    }
  }

  return v15;
}

uint64_t sub_9AC048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_808B0(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!*(v33 + 16) || (v4 = sub_2EBF88(1701869940, 0xE400000000000000), (v5 & 1) == 0))
  {
LABEL_47:

LABEL_48:
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_49;
  }

  sub_808B0(*(v33 + 56) + 32 * v4, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!*(v33 + 16) || (v6 = sub_2EBF88(0xD000000000000016, 0x8000000000B7DFB0), (v7 & 1) == 0))
  {
LABEL_21:

    goto LABEL_47;
  }

  sub_808B0(*(v33 + 56) + 32 * v6, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v33 != __PAIR128__(0xEC0000006E6F6974, 0x63757274736E6F63) && (sub_ABB3C0() & 1) == 0)
  {
    if (__PAIR128__(0x8000000000B7DFD0, 0xD000000000000010) == v33 || (sub_ABB3C0() & 1) != 0)
    {

      if (!*(v33 + 16))
      {
        goto LABEL_21;
      }

      v21 = sub_2EBF88(0x614E646F6874656DLL, 0xEA0000000000656DLL);
      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_808B0(*(v33 + 56) + 32 * v21, v34);
      if (swift_dynamicCast())
      {
        if (!*(v33 + 16) || (v23 = sub_2EBF88(0x746E656D75677261, 0xE900000000000073), (v24 & 1) == 0))
        {

          goto LABEL_47;
        }

        sub_808B0(*(v33 + 56) + 32 * v23, v34);
        __swift_destroy_boxed_opaque_existential_0(a1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AF0);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_23;
        }

        v18 = &v37;
        v35 = v33;
        *&v36 = v33;
        v17 = &v36 + 8;
        v16 = 1;
LABEL_18:
        *v17 = v33;
        *v18 = *(&v33 + 1);
        v38[24] = v16;
        v19 = *v38;
        *(a2 + 32) = v37;
        *(a2 + 48) = v19;
        *(a2 + 57) = *&v38[9];
        v20 = v36;
        *a2 = v35;
        *(a2 + 16) = v20;
        return result;
      }
    }

    else
    {
      if (v33 == __PAIR128__(0xEE00657461647055, 0x79747265706F7270))
      {
      }

      else
      {
        v25 = sub_ABB3C0();

        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (!*(v33 + 16))
      {
        goto LABEL_21;
      }

      v26 = sub_2EBF88(0x79747265706F7270, 0xEC000000656D614ELL);
      if ((v27 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_808B0(*(v33 + 56) + 32 * v26, v34);
      if (swift_dynamicCast())
      {
        if (*(v33 + 16) && (v28 = sub_2EBF88(0xD000000000000019, 0x8000000000B7DFF0), (v29 & 1) != 0) && (sub_808B0(*(v33 + 56) + 32 * v28, v34), swift_dynamicCast()))
        {
          v30 = v33;
        }

        else
        {
          v30 = 1;
        }

        v18 = &v38[16];
        v35 = v33;
        if (*(v33 + 16) && (v31 = sub_2EBF88(0x65756C6176, 0xE500000000000000), (v32 & 1) != 0))
        {
          sub_808B0(*(v33 + 56) + 32 * v31, &v36);
          __swift_destroy_boxed_opaque_existential_0(a1);
        }

        else
        {

          result = __swift_destroy_boxed_opaque_existential_0(a1);
          v36 = 0u;
          v37 = 0u;
        }

        v17 = &v38[8];
        v38[0] = v30;
        v16 = 2;
        goto LABEL_18;
      }
    }

LABEL_22:
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_23:

    goto LABEL_20;
  }

  if (!*(v33 + 16))
  {
    goto LABEL_21;
  }

  v8 = sub_2EBF88(0x6569487373616C63, 0xEE00796863726172);
  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_808B0(*(v33 + 56) + 32 * v8, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v33 + 40;
    v12 = -*(v33 + 16);
    v13 = -1;
    while (v12 + v13 != -1)
    {
      if (++v13 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = v11 + 16;

      result = _s11MusicJSCore28JSScriptingInstantiatedClassO8rawValueACSgSS_tcfC_0();
      v11 = v14;
      if (result != 128)
      {
        v15 = result;
        __swift_destroy_boxed_opaque_existential_0(a1);

        v16 = 0;
        LOBYTE(v35) = v15;
        v17 = &v35 + 8;
        v18 = &v36;
        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_20:

LABEL_49:
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = -1;
  return result;
}

void sub_9AC6B4(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v2 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  if (v2 < 0)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
    v5 = *(v1 + 3) | *(v1 + 4);
    if (v2 != 0x8000000000000000 || (v5 | *v1 | v4) != 0)
    {
      v7 = v5 | v4;
      v8 = v2 == 0x8000000000000000 && v3 == 1;
      if (!v8 || v7 != 0)
      {
        v10 = v2 == 0x8000000000000000 && v3 == 2;
        if ((!v10 || v7 != 0) && (v2 != 0x8000000000000000 || v3 != 3 || v7 != 0) && v2 == 0x8000000000000000 && v3 == 4 && v7 == 0)
        {
          v17 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
          swift_beginAccess();
          if (*(*&a1[v17] + 16))
          {
            *v1 = xmmword_B13C50;
            *(v1 + 3) = 0;
            *(v1 + 4) = 0;
            *(v1 + 2) = 0x8000000000000000;
            v19 = [objc_opt_self() sharedApplication];
            v20 = swift_allocObject();
            *(v20 + 16) = a1;
            aBlock[4] = sub_9B34D8;
            aBlock[5] = v20;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1B5EB4;
            aBlock[3] = &block_descriptor_183_2;
            v21 = _Block_copy(aBlock);
            v22 = a1;

            [v19 _performBlockAfterCATransactionCommits:v21];
            _Block_release(v21);
          }
        }
      }
    }
  }
}

uint64_t sub_9AC874(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(__int128 *), void (*a7)(__int128 *))
{
  v125 = a6;
  v110 = a3;
  v111 = a1;
  v112 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24A90);
  __chkstk_darwin();
  v11 = &v99 - v10;
  v113 = *(type metadata accessor for Signpost() - 8);
  __chkstk_darwin();
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v99 - v14;
  v114 = v15;
  __chkstk_darwin();
  v126 = &v99 - v16;
  v17 = sub_AB7CC0();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (&v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_13C80(0, &qword_DE8ED0);
  *v20 = sub_ABA150();
  v21 = *(v18 + 104);
  v117 = enum case for DispatchPredicate.onQueue(_:);
  v118 = v18 + 104;
  v116 = v21;
  v21(v20);
  v22 = sub_AB7CF0();
  v23 = *(v18 + 8);
  v120 = v18 + 8;
  v121 = v17;
  v115 = v23;
  v23(v20, v17);
  if (v22)
  {
    v124 = a7;
    v24 = sub_AB4B00();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    if (qword_E23FA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v123 = v13;
  v25 = static OS_os_log.jsBridge;
  Signpost.init(name:id:log:)("JSBridge intialize singletons", 29, 2, v11, v25, v126);
  Signpost.begin(dso:)(&dword_0);
  v26 = *(a5 + 32) != 2;
  objc_allocWithZone(type metadata accessor for JSApplication(0));

  v110 = JSApplication.init(isDeployedScript:selectedTabIdentifier:)(v26, v110, a4);
  v27 = objc_allocWithZone(type metadata accessor for JSBackgroundFetchManager());
  v139[0] = _swiftEmptyArrayStorage;
  v139[1] = 1;
  memset(&v139[2], 0, 24);
  v140 = 0;
  v28 = JSObject.init(type:)(v139);
  v29 = qword_E23F48;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = static JSBridge.shared;
  v32 = swift_allocObject();
  *(v32 + 16) = 0xD000000000000016;
  *(v32 + 24) = 0x8000000000B7DF00;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  *(v32 + 48) = 1;
  v33 = v30;
  v34 = v31;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B31B8, v32);
  v109 = v33;

  v35 = objc_allocWithZone(type metadata accessor for JSCapabilitiesController());
  v108 = JSCapabilitiesController.init()();
  v36 = objc_allocWithZone(type metadata accessor for JSDevice());
  v37 = swift_unknownObjectRetain();
  v111 = JSDevice.init(rootElementSizing:)(v37, v112);
  if (qword_E23F80 != -1)
  {
    swift_once();
  }

  v112 = v20;
  v38 = static JSMetricsController.shared;
  v39 = objc_allocWithZone(type metadata accessor for JSNetwork());
  v107 = v38;
  v106 = JSNetwork.init()();
  v40 = objc_allocWithZone(type metadata accessor for JSStore());
  v105 = JSStore.init()();
  if (qword_E240A8 != -1)
  {
    swift_once();
  }

  v41 = static JSSubscriptionPurchaseCoordinator.shared;
  v42 = objc_allocWithZone(type metadata accessor for JSSubscriptionStatusCoordinator());
  v104 = v41;
  v103 = JSSubscriptionStatusCoordinator.init()();
  v43 = objc_allocWithZone(type metadata accessor for JSPersistence());
  v102 = JSPersistence.init()();
  v44 = objc_allocWithZone(type metadata accessor for JSPlayActivityController());
  v101 = sub_A40728();
  v45 = objc_allocWithZone(type metadata accessor for JSSocialActivityController());
  v46 = JSObject.init(type:)(v139);
  v47 = swift_allocObject();
  *(v47 + 16) = 0xD000000000000018;
  *(v47 + 24) = 0x8000000000B7DF20;
  *(v47 + 32) = v46;
  *(v47 + 40) = v34;
  *(v47 + 48) = 1;
  v48 = v46;
  v49 = v34;
  v50 = v48;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3CFC, v47);

  v51 = objc_allocWithZone(type metadata accessor for JSPushNotificationObserver());
  v100 = sub_9F9B84();
  v52 = objc_allocWithZone(type metadata accessor for JSRestrictions());
  v53 = JSRestrictions.init()();
  v54 = objc_allocWithZone(type metadata accessor for JSStoreFlowPresentationCoordinator());
  v55 = OBJC_IVAR____TtC11MusicJSCore34JSStoreFlowPresentationCoordinator_pendingStoreFlowSegueDidDismissContexts;
  *&v54[v55] = sub_99E3E0(_swiftEmptyArrayStorage);
  v56 = JSObject.init(type:)(v139);
  v57 = swift_allocObject();
  *(v57 + 16) = 0xD000000000000020;
  *(v57 + 24) = 0x8000000000B7DF40;
  *(v57 + 32) = v56;
  *(v57 + 40) = v49;
  *(v57 + 48) = 1;
  v58 = v56;
  v59 = v49;
  v60 = v58;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3CFC, v57);

  *&v141 = v110;
  *(&v141 + 1) = v109;
  *&v142 = v108;
  *(&v142 + 1) = v111;
  *&v143 = v107;
  *(&v143 + 1) = v106;
  *&v144 = v105;
  *(&v144 + 1) = v104;
  *&v145 = v103;
  *(&v145 + 1) = v102;
  *&v146 = v101;
  *(&v146 + 1) = v50;
  *&v147 = v100;
  *(&v147 + 1) = v53;
  v148 = v60;
  v138 = v60;
  v135 = v145;
  v136 = v146;
  v137 = v147;
  v133 = v143;
  v134 = v144;
  v131 = v141;
  v132 = v142;
  type metadata accessor for JSBridge.SingletonsInitializationContext();
  swift_allocObject();
  sub_9B3214(&v141, v129);
  v61 = sub_9B2298(&v131);
  sub_E1A44(&v141);
  v62 = v119;
  sub_9B1D08(v126, v119, type metadata accessor for Signpost);
  v63 = v123;
  sub_9B1D08(v62, v123, type metadata accessor for Signpost);
  v64 = (*(v113 + 80) + 144) & ~*(v113 + 80);
  v65 = (v114 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v136;
  *(v66 + 88) = v135;
  *(v66 + 104) = v67;
  *(v66 + 120) = v137;
  v68 = v132;
  *(v66 + 24) = v131;
  *(v66 + 40) = v68;
  v69 = v134;
  *(v66 + 56) = v133;
  v70 = v122;
  *(v66 + 16) = v122;
  *(v66 + 136) = v138;
  *(v66 + 72) = v69;
  sub_9B1F40(v62, v66 + v64, type metadata accessor for Signpost);
  v71 = (v66 + v65);
  v72 = v124;
  *v71 = v125;
  v71[1] = v72;
  v119 = v61;
  v73 = *(v61 + 136);
  sub_9B3214(&v141, v129);
  v74 = v70;

  sub_9B3214(&v141, v129);
  v75 = v74;

  v76 = sub_ABA150();
  v77 = v112;
  *v112 = v76;
  v78 = v121;
  v116(v77, v117, v121);
  LOBYTE(v74) = sub_AB7CF0();
  v115(v77, v78);
  if ((v74 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v73 + 16) == 1)
  {
    v79 = &v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
    v80 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32];
    v81 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48];
    v82 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16];
    v129[0] = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
    v129[2] = v80;
    v129[3] = v81;
    v129[1] = v82;
    v84 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80];
    v83 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96];
    v85 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64];
    v130 = *&v75[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112];
    v129[5] = v84;
    v129[6] = v83;
    v129[4] = v85;
    v86 = v141;
    v87 = v142;
    v88 = v144;
    *(v79 + 2) = v143;
    *(v79 + 3) = v88;
    *v79 = v86;
    *(v79 + 1) = v87;
    v89 = v145;
    v90 = v146;
    v91 = v147;
    *(v79 + 14) = v148;
    *(v79 + 5) = v90;
    *(v79 + 6) = v91;
    *(v79 + 4) = v89;
    sub_9B3214(&v141, &v128);
    sub_12E1C(v129, &qword_E24AD8);
    if (qword_E23FC0 == -1)
    {
LABEL_12:
      Signpost.end(dso:)(&dword_0);
      v125(&v131);

      goto LABEL_18;
    }

LABEL_22:
    swift_once();
    goto LABEL_12;
  }

  v92 = swift_allocObject();
  *(v92 + 16) = sub_9B33CC;
  *(v92 + 24) = v66;
  swift_beginAccess();
  v93 = *(v73 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v73 + 24) = v93;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = sub_6AA00(0, v93[2] + 1, 1, v93);
    *(v73 + 24) = v93;
  }

  v96 = v93[2];
  v95 = v93[3];
  if (v96 >= v95 >> 1)
  {
    v93 = sub_6AA00((v95 > 1), v96 + 1, 1, v93);
  }

  v93[2] = v96 + 1;
  v97 = &v93[2 * v96];
  v97[4] = sub_70638;
  v97[5] = v92;
  *(v73 + 24) = v93;
  swift_endAccess();

  v63 = v123;
LABEL_18:
  sub_E1A44(&v141);
  sub_9B1CA8(v63, type metadata accessor for Signpost);

  sub_E1A44(&v141);
  sub_9B1CA8(v126, type metadata accessor for Signpost);
}

uint64_t sub_9AD3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons;
  v7 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 64);
  v8 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 96);
  v17[5] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 80);
  v17[6] = v8;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 16);
  v17[0] = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons);
  v10 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 32);
  v11 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 48);
  v17[1] = v9;
  v17[2] = v10;
  v18 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons + 112);
  v17[3] = v11;
  v17[4] = v7;
  *(v6 + 112) = *(a2 + 112);
  v12 = *(a2 + 96);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = v12;
  v13 = *(a2 + 64);
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = v13;
  v14 = *(a2 + 32);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = v14;
  *v6 = *a2;
  sub_9B3214(a2, v16);
  sub_12E1C(v17, &qword_E24AD8);
  if (qword_E23FC0 != -1)
  {
    swift_once();
  }

  Signpost.end(dso:)(&dword_0);
  return a4(a2);
}

uint64_t sub_9AD4FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  type metadata accessor for JSEnvironment();
  swift_allocObject();
  v8 = JSEnvironment.init()();
  v9 = v8[2];
  v10 = *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread);
  type metadata accessor for ApplicationScriptProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment) = v8;
  v12 = v9;

  *(a1 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_provider) = v11;

  if (*(a2 + 32) == 1)
  {
    sub_9B2244();
    v13 = swift_allocError();
    *v14 = 5;
    a3(v13, 1);
  }

  else
  {
    sub_A3DC50(*(a2 + 16), *(a2 + 24));
    sub_A35FC4(a2, a3, a4);
  }
}

uint64_t sub_9AD69C(char *a1, uint64_t a2, __int128 *a3)
{
  v47 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  __chkstk_darwin();
  v48 = v6;
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v42 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24A90);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v45 = *(type metadata accessor for Signpost() - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin();
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v42 - v11;
  v50 = a1;
  v13 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v14 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v15 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8];
  v16 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  *v13 = xmmword_AF89D0;
  *(v13 + 2) = 0x8000000000000000;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  sub_9B1C40(v14, v15, v16);
  sub_AB9F50();
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.jsBridge;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  sub_AB31C0();
  sub_9B3158(&unk_E07CD0, &type metadata accessor for URL);
  v19 = sub_ABB330();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_2792B0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_AB4A90();

  v22 = sub_AB4B00();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  Signpost.init(name:id:log:)("Fetch and compile appscript", 27, 2, v9, v17, v12);
  Signpost.begin(dso:)(&dword_0);
  v44 = type metadata accessor for Signpost;
  v23 = v46;
  sub_9B1D08(v12, v46, type metadata accessor for Signpost);
  v24 = *a3;
  v53 = *(a3 + 24);
  v54 = v24;
  sub_9B1D08(a2, v51, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v25 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v47[80];
  v47 = v12;
  v43 = a2;
  v45 = v27 | 7;
  v28 = v48;
  v29 = swift_allocObject();
  v30 = v50;
  *(v29 + 16) = v50;
  v31 = v23;
  v32 = v44;
  sub_9B1F40(v31, v29 + v25, v44);
  v33 = v29 + v26;
  v34 = a3[1];
  *v33 = *a3;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a3 + 4);
  sub_9B1F40(v51, v29 + ((v27 + v26 + 40) & ~v27), type metadata accessor for ApplicationScriptProvider.Descriptor);
  v35 = v49;
  sub_9B1D08(v43, v49, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v36 = (v27 + 24) & ~v27;
  v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  sub_9B1F40(v35, v38 + v36, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v39 = (v38 + v37);
  *v39 = sub_9B1FA8;
  v39[1] = v29;
  v40 = v30;
  sub_15F84(&v54, v52, &unk_E24AA0);
  sub_15F84(&v53, v52, &unk_DEE6F0);

  JSThread.enqueueBlock(_:)(sub_9B21B0, v38);

  return sub_9B1CA8(v47, v32);
}

uint64_t sub_9ADC1C(void *a1, int a2, void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v26 = a6;
  v27 = a1;
  v24 = a3;
  v28 = a2;
  v9 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for Signpost() - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_13C80(0, &qword_DE8ED0);
  sub_9B1D08(a4, v13, type metadata accessor for Signpost);
  v14 = *a5;
  v31 = *(a5 + 24);
  v32 = v14;
  sub_9B1D08(v26, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApplicationScriptProvider.Descriptor);
  v15 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v9 + 80) + v16 + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = v27;
  *(v18 + 24) = v27;
  LOBYTE(v12) = v28 & 1;
  *(v18 + 32) = v28 & 1;
  sub_9B1F40(v13, v18 + v15, type metadata accessor for Signpost);
  v20 = v18 + v16;
  v21 = a5[1];
  *v20 = *a5;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a5 + 4);
  sub_9B1F40(v25, v18 + v17, type metadata accessor for ApplicationScriptProvider.Descriptor);
  v22 = v24;
  sub_21A5DC(v19, v12);
  sub_15F84(&v32, v30, &unk_E24AA0);
  sub_15F84(&v31, v30, &unk_DEE6F0);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B2A4C, v18);
}

void sub_9ADED0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v37 = a5[1];
  v38 = v10;
  v11 = *(a5 + 16);
  v12 = (a5 + 3);
  v36 = a5[3];
  v13 = a5[4];
  v34 = a6;
  v35 = v13;
  v14 = sub_AB7CC0();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_AB9F30();
    if (qword_E23FA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_AF4EC0;
    *&v41 = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    v19 = sub_AB9350();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_2792B0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_AB4A90();

    v22 = *a5;
    v40 = *v12;
    v41 = v22;
    v23 = (a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v24 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state);
    v25 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 8);
    v26 = *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16);
    v27 = v37;
    *v23 = v38;
    v23[1] = v27;
    v23[2] = v11 & 1;
    v28 = v35;
    v23[3] = v36;
    v23[4] = v28;
    sub_15F84(&v41, v39, &unk_E24AA0);
    sub_15F84(&v40, v39, &unk_DEE6F0);
    sub_9B1C40(v24, v25, v26);
    v29 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges;
    if ((*(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges) & 1) == 0)
    {
      v32 = [objc_opt_self() sharedMonitor];
      [v32 registerObserver:a3];

      *(a3 + v29) = 1;
    }

    sub_AB9F50();
    sub_AB4A90();
  }

  else
  {
    if (*(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges))
    {
      *(a3 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges) = 0;
      v30 = [objc_opt_self() sharedMonitor];
      [v30 unregisterObserver:a3];
    }

    Signpost.end(dso:)(&dword_0);
    sub_13C80(0, &qword_DE8ED0);
    *v17 = sub_ABA150();
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v31 = sub_AB7CF0();
    (*(v15 + 8))(v17, v14);
    if (v31)
    {
      __chkstk_darwin();
      *(&v33 - 4) = a3;
      *(&v33 - 3) = a5;
      *(&v33 - 2) = v34;
      *(&v33 - 1) = a1;
      sub_9A8DB0(sub_9B2B6C);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_9AE308(void *a1, uint64_t a2, _OWORD *a3)
{
  v53 = a1;
  v4 = sub_AB4BC0();
  v52 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v47 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v17 = Strong;
  v50 = a3;
  if (qword_E23F60 != -1)
  {
    swift_once();
  }

  v18 = [v53 urlForBagKey:qword_E24710];
  if (v18)
  {
    v19 = v18;
    sub_AB3150();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v12 + 56))(v8, v20, 1, v11);
  sub_F78B4(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_12E1C(v10, &unk_DF2AE0);
LABEL_9:
    if (qword_E23FA0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.jsBridge;
    sub_AB4BD0();
    v22 = sub_AB4BA0();
    v23 = sub_AB9F40();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v56 = v26;
      *v25 = 136315138;
      if (qword_E23F60 != -1)
      {
        swift_once();
      }

      v27 = sub_AB92A0();
      v29 = sub_425E68(v27, v28, &v56);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "invalid bag with no value for: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);

      return (*(v52 + 8))(v6, v24);
    }

    else
    {

      return (*(v52 + 8))(v6, v4);
    }
  }

  v49 = *(v12 + 32);
  v49(v15, v10, v11);
  v31 = sub_9AE8F4();
  v33 = 5;
  if ((v32 & 1) == 0)
  {
    v33 = v31;
  }

  v48 = v33;
  v52 = sub_13C80(0, &qword_DE8ED0);
  v34 = *(v12 + 16);
  v47 = v17;
  v35 = v51;
  v34(v51, v15, v11);
  v53 = v15;
  v36 = v50;
  v37 = *v50;
  v55 = *(v50 + 24);
  v56 = v37;
  v38 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v49((v41 + v38), v35, v11);
  v43 = v47;
  v42 = v48;
  *(v41 + v39) = v47;
  *(v41 + v40) = v42;
  v44 = v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v45 = v36[1];
  *v44 = *v36;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(v36 + 4);
  v46 = v43;
  sub_15F84(&v56, v54, &unk_E24AA0);
  sub_15F84(&v55, v54, &unk_DEE6F0);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3B08, v41);

  return (*(v12 + 8))(v53, v11);
}

uint64_t sub_9AE8F4()
{
  if (qword_E23F68 != -1)
  {
    swift_once();
  }

  ICURLBag.subscript.getter(qword_E24718, &v33);
  if (!v34)
  {
    goto LABEL_27;
  }

  sub_15F84(&v33, v32, &unk_DE8E40);
  if (swift_dynamicCast())
  {
    v0 = v30;
    __swift_destroy_boxed_opaque_existential_0(v32);
LABEL_74:
    sub_12E1C(&v33, &unk_DE8E40);
    return v0;
  }

  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
LABEL_27:
    v0 = 0;
    goto LABEL_74;
  }

  result = v31;
  v2 = HIBYTE(v31) & 0xF;
  v3 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v4 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v0 = 0;
LABEL_73:
    __swift_destroy_boxed_opaque_existential_0(v32);
    goto LABEL_74;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v0 = sub_9CCCBC(v30, v31, 10);
    v26 = v27;
LABEL_71:

    if (v26)
    {
      v0 = 0;
    }

    goto LABEL_73;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v5 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v5 = sub_ABAE60();
      result = v31;
    }

    v6 = *v5;
    if (v6 == 43)
    {
      if (v3 >= 1)
      {
        v14 = v3 - 1;
        if (v3 != 1)
        {
          v0 = 0;
          if (v5)
          {
            v15 = v5 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_69;
              }

              v17 = 10 * v0;
              if ((v0 * 10) >> 64 != (10 * v0) >> 63)
              {
                goto LABEL_69;
              }

              v0 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_69;
              }

              ++v15;
              if (!--v14)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_69;
      }

      goto LABEL_80;
    }

    if (v6 != 45)
    {
      if (v3)
      {
        v0 = 0;
        if (v5)
        {
          while (1)
          {
            v21 = *v5 - 48;
            if (v21 > 9)
            {
              goto LABEL_69;
            }

            v22 = 10 * v0;
            if ((v0 * 10) >> 64 != (10 * v0) >> 63)
            {
              goto LABEL_69;
            }

            v0 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_69;
            }

            ++v5;
            if (!--v3)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_69:
      v0 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_70;
    }

    if (v3 >= 1)
    {
      v7 = v3 - 1;
      if (v3 != 1)
      {
        v0 = 0;
        if (v5)
        {
          v8 = v5 + 1;
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_69;
            }

            v10 = 10 * v0;
            if ((v0 * 10) >> 64 != (10 * v0) >> 63)
            {
              goto LABEL_69;
            }

            v0 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_69;
            }

            ++v8;
            if (!--v7)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_70:
        v29 = v5;
        v26 = v5;
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v28[0] = v30;
  v28[1] = v31 & 0xFFFFFFFFFFFFFFLL;
  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v2)
      {
        v0 = 0;
        v23 = v28;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v0;
          if ((v0 * 10) >> 64 != (10 * v0) >> 63)
          {
            break;
          }

          v0 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v2)
          {
LABEL_68:
            LOBYTE(v5) = 0;
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v2)
    {
      v5 = (v2 - 1);
      if (v2 != 1)
      {
        v0 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v0;
          if ((v0 * 10) >> 64 != (10 * v0) >> 63)
          {
            break;
          }

          v0 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v5)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_79;
  }

  if (v2)
  {
    v5 = (v2 - 1);
    if (v2 != 1)
    {
      v0 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v0;
        if ((v0 * 10) >> 64 != (10 * v0) >> 63)
        {
          break;
        }

        v0 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_81:
  __break(1u);
  return result;
}

void sub_9AECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v22 - v9;
  v22 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v11 = __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + 16);
  v14(v10, a1, v5, v11);
  (v14)(v8, v10, v5);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 buildVersion];

  if (v16)
  {
    v17 = sub_AB92A0();
    v19 = v18;

    v13[32] = 0;
    (v14)(&v13[*(v22 + 32)], v8, v5);
    *(v13 + 2) = v17;
    *(v13 + 3) = v19;
    *(v13 + 1) = v23;

    v20 = sub_A3D5A4(v17, v19, 0);
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v10, v5);
    *v13 = v20;
    sub_9AEF64(v24, v13);
    sub_9B1CA8(v13, type metadata accessor for ApplicationScriptProvider.Descriptor);
  }

  else
  {
    __break(1u);
  }
}

void sub_9AEF64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v9 = sub_ABA150();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_AB7CF0();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_AB9F50();
    if (qword_E23FA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_AB4A90();
  __chkstk_darwin();
  *(&v12 - 4) = v3;
  *(&v12 - 3) = a1;
  *(&v12 - 2) = a2;
  sub_9A8DB0(sub_9B31A8);
  v11 = [objc_opt_self() defaultCenter];
  if (qword_E23F58 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:static JSBridge.bridgeInitializationDidSucceed object:v3];
}

void sub_9AF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB7CC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v9 = sub_ABA150();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_AB7CF0();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    __chkstk_darwin();
    *(&v11 - 4) = a1;
    *(&v11 - 3) = a3;
    *(&v11 - 2) = a2;
    sub_9A8DB0(sub_9B3D20);
  }

  else
  {
    __break(1u);
  }
}

void sub_9AF348(uint64_t a1)
{
  v2 = sub_AB7CC0();
  v38 = *(v2 - 8);
  __chkstk_darwin();
  v37 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  __chkstk_darwin();
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin();
  v7 = v31 - v6;
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v31 - v12;
  __chkstk_darwin();
  v15 = v31 - v14;
  v16 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v7);

  v17 = (*(v9 + 48))(v7, 1, v8);
  if (v17 == 1)
  {
    sub_12E1C(v7, &unk_DF2AE0);
  }

  else
  {
    v31[1] = v17;
    v33 = a1;
    v34 = v2;
    (*(v9 + 32))(v15, v7, v8);
    v18 = *(v9 + 16);
    v32 = v15;
    v18(v13, v15, v8);
    v18(v11, v13, v8);
    v19 = [objc_opt_self() currentDevice];
    v20 = [v19 buildVersion];

    if (v20)
    {
      v21 = sub_AB92A0();
      v23 = v22;

      v5[32] = 2;
      v18(&v5[*(v36 + 32)], v11, v8);
      *(v5 + 2) = v21;
      *(v5 + 3) = v23;
      *(v5 + 1) = 5;

      v24 = sub_A3D5A4(v21, v23, 0);
      v25 = *(v9 + 8);
      v25(v11, v8);
      v25(v13, v8);
      *v5 = v24;
      sub_13C80(0, &qword_DE8ED0);
      v26 = sub_ABA150();
      v28 = v37;
      v27 = v38;
      *v37 = v26;
      v29 = v34;
      (*(v27 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v34);
      v30 = sub_AB7CF0();
      (*(v27 + 8))(v28, v29);
      if (v30)
      {
        __chkstk_darwin();
        *&v31[-8] = v35;
        *&v31[-6] = v5;
        *&v31[-4] = v33;
        sub_9A8DB0(sub_9B1C9C);
        v25(v32, v8);
        sub_9B1CA8(v5, type metadata accessor for ApplicationScriptProvider.Descriptor);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_9AF824(char *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  v12 = *&a1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state + 16];
  if (v12 < 0)
  {
    v13 = *v11;
    v14 = *(v11 + 1);
    v15 = *(v11 + 3) | *(v11 + 4);
    if (v12 != 0x8000000000000000 || (v15 | *v11 | v14) != 0)
    {
      v17 = v15 | v14;
      v18 = v12 == 0x8000000000000000 && v13 == 1;
      if ((!v18 || v17 != 0) && v12 == 0x8000000000000000 && v13 == 2 && v17 == 0)
      {
        *v11 = xmmword_B13C40;
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 2) = 0x8000000000000000;
        v22 = *a2;
        v34 = a2[1];
        v23 = a2[3];
        v24 = a2[4];
        v32[1] = v22;
        v33 = v23;
        sub_9B1D08(a3, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApplicationScriptProvider.Descriptor);
        v25 = (*(v8 + 80) + 64) & ~*(v8 + 80);
        v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = swift_allocObject();
        *(v27 + 16) = a1;
        v28 = *(a2 + 1);
        *(v27 + 24) = *a2;
        *(v27 + 40) = v28;
        *(v27 + 56) = a2[4];
        sub_9B1F40(v10, v27 + v25, type metadata accessor for ApplicationScriptProvider.Descriptor);
        *(v27 + v26) = a4;

        v29 = a4;
        v30 = a1;
        v31 = swift_unknownObjectRetain();
        sub_9AC874(v31, v34, v33, v24, a3, sub_9B2C94, v27);
      }
    }
  }
}

uint64_t sub_9AFA4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v32 = a4;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24A90);
  __chkstk_darwin();
  v7 = &v28 - v6;
  v33 = *(type metadata accessor for Signpost() - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = sub_AB4B00();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  Signpost.init(name:id:log:)("Prepare pending records", 23, 2, v7, static OS_os_log.jsBridge, v11);
  Signpost.begin(dso:)(&dword_0);
  v13 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup;
  swift_beginAccess();
  v31 = *&a2[v13];
  *&a2[v13] = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  v29 = v11;
  v15 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords;
  swift_beginAccess();
  *(v14 + 16) = *&a2[v15];
  *&a2[v15] = _swiftEmptyArrayStorage;
  v16 = *(v30 + 16);
  type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  JSApplication.didFinishLaunching(with:applicationScriptURL:)(v16);
  v35 = *&a2[v15];

  sub_9A1388(v17);
  *(v14 + 16) = v35;
  v18 = v14;

  *&a2[v15] = _swiftEmptyArrayStorage;

  v32 = *&a2[OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread];
  sub_9B1D08(v11, v9, type metadata accessor for Signpost);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_9B1F40(v9, v23 + v19, type metadata accessor for Signpost);
  *(v23 + v20) = a2;
  *(v23 + v21) = v31;
  v24 = v34;
  *(v23 + v22) = v34;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v25 = a2;
  v26 = v24;

  JSThread.enqueueBlock(_:)(sub_9B2EA4, v23);

  sub_9B1CA8(v29, type metadata accessor for Signpost);
}

uint64_t sub_9AFE04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a4;
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_AB7C50();
  v46 = *(v48 - 8);
  __chkstk_darwin();
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24A90);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v44 = *(type metadata accessor for Signpost() - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v37 - v15;
  result = Signpost.end(dso:)(&dword_0);
  v18 = *&a2[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment];
  if (v18)
  {
    v38 = v16;
    v40 = v8;
    v41 = v7;
    v19 = a5 + 16;
    v39 = swift_allocObject();
    v20 = v39 + 16;
    v21 = qword_E23FA0;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.jsBridge;
    __chkstk_darwin();
    v23 = v42;
    *(&v37 - 4) = a2;
    *(&v37 - 3) = v23;
    *(&v37 - 2) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24AC0);
    static Signpost.interval<A>(name:log:_:)("Pushing Native Records", 22, 2, v22, sub_9B2F54, (&v37 - 6), v20);
    sub_A33F10(0);
    sub_A33F10(1);
    __chkstk_darwin();
    v24 = v43;
    *(&v37 - 2) = v18;
    *(&v37 - 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24AC8);
    static Signpost.interval<A>(name:log:_:)("JSEnvironment app script", 24, 2, v22, sub_9B2F88, (&v37 - 4), aBlock);

    __chkstk_darwin();
    *(&v37 - 4) = v20;
    *(&v37 - 3) = a2;
    *(&v37 - 2) = v19;
    *(&v37 - 1) = v18;
    static Signpost.interval<A>(name:log:_:)("Pushing Remaining Records", 25, 2, v22, sub_9B2F90, (&v37 - 6), &type metadata for ());
    v25 = sub_AB4B00();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v26 = v22;
    v27 = v38;
    Signpost.init(name:id:log:)("Main Async", 10, 2, v12, v26, v38);
    Signpost.begin(dso:)(&dword_0);
    sub_13C80(0, &qword_DE8ED0);
    v43 = sub_ABA150();
    sub_9B1D08(v27, v14, type metadata accessor for Signpost);
    v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_9B1F40(v14, &v30[v28], type metadata accessor for Signpost);
    *&v30[v29] = a2;
    *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;
    aBlock[4] = sub_9B30A8;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_255;
    v31 = _Block_copy(aBlock);
    v32 = a2;

    v33 = v45;
    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_9B3158(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    v34 = v47;
    v35 = v41;
    sub_ABABB0();
    v36 = v43;
    sub_ABA160();
    _Block_release(v31);

    (*(v40 + 8))(v34, v35);
    (*(v46 + 8))(v33, v48);
    sub_9B1CA8(v27, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_9B04D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_9AA244(v5, a4);
  v7 = v6;

  return sub_9A166C(v7);
}

uint64_t sub_9B0560(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Signpost();
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Signpost.end(dso:)(&dword_0);
  if (qword_E23FA0 != -1)
  {
    swift_once();
  }

  __chkstk_darwin();
  *(&v8 - 2) = a2;
  *(&v8 - 1) = v5;
  static Signpost.interval<A>(name:log:_:)("Process Scripting Records", 25, 2, v6, sub_9B31A0, (&v8 - 4), &type metadata for ());
  sub_9A7DF4(v4);
  Signpost.end(dso:)(&dword_0);
  return sub_9B1CA8(v4, type metadata accessor for Signpost);
}

uint64_t sub_9B06BC()
{
  swift_beginAccess();

  sub_9A9810(v0);
}

uint64_t sub_9B0714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_9B183C(v5, v7) & 1;
}

uint64_t sub_9B0760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_9B195C(v5, v7) & 1;
}

uint64_t sub_9B07AC()
{

  sub_9B1C40(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

id JSBridge.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_initializationDate;
  v3 = sub_AB3430();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC11MusicJSCore8JSBridge____lazy_storage___bootSignpost;
  v5 = type metadata accessor for Signpost();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_thread;
  type metadata accessor for JSThread();
  swift_allocObject();
  *&v1[v6] = JSThread.init(name:)(0xD000000000000018, 0x8000000000B7D550);
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_provider] = 0;
  v7 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_singletons];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 14) = 0;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_environment] = 0;
  v8 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_state];
  *v8 = 0u;
  *(v8 + 2) = 0x8000000000000000;
  *(v8 + 24) = 0u;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecordsRequiredForInitialSetup] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingNativeExecutionRecords] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_pendingSingletonsAccessBlocks] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint] = 0;
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_isPerformingBlockAffectingState] = 0;
  v9 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_indexedScriptingObjects;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24140);
  swift_allocObject();
  *&v1[v9] = WeakValuesDictionary.init()();
  v1[OBJC_IVAR____TtC11MusicJSCore8JSBridge_hasRegisteredForEnviromentMonitorChanges] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for JSBridge();
  return objc_msgSendSuper2(&v11, "init");
}

id JSBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9B0B88()
{
  v1 = v0;
  v2 = v0[17];
  if (*(*(v1[10] + OBJC_IVAR____TtC11MusicJSCore31JSSubscriptionStatusCoordinator_asyncInitializer) + 16) == 1 && *(*(v1[8] + OBJC_IVAR____TtC11MusicJSCore7JSStore_asyncInitializer) + 16) == 1)
  {
    v3 = *(*(v1[2] + OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer) + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  return sub_9B0CF0(v4);
}

uint64_t sub_9B0C0C()
{
  v14 = *(v0 + 24);
  v15 = *(v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 32);
  v1 = *(v0 + 56);
  v11 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_9B0CF0(char a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (*(v2 + 16) == 1 && (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    v10 = *(v2 + 24);
    *(v2 + 24) = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 40;
      while (v12 < *(v10 + 16))
      {
        ++v12;
        v14 = *(v13 - 8);

        v14(v15);

        v13 += 16;
        if (v11 == v12)
        {
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

NSString sub_9B0EA4()
{
  result = sub_AB9260();
  qword_E24710 = result;
  return result;
}

NSString sub_9B0EE0()
{
  result = sub_AB9260();
  qword_E24718 = result;
  return result;
}

uint64_t type metadata accessor for JSBridge()
{
  result = qword_E247D0;
  if (!qword_E247D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_9B0F70()
{
  result = qword_E247A0;
  if (!qword_E247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E247A0);
  }

  return result;
}

void sub_9B0FCC()
{
  sub_9B111C(319, &qword_E247E0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_9B111C(319, &qword_E247E8, type metadata accessor for Signpost);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_9B111C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for JSBridge.SingletonIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSBridge.SingletonIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy120_8_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_9B12EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_9B1334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B13AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_9B1400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy73_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_9B153C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 73))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9B1578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_9B15C8(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_11MusicJSCore8JSBridgeC5State33_F85208BED89D68A794F08E10ED8567F3LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_9B1620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_9B1670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B16D4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_AFA860;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

char *sub_9B1718(char *a1, int64_t a2, char a3)
{
  result = sub_9B1738(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_9B1738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_9B183C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (*a1 != v4)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 0x4C52556E65706FLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*(a2 + 16))
  {
    v6 = 0x4C52556E65706FLL;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v5 != v6)
  {
    v7 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
LABEL_14:
  v8 = *(a1 + 32);
  v9 = a2[4];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (*(a1 + 24) == a2[3] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_ABB3C0();
    }
  }

  return result;
}

uint64_t sub_9B195C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  if (!(v4 >> 62))
  {
    v23[0] = *a1;
    v23[1] = v3;
    v23[2] = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v23[3] = v5;
    v23[4] = v6;
    v8 = *(a2 + 2);
    if (!(v8 >> 62))
    {
      v20 = *a2;
      v21 = v8;
      v22 = *(a2 + 24);
      v7 = sub_9B183C(v23, &v20);
      return v7 & 1;
    }

    goto LABEL_66;
  }

  if (v4 >> 62 != 1)
  {
    v9 = v5 | v3;
    if (v4 == 0x8000000000000000 && (v9 | v2 | v6) == 0)
    {
      v13 = *(a2 + 2);
      if (v13 >> 62 != 2 || v13 != 0x8000000000000000 || *(a2 + 3) | *(a2 + 4) | *(a2 + 1) | *a2)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v11 = v9 | v6;
      if (v4 == 0x8000000000000000 && v2 == 1 && !v11)
      {
        v12 = *(a2 + 2);
        if (v12 >> 62 != 2 || *(a2 + 24) != 0 || v12 != 0x8000000000000000 || *(a2 + 1) || *a2 != 1)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 2 && !v11)
      {
        v14 = *(a2 + 2);
        if (v14 >> 62 != 2 || *(a2 + 24) != 0 || v14 != 0x8000000000000000 || *(a2 + 1) || *a2 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 3 && !v11)
      {
        v15 = *(a2 + 2);
        if (v15 >> 62 != 2 || *(a2 + 24) != 0 || v15 != 0x8000000000000000 || *(a2 + 1) || *a2 != 3)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 4 && !v11)
      {
        v16 = *(a2 + 2);
        if (v16 >> 62 != 2 || *(a2 + 24) != 0 || v16 != 0x8000000000000000 || *(a2 + 1) || *a2 != 4)
        {
          goto LABEL_66;
        }
      }

      else if (v4 == 0x8000000000000000 && v2 == 5 && !v11)
      {
        v17 = *(a2 + 2);
        if (v17 >> 62 != 2 || *(a2 + 24) != 0 || v17 != 0x8000000000000000 || *(a2 + 1) || *a2 != 5)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v18 = *(a2 + 2);
        if (v18 >> 62 != 2 || *(a2 + 24) != 0 || v18 != 0x8000000000000000 || *(a2 + 1) || *a2 != 6)
        {
          goto LABEL_66;
        }
      }
    }

    v7 = 1;
    return v7 & 1;
  }

  if (*(a2 + 2) >> 62 != 1)
  {
LABEL_66:
    v7 = 0;
    return v7 & 1;
  }

  v7 = v2 == *a2;
  return v7 & 1;
}

uint64_t sub_9B1C40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_9B1CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9B1D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9B1D70()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 40) & ~*(*v4 + 80);

  v6 = sub_AB4B00();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  swift_unknownObjectRelease();

  v7 = v4[10];
  v8 = sub_AB31C0();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_9B1F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9B1FA8(void *a1, char a2)
{
  v5 = *(type metadata accessor for Signpost() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_9ADC1C(a1, a2 & 1, v9, v2 + v6, (v2 + v7), v10);
}

uint64_t sub_9B20A0()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_AB31C0();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_9B21B0()
{
  v1 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_9AD4FC(v3, v0 + v2, v5, v6);
}

unint64_t sub_9B2244()
{
  result = qword_E24AB0;
  if (!qword_E24AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E24AB0);
  }

  return result;
}

uint64_t sub_9B2298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSBridge.AsynchronousInitializer();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v9 = *(a1 + 64);
  *(v2 + 128) = *(a1 + 112);
  *(v2 + 136) = v8;
  v10 = *(a1 + 96);
  *(v2 + 96) = *(a1 + 80);
  *(v2 + 112) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v12;
  v13 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v13;
  *(v2 + 80) = v11;
  v14 = *&v9[OBJC_IVAR____TtC11MusicJSCore31JSSubscriptionStatusCoordinator_asyncInitializer];
  v15 = sub_13C80(0, &qword_DE8ED0);
  swift_retain_n();
  sub_9B3214(a1, v47);
  v16 = v9;
  *v7 = sub_ABA150();
  v17 = enum case for DispatchPredicate.onQueue(_:);
  v46 = *(v5 + 104);
  v46(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v18 = sub_AB7CF0();
  v45 = *(v5 + 8);
  v45(v7, v4);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = v14[16];
  v44 = v15;
  v43 = v17;
  if (v19 != 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_9B3D04;
    *(v18 + 24) = v2;
    swift_beginAccess();
    v17 = *(v14 + 3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 3) = v17;
    v42 = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  sub_9B0B88();
  while (1)
  {

    v24 = *(v2 + 64);
    v25 = *&v24[OBJC_IVAR____TtC11MusicJSCore7JSStore_asyncInitializer];
    swift_retain_n();
    v14 = v24;
    *v7 = sub_ABA150();
    v46(v7, v17, v4);
    v18 = sub_AB7CF0();
    v45(v7, v4);
    if (v18)
    {
      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v17 = sub_6AA00(0, *(v17 + 16) + 1, 1, v17);
    *(v14 + 3) = v17;
LABEL_5:
    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v22 >= v21 >> 1)
    {
      v17 = sub_6AA00((v21 > 1), v22 + 1, 1, v17);
    }

    *(v17 + 16) = v22 + 1;
    v23 = (v17 + 16 * v22);
    v23[4] = sub_710F8;
    v23[5] = v18;
    *(v14 + 3) = v17;
    swift_endAccess();
    v17 = v43;
    v16 = v42;
  }

  if (*(v25 + 16))
  {
    sub_9B0B88();
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_9B349C;
    *(v26 + 24) = v2;
    swift_beginAccess();
    v27 = *(v25 + 24);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 24) = v27;
    v42 = v14;
    if ((v28 & 1) == 0)
    {
      v27 = sub_6AA00(0, v27[2] + 1, 1, v27);
      *(v25 + 24) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_6AA00((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v31[4] = sub_710F8;
    v31[5] = v26;
    *(v25 + 24) = v27;
    swift_endAccess();
    v17 = v43;
    v14 = v42;
  }

  v32 = *(v2 + 16);
  v33 = *&v32[OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer];
  swift_retain_n();
  v14 = v32;
  *v7 = sub_ABA150();
  v46(v7, v17, v4);
  v18 = sub_AB7CF0();
  v45(v7, v4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (*(v33 + 16))
  {
    sub_9B0B88();
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = sub_9B3D04;
    *(v34 + 24) = v2;
    swift_beginAccess();
    v35 = *(v33 + 24);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_6AA00(0, v35[2] + 1, 1, v35);
      *(v33 + 24) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_6AA00((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[2 * v38];
    v39[4] = sub_710F8;
    v39[5] = v34;
    *(v33 + 24) = v35;
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_9B2870()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 40) & ~*(*v4 + 80);

  sub_21A5E8(*(v0 + 24), *(v0 + 32));
  v6 = sub_AB4B00();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  swift_unknownObjectRelease();

  v7 = v4[10];
  v8 = sub_AB31C0();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

void sub_9B2A4C()
{
  type metadata accessor for Signpost();
  type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  sub_9A8DB0(sub_9B2B58);
}

uint64_t sub_9B2B78()
{
  v1 = (type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  v4 = v1[10];
  v5 = sub_AB31C0();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_9B2C94(uint64_t a1)
{
  v3 = *(type metadata accessor for ApplicationScriptProvider.Descriptor(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_9AFA4C(a1, v6, v1 + 24, v1 + v4, v5);
}

uint64_t sub_9B2D38()
{

  return swift_deallocObject();
}

uint64_t sub_9B2D70()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_AB4B00();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_9B2EA4()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_9AFE04(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_9B2F9C()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_AB4B00();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_9B30A8()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_9B0560(v0 + v2, v3);
}

uint64_t block_copy_helper_255(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9B3158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_150Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_9B324C()
{
  v1 = (type metadata accessor for Signpost() - 8);
  v2 = (*(*v1 + 80) + 144) & ~*(*v1 + 80);

  v3 = v0 + v2;
  v4 = sub_AB4B00();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_9B33CC()
{
  v1 = *(type metadata accessor for Signpost() - 8);
  v2 = (*(v1 + 80) + 144) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_9AD3E8(v3, v0 + 24, v0 + v2, v4);
}

uint64_t sub_9B3464()
{

  return swift_deallocObject();
}

uint64_t sub_9B34A0()
{

  return swift_deallocObject();
}

uint64_t sub_9B35CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_9B360C(a1);
    v4 = vars8;
  }
}

void sub_9B360C(uint64_t a1)
{
  if (a1 < 0)
  {
  }
}

uint64_t sub_9B361C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t objectdestroy_185Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_9B36F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

void sub_9B3728(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  if (a1)
  {
  }
}

uint64_t sub_9B3810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_9B38A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B38);

  return sub_9A6560(a1);
}

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

uint64_t sub_9B3960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v7[6] = *(a1 + 96);
  v8 = *(a1 + 112);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  return v2(v7);
}

uint64_t sub_9B39BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}