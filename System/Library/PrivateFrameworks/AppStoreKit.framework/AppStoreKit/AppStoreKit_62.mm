id sub_1E190DBE0(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E1AF490C();
  if (!MEMORY[0x1E68FD610]())
  {
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    return a1;
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;

  sub_1E1AF48FC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_1E190DD74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E190DDE4();
  }
}

uint64_t sub_1E190DDE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
  v2 = sub_1E1AF5DBC();
  v3 = [v1 arrayForKey_];

  if (v3 && (v4 = sub_1E1AF621C(), v3, v5 = sub_1E1679658(v4), result = , v5))
  {
    v7 = *(v5 + 16);
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v24 = v1;
      while (1)
      {
        v10 = v8;
        while (1)
        {
          if (v10 >= *(v5 + 16))
          {
            __break(1u);
            return result;
          }

          v11 = *(v5 + 32 + 8 * v10);
          if (*(v11 + 16))
          {
            break;
          }

LABEL_7:
          if (v7 == ++v10)
          {
            v1 = v24;
            goto LABEL_22;
          }
        }

        sub_1E13018F8(1836213620, 0xE400000000000000);
        if ((v12 & 1) == 0)
        {
          break;
        }

        sub_1E13B8AA4();
        if (!sub_1E1AF6E5C())
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1E135CBC0(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v17 = v14 + 1;
          v23 = v14;
          result = sub_1E135CBC0((v13 > 1), v14 + 1, 1);
          v15 = v17;
          v14 = v23;
          v9 = v25;
        }

        v8 = v10 + 1;
        *(v9 + 16) = v15;
        *(v9 + 8 * v14 + 32) = v11;
        v16 = v7 - 1 == v10;
        v1 = v24;
        if (v16)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_7;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v7)
    {
      goto LABEL_4;
    }
  }

LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  v18 = sub_1E1AF620C();

  v19 = sub_1E1AF5DBC();
  [v1 setObject:v18 forKey:v19];

  v20 = sub_1E1AF5DBC();
  v21 = [v1 arrayForKey_];

  if (v21)
  {
    v22 = sub_1E1AF621C();

    sub_1E1679658(v22);
  }

  sub_1E1AF5BCC();
}

id sub_1E190E1C4(id a1)
{
  sub_1E1AF490C();
  if (!MEMORY[0x1E68FD610]())
  {
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    return a1;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E1AF48FC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    a1 = result;

    return a1;
  }

  __break(1u);
  return result;
}

void sub_1E190E31C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
    v2 = Strong;
    v3 = sub_1E1AF5DBC();
    [v1 removeObjectForKey_];

    sub_1E1AF5BCC();
  }
}

Swift::Void __swiftcall OnDeviceSearchHistoryManager.clearData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
  v2 = sub_1E1AF5DBC();
  [v1 removeObjectForKey_];

  sub_1E1AF5BCC();
}

uint64_t OnDeviceSearchHistoryManager.fetchRecents(limit:)(int64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28OnDeviceSearchHistoryManager_defaults);
  v4 = sub_1E1AF5DBC();
  v5 = [v3 arrayForKey_];

  if (a1 < 1)
  {
    if (v5 && (v10 = sub_1E1AF621C(), v5, v11 = sub_1E1679658(v10), , v11))
    {
      v9 = v11;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (v5 && (v6 = sub_1E1AF621C(), v5, v7 = sub_1E1679658(v6), , v7))
    {
      v8 = v7;
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = sub_1E190E7F8(a1, v8);
  }

  result = sub_1E190CB20(v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v14 - 1;
    while (1)
    {
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v13 + 32 + 8 * v18);
        if (*(v19 + 16))
        {
          break;
        }

LABEL_14:
        if (v14 == ++v18)
        {
          goto LABEL_32;
        }
      }

      sub_1E13018F8(1836213620, 0xE400000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v31 = v17;
      v21 = *(v19 + 16);

      if (v21 && (sub_1E13018F8(0x797469746E65, 0xE600000000000000), (v22 & 1) != 0))
      {
        swift_bridgeObjectRetain_n();

        v23 = sub_1E1AF72FC();
        swift_bridgeObjectRelease_n();
        if (v23 >= 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = v23;
        }
      }

      else
      {

        v24 = 4;
      }

      sub_1E13B8AA4();
      v25 = sub_1E1AF6DFC();
      v27 = v26;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172F3DC(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1E172F3DC((v28 > 1), v29 + 1, 1, v16);
        v16 = result;
      }

      v15 = v18 + 1;
      *(v16 + 16) = v29 + 1;
      v30 = v16 + 24 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      *(v30 + 48) = v24;
      v17 = v31;
      if (v31 == v18)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_14;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_32:

  return v16;
}

unint64_t sub_1E190E7F8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1E135CBC0(0, v4, 0);
  v5 = v19;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v17 = 0;
  do
  {
    while (1)
    {
      if (v7 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v8 = *(a2 + 32 + 8 * v7);
      v9 = v7 + 1;
      v10 = v19[2];
      if (v10 >= v3)
      {
        break;
      }

      v11 = v19[3];

      if (v10 >= v11 >> 1)
      {
        result = sub_1E135CBC0((v11 > 1), v10 + 1, 1);
      }

      v19[2] = v10 + 1;
      v19[v10 + 4] = v8;
      v7 = v9;
      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    if (v17 >= v10)
    {
      goto LABEL_31;
    }

    v19[v17 + 4] = v8;

    if ((v17 + 1) < v3)
    {
      v12 = v17 + 1;
    }

    else
    {
      v12 = 0;
    }

    v17 = v12;
  }

  while (v6 - 1 != v7++);
LABEL_20:

  if (!v17)
  {
    return v5;
  }

  v14 = v19[2];
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1E135CBC0(0, v14, 0);
  if (v14 >= v17)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v15 = v19[2];
    if (v15 >= v17 && v15 >= v14)
    {

      sub_1E190ED6C(v16, (v19 + 4), v17, (2 * v14) | 1);

      sub_1E190ED6C(v19, (v19 + 4), 0, (2 * v17) | 1);

      return v18;
    }

    goto LABEL_34;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id OnDeviceSearchHistoryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OnDeviceSearchHistoryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E190EC18()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 24);
  v5[1] = v1;
  v6 = v2;
  return sub_1E190D678(v5, v3);
}

uint64_t sub_1E190EC9C()
{
  sub_1E1AF364C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_1E190CF78(v1, v2, v3);
}

uint64_t sub_1E190ED04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E190ED6C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_1E135CBC0(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1E190EE8C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1E1AF71CC())
  {
    if (sub_1E1AF71CC())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1E68FFD80](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1E1AF71CC();
LABEL_13:
      if (v3)
      {
        sub_1E1921E44(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t ArcadeSubscribePage.__allocating_init(pageType:details:offerButtonAction:subscribedOfferButtonAction:offerDisplayProperties:dismissButtonTitle:openAppAction:dismissingPostSubscribeAction:nonDismissingPostSubscribeAction:askToBuyMessage:askToBuyId:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, void *object, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;
  *(v23 + 64) = a5;
  if (!object)
  {

    v25._countAndFlagsBits = 0x4C45434E4143;
    v25._object = 0xE600000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v27 = localizedString(_:comment:)(v25, v26);
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  *(v23 + 72) = countAndFlagsBits;
  *(v23 + 80) = object;
  *(v23 + 88) = a8;
  *(v23 + 96) = a9;
  *(v23 + 104) = a10;
  *(v23 + 112) = a11;
  *(v23 + 120) = a12;
  *(v23 + 128) = a13;
  *(v23 + 136) = a14;
  v28 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v29 = sub_1E1AF3C3C();
  (*(*(v29 - 8) + 32))(v23 + v28, a15, v29);
  *(v23 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageRenderEvent) = a16;
  return v23;
}

uint64_t ArcadeSubscribePage.init(pageType:details:offerButtonAction:subscribedOfferButtonAction:offerDisplayProperties:dismissButtonTitle:openAppAction:dismissingPostSubscribeAction:nonDismissingPostSubscribeAction:askToBuyMessage:askToBuyId:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = a13;
  v17 = a14;
  v19 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v19;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;
  if (a7)
  {
    object = a7;
  }

  else
  {
    v28 = a8;

    v22._countAndFlagsBits = 0x4C45434E4143;
    v22._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = localizedString(_:comment:)(v22, v23);
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;

    v18 = a13;
    v17 = a14;
    a8 = v28;
  }

  *(v16 + 72) = countAndFlagsBits;
  *(v16 + 80) = object;
  *(v16 + 88) = a8;
  *(v16 + 96) = a9;
  *(v16 + 104) = a10;
  *(v16 + 112) = a11;
  *(v16 + 120) = a12;
  *(v16 + 128) = v18;
  *(v16 + 136) = v17;
  v25 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v26 = sub_1E1AF3C3C();
  (*(*(v26 - 8) + 32))(v16 + v25, a15, v26);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageRenderEvent) = a16;
  return v16;
}

uint64_t ArcadeSubscribePage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeSubscribePage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeSubscribePage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v78 = sub_1E1AF3C3C();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v86 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v92 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v79 = v74 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = v74 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v74 - v13;
  v99 = sub_1E1AF380C();
  v15 = *(v99 - 8);
  v16 = MEMORY[0x1EEE9AC00](v99);
  v84 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = v74 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v80 = v74 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v90 = v74 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v74 - v24;
  type metadata accessor for BreakoutDetails();
  sub_1E1AF381C();
  v88 = v6;
  v95 = *(v6 + 16);
  v96 = v6 + 16;
  v91 = v14;
  v95(v14, a2, v5);
  sub_1E19103D8(&qword_1EE1DFB00, type metadata accessor for BreakoutDetails);
  sub_1E1AF464C();
  v26 = v87;
  v87[5] = v97;
  v27 = type metadata accessor for Action();
  sub_1E1AF381C();
  v28 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, a2);
  v75 = v15;
  v29 = (v15 + 8);
  v30 = *(v15 + 8);
  v31 = v99;
  v30(v25, v99);
  v26[6] = v28;
  sub_1E1AF381C();
  v81 = v27;
  v32 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, a2);
  v30(v25, v31);
  v26[7] = v32;
  type metadata accessor for OfferDisplayProperties();
  sub_1E1AF381C();
  v93 = a2;
  v95(v91, a2, v92);
  sub_1E19103D8(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
  sub_1E1AF464C();
  v33 = v26;
  v26[8] = v97;
  v34 = v90;
  v94 = a1;
  sub_1E1AF381C();
  countAndFlagsBits = sub_1E1AF37CC();
  object = v36;
  v89 = v30;
  v90 = v29;
  v30(v34, v99);
  if (!object)
  {
    v38._countAndFlagsBits = 0x4C45434E4143;
    v38._object = 0xE600000000000000;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v40 = localizedString(_:comment:)(v38, v39);
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
  }

  v41 = v33;
  v33[9] = countAndFlagsBits;
  v33[10] = object;
  v42 = v80;
  sub_1E1AF381C();
  v43 = v82;
  v44 = v93;
  v95(v82, v93, v92);
  type metadata accessor for OpenAppAction();
  swift_allocObject();
  v45 = v83;
  v46 = OpenAppAction.init(deserializing:using:)(v42, v43);
  if (v45)
  {

    v46 = 0;
  }

  v83 = 0;
  v33[11] = v46;
  sub_1E1AF381C();
  v47 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, v44);
  v48 = v44;
  v49 = v99;
  v50 = v89;
  v89(v25, v99);
  v33[12] = v47;
  sub_1E1AF381C();
  v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, v48);
  v50(v25, v49);
  v33[13] = v51;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v50(v25, v49);
  v41[14] = v52;
  v41[15] = v54;
  v55 = v93;
  sub_1E1AF381C();
  v56 = sub_1E1AF37CC();
  v58 = v57;
  v50(v25, v49);
  v41[16] = v56;
  v41[17] = v58;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v60 = v91;
  v59 = v92;
  v61 = v95;
  v95(v91, v55, v92);
  sub_1E19103D8(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v74[1] = v25;
  if (v97)
  {
    v41[2] = v97;
    v41[3] = 0;
    *(v41 + 32) = 0;
    v62 = v59;
  }

  else
  {
    v63 = v76;
    (*(v75 + 16))();
    v61(v79, v55, v59);
    type metadata accessor for ImpressionableArtwork();
    sub_1E1AF381C();
    v61(v60, v55, v59);
    sub_1E19103D8(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork);
    sub_1E1AF464C();
    v64 = v97;
    if (v97)
    {
      (*(v88 + 8))(v79, v59);
      v89(v63, v99);
      v41 = v87;
      v87[2] = v64;
      v41[3] = 0;
      v65 = 2;
    }

    else
    {
      v66 = v79;
      sub_1E190FF0C(v63, v79, &v97);
      (*(v88 + 8))(v66, v59);
      v89(v63, v99);
      v65 = v98;
      v41 = v87;
      *(v87 + 1) = v97;
    }

    *(v41 + 32) = v65;
    v62 = v59;
  }

  v67 = v94;
  sub_1E1AF381C();
  v68 = v93;
  v69 = v95;
  v95(v85, v93, v62);
  v70 = v86;
  v71 = v83;
  sub_1E1AF3BAC();
  if (v71)
  {
    (*(v88 + 8))(v68, v62);
    v89(v67, v99);
    sub_1E1910334(v41[2], v41[3], *(v41 + 32));

    type metadata accessor for ArcadeSubscribePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v77 + 32))(v41 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics, v70, v78);
    v85 = type metadata accessor for PageRenderMetricsEvent();
    v86 = 0;
    v72 = v91;
    sub_1E1AF381C();
    v69(v72, v68, v62);
    sub_1E19103D8(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    (*(v88 + 8))(v68, v62);
    v89(v67, v99);
    *(v41 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageRenderEvent) = v97;
  }

  return v41;
}

void sub_1E190FF0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = sub_1E1AF39DC();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - v15;
  v24[1] = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  (*(v10 + 8))(v13, v9);
  v17 = sub_1E1AF5A6C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  if (v19 == 1)
  {
    sub_1E14352B8(v16);
    v20 = 0;
  }

  else
  {
    v24[0] = a3;
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = a2;
    type metadata accessor for ImpressionableArtwork();
    v20 = sub_1E1AF59FC();
    a3 = v24[0];
    (*(v18 + 8))(v16, v17);
  }

  v27 = v20;
  type metadata accessor for ImpressionableArtwork();
  sub_1E1AF381C();
  (*(v6 + 16))(v8, a2, v25);
  sub_1E19103D8(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork);
  sub_1E1AF464C();
  v21 = v26;
  if (v26)
  {
LABEL_9:
    v23 = v27;
    if (v27)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v20)
  {
    if (v20 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_8;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_1E190EE8C();
      v21 = v22;
      goto LABEL_9;
    }
  }

  v21 = 0;
  v23 = v27;
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B06D70;
    *(v23 + 32) = v21;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = 1;
}

uint64_t sub_1E1910334(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for ArcadeSubscribePage()
{
  result = qword_1EE1DCFF8;
  if (!qword_1EE1DCFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19103D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1910420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E19103D8(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork);
  return sub_1E1AF464C();
}

uint64_t ArcadeSubscribePage.pageType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1E1910610(v2, v3, v4);
}

uint64_t sub_1E1910610(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_4;
  }
}

uint64_t ArcadeSubscribePage.dismissButtonTitle.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ArcadeSubscribePage.askToBuyMessage.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ArcadeSubscribePage.askToBuyId.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1E191073C(uint64_t a1)
{
  v3 = sub_1E1AF3C3C();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  if (v11 == 1 && v14 == 1)
  {
    v58 = v8;
    v59 = v4;
    v16 = *(a1 + 40);
    v53 = *(a1 + 48);
    v54 = v5;
    v18 = *(a1 + 56);
    v17 = *(a1 + 64);
    v19 = *(a1 + 80);
    v52 = *(a1 + 72);
    v43 = v17;
    v44 = v19;
    v57 = *(a1 + 88);
    v49 = v57;
    if (!v57)
    {
      v57 = *(v1 + 88);
    }

    v56 = *(a1 + 96);
    v48 = v56;
    if (!v56)
    {
      v56 = *(v1 + 96);
    }

    v55 = *(a1 + 104);
    v45 = v55;
    if (!v55)
    {
      v55 = *(v1 + 104);
    }

    v20 = *(a1 + 120);
    v42 = v20;
    if (v20)
    {
      v21 = *(a1 + 112);
      v50 = v20;
      v51 = v21;
    }

    else
    {
      v22 = *(v1 + 112);
      v50 = *(v1 + 120);
      v51 = v22;
    }

    v23 = *(a1 + 136);
    v40[1] = v23;
    v24 = v12;
    if (v23)
    {
      v25 = *(a1 + 128);
      v46 = v23;
      v47 = v25;
    }

    else
    {
      v26 = *(v1 + 128);
      v46 = *(v1 + 136);
      v47 = v26;
    }

    v27 = v54;
    (*(v54 + 16))(v58, a1 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics, v59, v6);
    v41 = *(a1 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageRenderEvent);
    v28 = v9;
    sub_1E1910610(v9, v10, 1);
    v29 = v13;
    sub_1E1910610(v13, v12, 1);

    v30 = v16;

    v31 = v53;

    v32 = v43;

    v33 = v44;

    sub_1E1910334(v28, v10, 1);
    sub_1E1910334(v29, v24, 1);
    type metadata accessor for ArcadeSubscribePage();
    a1 = swift_allocObject();
    *(a1 + 16) = v28;
    *(a1 + 24) = v24;
    *(a1 + 32) = 1;
    *(a1 + 40) = v30;
    *(a1 + 48) = v31;
    *(a1 + 56) = v18;
    *(a1 + 64) = v32;
    *(a1 + 72) = v52;
    *(a1 + 80) = v33;
    v34 = v56;
    *(a1 + 88) = v57;
    *(a1 + 96) = v34;
    v36 = v50;
    v35 = v51;
    *(a1 + 104) = v55;
    *(a1 + 112) = v35;
    v37 = v46;
    v38 = v47;
    *(a1 + 120) = v36;
    *(a1 + 128) = v38;
    *(a1 + 136) = v37;
    (*(v27 + 32))(a1 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics, v58, v59);
    *(a1 + OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageRenderEvent) = v41;
  }

  else
  {
    sub_1E1910610(*(v1 + 16), *(v1 + 24), *(v1 + 32));
    sub_1E1910610(v13, v12, v14);
    sub_1E1910334(v9, v10, v11);
    sub_1E1910334(v13, v12, v14);
  }

  return a1;
}

uint64_t ArcadeSubscribePage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscribePage.deinit()
{
  sub_1E1910334(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeSubscribePage.__deallocating_deinit()
{
  ArcadeSubscribePage.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E1910C48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeSubscribePage();
  v7 = swift_allocObject();
  result = ArcadeSubscribePage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1910CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E1910D4C()
{
  result = sub_1E1AF3C3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Gladiator.Environment.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1E1AEFCAC();
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_1E13ECBA0(v4);
  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

uint64_t Gladiator.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E19110D4()
{
  result = qword_1ECEBB290;
  if (!qword_1ECEBB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB290);
  }

  return result;
}

uint64_t PausedConfiguration.init(metrics:alignment:isDisabled:theme:isProductPage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 4);
  v13 = type metadata accessor for PausedConfiguration();
  *(a6 + v13[9]) = 0x3FF0000000000000;
  sub_1E16C8F24(a1, a6);
  v14 = a6 + v13[11];
  *v14 = *a2;
  *(v14 + 4) = v12;
  *(a6 + v13[5]) = a3;
  v15 = (a6 + v13[6]);
  v16 = a4[1];
  *v15 = *a4;
  v15[1] = v16;
  *(v15 + 73) = *(a4 + 73);
  v17 = a4[4];
  v15[3] = a4[3];
  v15[4] = v17;
  v15[2] = a4[2];
  v18._object = 0x80000001E1B5B430;
  v18._countAndFlagsBits = 0xD000000000000018;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = localizedString(_:comment:)(v18, v19);
  result = sub_1E19116A8(a1, type metadata accessor for OfferButtonMetrics);
  *(a6 + v13[7]) = v20;
  *(a6 + v13[8]) = a5;
  *(a6 + v13[10]) = 0x4008000000000000;
  return result;
}

uint64_t type metadata accessor for PausedConfiguration()
{
  result = qword_1EE1DC9A0;
  if (!qword_1EE1DC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PausedConfiguration.theme.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PausedConfiguration() + 24));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_1E16DB9C0(v11, &v10);
}

uint64_t PausedConfiguration.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for PausedConfiguration() + 28));

  return v1;
}

