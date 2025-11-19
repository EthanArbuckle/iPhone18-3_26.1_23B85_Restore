uint64_t sub_2E5370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_9ACFC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_9330C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_12E1C(a1, &unk_DE8E40);
    sub_27B830(a2, a3, v9);
    sub_12E1C(v9, &unk_DE8E40);
  }

  return result;
}

void sub_2E5440(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    sub_12E1C(a1, &qword_DEE460);
    sub_27B8D4(a2, v6);
    sub_12E1C(v6, &qword_DEE460);
  }

  else
  {
    sub_9AFE0(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_9345C(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

void sub_2E54F4(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_93590(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    v7 = sub_2EC5A8(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v15 = *v3;
      if (!v10)
      {
        sub_3322FC();
        v11 = v15;
      }

      v12 = v9;
      v13 = *(*(v11 + 56) + 8 * v9);
      sub_27D32C(v12, v11);

      *v3 = v11;
    }
  }
}

uint64_t sub_2E55B4(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_12E1C(a1, &unk_DF2AE0);
    v15 = sub_2EC75C(a2, a3);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_3327AC();
        v19 = v23;
      }

      (*(v12 + 32))(v10, *(v19 + 56) + *(v12 + 72) * v17, v11);
      sub_27D518(v17, v19);
      *v4 = v19;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_12E1C(v10, &unk_DF2AE0);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    result = sub_939E4(v14, a2, a3, v20);
    *v4 = v23;
  }

  return result;
}

void sub_2E5810(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    sub_12E1C(a1, &unk_DF3640);
    sub_27BA24(a2, v6);
    sub_12E1C(v6, &unk_DF3640);
  }

  else
  {
    sub_9B150(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_93B5C(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

uint64_t sub_2E58C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_93C90(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_12E1C(a1, &qword_DF2BD0);
    sub_27BADC(a2, a3, v10);
    sub_12E1C(v10, &qword_DF2BD0);
  }

  return result;
}

uint64_t sub_2E599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_93E4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2EBF88(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_333040();
        v14 = v16;
      }

      sub_27F6EC(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

void sub_2E5AFC(void *a1, void *a2)
{
  if (*a1 == 1)
  {
    sub_12E1C(a1, &unk_DFE1E0);
    sub_27BE3C(a2, v6);
    sub_12E1C(v6, &unk_DFE1E0);
  }

  else
  {
    sub_9B098(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_94B20(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }
}

uint64_t sub_2E5BF0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  if ((*(v18 + 48))(a1, 1) == 1)
  {
    sub_12E1C(a1, &qword_DF4F98);
    a6(a2);
    sub_12E1C(a2, a4);
    return sub_12E1C(v14, &qword_DF4F98);
  }

  else
  {
    sub_36B0C(a1, v17, &unk_E00040);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    a3(v17, a2, isUniquelyReferenced_nonNull_native);
    result = sub_12E1C(a2, a4);
    *v6 = v22;
  }

  return result;
}

uint64_t TextStackView.Component.__allocating_init(identifier:labelProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[1];
  *(v6 + 64) = v8;
  *(v6 + 80) = v7;
  v10 = a3[3];
  *(v6 + 96) = a3[4];
  v11 = a3[1];
  v12 = *a3;
  *(v6 + 32) = *a3;
  *(v6 + 48) = v11;
  v13 = a3[4];
  *(v6 + 192) = v10;
  *(v6 + 208) = v13;
  *(v6 + 160) = v9;
  *(v6 + 176) = v8;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0xE000000000000000;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 224) = 0;
  *(v6 + 232) = 0xE000000000000000;
  *(v6 + 248) = 0;
  *(v6 + 256) = 0;
  *(v6 + 240) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 144) = v12;
  sub_2F118(a3, &v15);
  return v6;
}

uint64_t sub_2E5E98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2844EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_C3D40(&v5[5 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2E5FA4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_2E60BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_284590(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 40 * a1);
    v9 = v8[2];
    v8 += 2;
    v10 = v7 - 1;
    v11 = *(v8 + 32);
    v12 = v8[1];
    result = memmove(v8, v8 + 40, 40 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
    *a2 = v9;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t sub_2E616C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(&stru_20.cmd + 8 * a1 + (v5 & 0xFFFFFFFFFFFFFF8));
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_2E6210(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      v8 = 0;
LABEL_12:
      *(v2 + OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver) = v8;

      v12 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
      swift_beginAccess();
      *(v2 + v12) = &_swiftEmptyDictionarySingleton;
    }

LABEL_9:
    v9 = qword_DE6828;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = static TextDrawing.Cache.didInvalidateNotification;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v6, 1, 1, sub_161628, v11);
    goto LABEL_12;
  }

  return result;
}

void sub_2E6384()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    v2 = Strong;
    swift_beginAccess();
    *&v2[v1] = &_swiftEmptyDictionarySingleton;

    [v2 setNeedsLayout];
  }
}

uint64_t TextStackView.textDrawingCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_2E6210(v4);
}

void (*TextStackView.textDrawingCache.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_2E656C;
}

void sub_2E656C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_2E6210(v6);
  }

  else
  {
    sub_2E6210(v6);
  }

  free(v3);
}

uint64_t TextStackView.verticalAlignment.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TextStackView.verticalAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 TextStackView.exclusionRectangle.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t TextStackView.exclusionRectangle.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *(v1 + v5) = _swiftEmptyDictionarySingleton;
}

uint64_t (*TextStackView.exclusionRectangle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2E6858;
}

uint64_t sub_2E6858(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *(v5 + v6) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

double TextStackView.firstBaselineOffsetFromTop.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, v2, v4, v6, v8, v11);
  sub_3F250(v13);
  return *&v13[1];
}

double TextStackView.lastBaselineOffsetFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(v13, v2, v4, v6, v8, v11);
  sub_3F250(v13);
  return *&v13[2];
}