uint64_t PausedConfiguration.isEqual(to:with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB298);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for PausedConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1E1911644(v5, v9);
    if (*(v1 + *(v6 + 20)) == v9[*(v6 + 20)])
    {
      v13 = OfferButtonMetrics.isEqual(to:with:)(v9);
      sub_1E19116A8(v9, type metadata accessor for PausedConfiguration);
      if (v13)
      {
        return 1;
      }
    }

    else
    {
      sub_1E19116A8(v9, type metadata accessor for PausedConfiguration);
    }
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_1E19115DC(v5);
  }

  return 0;
}

uint64_t sub_1E19115DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1911644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PausedConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E19116A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void PausedConfiguration.apply<A>(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v43 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = objc_opt_self();
  [v13 begin];
  v53 = v13;
  [v13 setDisableActions_];
  v14 = sub_1E1912870(a1, v4);
  v16 = v15;
  v17 = type metadata accessor for OfferButtonMetrics();
  v18 = v4 + *(v17 + 80);
  if (*(v18 + 8))
  {
    if (v14 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v14;
    }

    v20 = v19 * 0.5;
  }

  else
  {
    v20 = *v18;
  }

  ConfigurableOfferButton.apply(cornerRadius:)(a2, a3, v20);
  v21 = *(a3 + 72);
  v48 = a3 + 72;
  v49 = v21;
  v22 = v21(a2, a3);
  [v22 setLineWidth_];

  v56 = 28;
  v23 = _s11AppStoreKit11SystemImageO4load_4withSo7UIImageCAC_So0H19SymbolConfigurationCSgtFZ_0(&v56, *(v4 + *(v17 + 40)));
  (*(a3 + 96))(a2, a3);
  v24 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v9;
  v54 = v4;
  v27 = *(AssociatedConformanceWitness + 16);
  v51 = v23;
  v27(v23, v26, AssociatedConformanceWitness);
  (*(v10 + 8))(v24, v26);
  v28 = *(a3 + 208);
  v43 = a1;
  v28(v23, a2, a3);
  v44 = *(a3 + 80);
  v55 = a3 + 80;
  v29 = v47;
  v44(a2, a3);
  v30 = (v54 + *(type metadata accessor for PausedConfiguration() + 28));
  v46 = *v30;
  v31 = v46;
  v32 = a2;
  v33 = v30[1];
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = *(v35 + 16);
  v45 = v33;
  swift_bridgeObjectRetain_n();
  v36(v31, v33, v34, v35);
  v52 = *(v52 + 8);
  (v52)(v29, v34);
  v38 = v43;
  v37 = v44;
  v44(v32, a3);
  v39 = [v38 traitCollection];
  sub_1E1AF104C();

  swift_getAssociatedConformanceWitness();
  sub_1E1AF149C();
  v40 = v52;
  (v52)(v29, v34);
  v37(v32, a3);
  sub_1E1AF118C();
  v40(v29, v34);
  (*(a3 + 88))(v32, a3);
  sub_1E1AF118C();
  v40(v29, v34);
  v41 = v49(v32, a3);
  [v41 setHidden_];

  v42 = (*(a3 + 64))(v32, a3);
  [v42 setHidden_];

  (*(a3 + 232))(v46, v45, v32, a3);
  _s11AppStoreKit19PausedConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(v38, v32, a3);
  [v53 commit];
}

double PausedConfiguration.size(in:)(void *a1)
{
  swift_getObjectType();

  return sub_1E1912870(a1, v1);
}

UIImage __swiftcall PausedConfiguration.loadImage()()
{
  v3 = 28;
  v1 = type metadata accessor for OfferButtonMetrics();
  return _s11AppStoreKit11SystemImageO4load_4withSo7UIImageCAC_So0H19SymbolConfigurationCSgtFZ_0(&v3, *(v0 + *(v1 + 40)));
}

void _s11AppStoreKit19PausedConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v51 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for PausedConfiguration();
  v16 = &selRef_remoteDownloadIdentifiersDidChange_;
  if (*(v4 + *(v15 + 20)) == 1)
  {
    (*(a3 + 96))(a2, a3);
    v17 = v14;
    if (qword_1ECEB11C0 != -1)
    {
      swift_once();
    }

    v18 = qword_1ECEB95D8;
    v19 = v60;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v18, v19, AssociatedConformanceWitness);
    (*(v59 + 8))(v17, v19);
    v21 = (*(a3 + 72))(a2, a3);
  }

  else
  {
    v56 = v14;
    v22 = *(a3 + 104);
    v54 = v9;
    v23 = v22(a2, a3);
    (*(a3 + 80))(a2, a3);
    v57 = v15;
    v58 = v4;
    v24 = v4 + *(v15 + 24);
    v25 = swift_getAssociatedConformanceWitness();
    v26 = *(v25 + 40);
    v55 = a1;
    v27 = (v54 + 8);
    v54 = a3 + 72;
    if (v23)
    {
      v28 = v24;
      v29 = *(v24 + 24);
      v53 = v29;
      v26(v29, AssociatedTypeWitness, v25);
      (*v27)(v11, AssociatedTypeWitness);
      v30 = *(a3 + 72);
      v31 = v55;
      v32 = v30(a2, a3);
      v33 = [*(v28 + 8) CGColor];
      [v32 setFillColor_];

      v34 = v56;
      (*(a3 + 96))(a2, a3);
      v35 = v60;
      v36 = swift_getAssociatedConformanceWitness();
      v16 = &selRef_remoteDownloadIdentifiersDidChange_;
      (*(v36 + 56))(v53, v35, v36);
      (*(v59 + 8))(v34, v35);
      v4 = v58;
      a1 = v31;
    }

    else
    {
      v52 = v24;
      v37 = *(v24 + 16);
      v53 = v37;
      v26(v37, AssociatedTypeWitness, v25);
      (*v27)(v11, AssociatedTypeWitness);
      v30 = *(a3 + 72);
      a1 = v55;
      v38 = v30(a2, a3);
      v39 = [v38 path];

      v16 = &selRef_remoteDownloadIdentifiersDidChange_;
      if (v39)
      {

        v40 = v30(a2, a3);
        v41 = [*v52 CGColor];
        [v40 setFillColor_];
      }

      v42 = v56;
      (*(a3 + 96))(a2, a3);
      v43 = v60;
      v44 = swift_getAssociatedConformanceWitness();
      (*(v44 + 56))(v53, v43, v44);
      (*(v59 + 8))(v42, v43);
      v4 = v58;
    }

    v15 = v57;
    v21 = v30(a2, a3);
  }

  v45 = v21;
  v46 = [objc_opt_self() clearColor];
  v47 = [v46 v16[92]];

  [v45 setStrokeColor_];
  v48 = (*(a3 + 104))(a2, a3);
  v49 = 8;
  if ((v48 & 1) == 0)
  {
    v49 = 0;
  }

  v50 = *(v4 + *(v15 + 24) + v49);
  sub_1E1912504(v50, a1, a2, a3);
}

uint64_t PausedConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)(uint64_t a1)
{
  v2 = type metadata accessor for PausedConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v5 = swift_dynamicCast();
  if (v5)
  {
    sub_1E19116A8(v4, type metadata accessor for PausedConfiguration);
  }

  return v5 ^ 1u;
}

double PausedConfiguration.textSize(in:)(void *a1)
{
  swift_getObjectType();

  return sub_1E1912AB0(a1, v1);
}

void sub_1E1912504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = &type metadata for Feature;
  v14 = sub_1E1309EB0();
  v12[0] = 17;
  v7 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v7 & 1) != 0 && ((*(a4 + 184))(a3, a4))
  {
    v8 = *(a4 + 168);
    v9 = a1;
    v8(a1, a3, a4);
    v10 = (*(a4 + 72))(a3, a4);
    [v10 setBackgroundColor_];
  }

  else
  {
    v11 = (*(a4 + 72))(a3, a4);
    v10 = [a1 CGColor];
    [v11 setBackgroundColor_];
  }
}

int8x8_t static PausedConfiguration.alignment(whenUsing:in:)@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>, uint8x8_t a4@<D0>)
{
  a4.i32[0] = *a2;
  v11 = vmovl_u8(a4).u64[0];
  LOBYTE(v5) = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = [a1 traitCollection];
  v8 = sub_1E1AF697C();

  if (v8)
  {
    v9 = vmovn_s32(vshlq_u32(vdupq_n_s32(0x10200u), vnegq_s32(vshll_n_u16(v11, 3uLL))));
    v5 = 0x10200u >> (8 * v5);
    if (v6)
    {
      if (v6 == 1)
      {
        LOBYTE(v6) = 2;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  else
  {
    v9 = v11;
  }

  result = vuzp1_s8(v9, v9);
  *a3 = result.i32[0];
  *(a3 + 4) = v5;
  *(a3 + 5) = v6;
  return result;
}

double sub_1E1912768(void *a1)
{
  swift_getObjectType();

  return sub_1E1912870(a1, v1);
}

uint64_t sub_1E19127AC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v4 = swift_dynamicCast();
  if (v4)
  {
    sub_1E19116A8(v2, type metadata accessor for PausedConfiguration);
  }

  return v4 ^ 1u;
}

double sub_1E1912870(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 28;
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = _s11AppStoreKit11SystemImageO4load_4withSo7UIImageCAC_So0H19SymbolConfigurationCSgtFZ_0(&v29, *(a2 + v8[10]));
  [v9 size];
  v11 = v10;
  v13 = v12;

  v14 = sub_1E1912AB0(a1, a2);
  v15 = (a2 + v8[7]);
  v17 = v16 + *v15 + v15[2];
  v18 = [a1 traitCollection];
  v19 = sub_1E1AF698C();

  v20 = *(a2 + *(type metadata accessor for PausedConfiguration() + 40));
  if (v19)
  {
    v20 = v20 + v20;
    if (v17 >= v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= v13)
    {
      goto LABEL_8;
    }

    v20 = v20 + v20;
  }

  v21 = a2 + v8[17];
  v11 = 0.0;
  if ((*(v21 + 8) & 1) == 0)
  {
    v11 = *v21;
  }

LABEL_8:
  v22 = v20 + v14 + v11 + v15[1] + v15[3];
  v23 = (a2 + v8[13]);
  if (v22 > *v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = *v23;
  }

  if (v17 > v23[1])
  {
    v25 = v17;
  }

  else
  {
    v25 = v23[1];
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69E7040], v4);
  v26 = CGSize.rounded(_:)(v7, v24, v25);
  (*(v5 + 8))(v7, v4);
  return v26;
}

double sub_1E1912AB0(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  v5 = sub_1E1AF104C();

  v6 = (a2 + *(type metadata accessor for PausedConfiguration() + 28));
  v8 = *v6;
  v7 = v6[1];
  *(&v15 + 1) = &type metadata for Feature;
  *&v16 = sub_1E1309EB0();
  LOBYTE(v14) = 5;

  v9 = v5;
  LOBYTE(v5) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  *&v14 = v8;
  *(&v14 + 1) = v7;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = v9;
  LOBYTE(v17) = 0;
  BYTE1(v17) = v5 & 1;
  LOWORD(v13) = v17;
  v10 = [a1 traitCollection];
  v11 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v10);

  sub_1E180E4CC(&v14);
  return v11;
}

uint64_t sub_1E1912C0C(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v70 - v16;
  v79 = sub_1E1AF127C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = swift_getAssociatedTypeWitness();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v75 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = sub_1E1912870(a1, v7);
  v26 = v25;
  v99.origin.x = a4;
  v99.origin.y = a5;
  v99.size.width = a6;
  v99.size.height = a7;
  v27 = CGRectGetMidX(v99) - v24 * 0.5;
  v84 = a4;
  v100.origin.x = a4;
  v80 = a5;
  v100.origin.y = a5;
  v100.size.width = a6;
  v87 = a7;
  v100.size.height = a7;
  v28 = CGRectGetMidY(v100) - v26 * 0.5;
  v88 = sub_1E1912AB0(a1, v7);
  v30 = v29;
  v31 = type metadata accessor for OfferButtonMetrics();
  v32 = (*(v7 + v31[8]))();
  [v32 size];
  v94 = v33;
  v35 = v34;

  v97 = &type metadata for Feature;
  v36 = sub_1E1309EB0();
  v98 = v36;
  v96[0] = 17;
  LOBYTE(v32) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v93 = v30;
  v37 = v27;
  v38 = v28;
  v39 = v24;
  v40 = v26;
  if (v32)
  {
    v82 = CGRectGetWidth(*&v37) - *(v8 + v31[7] + 24);
    v101.origin.x = v27;
    v101.origin.y = v28;
    v101.size.width = v24;
    v101.size.height = v26;
    v41 = (CGRectGetHeight(v101) - v30) * 0.5;
  }

  else
  {
    v82 = CGRectGetMaxX(*&v37) - *(v8 + v31[7] + 24);
    v102.origin.x = v27;
    v102.origin.y = v28;
    v102.size.width = v24;
    v102.size.height = v26;
    v41 = CGRectGetMidY(v102) + v30 * -0.5;
  }

  v83 = v41;
  v91 = v27;
  v103.origin.x = v27;
  v103.origin.y = v28;
  v103.size.width = v24;
  v103.size.height = v26;
  Height = CGRectGetHeight(v103);
  v43 = v35;
  v81 = a6;
  v92 = v8;
  v77 = v19;
  v90 = v26;
  if (Height >= v35)
  {
    (*(a3 + 96))(a2, a3);
    v48 = v86;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v50 = (*(AssociatedConformanceWitness + 8))(v48, AssociatedConformanceWitness);
    (*(v85 + 8))(v23, v48);
    v46 = v88;
    if (v50)
    {
      sub_1E1AF6CCC();
    }

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  }

  else
  {
    v44 = v31[17];
    v45 = 0.0;
    v46 = v88;
    if ((*(v8 + v44 + 8) & 1) == 0)
    {
      v45 = *(v8 + v44);
    }

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF122C();
    v94 = v47;
    v43 = v45;
  }

  v82 = v82 - v46;
  v51 = *(a3 + 80);
  v51(a2, a3);
  v52 = AssociatedTypeWitness;
  v72 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1E1AF11CC();
  v53 = *(v95 + 8);
  v95 += 8;
  v71 = v53;
  v53(v17, v52);
  v73 = v43;
  v97 = &type metadata for Feature;
  v98 = v36;
  v96[0] = 17;
  LOBYTE(v52) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v96);
  if (v52)
  {
    v54 = v28;
    v55 = *(v92 + v31[7] + 8);
  }

  else
  {
    v104.size.height = v90;
    v104.origin.x = v91;
    v54 = v28;
    v104.origin.y = v28;
    v104.size.width = v24;
    v55 = CGRectGetMinX(v104) + *(v92 + v31[7] + 8);
  }

  v70 = v55;
  v105.origin.x = v82;
  v105.origin.y = v83;
  v105.size.width = v46;
  v105.size.height = v93;
  CGRectGetMinY(v105);
  v56 = objc_opt_self();
  [v56 begin];
  [v56 setDisableActions_];
  v97 = &type metadata for Feature;
  v98 = v36;
  v96[0] = 17;
  v57 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v58 = &selRef_setAppleID_;
  v76 = v24;
  v74 = v54;
  if (v57)
  {
    v59 = *(a3 + 192);
    v60 = v59(a2, a3);
    if (v60)
    {
      v61 = v60;
      sub_1E1AF6B1C();
      [v61 setFrame_];
    }

    v62 = v59(a2, a3);
    if (v62)
    {
      v63 = v62;
      [v62 bounds];
    }

    v58 = &selRef_setAppleID_;
    v51(a2, a3);
    sub_1E1AF6B1C();
    v66 = AssociatedTypeWitness;
    sub_1E1AF116C();
    v71(v17, v66);
    v65 = v75;
    (*(a3 + 96))(a2, a3);
    sub_1E1AF6B1C();
  }

  else
  {
    v51(a2, a3);
    sub_1E1AF6B1C();
    v64 = AssociatedTypeWitness;
    sub_1E1AF116C();
    v71(v17, v64);
    v65 = v75;
    (*(a3 + 96))(a2, a3);
    sub_1E1AF6B1C();
  }

  v67 = v86;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF116C();
  (*(v85 + 8))(v65, v67);
  v68 = (*(a3 + 72))(a2, a3);
  sub_1E1AF6B1C();
  [v68 v58[14]];

  _s11AppStoreKit19PausedConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(a1, a2, a3);
  [v56 commit];
  return (*(v78 + 8))(v77, v79);
}

void sub_1E1913744()
{
  type metadata accessor for OfferButtonMetrics();
  if (v0 <= 0x3F)
  {
    sub_1E16FD19C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ReviewsContainer.__allocating_init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v34 = a5;
  v35 = a6;
  v30 = a3;
  v33 = a10;
  v31 = a9;
  v32 = a4;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v20 = *a2;
  v19 = a2[1];
  sub_1E138853C(a1, &v38);
  if (*(&v39 + 1))
  {
    v21 = v39;
    *(v18 + 96) = v38;
    *(v18 + 112) = v21;
    *(v18 + 128) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v29 = a7;
    v23 = a8;
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v36 = v22;
    v37 = v25;
    a8 = v23;
    a7 = v29;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v38);
  }

  sub_1E13E2E98(a1);
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  v26 = v32;
  *(v18 + 32) = v30;
  *(v18 + 40) = v26;
  v27 = v35;
  *(v18 + 48) = v34;
  *(v18 + 56) = v27;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = v31;
  *(v18 + 88) = v33 & 1;
  return v18;
}

uint64_t ReviewsContainer.init(id:adamId:ratings:tapToRate:reviews:reviewSummary:editorsChoice:writeReviewAction:supportAction:alwaysAllowReviews:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v39 = a3;
  v42 = a10;
  v40 = a9;
  v41 = a4;
  v18 = sub_1E1AEFEAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = a2[1];
  v38 = v22;
  sub_1E138853C(a1, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v36 = v23;
    v37 = a5;
    v25 = v24;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v30 = v29;
    (*(v19 + 8))(v21, v18);
    v43 = v25;
    v44 = v30;
    a8 = v28;
    a7 = v27;
    a6 = v26;
    v23 = v36;
    a5 = v37;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v45);
  }

  sub_1E13E2E98(a1);
  v31 = v49;
  *(v11 + 96) = v48;
  *(v11 + 112) = v31;
  *(v11 + 128) = v50;
  v32 = v39;
  *(v11 + 16) = v38;
  *(v11 + 24) = v23;
  v33 = v40;
  v34 = v41;
  *(v11 + 32) = v32;
  *(v11 + 40) = v34;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = v33;
  *(v11 + 88) = v42 & 1;
  return v11;
}

uint64_t ReviewsContainer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsContainer.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**ReviewsContainer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v64 = a2;
  v5 = *v3;
  v73 = v3;
  v58 = v5;
  v6 = sub_1E1AF39DC();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E1AF380C();
  v12 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v57 - v21;
  v65 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  if (v24)
  {
    v68 = v23;
    v69 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v68 = v25;
    v69 = v28;
  }

  sub_1E1AF6F6C();
  v29 = *(v12 + 8);
  v66 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67 = v29;
  v30 = v61;
  v29(v22, v61);
  v31 = v71;
  v32 = v73;
  *(v73 + 6) = v70;
  *(v32 + 7) = v31;
  v32[16] = v72;
  v33 = v65;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v36 = v35;
  v67(v19, v30);
  if (v36)
  {
    v37 = v73;
    v73[2] = v34;
    v37[3] = v36;
    type metadata accessor for Ratings();
    sub_1E1AF381C();
    v38 = v63;
    v58 = *(v62 + 16);
    v39 = v59;
    v40 = v64;
    v58(v59, v64, v63);
    v57[1] = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
    sub_1E1914E54(&qword_1EE1E4A00, 255, type metadata accessor for Ratings);
    sub_1E1AF464C();
    v37[4] = v70;
    type metadata accessor for TapToRate();
    sub_1E1AF381C();
    v41 = v40;
    v42 = v40;
    v43 = v58;
    v58(v39, v41, v38);
    sub_1E1914E54(&qword_1ECEBB2A0, 255, type metadata accessor for TapToRate);
    sub_1E1AF464C();
    v37[5] = v70;
    v44 = v65;
    sub_1E1AF381C();
    v43(v39, v42, v38);
    v45 = v43;
    type metadata accessor for Review(0);
    sub_1E1914E54(&qword_1EE1E4D20, 255, type metadata accessor for Review);
    v73[6] = sub_1E1AF630C();
    type metadata accessor for ReviewSummary();
    sub_1E1AF381C();
    v46 = v64;
    v45(v39, v64, v38);
    sub_1E1914E54(&qword_1EE1F4B08, 255, type metadata accessor for ReviewSummary);
    sub_1E1AF464C();
    v73[7] = v70;
    type metadata accessor for EditorsChoice();
    sub_1E1AF381C();
    v45(v39, v46, v38);
    sub_1E1914E54(&qword_1EE1F51F0, 255, type metadata accessor for EditorsChoice);
    sub_1E1AF464C();
    v73[8] = v70;
    type metadata accessor for Action();
    v47 = v44;
    v48 = v73;
    sub_1E1AF381C();
    v49 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v50 = v61;
    v51 = v67;
    v67(v16, v61);
    v48[9] = v49;
    sub_1E1AF381C();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v46);
    v51(v16, v50);
    v48[10] = v52;
    v53 = v60;
    sub_1E1AF381C();
    LOBYTE(v52) = sub_1E1AF370C();
    (*(v62 + 8))(v46, v63);
    v51(v47, v50);
    v51(v53, v50);
    *(v48 + 88) = v52 & 1;
  }

  else
  {
    v54 = sub_1E1AF5A7C();
    sub_1E1914E54(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v55 = 0x64496D616461;
    v55[1] = 0xE600000000000000;
    v55[2] = v58;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v62 + 8))(v64, v63);
    v67(v33, v30);
    sub_1E134B88C((v73 + 12));
    type metadata accessor for ReviewsContainer();
    swift_deallocPartialClassInstance();
  }

  return v73;
}

uint64_t ReviewsContainer.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1E1914560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  if (v5 >> 62)
  {
    if (sub_1E1AF71CC() > a1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_3:
    a2[3] = type metadata accessor for Review(0);
    a2[4] = sub_1E1914E54(qword_1EE1E4D28, 255, type metadata accessor for Review);
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E68FFD80](a1, v5);
      goto LABEL_7;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_7:
      *a2 = result;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  v7 = v2[8];
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    a2[3] = type metadata accessor for EditorsChoice();
    a2[4] = sub_1E1914E54(qword_1EE1F51F8, 255, type metadata accessor for EditorsChoice);
    *a2 = v7;
    goto LABEL_17;
  }

  if (sub_1E1AF71CC() == a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v8 = v2[7];
  if (!v8 || a1)
  {
LABEL_23:
    result = sub_1E1AF71FC();
    __break(1u);
    return result;
  }

  a2[3] = type metadata accessor for ReviewSummary();
  a2[4] = sub_1E1914E54(qword_1EE1F4B10, 255, type metadata accessor for ReviewSummary);
  *a2 = v8;
LABEL_17:
}

uint64_t sub_1E19147B0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 48);
  if (v3 >> 62)
  {
    v5 = result;
    v6 = a2;
    v7 = sub_1E1AF71CC();
    a2 = v6;
    v8 = v7;
    result = v5;
    if (v8 > v5)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
LABEL_3:
    v4 = 24;
LABEL_11:
    *a2 = v4;
    return result;
  }

  if (*(v2 + 64))
  {
    if (v3 >> 62)
    {
      v10 = result;
      v11 = a2;
      v12 = sub_1E1AF71CC();
      a2 = v11;
      v9 = v12;
      result = v10;
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == result)
    {
      v4 = 27;
      goto LABEL_11;
    }
  }

  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

uint64_t sub_1E19148D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E191492C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = *(v2 + 64);
    if (v9)
    {
      if (v4 >> 62)
      {
        v10 = result;
        v11 = sub_1E1AF71CC();
        result = v10;
        if (v11 != v10)
        {
          goto LABEL_20;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != result)
      {
        goto LABEL_20;
      }

      result = swift_beginAccess();
      v12 = *(v9 + 64);
      if (v12)
      {
        *a2 = v12;
        *(a2 + 32) = type metadata accessor for EditorsChoice();
        *(a2 + 8) = v9;
      }
    }

LABEL_20:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v7 = result;
  v8 = sub_1E1AF71CC();
  result = v7;
  if (v8 <= v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      v5 = *(v4 + 8 * result + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x1E68FFD80]();
LABEL_7:
  v6 = *(v5 + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction);
  if (!v6)
  {

    goto LABEL_20;
  }

  *a2 = v6;
  *(a2 + 32) = type metadata accessor for Review(0);
  *(a2 + 8) = v5;
}

uint64_t sub_1E1914AE0(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_8:
    if (*(v1 + 64))
    {
      if (v2 >> 62)
      {
        v6 = result;
        v5 = sub_1E1AF71CC();
        result = v6;
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v5 == result;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
      {
        return 0;
      }

      __break(1u);
LABEL_7:
      v3 = result;
      v4 = sub_1E1AF71CC();
      result = v3;
      if (v4 <= v3)
      {
        goto LABEL_8;
      }
    }

    v7 = *(MEMORY[0x1E68FFD80]() + OBJC_IVAR____TtC11AppStoreKit6Review_moreAction);

    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    return 0;
  }
}

uint64_t ReviewsContainer.deinit()
{

  sub_1E134B88C(v0 + 96);
  return v0;
}

uint64_t ReviewsContainer.__deallocating_deinit()
{
  ReviewsContainer.deinit();

  return swift_deallocClassInstance();
}

void (**sub_1E1914CEC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t, uint64_t)
{
  type metadata accessor for ReviewsContainer();
  v7 = swift_allocObject();
  result = ReviewsContainer.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1914D9C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  if (v2 >> 62)
  {
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 != 0;
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1914DFC(uint64_t a1, uint64_t a2)
{
  result = sub_1E1914E54(&qword_1EE1F1CC8, a2, type metadata accessor for ReviewsContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1914E54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *LocalAction.__allocating_init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v13 = sub_1E1AEFEAC();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = &v16[OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler];
  *v17 = a6;
  *(v17 + 1) = a7;
  sub_1E138853C(a1, v42);
  v18 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v19 = sub_1E1AF3E1C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v36 = a5;
  v21(&v16[v18], a5, v19);
  v22 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
  v24 = &v16[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v16[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v42, &v39);
  if (*(&v40 + 1))
  {
    v26 = v40;
    *v25 = v39;
    *(v25 + 1) = v26;
    *(v25 + 4) = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v32 = a1;
    v29 = v28;
    (*(v33 + 8))(v15, v34);
    v37 = v27;
    v38 = v29;
    a1 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  (*(v20 + 8))(v36, v19);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v42, &unk_1ECEB5670);
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v35;
  *(v16 + 5) = 0;
  return v16;
}

void *LocalAction.init(id:title:artwork:actionMetrics:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = sub_1E1AEFEAC();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v8 + OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler);
  *v22 = a6;
  v22[1] = a7;
  sub_1E138853C(a1, v47);
  (*(v19 + 16))(v21, a5, v18);
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_1E138853C(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = a1;
    v26 = sub_1E1AEFE7C();
    v27 = a5;
    v29 = v28;
    (*(v34 + 8))(v14, v35);
    v39 = v26;
    v40 = v29;
    a1 = v25;
    a5 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  (*(v19 + 8))(a5, v18);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v47, &unk_1ECEB5670);
  v30 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v30 + 4) = v46;
  v31 = v45;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_1E134B7C8(v17, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v32 = v37;
  v8[2] = v36;
  v8[3] = v32;
  v8[4] = v38;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

uint64_t LocalAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t LocalAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAction()
{
  result = qword_1EE1F71C8;
  if (!qword_1EE1F71C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStateBanner.banner(for:)(uint64_t *a1)
{
  result = 0;
  v3 = a1[6];
  v4 = v3 >> 60;
  if ((v3 >> 60) > 6)
  {
    if (v4 == 7)
    {
    }

    if (v4 == 8)
    {
      v5 = a1[4];
      v7 = a1[2];
      v6 = a1[3];
      v8 = *a1;
      v9 = a1[1];
      v10 = a1[5] | a1[7];
      v11 = v6 | v7 | v9;
      if (v3 == 0x8000000000000000 && !(v10 | v8 | v5 | v11))
      {
      }

      result = 0;
      if (v3 == 0x8000000000000000 && v8 == 4 && !(v10 | v5 | v11))
      {
      }
    }
  }

  else if (v4 == 2 || v4 == 3)
  {
  }

  return result;
}

void *AppStateBanner.__allocating_init(unknownBanner:buyBanner:downloadBanner:updateBanner:openBanner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AppStateBanner.init(unknownBanner:buyBanner:downloadBanner:updateBanner:openBanner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t AppStateBanner.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppStateBanner.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AppStateBanner.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_1E1AF39DC();
  v18 = *(v4 - 8);
  v5 = v18;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for Banner();
  v21 = a1;
  sub_1E1AF381C();
  v9 = *(v5 + 16);
  v9(v7, a2, v4);
  v23 = sub_1E19160B8(&qword_1EE1E5068, 255, type metadata accessor for Banner);
  sub_1E1AF464C();
  v10 = v25;
  v25[2] = v26;
  sub_1E1AF381C();
  v11 = v22;
  v17 = v4;
  v9(v7, v22, v4);
  v24 = v5 + 16;
  sub_1E1AF464C();
  v10[3] = v26;
  sub_1E1AF381C();
  v9(v7, v11, v4);
  sub_1E1AF464C();
  v12 = v25;
  v25[4] = v26;
  sub_1E1AF381C();
  v13 = v22;
  v14 = v17;
  v9(v7, v22, v17);
  sub_1E1AF464C();
  v12[5] = v26;
  v15 = v21;
  sub_1E1AF381C();
  v9(v7, v13, v14);
  sub_1E1AF464C();
  (*(v18 + 8))(v13, v14);
  (*(v19 + 8))(v15, v20);
  result = v25;
  v25[6] = v26;
  return result;
}

uint64_t AppStateBanner.deinit()
{

  return v0;
}

uint64_t AppStateBanner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E19160B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1E1916124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = AppStateBanner.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

__n128 InsetLayout.init(sublayout:layoutMargins:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_1E1337DC8(a1, v14);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B10);
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 48) = v14[2];
  *(v11 + 64) = v12;
  *(v11 + 80) = v16;
  result = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = result;
  *a2 = v11;
  return result;
}

_OWORD *InsetLayout.sublayout.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E19162CC(v3 + 16, v5);
  return sub_1E1337DC8(v5, a1);
}

_OWORD *sub_1E1916304@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1E19162CC(v3 + 16, v5);
  return sub_1E1337DC8(v5, a2);
}

uint64_t InsetLayout.sublayout.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E19162CC(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1E1337DC8(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1E1916448(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B10);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*InsetLayout.sublayout.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1E19162CC(v5 + 16, v4);
  sub_1E1337DC8(v4, v4 + 5);
  return sub_1E1916520;
}

void sub_1E1916520(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_1E1383E78(v3, v2);
    InsetLayout.sublayout.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    InsetLayout.sublayout.setter(v3);
  }

  free(v2);
}

double InsetLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t InsetLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1E19162CC(v9 + 16, v15);
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_1E1916448(v15, v10 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B10);
    v12 = swift_allocObject();
    v13 = v16;
    v12[3] = v15[2];
    v12[4] = v13;
    v12[5] = v17;
    v14 = v15[1];
    v12[1] = v15[0];
    v12[2] = v14;

    *v4 = v12;
  }

  return result;
}

void (*InsetLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_1E1916748;
}

void sub_1E1916748(double **a1)
{
  v1 = *a1;
  InsetLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double InsetLayout.measurements(fitting:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1E1AF6B5C();
  sub_1E19162CC(v1 + 16, v5);
  sub_1E1337DC8(v5, &v6);
  __swift_project_boxed_opaque_existential_1Tm(&v6, v7);
  sub_1E1AF11CC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v6);
  return v3 + *(v1 + 72) + *(v1 + 88);
}

uint64_t InsetLayout.placeChildren(relativeTo:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1E19162CC((v1 + 2), v18);
  sub_1E1337DC8(v18, &v19);
  __swift_project_boxed_opaque_existential_1Tm(&v19, v20);
  sub_1E1AF6B0C();
  sub_1E1AF1B7C();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v2 = v1[8];
  v3 = sub_1E1AF10FC();
  v4 = sub_1E1AF1D1C();
  *v5 = v2 + *v5;
  v4(&v19, 0);
  v3(v18, 0);
  v6 = v1[10];
  v7 = sub_1E1AF10FC();
  v8 = sub_1E1AF1CEC();
  *v9 = v6 + *v9;
  v8(&v19, 0);
  v7(v18, 0);
  v10 = v1[9];
  v11 = sub_1E1AF10DC();
  *v12 = *v12 - v10;
  v11(v18, 0);
  v13 = v1[8];
  v14 = sub_1E1AF10DC();
  *(v15 + 8) = *(v15 + 8) - v13;
  v14(v18, 0);
  v16 = sub_1E1AF108C();
  sub_1E1AF6B6C();
  return v16(v18, 0);
}

uint64_t ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1916B24, 0, 0);
}

uint64_t sub_1E1916B24()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = *(v0 + 40);
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1E1916C58;

  return MEMORY[0x1EEE6DBF8](v0 + 16, v4, v6, 0, 0, &unk_1E1B42118, v5, v4);
}

uint64_t sub_1E1916C58()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1916D70, 0, 0);
}

uint64_t sub_1E1916D88(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t))
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2EF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v75 = v64 - v4;
  v5 = sub_1E1AF0ADC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = v64 - v11;
  v84 = sub_1E1AF0AFC();
  v70 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DB8);
  v78 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v64 - v13;
  v83 = sub_1E1AF047C();
  v73 = *(v83 - 1);
  v14 = MEMORY[0x1EEE9AC00](v83);
  v82 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18) - 8;
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = v64 - v20;
  v22 = *(a1 + 16);
  v69 = a1;
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = v22 - 1;
    v25 = *(v19 + 72);
    do
    {
      sub_1E134FD1C(v23, v21, &qword_1ECEB2E18);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
      v27 = (*(*(v26 - 8) + 48))(v21, 1, v26);
      result = sub_1E1308058(v21, &qword_1ECEB2E18);
      v29 = v24-- != 0;
      v30 = v27 == 1;
      v31 = v27 != 1;
      if (v30)
      {
        break;
      }

      v23 += v25;
    }

    while (v29);
    if (!v79)
    {
      return result;
    }
  }

  else
  {
    v31 = 1;
    if (!v79)
    {
      return result;
    }
  }

  result = sub_1E1AF03FC();
  if (result)
  {
    if (v31)
    {
      v32 = result;
      v79 = sub_1E1AF04AC();
      v64[1] = v32;
      sub_1E1AF025C();
      v92 = MEMORY[0x1E69E7CC0];
      sub_1E191F988(&qword_1EE1E22E0, MEMORY[0x1E697A360]);
      sub_1E1AF60AC();
      sub_1E1302CD4(&qword_1EE1E22E8, &qword_1ECEB2DB8);
      sub_1E1AF6DBC();
      if (v89)
      {
        v33 = (v73 + 8);
        do
        {
          sub_1E1AF048C();
          v34 = sub_1E1AF5E9C();
          v36 = v35;

          *&v89 = v34;
          *(&v89 + 1) = v36;
          v87 = 0x72656E6F6C63;
          v88 = 0xE600000000000000;
          sub_1E13B8AA4();
          v37 = sub_1E1AF6E9C();

          if ((v37 & 1) != 0 && (v38 = v82, sub_1E1AF025C(), sub_1E191F988(&qword_1EE1E22D8, MEMORY[0x1E697A360]), v39 = v83, sub_1E1AF665C(), sub_1E1AF668C(), (*v33)(v38, v39), v89 == v87))
          {
          }

          else
          {
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
          }

          sub_1E1AF6DBC();
        }

        while (v89);
      }

      (*(v78 + 8))(v85, v86);
      v40 = v92;
      if (v92 < 0 || (v92 & 0x4000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v41 = *(v92 + 16);
LABEL_23:
      v42 = v69;
      v43 = v76;
      if (v41)
      {
        v44 = 0;
        v73 = v40 & 0xC000000000000001;
        v72 = v40 + 32;
        v83 = (v70 + 7);
        v79 = (v70 + 6);
        v71 = (v70 + 4);
        v66 = (v70 + 2);
        ++v70;
        v65 = xmmword_1E1B02CC0;
        v68 = v40;
        v67 = v41;
        v80 = v9;
        do
        {
          if (v73)
          {
            v46 = MEMORY[0x1E68FFD80](v44, v40);
            v45 = (v44 + 1);
            if (__OFADD__(v44, 1))
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v44 >= *(v40 + 16))
            {
              goto LABEL_62;
            }

            v46 = *(v72 + 8 * v44);

            v45 = (v44 + 1);
            if (__OFADD__(v44, 1))
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v41 = sub_1E1AF71CC();
              goto LABEL_23;
            }
          }

          v82 = sub_1E1917CB4(v42, v44);
          if (v82)
          {
            v47 = sub_1E13AE610();
            v48 = v47;
            v77 = v45;
            v78 = v46;
            if (v47 >> 62)
            {
              v49 = sub_1E1AF71CC();
              if (v49)
              {
LABEL_33:
                if (v49 < 1)
                {
                  goto LABEL_63;
                }

                v50 = 0;
                v85 = v48;
                v86 = v48 & 0xC000000000000001;
                while (2)
                {
                  if (v86)
                  {
                    MEMORY[0x1E68FFD80](v50, v48);
                  }

                  else
                  {
                  }

                  sub_1E1AF021C();
                  sub_1E1AF04CC();
                  v51 = sub_1E1AF02AC();
                  v52 = *(*(v51 - 8) + 48);
                  if (v52(v9, 1, v51))
                  {

                    sub_1E1308058(v9, &qword_1ECEB2DC0);
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0;
                    goto LABEL_46;
                  }

                  v53 = sub_1E1AF028C();
                  sub_1E1308058(v9, &qword_1ECEB2DC0);
                  if (*(v53 + 16))
                  {
                    sub_1E1300B24(v53 + 32, &v89);

                    if (*(&v90 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F18);
                      v54 = v84;
                      v55 = swift_dynamicCast();
                      (*v83)(v43, v55 ^ 1u, 1, v54);
                      if ((*v79)(v43, 1, v54) == 1)
                      {

                        v9 = v80;
                        v48 = v85;
                        goto LABEL_47;
                      }

                      (*v71)(v81, v43, v54);

                      v56 = v75;
                      sub_1E1AF0ABC();
                      v57 = sub_1E1AF0AAC();
                      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
                      v58 = [objc_opt_self() whiteColor];
                      sub_1E1AF0ACC();
                      v59 = v81;
                      sub_1E1AF0AEC();
                      v60 = sub_1E1AF04BC();
                      if (!v52(v61, 1, v51))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F20);
                        v62 = swift_allocObject();
                        *(v62 + 16) = v65;
                        *(v62 + 56) = v54;
                        *(v62 + 64) = MEMORY[0x1E697A6A0];
                        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v62 + 32));
                        (*v66)(boxed_opaque_existential_0, v59, v54);
                        sub_1E1AF029C();
                      }

                      v60(&v89, 0);

                      (*v70)(v59, v54);
                      v43 = v76;
                      v9 = v80;
                      v48 = v85;
LABEL_48:
                      if (v49 == ++v50)
                      {
                        goto LABEL_25;
                      }

                      continue;
                    }
                  }

                  else
                  {

                    v91 = 0;
                    v89 = 0u;
                    v90 = 0u;
                  }

                  break;
                }

LABEL_46:
                v48 = v85;
                sub_1E1308058(&v89, &qword_1ECEB2F10);
                (*v83)(v43, 1, 1, v84);
LABEL_47:
                sub_1E1308058(v43, &unk_1ECEB2F00);
                goto LABEL_48;
              }
            }

            else
            {
              v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v49)
              {
                goto LABEL_33;
              }
            }

LABEL_25:

            v42 = v69;
            v40 = v68;
            v41 = v67;
            v45 = v77;
          }

          v44 = v45;
        }

        while (v45 != v41);
      }
    }
  }

  return result;
}

uint64_t sub_1E1917A28(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1E1917A50, 0, 0);
}

uint64_t sub_1E1917A50()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E1917B7C;

  return MEMORY[0x1EEE6DBF8](v0 + 3, v3, v5, 0, 0, &unk_1E1B421B0, v4, v3);
}

uint64_t sub_1E1917B7C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1917C94, 0, 0);
}