uint64_t TextStackView.isDisabled.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TextStackView.isDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = a1 & 1;
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6 >> 62)
    {
      result = sub_ABB060();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        return result;
      }
    }

    v7 = result - 1;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {

      v8 = 0;
      if ((v6 & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }

LABEL_6:
      v9 = *(sub_36003C(v8, v6) + 256);
      if (v9)
      {
LABEL_7:
        v10 = v9;
        if (([v10 isHidden] & 1) == 0)
        {
          v11 = *(v1 + v16);
          v12 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v13 = v10[v12];
          v10[v12] = v11;
          if (v11 != v13)
          {
            v14 = 1.0;
            if (v11)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v10 setAlpha:{v14, v16}];
          }
        }

        if (v7 != v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        while (1)
        {

          if (v7 == v8)
          {
            break;
          }

LABEL_16:
          ++v8;
          if ((v6 & 0xC000000000000001) != 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          v15 = *(v6 + 8 * v8 + 32);

          v9 = *(v15 + 256);
          if (v9)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

void (*TextStackView.isDisabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_2E6CE0;
}

void sub_2E6CE0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    goto LABEL_20;
  }

  v17 = v3[6];
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v4 = *(v17 + v3[7]);
  if (*(v17 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) == v4)
  {
    goto LABEL_20;
  }

  *(v17 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled) = v4;
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v6 = *(v17 + v5);
  if (!(v6 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
LABEL_20:

    free(v3);
    return;
  }

LABEL_5:
  v8 = v7 - 1;
  if (v7 >= 1)
  {

    v9 = 0;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v10 = *(sub_36003C(v9, v6) + 256);
      if (v10)
      {
LABEL_10:
        v12 = v10;
        if (([v12 isHidden] & 1) == 0)
        {
          v13 = *(v17 + v18);
          v14 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v15 = v12[v14];
          v12[v14] = v13;
          if (v13 != v15)
          {
            v16 = 1.0;
            if (v13)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v12 setAlpha:{v16, v17, v18}];
          }
        }
      }

      while (1)
      {

        if (v8 == v9)
        {

          goto LABEL_20;
        }

        ++v9;
        if ((v6 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_9:
        v11 = *(v6 + 8 * v9 + 32);

        v10 = *(v11 + 256);
        if (v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
}

id TextStackView.textShadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t TextStackView.textShadow.setter(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  *(v3 + 4) = *(a1 + 32);
  sub_15F84(a1, &v7, &qword_DFDFC0);

  [v1 setNeedsLayout];
  return sub_12E1C(a1, &qword_DFDFC0);
}

id (*TextStackView.textShadow.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2E702C;
}

id sub_2E702C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t TextStackView.contains(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_2EBF88(v2, v3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TextStackView.existingComponent(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2EBF88(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id TextStackView.add(_:)(void *a1)
{
  v2 = v1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  swift_beginAccess();
  if (*(*&v1[v6] + 16) && (, sub_2EBF88(v5, v4), v8 = v7, , (v8 & 1) != 0))
  {
    sub_ABAD90(93);
    v16._object = 0x8000000000B5D7E0;
    v16._countAndFlagsBits = 0xD000000000000059;
    sub_AB94A0(v16);
    v17._countAndFlagsBits = v5;
    v17._object = v4;
    sub_AB94A0(v17);
    v18._countAndFlagsBits = 11810;
    v18._object = 0xE200000000000000;
    sub_AB94A0(v18);
    result = sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = a1[30];
    a1[30] = sub_2F52DC;
    a1[31] = v9;

    sub_17654(v10);

    v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();

    sub_AB9730();
    if (*(&dword_10 + (*(v2 + v11) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v11) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v6);
    *(v2 + v6) = 0x8000000000000000;
    sub_9264C(a1, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v2 + v6) = v15;
    swift_endAccess();
    v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *(v2 + v13) = &_swiftEmptyDictionarySingleton;

    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_2E7450()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    v2 = Strong;
    swift_beginAccess();
    *&v2[v1] = &_swiftEmptyDictionarySingleton;

    [v2 setNeedsLayout];
  }
}

Swift::Void __swiftcall TextStackView.add(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1._rawValue & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v4 = sub_36003C(i, a1._rawValue);
      }

      else
      {
        v4 = *(a1._rawValue + i + 4);
      }

      TextStackView.add(_:)(v4);
    }
  }
}

Swift::Void __swiftcall TextStackView.replace(with:)(Swift::OpaquePointer with)
{
  TextStackView.removeAll()();
  if (with._rawValue >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(&dword_10 + (with._rawValue & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((with._rawValue & 0xC000000000000001) != 0)
      {
        v4 = sub_36003C(i, with._rawValue);
      }

      else
      {
        v4 = *(with._rawValue + i + 4);
      }

      TextStackView.add(_:)(v4);
    }
  }
}

id TextStackView.remove(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v44 = v1;
  v4 = *&v1[v3];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v55 = v4 & 0xC000000000000001;
  v51 = v4 & 0xFFFFFFFFFFFFFF8;
  v52 = v4;
  v53 = v6;
  while (v6 != v7)
  {
    if (v55)
    {
      v9 = sub_36003C(v7, v4);
      if (v9 == a1)
      {
LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:

LABEL_61:
        v38 = v44;
        swift_beginAccess();
        sub_2E616C(v7, sub_28572C);
        swift_endAccess();

        goto LABEL_63;
      }

      v9 = *(v4 + 8 * v7 + 32);

      if (v9 == a1)
      {
        goto LABEL_60;
      }
    }

    v10 = *(v9 + 16) == *(a1 + 16) && *(v9 + 24) == *(a1 + 24);
    if (!v10 && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v11 = *(v9 + 48);
    v12 = *(v9 + 80);
    v13 = *(v9 + 96);
    v59 = *(v9 + 64);
    v60 = v12;
    v15 = *(a1 + 32);
    v14 = *(a1 + 48);
    v61 = v13;
    v62 = v15;
    v57 = *(v9 + 32);
    v58 = v11;
    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    v63 = v14;
    v64 = v16;
    v18 = *(a1 + 96);
    v65 = v17;
    v66 = v18;
    v19 = BYTE8(v59);
    v20 = v15;
    v21 = BYTE8(v64);
    if ((*(&v59 + 1) & 0x8000000000000000) != 0)
    {
      if ((*(&v64 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      if (v57 == v62)
      {
        sub_2F118(&v62, v56);
        sub_2F118(&v57, v56);
      }

      else
      {
        v31 = sub_ABB3C0();
        sub_2F118(&v62, v56);
        sub_2F118(&v57, v56);
        if ((v31 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      if ((*(&v64 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_6;
      }

      v54 = v57;
      v49 = *(&v62 + 1);
      v50 = *(&v57 + 1);
      v48 = v63;
      v22 = v65;
      v23 = v59;
      v45 = *(&v58 + 1);
      v46 = *(&v63 + 1);
      v47 = v58;
      v24 = v60;
      sub_2F118(&v62, v56);
      sub_2F118(&v57, v56);
      v25 = [v24 _fontAdjustedForCurrentContentSizeCategory];
      if (v25)
      {
        v26 = v25;

        v24 = v26;
      }

      v27 = v22;
      v28 = [v27 _fontAdjustedForCurrentContentSizeCategory];
      if (v28)
      {
        v29 = v28;

        v27 = v29;
      }

      sub_13C80(0, &qword_DFA720);
      v30 = sub_ABA790();

      if ((v30 & 1) == 0)
      {
        sub_2F174(&v62);
        sub_2F174(&v57);

        v5 = v51;
        v4 = v52;
LABEL_32:
        v6 = v53;
        goto LABEL_7;
      }

      if (v54)
      {
        v5 = v51;
        v4 = v52;
        v6 = v53;
        if (!v20 || (sub_ABA790() & 1) == 0)
        {
LABEL_50:
          sub_2F174(&v62);
          sub_2F174(&v57);
          goto LABEL_6;
        }
      }

      else
      {
        v5 = v51;
        v4 = v52;
        v6 = v53;
        if (v20)
        {
          goto LABEL_50;
        }
      }

      if (v50)
      {
        if (!v49 || (sub_ABA790() & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (v49)
      {
        goto LABEL_50;
      }

      if (v47 != v48 || v45 != v46)
      {
        goto LABEL_5;
      }

      v56[0] = v23;
      sub_7FD28();
      if ((sub_AB38E0() & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v21 != v19)
      {
LABEL_5:
        sub_2F174(&v62);
        sub_2F174(&v57);
        goto LABEL_6;
      }
    }

    if (*(&v60 + 1) != *(&v65 + 1))
    {
      goto LABEL_5;
    }

    v56[0] = v61;
    sub_7FD28();
    if ((sub_AB38E0() & 1) == 0)
    {
      goto LABEL_50;
    }

    v56[0] = *(&v61 + 1);
    v32 = sub_AB38E0();
    sub_2F174(&v62);
    sub_2F174(&v57);
    if (v32)
    {
      if (swift_beginAccess(), *(v9 + 112) == *(a1 + 112)) && *(v9 + 120) == *(a1 + 120) || (sub_ABB3C0())
      {
        v33 = *(v9 + 256);
        v34 = *(a1 + 256);
        if (v33)
        {
          if (!v34)
          {

            v6 = v53;
            goto LABEL_7;
          }

          type metadata accessor for TextDrawing.View();
          v35 = v34;
          v36 = v33;
          v37 = sub_ABA790();

          if (v37)
          {
            goto LABEL_66;
          }

          goto LABEL_32;
        }

        v6 = v53;
        if (!v34)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_6:

LABEL_7:
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_65;
    }
  }

  v38 = v44;
LABEL_63:
  v39 = *(a1 + 240);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_17654(v39);
  v40 = *(a1 + 16);
  v41 = *(a1 + 24);
  swift_beginAccess();

  sub_2E4E80(0, v40, v41);
  swift_endAccess();
  v42 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *&v38[v42] = &_swiftEmptyDictionarySingleton;

  return [v38 setNeedsLayout];
}

Swift::Void __swiftcall TextStackView.removeAll()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_ABB060();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_36003C(v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    ++v5;
    v7 = *(v6 + 240);
    *(v6 + 240) = 0;
    *(v6 + 248) = 0;
    sub_17654(v7);
  }

  while (v4 != v5);

LABEL_10:
  v8 = *&v1[v2];
  if (v8 >> 62)
  {
    v9 = sub_ABB060();
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v9)
  {
LABEL_22:
    v17 = sub_2F3B1C(_swiftEmptyArrayStorage);

    sub_2E927C(v17);

    *&v1[v2] = _swiftEmptyArrayStorage;

    v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
    swift_beginAccess();
    *&v1[v18] = &_swiftEmptyDictionarySingleton;

    v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *&v1[v19] = &_swiftEmptyDictionarySingleton;

    [v1 setNeedsLayout];
    return;
  }

  sub_6D5A0(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v20 = v2;
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_36003C(v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_6D5A0((v14 > 1), v15 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v13;
      v16[5] = v12;
    }

    while (v9 != v10);

    v2 = v20;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

double TextStackView.fittingMetrics(for:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, double a3@<D1>)
{
  v7 = [v3 traitCollection];
  [v7 displayScale];
  v9 = v8;

  if (a3 <= 5.99231045e307)
  {
    v10 = a3;
  }

  else
  {
    v10 = 5.99231045e307;
  }

  sub_2E94A4(v14, 0.0, 0.0, a2, v10, v9);
  sub_3F250(v14);
  v11 = v17;
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
  return result;
}

char *TextStackView.componentMetrics()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v11 = v10;

  sub_2E94A4(&v13, v2, v4, v6, v8, v11);
  return v13;
}

__n128 TextStackView.componentMetrics(for:bounds:displayScale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)(*(a1 + 16), *(a1 + 24), v13, a3, a4, a5, a6, a7);
  v8 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v8;
  *(a2 + 160) = v13[10];
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

__n128 TextStackView.componentMetrics(forComponentIdentifier:bounds:displayScale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, double a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, double a8@<D4>)
{
  sub_2E94A4(v41, a4, a5, a6, a7, a8);
  v11 = *(v41[0] + 2);
  if (v11)
  {
    v12 = v41[0] + 32;
    while (1)
    {
      v13 = *v12;
      v14 = *(v12 + 2);
      v28[1] = *(v12 + 1);
      v28[2] = v14;
      v28[0] = v13;
      v15 = *(v12 + 3);
      v16 = *(v12 + 4);
      v17 = *(v12 + 6);
      v28[5] = *(v12 + 5);
      v28[6] = v17;
      v28[3] = v15;
      v28[4] = v16;
      v18 = *(v12 + 7);
      v19 = *(v12 + 8);
      v20 = *(v12 + 10);
      v28[9] = *(v12 + 9);
      v28[10] = v20;
      v28[7] = v18;
      v28[8] = v19;
      memmove(__dst, v12, 0xB0uLL);
      UIScreen.Dimensions.size.getter(v21);
      if (*(*&v28[0] + 16) == a1 && *(*&v28[0] + 24) == a2)
      {
        break;
      }

      if (sub_ABB3C0())
      {
        break;
      }

      v12 += 176;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    sub_2F52E4(v28, &v27);
    sub_3F250(v41);
    v38 = __dst[8];
    v39 = __dst[9];
    v40 = __dst[10];
    v34 = __dst[4];
    v35 = __dst[5];
    v36 = __dst[6];
    v37 = __dst[7];
    v30 = __dst[0];
    v31 = __dst[1];
    v32 = __dst[2];
    v33 = __dst[3];
  }

  else
  {
LABEL_7:
    sub_3F250(v41);
    sub_2F531C(&v30);
  }

  v22 = v39;
  *(a3 + 128) = v38;
  *(a3 + 144) = v22;
  *(a3 + 160) = v40;
  v23 = v35;
  *(a3 + 64) = v34;
  *(a3 + 80) = v23;
  v24 = v37;
  *(a3 + 96) = v36;
  *(a3 + 112) = v24;
  v25 = v31;
  *a3 = v30;
  *(a3 + 16) = v25;
  result = v33;
  *(a3 + 32) = v32;
  *(a3 + 48) = result;
  return result;
}

Swift::Void __swiftcall TextStackView.layoutSubviews()()
{
  v1 = v0;
  v106.receiver = v0;
  v106.super_class = type metadata accessor for TextStackView();
  objc_msgSendSuper2(&v106, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v12 = v11;

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_2E94A4(v107, v3, v5, v7, v9, v12);
  v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v82 = v1[v13];
  swift_beginAccess();

  v105 = sub_2E4A4C(v14);
  v15 = *(*&v107[0] + 16);
  if (!v15)
  {
LABEL_71:
    v78 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();

    *&v1[v78] = _swiftEmptyDictionarySingleton;
    *&v94 = v3;
    *(&v94 + 1) = v5;
    *&v95 = v7;
    *(&v95 + 1) = v9;
    *&v96 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = *&v1[v78];
    *&v1[v78] = 0x8000000000000000;
    sub_91D88(v107, &v94, isUniquelyReferenced_nonNull_native);
    *&v1[v78] = v85[0];
    swift_endAccess();
    sub_2E927C(v105);

    return;
  }

  v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews;
  v17 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  v18 = v1;
  v19 = (*&v107[0] + 32);
  sub_2F5360(v107, &v94);
  v80 = v17;
  swift_beginAccess();
  v81 = v18;
  swift_beginAccess();
  for (i = v15 - 1; ; --i)
  {
    v21 = v16;
    v22 = *v19;
    v23 = v19[2];
    v95 = v19[1];
    v96 = v23;
    v94 = v22;
    v24 = v19[3];
    v25 = v19[4];
    v26 = v19[6];
    v99 = v19[5];
    v100 = v26;
    v97 = v24;
    v98 = v25;
    v27 = v19[7];
    v28 = v19[8];
    v29 = v19[10];
    v103 = v19[9];
    v104 = v29;
    v101 = v27;
    v102 = v28;
    v30 = v94;
    v32 = *(&v95 + 1);
    v31 = v95;
    v33 = v23;
    if (BYTE8(v23))
    {
      sub_2F52E4(&v94, &v86);

      sub_E1F1C(v31, v32, v33, 1);
      v34 = [v31 string];
      v35 = sub_AB92A0();
      v37 = v36;

      sub_E1E78(v31, v32, v33, 1);

      v32 = v37;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v31 = v35;
LABEL_7:
        v38 = v31 & 0xFFFFFFFFFFFFLL;
        goto LABEL_9;
      }
    }

    else
    {
      sub_2F52E4(&v94, &v86);

      sub_E1F1C(v31, v32, v33, 0);

      if ((v32 & 0x2000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    v38 = HIBYTE(v32) & 0xF;
LABEL_9:
    v39 = v30[32];
    v16 = v21;
    if (v38)
    {
      break;
    }

    if (v39)
    {
      v41 = v39;
      if (([v41 isHidden] & 1) == 0)
      {
        [v41 setHidden:1];
      }
    }

    else
    {
    }

LABEL_62:
    sub_2F5398(&v94);
    if (!i)
    {
      goto LABEL_70;
    }

    v19 += 11;
  }

  if (v39)
  {
    v40 = v30[32];
LABEL_39:
    v60 = v39;
    v61 = [v40 isHidden];

    if (v61)
    {
      [v40 setHidden:0];
    }

    v90 = v99;
    v91 = v100;
    v92 = v101;
    v93 = v102;
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v89 = v98;
    UIScreen.Dimensions.size.getter(*&v97);
    v111[4] = v90;
    v111[5] = v91;
    v111[6] = v92;
    v111[7] = v93;
    v111[0] = v86;
    v111[1] = v87;
    v111[2] = v88;
    v111[3] = v89;
    sub_109B04(&v95, v85);
    TextDrawing.View.textDrawingContext.setter(v111);
    v62 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
    swift_beginAccess();
    v63 = v40[v62];
    v40[v62] = v82;
    if (v82 != v63)
    {
      v64 = 1.0;
      if (v82)
      {
        UIInterfaceGetContentDisabledAlpha();
      }

      [v40 setAlpha:v64];
    }

    v65 = *v80;
    if (*v80)
    {
      v83 = *(v80 + 8);
      v84 = *(v80 + 24);
      v66 = v40;
      v67 = v65;
    }

    else
    {
      v68 = v40;
      v69 = UIView.Shadow.identity.unsafeMutableAddressor();
      v83 = *(v69 + 1);
      v84 = *(v69 + 3);
      v67 = *v69;
    }

    v108 = v67;
    v109 = v83;
    v110 = v84;
    v70 = BYTE8(v94);
    v71 = v65;
    UIView.shadow.setter(&v108);
    if (v70 > 2)
    {
      if (v70 == 3)
      {
        v74 = 4;
      }

      else if (v70 == 4)
      {
        v74 = 7;
      }

      else
      {
        v74 = 8;
      }
    }

    else if (v70 == 1)
    {
      v72 = [objc_opt_self() sharedApplication];
      v73 = [v72 userInterfaceLayoutDirection];

      if (v73 == &dword_0 + 1)
      {
        v74 = 7;
      }

      else
      {
        v74 = 8;
      }
    }

    else
    {
      v75 = [objc_opt_self() sharedApplication];
      v76 = [v75 userInterfaceLayoutDirection];

      if (v76 == &dword_0 + 1)
      {
        v74 = 8;
      }

      else
      {
        v74 = 7;
      }
    }

    [v40 setContentMode:v74];

    sub_2EF424(v30[2], v30[3]);

    sub_ABA490();
    [v40 setFrame:?];

    goto LABEL_62;
  }

  v42 = *&v81[v21];
  if (!(v42 >> 62))
  {
    v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
    if (v43)
    {
      goto LABEL_18;
    }

LABEL_32:
    type metadata accessor for TextDrawing.View();
    v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v54 = objc_opt_self();
    v47 = v53;
    v55 = [v54 clearColor];
    [v47 setBackgroundColor:v55];

    [v81 addSubview:v47];
LABEL_33:
    v56 = v30[32];
    v30[32] = v47;
    v40 = v47;

    v57 = v30[32];
    if (v57)
    {
      v58 = [v57 layer];
      swift_beginAccess();
      if (v30[17])
      {

        v59 = sub_AB9260();
      }

      else
      {
        v59 = 0;
      }

      [v58 setCompositingFilter:v59];

      swift_unknownObjectRelease();
    }

    goto LABEL_39;
  }

  v43 = sub_ABB060();
  if (!v43)
  {
    goto LABEL_32;
  }

LABEL_18:
  v44 = v43 - 1;
  if (!__OFSUB__(v43, 1))
  {
    if ((v42 & 0xC000000000000001) != 0)
    {

      v45 = sub_36167C(v44, v42);
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v44 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_75;
      }

      v45 = *(v42 + 8 * v44 + 32);
    }

    swift_beginAccess();
    v46 = *&v81[v21];
    if (v46 >> 62)
    {
      if (!sub_ABB060())
      {
        goto LABEL_74;
      }
    }

    else if (!*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_74;
    }

    v47 = v45;
    v48 = sub_2F32C4(sub_28572C);
    if (!v48)
    {
      v49 = *&v81[v21];
      if (v49 >> 62)
      {
        v77 = sub_ABB060();
        v51 = __OFSUB__(v77, 1);
        v52 = v77 - 1;
        if (v51)
        {
LABEL_69:
          __break(1u);
LABEL_70:
          sub_3F250(v107);
          v1 = v81;
          goto LABEL_71;
        }
      }

      else
      {
        v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
        v51 = __OFSUB__(v50, 1);
        v52 = v50 - 1;
        if (v51)
        {
          goto LABEL_69;
        }
      }

      v48 = sub_2E616C(v52, sub_28572C);
    }

    swift_endAccess();
    goto LABEL_33;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

double TextStackView.sizeThatFits(_:)(CGFloat a1, double a2)
{
  v5 = [v2 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (a2 <= 5.99231045e307)
  {
    v8 = a2;
  }

  else
  {
    v8 = 5.99231045e307;
  }

  sub_2E94A4(v10, 0.0, 0.0, a1, v8, v7);
  sub_3F250(v10);
  return *&v10[3];
}

Swift::Void __swiftcall TextStackView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for TextStackView();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v4 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4)
  {
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

      goto LABEL_16;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
LABEL_16:
      if (!isa)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14)
  {
    v15 = *(v14 + 64);

    [v15 removeAllObjects];
    [*(v14 + 80) removeAllObjects];
    if (*(v14 + 96))
    {
      *(v14 + 104) = 1;
    }

    else
    {
      v16 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v14];
    }
  }

  [v2 setNeedsLayout];
  if (isa)
  {
LABEL_17:
    [(objc_class *)isa displayScale];
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30);
  v17 = [v2 traitCollection];
  [v17 displayScale];

  sub_8A2B8();
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }
}

Swift::Int sub_2E90D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_ABB5C0();
  sub_2F3228(v1, v2, v3, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_ABB600(*&v6);
  return sub_ABB610();
}

void sub_2E9164()
{
  v1 = v0[4];
  sub_2F3228(*v0, v0[1], v0[2], v0[3]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_ABB600(*&v2);
}

Swift::Int sub_2E91B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_ABB5C0();
  sub_2F3228(v1, v2, v3, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_ABB600(*&v6);
  return sub_ABB610();
}

uint64_t sub_2E923C(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_2E927C(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  v22 = OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews;

  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = v7;
LABEL_11:
    v7 = (v11 - 1) & v11;
    v13 = *(v2 + v8);
    if (*(v13 + 16))
    {
      v14 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_2EBF88(v15, v16);
      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v17);

        v20 = *(v19 + 256);
        if (v20)
        {
          *(v19 + 256) = 0;
          [v20 setHidden:1];
          swift_beginAccess();
          v21 = v20;
          sub_AB9730();
          if (*(&dword_10 + (*(v2 + v22) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v22) & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v11 = *(v4 + 8 * v12);
    ++v9;
    if (v11)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2E94A4(char **a1@<X8>, CGFloat a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v293 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v12 - 8);
  v307 = &v289 - v13;
  v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  v294 = v6;
  v15 = *(v6 + v14);
  v409[0] = a2;
  v301 = a3;
  v302 = a5;
  v409[1] = a3;
  v409[2] = a4;
  v409[3] = a5;
  v309 = a6;
  v409[4] = a6;
  if (*(v15 + 16))
  {

    v16 = sub_2EC31C(v409);
    if (v17)
    {
      v18 = (*(v15 + 56) + (v16 << 6));
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v356 = *v18;
      v357 = v21;
      v358 = v20;
      v359 = v19;
      sub_2F5360(&v356, &v345);

      v23 = *(&v356 + 1);
      v22 = v356;
      v25 = *(&v357 + 1);
      v24 = *&v357;
      v27 = *(&v358 + 1);
      v26 = *&v358;
      v28 = *(&v359 + 1);
      v29 = *&v359;
LABEL_95:
      v288 = v293;
      *v293 = v22;
      v288[1] = v23;
      v288[2] = v24;
      v288[3] = v25;
      v288[4] = v26;
      v288[5] = v27;
      v288[6] = v29;
      v288[7] = v28;
      return;
    }
  }

  v292 = v14;
  v30 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  v31 = v294;
  swift_beginAccess();
  v32 = v31;
  v29 = 0.0;
  v308 = *(v31 + v30);
  if (!v308)
  {
    v145 = 0;
    v28 = 0.0;
    v22 = _swiftEmptyArrayStorage;
    v27 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
LABEL_94:
    *&v356 = v22;
    *(&v356 + 1) = v23;
    *&v357 = v24;
    *(&v357 + 1) = v25;
    *&v358 = v26;
    *(&v358 + 1) = v27;
    *&v359 = v29;
    *(&v359 + 1) = v28;
    v285 = v292;
    v286 = v32;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v393 = *(v286 + v285);
    *(v286 + v285) = 0x8000000000000000;
    sub_91D88(&v356, v409, isUniquelyReferenced_nonNull_native);
    *(v286 + v285) = v393;
    swift_endAccess();

    sub_17654(v145);
    goto LABEL_95;
  }

  sub_11F44(&v393);
  v33 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v34 = *(v31 + v33);
  if (v34 >> 62)
  {
    goto LABEL_98;
  }

  v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
  v316 = a2;
  v317 = a4;
  if (!v35)
  {
    v389 = v397;
    v390 = v398;
    v391 = v399;
    v392 = v400;
    v385 = v393;
    v386 = v394;
    v387 = v395;
    v388 = v396;

    v297 = 0;
    v298 = 0;
    v28 = 0.0;
    v41 = _swiftEmptyArrayStorage;
    v128 = _swiftEmptyArrayStorage[2];
    if (v128)
    {
      goto LABEL_59;
    }

    goto LABEL_64;
  }

  v314 = v35 - 1;
  if (v35 < 1)
  {
    __break(1u);
    goto LABEL_100;
  }

  v36 = v294 + OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle;
  v315 = v34 & 0xC000000000000001;

  v313 = v36;
  swift_beginAccess();
  v297 = 0;
  v298 = 0;
  v28 = 0.0;
  v318 = 0.0;
  *&v37 = 0.0;
  v349 = v397;
  v350 = v398;
  v351 = v399;
  v352 = v400;
  v291 = &v357;
  v300 = (&v356 + 7);
  v345 = v393;
  v346 = v394;
  v347 = v395;
  v348 = v396;
  v38 = *&UIEdgeInsetsZero.bottom;
  v295 = *&UIEdgeInsetsZero.top;
  v296 = v38;
  v39 = 0.0;
  MinY = 0.0;
  v40 = 0.0;
  v290 = NSParagraphStyleAttributeName;
  v41 = _swiftEmptyArrayStorage;
  v42 = v302;
  v323 = v301;
  v299 = v34;
  while (1)
  {
    v322 = *&v37;
    if (v315)
    {
      v43 = sub_36003C(v37, v34);
    }

    else
    {
      v43 = *(v34 + 8 * v37 + 32);
    }

    swift_beginAccess();
    v44 = *(v43 + 48);
    v45 = *(v43 + 80);
    v46 = *(v43 + 96);
    v411 = *(v43 + 64);
    v412 = v45;
    v413 = v46;
    v47 = *(v43 + 32);
    v410[1] = v44;
    v410[0] = v47;
    v320 = *&v44;
    v48 = *(&v411 + 1);
    swift_beginAccess();
    v49 = *(v43 + 112);
    v50 = *(v43 + 120);
    if ((v48 & ~(v48 >> 63)) != 0)
    {
      *&v324 = *(v43 + 112);
      *(&v324 + 1) = v50;
      sub_2F118(v410, &v356);
      sub_2F118(v410, &v356);

      v51 = v307;
      sub_AB3550();
      v52 = sub_AB35C0();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      sub_36A48();
      if ((v48 & ~(v48 >> 63)) == 1)
      {
        v53 = sub_ABAA50();
      }

      else
      {
        v53 = sub_ABAA40();
      }

      v49 = v53;
      v55 = v54;
      sub_12E1C(v51, &qword_DEAC40);

      v50 = v55;
    }

    else
    {
      sub_2F118(v410, &v356);
      sub_2F118(v410, &v356);
    }

    v56 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v56 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v310 = v40;
      v311 = v29;
      v312 = v39;
      v57 = a4;
      v58 = a2;
      if ((*(v313 + 32) & 1) == 0)
      {
        v415.size.width = *(v313 + 16);
        v59 = *(v313 + 24);
        v60 = *v313;
        v61 = *(v313 + 8);
        v415.origin.x = *v313;
        v415.origin.y = v61;
        width = v415.size.width;
        v415.size.height = v59;
        v440.origin.x = a2;
        v440.origin.y = v323;
        v440.size.width = a4;
        v440.size.height = v42;
        v416 = CGRectIntersection(v415, v440);
        IsNull = CGRectIsNull(v416);
        v57 = a4;
        v58 = a2;
        if (!IsNull)
        {
          v417.origin.x = v60;
          v417.origin.y = v61;
          v64 = width;
          v417.size.width = width;
          v417.size.height = v59;
          *&v305 = CGRectGetMinX(v417);
          v418.origin.x = a2;
          v65 = v323;
          v418.origin.y = v323;
          v418.size.width = a4;
          v418.size.height = v42;
          MinX = CGRectGetMinX(v418);
          *&v306 = v59;
          v67 = *&v305 - MinX;
          v419.origin.x = a2;
          v419.origin.y = v65;
          v419.size.width = a4;
          v419.size.height = v42;
          MaxX = CGRectGetMaxX(v419);
          v420.origin.x = v60;
          v420.origin.y = v61;
          v420.size.width = v64;
          *&v420.size.height = v306;
          v69 = MaxX - CGRectGetMaxX(v420);
          v57 = v67;
          v58 = a2;
          if (v69 >= v67)
          {
            v421.origin.x = a2;
            v421.origin.y = v323;
            v421.size.width = a4;
            v421.size.height = v42;
            v58 = CGRectGetWidth(v421) - v69 + a2;
            v57 = v69;
          }
        }
      }

      v70 = v58;
      sub_2F3F88(v410, v49, v50);
      sub_AB3A00();
      v72 = v71;
      v340 = v349;
      v341 = v350;
      v342 = v351;
      v343 = v352;
      v336 = v345;
      v337 = v346;
      v338 = v347;
      v339 = v348;
      v73 = sub_11D03C(&v336);
      v74 = *(v43 + 48);
      v75 = *(v43 + 64);
      v76 = *(v43 + 96);
      v414[3] = *(v43 + 80);
      v414[4] = v76;
      if (v73 == 1)
      {
        v29 = v42;
      }

      else
      {
        v29 = v42 + *(&v342 + 1) - v72;
      }

      v414[1] = v74;
      v414[2] = v75;
      v414[0] = *(v43 + 32);
      sub_2F118(v414, &v356);
      v77 = sub_2F4268(v414);
      sub_2F174(v414);
      v319 = v41;
      if (v77)
      {
        _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(v49, v50, v77);
        v304 = v78;
        v305 = v79;
        v303 = v80;
        v306 = v81;

        *&v82.f64[0] = v304;
        *&v82.f64[1] = v305;
        *&v83.f64[0] = v303;
        *&v83.f64[1] = v306;
        a2 = v316;
        a4 = v317;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v82, v295), vceqq_f64(v83, v296)))) & 1) == 0)
        {
          v29 = v29 + *&v304 + *&v303;
        }
      }

      else
      {
        a2 = v316;
        a4 = v317;
      }

      v86 = *(v308 + 32);
      v87 = *(v308 + 64);
      v88 = *(v308 + 72);
      v34 = *(v308 + 80);
      v89 = *(v308 + 88);
      v90 = *(v308 + 40);
      sub_108594(v49, v50, v410, v90, v87, v88, v34, v89, &v401, v57, v29, v86);
      v381 = v405;
      v382 = v406;
      v383 = v407;
      v384 = v408;
      v377 = v401;
      v378 = v402;
      v379 = v403;
      v380 = v404;
      sub_2F174(v410);

      *&v28 = *&v318 + v408;
      if (__OFADD__(*&v318, v408))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v35 = sub_ABB060();
        goto LABEL_8;
      }

      if (v48 < 0)
      {
        LOBYTE(v374[0]) = 0;
        if (BYTE8(v402))
        {
          *&v93 = *&v318 + v408;
          v34 = v401;
          v94 = [v401 length];
          v95 = swift_allocObject();
          *(v95 + 16) = v374;
          sub_17654(v298);
          v96 = swift_allocObject();
          *(v96 + 16) = sub_2F5A64;
          *(v96 + 24) = v95;
          *&v358 = sub_18BC40;
          *(&v358 + 1) = v96;
          *&v356 = _NSConcreteStackBlock;
          *(&v356 + 1) = 1107296256;
          *&v357 = sub_9B8A0;
          *(&v357 + 1) = &block_descriptor_81;
          v97 = _Block_copy(&v356);

          [v34 enumerateAttribute:v290 inRange:0 options:v94 usingBlock:{0, v97}];
          _Block_release(v97);
          LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

          if (v94)
          {
            goto LABEL_97;
          }

          v98 = sub_2F5A64;
          v28 = v93;
          v91 = v374[0];
        }

        else
        {
          v91 = 0;
          v95 = v297;
          v98 = v298;
        }

        v92 = v70;
        v297 = v95;
        v298 = v98;
        v41 = v319;
        v34 = v299;
      }

      else
      {
        v41 = v319;
        v91 = LOBYTE(v320);
        v34 = v299;
        v92 = v70;
      }

      v40 = *(&v404 + 1);
      v29 = *&v404;
      if (((1 << v91) & 0x15) != 0)
      {
        v99 = v323;
        v100 = v57;
        v101 = v42;
        v39 = CGRectGetMinX(*&v92);
      }

      else if (((1 << v91) & 0x22) != 0)
      {
        v102 = v323;
        v103 = v57;
        v104 = v42;
        v105 = CGRectGetMaxX(*&v92);
        v422.origin.x = 0.0;
        v422.origin.y = 0.0;
        v422.size.width = v29;
        v422.size.height = v40;
        v39 = v105 - CGRectGetWidth(v422);
      }

      else
      {
        sub_ABA470();
        v39 = v106;
        v29 = v107;
        v40 = v108;
      }

      v374[4] = v349;
      v374[5] = v350;
      v375 = v351;
      v376 = v352;
      v374[0] = v345;
      v374[1] = v346;
      v374[2] = v347;
      v374[3] = v348;
      if (sub_11D03C(v374) == 1)
      {
        v423.origin.x = a2;
        v423.origin.y = v323;
        v423.size.width = a4;
        v423.size.height = v42;
        MinY = CGRectGetMinY(v423);
        v109 = 0.0;
      }

      else
      {
        v360 = v349;
        v361 = v350;
        v362 = v351;
        v363[0] = v352;
        v356 = v345;
        v357 = v346;
        v358 = v347;
        v359 = v348;
        sub_109B04(&v356, &v366);
        v424.size.width = v311;
        v424.origin.x = v312;
        v424.origin.y = MinY;
        v424.size.height = v310;
        MaxY = CGRectGetMaxY(v424);
        v425.origin.y = v72 + MaxY - *(&v375 + 1);
        v425.origin.x = v39;
        MinY = v425.origin.y;
        v425.size.width = v29;
        v425.size.height = v40;
        v111 = CGRectGetMinY(v425);
        sub_12E1C(&v345, &qword_DF08F8);
        v109 = v111 - MaxY + 0.0;
      }

      sub_109B04(&v401, &v356);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_6AA40(0, *(v41 + 2) + 1, 1, v41);
      }

      v113 = *(v41 + 2);
      v112 = *(v41 + 3);
      if (v113 >= v112 >> 1)
      {
        v41 = sub_6AA40((v112 > 1), v113 + 1, 1, v41);
      }

      v114 = v378;
      v115 = v300;
      *v300 = v377;
      v115[1] = v114;
      v116 = v380;
      v115[2] = v379;
      v115[3] = v116;
      v117 = v384;
      v115[6] = v383;
      v115[7] = v117;
      v118 = v382;
      v115[4] = v381;
      v115[5] = v118;
      *(v41 + 2) = v113 + 1;
      v119 = &v41[176 * v113];
      *(v119 + 4) = v43;
      v119[40] = v91;
      *(v119 + 41) = v356;
      v120 = v357;
      v121 = v358;
      v122 = v359;
      *(v119 + 105) = v360;
      *(v119 + 89) = v122;
      *(v119 + 73) = v121;
      *(v119 + 57) = v120;
      v123 = v361;
      v124 = v362;
      v125 = v363[0];
      *(v119 + 21) = *(v363 + 15);
      *(v119 + 153) = v125;
      *(v119 + 137) = v124;
      *(v119 + 121) = v123;
      *&v124 = MinY;
      *(v119 + 22) = v39;
      *(v119 + 23) = v124;
      *(v119 + 24) = v29;
      *(v119 + 25) = v40;
      *&v123 = v39;
      *&v125 = v29;
      v126 = v40;
      Height = CGRectGetHeight(*&v123);

      sub_12E1C(&v345, &qword_DF08F8);

      sub_2F174(v410);
      v323 = v323 + v109 + Height;
      v42 = v42 - (v109 + Height);
      v370 = v381;
      v371 = v382;
      v372 = v383;
      v373 = v384;
      v366 = v377;
      v367 = v378;
      v368 = v379;
      v369 = v380;
      UIScreen.Dimensions.size.getter(*&v379);
      v328 = v370;
      v329 = v371;
      v330 = v372;
      v331 = v373;
      v324 = v366;
      v325 = v367;
      v84 = v368;
      v85 = v369;
      v318 = v28;
    }

    else
    {
      sub_2F174(v410);

      sub_2F174(v410);
      v328 = v349;
      v329 = v350;
      v330 = v351;
      v331 = v352;
      v324 = v345;
      v325 = v346;
      v84 = v347;
      v85 = v348;
    }

    v326 = v84;
    v327 = v85;
    if (v314 == *&v322)
    {
      break;
    }

    v349 = v328;
    v350 = v329;
    v351 = v330;
    v352 = v331;
    v345 = v324;
    v346 = v325;
    v37 = *&v322 + 1;
    v347 = v326;
    v348 = v327;
  }

  v389 = v328;
  v390 = v329;
  v391 = v330;
  v392 = v331;
  v385 = v324;
  v386 = v325;
  v387 = v326;
  v388 = v327;
  v29 = 0.0;
  v128 = *(v41 + 2);
  if (!v128)
  {
LABEL_64:
    sub_12E1C(&v385, &qword_DF08F8);

    v27 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
    v26 = 0.0;
    v22 = v41;
    v25 = 0.0;
    v32 = v294;
    v145 = v298;
    goto LABEL_94;
  }

LABEL_59:
  v129 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  v130 = v294;
  swift_beginAccess();
  if (!*(v130 + v129))
  {
    v146 = *(v41 + 10);
    v363[0] = *(v41 + 9);
    v363[1] = v146;
    v147 = *(v41 + 12);
    v364 = *(v41 + 11);
    v365 = v147;
    v148 = *(v41 + 6);
    v359 = *(v41 + 5);
    v360 = v148;
    v149 = *(v41 + 8);
    v361 = *(v41 + 7);
    v362 = v149;
    v150 = *(v41 + 3);
    v356 = *(v41 + 2);
    v357 = v150;
    v358 = *(v41 + 4);
    v151 = v356;
    swift_beginAccess();
    v152 = *(v151 + 48);
    v153 = *(v151 + 80);
    v154 = *(v151 + 96);
    v379 = *(v151 + 64);
    v380 = v153;
    v381 = v154;
    v155 = *(v151 + 32);
    v378 = v152;
    v377 = v155;
    swift_beginAccess();
    v156 = *(v151 + 112);
    v157 = *(v151 + 120);
    v158 = *&v381;
    sub_2F52E4(&v356, &v345);

    sub_2F118(&v377, &v345);

    TextLabelProperties.scaledValue(forValue:text:)(v156, v157, v158);

    sub_2F174(&v377);
    sub_AB3A10();
    v144 = v159;

    goto LABEL_66;
  }

  if (*(v130 + v129) == 1)
  {
    v131 = &v41[176 * v128];
    v132 = *(v131 - 9);
    v133 = *(v131 - 7);
    v357 = *(v131 - 8);
    v358 = v133;
    v356 = v132;
    v134 = *(v131 - 6);
    v135 = *(v131 - 5);
    v136 = *(v131 - 4);
    v362 = *(v131 - 3);
    v361 = v136;
    v360 = v135;
    v359 = v134;
    v137 = *(v131 - 2);
    v138 = *(v131 - 1);
    v139 = *v131;
    v365 = *(v131 + 1);
    v364 = v139;
    v363[1] = v138;
    v363[0] = v137;
    v141 = *(&v139 + 1);
    v140 = *&v139;
    v142 = v365;
    sub_2F52E4(&v356, &v345);
    v426.origin.x = a2;
    v426.origin.y = v301;
    v426.size.height = v302;
    v426.size.width = a4;
    CGRectGetMaxY(v426);
    v427.origin.x = v140;
    v427.origin.y = v141;
    v427.size = v142;
    CGRectGetMaxY(v427);
    sub_AB3A00();
    v144 = v143;
LABEL_66:
    sub_2F5398(&v356);
    goto LABEL_68;
  }

  v160 = &v41[176 * v128];
  v161 = *(v160 - 9);
  v162 = *(v160 - 7);
  v357 = *(v160 - 8);
  v358 = v162;
  v356 = v161;
  v163 = *(v160 - 6);
  v164 = *(v160 - 5);
  v165 = *(v160 - 4);
  v362 = *(v160 - 3);
  v361 = v165;
  v360 = v164;
  v359 = v163;
  v166 = *(v160 - 2);
  v167 = *(v160 - 1);
  v168 = *v160;
  v365 = *(v160 + 1);
  v364 = v168;
  v363[1] = v167;
  v363[0] = v166;
  v170 = *(&v168 + 1);
  v169 = *&v168;
  v171 = v365;
  v172 = v356;
  sub_2F52E4(&v356, &v345);

  v428.origin.x = a2;
  v428.origin.y = v301;
  v428.size.height = v302;
  v428.size.width = a4;
  v173 = CGRectGetMaxY(v428);
  v429.origin.x = v169;
  v429.origin.y = v170;
  v429.size = v171;
  v174 = v173 - CGRectGetMaxY(v429);
  swift_beginAccess();
  v175 = *(v172 + 48);
  v176 = *(v172 + 80);
  v177 = *(v172 + 96);
  v379 = *(v172 + 64);
  v380 = v176;
  v381 = v177;
  v178 = *(v172 + 32);
  v378 = v175;
  v377 = v178;
  swift_beginAccess();
  v179 = *(v172 + 112);
  v180 = *(v172 + 120);
  sub_2F118(&v377, &v345);

  sub_2F45C4(&v377, v179, v180);
  v182 = v181;

  sub_2F174(&v377);

  sub_2F5398(&v356);
  v144 = v174 - v182;
LABEL_68:
  v183 = *(v41 + 2);
  v319 = v41;
  v322 = v28;
  v323 = v183;
  if (v183 != 0.0)
  {
    v184 = (v41 + 32);
    v22 = _swiftEmptyArrayStorage;
    v25 = 0.0;
    while (1)
    {
      v193 = *v184;
      v194 = v184[2];
      v346 = v184[1];
      v347 = v194;
      v345 = v193;
      v195 = v184[3];
      v196 = v184[4];
      v197 = v184[6];
      v350 = v184[5];
      v351 = v197;
      v348 = v195;
      v349 = v196;
      v198 = v184[7];
      v199 = v184[8];
      v200 = v184[10];
      v354 = v184[9];
      v355 = v200;
      v352 = v198;
      v353 = v199;
      v201 = v354;
      v202 = v200;
      sub_2F52E4(&v345, &v356);
      v431.origin = v201;
      v431.size = v202;
      v203 = CGRectGetMinX(v431);
      v432.origin = v201;
      v432.size = v202;
      v204 = CGRectGetMinY(v432);
      v342 = v351;
      v343 = v352;
      v344 = v353;
      v338 = v347;
      v339 = v348;
      v340 = v349;
      v341 = v350;
      v336 = v345;
      v337 = v346;
      v362 = v351;
      v363[0] = v352;
      v363[1] = v353;
      v358 = v347;
      v359 = v348;
      v361 = v350;
      v360 = v349;
      v205 = v144 + v204;
      v356 = v345;
      v357 = v346;
      *&v364 = v203;
      *(&v364 + 1) = v144 + v204;
      v365 = v202;
      sub_2F52E4(&v345, &v324);
      sub_2F52E4(&v356, &v324);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_6AA40(0, *(v22 + 2) + 1, 1, v22);
      }

      v207 = *(v22 + 2);
      v206 = *(v22 + 3);
      if (v207 >= v206 >> 1)
      {
        v22 = sub_6AA40((v206 > 1), v207 + 1, 1, v22);
      }

      v208 = BYTE8(v345);
      *(v22 + 2) = v207 + 1;
      v209 = &v22[176 * v207];
      v210 = v362;
      v211 = v360;
      v212 = v359;
      *(v209 + 7) = v361;
      *(v209 + 8) = v210;
      *(v209 + 5) = v212;
      *(v209 + 6) = v211;
      v213 = v365;
      v214 = v363[1];
      v215 = v363[0];
      *(v209 + 11) = v364;
      *(v209 + 12) = v213;
      *(v209 + 9) = v215;
      *(v209 + 10) = v214;
      v216 = v356;
      v217 = v358;
      *(v209 + 3) = v357;
      *(v209 + 4) = v217;
      *(v209 + 2) = v216;
      v218 = 1 << v208;
      if ((v218 & 0x15) != 0)
      {
        v430.origin.x = v203;
        v430.origin.y = v205;
        v430.size = v202;
        v185 = CGRectGetMaxX(v430);
        v186 = a2;
        v187 = v301;
        v188 = v302;
        v189 = v317;
      }

      else
      {
        if ((v218 & 0x22) == 0)
        {
          v434.origin.x = v203;
          v434.origin.y = v205;
          v434.size = v202;
          v219 = CGRectGetWidth(v434);
          if (v25 <= v219)
          {
            v25 = v219;
          }

          v330 = v342;
          v331 = v343;
          v332 = v344;
          v326 = v338;
          v327 = v339;
          v328 = v340;
          v329 = v341;
          v324 = v336;
          v325 = v337;
          v333 = v203;
          v334 = v205;
          v335 = v202;
          sub_2F5398(&v324);
          v192 = &v345;
          goto LABEL_74;
        }

        v433.origin.x = a2;
        v433.origin.y = v301;
        v433.size.height = v302;
        v433.size.width = v317;
        v185 = CGRectGetMaxX(v433);
        v186 = v203;
        v187 = v205;
        v188 = v202.height;
        v189 = v202.width;
      }

      v190 = CGRectGetMinX(*&v186);
      sub_2F5398(&v345);
      v191 = v185 - v190;
      a2 = v316;
      if (v25 <= v191)
      {
        v25 = v191;
      }

      v330 = v342;
      v331 = v343;
      v332 = v344;
      v326 = v338;
      v327 = v339;
      v328 = v340;
      v329 = v341;
      v324 = v336;
      v325 = v337;
      v333 = v203;
      v334 = v205;
      v335 = v202;
      v192 = &v324;
LABEL_74:
      sub_2F5398(v192);
      v184 += 11;
      --*&v183;
      if (v183 == 0.0)
      {
        goto LABEL_86;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
  v25 = 0.0;
LABEL_86:
  v220 = *(v22 + 2);
  if (v220)
  {
    v221 = *(v22 + 18);
    v222 = *(v22 + 22);
    v223 = *(v22 + 23);
    v224 = *(v22 + 24);
    v225 = *(v22 + 25);

    v435.origin.x = v222;
    v435.origin.y = v223;
    v435.size.width = v224;
    v435.size.height = v225;
    v226 = CGRectGetMinY(v435);
    v227 = v319;
    if (v220 <= *(v22 + 2))
    {
      v320 = v221 + v226;
      MinY = v221;
      v228 = &v22[176 * v220];
      v229 = *(v228 - 9);
      v230 = *(v228 - 7);
      v357 = *(v228 - 8);
      v358 = v230;
      v356 = v229;
      v231 = *(v228 - 6);
      v232 = *(v228 - 5);
      v233 = *(v228 - 4);
      v362 = *(v228 - 3);
      v361 = v233;
      v360 = v232;
      v359 = v231;
      v234 = *(v228 - 2);
      v235 = *(v228 - 1);
      v236 = *v228;
      v365 = *(v228 + 1);
      v364 = v236;
      v363[1] = v235;
      v363[0] = v234;
      v237 = *(&v236 + 1);
      v239 = v365.height;
      v238 = v365.width;
      v240 = *&v236;
      v241 = *(&v234 + 1);
      sub_2F52E4(&v356, &v345);
      v436.origin.x = a2;
      v436.origin.y = v301;
      v436.size.height = v302;
      v436.size.width = v317;
      v242 = CGRectGetHeight(v436);
      v437.origin.x = v240;
      v437.origin.y = v237;
      v437.size.width = v238;
      v437.size.height = v239;
      v29 = v241;
      v243 = CGRectGetMaxY(v437);
      sub_2F5398(&v356);
      v24 = v241 + v242 - v243;
      if (v323 != 0.0)
      {
        goto LABEL_89;
      }

LABEL_92:
      sub_12E1C(&v385, &qword_DF08F8);

      v26 = 0.0;
      goto LABEL_93;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v29 = 0.0;
  v24 = 0.0;
  v320 = 0.0;
  MinY = 0.0;
  v227 = v319;
  if (v323 == 0.0)
  {
    goto LABEL_92;
  }

LABEL_89:
  v323 = v29;
  v244 = *(v227 + 2);
  if (v244)
  {
    v245 = *(v227 + 10);
    v363[0] = *(v227 + 9);
    v363[1] = v245;
    v246 = *(v227 + 12);
    v364 = *(v227 + 11);
    v365 = v246;
    v247 = *(v227 + 6);
    v359 = *(v227 + 5);
    v360 = v247;
    v248 = *(v227 + 8);
    v361 = *(v227 + 7);
    v362 = v248;
    v249 = *(v227 + 3);
    v356 = *(v227 + 2);
    v357 = v249;
    v358 = *(v227 + 4);
    v315 = *&v365.width;
    v316 = *(&v364 + 1);
    v250 = v365.height;
    v251 = v356;
    v252 = *&v364;
    v317 = *v363;
    v253 = &v227[176 * v244 + 32];
    v255 = *(v253 - 160);
    v254 = *(v253 - 144);
    v345 = *(v253 - 176);
    v346 = v255;
    v347 = v254;
    v256 = *(v253 - 80);
    v258 = *(v253 - 128);
    v257 = *(v253 - 112);
    v350 = *(v253 - 96);
    v351 = v256;
    v348 = v258;
    v349 = v257;
    v259 = *(v253 - 16);
    v261 = *(v253 - 64);
    v260 = *(v253 - 48);
    v354 = *(v253 - 32);
    v355 = v259;
    v352 = v261;
    v353 = v260;
    y = v354.y;
    v263 = v259;
    v264 = v345;
    x = v354.x;
    v318 = *(&v261 + 1);
    sub_2F52E4(&v356, &v324);
    sub_2F52E4(&v345, &v324);
    v438.origin.x = x;
    v438.origin.y = y;
    v438.size = v263;
    v266 = CGRectGetMaxY(v438);
    v439.origin.x = v252;
    *&v439.size.width = v315;
    v439.origin.y = v316;
    v439.size.height = v250;
    v267 = v266 - CGRectGetMinY(v439) + 0.0;
    swift_beginAccess();
    v268 = *(v251 + 48);
    v269 = *(v251 + 80);
    v270 = *(v251 + 96);
    v326 = *(v251 + 64);
    v327 = v269;
    v328 = v270;
    v324 = *(v251 + 32);
    v325 = v268;
    swift_beginAccess();
    v271 = *(v251 + 112);
    v272 = *(v251 + 120);
    v273 = *&v328;

    sub_2F118(&v324, &v336);

    TextLabelProperties.scaledValue(forValue:text:)(v271, v272, v273);
    v275 = v274;

    sub_2F174(&v324);
    v276 = v267 + v275 - v317;
    swift_beginAccess();
    v277 = *(v264 + 48);
    v278 = *(v264 + 80);
    v279 = *(v264 + 96);
    v338 = *(v264 + 64);
    v339 = v278;
    v340 = v279;
    v336 = *(v264 + 32);
    v337 = v277;
    swift_beginAccess();
    v280 = *(v264 + 112);
    v281 = *(v264 + 120);
    v282 = *(&v340 + 1);

    sub_2F118(&v336, v374);

    TextLabelProperties.scaledValue(forValue:text:)(v280, v281, v282);
    v284 = v283;
    sub_12E1C(&v385, &qword_DF08F8);

    sub_2F174(&v336);

    sub_2F5398(&v345);
    sub_2F5398(&v356);

    v26 = v276 + v284 - v318;
    v29 = v323;
LABEL_93:

    v32 = v294;
    v145 = v298;
    v28 = v322;
    v23 = v320;
    v27 = MinY;
    goto LABEL_94;
  }

LABEL_101:
  __break(1u);
}

void sub_2EADD4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  sub_15F84(a1, v9, &unk_DE8E40);
  if (v9[3])
  {
    sub_13C80(0, &qword_DF0930);
    if (swift_dynamicCast())
    {
      v7 = [v8 alignment];
      if (v7 >= 5)
      {
        v9[0] = 0;
        v9[1] = 0xE000000000000000;
        sub_ABAD90(24);
        v10._object = 0x8000000000B4AB80;
        v10._countAndFlagsBits = 0xD000000000000013;
        sub_AB94A0(v10);
        [v8 alignment];
        v11._countAndFlagsBits = 0x6C4174786554534ELL;
        v11._object = 0xEF746E656D6E6769;
        sub_AB94A0(v11);
        v12._countAndFlagsBits = 32;
        v12._object = 0xE100000000000000;
        sub_AB94A0(v12);
        [v8 alignment];
        type metadata accessor for NSTextAlignment(0);
        sub_ABAF70();
        sub_ABAFD0();
        __break(1u);
      }

      else
      {
        *a5 = 0x2010300uLL >> (8 * v7);
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_12E1C(v9, &unk_DE8E40);
  }
}

id TextStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment] = 1;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  *&v4[v11] = sub_99104(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  *&v4[v12] = sub_99214(_swiftEmptyArrayStorage);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id TextStackView.init(coder:)(void *a1)
{
  v2 = sub_2F53C8(a1);

  return v2;
}

id TextStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t TextStackView.Component.init(identifier:labelProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = a3[2];
  v4 = a3[3];
  v6 = a3[1];
  *(v3 + 64) = v5;
  *(v3 + 80) = v4;
  v7 = a3[3];
  *(v3 + 96) = a3[4];
  v8 = a3[1];
  v9 = *a3;
  *(v3 + 32) = *a3;
  *(v3 + 48) = v8;
  v10 = a3[4];
  *(v3 + 192) = v7;
  *(v3 + 208) = v10;
  *(v3 + 160) = v6;
  *(v3 + 176) = v5;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0xE000000000000000;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 240) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 144) = v9;
  sub_2F118(a3, &v12);
  return v3;
}

uint64_t sub_2EB2A8()
{
  v1 = *(v0 + 192);
  v40 = *(v0 + 176);
  v41 = v1;
  v42 = *(v0 + 208);
  v2 = *(v0 + 160);
  v38 = *(v0 + 144);
  v39 = v2;
  swift_beginAccess();
  v3 = *(v0 + 48);
  v43 = *(v0 + 32);
  v44 = v3;
  v4 = *(v0 + 80);
  v45 = *(v0 + 64);
  v46 = v4;
  v47 = *(v0 + 96);
  if ((*(&v40 + 1) & 0x8000000000000000) == 0)
  {
    v26 = v38;
    v27 = v39;
    v28 = *(&v39 + 1);
    v29 = v40;
    v30 = BYTE8(v40);
    v31 = v41;
    if ((*(&v45 + 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    v32 = v43;
    v33 = v44;
    v34 = *(&v44 + 1);
    v35 = v45;
    v36 = BYTE8(v45);
    v37 = v46;
    sub_2F118(&v43, v25);
    sub_2F118(&v38, v25);
    if (!_s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(&v26, &v32))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((*(&v45 + 1) & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  if (v38 == v43)
  {
    sub_2F118(&v43, v25);
    sub_2F118(&v38, v25);
LABEL_9:
    if (*(&v41 + 1) == *(&v46 + 1))
    {
      *&v25[0] = v42;
      *&v21[0] = v47;
      sub_7FD28();
      if (sub_AB38E0())
      {
        *&v25[0] = *(&v42 + 1);
        *&v21[0] = *(&v47 + 1);
        v6 = sub_AB38E0();
        sub_2F174(&v43);
        result = sub_2F174(&v38);
        if (v6)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v5 = sub_ABB3C0();
  sub_2F118(&v43, v25);
  sub_2F118(&v38, v25);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_2F174(&v43);
  sub_2F174(&v38);
LABEL_14:
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v22 = *(v0 + 64);
  v9 = v22;
  v23 = v8;
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 48);
  v21[0] = *(v0 + 32);
  v14 = v21[0];
  v21[1] = v13;
  v15 = *(v0 + 192);
  v25[2] = *(v0 + 176);
  v25[3] = v15;
  v25[4] = *(v0 + 208);
  v16 = *(v0 + 144);
  v25[1] = *(v0 + 160);
  v24 = v12;
  v25[0] = v16;
  v17 = *(v0 + 96);
  *(v0 + 192) = v11;
  *(v0 + 208) = v17;
  *(v0 + 160) = v10;
  *(v0 + 176) = v9;
  *(v0 + 144) = v14;
  sub_2F118(v21, &v20);
  result = sub_2F174(v25);
  v18 = *(v0 + 240);
  if (v18)
  {

    v18(v19);
    return sub_17654(v18);
  }

  return result;
}

__n128 TextStackView.Component.labelProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v10 = v1[4];
  v11 = v3;
  v12 = v1[6];
  v4 = v1[3];
  v8 = v1[2];
  v9 = v4;
  sub_2F118(&v8, v7);
  v5 = v11;
  a1[2] = v10;
  a1[3] = v5;
  a1[4] = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t TextStackView.Component.labelProperties.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v10;
  *(v1 + 96) = a1[4];
  v11 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v11;
  sub_2F118(a1, v13);
  sub_C7504(v3, v4, v5, v6, v7, v8, v9);
  sub_2EB2A8();
  return sub_2F174(a1);
}

uint64_t (*TextStackView.Component.labelProperties.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EB6D0;
}

uint64_t sub_2EB6D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2EB2A8();
  }

  return result;
}

uint64_t sub_2EB704()
{
  v2 = v0[28];
  v1 = v0[29];
  result = swift_beginAccess();
  v5 = v0[14];
  v4 = v0[15];
  if (v2 != v5 || v1 != v4)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v0[28] = v5;
      v0[29] = v4;

      v7 = v0[30];
      if (v7)
      {

        v7(v8);
        return sub_17654(v7);
      }
    }
  }

  return result;
}

uint64_t TextStackView.Component.textValue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t TextStackView.Component.textValue.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[14] = a1;
  v2[15] = a2;

  result = v2[28];
  v7 = v2[14];
  v6 = v2[15];
  if (result != v7 || v2[29] != v6)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v2[28] = v7;
      v2[29] = v6;

      v9 = v2[30];
      if (v9)
      {

        v9(v10);
        return sub_17654(v9);
      }
    }
  }

  return result;
}

uint64_t (*TextStackView.Component.textValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EB914;
}

uint64_t sub_2EB914(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    result = v5[28];
    v7 = v5[14];
    v6 = v5[15];
    if (result != v7 || v5[29] != v6)
    {
      result = sub_ABB3C0();
      if ((result & 1) == 0)
      {
        v9 = *(a1 + 24);
        v5[28] = v7;
        v5[29] = v6;

        v10 = *(v9 + 240);
        if (v10)
        {

          v10(v11);

          return sub_17654(v10);
        }
      }
    }
  }

  return result;
}

uint64_t TextStackView.Component.compositingFilter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

void *TextStackView.Component.compositingFilter.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[16] = a1;
  v2[17] = a2;

  result = v2[32];
  if (result)
  {
    v6 = [result layer];
    if (v2[17])
    {

      v7 = sub_AB9260();
    }

    else
    {
      v7 = 0;
    }

    [v6 setCompositingFilter:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*TextStackView.Component.compositingFilter.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2EBB4C;
}

void sub_2EBB4C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 256);
    if (v5)
    {
      v7 = [v5 layer];
      if (*(v4 + 136))
      {

        v6 = sub_AB9260();
      }

      else
      {
        v6 = 0;
      }

      [v7 setCompositingFilter:v6];
      swift_unknownObjectRelease();
    }
  }
}

void TextStackView.Component.hash(into:)()
{
  sub_AB93F0();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v6[2] = *(v0 + 64);
  v6[3] = v1;
  v6[4] = *(v0 + 96);
  v2 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v2;
  sub_2F118(v6, v5);
  TextLabelProperties.hash(into:)();
  sub_2F174(v6);
  swift_beginAccess();

  sub_AB93F0();

  v3 = *(v0 + 256);
  if (v3)
  {
    sub_ABB5E0(1u);
    v4 = v3;
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

uint64_t TextStackView.Component.deinit()
{

  sub_C7504(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  sub_C7504(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  sub_17654(*(v0 + 240));

  return v0;
}

uint64_t TextStackView.Component.__deallocating_deinit()
{
  TextStackView.Component.deinit();

  return swift_deallocClassInstance();
}

Swift::Int TextStackView.Component.hashValue.getter()
{
  sub_ABB5C0();
  sub_AB93F0();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v7[2] = *(v0 + 64);
  v7[3] = v1;
  v7[4] = *(v0 + 96);
  v2 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v2;
  sub_2F118(v7, &v6);
  TextLabelProperties.hash(into:)();
  sub_2F174(v7);
  swift_beginAccess();

  sub_AB93F0();

  v3 = *(v0 + 256);
  if (v3)
  {
    sub_ABB5E0(1u);
    v4 = v3;
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

Swift::Int sub_2EBF14()
{
  sub_ABB5C0();
  (*(**v0 + 320))(v2);
  return sub_ABB610();
}

unint64_t sub_2EBF88(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  sub_AB93F0();
  v4 = sub_ABB610();

  return sub_2ECE20(a1, a2, v4);
}

unint64_t sub_2EC004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABACF0(*(v2 + 40));

  return sub_2ECED8(a1, v4);
}

unint64_t sub_2EC048(uint64_t a1)
{
  sub_AB3820();
  sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
  v2 = sub_AB90D0();

  return sub_2ECFA0(a1, v2);
}

unint64_t sub_2EC120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DEA550);
}

unint64_t sub_2EC170(void *a1, uint64_t a2, char a3)
{
  sub_ABB5C0();
  if (a3)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v6 = sub_ABB610();

  return sub_2ED164(a1, a2, a3 & 1, v6);
}

unint64_t sub_2EC220(unint64_t a1)
{
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v4, a1);
  v2 = sub_ABB610();

  return sub_2ED2B0(a1, v2);
}

unint64_t sub_2EC28C(uint64_t a1)
{
  sub_AB92A0();
  sub_ABB5C0();
  sub_AB93F0();
  v2 = sub_ABB610();

  return sub_2EEEA8(a1, v2);
}

unint64_t sub_2EC31C(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_ABB5C0();
  sub_2F3228(v2, v3, v4, v5);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  sub_ABB600(*&v7);
  v8 = sub_ABB610();

  return sub_2ED374(a1, v8);
}

unint64_t sub_2EC3D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE7500);
}

unint64_t sub_2EC420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSBarButtonItem);
}

unint64_t sub_2EC474(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &unk_DE8180);
}

unint64_t sub_2EC4C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_E02D50);
}

unint64_t sub_2EC514(int a1)
{
  v2 = a1;
  sub_ABB5C0();
  if (v2 == 2)
  {
    sub_ABB5D0(0);
  }

  else
  {
    sub_ABB5D0(1uLL);
    sub_ABB5E0(a1 & 1);
  }

  v3 = sub_ABB610();

  return sub_2ED5E8(a1, v3);
}

unint64_t sub_2EC5A8(char a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2ED678(a1 & 1, v2);
}

unint64_t sub_2EC668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_ABB5C0();
  sub_AB93F0();
  sub_AB93F0();
  v8 = sub_ABB610();

  return sub_2ED7DC(a1, a2, a3, a4, v8);
}

unint64_t sub_2EC708(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSStoreFlowSegue);
}

unint64_t sub_2EC75C(Swift::UInt a1, Swift::UInt a2)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  sub_ABB5D0(a2);
  v4 = sub_ABB610();

  return sub_2ED8DC(a1, a2, v4);
}

unint64_t sub_2EC7DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSUserNotificationAuthorizationSegue);
}

unint64_t sub_2EC830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE9C10);
}

unint64_t sub_2EC880(char a1)
{
  sub_ABB5C0();
  sub_1BDE98(a1);
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2ED9C0(a1, v2);
}

unint64_t sub_2EC908(char a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2EDF48(a1 & 1, v2);
}

unint64_t sub_2EC9AC(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(*(a1 + 8));
  sub_AB93F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date);
  sub_AB90E0();
  v2 = sub_ABB610();

  return sub_2EE08C(a1, v2);
}

unint64_t sub_2ECAB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DEBCB0);
}

unint64_t sub_2ECB00(unsigned __int8 a1)
{
  sub_ABB5C0();
  v2 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v2 = a1;
  }

  sub_ABB5D0(v2);
  v3 = sub_ABB610();

  return sub_2EE78C(a1, v3);
}

unint64_t sub_2ECB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED520(a1, v4, type metadata accessor for JSSubscriptionPurchaseSegue);
}

unint64_t sub_2ECBE0(unsigned __int8 a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_2EE888(a1, v2);
}

unint64_t sub_2ECCE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_DE7580);
}

unint64_t sub_2ECD38(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_4BF8AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date);
  sub_AB90E0();
  v2 = sub_ABB610();

  return sub_2EEA74(a1, v2);
}

unint64_t sub_2ECE20(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_ABB3C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2ECED8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9ACA0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_ABAD00();
      sub_8085C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ECFA0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2F587C(&qword_DF7940, 255, &type metadata accessor for IndexPath);
      v15 = sub_AB91C0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2ED164(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (*(v10 + 16))
      {
        if (a3)
        {
          sub_13C80(0, &qword_DFA720);
          v13 = v11;
          v14 = sub_ABA790();
          sub_13CC8(v11, v12, 1);
          if (v14)
          {
            return v6;
          }
        }
      }

      else if ((a3 & 1) == 0)
      {
        v15 = v11 == a1 && v12 == a2;
        if (v15 || (sub_ABB3C0() & 1) != 0)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2ED2B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      v8 = (v7 & 0xFFFFFFFFFFFFFF9);
      LOBYTE(v7) = static JSViewModelKind.__derived_enum_equals(_:_:)(v7, a1);

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ED374(CGFloat *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    do
    {
      v11 = (*(v2 + 48) + 40 * v4);
      x = v11[1].origin.x;
      v16.origin.x = v6;
      v16.origin.y = v7;
      v16.size.width = v8;
      v16.size.height = v9;
      v13 = CGRectEqualToRect(*v11, v16);
      if (x == v10 && v13)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2ED454(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_13C80(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_ABA790();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2ED520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_ABA790();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2ED5E8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED678(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v6 = 0x487972617262696CLL;
    }

    if (a1)
    {
      v7 = 0xEF72656461654877;
    }

    else
    {
      v7 = 0xED00007265646165;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F4E6E657473696CLL : 0x487972617262696CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xEF72656461654877 : 0xED00007265646165;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2ED7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_ABB3C0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_ABB3C0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_2ED8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED954(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2ED9C0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000007365;
      v8 = 0x6974697669746361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x736D75626C61;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x73747369747261;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x73726F7461727563;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x73676E6F73;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x736E6F6974617473;
          break;
        case 6:
          v8 = 0x75632D656C707061;
          v7 = 0xEE0073726F746172;
          break;
        case 7:
          v8 = 0x6169726F74696465;
          v7 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          v8 = 0x6F6D2D636973756DLL;
          v9 = 1936025974;
          goto LABEL_19;
        case 9:
          v8 = 0x69762D636973756DLL;
          v9 = 1936680292;
LABEL_19:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0xA:
          v8 = 0x6F736970652D7674;
          v7 = 0xEB00000000736564;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x73776F68732D7674;
          break;
        case 0xC:
          v8 = 0x646564616F6C7075;
          v7 = 0xEF736F656469762DLL;
          break;
        case 0xD:
          v8 = 0x6C2D64726F636572;
          v7 = 0xED0000736C656261;
          break;
        case 0xE:
          v8 = 0x702D6C6169636F73;
          v7 = 0xEF73656C69666F72;
          break;
        case 0xF:
          v8 = 0x7473696C79616C70;
          v7 = 0xE900000000000073;
          break;
        default:
          break;
      }

      v10 = 0x6974697669746361;
      v11 = 0xEA00000000007365;
      switch(a1)
      {
        case 1:
          v11 = 0xE600000000000000;
          if (v8 == 0x736D75626C61)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        case 2:
          v11 = 0xE700000000000000;
          if (v8 != 0x73747369747261)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 3:
          v11 = 0xE800000000000000;
          if (v8 != 0x73726F7461727563)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 4:
          v11 = 0xE500000000000000;
          if (v8 != 0x73676E6F73)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 5:
          v11 = 0xE800000000000000;
          if (v8 != 0x736E6F6974617473)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 6:
          v11 = 0xEE0073726F746172;
          if (v8 != 0x75632D656C707061)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 7:
          v12 = 0x6169726F74696465;
          v13 = 0x6D6574692D6CLL;
          goto LABEL_37;
        case 8:
          v14 = 0x6F6D2D636973756DLL;
          v15 = 1936025974;
          goto LABEL_52;
        case 9:
          v14 = 0x69762D636973756DLL;
          v15 = 1936680292;
LABEL_52:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 10:
          v10 = 0x6F736970652D7674;
          v11 = 0xEB00000000736564;
          goto LABEL_46;
        case 11:
          v11 = 0xE800000000000000;
          if (v8 != 0x73776F68732D7674)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 12:
          v12 = 0x646564616F6C7075;
          v13 = 0x6F656469762DLL;
          goto LABEL_37;
        case 13:
          v11 = 0xED0000736C656261;
          if (v8 != 0x6C2D64726F636572)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 14:
          v12 = 0x702D6C6169636F73;
          v13 = 0x656C69666F72;
LABEL_37:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          if (v8 != v12)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        case 15:
          v11 = 0xE900000000000073;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        default:
LABEL_46:
          if (v8 != v10)
          {
            goto LABEL_48;
          }

LABEL_47:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_48:
          v16 = sub_ABB3C0();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2EDF48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6169636F73;
    }

    else
    {
      v6 = 0x676F6C61746163;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6169636F73 : 0x676F6C61746163;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2EE08C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - v7;
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_13C80(0, &qword_DFA720);
    v14 = *(v6 + 72);
    v32 = *a1;
    v33 = v13;
    while (1)
    {
      sub_15F84(*(v3 + 48) + v14 * v11, v8, &unk_DFEEE0);
      if (sub_ABA790())
      {
        break;
      }

LABEL_5:
      sub_12E1C(v8, &unk_DFEEE0);
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    v15 = a1;
    v16 = *(a1 + 8);
    v17 = 0xEA00000000007365;
    v18 = v14;
    v19 = 0x6974697669746361;
    switch(v8[8])
    {
      case 1:
        v17 = 0xE600000000000000;
        v19 = 0x736D75626C61;
        break;
      case 2:
        v17 = 0xE700000000000000;
        v19 = 0x73747369747261;
        break;
      case 3:
        v17 = 0xE800000000000000;
        v19 = 0x73726F7461727563;
        break;
      case 4:
        v17 = 0xE500000000000000;
        v19 = 0x73676E6F73;
        break;
      case 5:
        v17 = 0xE800000000000000;
        v19 = 0x736E6F6974617473;
        break;
      case 6:
        v19 = 0x75632D656C707061;
        v17 = 0xEE0073726F746172;
        break;
      case 7:
        v19 = 0x6169726F74696465;
        v17 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v19 = 0x6F6D2D636973756DLL;
        v20 = 1936025974;
        goto LABEL_23;
      case 9:
        v19 = 0x69762D636973756DLL;
        v20 = 1936680292;
LABEL_23:
        v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v19 = 0x6F736970652D7674;
        v17 = 0xEB00000000736564;
        break;
      case 11:
        v17 = 0xE800000000000000;
        v19 = 0x73776F68732D7674;
        break;
      case 12:
        v19 = 0x646564616F6C7075;
        v17 = 0xEF736F656469762DLL;
        break;
      case 13:
        v19 = 0x6C2D64726F636572;
        v17 = 0xED0000736C656261;
        break;
      case 14:
        v19 = 0x702D6C6169636F73;
        v17 = 0xEF73656C69666F72;
        break;
      case 15:
        v19 = 0x7473696C79616C70;
        v17 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v21 = v3;
    v22 = 0x6974697669746361;
    v23 = 0xEA00000000007365;
    switch(v16)
    {
      case 1:
        v23 = 0xE600000000000000;
        if (v19 == 0x736D75626C61)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      case 2:
        v23 = 0xE700000000000000;
        if (v19 != 0x73747369747261)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 3:
        v23 = 0xE800000000000000;
        if (v19 != 0x73726F7461727563)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        v23 = 0xE500000000000000;
        if (v19 != 0x73676E6F73)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        v23 = 0xE800000000000000;
        if (v19 != 0x736E6F6974617473)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        v23 = 0xEE0073726F746172;
        if (v19 != 0x75632D656C707061)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        v24 = 0x6169726F74696465;
        v25 = 0x6D6574692D6CLL;
        goto LABEL_41;
      case 8:
        v26 = 0x6F6D2D636973756DLL;
        v27 = 1936025974;
        goto LABEL_55;
      case 9:
        v26 = 0x69762D636973756DLL;
        v27 = 1936680292;
LABEL_55:
        v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v19 != v26)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 10:
        v22 = 0x6F736970652D7674;
        v23 = 0xEB00000000736564;
        goto LABEL_50;
      case 11:
        v23 = 0xE800000000000000;
        if (v19 != 0x73776F68732D7674)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 12:
        v24 = 0x646564616F6C7075;
        v25 = 0x6F656469762DLL;
        goto LABEL_41;
      case 13:
        v23 = 0xED0000736C656261;
        if (v19 != 0x6C2D64726F636572)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 14:
        v24 = 0x702D6C6169636F73;
        v25 = 0x656C69666F72;
LABEL_41:
        v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v19 != v24)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 15:
        v23 = 0xE900000000000073;
        if (v19 != 0x7473696C79616C70)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v19 != v22)
        {
          goto LABEL_52;
        }

LABEL_51:
        if (v17 == v23)
        {

          v3 = v21;
          a1 = v15;
          v14 = v18;
        }

        else
        {
LABEL_52:
          v28 = sub_ABB3C0();

          v3 = v21;
          a1 = v15;
          v14 = v18;
          if ((v28 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if ((sub_AB33E0() & 1) == 0)
        {
          goto LABEL_5;
        }

        sub_12E1C(v8, &unk_DFEEE0);
        break;
    }
  }

  return v11;
}

unint64_t sub_2EE78C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6u:
            if (a1 == 6)
            {
              return result;
            }

            goto LABEL_4;
          case 7u:
            if (a1 == 7)
            {
              return result;
            }

            goto LABEL_4;
          case 8u:
            if (a1 == 8)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      else
      {
        switch(v7)
        {
          case 3u:
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4u:
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5u:
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 9 <= 0xFFFFFFF9 && v7 == a1)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2EE888(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE700000000000000;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x6D75626C61;
        }

        else
        {
          v8 = 1735290739;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE800000000000000;
        v8 = 0x7473696C79616C70;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x69762D636973756DLL;
        }

        else
        {
          v8 = 0x6E6F6974617473;
        }

        if (v7 == 3)
        {
          v9 = 0xEB000000006F6564;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      if (v5 == 3)
      {
        v10 = 0x69762D636973756DLL;
      }

      else
      {
        v10 = 0x6E6F6974617473;
      }

      if (v5 == 3)
      {
        v6 = 0xEB000000006F6564;
      }

      if (v5 == 2)
      {
        v10 = 0x7473696C79616C70;
        v6 = 0xE800000000000000;
      }

      v11 = v5 ? 0x6D75626C61 : 1735290739;
      v12 = v5 ? 0xE500000000000000 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v10;
      v14 = v5 <= 1 ? v12 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_ABB3C0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE700000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2EEA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20);
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v33 - v7;
  v9 = v3 + 64;
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v38 = ~v10;
    sub_13C80(0, &qword_DFA720);
    v36 = v3;
    v37 = a1;
    v12 = *(v6 + 72);
    v35 = v3 + 64;
    do
    {
      sub_15F84(*(v3 + 48) + v12 * v11, v8, &unk_DFEF20);
      if (sub_ABA790())
      {
        v13 = v8[8];
        if (v13 <= 3)
        {
          if (v13 == 2)
          {
            v16 = 1735290739;
          }

          else
          {
            v16 = 0x7473696C79616C70;
          }

          if (v13 == 2)
          {
            v17 = 0xE400000000000000;
          }

          else
          {
            v17 = 0xE800000000000000;
          }

          if (v8[8])
          {
            v18 = 0x6D75626C61;
          }

          else
          {
            v18 = 0x747369747261;
          }

          if (v8[8])
          {
            v19 = 0xE500000000000000;
          }

          else
          {
            v19 = 0xE600000000000000;
          }

          if (v8[8] <= 1u)
          {
            v14 = v18;
          }

          else
          {
            v14 = v16;
          }

          if (v8[8] <= 1u)
          {
            v15 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        else if (v8[8] <= 5u)
        {
          if (v13 == 4)
          {
            v14 = 0x646956636973756DLL;
          }

          else
          {
            v14 = 0x7265736F706D6F63;
          }

          if (v13 == 4)
          {
            v15 = 0xEA00000000006F65;
          }

          else
          {
            v15 = 0xE800000000000000;
          }
        }

        else if (v13 == 6)
        {
          v15 = 0xE600000000000000;
          v14 = 0x776F68537674;
        }

        else if (v13 == 7)
        {
          v14 = 0x646F736970457674;
          v15 = 0xE900000000000065;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6569766F6DLL;
        }

        v20 = *(v37 + 8);
        v21 = 0x646F736970457674;
        if (v20 != 7)
        {
          v21 = 0x6569766F6DLL;
        }

        v22 = 0xE900000000000065;
        if (v20 != 7)
        {
          v22 = 0xE500000000000000;
        }

        if (v20 == 6)
        {
          v21 = 0x776F68537674;
          v22 = 0xE600000000000000;
        }

        v23 = 0x7265736F706D6F63;
        if (v20 == 4)
        {
          v23 = 0x646956636973756DLL;
        }

        v24 = 0xEA00000000006F65;
        if (v20 != 4)
        {
          v24 = 0xE800000000000000;
        }

        if (*(v37 + 8) <= 5u)
        {
          v21 = v23;
          v22 = v24;
        }

        if (v20 == 2)
        {
          v25 = 1735290739;
        }

        else
        {
          v25 = 0x7473696C79616C70;
        }

        if (v20 == 2)
        {
          v26 = 0xE400000000000000;
        }

        else
        {
          v26 = 0xE800000000000000;
        }

        if (*(v37 + 8))
        {
          v27 = 0x6D75626C61;
        }

        else
        {
          v27 = 0x747369747261;
        }

        if (*(v37 + 8))
        {
          v28 = 0xE500000000000000;
        }

        else
        {
          v28 = 0xE600000000000000;
        }

        if (*(v37 + 8) <= 1u)
        {
          v25 = v27;
          v26 = v28;
        }

        if (*(v37 + 8) <= 3u)
        {
          v29 = v25;
        }

        else
        {
          v29 = v21;
        }

        if (*(v37 + 8) <= 3u)
        {
          v30 = v26;
        }

        else
        {
          v30 = v22;
        }

        if (v14 == v29 && v15 == v30)
        {

          v9 = v35;
          v3 = v36;
        }

        else
        {
          v31 = sub_ABB3C0();

          v9 = v35;
          v3 = v36;
          if ((v31 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (sub_AB33E0())
        {
          sub_12E1C(v8, &unk_DFEF20);
          return v11;
        }
      }

LABEL_5:
      sub_12E1C(v8, &unk_DFEF20);
      v11 = (v11 + 1) & v38;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2EEEA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_AB92A0();
      v8 = v7;
      if (v6 == sub_AB92A0() && v8 == v9)
      {
        break;
      }

      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2EEFAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_ABACA0();

    if (v5)
    {
      v6 = sub_2F1328();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_13C80(0, &qword_DE7500);
  v9 = sub_ABA780(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_ABA790();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25138();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_2F1490(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_2EF144(void *a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_ABB5C0();
  if (a3)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v8 = sub_ABB610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v22 = v3;
  v11 = ~v9;
  while (1)
  {
    v12 = *(v7 + 48) + 24 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    if ((*(v12 + 16) & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      sub_13C80(0, &qword_DFA720);
      v15 = v13;
      v16 = sub_ABA790();
      sub_13CC8(v13, v14, 1);
      if (v16)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    goto LABEL_6;
  }

  v17 = v13 == a1 && v14 == a2;
  if (!v17 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v22;
  v23 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2514C();
    v19 = v23;
  }

  v20 = *(*(v19 + 48) + 24 * v10);
  sub_2F1630(v10);
  result = v20;
  *v22 = v23;
  return result;
}

uint64_t sub_2EF334(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_ABB5B0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252B4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2F187C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_2EF424(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_ABB5C0();
  sub_AB93F0();
  v6 = sub_ABB610();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25418();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2F1A00(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2EF560(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  sub_1BDE98(a1);
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 16;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEA00000000007365;
    v10 = 0x6974697669746361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x736D75626C61;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v10 = 0x73747369747261;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x73726F7461727563;
        break;
      case 4:
        v9 = 0xE500000000000000;
        v10 = 0x73676E6F73;
        break;
      case 5:
        v9 = 0xE800000000000000;
        v10 = 0x736E6F6974617473;
        break;
      case 6:
        v10 = 0x75632D656C707061;
        v9 = 0xEE0073726F746172;
        break;
      case 7:
        v10 = 0x6169726F74696465;
        v9 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v10 = 0x6F6D2D636973756DLL;
        v11 = 1936025974;
        goto LABEL_19;
      case 9:
        v10 = 0x69762D636973756DLL;
        v11 = 1936680292;
LABEL_19:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0xA:
        v10 = 0x6F736970652D7674;
        v9 = 0xEB00000000736564;
        break;
      case 0xB:
        v9 = 0xE800000000000000;
        v10 = 0x73776F68732D7674;
        break;
      case 0xC:
        v10 = 0x646564616F6C7075;
        v9 = 0xEF736F656469762DLL;
        break;
      case 0xD:
        v10 = 0x6C2D64726F636572;
        v9 = 0xED0000736C656261;
        break;
      case 0xE:
        v10 = 0x702D6C6169636F73;
        v9 = 0xEF73656C69666F72;
        break;
      case 0xF:
        v10 = 0x7473696C79616C70;
        v9 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v12 = 0x6974697669746361;
    v13 = 0xEA00000000007365;
    switch(a1)
    {
      case 1:
        v13 = 0xE600000000000000;
        if (v10 == 0x736D75626C61)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        v13 = 0xE700000000000000;
        if (v10 != 0x73747369747261)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x73726F7461727563)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        v13 = 0xE500000000000000;
        if (v10 != 0x73676E6F73)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 5:
        v13 = 0xE800000000000000;
        if (v10 != 0x736E6F6974617473)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 6:
        v13 = 0xEE0073726F746172;
        if (v10 != 0x75632D656C707061)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 7:
        v14 = 0x6169726F74696465;
        v15 = 0x6D6574692D6CLL;
        goto LABEL_37;
      case 8:
        v16 = 0x6F6D2D636973756DLL;
        v17 = 1936025974;
        goto LABEL_52;
      case 9:
        v16 = 0x69762D636973756DLL;
        v17 = 1936680292;
LABEL_52:
        v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v16)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 10:
        v12 = 0x6F736970652D7674;
        v13 = 0xEB00000000736564;
        goto LABEL_46;
      case 11:
        v13 = 0xE800000000000000;
        if (v10 != 0x73776F68732D7674)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 12:
        v14 = 0x646564616F6C7075;
        v15 = 0x6F656469762DLL;
        goto LABEL_37;
      case 13:
        v13 = 0xED0000736C656261;
        if (v10 != 0x6C2D64726F636572)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 14:
        v14 = 0x702D6C6169636F73;
        v15 = 0x656C69666F72;
LABEL_37:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v10 != v14)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 15:
        v13 = 0xE900000000000073;
        if (v10 != 0x7473696C79616C70)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v10 != v12)
        {
          goto LABEL_48;
        }

LABEL_47:
        if (v9 != v13)
        {
LABEL_48:
          v18 = sub_ABB3C0();

          if (v18)
          {
            goto LABEL_56;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return 16;
          }

          continue;
        }

LABEL_56:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;
        v23 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25D68();
          v21 = v23;
        }

        v19 = *(*(v21 + 48) + v7);
        sub_2F1BC4(v7);
        *v2 = v23;
        return v19;
    }
  }
}

uint64_t sub_2EFB70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  sub_ABB5C0();
  sub_ABA7A0();
  v34 = a2;
  v7 = a2;
  v8 = v6;
  sub_1BDE98(v7);
  sub_AB93F0();

  v9 = sub_ABB610();
  v10 = v6 + 56;
  v11 = -1 << *(v6 + 32);
  v12 = v9 & ~v11;
  if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v33 = v2;
  v13 = ~v11;
  sub_13C80(0, &qword_DFA720);
  while (2)
  {
    v14 = *(v8 + 48) + 16 * v12;
    v15 = *(v14 + 8);
    v16 = *v14;
    if ((sub_ABA790() & 1) == 0)
    {

      goto LABEL_4;
    }

    v17 = v8;
    v18 = a1;
    v19 = 0xEA00000000007365;
    v20 = 0x6974697669746361;
    v21 = 0x6974697669746361;
    switch(v15)
    {
      case 1:
        v19 = 0xE600000000000000;
        v21 = 0x736D75626C61;
        break;
      case 2:
        v19 = 0xE700000000000000;
        v21 = 0x73747369747261;
        break;
      case 3:
        v19 = 0xE800000000000000;
        v21 = 0x73726F7461727563;
        break;
      case 4:
        v19 = 0xE500000000000000;
        v21 = 0x73676E6F73;
        break;
      case 5:
        v19 = 0xE800000000000000;
        v21 = 0x736E6F6974617473;
        break;
      case 6:
        v21 = 0x75632D656C707061;
        v19 = 0xEE0073726F746172;
        break;
      case 7:
        v21 = 0x6169726F74696465;
        v19 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v21 = 0x6F6D2D636973756DLL;
        v22 = 1936025974;
        goto LABEL_22;
      case 9:
        v21 = 0x69762D636973756DLL;
        v22 = 1936680292;
LABEL_22:
        v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v21 = 0x6F736970652D7674;
        v19 = 0xEB00000000736564;
        break;
      case 11:
        v19 = 0xE800000000000000;
        v21 = 0x73776F68732D7674;
        break;
      case 12:
        v21 = 0x646564616F6C7075;
        v19 = 0xEF736F656469762DLL;
        break;
      case 13:
        v21 = 0x6C2D64726F636572;
        v19 = 0xED0000736C656261;
        break;
      case 14:
        v21 = 0x702D6C6169636F73;
        v19 = 0xEF73656C69666F72;
        break;
      case 15:
        v21 = 0x7473696C79616C70;
        v19 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v23 = 0xEA00000000007365;
    switch(v34)
    {
      case 1:
        v23 = 0xE600000000000000;
        if (v21 == 0x736D75626C61)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      case 2:
        v23 = 0xE700000000000000;
        if (v21 != 0x73747369747261)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 3:
        v23 = 0xE800000000000000;
        if (v21 != 0x73726F7461727563)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 4:
        v23 = 0xE500000000000000;
        if (v21 != 0x73676E6F73)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 5:
        v23 = 0xE800000000000000;
        if (v21 != 0x736E6F6974617473)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 6:
        v23 = 0xEE0073726F746172;
        if (v21 != 0x75632D656C707061)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 7:
        v24 = 0x6169726F74696465;
        v25 = 0x6D6574692D6CLL;
        goto LABEL_40;
      case 8:
        v26 = 0x6F6D2D636973756DLL;
        v27 = 1936025974;
        goto LABEL_54;
      case 9:
        v26 = 0x69762D636973756DLL;
        v27 = 1936680292;
LABEL_54:
        v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v21 != v26)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 10:
        v20 = 0x6F736970652D7674;
        v23 = 0xEB00000000736564;
        goto LABEL_49;
      case 11:
        v23 = 0xE800000000000000;
        if (v21 != 0x73776F68732D7674)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 12:
        v24 = 0x646564616F6C7075;
        v25 = 0x6F656469762DLL;
        goto LABEL_40;
      case 13:
        v23 = 0xED0000736C656261;
        if (v21 != 0x6C2D64726F636572)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 14:
        v24 = 0x702D6C6169636F73;
        v25 = 0x656C69666F72;
LABEL_40:
        v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v21 != v24)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      case 15:
        v23 = 0xE900000000000073;
        if (v21 != 0x7473696C79616C70)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v21 != v20)
        {
          goto LABEL_51;
        }

LABEL_50:
        if (v19 != v23)
        {
LABEL_51:
          v28 = sub_ABB3C0();

          a1 = v18;
          v8 = v17;
          if (v28)
          {
            goto LABEL_58;
          }

LABEL_4:
          v12 = (v12 + 1) & v13;
          if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

LABEL_58:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v3;
        v35 = *v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25C04();
          v31 = v35;
        }

        v32 = *(*(v31 + 48) + 16 * v12);
        sub_2F1FB0(v12);
        result = v32;
        *v33 = v35;
        return result;
    }
  }
}

uint64_t sub_2F0214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v34 = v2;
  v7 = *v2;
  sub_ABB5C0();
  v42 = *a1;
  sub_ABA7A0();
  v41 = *(a1 + 8);
  sub_1BDE98(v41);
  sub_AB93F0();

  v39 = v4;
  v8 = *(v4 + 40);
  sub_AB3430();
  sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date);
  v37 = v8;
  v38 = a1;
  sub_AB90E0();
  v9 = sub_ABB610();
  v10 = v7 + 56;
  v43 = v7;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v36 + 56))(v35, 1, 1, v39);
  }

  v13 = ~v11;
  sub_13C80(0, &qword_DFA720);
  v14 = *(v36 + 72);
  v15 = &unk_DFEEE0;
  v40 = v14;
  while (1)
  {
    v16 = v14 * v12;
    sub_15F84(*(v43 + 48) + v14 * v12, v6, v15);
    if (sub_ABA790())
    {
      break;
    }

LABEL_5:
    sub_12E1C(v6, v15);
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v36 + 56))(v35, 1, 1, v39);
    }
  }

  v17 = v15;
  v18 = 0xEA00000000007365;
  v19 = 0x6974697669746361;
  switch(v6[8])
  {
    case 1:
      v18 = 0xE600000000000000;
      v19 = 0x736D75626C61;
      break;
    case 2:
      v18 = 0xE700000000000000;
      v19 = 0x73747369747261;
      break;
    case 3:
      v18 = 0xE800000000000000;
      v19 = 0x73726F7461727563;
      break;
    case 4:
      v18 = 0xE500000000000000;
      v19 = 0x73676E6F73;
      break;
    case 5:
      v18 = 0xE800000000000000;
      v19 = 0x736E6F6974617473;
      break;
    case 6:
      v19 = 0x75632D656C707061;
      v18 = 0xEE0073726F746172;
      break;
    case 7:
      v19 = 0x6169726F74696465;
      v18 = 0xEF736D6574692D6CLL;
      break;
    case 8:
      v19 = 0x6F6D2D636973756DLL;
      v20 = 1936025974;
      goto LABEL_23;
    case 9:
      v19 = 0x69762D636973756DLL;
      v20 = 1936680292;
LABEL_23:
      v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 10:
      v19 = 0x6F736970652D7674;
      v18 = 0xEB00000000736564;
      break;
    case 11:
      v18 = 0xE800000000000000;
      v19 = 0x73776F68732D7674;
      break;
    case 12:
      v19 = 0x646564616F6C7075;
      v18 = 0xEF736F656469762DLL;
      break;
    case 13:
      v19 = 0x6C2D64726F636572;
      v18 = 0xED0000736C656261;
      break;
    case 14:
      v19 = 0x702D6C6169636F73;
      v18 = 0xEF73656C69666F72;
      break;
    case 15:
      v19 = 0x7473696C79616C70;
      v18 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v21 = v10;
  v22 = 0x6974697669746361;
  v23 = 0xEA00000000007365;
  switch(v41)
  {
    case 1:
      v23 = 0xE600000000000000;
      if (v19 == 0x736D75626C61)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    case 2:
      v23 = 0xE700000000000000;
      if (v19 != 0x73747369747261)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 3:
      v23 = 0xE800000000000000;
      if (v19 != 0x73726F7461727563)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 4:
      v23 = 0xE500000000000000;
      if (v19 != 0x73676E6F73)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 5:
      v23 = 0xE800000000000000;
      if (v19 != 0x736E6F6974617473)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 6:
      v23 = 0xEE0073726F746172;
      if (v19 != 0x75632D656C707061)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 7:
      v24 = 0x6169726F74696465;
      v25 = 0x6D6574692D6CLL;
      goto LABEL_41;
    case 8:
      v26 = 0x6F6D2D636973756DLL;
      v27 = 1936025974;
      goto LABEL_55;
    case 9:
      v26 = 0x69762D636973756DLL;
      v27 = 1936680292;
LABEL_55:
      v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v19 != v26)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 10:
      v22 = 0x6F736970652D7674;
      v23 = 0xEB00000000736564;
      goto LABEL_50;
    case 11:
      v23 = 0xE800000000000000;
      if (v19 != 0x73776F68732D7674)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 12:
      v24 = 0x646564616F6C7075;
      v25 = 0x6F656469762DLL;
      goto LABEL_41;
    case 13:
      v23 = 0xED0000736C656261;
      if (v19 != 0x6C2D64726F636572)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 14:
      v24 = 0x702D6C6169636F73;
      v25 = 0x656C69666F72;
LABEL_41:
      v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
      if (v19 != v24)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    case 15:
      v23 = 0xE900000000000073;
      if (v19 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    default:
LABEL_50:
      if (v19 != v22)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v18 == v23)
      {

        v10 = v21;
        v15 = v17;
        v14 = v40;
      }

      else
      {
LABEL_52:
        v28 = sub_ABB3C0();

        v10 = v21;
        v15 = v17;
        v14 = v40;
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if ((sub_AB33E0() & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_12E1C(v6, &unk_DFEEE0);
      v30 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v30;
      v44 = *v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25D7C();
        v32 = v44;
      }

      v33 = v35;
      sub_36B0C(*(v32 + 48) + v16, v35, &unk_DFEEE0);
      sub_2F23C4(v12);
      *v30 = v44;
      result = (*(v36 + 56))(v33, 0, 1, v39);
      break;
  }

  return result;
}

uint64_t sub_2F0A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
  v31 = a1;
  v10 = sub_AB90D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_2F587C(&qword_DF7940, 255, &type metadata accessor for IndexPath);
      v19 = sub_AB91C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F68();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2F2934(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2F0D00(unsigned __int8 a1)
{
  v3 = *v1;
  sub_ABB5C0();
  v4 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v4 = a1;
  }

  sub_ABB5D0(v4);
  v5 = sub_ABB610();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 9;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(*(v3 + 48) + v7);
    if (v9 > 5)
    {
      break;
    }

    switch(v9)
    {
      case 3u:
        if (a1 == 3)
        {
          goto LABEL_26;
        }

        break;
      case 4u:
        if (a1 == 4)
        {
          goto LABEL_26;
        }

        break;
      case 5u:
        if (a1 == 5)
        {
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_6:
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 9;
    }
  }

  switch(v9)
  {
    case 6u:
      if (a1 == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 7u:
      if (a1 == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    case 8u:
      if (a1 == 8)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
  }

LABEL_20:
  if ((a1 - 9) > 0xF9u || v9 != a1)
  {
    goto LABEL_6;
  }

LABEL_26:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24FF8();
    v11 = v14;
  }

  v12 = *(*(v11 + 48) + v7);
  sub_2F2C40(v7);
  result = v12;
  *v1 = v14;
  return result;
}

double sub_2F0ECC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  sub_ABB5C0();
  sub_AB93F0();
  v4 = sub_ABB610();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = (*(v3 + 48) + 240 * v6);
      v10 = v8[1];
      v9 = v8[2];
      v35 = *v8;
      v36 = v10;
      v37 = v9;
      v11 = v8[3];
      v12 = v8[4];
      v13 = v8[6];
      v40 = v8[5];
      v41 = v13;
      v38 = v11;
      v39 = v12;
      v14 = v8[7];
      v15 = v8[8];
      v16 = v8[10];
      v44 = v8[9];
      v45 = v16;
      v42 = v14;
      v43 = v15;
      v17 = v8[11];
      v18 = v8[12];
      v19 = v8[14];
      v48 = v8[13];
      v49 = v19;
      v46 = v17;
      v47 = v18;
      sub_ABB5C0();
      sub_2B990(&v35, v34);
      sub_AB93F0();
      v20 = sub_ABB610();
      sub_ABB5C0();
      sub_AB93F0();
      v21 = sub_ABB610();
      sub_2B9EC(&v35);
      if (v20 == v21)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v33;
    v34[0] = *v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26448();
      v30 = v34[0];
    }

    memmove(a1, (*(v30 + 48) + 240 * v6), 0xF0uLL);
    sub_2F2E04(v6);
    *v33 = v34[0];
    *&v28 = UIScreen.Dimensions.size.getter(v31);
  }

  else
  {
LABEL_5:
    sub_2F58C4(&v35);
    v22 = v48;
    a1[12] = v47;
    a1[13] = v22;
    a1[14] = v49;
    v23 = v44;
    a1[8] = v43;
    a1[9] = v23;
    v24 = v46;
    a1[10] = v45;
    a1[11] = v24;
    v25 = v40;
    a1[4] = v39;
    a1[5] = v25;
    v26 = v42;
    a1[6] = v41;
    a1[7] = v26;
    v27 = v36;
    *a1 = v35;
    a1[1] = v27;
    v28 = v38;
    a1[2] = v37;
    a1[3] = v28;
  }

  return *&v28;
}

uint64_t sub_2F10F8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_ABB5C0();
  sub_AB93F0();

  v5 = sub_ABB610();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 3;
  }

  v19 = v1;
  v8 = ~v6;
  while (!*(*(v4 + 48) + v7))
  {
    v10 = 0xE300000000000000;
    v9 = 7105633;
    v11 = a1;
    if (a1)
    {
      goto LABEL_11;
    }

LABEL_7:
    v12 = 0xE300000000000000;
    if (v9 == 7105633)
    {
      goto LABEL_15;
    }

LABEL_16:
    v14 = sub_ABB3C0();

    if (v14)
    {
      goto LABEL_20;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 3;
    }
  }

  if (*(*(v4 + 48) + v7) == 1)
  {
    v9 = 0x657469726F766166;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  v10 = 0xE900000000000073;
  v11 = a1;
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v11 == 1)
  {
    v13 = 0x657469726F766166;
  }

  else
  {
    v13 = 0x64616F6C6E776F64;
  }

  v12 = 0xE900000000000073;
  if (v9 != v13)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (v10 != v12)
  {
    goto LABEL_16;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_265F8();
    v17 = v20;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_2F3020(v7);
  *v19 = v20;
  return v15;
}

uint64_t sub_2F1328()
{
  v1 = v0;

  v2 = sub_ABAC50();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1D5D8(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_ABA780(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_13C80(0, &qword_DE7500);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_ABA790();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_2F1490(v8);
  result = sub_ABA790();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2F1490(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_ABA780(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F1630(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v28 = v4;
      do
      {
        v11 = v2;
        v12 = v9;
        v13 = 24 * v6;
        v14 = v3;
        v15 = *(v3 + 48) + 24 * v6;
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_ABB5C0();
        if (v18)
        {
          sub_ABB5D0(1uLL);
          v19 = v17;
          sub_ABA7A0();
        }

        else
        {
          sub_ABB5D0(0);

          sub_AB93F0();
        }

        v20 = sub_ABB610();
        sub_13CC8(v17, v16, v18);
        v21 = v20 & v7;
        v9 = v12;
        v2 = v11;
        if (v11 >= v9)
        {
          v4 = v28;
          v3 = v14;
          if (v21 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v28;
          v3 = v14;
          if (v21 >= v9)
          {
            goto LABEL_14;
          }
        }

        if (v2 >= v21)
        {
LABEL_14:
          v22 = *(v3 + 48);
          v23 = v22 + 24 * v2;
          v24 = (v22 + v13);
          if ((24 * v2) < v13 || v23 >= v24 + 24 || v2 != v6)
          {
            v10 = *v24;
            *(v23 + 16) = *(v24 + 2);
            *v23 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F187C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_ABB5B0() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F1A00(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();

        sub_AB93F0();
        v10 = sub_ABB610();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F1BC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x2F1F70);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
  return result;
}

unint64_t sub_2F1FB0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(*(v3 + 48) + 16 * v6);
        sub_ABB5C0();
        v12 = v11;
        sub_ABA7A0();
        sub_AB93F0();

        v13 = sub_ABB610();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    JUMPOUT(0x2F2384);
  }

  *(v3 + 16) = v20;
  ++*(v3 + 36);
  return result;
}

uint64_t sub_2F23C4(unint64_t a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v3 = *(v26 - 8);
  result = __chkstk_darwin(v26);
  v6 = &v22 - v5;
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = a1;
    v13 = sub_ABABD0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v24 = v8;
      v25 = (v13 + 1) & v11;
      v14 = *(v3 + 72);
      v23 = v14;
      while (1)
      {
        v15 = v14 * v10;
        sub_15F84(*(v7 + 48) + v14 * v10, v6, &unk_DFEEE0);
        sub_ABB5C0();
        sub_ABA7A0();
        sub_AB93F0();

        sub_AB3430();
        sub_2F587C(&unk_DFEEF0, 255, &type metadata accessor for Date);
        sub_AB90E0();
        v16 = sub_ABB610();
        sub_12E1C(v6, &unk_DFEEE0);
        v17 = v16 & v11;
        if (v12 >= v25)
        {
          break;
        }

        v14 = v23;
        if (v17 < v25)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * v12;
        if (v14 * v12 < v15 || *(v7 + 48) + v14 * v12 >= (*(v7 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v12 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v12 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        v8 = v24;
        if (((*(v24 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v14 = v23;
      if (v17 < v25)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v12 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v12) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    JUMPOUT(0x2F28F4);
  }

  *(v7 + 16) = v21;
  ++*(v7 + 36);
  return result;
}

uint64_t sub_2F2934(int64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_ABABD0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_2F587C(&qword_DFAA90, 255, &type metadata accessor for IndexPath);
        v24 = sub_AB90D0();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_2F2C40(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_ABB5C0();
        v11 = v10 - 3;
        if ((v10 - 3) >= 6)
        {
          sub_ABB5D0(6uLL);
          v11 = v10;
        }

        sub_ABB5D0(v11);
        v12 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_13;
        }

        if (v2 >= v12)
        {
LABEL_13:
          v13 = *(v3 + 48);
          v14 = (v13 + v2);
          v15 = (v13 + v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F2E04(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 240 * v6);
        v12 = *v10;
        v11 = v10[1];
        v31[2] = v10[2];
        v13 = v10[3];
        v14 = v10[4];
        v15 = v10[6];
        v31[5] = v10[5];
        v31[6] = v15;
        v31[3] = v13;
        v31[4] = v14;
        v16 = v10[7];
        v17 = v10[8];
        v18 = v10[10];
        v31[9] = v10[9];
        v31[10] = v18;
        v31[7] = v16;
        v31[8] = v17;
        v19 = v10[11];
        v20 = v10[12];
        v21 = v10[14];
        v31[13] = v10[13];
        v31[14] = v21;
        v31[11] = v19;
        v31[12] = v20;
        v31[0] = v12;
        v31[1] = v11;
        sub_ABB5C0();
        sub_2B990(v31, v30);
        sub_AB93F0();
        v22 = sub_ABB610();
        sub_2B9EC(v31);
        v23 = v22 & v7;
        if (v2 >= v9)
        {
          if (v23 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v23 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v23)
        {
LABEL_11:
          v24 = *(v3 + 48);
          v25 = (v24 + 240 * v2);
          v26 = (v24 + 240 * v6);
          if (v2 != v6 || v25 >= v26 + 240)
          {
            memmove(v25, v26, 0xF0uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2F3020(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_ABB5C0();
        sub_AB93F0();

        v10 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2F3228(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  sub_ABB600(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  sub_ABB600(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  sub_ABB600(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  sub_ABB600(*&v9);
}

uint64_t sub_2F32C4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
    v6 = v5 - 1;
    result = *(&stru_20.cmd + 8 * v6 + (v3 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16MusicApplication13TextStackViewC9ComponentC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v14 = 1;
  }

  else
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (sub_ABB3C0()) && (swift_beginAccess(), v5 = *(a1 + 80), v19[2] = *(a1 + 64), v19[3] = v5, v19[4] = *(a1 + 96), v6 = *(a1 + 48), v19[0] = *(a1 + 32), v19[1] = v6, swift_beginAccess(), v7 = *(a2 + 80), v20[2] = *(a2 + 64), v20[3] = v7, v20[4] = *(a2 + 96), v8 = *(a2 + 48), v20[0] = *(a2 + 32), v20[1] = v8, sub_2F118(v19, v18), sub_2F118(v20, v18), v9 = _s16MusicApplication19TextLabelPropertiesV2eeoiySbAC_ACtFZ_0(v19, v20), sub_2F174(v20), sub_2F174(v19), (v9) && ((swift_beginAccess(), v10 = *(a1 + 112), v11 = *(a1 + 120), swift_beginAccess(), v10 == *(a2 + 112)) && v11 == *(a2 + 120) || (sub_ABB3C0()))
    {
      v12 = *(a1 + 256);
      v13 = *(a2 + 256);
      v14 = (v12 | v13) == 0;
      if (v12 && v13)
      {
        type metadata accessor for TextDrawing.View();
        v15 = v13;
        v16 = v12;
        v14 = sub_ABA790();
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_2F34EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_112854();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A094(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F3560(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A254(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F35D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5940();
  result = sub_AB9B70();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      sub_2BA40(v7, v6, *v4);
      sub_1A35C(v8, v7, v6, v5);
      sub_13CC8(v8[0], v8[1], v9);
      v4 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2F3680(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_47:
    sub_ABB060();
  }

  type metadata accessor for ImpressionTracker();
  sub_2F587C(&qword_DF1270, 255, type metadata accessor for ImpressionTracker);
  v3 = sub_AB9B70();
  if (!v2)
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      return v3;
    }

LABEL_6:
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v1 + 32;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1;
    v27 = v1 + 32;
    while (1)
    {
LABEL_7:
      v1 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v8 = v3;
      }

      v29 = v8;
      while (1)
      {
        if (v5)
        {
          v9 = sub_35FAB8(v4, v26);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_45;
          }

          v9 = *(v7 + 8 * v4);

          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        if (!v1)
        {
          v12 = v2;
          sub_ABB5C0();
          v13 = sub_127604();
          sub_ABB5D0(v13);
          v14 = sub_ABB610();
          v15 = ~(-1 << *(v3 + 32));
          for (i = v14 & v15; ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v15)
          {
            if (sub_127604() == *(v9 + 56))
            {

              v2 = v12;
              v7 = v27;
              v6 = v28;
              goto LABEL_21;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v3 + 16);
          v1 = *(v3 + 24);

          if (v1 > v2)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_252C8();
            }

            goto LABEL_36;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            sub_1E12C();
          }

          else
          {
            sub_26DE0();
          }

          sub_ABB5C0();
          sub_ABB5D0(*(v9 + 56));
          v18 = sub_ABB610();
          v1 = v3 + 56;
          v19 = -1 << *(v3 + 32);
          i = v18 & ~v19;
          if (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
LABEL_36:
            *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v3 + 48) + 8 * i) = v9;
            v20 = *(v3 + 16);
            v10 = __OFADD__(v20, 1);
            v21 = v20 + 1;
            if (v10)
            {
              goto LABEL_46;
            }

            *(v3 + 16) = v21;

            v2 = v12;
            v7 = v27;
            v6 = v28;
            if (v4 != v2)
            {
              goto LABEL_7;
            }

            return v3;
          }

          v2 = ~v19;
          while (sub_127604() != *(v9 + 56))
          {
            i = (i + 1) & v2;
            if (((*(v1 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_49:
          result = sub_ABB4B0();
          __break(1u);
          return result;
        }

        v11 = sub_ABAC60();

        if (!v11)
        {
          break;
        }

        swift_unknownObjectRetain();
        swift_dynamicCast();

        swift_unknownObjectRelease();
LABEL_21:
        if (v4 == v2)
        {
          return v3;
        }
      }

      v22 = sub_ABAC50();
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v23 = sub_1D5FC(v29, v22 + 1);
      if (*(v23 + 24) <= *(v23 + 16))
      {
        sub_1E12C();
      }

      sub_2178C(v24, v23);

      v3 = v23;
      if (v4 == v2)
      {
        return v3;
      }
    }
  }

  v2 = sub_ABB060();
  if (v2)
  {
    goto LABEL_6;
  }

  return v3;
}

uint64_t sub_2F3AA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F57D4();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A904(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2F3B1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_AB9B70();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A9FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2F3BB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_2F5828();
  v12[2] = sub_AB9B70();
  v6 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (a1 + 16 * a2 + 8);
    while (v8)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 16;
      sub_1B38C(v12, v10, v11);

      --v8;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2F3C78(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5828();
  result = sub_AB9B70();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 16;
      sub_1B38C(v7, v5, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2F3D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F5994();
  result = sub_AB9B70();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[5];
      v12[4] = v4[4];
      v12[5] = v5;
      v6 = v4[7];
      v12[6] = v4[6];
      v12[7] = v6;
      v7 = v4[1];
      v12[0] = *v4;
      v12[1] = v7;
      v8 = v4[3];
      v12[2] = v4[2];
      v12[3] = v8;
      sub_2B7BC(v12, v10);
      sub_1ADEC(v9, v12);
      v10[4] = v9[4];
      v10[5] = v9[5];
      v10[6] = v9[6];
      v10[7] = v9[7];
      v10[0] = v9[0];
      v10[1] = v9[1];
      v10[2] = v9[2];
      v10[3] = v9[3];
      sub_2B818(v10);
      v4 += 8;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2F3DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F59E8();
  result = sub_AB9B70();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 2);
      sub_2BB90();
      sub_1CC18(&v8, v7, v6, v5);
      sub_2BBCC();
      v4 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_2F3E7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2F58EC();
  result = sub_AB9B70();
  v14 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[13];
      v15[12] = v4[12];
      v15[13] = v5;
      v15[14] = v4[14];
      v6 = v4[9];
      v15[8] = v4[8];
      v15[9] = v6;
      v7 = v4[11];
      v15[10] = v4[10];
      v15[11] = v7;
      v8 = v4[5];
      v15[4] = v4[4];
      v15[5] = v8;
      v9 = v4[7];
      v15[6] = v4[6];
      v15[7] = v9;
      v10 = v4[1];
      v15[0] = *v4;
      v15[1] = v10;
      v11 = v4[3];
      v15[2] = v4[2];
      v15[3] = v11;
      sub_2B990(v15, v13);
      sub_1D014(v12, v15);
      v13[12] = v12[12];
      v13[13] = v12[13];
      v13[14] = v12[14];
      v13[8] = v12[8];
      v13[9] = v12[9];
      v13[10] = v12[10];
      v13[11] = v12[11];
      v13[4] = v12[4];
      v13[5] = v12[5];
      v13[6] = v12[6];
      v13[7] = v12[7];
      v13[0] = v12[0];
      v13[1] = v12[1];
      v13[2] = v12[2];
      v13[3] = v12[3];
      sub_2B9EC(v13);
      v4 += 15;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

void sub_2F3F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(a1 + 16);
    sub_2F118(a1, aBlock);
    v10 = v9(a2, a3);
    v11 = [v10 length];
    if (v11 < 1)
    {
    }

    else
    {
      v12 = v11;
      v17 = 0;
      v18 = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = &v17;
      *(v13 + 24) = &v18;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_18BC3C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_114_0;
      v15 = _Block_copy(aBlock);

      [v10 enumerateAttribute:NSFontAttributeName inRange:0 options:v12 usingBlock:{0, v15, v17}];
      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
      }

      else
      {
        v16 = v18;

        if (v16)
        {
          [v16 _scaledValueForValue:*(a1 + 64)];
          [v16 ascender];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    sub_2F118(a1, aBlock);
    v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
    if (v5)
    {
      v6 = v5;

      v4 = v6;
    }

    [v4 _scaledValueForValue:*(a1 + 64)];
    [v4 ascender];

    sub_2F174(a1);
  }
}

uint64_t sub_2F4268(void *a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  sub_AB91E0();
  sub_AB3550();
  v4 = sub_AB9320();
  v6 = v5;
  if ((a1[5] & 0x8000000000000000) == 0)
  {
    v7 = a1[6];
    v8 = v7;
    sub_2F118(a1, aBlock);
    v9 = [v8 _fontAdjustedForCurrentContentSizeCategory];
    if (v9)
    {
      v10 = v9;

      sub_2F174(a1);
    }

    else
    {
      sub_2F174(a1);

      return v7;
    }

    return v10;
  }

  v11 = a1[2];
  v12 = v4;
  sub_2F118(a1, aBlock);
  v13 = v11(v12, v6);
  v14 = [v13 length];
  if (v14 < 1)
  {

    return 0;
  }

  v15 = v14;
  v20 = 0;
  v21 = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = &v20;
  *(v16 + 24) = &v21;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_18BC3C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_18BC40;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B8A0;
  aBlock[3] = &block_descriptor_103;
  v18 = _Block_copy(aBlock);

  [v13 enumerateAttribute:NSFontAttributeName inRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    v10 = v21;

    return v10;
  }

  __break(1u);
  return result;
}

void sub_2F45C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 40) & 0x8000000000000000) != 0)
  {
    v9 = *(a1 + 16);
    sub_2F118(a1, aBlock);
    v10 = v9(a2, a3);
    v11 = [v10 length];
    if (v11 < 1)
    {
    }

    else
    {
      v12 = v11;
      v17 = 0;
      v18 = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = &v17;
      *(v13 + 24) = &v18;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_18BC3C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_18BC40;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_9B8A0;
      aBlock[3] = &block_descriptor_92_0;
      v15 = _Block_copy(aBlock);

      [v10 enumerateAttribute:NSFontAttributeName inRange:0 options:v12 usingBlock:{0, v15, v17}];
      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        __break(1u);
      }

      else
      {
        v16 = v18;

        if (v16)
        {
          [v16 _scaledValueForValue:*(a1 + 72)];
          [v16 descender];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 48);
    sub_2F118(a1, aBlock);
    v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];
    if (v5)
    {
      v6 = v5;

      v4 = v6;
    }

    [v4 _scaledValueForValue:*(a1 + 72)];
    [v4 descender];

    sub_2F174(a1);
  }
}

double sub_2F48A4(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  [a2 displayScale];
  if (a4)
  {
    v78 = a4;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    a3 = sub_AB9320();
    v78 = v9;
  }

  v10 = a1;
  v75 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_6:

  if (v11)
  {
    v12 = 0;
    v74 = v10 & 0xC000000000000001;
    v69 = &v86;
    v68 = v84;
    v72 = *&UIEdgeInsetsZero.top;
    v73 = *&UIEdgeInsetsZero.bottom;
    v77 = v10 & 0xFFFFFFFFFFFFFF8;
    v13 = &selRef_performWithResponseHandler_;
    v14 = 0.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v67 = vnegq_f64(v15);
    v76 = a3;
    v71 = v11;
    while (1)
    {
      if (v74)
      {
        v16 = sub_36003C(v12, v10);
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_48:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *(v77 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v11 = sub_ABB060();
          goto LABEL_6;
        }

        v16 = *(v10 + 8 * v12 + 32);

        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_48;
        }
      }

      v79 = v17;
      swift_beginAccess();
      v18 = v16[3];
      v19 = v16[5];
      v20 = v16[6];
      v92 = v16[4];
      v93 = v19;
      v94 = v20;
      v90 = v16[2];
      v91 = v18;
      if ((*(&v92 + 1) & 0x8000000000000000) != 0)
      {
        v44 = v91;
        sub_2F118(&v90, &v85);
        sub_2F118(&v90, &v85);
        v80 = v44(a3, v78);
        v45 = [v80 length];
        if (v45 <= 0)
        {

LABEL_29:
          v37 = 0;
          v11 = v71;
          goto LABEL_30;
        }

        v46 = v45;
        v82 = 0;
        v83[0] = 0;
        v47 = swift_allocObject();
        *(v47 + 16) = &v82;
        *(v47 + 24) = v83;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_18BC3C;
        *(v48 + 24) = v47;
        *&v87 = sub_18BC40;
        *(&v87 + 1) = v48;
        *&v85 = _NSConcreteStackBlock;
        *(&v85 + 1) = 1107296256;
        *&v86 = sub_9B8A0;
        *(&v86 + 1) = &block_descriptor_71;
        v10 = _Block_copy(&v85);
        a3 = *(&v87 + 1);

        [v80 enumerateAttribute:NSFontAttributeName inRange:0 options:v46 usingBlock:{0, v10}];
        _Block_release(v10);
        LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

        if (v46)
        {
          goto LABEL_53;
        }

        v37 = v83[0];

        if (!v37)
        {

          v10 = a1;
          a3 = v76;
          v13 = &selRef_performWithResponseHandler_;
          goto LABEL_29;
        }

        v30 = v37;
        [v30 _bodyLeading];
        [v30 _scaledValueForValue:*(&v94 + 1)];

        v10 = a1;
        v11 = v71;
        a3 = v76;
        v13 = &selRef_performWithResponseHandler_;
      }

      else
      {
        v21 = v11;
        v22 = v10;
        v23 = v93;
        sub_2F118(&v90, &v85);
        sub_2F118(&v90, &v85);
        v24 = v23;
        v25 = [v24 v13[226]];
        v26 = v24;
        if (v25)
        {
          v27 = v25;

          v26 = v27;
        }

        v28 = v24;
        v29 = v26;
        v30 = v26;
        v31 = [v28 v13[226]];
        v32 = v28;
        if (v31)
        {
          v33 = v31;

          v32 = v33;
        }

        [v32 _bodyLeading];

        v34 = v28;
        v13 = &selRef_performWithResponseHandler_;
        v35 = [v34 _fontAdjustedForCurrentContentSizeCategory];
        if (v35)
        {
          v36 = v35;

          v34 = v36;
        }

        v37 = v29;
        [v34 _scaledValueForValue:*(&v94 + 1)];

        sub_2F174(&v90);
        v10 = v22;
        v11 = v21;
        a3 = v76;
      }

      _s16MusicApplication11TextDrawingV5CacheC019additionalInsetsForC0_4fontSo06UIEdgeG0VSS_So6UIFontCtFZ_0(a3, v78, v30);
      v39.f64[0] = v38;
      v39.f64[1] = v40;
      v42.f64[0] = v41;
      v42.f64[1] = v43;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v39, v72), vceqq_f64(v42, v73)))) & 1) == 0)
      {
        [v30 ascender];
        [v30 descender];
      }

LABEL_30:
      v49 = v16[3];
      v50 = v16[4];
      v51 = v16[6];
      v88 = v16[5];
      v89 = v51;
      v86 = v49;
      v87 = v50;
      v85 = v16[2];
      v52 = *&v51;
      if ((*(&v50 + 1) & 0x8000000000000000) == 0)
      {
        v53 = v88;
        sub_2F118(&v85, v83);
        sub_2F118(&v85, v83);
        v54 = v53;
        v55 = [v54 v13[226]];
        if (v55)
        {
          v56 = v55;

          v54 = v56;
        }

        [v54 _scaledValueForValue:{v52, *&v67}];

        sub_2F174(&v85);
LABEL_34:
        sub_2F174(&v85);
        if (!v75)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      v58 = v86;
      sub_2F118(&v85, v83);
      sub_2F118(&v85, v83);
      a3 = v58(a3, v78);
      v59 = [a3 length];
      if (v59 <= 0)
      {

        a3 = v76;
        v11 = v71;
        goto LABEL_34;
      }

      v60 = v59;
      v81 = 0;
      v82 = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = &v81;
      *(v61 + 24) = &v82;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_9B94C;
      *(v62 + 24) = v61;
      v84[2] = sub_109B70;
      v84[3] = v62;
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 1107296256;
      v84[0] = sub_9B8A0;
      v84[1] = &block_descriptor_102;
      v10 = _Block_copy(v83);

      [a3 enumerateAttribute:NSFontAttributeName inRange:0 options:v60 usingBlock:{0, v10}];
      _Block_release(v10);
      LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

      if (v60)
      {
        goto LABEL_54;
      }

      v63 = v82;

      if (!v63)
      {

        v10 = a1;
        v11 = v71;
        a3 = v76;
        v13 = &selRef_performWithResponseHandler_;
        goto LABEL_34;
      }

      [v63 _scaledValueForValue:v52];

      sub_2F174(&v85);
      v10 = a1;
      v11 = v71;
      a3 = v76;
      v13 = &selRef_performWithResponseHandler_;
      if (!v75)
      {
LABEL_35:
        v57 = *(v77 + 16);
        goto LABEL_41;
      }

LABEL_40:
      v57 = sub_ABB060();
LABEL_41:
      if (__OFSUB__(v57, 1))
      {
        goto LABEL_52;
      }

      sub_AB3A10();
      v65 = v64;
      sub_2F174(&v90);

      v14 = v14 + v65;
      ++v12;
      if (v79 == v11)
      {
        goto LABEL_50;
      }
    }
  }

  v14 = 0.0;
LABEL_50:

  return v14;
}

uint64_t sub_2F52A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_2F531C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id sub_2F53C8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment] = 1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_exclusionRectangle];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_indexedComponents;
  *&v1[v5] = sub_99104(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_cacheKeyStackViewLayoutMetrics;
  *&v1[v6] = sub_99214(_swiftEmptyArrayStorage);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TextStackView();
  return objc_msgSendSuper2(&v8, "initWithCoder:", a1);
}

unint64_t sub_2F54CC()
{
  result = qword_DFDFE0;
  if (!qword_DFDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFDFE0);
  }

  return result;
}

uint64_t sub_2F559C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F55BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}