uint64_t sub_1E1917CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF02EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF02CC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_1E1AF030C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18) - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v55 - v20);
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v60 = v10;
  sub_1E134FD1C(a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a2, &v55 - v20, &qword_1ECEB2E18);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_1E1308058(v21, &qword_1ECEB2E18);
    return 0;
  }

  v59 = v7;
  v23 = v5;
  v24 = v4;
  v57 = v17;
  v25 = *v21;

  v26 = *(v22 + 64);
  v27 = v25;
  v28 = sub_1E1AEFEAC();
  (*(*(v28 - 8) + 8))(v21 + v26, v28);
  if (!v25)
  {
    return 0;
  }

  [v25 size];
  [v25 size];
  v30 = v29 / 0.95;
  if (COERCE__INT64(fabs(v29 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = v24;
  v32 = v23;
  [v27 size];
  v34 = v33 / 0.95;
  v35 = v59;
  if (v33 / 0.95 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = v30;
  v37 = v30;
  if (v37 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v33 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = v34;
  if (v38 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v58 = v27;
  if (v38 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v34;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v41 = CGBitmapContextCreate(0, v36, v39, 8uLL, 0, DeviceRGB, 1u);

  if (!v41)
  {
    if (qword_1EE1E35F0 == -1)
    {
LABEL_21:
      v52 = sub_1E1AF591C();
      __swift_project_value_buffer(v52, qword_1EE2161A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v61[3] = MEMORY[0x1E69E6530];
      v61[0] = a2;
      sub_1E1AF385C();
      sub_1E1308058(v61, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();

      return 0;
    }

LABEL_36:
    swift_once();
    goto LABEL_21;
  }

  v42 = sub_1E191D4C0(a1, a2);
  CGContextSetFillColorWithColor(v41, v42);

  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v37;
  v62.size.height = v38;
  CGContextFillRect(v41, v62);
  v43 = v58;
  v44 = [v58 CGImage];
  if (v44)
  {
    v45 = v44;
    sub_1E1AF679C();
    Image = CGBitmapContextCreateImage(v41);
    if (Image)
    {
      v47 = Image;
      v56 = v45;
      v55 = sub_1E1AF032C();
      v48 = *MEMORY[0x1E697A1D0];
      v49 = sub_1E1AF031C();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v13, v48, v49);
      (*(v50 + 56))(v13, 0, 1, v49);
      v51 = v47;
      sub_1E1AF02BC();
      (*(v32 + 104))(v35, *MEMORY[0x1E697A1C8], v31);
      sub_1E1AF02FC();
      v53 = sub_1E1AF02DC();

      return v53;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1E19186EC(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;
  v4 = v2[7];
  *(v3 + 112) = v2[6];
  *(v3 + 128) = v4;
  *(v3 + 144) = v2[8];
  v5 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v5;
  v6 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v6;
  v7 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E1918734, 0, 0);
}

uint64_t sub_1E1918734()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1E1918860;

  return MEMORY[0x1EEE6DBF8](v0 + 20, v3, v5, 0, 0, &unk_1E1B42248, v4, v3);
}

uint64_t sub_1E1918860()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1918978, 0, 0);
}

uint64_t sub_1E1918990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E1755F30;

  return ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(a1, a2, a3, a4);
}

uint64_t sub_1E1918A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1E1AEFEAC();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA298);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2B8);
  v4[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C0);
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v4[35] = v8;
  v9 = *(v8 - 8);
  v4[36] = v9;
  v4[37] = *(v9 + 64);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1918DD4, 0, 0);
}

uint64_t sub_1E1918DD4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v35 = *(v0 + 344);
    v3 = *(v0 + 288);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v33 = (*(v0 + 112) + 32);
    v34 = *(v0 + 280);
    v30 = **(v0 + 72);
    v31 = *(v34 + 48);
    v32 = (v4 + 40) & ~v4;
    v28 = *(v3 + 72);
    v29 = (*(v0 + 296) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v39 = v2;
      v9 = *(v0 + 336);
      v8 = *(v0 + 344);
      v10 = *(v0 + 328);
      v11 = *(v0 + 272);
      v37 = *(v0 + 264);
      v12 = *(v0 + 104);
      v36 = *(v0 + 96);
      v13 = *(v0 + 88);
      v38 = v5;
      sub_1E134FD1C(v5, v8, &unk_1ECEB2E50);
      v14 = *(v34 + 48);
      *v9 = *v8;
      (*v33)(&v9[v14], v35 + v31, v12);
      v15 = sub_1E1AF649C();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v11, 1, 1, v15);
      sub_1E134FD1C(v9, v10, &unk_1ECEB2E50);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v13;
      sub_1E137F600(v10, v17 + v32, &unk_1ECEB2E50);
      *(v17 + v29) = v36;
      sub_1E134FD1C(v11, v37, &qword_1ECEB2D20);
      LODWORD(v10) = (*(v16 + 48))(v37, 1, v15);

      v18 = *(v0 + 264);
      if (v10 == 1)
      {
        sub_1E1308058(*(v0 + 264), &qword_1ECEB2D20);
      }

      else
      {
        sub_1E1AF648C();
        (*(v16 + 8))(v18, v15);
      }

      if (v17[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_1E1AF63CC();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1E1B421E0;
      *(v22 + 24) = v17;
      v23 = v21 | v19;
      if (v21 | v19)
      {
        v23 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      v6 = *(v0 + 336);
      v7 = *(v0 + 272);
      *(v0 + 48) = 1;
      *(v0 + 56) = v23;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_1E1308058(v7, &qword_1ECEB2D20);
      sub_1E1308058(v6, &unk_1ECEB2E50);
      v5 = v38 + v28;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  sub_1E1AF63FC();
  *(v0 + 360) = MEMORY[0x1E69E7CC0];
  v24 = swift_task_alloc();
  *(v0 + 368) = v24;
  *v24 = v0;
  v24[1] = sub_1E1919248;
  v25 = *(v0 + 232);
  v26 = *(v0 + 240);

  return MEMORY[0x1EEE6D8A8](v25, 0, 0, v26);
}

uint64_t sub_1E1919248()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1919344, 0, 0);
}

uint64_t sub_1E1919344()
{
  v1 = v0[29];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) != 1)
  {
    sub_1E137F600(v1, v0[28], &qword_1ECEB2E18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v0[45];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1E172DBD4(0, v57[2] + 1, 1, v0[45]);
    }

    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1E172DBD4(v58 > 1, v59 + 1, 1, v57);
    }

    v60 = v0[28];
    v61 = v0[22];
    v57[2] = v59 + 1;
    sub_1E137F600(v60, v57 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59, &qword_1ECEB2E18);
    v0[45] = v57;
    v62 = swift_task_alloc();
    v0[46] = v62;
    *v62 = v0;
    v62[1] = sub_1E1919248;
    v63 = v0[29];
    v64 = v0[30];

    return MEMORY[0x1EEE6D8A8](v63, 0, 0, v64);
  }

  v2 = v0[44];
  (*(v0[31] + 8))(v0[32], v0[30]);
  if (!v2)
  {
    v68 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v3 = 0;
  v4 = v0[36];
  v73 = v0[10] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v5 = v0[14];
  v6 = (v5 + 32);
  v80 = (v5 + 56);
  v68 = MEMORY[0x1E69E7CC0];
  v79 = (v5 + 48);
  v72 = v0[45];
  v71 = v0[40];
  v77 = v0[24];
  v78 = v0[16];
  v82 = v0[35];
  v76 = (v5 + 8);
  v69 = *(v4 + 72);
  v70 = *(v82 + 48);
  v87 = v0;
  v84 = (v5 + 32);
  while (2)
  {
    v8 = v0[39];
    v9 = v0[40];
    v10 = v0[13];
    sub_1E134FD1C(v73 + v3 * v69, v9, &unk_1ECEB2E50);
    v11 = *(v82 + 48);
    *v8 = *v9;
    v12 = *v6;
    (*v6)(&v8[v11], v71 + v70, v10);
    v13 = *(v72 + 16);
    if (!v13)
    {
      goto LABEL_5;
    }

    v83 = v12;
    v74 = v3;
    v14 = v0[22];
    v81 = *(v14 + 72);
    v67 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v15 = v0[45] + v67;
    v16 = v0;
    while (1)
    {
      v85 = v15;
      v86 = v13;
      v19 = v16[24];
      v18 = v16[25];
      sub_1E134FD1C(v15, v18, &qword_1ECEB2E18);
      sub_1E134FD1C(v18, v19, &qword_1ECEB2E18);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
      v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
      v22 = v16[24];
      if (v21 == 1)
      {
        sub_1E1308058(v16[24], &qword_1ECEB2E18);
        v23 = 1;
        v24 = v83;
      }

      else
      {
        v25 = v16[20];
        v26 = v16[13];

        v27 = v22 + *(v20 + 64);
        v24 = v83;
        v83(v25, v27, v26);
        v23 = 0;
      }

      v29 = v16[38];
      v28 = v16[39];
      v30 = v16[19];
      v31 = v16[20];
      v32 = v16[17];
      v33 = v87[13];
      v34 = *v80;
      (*v80)(v31, v23, 1, v33);
      sub_1E134FD1C(v28, v29, &unk_1ECEB2E50);

      v24(v30, v29 + *(v82 + 48), v33);
      v34(v30, 0, 1, v33);
      v35 = *(v78 + 48);
      sub_1E134FD1C(v31, v32, &qword_1ECEBA270);
      sub_1E134FD1C(v30, v32 + v35, &qword_1ECEBA270);
      v36 = *v79;
      v37 = v33;
      v16 = v87;
      v38 = (*v79)(v32, 1, v37);
      v39 = v87[13];
      if (v38 == 1)
      {
        break;
      }

      sub_1E134FD1C(v87[17], v87[18], &qword_1ECEBA270);
      v40 = v36(v32 + v35, 1, v39);
      v42 = v87[19];
      v41 = v87[20];
      v43 = v87[18];
      if (v40 == 1)
      {
        v44 = v87[13];
        sub_1E1308058(v87[19], &qword_1ECEBA270);
        sub_1E1308058(v41, &qword_1ECEBA270);
        (*v76)(v43, v44);
        goto LABEL_9;
      }

      v75 = v87[17];
      v45 = v87[15];
      v46 = v87[13];
      v83(v45, v32 + v35, v46);
      sub_1E191F988(&qword_1EE1FADA8, MEMORY[0x1E69695A8]);
      v47 = sub_1E1AF5DAC();
      v48 = *v76;
      v49 = v45;
      v16 = v87;
      (*v76)(v49, v46);
      sub_1E1308058(v42, &qword_1ECEBA270);
      sub_1E1308058(v41, &qword_1ECEBA270);
      v48(v43, v46);
      sub_1E1308058(v75, &qword_1ECEBA270);
      if (v47)
      {
        goto LABEL_20;
      }

LABEL_10:
      sub_1E1308058(v16[25], &qword_1ECEB2E18);
      v15 = v85 + v81;
      v13 = v86 - 1;
      if (v86 == 1)
      {
        v3 = v74;
        v6 = v84;
        goto LABEL_5;
      }
    }

    v17 = v87[20];
    sub_1E1308058(v87[19], &qword_1ECEBA270);
    sub_1E1308058(v17, &qword_1ECEBA270);
    if (v36(v32 + v35, 1, v39) != 1)
    {
LABEL_9:
      sub_1E1308058(v87[17], &qword_1ECEBA298);
      goto LABEL_10;
    }

    sub_1E1308058(v87[17], &qword_1ECEBA270);
LABEL_20:
    v51 = v16[26];
    v50 = v16[27];
    v52 = v16[23];
    sub_1E137F600(v16[25], v51, &qword_1ECEB2E18);
    sub_1E137F600(v51, v50, &qword_1ECEB2E18);
    sub_1E134FD1C(v50, v52, &qword_1ECEB2E18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_1E172DBD4(0, v68[2] + 1, 1, v68);
    }

    v3 = v74;
    v6 = v84;
    v54 = v68[2];
    v53 = v68[3];
    if (v54 >= v53 >> 1)
    {
      v68 = sub_1E172DBD4(v53 > 1, v54 + 1, 1, v68);
    }

    v55 = v87[23];
    sub_1E1308058(v87[27], &qword_1ECEB2E18);
    v68[2] = v54 + 1;
    sub_1E137F600(v55, v68 + v67 + v54 * v81, &qword_1ECEB2E18);
LABEL_5:
    ++v3;
    v0 = v87;
    v7 = v87[44];
    sub_1E1308058(v87[39], &unk_1ECEB2E50);
    if (v3 != v7)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v65 = v0[1];

  return v65(v68);
}

uint64_t sub_1E1919CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a3;
  v4[48] = a4;
  v4[45] = a1;
  v4[46] = a2;
  v5 = sub_1E1AEFEAC();
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA298);
  v4[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v4[57] = v6;
  v4[58] = *(v6 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2B8);
  v4[65] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C0);
  v4[66] = v7;
  v4[67] = *(v7 - 8);
  v4[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v4[71] = v8;
  v9 = *(v8 - 8);
  v4[72] = v9;
  v4[73] = *(v9 + 64);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E191A070, 0, 0);
}

uint64_t sub_1E191A070()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 16);
  *(v0 + 640) = v2;
  if (v2)
  {
    v37 = *(v0 + 632);
    v3 = *(v0 + 576);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v35 = (*(v0 + 400) + 32);
    v36 = *(v0 + 568);
    v32 = **(v0 + 360);
    v33 = *(v36 + 48);
    v34 = (v4 + 176) & ~v4;
    v30 = *(v3 + 72);
    v31 = (*(v0 + 584) + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v40 = v5;
      v41 = v2;
      v8 = *(v0 + 632);
      v9 = *(v0 + 624);
      v10 = *(v0 + 616);
      v11 = *(v0 + 560);
      v12 = *(v0 + 392);
      v38 = *(v0 + 384);
      v39 = *(v0 + 552);
      v13 = *(v0 + 376);
      sub_1E134FD1C(v5, v8, &unk_1ECEB2E50);
      v14 = *(v36 + 48);
      *v9 = *v8;
      (*v35)(&v9[v14], v37 + v33, v12);
      v15 = sub_1E1AF649C();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v11, 1, 1, v15);
      v48 = v13[6];
      v49 = v13[7];
      v50 = v13[8];
      v44 = v13[2];
      v45 = v13[3];
      v46 = v13[4];
      v47 = v13[5];
      v42 = *v13;
      v43 = v13[1];
      sub_1E134FD1C(v9, v10, &unk_1ECEB2E50);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 128) = v48;
      *(v17 + 144) = v49;
      *(v17 + 160) = v50;
      *(v17 + 64) = v44;
      *(v17 + 80) = v45;
      *(v17 + 96) = v46;
      *(v17 + 112) = v47;
      *(v17 + 32) = v42;
      *(v17 + 48) = v43;
      sub_1E137F600(v10, v17 + v34, &unk_1ECEB2E50);
      *(v17 + v31) = v38;
      sub_1E134FD1C(v11, v39, &qword_1ECEB2D20);
      v18 = (*(v16 + 48))(v39, 1, v15);
      v19 = *(v0 + 552);
      v20 = *(v0 + 376);
      if (v18 == 1)
      {
        sub_1E13B8938(v20, v0 + 16);

        sub_1E1308058(v19, &qword_1ECEB2D20);
      }

      else
      {
        sub_1E13B8938(v20, v0 + 160);

        sub_1E1AF648C();
        (*(v16 + 8))(v19, v15);
      }

      if (*(v17 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_1E1AF63CC();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1E1B42260;
      *(v24 + 24) = v17;
      v25 = v23 | v21;
      if (v23 | v21)
      {
        v25 = v0 + 304;
        *(v0 + 304) = 0;
        *(v0 + 312) = 0;
        *(v0 + 320) = v21;
        *(v0 + 328) = v23;
      }

      v6 = *(v0 + 624);
      v7 = *(v0 + 560);
      *(v0 + 336) = 1;
      *(v0 + 344) = v25;
      *(v0 + 352) = v32;
      swift_task_create();

      sub_1E1308058(v7, &qword_1ECEB2D20);
      sub_1E1308058(v6, &unk_1ECEB2E50);
      v5 = v40 + v30;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  sub_1E1AF63FC();
  *(v0 + 648) = MEMORY[0x1E69E7CC0];
  v26 = swift_task_alloc();
  *(v0 + 656) = v26;
  *v26 = v0;
  v26[1] = sub_1E191A55C;
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);

  return MEMORY[0x1EEE6D8A8](v28, 0, 0, v27);
}

uint64_t sub_1E191A55C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E191A658, 0, 0);
}

uint64_t sub_1E191A658()
{
  v1 = v0[65];
  if ((*(v0[58] + 48))(v1, 1, v0[57]) != 1)
  {
    sub_1E137F600(v1, v0[64], &qword_1ECEB2E18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v0[81];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_1E172DBD4(0, v52[2] + 1, 1, v0[81]);
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_1E172DBD4(v53 > 1, v54 + 1, 1, v52);
    }

    v55 = v0[64];
    v56 = v0[58];
    v52[2] = v54 + 1;
    sub_1E137F600(v55, v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, &qword_1ECEB2E18);
    v0[81] = v52;
    v57 = swift_task_alloc();
    v0[82] = v57;
    *v57 = v0;
    v57[1] = sub_1E191A55C;
    v58 = v0[66];
    v59 = v0[65];

    return MEMORY[0x1EEE6D8A8](v59, 0, 0, v58);
  }

  v2 = v0[80];
  (*(v0[67] + 8))(v0[68], v0[66]);
  if (!v2)
  {
    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v3 = 0;
  v67 = v0[76];
  v68 = v0[81];
  v4 = v0[72];
  v5 = v0[50];
  v66 = v0[46] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v79 = (v5 + 32);
  v74 = (v5 + 48);
  v75 = (v5 + 56);
  v63 = MEMORY[0x1E69E7CC0];
  v72 = v0[60];
  v73 = v0[52];
  v77 = v0[71];
  v71 = (v5 + 8);
  v64 = *(v4 + 72);
  v65 = *(v77 + 48);
  while (2)
  {
    v7 = v0[76];
    v8 = v0[75];
    v9 = v0[49];
    sub_1E134FD1C(v66 + v3 * v64, v7, &unk_1ECEB2E50);
    v10 = *(v77 + 48);
    *v8 = *v7;
    v11 = *v79;
    (*v79)(&v8[v10], v67 + v65, v9);
    v12 = *(v68 + 16);
    if (!v12)
    {
      goto LABEL_5;
    }

    v78 = v11;
    v69 = v3;
    v13 = v0[58];
    v76 = *(v13 + 72);
    v62 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v14 = v0[81] + v62;
    while (1)
    {
      v80 = v14;
      v81 = v12;
      v17 = v0[60];
      v16 = v0[61];
      sub_1E134FD1C(v14, v16, &qword_1ECEB2E18);
      sub_1E134FD1C(v16, v17, &qword_1ECEB2E18);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
      v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
      v20 = v0[60];
      if (v19 == 1)
      {
        sub_1E1308058(v0[60], &qword_1ECEB2E18);
        v21 = 1;
        v22 = v78;
      }

      else
      {
        v23 = v0[56];
        v24 = v0[49];

        v22 = v78;
        v78(v23, v20 + *(v18 + 64), v24);
        v21 = 0;
      }

      v25 = v0[75];
      v26 = v0[74];
      v27 = v0[55];
      v28 = v0[56];
      v29 = v0[53];
      v30 = v0[49];
      v31 = *v75;
      (*v75)(v28, v21, 1, v30);
      sub_1E134FD1C(v25, v26, &unk_1ECEB2E50);

      v22(v27, v26 + *(v77 + 48), v30);
      v31(v27, 0, 1, v30);
      v32 = *(v73 + 48);
      sub_1E134FD1C(v28, v29, &qword_1ECEBA270);
      sub_1E134FD1C(v27, v29 + v32, &qword_1ECEBA270);
      v33 = *v74;
      v34 = (*v74)(v29, 1, v30);
      v35 = v0[49];
      if (v34 == 1)
      {
        break;
      }

      sub_1E134FD1C(v0[53], v0[54], &qword_1ECEBA270);
      v36 = v33(v29 + v32, 1, v35);
      v38 = v0[55];
      v37 = v0[56];
      v39 = v0[54];
      if (v36 == 1)
      {
        v40 = v0[49];
        sub_1E1308058(v0[55], &qword_1ECEBA270);
        sub_1E1308058(v37, &qword_1ECEBA270);
        (*v71)(v39, v40);
        goto LABEL_9;
      }

      v70 = v0[53];
      v41 = v0[51];
      v42 = v0[49];
      v78(v41, v29 + v32, v42);
      sub_1E191F988(&qword_1EE1FADA8, MEMORY[0x1E69695A8]);
      v43 = sub_1E1AF5DAC();
      v44 = *v71;
      (*v71)(v41, v42);
      sub_1E1308058(v38, &qword_1ECEBA270);
      sub_1E1308058(v37, &qword_1ECEBA270);
      v44(v39, v42);
      sub_1E1308058(v70, &qword_1ECEBA270);
      if (v43)
      {
        goto LABEL_20;
      }

LABEL_10:
      sub_1E1308058(v0[61], &qword_1ECEB2E18);
      v14 = v80 + v76;
      v12 = v81 - 1;
      if (v81 == 1)
      {
        v3 = v69;
        goto LABEL_5;
      }
    }

    v15 = v0[56];
    sub_1E1308058(v0[55], &qword_1ECEBA270);
    sub_1E1308058(v15, &qword_1ECEBA270);
    if (v33(v29 + v32, 1, v35) != 1)
    {
LABEL_9:
      sub_1E1308058(v0[53], &qword_1ECEBA298);
      goto LABEL_10;
    }

    sub_1E1308058(v0[53], &qword_1ECEBA270);
LABEL_20:
    v46 = v0[62];
    v45 = v0[63];
    v47 = v0[59];
    sub_1E137F600(v0[61], v46, &qword_1ECEB2E18);
    sub_1E137F600(v46, v45, &qword_1ECEB2E18);
    sub_1E134FD1C(v45, v47, &qword_1ECEB2E18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1E172DBD4(0, v63[2] + 1, 1, v63);
    }

    v3 = v69;
    v49 = v63[2];
    v48 = v63[3];
    if (v49 >= v48 >> 1)
    {
      v63 = sub_1E172DBD4(v48 > 1, v49 + 1, 1, v63);
    }

    v50 = v0[59];
    sub_1E1308058(v0[63], &qword_1ECEB2E18);
    v63[2] = v49 + 1;
    sub_1E137F600(v50, v63 + v62 + v49 * v76, &qword_1ECEB2E18);
LABEL_5:
    ++v3;
    v6 = v0[80];
    sub_1E1308058(v0[75], &unk_1ECEB2E50);
    if (v3 != v6)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v60 = v0[1];

  return v60(v63);
}

uint64_t sub_1E191B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = *(a6 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2B8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C0);
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  v7[24] = v12;
  v13 = *(v12 - 8);
  v7[25] = v13;
  v7[26] = *(v13 + 64);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E191B2C8, 0, 0);
}

uint64_t sub_1E191B2C8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v3 + 80);
    v32 = ~v4;
    v31 = *(v0 + 248);
    v5 = v1 + ((v4 + 32) & ~v4);
    v29 = *(v0 + 128) + v4;
    v33 = *(v0 + 192);
    v27 = *(v0 + 208) + 7;
    v28 = *(v33 + 48);
    v30 = *(v0 + 120);
    v26 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v8 = *(v0 + 232);
      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      v34 = v9;
      v35 = v2;
      v11 = *(v0 + 56);
      v36 = *(v0 + 64);
      v37 = *(v0 + 72);
      sub_1E134FD1C(v5, v6, &unk_1ECEB2E50);
      v12 = *v6;
      v13 = *(v33 + 48);
      *v7 = v12;
      v14 = sub_1E1AEFEAC();
      (*(*(v14 - 8) + 32))(&v7[v13], v31 + v28, v14);
      v15 = sub_1E1AF649C();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      v16 = v10;
      (*(v30 + 16))(v10, v11, v37);
      v17 = v8;
      sub_1E134FD1C(v7, v8, &unk_1ECEB2E50);
      v18 = (*(v30 + 80) + 48) & ~*(v30 + 80);
      v19 = (v29 + v18) & v32;
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = v37;
      (*(v30 + 32))(v20 + v18, v16, v37);
      sub_1E137F600(v17, v20 + v19, &unk_1ECEB2E50);
      *(v20 + ((v27 + v19) & 0xFFFFFFFFFFFFFFF8)) = v36;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2D8);
      sub_1E191C69C(v34, &unk_1E1B42218, v20, v21);
      sub_1E1308058(v34, &qword_1ECEB2D20);
      sub_1E1308058(v7, &unk_1ECEB2E50);
      v5 += v26;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E1AF63FC();
  v22 = swift_task_alloc();
  *(v0 + 264) = v22;
  *v22 = v0;
  v22[1] = sub_1E191B65C;
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);

  return MEMORY[0x1EEE6D8A8](v23, 0, 0, v24);
}

uint64_t sub_1E191B65C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E191B758, 0, 0);
}

uint64_t sub_1E191B758()
{
  v1 = v0[20];
  v30 = *(v0[12] + 48);
  if (v30(v1, 1, v0[11]) == 1)
  {
    v2 = v0[32];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v3 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v4 = v0[2];
    if (v2)
    {
      v5 = 0;
      v6 = v0[25];
      v28 = v0[28];
      v29 = v0[24];
      v7 = v0[6] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v26 = *(v6 + 72);
      v27 = *(v29 + 48);
      do
      {
        v14 = v0[27];
        v13 = v0[28];
        v15 = v0[19];
        v31 = v0[11];
        sub_1E134FD1C(v7, v13, &unk_1ECEB2E50);
        v16 = *v13;
        v17 = *(v29 + 48);
        *v14 = v16;
        v18 = sub_1E1AEFEAC();
        (*(*(v18 - 8) + 32))(&v14[v17], v28 + v27, v18);
        v0[3] = v4;
        *(swift_task_alloc() + 16) = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
        sub_1E1302CD4(&qword_1ECEBB2D0, &qword_1ECEB2E20);
        sub_1E1AF612C();

        v19 = v30(v15, 1, v31);
        v10 = v0[19];
        if (v19 == 1)
        {
          v11 = &qword_1ECEBB2B8;
        }

        else
        {
          v9 = v0[13];
          v8 = v0[14];
          sub_1E137F600(v10, v9, &qword_1ECEB2E18);
          sub_1E134FD1C(v9, v8, &qword_1ECEB2E18);
          sub_1E1AF62CC();
          v10 = v9;
          v11 = &qword_1ECEB2E18;
        }

        sub_1E1308058(v10, v11);
        ++v5;
        v12 = v0[32];
        sub_1E1308058(v0[27], &unk_1ECEB2E50);
        v7 += v26;
      }

      while (v5 != v12);
      v3 = v32;
    }

    v23 = v0[4];

    *v23 = v3;

    v24 = v0[1];

    return v24();
  }

  else
  {
    sub_1E137F600(v1, v0[14], &qword_1ECEB2E18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
    sub_1E1AF62CC();
    v20 = swift_task_alloc();
    v0[33] = v20;
    *v20 = v0;
    v20[1] = sub_1E191B65C;
    v21 = v0[20];
    v22 = v0[21];

    return MEMORY[0x1EEE6D8A8](v21, 0, 0, v22);
  }
}

uint64_t sub_1E191BBD8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E130B5D8;

  return sub_1E191B004(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1E191BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E191BCD8, 0, 0);
}

uint64_t sub_1E191BCD8()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) + 48);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E1378044;
  v5 = v0[5];
  v6 = v0[2];

  return sub_1E191C250(v6, v2, v1 + v3, v5);
}

uint64_t sub_1E191BDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E191BDC8, 0, 0);
}

uint64_t sub_1E191BDC8()
{
  sub_1E1AF644C();
  *(v0 + 48) = sub_1E1AF643C();
  v2 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E191BE5C, v2, v1);
}

uint64_t sub_1E191BE5C()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = sub_1E15D51FC(v1, 128.0, 128.0);

  return MEMORY[0x1EEE6DFA0](sub_1E191BEE0, 0, 0);
}

uint64_t sub_1E191BEE0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v0 + 64) = v2;
    v11 = *(v0 + 24);
    swift_weakInit();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v3[1].i64[0] = v2;
    v3[1].i64[1] = v1;
    v3[2] = vextq_s8(v11, v11, 8uLL);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
    *v4 = v0;
    v4[1] = sub_1E191C0BC;
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000020, 0x80000001E1B7EC90, sub_1E191F97C, v3, v5);
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E191C0BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E191C1F0, 0, 0);
}

uint64_t sub_1E191C1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E191C250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E191C274, 0, 0);
}

uint64_t sub_1E191C274()
{
  sub_1E1AF644C();
  *(v0 + 48) = sub_1E1AF643C();
  v2 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E191C308, v2, v1);
}

uint64_t sub_1E191C308()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = sub_1E15D51FC(v1, 128.0, 128.0);

  return MEMORY[0x1EEE6DFA0](sub_1E191C38C, 0, 0);
}

uint64_t sub_1E191C38C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v0 + 64) = v2;
    v11 = *(v0 + 24);
    swift_weakInit();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v3[1].i64[0] = v2;
    v3[1].i64[1] = v1;
    v3[2] = vextq_s8(v11, v11, 8uLL);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
    *v4 = v0;
    v4[1] = sub_1E191C568;
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000020, 0x80000001E1B7EC90, sub_1E1920040, v3, v5);
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E191C568()
{

  return MEMORY[0x1EEE6DFA0](sub_1E192004C, 0, 0);
}

uint64_t sub_1E191C69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  sub_1E134FD1C(a1, v22 - v11, &qword_1ECEB2D20);
  v13 = sub_1E1AF649C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEB2D20);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1E1AF63CC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E1AF648C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1E191C8BC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_1E1AEFEAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA298);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v41 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  sub_1E134FD1C(a1, v12, &qword_1ECEB2E18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEB2E18);
    v21 = 1;
  }

  else
  {

    (*(v4 + 32))(v19, v12 + *(v20 + 64), v3);
    v21 = 0;
  }

  v22 = v4;
  v23 = *(v4 + 56);
  v23(v19, v21, 1, v3);
  sub_1E134FD1C(v46, v9, &unk_1ECEB2E50);

  v24 = &v9[*(v7 + 48)];
  v25 = v3;
  v26 = v47;
  v42 = *(v22 + 32);
  v42(v47, v24, v25);
  v23(v26, 0, 1, v25);
  v27 = *(v45 + 12);
  v28 = v48;
  sub_1E134FD1C(v19, v48, &qword_1ECEBA270);
  v46 = v27;
  sub_1E134FD1C(v26, v28 + v27, &qword_1ECEBA270);
  v29 = v22;
  v30 = *(v22 + 48);
  if (v30(v28, 1, v25) != 1)
  {
    v45 = v19;
    v33 = v44;
    sub_1E134FD1C(v28, v44, &qword_1ECEBA270);
    v34 = v46;
    v35 = v25;
    if (v30(v28 + v46, 1, v25) != 1)
    {
      v36 = v33;
      v37 = v43;
      v42(v43, (v28 + v34), v35);
      sub_1E191F988(&qword_1EE1FADA8, MEMORY[0x1E69695A8]);
      v38 = v28;
      v32 = sub_1E1AF5DAC();
      v39 = *(v29 + 8);
      v39(v37, v35);
      sub_1E1308058(v47, &qword_1ECEBA270);
      sub_1E1308058(v45, &qword_1ECEBA270);
      v39(v36, v35);
      sub_1E1308058(v38, &qword_1ECEBA270);
      return v32 & 1;
    }

    sub_1E1308058(v47, &qword_1ECEBA270);
    v31 = v48;
    sub_1E1308058(v45, &qword_1ECEBA270);
    (*(v29 + 8))(v33, v25);
    goto LABEL_9;
  }

  sub_1E1308058(v26, &qword_1ECEBA270);
  v31 = v48;
  sub_1E1308058(v19, &qword_1ECEBA270);
  if (v30(v31 + v46, 1, v25) != 1)
  {
LABEL_9:
    sub_1E1308058(v31, &qword_1ECEBA298);
    v32 = 0;
    return v32 & 1;
  }

  sub_1E1308058(v31, &qword_1ECEBA270);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1E191CF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C8);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - v8;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = a3;
    v31 = Strong;
    v18 = *(v11 + 16);
    v29 = v7;
    v19 = a4;
    v18(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    sub_1E191F988(&qword_1EE1FADB0, MEMORY[0x1E69695A8]);
    sub_1E1AF6F6C();
    v20 = v32;
    v21 = v35;
    (*(v32 + 16))(v9, v34, v35);
    v18(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v10);
    v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v23 = (v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (*(v11 + 80) + v23 + 8) & ~*(v11 + 80);
    v25 = swift_allocObject();
    (*(v20 + 32))(v25 + v22, v9, v21);
    *(v25 + v23) = v33;
    (*(v11 + 32))(v25 + v24, v13, v10);

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v30, 0, v36, sub_1E191F9D0, v25);

    return sub_1E1308058(v36, &unk_1ECEB5670);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    return sub_1E1AF63EC();
  }
}

uint64_t sub_1E191D2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  if (a1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    v14 = *(v13 + 64);
    v15 = *(a6 + 48);
    *v12 = a1;
    *(v12 + 1) = v15;
    v16 = sub_1E1AEFEAC();
    (*(*(v16 - 8) + 16))(&v12[v14], a7, v16);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    v17 = v15;
    v18 = a1;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C8);
  return sub_1E1AF63EC();
}

uint64_t sub_1E191D4C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18) - 8;
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  if (*(a1 + 16) <= a2)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1E134FD1C(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a2, &v15 - v7, &qword_1ECEB2E18);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
    if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
    {
      sub_1E1308058(v8, &qword_1ECEB2E18);
    }

    else
    {

      v10 = *(v8 + 1);
      v11 = *(v9 + 64);
      v12 = sub_1E1AEFEAC();
      (*(*(v12 - 8) + 8))(&v8[v11], v12);
      if (v10)
      {
        v13 = [v10 CGColor];
LABEL_8:
        v14 = v13;

        return v14;
      }
    }

LABEL_7:
    v10 = [objc_opt_self() clearColor];
    v13 = [v10 CGColor];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E191D6C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E1920044;

  return v6(a1);
}

uint64_t sub_1E191D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1E191D874;

  return sub_1E1918A50(a2, a3, v9, a5);
}

uint64_t sub_1E191D874(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E191D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E191D9A8, 0, 0);
}

uint64_t sub_1E191D9A8()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) + 48);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E191DA70;
  v5 = v0[4];
  v6 = v0[2];

  return sub_1E191BDA4(v6, v2, v1 + v3, v5);
}

uint64_t sub_1E191DA70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E191DB64(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 160) = a1;
  v9 = a4[7];
  *(v5 + 112) = a4[6];
  *(v5 + 128) = v9;
  *(v5 + 144) = a4[8];
  v10 = a4[3];
  *(v5 + 48) = a4[2];
  *(v5 + 64) = v10;
  v11 = a4[5];
  *(v5 + 80) = a4[4];
  *(v5 + 96) = v11;
  v12 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v12;
  v13 = swift_task_alloc();
  *(v5 + 168) = v13;
  *v13 = v5;
  v13[1] = sub_1E191DC40;

  return sub_1E1919CEC(a2, a3, v5 + 16, a5);
}

uint64_t sub_1E191DC40(uint64_t a1)
{
  v3 = *(*v1 + 160);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E191DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E191DD74, 0, 0);
}

uint64_t sub_1E191DD74()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) + 48);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E1920048;
  v5 = v0[4];
  v6 = v0[2];

  return sub_1E191C250(v6, v2, v1 + v3, v5);
}

id sub_1E191DE3C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - v4);
  if (sub_1E1AF62BC() <= a2)
  {
    return 0;
  }

  sub_1E1AF63BC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEB2E18);
    return 0;
  }

  v8 = *v5;

  v9 = *(v6 + 64);
  v10 = sub_1E1AEFEAC();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  return v8;
}

id sub_1E191DFA4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  if (sub_1E1AF62BC() <= a2)
  {
    goto LABEL_6;
  }

  sub_1E1AF63BC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E78);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEB2E18);
LABEL_6:
    v7 = [objc_opt_self() clearColor];
    v10 = [v7 CGColor];
    goto LABEL_7;
  }

  v7 = *(v5 + 1);
  v8 = *(v6 + 64);
  v9 = sub_1E1AEFEAC();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = [v7 CGColor];
LABEL_7:
  v11 = v10;

  return v11;
}

id _s11AppStoreKit33ThreeDimensionalIconViewRenderingPAAE032generateMappedTextureResourceForF0_2at07RealityC00kL0CSgSaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_SitF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF02EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF02CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1E1AF030C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  result = sub_1E191DE3C(a1, a2);
  if (result)
  {
    v17 = result;
    v40 = v8;
    [result size];
    [v17 size];
    v19 = v18 / 0.95;
    if (COERCE__INT64(fabs(v18 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        [v17 size];
        v21 = v20 / 0.95;
        if (v20 / 0.95 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            v22 = v19;
            v23 = v19;
            if (v23 > -9.22337204e18)
            {
              if (v23 < 9.22337204e18)
              {
                if (COERCE_UNSIGNED_INT64(fabs(v20 / 0.95)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v24 = v21;
                  if (v24 > -9.22337204e18)
                  {
                    if (v24 < 9.22337204e18)
                    {
                      v39 = v7;
                      v41 = v6;
                      v25 = v21;
                      DeviceRGB = CGColorSpaceCreateDeviceRGB();
                      v27 = CGBitmapContextCreate(0, v22, v25, 8uLL, 0, DeviceRGB, 1u);

                      if (v27)
                      {
                        v28 = sub_1E191DFA4(a1, a2);
                        CGContextSetFillColorWithColor(v27, v28);

                        v45.origin.x = 0.0;
                        v45.origin.y = 0.0;
                        v45.size.width = v23;
                        v45.size.height = v24;
                        CGContextFillRect(v27, v45);
                        v29 = [v17 CGImage];
                        if (v29)
                        {
                          v30 = v29;
                          sub_1E1AF679C();
                          Image = CGBitmapContextCreateImage(v27);
                          if (Image)
                          {
                            v32 = Image;
                            sub_1E1AF032C();
                            v33 = *MEMORY[0x1E697A1D0];
                            v34 = sub_1E1AF031C();
                            v35 = *(v34 - 8);
                            (*(v35 + 104))(v14, v33, v34);
                            (*(v35 + 56))(v14, 0, 1, v34);
                            v36 = v32;
                            sub_1E1AF02BC();
                            (*(v40 + 104))(v43, *MEMORY[0x1E697A1C8], v39);
                            sub_1E1AF02FC();
                            v38 = sub_1E1AF02DC();

                            return v38;
                          }
                        }

                        else
                        {
                        }

                        return 0;
                      }

                      if (qword_1EE1E35F0 == -1)
                      {
LABEL_17:
                        v37 = sub_1E1AF591C();
                        __swift_project_value_buffer(v37, qword_1EE2161A0);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
                        sub_1E1AF38EC();
                        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
                        sub_1E1AF388C();
                        sub_1E1AF387C();
                        v44[3] = MEMORY[0x1E69E6530];
                        v44[0] = a2;
                        sub_1E1AF385C();
                        sub_1E1308058(v44, &qword_1ECEB2DF0);
                        sub_1E1AF387C();
                        sub_1E1AF38AC();
                        sub_1E1AF54AC();

                        return 0;
                      }

LABEL_32:
                      swift_once();
                      goto LABEL_17;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t _s11AppStoreKit33ThreeDimensionalIconViewRenderingPAAE14findAndReplace5icons2inySaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_07RealityC06EntityCSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2EF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = v54 - v7;
  v8 = sub_1E1AF0ADC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = v54 - v14;
  v76 = sub_1E1AF0AFC();
  v15 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DB8);
  v17 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v54 - v18;
  v19 = sub_1E1AF047C();
  v73 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v58 = a1;
  *&v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E20);
  sub_1E1302CD4(&qword_1ECEBB2D0, &qword_1ECEB2E20);
  result = sub_1E1AF60DC();
  if (a2)
  {
    v24 = result;
    result = sub_1E1AF03FC();
    if (result)
    {
      v25 = result;
      if (v24)
      {
        v71 = v17;
        v63 = v15;
        v74 = sub_1E1AF04AC();
        v54[1] = v25;
        sub_1E1AF025C();
        v84 = MEMORY[0x1E69E7CC0];
        sub_1E191F988(&qword_1EE1E22E0, MEMORY[0x1E697A360]);
        sub_1E1AF60AC();
        v75 = sub_1E1302CD4(&qword_1EE1E22E8, &qword_1ECEB2DB8);
        sub_1E1AF6DBC();
        if (v81)
        {
          v26 = (v73 + 8);
          do
          {
            sub_1E1AF048C();
            v27 = sub_1E1AF5E9C();
            v29 = v28;

            *&v81 = v27;
            *(&v81 + 1) = v29;
            v79 = 0x72656E6F6C63;
            v80 = 0xE600000000000000;
            sub_1E13B8AA4();
            v30 = sub_1E1AF6E9C();

            if ((v30 & 1) != 0 && (sub_1E1AF025C(), sub_1E191F988(&qword_1EE1E22D8, MEMORY[0x1E697A360]), sub_1E1AF665C(), sub_1E1AF668C(), (*v26)(v21, v19), v81 == v79))
            {
            }

            else
            {
              sub_1E1AF70BC();
              sub_1E1AF70FC();
              sub_1E1AF710C();
              sub_1E1AF70CC();
            }

            sub_1E1AF6DBC();
          }

          while (v81);
        }

        (*(v71 + 8))(v77, v78);
        v31 = v84;
        if (v84 < 0 || (v84 & 0x4000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(v84 + 16);
LABEL_15:
        v33 = v58;
        v34 = v68;
        if (v32)
        {
          v35 = 0;
          v65 = v31 & 0xC000000000000001;
          v64 = v31 + 32;
          v75 = (v63 + 56);
          v69 = (v63 + 48);
          v62 = (v63 + 32);
          v56 = (v63 + 16);
          v61 = (v63 + 8);
          v55 = xmmword_1E1B02CC0;
          v63 = v32;
          v70 = v12;
          v57 = v31;
          do
          {
            if (v65)
            {
              v74 = MEMORY[0x1E68FFD80](v35, v31);
              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v35 >= *(v31 + 16))
              {
                goto LABEL_54;
              }

              v74 = *(v64 + 8 * v35);

              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                v32 = sub_1E1AF71CC();
                goto LABEL_15;
              }
            }

            v71 = v36;
            v73 = _s11AppStoreKit33ThreeDimensionalIconViewRenderingPAAE032generateMappedTextureResourceForF0_2at07RealityC00kL0CSgSaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_SitF_0(v33, v35);
            if (v73)
            {
              v37 = sub_1E13AE610();
              v38 = v37;
              if (v37 >> 62)
              {
                v39 = sub_1E1AF71CC();
                if (v39)
                {
LABEL_24:
                  if (v39 < 1)
                  {
                    goto LABEL_55;
                  }

                  v40 = 0;
                  v77 = (v38 & 0xC000000000000001);
                  v78 = v38;
                  while (2)
                  {
                    if (v77)
                    {
                      MEMORY[0x1E68FFD80](v40, v38);
                    }

                    else
                    {
                    }

                    sub_1E1AF021C();
                    sub_1E1AF04CC();
                    v41 = sub_1E1AF02AC();
                    v42 = *(*(v41 - 8) + 48);
                    if (v42(v12, 1, v41))
                    {

                      sub_1E1308058(v12, &qword_1ECEB2DC0);
                      v81 = 0u;
                      v82 = 0u;
                      v83 = 0;
                      goto LABEL_37;
                    }

                    v43 = sub_1E1AF028C();
                    sub_1E1308058(v12, &qword_1ECEB2DC0);
                    if (*(v43 + 16))
                    {
                      sub_1E1300B24(v43 + 32, &v81);

                      if (*(&v82 + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2F18);
                        v44 = v76;
                        v45 = swift_dynamicCast();
                        (*v75)(v34, v45 ^ 1u, 1, v44);
                        if ((*v69)(v34, 1, v44) == 1)
                        {

                          v12 = v70;
                          v38 = v78;
                          goto LABEL_38;
                        }

                        (*v62)(v72, v34, v44);

                        v46 = v67;
                        sub_1E1AF0ABC();
                        v47 = sub_1E1AF0AAC();
                        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
                        v48 = [objc_opt_self() whiteColor];
                        sub_1E1AF0ACC();
                        v49 = v72;
                        sub_1E1AF0AEC();
                        v50 = sub_1E1AF04BC();
                        if (!v42(v51, 1, v41))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2F20);
                          v52 = swift_allocObject();
                          *(v52 + 16) = v55;
                          *(v52 + 56) = v44;
                          *(v52 + 64) = MEMORY[0x1E697A6A0];
                          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v52 + 32));
                          (*v56)(boxed_opaque_existential_0, v49, v44);
                          sub_1E1AF029C();
                        }

                        v50(&v81, 0);
                        v38 = v78;

                        (*v61)(v49, v44);
                        v34 = v68;
                        v12 = v70;
LABEL_39:
                        if (v39 == ++v40)
                        {

                          v33 = v58;
                          v31 = v57;
                          goto LABEL_17;
                        }

                        continue;
                      }
                    }

                    else
                    {

                      v83 = 0;
                      v81 = 0u;
                      v82 = 0u;
                    }

                    break;
                  }

LABEL_37:
                  v38 = v78;
                  sub_1E1308058(&v81, &qword_1ECEB2F10);
                  (*v75)(v34, 1, 1, v76);
LABEL_38:
                  sub_1E1308058(v34, &unk_1ECEB2F00);
                  goto LABEL_39;
                }
              }

              else
              {
                v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v39)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {
            }

LABEL_17:
            v35 = v71;
          }

          while (v71 != v63);
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E1755F30;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1E191F77C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E130B5D8;

  return sub_1E191D984(a1, v7, v8, v1 + 32, v1 + v6, v9);
}

uint64_t sub_1E191F8C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E1305374(a1, v4);
}

uint64_t sub_1E191F988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E191F9D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C8) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1E1AEFEAC() - 8);
  v13 = *(v4 + v11);
  v14 = v4 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_1E191D2B0(a1, a2, a3, a4, v4 + v10, v13, v14);
}

uint64_t sub_1E191FAE8(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E130B5D8;

  return sub_1E191BCB0(a1, v11, v12, v1 + v8, v1 + v10, v13, v6, v5);
}

uint64_t sub_1E191FCA8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E191D6C4(a1, v4);
}

uint64_t sub_1E191FD70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E130B5D8;

  return sub_1E191DB64(a1, a2, v6, v7, v8);
}

uint64_t sub_1E191FE40(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v6 = (*(v5 + 80) + 176) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E130B5D8;

  return sub_1E191DD50(a1, v7, v8, v1 + 32, v1 + v6, v9);
}

uint64_t sub_1E191FF88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5DC;

  return sub_1E1305374(a1, v4);
}

uint64_t sub_1E1920050()
{
  type metadata accessor for AutomaticUpdates();
  v0 = swift_allocObject();
  result = AutomaticUpdates.init()();
  qword_1EE1DF2A0 = v0;
  return result;
}

uint64_t AutomaticUpdates.__allocating_init()()
{
  v0 = swift_allocObject();
  AutomaticUpdates.init()();
  return v0;
}

uint64_t static AutomaticUpdates.shared.getter()
{
  if (qword_1ECEB15B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1E1920120()
{
  result = sub_1E1AF5DBC();
  qword_1EE1DF2B8 = result;
  return result;
}

id static AutomaticUpdates.enabledDidChangeNotification.getter()
{
  if (qword_1EE1DF2B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1DF2B8;

  return v1;
}

uint64_t sub_1E19201B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE1DF2C0);
  __swift_project_value_buffer(v0, qword_1EE1DF2C0);
  return sub_1E1AF3F9C();
}

uint64_t AutomaticUpdates.init()()
{
  v1 = v0;
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB15C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v2, qword_1EE1DF2C0);
  sub_1E1AF3C8C();

  *(v0 + 16) = (v5 == 2) | v5 & 1;
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_applicationWillEnterForegroundWithNotification_ name:*MEMORY[0x1E69DDBC0] object:0];

  return v1;
}

uint64_t sub_1E1920378()
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB15C8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v0, qword_1EE1DF2C0);
  sub_1E1AF3C8C();

  return (v2 == 2) | v2 & 1u;
}

void sub_1E1920550()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB15C8 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v3, qword_1EE1DF2C0);
  sub_1E1AF3C8C();

  if (v6 == 2)
  {
    if (v2)
    {
      return;
    }
  }

  else if (v2 == (v6 & 1))
  {
    return;
  }

  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF3C8C();

  *(v0 + 16) = (v5 == 2) | v5 & 1;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1EE1DF2B0 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_1EE1DF2B8 object:v1];
}

double OfferButtonPlaceholder.measure(toFit:with:)()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 52));
  sub_1E14339B8();
  v2 = sub_1E1AF69AC();
  v3 = sub_1E1AF104C();

  [v3 lineHeight];
  return v1;
}

double sub_1E1920898()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 52));
  sub_1E14339B8();
  v2 = sub_1E1AF69AC();
  v3 = sub_1E1AF104C();

  [v3 lineHeight];
  return v1;
}

uint64_t type metadata accessor for OfferButtonPlaceholder()
{
  result = qword_1ECEBB2E0;
  if (!qword_1ECEBB2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19209D0()
{
  result = type metadata accessor for OfferButtonMetrics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a6;
  sub_1E1300B24(a1, a7);
  sub_1E1300B24(a4, a7 + 48);
  result = sub_1E141E104(a5, a7 + 88);
  *(a7 + 40) = v10;
  *(a7 + 41) = v11;
  *(a7 + 128) = v12;
  return result;
}

AppStoreKit::_VerticalFlowLayout __swiftcall _VerticalFlowLayout.init(expandChildrenToFit:children:)(Swift::Bool expandChildrenToFit, Swift::OpaquePointer children)
{
  *v2 = expandChildrenToFit;
  *(v2 + 8) = children;
  result.children = children;
  result.expandChildrenToFit = expandChildrenToFit;
  return result;
}

void _VerticalFlowLayout.placeChildren(relativeTo:in:)(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *v5;
  v14 = *(v5 + 1);
  v75 = a2;
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  MinY = CGRectGetMinY(v85);
  v16 = *(v14 + 16);
  if (v16)
  {
    v69 = MinY;
    v62 = v11;
    v17 = 0;
    v18 = 0;
    v61 = (v12 + 8);
    v64 = v16 - 1;
    v19 = v14 + 32;
    v74 = 0.0;
    v73 = 0.0;
    v72 = a3;
    v71 = a1;
    v63 = v14 + 32;
    while (1)
    {
      v68 = v17;
      v20 = v19 + 136 * v18;
      v21 = v18;
      while (1)
      {
        if (v21 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        sub_1E149BCE4(v20, v78);
        __swift_project_boxed_opaque_existential_1Tm(v78, v79);
        sub_1E1AF11CC();
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = v84;
        if (v84 & 2) == 0 || (__swift_project_boxed_opaque_existential_1Tm(v78, v79), (sub_1E1AF112C()))
        {
          if ((v28 & 1) == 0 || (__swift_project_boxed_opaque_existential_1Tm(v78, v79), (sub_1E1AF117C() & 1) == 0))
          {
            if ((v28 & 8) == 0 || v23 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v21;
        sub_1E149BD40(v78);
        v20 += 136;
        if (v16 == v21)
        {
          goto LABEL_36;
        }
      }

      v29 = v80;
      __swift_project_boxed_opaque_existential_1Tm(v82, v82[3]);
      if (v29)
      {
        sub_1E1AF12FC();
        v31 = v30;
      }

      else
      {
        v32 = v67;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v31 = v33;
        (*v61)(v32, v62);
      }

      v34 = v75;
      if (v31 < 0.0)
      {
        break;
      }

      v69 = v69 + v31;
      if (v70)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v81)
      {
        v35 = v34;
        v36 = v72;
        v37 = a4;
        v38 = a5;
        if (v81 == 1)
        {
          CGRectGetMidX(*&v35);
        }

        else
        {
          CGRectGetMaxX(*&v35);
        }
      }

      else
      {
        v87.origin.x = v34;
        v87.origin.y = v72;
        v87.size.width = a4;
        v87.size.height = a5;
        CGRectGetMinX(v87);
      }

      sub_1E1AF6B1C();
      v65 = v39;
      v66 = v40;
      v42 = v41;
      v44 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v78, v79);
      v59 = v42;
      v60 = v44;
      sub_1E1AF116C();
      __swift_project_boxed_opaque_existential_1Tm(v78, v79);
      sub_1E1AF115C();
      MaxX = CGRectGetMaxX(v88);
      v46 = v73;
      if (MaxX > v73)
      {
        v46 = MaxX;
      }

      v73 = v46;
      sub_1E141E104(v83, v76);
      if (v77)
      {
        __swift_project_boxed_opaque_existential_1Tm(v76, v77);
        sub_1E1AF12CC();
        v58 = v47;
        __swift_destroy_boxed_opaque_existential_1(v76);
        v48 = v65;
        v89.origin.x = v65;
        v49 = v66;
        v89.origin.y = v66;
        v50 = v59;
        v89.size.width = v59;
        v51 = v60;
        v89.size.height = v60;
        v69 = v58 + CGRectGetMaxY(v89);
        v90.origin.x = v48;
        v90.origin.y = v49;
        v90.size.width = v50;
        v90.size.height = v51;
        CGRectGetMaxY(v90);
      }

      else
      {
        sub_1E141E174(v76);
        v52 = v65;
        v91.origin.x = v65;
        v53 = v66;
        v91.origin.y = v66;
        v54 = v59;
        v91.size.width = v59;
        v55 = v60;
        v91.size.height = v60;
        v69 = CGRectGetMaxY(v91) - v27;
        v92.origin.x = v52;
        v92.origin.y = v53;
        v92.size.width = v54;
        v92.size.height = v55;
        CGRectGetMaxY(v92);
      }

      v19 = v63;
      v18 = v21 + 1;
      v93.origin.x = v75;
      v93.origin.y = v72;
      v93.size.width = a4;
      v93.size.height = a5;
      CGRectGetMinY(v93);
      v56 = v74;
      if ((v68 & 1) == 0)
      {
        v56 = v25;
      }

      v74 = v56;
      sub_1E149BD40(v78);
      v17 = 1;
      if (v64 == v21)
      {
        goto LABEL_36;
      }
    }

    v69 = v69 + 0.0;
    if ((v70 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v86.origin.x = v75;
    v86.origin.y = v72;
    v86.size.width = a4;
    v86.size.height = a5;
    CGRectGetWidth(v86);
    goto LABEL_20;
  }

  v74 = 0.0;
  v73 = 0.0;
LABEL_36:
  sub_1E1AF107C();
}

void _VerticalFlowLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_1E1AF745C();
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(v1 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v4;
    v9 = 0;
    v10 = 0;
    v36 = *v1;
    v31 = (v5 + 8);
    v35 = v8 - 1;
    v11 = v7 + 32;
    v12 = 0.0;
    v40 = 0.0;
    v38 = 0.0;
    v34 = v7 + 32;
    while (1)
    {
      v37 = v9;
      v39 = v12;
      v13 = v11 + 136 * v10;
      v14 = v10;
      while (1)
      {
        if (v14 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        sub_1E149BCE4(v13, v43);
        __swift_project_boxed_opaque_existential_1Tm(v43, v44);
        sub_1E1AF11CC();
        v16 = v15;
        v18 = v17;
        v12 = v19;
        v20 = v48;
        if (v48 & 2) == 0 || (__swift_project_boxed_opaque_existential_1Tm(v43, v44), (sub_1E1AF112C()))
        {
          if ((v20 & 1) == 0 || (__swift_project_boxed_opaque_existential_1Tm(v43, v44), (sub_1E1AF117C() & 1) == 0))
          {
            if ((v20 & 8) == 0 || v18 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v14;
        sub_1E149BD40(v43);
        v13 += 136;
        if (v8 == v14)
        {
          return;
        }
      }

      v21 = v45;
      __swift_project_boxed_opaque_existential_1Tm(v46, v46[3]);
      if (v21)
      {
        sub_1E1AF12FC();
        v23 = v22;
        if (v22 < 0.0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = v32;
        sub_1E13BC274();
        sub_1E1AF12DC();
        v23 = v26;
        (*v31)(v25, v33);
        if (v23 < 0.0)
        {
LABEL_16:
          v24 = v38 + 0.0 + v18;
          goto LABEL_17;
        }
      }

      v24 = v18 + v38 + v23;
LABEL_17:
      v27 = a1;
      if ((v36 & 1) == 0)
      {
        v27 = v16;
      }

      v28 = v40;
      if (v27 > v40)
      {
        v28 = v27;
      }

      v40 = v28;
      sub_1E141E104(&v47, v41);
      if (v42)
      {
        __swift_project_boxed_opaque_existential_1Tm(v41, v42);
        sub_1E1AF12CC();
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_1(v41);
        v38 = v24 + v30;
      }

      else
      {
        sub_1E141E174(v41);
        v38 = v24 - v12;
      }

      v11 = v34;
      v10 = v14 + 1;
      sub_1E149BD40(v43);
      v9 = 1;
      if (v35 == v14)
      {
        return;
      }
    }
  }

  v40 = 0.0;
}

__n128 _VerticalFlowLayout.addChild(_:)(uint64_t a1)
{
  sub_1E149BCE4(a1, v12);
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E172D4E0(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1E172D4E0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[136 * v4];
  *(v5 + 2) = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 5) = v12[3];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *(v5 + 20) = v13;
  *(v5 + 8) = v10;
  *(v5 + 9) = v11;
  *(v5 + 7) = result;
  *(v1 + 8) = v2;
  return result;
}

unint64_t _VerticalFlowLayout.insertChild(_:at:)(unint64_t result, int64_t a2)
{
  if (*(*(v2 + 8) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1E149BCE4(result, v4);
    return sub_1E19219E0(a2, a2, v4);
  }

  __break(1u);
  return result;
}

uint64_t _VerticalFlowLayout.Child.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t _VerticalFlowLayout.Child.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E19219E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1E172D4E0(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1E14F3120(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1E1921AB8()
{
  result = qword_1ECEBB2F0;
  if (!qword_1ECEBB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB2F0);
  }

  return result;
}

unint64_t sub_1E1921B10()
{
  result = qword_1ECEBB2F8;
  if (!qword_1ECEBB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB2F8);
  }

  return result;
}

unint64_t sub_1E1921B68()
{
  result = qword_1ECEBB300;
  if (!qword_1ECEBB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB300);
  }

  return result;
}

unint64_t sub_1E1921BC0()
{
  result = qword_1ECEBB308;
  if (!qword_1ECEBB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB308);
  }

  return result;
}

unint64_t sub_1E1921C18()
{
  result = qword_1ECEBB310;
  if (!qword_1ECEBB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB310);
  }

  return result;
}

unint64_t sub_1E1921C70()
{
  result = qword_1ECEBB318;
  if (!qword_1ECEBB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB318);
  }

  return result;
}

uint64_t sub_1E1921D6C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_1E1921E70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_1E1AF71CC() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = sub_1E1AF71CC();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = sub_1E1AF71CC();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  sub_1E1731DC0(v14, 1);

  sub_1E14F3858(v6, v5, v10, v3);
}

uint64_t sub_1E1921F84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1E1AF71CC();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1E1AF71CC();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1E1731DC0(result, 1);

  return sub_1E14F39F0(v6, v5, 1, v3);
}

unint64_t sub_1E1922070(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1E172D374(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1E14F3C74(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1E1922170(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1E1AF71CC();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_1E1AF71CC();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t static JSONContext.makeDefaultContext(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1E1AF39DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v31 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  sub_1E1AF59DC();
  v35 = a1;
  v21 = sub_1E1AF413C();
  if (!v36[0])
  {
    v24 = sub_1E1AF594C();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    goto LABEL_5;
  }

  MEMORY[0x1E68FE6D0](v21);

  v22 = sub_1E1AF594C();
  v23 = 1;
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
LABEL_5:
    v23 = 0;
  }

  sub_1E1308058(v20, &qword_1ECEBBA70);
  sub_1E1AF413C();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    sub_1E1AF39CC();
    if (v25(v8, 1, v9) != 1)
    {
      sub_1E1308058(v8, &qword_1ECEB3B28);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v36[3] = &type metadata for DiagnosticsAdapter;
  v36[4] = sub_1E154ACA0();
  sub_1E1AF397C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
  sub_1E1AF395C();
  (*(v3 + 8))(v5, v32);
  v26 = *(v10 + 8);
  v26(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v36);
  LOBYTE(v36[0]) = v23;
  if (qword_1EE1E3C18 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB320);
  __swift_project_value_buffer(v27, qword_1EE216218);
  v28 = v33;
  sub_1E1AF395C();
  v26(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF413C();
  if (!v36[0])
  {
    return (*(v10 + 32))(v34, v28, v9);
  }

  if (qword_1EE1E3BF0 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6968);
  __swift_project_value_buffer(v29, qword_1EE2161D0);
  sub_1E1AF395C();
  v26(v28, v9);
  return swift_unknownObjectRelease();
}

uint64_t LargeHeroBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *LargeHeroBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v87 = *v3;
  v96 = sub_1E1AF39DC();
  v6 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v85 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v93 = &v85 - v11;
  v107 = sub_1E1AEFEAC();
  v92 = *(v107 - 1);
  MEMORY[0x1EEE9AC00](v107);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - v23;
  v3[12] = 0;
  v90 = v3 + 12;
  v101 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v99 = v14;
  v100 = v15;
  if (v26)
  {
    v102 = v25;
    v103 = v26;
    sub_1E1AF6F6C();
    v107 = *(v15 + 8);
    v107(v24, v14);
    v27 = a2;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v29 = a2;
    v30 = v6;
    v32 = v31;
    (*(v92 + 1))(v13, v107);
    v102 = v28;
    v103 = v32;
    v6 = v30;
    v27 = v29;
    sub_1E1AF6F6C();
    v107 = *(v15 + 8);
    v107(v24, v99);
  }

  v95 = v27;
  v33 = v105;
  *(v3 + 13) = v104;
  *(v3 + 15) = v33;
  v3[17] = v106;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v91 = v6;
  v35 = *(v6 + 16);
  v34 = v6 + 16;
  v37 = v96;
  v36 = v97;
  v35(v97, v27, v96);
  v38 = v93;
  sub_1E1AF464C();
  v94 = v3;
  v86 = OBJC_IVAR____TtC11AppStoreKit17LargeHeroBreakout_impressionMetrics;
  sub_1E134B7C8(v38, v3 + OBJC_IVAR____TtC11AppStoreKit17LargeHeroBreakout_impressionMetrics);
  v39 = v98;
  v35(v98, v95, v37);
  type metadata accessor for BreakoutDetails();
  sub_1E1AF381C();
  v92 = v35;
  v35(v36, v39, v37);
  sub_1E1923A04(&qword_1EE1DFB00, type metadata accessor for BreakoutDetails);
  sub_1E1AF464C();
  v40 = v104;
  if (v104)
  {
    v41 = v94;
    v94[4] = v104;
    v87 = v40;

    sub_1E1AF381C();
    v42 = sub_1E1AF37CC();
    v44 = v43;
    v45 = v99;
    v46 = (v100 + 8);
    v100 = v34;
    v47 = v107;
    v107(v21, v99);
    v41[2] = v42;
    v41[3] = v44;
    v48 = v88;
    sub_1E1AF381C();
    sub_1E1AF381C();
    sub_1E13F7FB4();
    sub_1E1AF369C();
    v47(v21, v45);
    LOBYTE(v44) = v104;
    v49 = v89;
    sub_1E1AF381C();
    LOBYTE(v42) = sub_1E1AF370C();
    v93 = v46;
    v107 = v47;
    v47(v49, v45);
    v47(v48, v45);
    v50 = v94;
    *(v94 + 40) = v44;
    *(v50 + 41) = v42 & 1;
    type metadata accessor for Artwork();
    v51 = v101;
    sub_1E1AF381C();
    v52 = v97;
    v53 = v98;
    v54 = v96;
    v55 = v92;
    v92(v97, v98, v96);
    v56 = v55;
    sub_1E1923A04(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v50[6] = v104;
    type metadata accessor for Video();
    sub_1E1AF381C();
    v57 = v52;
    v58 = v52;
    v59 = v54;
    v56(v58, v53, v54);
    sub_1E1923A04(&qword_1EE1E52D0, type metadata accessor for Video);
    v60 = v57;
    sub_1E1AF464C();
    v50[7] = v104;
    sub_1E1AF381C();
    v61 = JSONObject.appStoreColor.getter();
    v107(v21, v99);
    v50[8] = v61;
    type metadata accessor for Lockup();
    sub_1E1AF381C();
    v62 = v60;
    v63 = v60;
    v64 = v59;
    v56(v63, v53, v59);
    sub_1E1923A04(&qword_1EE1E4F60, type metadata accessor for Lockup);
    v65 = v62;
    sub_1E1AF464C();
    v50[9] = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8);
    sub_1E1AF381C();
    v56(v62, v53, v64);
    sub_1E1460648();
    sub_1E1AF464C();
    v50[10] = v104;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v66 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v53);
    v107(v21, v99);
    swift_beginAccess();
    v50[12] = v66;

    sub_1E1AF381C();
    v56(v65, v53, v64);
    sub_1E14601F4();
    sub_1E1AF464C();
    v67 = v102 | ((WORD2(v102) | (BYTE6(v102) << 16)) << 32);
    v68 = v64;
    if (v102 == 2)
    {
      if (qword_1ECEB1190 != -1)
      {
        swift_once();
      }

      LOBYTE(v67) = dword_1ECEB9550;
      LOBYTE(v69) = BYTE1(dword_1ECEB9550);
      LOBYTE(v70) = BYTE2(dword_1ECEB9550);
      LOBYTE(v71) = HIBYTE(dword_1ECEB9550);
      LOBYTE(v72) = byte_1ECEB9554;
      LOBYTE(v73) = byte_1ECEB9555;
      LOBYTE(v74) = byte_1ECEB9556;
    }

    else
    {
      v69 = (v67 >> 8) & 1;
      v70 = (v67 >> 16) & 1;
      v71 = (v67 >> 24) & 1;
      v72 = HIDWORD(v67) & 1;
      v73 = (v67 >> 40) & 1;
      v74 = HIWORD(v67) & 1;
    }

    *(v50 + 88) = v67 & 1;
    *(v50 + 89) = v69;
    *(v50 + 90) = v70;
    *(v50 + 91) = v71;
    *(v50 + 92) = v72;
    *(v50 + 93) = v73;
    *(v50 + 94) = v74;
    sub_1E1AF381C();
    v80 = sub_1E1AF370C();
    v81 = v99;
    v107(v21, v99);
    *(v50 + 95) = v80;
    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_1E1AF381C();
    v82 = v98;
    v92(v97, v98, v68);
    sub_1E1923A04(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_1E1AF464C();

    v83 = *(v91 + 8);
    v83(v95, v68);
    v107(v51, v81);
    v83(v82, v68);
    *(v50 + OBJC_IVAR____TtC11AppStoreKit17LargeHeroBreakout_flowPreviewActionsConfiguration) = v102;
  }

  else
  {
    v75 = sub_1E1AF5A7C();
    sub_1E1923A04(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v76 = 0x736C6961746564;
    v77 = v87;
    v76[1] = 0xE700000000000000;
    v76[2] = v77;
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x1E69AB690], v75);
    swift_willThrow();
    v78 = *(v91 + 8);
    v79 = v96;
    v78(v95, v96);
    v107(v101, v99);
    v78(v98, v79);
    v50 = v94;

    sub_1E134B88C((v50 + 13));
    sub_1E13814C0(v50 + v86);
    type metadata accessor for LargeHeroBreakout();
    swift_deallocPartialClassInstance();
  }

  return v50;
}

uint64_t type metadata accessor for LargeHeroBreakout()
{
  result = qword_1EE1F1238;
  if (!qword_1EE1F1238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LargeHeroBreakout.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void LargeHeroBreakout.detailsDisplayProperties.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 41);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

void *LargeHeroBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void LargeHeroBreakout.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[89];
  v3 = v1[90];
  v4 = v1[91];
  v5 = v1[92];
  v6 = v1[93];
  v7 = v1[94];
  *a1 = v1[88];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_1E1923784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t sub_1E192381C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t LargeHeroBreakout.deinit()
{

  sub_1E134B88C(v0 + 104);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit17LargeHeroBreakout_impressionMetrics);

  return v0;
}

uint64_t LargeHeroBreakout.__deallocating_deinit()
{
  LargeHeroBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1923A04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1E1923A5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for LargeHeroBreakout();
  v7 = swift_allocObject();
  result = LargeHeroBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E1923B20(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 89);
  v3 = *(*v1 + 90);
  v4 = *(*v1 + 91);
  v5 = *(*v1 + 92);
  v6 = *(*v1 + 93);
  v7 = *(*v1 + 94);
  *a1 = *(*v1 + 88);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void sub_1E1923B80()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for InAppPurchaseSearchResultLayout(0);
  sub_1E1923E8C(a1, a9 + *(v17 + 44));
  sub_1E1300B24(a2, a9);
  sub_1E1300B24(a3, a9 + 40);
  sub_1E1300B24(a4, a9 + 80);
  __swift_project_boxed_opaque_existential_1Tm(a5, a5[3]);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1E1923F10(a1);
  sub_1E1308EC0(a6, a9 + 160);
  sub_1E1308EC0(a7, a9 + 200);
  sub_1E1308EC0(a8, a9 + 240);

  return __swift_destroy_boxed_opaque_existential_1(a5);
}

uint64_t sub_1E1923E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1923F10(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.init(offerButtonSize:offerButtonMargin:inAppPurchaseTextSpace:titleTextSpace:subtitleTextSpace:descriptionTextSpace:detailsBottomMargin:accessibilityDetailsBottomMargin:preferredMainArtworkWidth:regularLockupAreaAspectRatio:compactLockupAreaAspectRatio:regularBodySideEdgeInsetPercentage:regularBodyHorizontalComponentSpacingPercentage:compactBodySideEdgeInsetPercentage:compactBodyHorizontalComponentSpacingPercentage:inAppIconBottomMargin:bodyVerticalPadding:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  sub_1E1308EC0(a1, (a9 + 2));
  sub_1E1308EC0(a2, (a9 + 7));
  sub_1E1308EC0(a3, (a9 + 12));
  sub_1E1308EC0(a4, (a9 + 17));
  sub_1E1308EC0(a5, (a9 + 22));
  sub_1E1308EC0(a6, (a9 + 27));
  sub_1E1308EC0(a7, (a9 + 32));
  sub_1E1308EC0(a8, (a9 + 37));
  v27 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  v28 = v27[13];
  v29 = sub_1E1AF127C();
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a12, v29);
  v30(a9 + v27[14], a13, v29);
  sub_1E1308EC0(a14, a9 + v27[15]);
  sub_1E1308EC0(a15, a9 + v27[16]);
  sub_1E1308EC0(a16, a9 + v27[17]);
  sub_1E1308EC0(a17, a9 + v27[18]);
  sub_1E1308EC0(a18, a9 + v27[19]);
  v31 = a9 + v27[20];

  return sub_1E1308EC0(a19, v31);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.inAppPurchaseTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.titleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.subtitleTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 136);

  return sub_1E1308EC0(a1, v1 + 136);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.descriptionTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 176);

  return sub_1E1308EC0(a1, v1 + 176);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.detailsBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 216);

  return sub_1E1308EC0(a1, v1 + 216);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.accessibilityDetailsBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 256);

  return sub_1E1308EC0(a1, v1 + 256);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.preferredMainArtworkWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 296);

  return sub_1E1308EC0(a1, v1 + 296);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularLockupAreaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 52);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularLockupAreaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 52);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactLockupAreaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 56);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactLockupAreaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 56);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularBodySideEdgeInsetPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 60);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.regularBodyHorizontalComponentSpacingPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 64);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactBodySideEdgeInsetPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 68);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.compactBodyHorizontalComponentSpacingPercentage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 72);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.inAppIconBottomMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 76);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t InAppPurchaseSearchResultLayout.Metrics.bodyVerticalPadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0) + 80);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t sub_1E1924DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InAppPurchaseSearchResultLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InAppPurchaseSearchResultLayout(0) + 44);

  return sub_1E1923E8C(v3, a1);
}

uint64_t InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v200 = a2;
  v11 = sub_1E1AF127C();
  v190 = *(v11 - 8);
  v191 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v189 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E1AF19AC();
  v183 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v182 - v15;
  v16 = sub_1E1AF1A0C();
  v187 = *(v16 - 8);
  v188 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v186 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1E1AF745C();
  v215 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  *&v219 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF111C();
  v202 = *(v19 - 8);
  v203 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v201 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF184C();
  v221 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = COERCE_DOUBLE(sub_1E1AF188C());
  v222 = *(*&v213 - 8);
  MEMORY[0x1EEE9AC00](*&v213);
  v25 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF18BC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v29;
  v30 = sub_1E1AF18DC();
  v204 = *(v30 - 8);
  v205 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v218 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [a1 traitCollection];
  LODWORD(v214) = sub_1E1AF698C();

  v225 = a3;
  v239.origin.x = a3;
  v227 = a4;
  v239.origin.y = a4;
  v239.size.width = a5;
  v223 = a6;
  v239.size.height = a6;
  Width = CGRectGetWidth(v239);
  v216 = a1;
  v35 = [a1 traitCollection];
  v199 = [v35 horizontalSizeClass];

  (*(v27 + 104))(v29, *MEMORY[0x1E69ABA28], v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
  v36 = *(sub_1E1AF189C() - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v194 = *(v36 + 72);
  v195 = 2 * v194;
  v38 = swift_allocObject();
  v197 = v38;
  *(v38 + 16) = xmmword_1E1B03760;
  v206 = v38 + v37;
  v39 = v224[3];
  v40 = v224[4];
  v41 = v224;
  v42 = __swift_project_boxed_opaque_existential_1Tm(v224, v39);
  v237 = v39;
  v238 = *(v40 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v236);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_0, v42, v39);
  *&v226 = v41 + *(type metadata accessor for InAppPurchaseSearchResultLayout(0) + 44);
  LODWORD(v212) = *MEMORY[0x1E69ABA08];
  v44 = v222;
  v45 = *(*&v222 + 104);
  v210 = *&v222 + 104;
  v211 = v45;
  v46 = v213;
  v45(v25);
  *&v233 = MEMORY[0x1E69E7CC0];
  v209 = sub_1E1926D4C(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  v207 = sub_1E1383E14();
  sub_1E1AF6EEC();
  v47 = v25;
  v48 = v23;
  sub_1E1AF186C();
  v49 = *(*&v221 + 8);
  *&v221 += 8;
  v49(v23, v21);
  v192 = *(*&v44 + 8);
  v193 = v49;
  *&v222 = *&v44 + 8;
  v50 = v25;
  v51 = v46;
  v192(v50, *&v46);
  __swift_destroy_boxed_opaque_existential_1(v236);
  v52 = v224;
  v53 = v224[8];
  v54 = v224[9];
  v55 = __swift_project_boxed_opaque_existential_1Tm(v224 + 5, v53);
  v237 = v53;
  v238 = *(v54 + 8);
  v56 = __swift_allocate_boxed_opaque_existential_0(v236);
  (*(*(v53 - 8) + 16))(v56, v55, v53);
  v211(v47, v212, *&v51);
  *&v233 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v49(v48, v21);
  v57 = v192;
  v192(v47, *&v51);
  __swift_destroy_boxed_opaque_existential_1(v236);
  v58 = v52[13];
  v59 = v52[14];
  v60 = __swift_project_boxed_opaque_existential_1Tm(v52 + 10, v58);
  v237 = v58;
  v238 = *(v59 + 8);
  v61 = __swift_allocate_boxed_opaque_existential_0(v236);
  (*(*(v58 - 8) + 16))(v61, v60, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF183C();
  *&v233 = v62;
  sub_1E1AF6EEC();
  v63 = v213;
  v211(v47, v212, *&v213);
  sub_1E1AF186C();
  v57(v47, *&v63);
  v64 = v21;
  v65 = v218;
  v193(v48, v64);
  __swift_destroy_boxed_opaque_existential_1(v236);
  v66 = sub_1E1AF140C();
  v67 = MEMORY[0x1E69AB908];
  v237 = v66;
  v238 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v236);
  sub_1E1AF13FC();
  sub_1E1AF18CC();
  __swift_project_boxed_opaque_existential_1Tm(v52 + 5, v52[8]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v52 + 5, v52[8]);
  sub_1E1AF144C();
  __swift_project_boxed_opaque_existential_1Tm(v52 + 10, v52[13]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v52 + 10, v52[13]);
  sub_1E1AF144C();
  v217 = Width;
  v212 = v66;
  if (LOBYTE(v214))
  {
    v68 = v201;
    v69 = v225;
    v70 = v227;
    v71 = v223;
    sub_1E1AF182C();
    sub_1E1AF109C();
    v73 = v72;
    (*(v202 + 8))(v68, v203);
    v74 = v226;
    __swift_project_boxed_opaque_existential_1Tm((*&v226 + 256), *(*&v226 + 280));
    v75 = v219;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v77 = v76;
    v78 = *(*&v215 + 8);
    v79 = v220;
    v78(*&v75, v220);
    v80 = v73 + v77;
    v222 = v80;
    v240.origin.x = v69;
    v240.origin.y = v70;
    v240.size.width = a5;
    v240.size.height = v71;
    MinX = CGRectGetMinX(v240);
    v241.origin.x = v69;
    v241.origin.y = v70;
    v241.size.width = Width;
    v241.size.height = v80;
    MaxY = CGRectGetMaxY(v241);
    v83 = a5;
    v84 = MaxY;
    v85 = v83;
    v86 = **&v74;
    v87 = *(*&v74 + 8);
    __swift_project_boxed_opaque_existential_1Tm(v224 + 15, v224[18]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    v242.origin.x = MinX;
    v242.origin.y = v84;
    v242.size.width = v86;
    a5 = v85;
    v88 = v217;
    v242.size.height = v87;
    v89 = v222 + CGRectGetHeight(v242);
    __swift_project_boxed_opaque_existential_1Tm((*&v74 + 256), *(*&v74 + 280));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v91 = v90;
    v221 = *&v78;
    v78(*&v75, v79);
    v92 = v89 + v91;
  }

  else
  {
    v93 = v205;
    sub_1E1AF11CC();
    v237 = v93;
    v238 = MEMORY[0x1E69ABA38];
    v94 = __swift_allocate_boxed_opaque_existential_0(v236);
    (*(v204 + 16))(v94, v65, v93);
    v235 = 0;
    v233 = 0u;
    v234 = 0u;
    *(&v231 + 1) = v66;
    v232 = v67;
    __swift_allocate_boxed_opaque_existential_0(&v230);
    sub_1E1AF13FC();
    v95 = v224;
    sub_1E1300B24((v224 + 15), &v229);
    v96 = v226;
    sub_1E1300B24(*&v226 + 16, &v228);
    v97 = *(v183 + 104);
    v98 = v185;
    v97(v182, *MEMORY[0x1E69ABA78], v185);
    v97(v184, *MEMORY[0x1E69ABA80], v98);
    v99 = v186;
    sub_1E1AF19EC();
    v100 = v201;
    sub_1E1AF19CC();
    sub_1E1AF109C();
    v102 = v101;
    (*(v202 + 8))(v100, v203);
    v103 = v102 + 0.0;
    __swift_project_boxed_opaque_existential_1Tm((*&v96 + 216), *(*&v96 + 240));
    v104 = v219;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v106 = v105;
    v221 = *(*&v215 + 8);
    (*&v221)(*&v104, v220);
    __swift_project_boxed_opaque_existential_1Tm(v95 + 15, v95[18]);
    v107 = sub_1E1AF114C();
    v92 = v103 + v106;
    *(v108 + 24) = v103 + v106;
    v107(v236, 0);
    (*(v187 + 8))(v99, v188);
    v88 = Width;
  }

  v109 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
  v110 = v109;
  v111 = v199;
  v112 = 60;
  if (v199 == 1)
  {
    v112 = 68;
    v113 = 72;
  }

  else
  {
    v113 = 64;
  }

  v114 = v226;
  __swift_project_boxed_opaque_existential_1Tm((*&v226 + *(v109 + v112)), *(*&v226 + *(v109 + v112) + 24));
  sub_1E1AF12BC();
  v213 = v115;
  __swift_project_boxed_opaque_existential_1Tm((*&v114 + *(v110 + v113)), *(*&v114 + *(v110 + v113) + 24));
  sub_1E1AF12BC();
  v211 = v116;
  __swift_project_boxed_opaque_existential_1Tm((*&v114 + 296), *(*&v114 + 320));
  v117 = v219;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v119 = v118;
  (*&v221)(*&v117, v220);
  v120 = floor(v119 / 30.0);
  v121 = v120 * 4.0 + v120 * 4.0;
  if (v119 >= 30.0)
  {
    v122 = v121;
  }

  else
  {
    v122 = 8.0;
  }

  v123 = v225;
  v243.origin.x = v225;
  v124 = v227;
  v243.origin.y = v227;
  v125 = a5;
  v243.size.width = a5;
  v243.size.height = v223;
  Height = CGRectGetHeight(v243);
  v244.origin.x = v123;
  v244.origin.y = v124;
  v244.size.width = v88;
  v244.size.height = v92;
  v127 = Height - CGRectGetHeight(v244);
  v222 = v92;
  v196 = v125;
  if (LOBYTE(v214))
  {
    v128 = v88;
    v129 = v127;
    v130 = v225;
    v245.origin.x = v225;
    v131 = v227;
    v245.origin.y = v227;
    v245.size.width = v125;
    v132 = v223;
    v245.size.height = v223;
    v133 = CGRectGetMinX(v245);
    v214 = v133;
    v246.origin.x = v130;
    v246.origin.y = v131;
    v246.size.width = v128;
    v246.size.height = v92;
    v134 = CGRectGetMaxY(v246);
    v247.origin.x = v130;
    v247.origin.y = v131;
    v247.size.width = v125;
    v247.size.height = v132;
    v135 = CGRectGetWidth(v247);
    v248.origin.x = v133;
    v248.origin.y = v134;
    v248.size.width = v135;
    v248.size.height = v129;
    CGRectGetWidth(v248);
    v136 = (*&v226 + *(v110 + 80));
    __swift_project_boxed_opaque_existential_1Tm(v136, v136[3]);
    v137 = v219;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v215 = v138;
    v139 = v220;
    v140 = v221;
    (*&v221)(*&v137, v220);
    __swift_project_boxed_opaque_existential_1Tm(v136, v136[3]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v213 = v141;
    (*&v140)(*&v137, v139);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    v143 = v212;
    v237 = v212;
    v238 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v236);
    sub_1E1AF13FC();
    __swift_project_boxed_opaque_existential_1Tm((*&v226 + *(v110 + 76)), *(*&v226 + *(v110 + 76) + 24));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v145 = v144;
    (*&v140)(*&v137, v139);
    *(&v234 + 1) = MEMORY[0x1E69E7DE0];
    v235 = MEMORY[0x1E69AB858];
    *&v233 = v145;
    v146 = v224;
    sub_1E1300B24((v224 + 20), inited + 32);
    sub_1E1300B24(v236, inited + 80);
    sub_1E141E104(&v233, inited + 120);
    *(inited + 72) = 1;
    *(inited + 160) = 8;
    sub_1E141E174(&v233);
    __swift_destroy_boxed_opaque_existential_1(v236);
    v147 = v146[28];
    v148 = v146[29];
    v149 = __swift_project_boxed_opaque_existential_1Tm(v146 + 25, v147);
    v237 = v147;
    v238 = *(v148 + 8);
    v150 = __swift_allocate_boxed_opaque_existential_0(v236);
    (*(*(v147 - 8) + 16))(v150, v149, v147);
    *(&v234 + 1) = v143;
    v235 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v233);
    sub_1E1AF13FC();
    v232 = 0;
    v230 = 0u;
    v231 = 0u;
    sub_1E1300B24(v236, inited + 168);
    sub_1E1300B24(&v233, inited + 216);
    sub_1E141E104(&v230, inited + 256);
    *(inited + 208) = 1;
    *(inited + 296) = 8;
    sub_1E141E174(&v230);
    __swift_destroy_boxed_opaque_existential_1(&v233);
    __swift_destroy_boxed_opaque_existential_1(v236);
    LOBYTE(v236[0]) = 1;
    v236[1] = inited;
    sub_1E1AF6B0C();
    v151 = v201;
    _VerticalFlowLayout.placeChildren(relativeTo:in:)(v201, v152, v153, v154, v155);
    (*(v202 + 8))(v151, v203);

    __swift_project_boxed_opaque_existential_1Tm(v146 + 30, v146[33]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
  }

  else
  {
    v156 = v125;
    v219 = v119 + v122;
    v158 = v189;
    v157 = v190;
    v159 = 52;
    if (v111 == 1)
    {
      v159 = 56;
    }

    v160 = v191;
    (*(v190 + 16))(v189, *&v226 + *(v110 + v159), v191);
    v161 = v127;
    sub_1E1AF122C();
    v163 = v162;
    v164 = v225;
    v249.origin.x = v225;
    v165 = v227;
    v249.origin.y = v227;
    v249.size.width = v125;
    v166 = v223;
    v249.size.height = v223;
    CGRectGetWidth(v249);
    sub_1E1AF123C();
    v168 = v167;
    v250.origin.x = v164;
    v250.origin.y = v165;
    v169 = v156;
    v250.size.width = v156;
    v250.size.height = v166;
    if (CGRectGetWidth(v250) < v163)
    {
      v251.origin.x = v225;
      v251.origin.y = v227;
      v251.size.width = v156;
      v251.size.height = v223;
      v163 = CGRectGetWidth(v251);
      v161 = v168;
    }

    v170 = v225;
    v252.origin.x = v225;
    v171 = v227;
    v252.origin.y = v227;
    v252.size.width = v169;
    v252.size.height = v223;
    v172 = CGRectGetMinX(v252);
    v220 = *&v172;
    v253.origin.x = v170;
    v253.origin.y = v171;
    v253.size.width = v217;
    v253.size.height = v222;
    v173 = CGRectGetMaxY(v253);
    v226 = v173;
    v174 = v213 * v163;
    v254.origin.x = v172;
    v254.origin.y = v173;
    v254.size.width = v163;
    v254.size.height = v161;
    v221 = v161;
    v175 = v174 + CGRectGetMinX(v254);
    v255.origin.x = v172;
    v255.origin.y = v173;
    v255.size.width = v163;
    v255.size.height = v161;
    MidY = CGRectGetMidY(v255);
    v177 = v219;
    v215 = MidY - v219 * 0.5;
    v178 = v224;
    __swift_project_boxed_opaque_existential_1Tm(v224 + 20, v224[23]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v178 + 25, v178[28]);
    sub_1E1AF11DC();
    v256.origin.x = v175;
    v256.origin.y = v215;
    v256.size.width = v177;
    v256.size.height = v177;
    CGRectGetMaxX(v256);
    *&v257.origin.x = v220;
    v257.size.height = v221;
    v257.origin.y = v226;
    v257.size.width = v163;
    CGRectGetMidY(v257);
    __swift_project_boxed_opaque_existential_1Tm(v178 + 25, v178[28]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v178 + 30, v178[33]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    (*(v157 + 8))(v158, v160);
  }

  v180 = v204;
  v179 = v205;
  __swift_project_boxed_opaque_existential_1Tm(v224 + 30, v224[33]);
  sub_1E1AF115C();
  v259.size.height = v222 + CGRectGetHeight(v258);
  v259.origin.x = v225;
  v259.origin.y = v227;
  v259.size.width = v217;
  CGRectIntegral(v259);
  sub_1E1AF106C();
  return (*(v180 + 8))(v218, v179);
}

uint64_t sub_1E19265F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E1926D4C(&qword_1ECEBB340, type metadata accessor for InAppPurchaseSearchResultLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit02InA26PurchaseSearchResultLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(char *a1, void *a2, double a3)
{
  v6 = sub_1E1AF127C();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF745C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 traitCollection];
  v14 = sub_1E1AF698C();

  __swift_project_boxed_opaque_existential_1Tm(a1 + 7, *(a1 + 10));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v15 = *(v9 + 8);
  v15(v12, v8);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 12, *(a1 + 15));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v15(v12, v8);
  __swift_project_boxed_opaque_existential_1Tm(a1 + 17, *(a1 + 20));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v30 = v8;
  v15(v12, v8);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 32, *(a1 + 35));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v16 = v30;
    v15(v12, v30);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 32, *(a1 + 35));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v16);
    v29 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v17 = &a1[*(v29 + 80)];
    __swift_project_boxed_opaque_existential_1Tm(v17, *(v17 + 3));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v16);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 37, *(a1 + 40));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v16);
    __swift_project_boxed_opaque_existential_1Tm(&a1[*(v29 + 76)], *&a1[*(v29 + 76) + 24]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v18 = v30;
    v15(v12, v30);
    __swift_project_boxed_opaque_existential_1Tm(a1 + 22, *(a1 + 25));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v18);
    __swift_project_boxed_opaque_existential_1Tm(v17, *(v17 + 3));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v18);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1 + 27, *(a1 + 30));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v12, v30);
    v19 = [a2 traitCollection];
    v20 = [v19 horizontalSizeClass];

    v21 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v23 = v28;
    v22 = v29;
    v24 = 52;
    if (v20 == 1)
    {
      v24 = 56;
    }

    v25 = v27;
    (*(v28 + 16))(v27, &a1[*(v21 + v24)], v29);
    sub_1E1AF123C();
    (*(v23 + 8))(v25, v22);
  }

  return a3;
}

uint64_t sub_1E1926D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1926DBC()
{
  result = sub_1E138432C(319, &qword_1EE1D2AB0);
  if (v1 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AE0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E1926EB0()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AC0);
    if (v1 <= 0x3F)
    {
      sub_1E1AF127C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E1926F88(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_1E1AEF65C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF64C();
  sub_1E1AEF62C();
  MEMORY[0x1E68F8330](a1, a2);
  v19 = sub_1E1AEF63C();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v23 = sub_1E1AF46DC();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    type metadata accessor for Artwork();
    v24 = swift_allocObject();
    v33 = v15;
    v25 = v24;
    *(v24 + 152) = 0u;
    *(v24 + 168) = 0u;
    *(v24 + 184) = 0;
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v8;
    v29 = v28;
    (*(v9 + 8))(v11, v27);
    v34 = v26;
    v35 = v29;
    sub_1E1AF6F6C();
    sub_1E13815A4(v14, v25 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics);
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = a3;
    *(v25 + 40) = a4;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 72) = 25186;
    *(v25 + 80) = 0xE200000000000000;
    *(v25 + 64) = 0;
    *(v25 + 104) = MEMORY[0x1E69E7CC0];
    v34 = 25186;
    v35 = 0xE200000000000000;
    v30 = Artwork.Crop.preferredContentMode.getter();
    sub_1E13814C0(v14);
    (*(v16 + 8))(v18, v33);
    result = v25;
    *(v25 + 88) = v30;
    *(v25 + 96) = 3;
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  return result;
}

uint64_t sub_1E19272C8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19273C4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19274AC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927620()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927744()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927860()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19279B8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927AE4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927C0C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927D64()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927E68()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1927F78()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1928088()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19281DC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1928338()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E192847C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19285AC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E19286F8()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E192881C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E192BFC4();
  *a1 = result;
  return result;
}

void sub_1E192884C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000061696465;
  v4 = 0x4D746375646F7270;
  v5 = 0x80000001E1B582D0;
  v6 = 1701736302;
  if (v2 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v4 = 0x6365537961646F74;
    v3 = 0xEC0000006E6F6974;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001E1B58250;
  v8 = 0x80000001E1B58280;
  v9 = 0xD000000000000018;
  if (v2 == 1)
  {
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = 0x80000001E1B582A0;
  }

  if (*v1)
  {
    v7 = v8;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t Shelf.ContentsMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v92 = a3;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v84 - v10;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v85 = &v84 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v84 - v33;
  v93 = a1;
  sub_1E1AF381C();
  sub_1E1929DCC();
  sub_1E1AF369C();
  v35 = v11;
  v94 = *(v12 + 8);
  v94(v34, v11);
  if (v98 <= 2u)
  {
    v44 = v29;
    v45 = v20;
    v47 = v90;
    v46 = v91;
    if (v98)
    {
      if (v98 == 1)
      {
        v48 = v44;
        v49 = v93;
        (*(v12 + 16))(v44, v93, v11);
        sub_1E1AF381C();
        v50 = sub_1E1AF36EC();
        v52 = v51;
        (*(v97 + 8))(v95, v96);
        v53 = v94;
        v94(v49, v11);
        v53(v26, v11);
        result = (v53)(v48, v11);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        if (v52)
        {
          v57 = 1;
        }

        else
        {
          v57 = v50;
        }

        v58 = 0uLL;
        v59 = 0x40000000;
      }

      else
      {
        v73 = v93;
        (*(v12 + 16))(v23, v93, v11);
        v74 = v45;
        sub_1E1AF381C();
        v75 = sub_1E1AF36EC();
        v77 = v76;
        (*(v97 + 8))(v95, v96);
        v78 = v11;
        v79 = v94;
        v94(v73, v78);
        v79(v74, v35);
        result = (v79)(v23, v35);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        if (v77)
        {
          v57 = 1;
        }

        else
        {
          v57 = v75;
        }

        v58 = 0uLL;
        v59 = 1610612736;
      }
    }

    else
    {
      v67 = v93;
      (*(v12 + 16))(v90, v93, v11);
      v68 = v46;
      sub_1E1AF381C();
      v69 = sub_1E1AF36EC();
      v71 = v70;
      (*(v97 + 8))(v95, v96);
      v72 = v94;
      v94(v67, v11);
      v72(v68, v11);
      result = (v72)(v47, v11);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      if (v71)
      {
        v57 = 1;
      }

      else
      {
        v57 = v69;
      }

      v58 = 0uLL;
      v59 = 0x80000000;
    }
  }

  else if (v98 > 4u)
  {
    v60 = v93;
    if (v98 == 5)
    {
      v61 = v85;
      (*(v12 + 16))(v85, v93, v11);
      v63 = v96;
      v62 = v97;
      v64 = v87;
      v65 = v95;
      (*(v97 + 16))(v87, v95, v96);
      v66 = v104;
      ProductReviewsMetadata.init(deserializing:using:)(v61, v64, &v98);
      if (v66)
      {
        (*(v62 + 8))(v65, v63);
        return (v94)(v60, v35);
      }

      (*(v62 + 8))(v65, v63);
      result = (v94)(v60, v35);
      v56 = 0;
      v57 = v98;
      v58 = 0uLL;
      v59 = 0x20000000;
      v54 = v99;
      v55 = v100;
    }

    else
    {
      (*(v97 + 8))(v95, v96);
      result = (v94)(v60, v11);
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v58 = 0uLL;
      v59 = 3221225472;
    }
  }

  else
  {
    v36 = v93;
    if (v98 == 3)
    {
      v37 = v86;
      (*(v12 + 16))(v86, v93, v11);
      v39 = v96;
      v38 = v97;
      v40 = v88;
      v41 = v95;
      (*(v97 + 16))(v88, v95, v96);
      v42 = v104;
      ProductMediaMetadata.init(deserializing:using:)(v37, v40, &v98);
      if (v42)
      {
        (*(v38 + 8))(v41, v39);
        return (v94)(v36, v11);
      }

      (*(v38 + 8))(v41, v39);
      result = (v94)(v36, v11);
      v57 = v98;
      v54 = v99;
      v55 = v100;
      v58 = v101;
      v56 = v102;
      v59 = v103 & 0xFFFFFFFF00000101;
    }

    else
    {
      (*(v12 + 16))(v34, v93, v11);
      v81 = v96;
      v80 = v97;
      v82 = v95;
      (*(v97 + 16))(v89, v95, v96);
      sub_1E1929E20();
      sub_1E1AF464C();
      (*(v80 + 8))(v82, v81);
      result = (v94)(v36, v11);
      v57 = v98;
      if (v98 == 1)
      {
        v57 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v58 = 0uLL;
        v59 = 3221225472;
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v54 = v99;
        v58 = 0uLL;
        v59 = 2684354560;
      }
    }
  }

  v83 = v92;
  *v92 = v57;
  v83[1] = v54;
  v83[2] = v55;
  *(v83 + 3) = v58;
  v83[5] = v56;
  v83[6] = v59;
  return result;
}

uint64_t ProductReviewsMetadata.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF370C();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v24 = v12 & 1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v13(v8, v5);
  if (v16)
  {
    v17 = sub_1E1AF39DC();
    (*(*(v17 - 8) + 8))(v23, v17);
    result = (v13)(a1, v5);
    *a3 = v24;
    *(a3 + 8) = v14;
    *(a3 + 16) = v16;
  }

  else
  {
    v19 = sub_1E1AF5A7C();
    sub_1E1929F28(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v20 = 0xD000000000000012;
    v20[1] = 0x80000001E1B56F30;
    v20[2] = &type metadata for ProductReviewsMetadata;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x1E69AB690], v19);
    swift_willThrow();
    v21 = sub_1E1AF39DC();
    (*(*(v21 - 8) + 8))(v23, v21);
    return (v13)(a1, v5);
  }

  return result;
}

uint64_t ProductMediaMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a2;
  v70 = a3;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v75 = sub_1E1AF380C();
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  type metadata accessor for MediaPlatform();
  v76 = a1;
  sub_1E1AF381C();
  v23 = *(v5 + 16);
  v77 = v4;
  v23(v9, v79, v4);
  v24 = v74;
  v25 = MediaPlatform.__allocating_init(deserializing:using:)(v22, v9);
  if (v24)
  {
    (*(v5 + 8))(v79, v77);
    return (*(v78 + 8))(v76, v75);
  }

  v65 = 0;
  v67 = v5;
  v74 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB348);
  v27 = v76;
  sub_1E1AF381C();
  v28 = v79;
  v29 = v77;
  v23(v73, v79, v77);
  sub_1E1929E74();
  v66 = v19;
  sub_1E1AF464C();
  v30 = v81;
  if (!v81)
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v73 = v30;
  v31 = 0x80000001E1B7EDF0;
  v32 = v72;
  sub_1E1AF381C();
  v64 = sub_1E1AF37CC();
  v34 = v33;
  v35 = *(v78 + 8);
  v36 = v32;
  v37 = v75;
  v38 = v78 + 8;
  v35(v36, v75);
  v39 = v27;
  v72 = v34;
  if (v34)
  {
    v31 = 0x80000001E1B7EE10;
    v40 = v71;
    sub_1E1AF381C();
    v78 = sub_1E1AF37CC();
    v42 = v41;
    v35(v40, v37);
    v71 = v42;
    if (v42)
    {
      v43 = v66;
      sub_1E1AF381C();
      sub_1E192A33C();
      sub_1E1AF369C();
      v35(v43, v37);
      v44 = v27;
      v45 = v80;
      v46 = v68;
      sub_1E1AF381C();
      v47 = v37;
      v48 = sub_1E1AF370C();
      v35(v46, v47);
      v49 = v48 & 1;
      v50 = v69;
      sub_1E1AF381C();
      v51 = sub_1E1AF375C();
      (*(v67 + 8))(v79, v77);
      v35(v44, v47);
      result = (v35)(v50, v47);
      v52 = *&v51;
      v53 = v73;
      v54 = v70;
      *v70 = v74;
      v54[1] = v53;
      if ((v51 & 0x100000000) != 0)
      {
        v52 = 1.0;
      }

      v55 = v72;
      v54[2] = v64;
      v54[3] = v55;
      v56 = v71;
      v54[4] = v78;
      v54[5] = v56;
      *(v54 + 48) = v45;
      *(v54 + 49) = v49;
      *(v54 + 13) = v52;
      return result;
    }

    v58 = v27;
    v78 = v38;
    v59 = v37;
    v60 = 0xD000000000000017;
    v28 = v79;
    v57 = v77;
  }

  else
  {
    v57 = v29;
    v58 = v39;
    v78 = v38;
    v59 = v37;
    v60 = 0xD000000000000013;
  }

  v61 = sub_1E1AF5A7C();
  sub_1E1929F28(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
  swift_allocError();
  *v62 = v60;
  v62[1] = v31;
  v62[2] = &type metadata for ProductMediaMetadata;
  (*(*(v61 - 8) + 104))(v62, *MEMORY[0x1E69AB690], v61);
  swift_willThrow();
  (*(v67 + 8))(v28, v57);
  v35(v58, v59);

  result = v72;
  if (v72)
  {
  }

  return result;
}

uint64_t sub_1E1929C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = sub_1E1AF36EC();
  v12 = v11;
  v13 = sub_1E1AF39DC();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = *(v7 + 8);
  v14(a1, v6);
  result = (v14)(v9, v6);
  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  *a3 = v16;
  return result;
}

unint64_t sub_1E1929DCC()
{
  result = qword_1EE1E5498;
  if (!qword_1EE1E5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E5498);
  }

  return result;
}

unint64_t sub_1E1929E20()
{
  result = qword_1EE1D7BE0;
  if (!qword_1EE1D7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D7BE0);
  }

  return result;
}

unint64_t sub_1E1929E74()
{
  result = qword_1EE1E3518;
  if (!qword_1EE1E3518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB348);
    sub_1E1929F28(qword_1EE1F4FB8, type metadata accessor for MediaPlatform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3518);
  }

  return result;
}

uint64_t sub_1E1929F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ProductReviewsMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t Shelf.ContentsMetadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = v9 >> 29;
  if (v9 >> 29 <= 2)
  {
    if (!v10)
    {
      MEMORY[0x1E6900360](1);
      return ProductMediaMetadata.hash(into:)(a1);
    }

    if (v10 != 1)
    {
      v11 = 3;
LABEL_16:
      MEMORY[0x1E6900360](v11);
      v14 = v3;
      return MEMORY[0x1E6900360](v14);
    }

    MEMORY[0x1E6900360](2);
    sub_1E1AF764C();

    return sub_1E1AF5F0C();
  }

  else
  {
    if (v9 >> 29 <= 4)
    {
      if (v10 == 3)
      {
        v11 = 4;
      }

      else
      {
        v11 = 5;
      }

      goto LABEL_16;
    }

    if (v10 != 5)
    {
      v14 = 0;
      return MEMORY[0x1E6900360](v14);
    }

    MEMORY[0x1E6900360](6);
    sub_1E1AF764C();
    if (v3)
    {
      v13 = v3;
      sub_1E1AF6D1C();
      sub_1E192B928(v3, v4, v5, v6, v8, v7, v9);
    }

    sub_1E1AF5F0C();
  }
}