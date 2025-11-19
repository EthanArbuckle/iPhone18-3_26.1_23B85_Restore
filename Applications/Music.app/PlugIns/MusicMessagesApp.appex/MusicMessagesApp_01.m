void sub_100019F64()
{
  *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoBindings) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = 0;

  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer:0];
  }

  v4 = *(v0 + 128);
  *(v0 + 128) = 0;
}

id *sub_10001A034()
{

  sub_10001B5B0(v0[19], v0[20], v0[21], v0[22]);

  sub_10001074C(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment, &qword_100632FD8);

  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageDidChangeHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler));
  sub_10001074C(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, &qword_100633028);

  sub_10001C7F0(*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 8), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 16), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 24), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 32), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 40), *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48));
  return v0;
}

uint64_t sub_10001A24C()
{
  sub_10001A034();

  return swift_deallocClassInstance();
}

uint64_t _s9ComponentCMa()
{
  result = qword_100632868;
  if (!qword_100632868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A2F8()
{
  sub_10001A45C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001A45C()
{
  if (!qword_100632878)
  {
    sub_1004DE53C();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100632878);
    }
  }
}

void sub_10001A4D8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v7, "didMoveToSuperview");
  v1 = [v0 superview];
  v2 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      [v1 insertSubview:v3 above:v0];
      v4 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
      if (v4)
      {
        v5 = v4;
        [v1 insertSubview:v5 below:v3];
      }
    }

    else
    {
      v6 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
      [v6 removeFromSuperview];
    }
  }

  else
  {
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    [*&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] removeFromSuperview];
  }
}

void sub_10001A7A4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    [a1 displayScale];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (!a1 || v4 != v7)
  {
    sub_10001ACD4();
  }
}

void sub_10001A8C4()
{
  v1 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = v1;
    [v2 sizeThatFits:{0.0, 0.0}];
    v5 = v3;
    v6 = v4;
    v7 = &v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
    if (*&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle] < 3uLL || (v7[3] & 1) != 0)
    {
      if (v3 > v4)
      {
        v8 = v3;
      }

      else
      {
        v8 = v4;
      }

      [v0 frame];
      Width = CGRectGetWidth(v42);
      [v0 frame];
      Height = CGRectGetHeight(v43);
      if (Width > Height)
      {
        Height = Width;
      }

      v11 = Height / 3.0;
      if (Height / 3.0 >= v8)
      {
        v12 = v5;
      }

      else
      {
        v39 = v8;
        v36 = v5;
        sub_10001C460();
        if (sub_1004D869C())
        {
          v6 = v6 / v5 * v11;
          v12 = v11;
        }

        else
        {
          v39 = v8;
          v36 = v6;
          v12 = v5;
          if (sub_1004D869C())
          {
            v12 = v5 / v6 * v11;
            v6 = v11;
          }
        }
      }
    }

    else
    {
      v12 = v7[1];
      v6 = v7[2];
    }

    [v0 frame];
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_1004DE3FC();
    x = v44.origin.x;
    y = v44.origin.y;
    v15 = v44.size.width;
    v16 = v44.size.height;
    MaxX = CGRectGetMaxX(v44);
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = v12;
    v45.size.height = v6;
    v18 = MaxX - CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = v15;
    v46.size.height = v16;
    CGRectGetMaxY(v46);
    v47.origin.y = 0.0;
    v47.origin.x = v18;
    v47.size.width = v12;
    v47.size.height = v6;
    CGRectGetHeight(v47);
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_1004DE3EC();
    [v2 setFrame:?];
    v19 = *v7;
    sub_10001C3EC(*v7);
    [v2 bounds];
    v24 = v2;
    if (v19)
    {
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v28 = v23;
      v29 = CGRectGetWidth(*&v20) * 0.5;
      v48.origin.x = v25;
      v48.origin.y = v26;
      v48.size.width = v27;
      v48.size.height = v28;
      v30 = CGRectGetHeight(v48) * 0.5;
      v49.origin.x = v25;
      v49.origin.y = v26;
      v49.size.width = v27;
      v49.size.height = v28;
      v24 = CGPathCreateWithRoundedRect(v49, v29, v30, 0);
      sub_10001C3FC(v19);
      v31 = [v2 layer];
      [v31 setShadowPath:v24];

      if ((*v7 - 1) > 1)
      {
        v35 = v24;
        v24 = v2;
      }

      else
      {
        v32 = [objc_opt_self() blackColor];
        UIView.Shadow.init(color:opacity:radius:offset:)(v32, &v36, 0.2, 3.0, 0.0, 3.0);
        v33 = v12 / v5;
        if (v12 >= v5)
        {
          v33 = 1.0;
        }

        v39 = v36;
        v40 = vmulq_n_f64(v37, v33);
        v41 = v38;
        v34 = *&v36;
        UIView.shadow.setter(&v39);
        sub_10001C40C(&v36);
        v35 = v2;
      }
    }

    sub_10001ACD4();
  }
}

void sub_10001ACD4()
{
  v1 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
      v13 = v2;
      v4 = v1;
      sub_10001C3EC(v3);
      v5 = [v0 traitCollection];
      [v5 displayScale];
      v7 = v6;

      sub_10001C3FC(v3);
      v8 = 0.0;
      if (v3 >= 3)
      {
        v8 = 2.0 / fmax(v7, 1.0);
      }

      [v4 frame];
      [v13 setFrame:{sub_10001087C(v9, v10, v11, v12, -v8, -v8)}];
    }
  }
}

id sub_10001B040(void *a1)
{
  swift_weakInit();
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog] = 0;
  v3 = &v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView] = 0;
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10001B2E0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_statusHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_waitingToPlayHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16MusicMessagesApp25ArtworkComponentVideoView_cropStyle] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ArtworkComponentVideoView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10001B3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10001B480(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001B49C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001B4E4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_10001B558(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

void sub_10001B5B0(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

unint64_t sub_10001B608(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B6D4(v11, 0, 0, 1, a1, a2);
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
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_10001B6D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B7E0(a5, a6);
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
    result = sub_1004DEB6C();
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

void *sub_10001B7E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001B82C(a1, a2);
  sub_10001B95C(&off_1005CF138);
  return v3;
}

void *sub_10001B82C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001BA48(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004DEB6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001BA48(v10, 0);
        result = sub_1004DEA9C();
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

uint64_t sub_10001B95C(uint64_t result)
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

  result = sub_10001BABC(result, v11, 1, v3);
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

void *sub_10001BA48(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004CB8(&qword_100633030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001BABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100633030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10001BBB0(void *a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 2;
  }

  v7 = v4;
  v8 = sub_1004DD43C();
  v10 = v9;
  if (v8 == sub_1004DD43C() && v10 == v11)
  {
    goto LABEL_16;
  }

  v13 = sub_1004DF08C();

  if (v13)
  {
LABEL_7:

    return 2;
  }

  v14 = sub_1004DD43C();
  v16 = v15;
  if (v14 == sub_1004DD43C() && v16 == v17)
  {
LABEL_16:

    return 2;
  }

  v19 = sub_1004DF08C();

  if (v19)
  {
    goto LABEL_7;
  }

  v20 = sub_1004DD43C();
  v22 = v21;
  if (v20 == sub_1004DD43C() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_1004DF08C();

    if (v25)
    {
    }

    else
    {
      sub_100006F10(0, &unk_100632420);
      sub_1004DE79C();
      sub_1004D967C();
      v26 = a1;
      v27 = sub_1004D964C();
      v28 = sub_1004DDF7C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = a1;
        v36 = v30;
        *v29 = 136446210;
        v31 = v26;
        sub_100004CB8(&qword_100633098);
        v32 = sub_1004DD4DC();
        v34 = sub_10001B608(v32, v33, &v36);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Falling back to UIView.ContentMode.scaleAspectFit [cropStyle is unsupported] cropStyle=%{public}s", v29, 0xCu);
        sub_100008D24(v30);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v7);
    }
  }

  return 1;
}

uint64_t sub_10001BF20(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v4 = objc_opt_self();
  *(v2 + 56) = [v4 clearColor];
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  v5 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  v6 = sub_1004DE53C();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = 0;
  v8 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = 0;
  v15 = v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isReusable) = 1;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;
  v16 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_foregroundOverlayColor;
  *(v2 + v16) = [v4 clearColor];
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_foregroundOverlayView) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoBindings) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = 0;
  v17 = (v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
  *v17 = 0;
  v17[1] = 0;
  v18 = v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  *(v18 + 48) = -1;
  v19 = a1;
  [v19 setClipsToBounds:1];
  [v19 setHidden:1];
  [v19 setAccessibilityIgnoresInvertColors:1];
  *(v2 + 112) = v19;
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [objc_allocWithZone(UIImageView) init];
  [v28 setFrame:{v21, v23, v25, v27}];
  [v28 setAutoresizingMask:18];
  [v28 setHidden:1];
  [v19 addSubview:v28];
  *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component__fadeImageView) = v28;
  type metadata accessor for ArtworkComponentImageView();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    v29 = v28;
  }

  else
  {
    sub_100004CB8(&qword_100632130);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100511DA0;
    v31 = v28;
    sub_1004DEAAC(81);
    v33._countAndFlagsBits = 0xD000000000000028;
    v33._object = 0x80000001004E7E80;
    sub_1004DD5FC(v33);
    v34._countAndFlagsBits = sub_1004DF34C();
    sub_1004DD5FC(v34);

    v35._object = 0x80000001004E7EB0;
    v35._countAndFlagsBits = 0xD000000000000027;
    sub_1004DD5FC(v35);
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    sub_1004DEA1C();
  }

  sub_100015558(0);

  return v2;
}

id sub_10001C3EC(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_10001C3FC(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_10001C460()
{
  result = qword_100632FF8;
  if (!qword_100632FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100632FF8);
  }

  return result;
}

id sub_10001C4C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_10001C4F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_10001C544@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reasonForWaitingToPlay];
  *a2 = result;
  return result;
}

uint64_t sub_10001C580()
{

  return swift_deallocObject();
}

id sub_10001C5CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

id sub_10001C614@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_10001C698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C6D4()
{

  return swift_deallocObject();
}

uint64_t sub_10001C73C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001C784(id result, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_10001C79C(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

id sub_10001C79C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v9 = a3;
    v10 = a4;
  }

  v11 = a1;

  return a2;
}

void sub_10001C7F0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_10001C808(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

void sub_10001C808(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    a1 = a2;
  }

  else
  {
    a3 = a2;
  }
}

unint64_t sub_10001C868()
{
  result = qword_100633078;
  if (!qword_100633078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100633078);
  }

  return result;
}

unint64_t sub_10001C8BC()
{
  result = qword_100633080;
  if (!qword_100633080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100633080);
  }

  return result;
}

uint64_t sub_10001C910()
{

  return swift_deallocObject();
}

id sub_10001C97C()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component__fadeImageView);
  [v1 setImage:0];
  [v1 setBackgroundColor:0];

  return [v1 setHidden:1];
}

unint64_t sub_10001C9F4()
{
  result = qword_1006330B0;
  if (!qword_1006330B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006330B0);
  }

  return result;
}

uint64_t sub_10001CA48()
{

  return swift_deallocObject();
}

uint64_t sub_10001CA9C()
{

  return swift_deallocObject();
}

id sub_10001CB60()
{
  result = [objc_opt_self() clearColor];
  qword_1006718A0 = result;
  return result;
}

id sub_10001CD04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001CD60()
{
  result = UIRoundToViewScale();
  qword_1006330E8 = v1;
  return result;
}

id sub_10001CD88()
{
  result = [objc_opt_self() labelColor];
  qword_1006330F0 = result;
  return result;
}

void sub_10001CDC4()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E8190;
  v6._object = 0x80000001004E8150;
  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x80000001004E8170;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1006330F8 = v2;
  unk_100633100 = v4;
}

char *sub_10001CEA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_launchMusicLabel;
  *&v5[v10] = sub_10001D970();
  type metadata accessor for NowPlayingIndicatorView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];

  v12 = *(v11 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize);
  *(v11 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize) = 1;
  if ((v12 & 1) == 0)
  {
    sub_1000058A4();
  }

  v13 = OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_indicatorView;
  [v11 sizeToFit];
  *&v5[v13] = v11;
  v14 = &v5[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_layoutInvalidationHandler];
  v15 = type metadata accessor for LaunchMusicCellView();
  *v14 = 0;
  *(v14 + 1) = 0;
  v20.receiver = v5;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 addSubview:*&v16[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_indicatorView]];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_launchMusicLabel]];

  return v16;
}

uint64_t sub_10001D08C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_layoutInvalidationHandler);

  return sub_10000DE74(v1);
}

id sub_10001D0E0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LaunchMusicCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001D23C()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for LaunchMusicCellView();
  objc_msgSendSuper2(&v41, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_indicatorView];
  [v1 sizeToFit];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_1004DE2CC();
  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = v4 & (v6 == 1);
  v8 = [v0 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = sub_1004DE2DC();
  v11 = [v0 traitCollection];
  v12 = [v11 layoutDirection];

  v13 = 6.0;
  if ((v7 & 1) == 0)
  {
    [v1 bounds];
    v13 = CGRectGetWidth(v42) + 6.0;
  }

  [v0 bounds];
  Width = CGRectGetWidth(v43);
  if (qword_100631EB8 != -1)
  {
    v40 = Width;
    swift_once();
    Width = v40;
  }

  v15 = *&qword_1006330E8;
  v16 = Width - (v15 + v15) - v13;
  v17 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_launchMusicLabel];
  [v0 bounds];
  [v17 sizeThatFits:{v16, CGRectGetHeight(v44)}];
  v20 = v19;
  if (v16 >= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  [v0 bounds];
  CGRectGetWidth(v45);
  UIRoundToViewScale();
  v23 = v22;
  v24 = v13 + v22;
  if (v12 == 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v13 + v22;
  }

  if (v7)
  {
    if ((v10 & 1) == 0 || ([v0 bounds], CGRectGetWidth(v46) > 320.0))
    {
      v15 = 43.0 - v15;
    }
  }

  else
  {
    v26 = [v17 font];
    if (!v26)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v27 = v26;
    [v26 ascender];

    UIRoundToViewScale();
    v15 = 43.0 - v28;
  }

  [v17 setFrame:{v25, v15, v21, v20}];
  if (v7)
  {
    if (v12 == 1)
    {
      [v1 frame];
      v24 = v21 + v23 - v29;
    }
  }

  else
  {
    [v17 frame];
    if (v12 == 1)
    {
      v24 = CGRectGetMaxX(*&v30) + 6.0;
    }

    else
    {
      v24 = CGRectGetMinX(*&v30) - v13;
    }
  }

  [v17 frame];
  MinY = CGRectGetMinY(v47);
  v35 = [v17 font];
  if (!v35)
  {
    __break(1u);
    goto LABEL_31;
  }

  v36 = v35;
  [v35 ascender];

  [v1 bounds];
  CGRectGetHeight(v48);
  UIRoundToViewScale();
  v38 = MinY + v37;
  [v1 frame];
  [v1 setFrame:{v24, v38}];
  if (v7)
  {
    [v1 bounds];
    v39 = CGRectGetWidth(v49);
    sub_10001DB4C(v13 + v39);
  }

  else
  {
    sub_10001DB4C(0.0);
    if ((v4 & 1) != 0 || [v17 _measuredNumberOfLines] >= 2)
    {
      [v17 frame];
      [v0 bounds];
      UIRectCenteredYInRect();
      [v17 setFrame:?];
      [v1 frame];
      [v0 bounds];
      UIRectCenteredYInRect();
      [v1 setFrame:?];
    }
  }
}

id sub_10001D78C(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for LaunchMusicCellView();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    result = [v1 setNeedsLayout];
    v13 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_layoutInvalidationHandler];
    if (v13)
    {

      v13(v1);
      return sub_10000DE74(v13);
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1004DD43C();
  v8 = v7;
  if (v6 == sub_1004DD43C() && v8 == v9)
  {
  }

  v11 = sub_1004DF08C();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

id sub_10001D970()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = v0;
  v2 = sub_1004DE2BC();
  [v1 setMinimumContentSizeCategory:v2];

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 setFont:v3];

  if (qword_100631EC0 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_1006330F0];
  if (qword_100631EC8 != -1)
  {
    swift_once();
  }

  v4 = objc_allocWithZone(NSMutableAttributedString);
  v5 = sub_1004DD3FC();
  v6 = [v4 initWithString:v5];

  [v1 setAttributedText:v6];
  [v1 setNumberOfLines:0];
  [v1 setLineBreakMode:0];
  LODWORD(v7) = 0.5;
  [v1 _setHyphenationFactor:v7];
  return v1;
}

void sub_10001DB4C(double a1)
{
  v3 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v3 setFirstLineHeadIndent:a1];
  if (qword_100631EC8 != -1)
  {
    swift_once();
  }

  v4 = objc_allocWithZone(NSMutableAttributedString);
  v5 = sub_1004DD3FC();
  v7 = [v4 initWithString:v5];

  v6 = v3;
  [v7 addAttribute:NSParagraphStyleAttributeName value:v6 range:{0, sub_1004DD58C()}];

  [*(v1 + OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_launchMusicLabel) setAttributedText:v7];
}

uint64_t sub_10001DCDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_launchMusicLabel;
  *(v1 + v2) = sub_10001D970();
  type metadata accessor for NowPlayingIndicatorView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];

  v4 = *(v3 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize);
  *(v3 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize) = 1;
  if ((v4 & 1) == 0)
  {
    sub_1000058A4();
  }

  v5 = OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_indicatorView;
  [v3 sizeToFit];
  *(v1 + v5) = v3;
  v6 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp19LaunchMusicCellView_layoutInvalidationHandler);
  *v6 = 0;
  v6[1] = 0;
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

UIImage __swiftcall UIImage.applying(tintColor:)(UIColor tintColor)
{
  v2 = [v1 flattenedImageWithColor:tintColor.super.isa];
  v3 = [v2 imageWithRenderingMode:1];

  return v3;
}

uint64_t static UIImage.stretchableImage(filledWith:cornerRadius:)(void *a1, double a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  v26 = _Q0;
  v9 = 1.0;
  if (a2 > 0.0)
  {
    v9 = a2 + a2 + 1.0;
    *&v26 = v9;
    *(&v26 + 1) = v9;
  }

  v10 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setScale:v13];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v10 format:{v9, v9}];
  v25 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = &v26;
  *(v15 + 32) = a2;
  *(v15 + 40) = &v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10001E37C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10001E39C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005CFE68;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v25)
  {

    v22 = 0;
    goto LABEL_10;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 9.22337204e18)
  {
    v21 = v25;
    v22 = [v21 stretchableImageWithLeftCapWidth:a2 topCapHeight:a2];

LABEL_10:
    v23 = v25;

    return v22;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_10001E128(void *a1, void *a2, double *a3, void **a4, CGFloat a5)
{
  v10 = sub_1004D870C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 CGContext];
  v15 = [a2 cgColor];
  if (v15)
  {
    v16 = v15;
    CGContextSetFillColorWithColor(v14, v16);

    v17 = *a3;
    v18 = a3[1];
    if (a5 <= 0.0)
    {
      [a1 fillRect:{0.0, 0.0, v17, v18}];
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = CGPathCreateWithRoundedRect(*(&v17 - 2), a5, a5, 0);
      v22 = [a1 CGContext];
      CGContextAddPath(v22, v21);

      v23 = [a1 CGContext];
      (*(v11 + 104))(v13, enum case for CGPathFillRule.winding(_:), v10);
      sub_1004DDECC();

      (*(v11 + 8))(v13, v10);
    }

    v24 = [a1 currentImage];
    v25 = *a4;
    *a4 = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001E344()
{

  return swift_deallocObject();
}

void sub_10001E3C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10001E410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E438(void *a1)
{
  if (sub_10001E834(a1))
  {
    return 0;
  }

  result = kMRMediaRemoteNowPlayingInfoIsMusicApp;
  if (!kMRMediaRemoteNowPlayingInfoIsMusicApp)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if ((sub_10001E780(kMRMediaRemoteNowPlayingInfoIsMusicApp, a1) & 1) == 0)
  {
    return 0;
  }

  result = kMRMediaRemoteNowPlayingInfoIsAdvertisement;
  if (!kMRMediaRemoteNowPlayingInfoIsAdvertisement)
  {
    goto LABEL_15;
  }

  if (sub_10001E780(kMRMediaRemoteNowPlayingInfoIsAdvertisement, a1))
  {
    return 0;
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier)
  {
    goto LABEL_16;
  }

  v3 = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier, a1);
  if ((v4 & 1) == 0 && v3)
  {
    return 1;
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier)
  {
    goto LABEL_17;
  }

  v5 = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier, a1);
  if (v6)
  {
    return 0;
  }

  return v5 != 0;
}

void *sub_10001E520(void *result, void *a2)
{
  if (*a2)
  {
    if ([result objectForKey:?])
    {
      sub_1004DE8DC();
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
      sub_100008B30(v5);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001E5E0(void *result)
{
  if (kMRMediaRemoteNowPlayingInfoArtworkData)
  {
    if ([result objectForKey:?])
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = 0u;
      v3 = 0u;
    }

    v4[0] = v2;
    v4[1] = v3;
    if (*(&v3 + 1))
    {
      if (swift_dynamicCast())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100008B30(v4);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001E6AC(void *result)
{
  if (kMRMediaRemoteNowPlayingInfoPlaybackRate)
  {
    if ([result objectForKey:?])
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      v1 = swift_dynamicCast();
      v2 = v4;
      v3 = v1 ^ 1;
      if (!v1)
      {
        v2 = 0;
      }
    }

    else
    {
      sub_100008B30(v7);
      v2 = 0;
      v3 = 1;
    }

    LOBYTE(v7[0]) = v3;
    return (v2 | (v3 << 32));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E780(uint64_t a1, id a2)
{
  if ([a2 objectForKey:a1])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_100008B30(v6);
    return 0;
  }

  return result;
}

BOOL sub_10001E834(void *a1)
{
  v2 = sub_10001E520(a1, &kMRMediaRemoteNowPlayingInfoTitle);
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = sub_10001E520(a1, &kMRMediaRemoteNowPlayingInfoArtist);
  if (v8)
  {
    v9 = v7;
    v10 = v8;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = sub_10001E520(a1, &kMRMediaRemoteNowPlayingInfoAlbum);
  if (!v14)
  {
    return 1;
  }

  v15 = v13;
  v16 = v14;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  return v17 == 0;
}

id sub_10001E914(uint64_t a1, id a2)
{
  if ([a2 objectForKey:a1])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10001E9F0();
    if (swift_dynamicCast())
    {
      v2 = [v4 longLongValue];

      return v2;
    }
  }

  else
  {
    sub_100008B30(v7);
  }

  return 0;
}

unint64_t sub_10001E9F0()
{
  result = qword_100632430;
  if (!qword_100632430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100632430);
  }

  return result;
}

uint64_t sub_10001EA3C()
{
  result = UIRoundToViewScale();
  qword_100633148 = v1;
  return result;
}

void sub_10001EA64()
{
  sub_100021074();
  v0 = UIFontTextStyleCaption2;
  v1 = sub_1004DE48C();

  qword_100633150 = v1;
}

id sub_10001EB00()
{
  if (qword_100631EE8 != -1)
  {
    swift_once();
  }

  v1 = qword_100633160;
  qword_100633170 = qword_100633160;

  return v1;
}

void sub_10001EB84(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleFootnote;
  v5 = [v3 preferredFontForTextStyle:v4];

  *a2 = v5;
}

void sub_10001EBF8()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E83C0;
  v8._countAndFlagsBits = 0x59414C5020574F4ELL;
  v8._object = 0xEB00000000474E49;
  v6._object = 0x80000001004E83A0;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100633188 = v2;
  unk_100633190 = v4;
}

id sub_10001EDCC(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  v5 = [v3 text];
  if (v5)
  {
    v6 = v5;
    sub_1004DD43C();
  }

  else
  {
  }

  v7 = sub_1004DD3FC();

  return v7;
}

void sub_10001EE7C(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = sub_1004DD43C();
  v9 = v8;
  v10 = *a4;
  v11 = *&a1[*a4];
  v12 = a3;
  v19 = a1;
  v13 = [v11 text];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1004DD43C();
    v17 = v16;

    if (v15 != v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0xE000000000000000;
    if (v7)
    {
LABEL_9:
      v18 = sub_1004DF08C();

      if (v18)
      {
      }

      else
      {
        [*&a1[v10] setText:v12];

        [v19 setNeedsLayout];
      }

      return;
    }
  }

  if (v17 != v9)
  {
    goto LABEL_9;
  }
}

void sub_10001F0DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100004CB8(&qword_100632FD8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v105[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v105[-v14];
  v16 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent] = 0;
  v17 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  *&v4[v17] = [objc_allocWithZone(UILabel) init];
  v18 = &v4[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_layoutInvalidationHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView;
  type metadata accessor for NowPlayingIndicatorView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  *&v4[v23] = [objc_allocWithZone(UILabel) init];
  type metadata accessor for ArtworkComponentImageView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v25 = sub_10001BF20(v24);

  *&v5[v16] = v25;

  v26 = UIView.Border.artwork.unsafeMutableAddressor();
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = v26[2];
  v30 = v29;
  sub_10001307C(v27, v28, v29);

  v31 = *&v5[v16];
  if (!v31)
  {
    __break(1u);
    goto LABEL_25;
  }

  v32 = UIView.Corner.small.unsafeMutableAddressor();
  v33 = sub_1004DE53C();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v15, v32, v33);
  (*(v34 + 56))(v15, 0, 1, v33);
  v35 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_100020F54(v31 + v35, v13);
  swift_beginAccess();
  sub_100020FC4(v15, v31 + v35);
  swift_endAccess();
  sub_100012D00(v13);

  sub_10001074C(v13, &qword_100632FD8);
  sub_10001074C(v15, &qword_100632FD8);
  v36 = *&v5[v16];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = *(v36 + 80);
  v38 = *(v36 + 88);
  *(v36 + 80) = vdupq_n_s64(0x4048000000000000uLL);

  sub_100012A7C(v37, v38);

  v39 = *&v5[v16];
  if (!v39)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v45 = *(v40 + 2);
  v46 = *(v39 + 184);
  v47 = *(v39 + 152);
  v107[1] = *(v39 + 168);
  v107[2] = v46;
  v107[0] = v47;
  *(v39 + 152) = v41;
  *(v39 + 160) = v42;
  *(v39 + 168) = v43;
  *(v39 + 176) = v44;
  *(v39 + 184) = v45;
  v48 = v43;
  v49 = v44;
  v50 = v41;
  v51 = v42;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v55 = v51;
  sub_100012B60(v107);
  sub_10001074C(v107, &qword_100632FD0);

  v56 = *&v5[v16];
  if (!v56)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v57 = *(v56 + 112);
  *&v5[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artworkView] = v57;
  v58 = type metadata accessor for TrackCellView();
  v106.receiver = v5;
  v106.super_class = v58;
  v59 = v57;
  v60 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v61 = sub_1004DE2BC();
  [v60 setMinimumContentSizeCategory:v61];

  v62 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel;
  v63 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel];
  [v63 setTextColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];

  v64 = qword_100631F10;
  v65 = *&v60[v62];
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = sub_1004DD3FC();

  [v65 setText:v66];

  [*&v60[v62] setHidden:1];
  [*&v60[v62] setAdjustsFontForContentSizeCategory:1];
  v67 = qword_100631ED8;
  v68 = *&v60[v62];
  if (v67 != -1)
  {
    swift_once();
  }

  [v68 setFont:qword_100633150];

  v69 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  [*&v60[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView] addSubview:*&v60[v62]];
  v70 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  v71 = qword_100631EE0;
  v72 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];
  if (v71 != -1)
  {
    swift_once();
  }

  [v72 setTextColor:qword_100633158];

  [*&v60[v70] setAllowsDefaultTighteningForTruncation:1];
  [*&v60[v70] setAdjustsFontForContentSizeCategory:1];
  v73 = qword_100631EE8;
  v74 = *&v60[v70];
  if (v73 != -1)
  {
    swift_once();
  }

  [v74 setFont:qword_100633160];

  [*&v60[v69] addSubview:*&v60[v70]];
  v75 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  v76 = qword_100631F00;
  v77 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel];
  if (v76 != -1)
  {
    swift_once();
  }

  [v77 setTextColor:qword_100633178];

  v78 = *&v60[v75];
  v79 = sub_1004DD3FC();
  [v78 setText:v79];

  [*&v60[v75] sizeToFit];
  [*&v60[v75] setHidden:0];
  [*&v60[v75] setAdjustsFontForContentSizeCategory:1];
  v80 = qword_100631F08;
  v81 = *&v60[v75];
  if (v80 != -1)
  {
    swift_once();
  }

  [v81 setFont:qword_100633180];

  [*&v60[v69] addSubview:*&v60[v75]];
  v82 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  v83 = qword_100631EF0;
  v84 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];
  if (v83 != -1)
  {
    swift_once();
  }

  [v84 setTextColor:qword_100633168];

  [*&v60[v82] setAllowsDefaultTighteningForTruncation:1];
  [*&v60[v82] setAdjustsFontForContentSizeCategory:1];
  v85 = qword_100631EF8;
  v86 = *&v60[v82];
  if (v85 != -1)
  {
    swift_once();
  }

  [v86 setFont:qword_100633170];

  [*&v60[v69] addSubview:*&v60[v82]];
  [*&v60[v69] addSubview:*&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artworkView]];
  v87 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView;
  v88 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView];
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 blackColor];
  [v90 setBackgroundColor:v91];

  [*&v60[v87] setAlpha:0.3];
  v92 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent;
  v93 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent];
  if (!v93)
  {
    goto LABEL_28;
  }

  v94 = *&v60[v87];
  v95 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_100020F54(v93 + v95, v15);
  v96 = v94;
  sub_1004DE54C();

  [*&v60[v87] setHidden:1];
  [*&v60[v69] addSubview:*&v60[v87]];
  v97 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView;
  v98 = *&v60[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView];
  v99 = [v89 whiteColor];
  [v98 setTintColor:v99];

  [*&v60[v97] sizeToFit];
  [*&v60[v97] setHidden:1];
  v100 = *&v60[v69];

  [v100 addSubview:*&v60[v97]];
  v101 = *&v60[v92];
  if (v101)
  {

    v102 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v103 = (v101 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    v104 = *(v101 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    *v103 = sub_10002106C;
    v103[1] = v102;

    sub_10000DE74(v104);

    return;
  }

LABEL_29:
  __break(1u);
}

void sub_10001FC28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_10001FCD0()
{

  sub_10000DE74(*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_layoutInvalidationHandler));
  v1 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel);
}

id sub_10001FD84()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TrackCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001FF40()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for TrackCellView();
  objc_msgSendSuper2(&v25, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1004DD43C();
    v7 = v6;

    v8 = &selRef_setShadowPathIsBounds_;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0xE000000000000000;
    v8 = &selRef_setShadowPathIsBounds_;
  }

  if (v7 == 0xE000000000000000)
  {

    goto LABEL_9;
  }

LABEL_7:
  v9 = sub_1004DF08C();

  if ((v9 & 1) == 0)
  {
    v10 = sub_1004DD3FC();
    [v2 setText:v10];

    [v1 v8[220]];
  }

LABEL_9:
  v11 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];
  v12 = [v11 text];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1004DD43C();
    v16 = v15;

    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (v16 == 0xE000000000000000)
  {

    goto LABEL_17;
  }

LABEL_15:
  v18 = sub_1004DF08C();

  if ((v18 & 1) == 0)
  {
    v19 = sub_1004DD3FC();
    [v11 setText:v19];

    result = [v1 v8[220]];
  }

LABEL_17:
  v20 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent];
  if (v20)
  {
    v21 = v20[14];

    [v21 clearArtworkCatalogs];
    *(v20 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
    v20[25] = 0;
    v20[26] = 0;

    [*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artworkView] setImage:0];
    [*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel] setHidden:1];
    [*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setHidden:1];
    v22 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView];
    [v22 setHidden:1];
    [v1 v8[220]];
    v23 = *(v22 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped);
    *(v22 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = 1;
    if ((v23 & 1) == 0)
    {
      sub_100005B14();
    }

    v24 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel];
    result = [v24 isHidden];
    if ((result & 1) == 0)
    {
      [v24 setHidden:1];
      return [v1 v8[220]];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100020294()
{
  v1 = v0;
  v92.receiver = v0;
  v92.super_class = type metadata accessor for TrackCellView();
  objc_msgSendSuper2(&v92, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 layoutDirection];

  v4 = &selRef_setShadowPathIsBounds_;
  [*&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView] bounds];
  recta.origin.x = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = sub_1004DE2BC();
  v15 = sub_1004DE2DC();

  v16 = [v1 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  v18 = sub_1004DE2CC();
  v19 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent;
  if (!*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent])
  {
    __break(1u);
    goto LABEL_50;
  }

  v20 = sub_1000131D0(0, 0, 1);
  v22 = v21;

  if (v3 == 1)
  {
    v93.origin.x = recta.origin.x;
    v93.origin.y = v7;
    v93.size.width = v9;
    v93.size.height = v11;
    MaxX = CGRectGetMaxX(v93);
    if (qword_100631ED0 != -1)
    {
      v78 = MaxX;
      swift_once();
      MaxX = v78;
    }

    v24 = *&qword_100633148;
    v25 = MaxX - *&qword_100633148 - v20;
    if ((v15 & 1) == 0)
    {
LABEL_6:
      v87 = v20;
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_100631ED0 != -1)
    {
      swift_once();
    }

    v24 = *&qword_100633148;
    v25 = *&qword_100633148;
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  UIRectCenteredYInRect();
  v25 = v26;
  v24 = v27;
  v87 = v28;
  v22 = v29;
LABEL_11:
  if (!*&v1[v19])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v84 = v9;
  v85 = v11;

  sub_100013990(v25, v24, v87, v22);

  v30 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView];
  sub_1004DE41C();
  [v30 setCenter:?];
  v31 = &selRef_setShadowPathIsBounds_;
  v79 = v25;
  [*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setFrame:{v25, v24, v87, v22}];
  v32 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel];
  v33 = [v32 isHidden];
  v34 = [v1 traitCollection];
  v35 = v34;
  if (v33)
  {
    [v34 displayScale];
    UIRoundToScale();
    width = v36;
    v37 = objc_opt_self();
    v38 = [v37 defaultMetrics];
    [v38 scaledValueForValue:v35 compatibleWithTraitCollection:34.5];

    [v35 displayScale];
    UIRoundToScale();
    v82 = v39;
    v31 = &selRef_setShadowPathIsBounds_;
    v40 = [v37 defaultMetrics];
    v4 = &selRef_setShadowPathIsBounds_;
    height = 51.0;
    [v40 scaledValueForValue:v35 compatibleWithTraitCollection:?];
    v80 = v41;

    y = 0.0;
    v35 = v40;
    v43 = 0.0;
  }

  else
  {
    sub_100020CC8(v34, &recta.origin.y);
    y = recta.origin.y;
    v43 = v89;
    v82 = v90;
    width = recta.size.width;
    v80 = v91;
    height = recta.size.height;
  }

  [*&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artworkView] frame];
  v44 = CGRectGetMaxX(v94) + 8.0;
  if (v3 == 1)
  {
    v45 = *&qword_100633148;
  }

  else
  {
    v45 = v44;
  }

  v95.origin.x = recta.origin.x;
  v95.origin.y = v7;
  v95.size.width = v84;
  v95.size.height = v85;
  v46 = ceil(CGRectGetWidth(v95) - v20 + -8.0 - (*&qword_100633148 + *&qword_100633148));
  [v32 sizeThatFits:{v46, 0.0}];
  if (v15)
  {
    y = v43;
  }

  recta.origin.x = v45;
  [v32 v31[212]];
  if (v18)
  {
    v48 = [v32 font];
    if (v48)
    {
      v49 = v48;
      v50 = v22;
      [v48 ascender];

      UIRoundToViewScale();
      y = y - v51;
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v50 = v22;
LABEL_24:
  [v32 _setFirstLineBaselineFrameOriginY:y];
  v52 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel];
  [v52 v4[150]];
  v54 = v53;
  v86 = v55;
  if ([v52 isHidden])
  {
    v56 = v46;
  }

  else
  {
    v56 = v46 - (v54 + 2.0);
  }

  v57 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];
  [v57 sizeThatFits:{v56, 0.0}];
  v60 = v59;
  if (v56 >= v58)
  {
    v56 = v58;
  }

  if (v3 == 1)
  {
    v96.origin.x = v79;
    v96.origin.y = v24;
    v96.size.width = v87;
    v96.size.height = v50;
    MinX = CGRectGetMinX(v96);
    v62 = [v52 isHidden];
    v63 = 0.0;
    if (!v62)
    {
      v63 = v54 + 2.0;
    }

    v44 = MinX + -8.0 - v56 - v63;
  }

  if (v15)
  {
    v64 = v82;
  }

  else
  {
    v64 = width;
  }

  [v57 v31[212]];
  v65 = v64;
  if (v18)
  {
    v66 = [v57 font];
    if (v66)
    {
      v67 = v66;
      [v66 ascender];

      UIRoundToViewScale();
      v65 = v64 - v68;
      goto LABEL_39;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_39:
  [v57 _setFirstLineBaselineFrameOriginY:v65];
  [v57 frame];
  [v52 v31[212]];
  if (v18)
  {
    v69 = [v57 font];
    if (v69)
    {
      v70 = v69;
      [v69 ascender];

      UIRoundToViewScale();
      v64 = v64 - v71;
      goto LABEL_42;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_42:
  [v52 _setFirstLineBaselineFrameOriginY:v64];
  v72 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];
  [v72 sizeThatFits:{v46, 0.0}];
  if (v15)
  {
    v74 = v80;
  }

  else
  {
    v74 = height;
  }

  [v72 v31[212]];
  if ((v18 & 1) == 0)
  {
    goto LABEL_48;
  }

  v75 = [v72 font];
  if (v75)
  {
    v76 = v75;
    [v75 ascender];

    UIRoundToViewScale();
    v74 = v74 - v77;
LABEL_48:
    [v72 _setFirstLineBaselineFrameOriginY:v74];
    return;
  }

LABEL_54:
  __break(1u);
}

id sub_100020AC0(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for TrackCellView();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    result = [v1 setNeedsLayout];
    v13 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_layoutInvalidationHandler];
    if (v13)
    {

      v13(v1);
      return sub_10000DE74(v13);
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1004DD43C();
  v8 = v7;
  if (v6 == sub_1004DD43C() && v8 == v9)
  {
  }

  v11 = sub_1004DF08C();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_100020CC8(void *a1@<X0>, void *a2@<X8>)
{
  [a1 displayScale];
  UIRoundToScale();
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  [v7 scaledValueForValue:a1 compatibleWithTraitCollection:25.0];
  v9 = v8;

  v10 = [v6 defaultMetrics];
  [v10 scaledValueForValue:a1 compatibleWithTraitCollection:41.5];

  [a1 displayScale];
  UIRoundToScale();
  v12 = v11;
  v13 = [v6 defaultMetrics];
  [v13 scaledValueForValue:a1 compatibleWithTraitCollection:58.0];
  v15 = v14;

  *a2 = 0x4039000000000000;
  a2[1] = v5;
  a2[2] = 0x404D000000000000;
  a2[3] = v9;
  a2[4] = v12;
  a2[5] = v15;
}

void sub_100020E18()
{
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent) = 0;
  v1 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = (v0 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_layoutInvalidationHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView;
  type metadata accessor for NowPlayingIndicatorView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_100020F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632FD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021034()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100021074()
{
  result = qword_100633210;
  if (!qword_100633210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100633210);
  }

  return result;
}

id sub_1000210C0()
{
  type metadata accessor for StoreLookupManager();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(NSOperationQueue) init];
  v2 = sub_1004DD3FC();
  [v1 setName:v2];

  [v1 setMaxConcurrentOperationCount:3];
  *(v0 + 16) = v1;
  v3 = [objc_allocWithZone(NSCache) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_1004DD43C();
    v5 = sub_1004DD3FC();
  }

  [v3 setName:v5];

  result = [v3 setCountLimit:100];
  *(v0 + 24) = v3;
  qword_1006718A8 = v0;
  return result;
}

void sub_1000211F0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_100028EF8(a4);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = *(a1 + 56) + 16 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_100010660(*v8, *(v8 + 8));
  a2(v9, v10);

  sub_10001066C(v9, v10);
}

void sub_1000212A4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = &_swiftEmptyArrayStorage;
  *(v6 + 16) = sub_100027744(&_swiftEmptyArrayStorage);
  v52 = swift_allocObject();
  *(v52 + 16) = &_swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  v50 = v3;
  if (!v8)
  {
    v54 = &_swiftEmptyArrayStorage;
LABEL_29:
    if (v7[2])
    {
      v44 = 1;
    }

    else
    {
      v44 = a2 == 0;
    }

    if (!v44)
    {

      a2(v45);
    }

    v46 = [objc_opt_self() sharedBagLoadingController];
    v47 = swift_allocObject();
    v47[2] = v54;
    v47[3] = v52;
    v47[4] = v50;
    v47[5] = v6;
    v47[6] = a2;
    v47[7] = a3;
    aBlock[4] = sub_100023028;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000224DC;
    aBlock[3] = &unk_1005CFF58;
    v48 = _Block_copy(aBlock);

    sub_10000DE64(a2);

    [v46 requestAccessToBagUsingBlock:v48];
    _Block_release(v48);

    return;
  }

  v49 = a3;
  v53 = *(v3 + 24);
  v9 = (a1 + 32);
  v54 = &_swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      v14 = *v9++;
      v13 = v14;
      v15 = [objc_allocWithZone(NSNumber) initWithLongLong:v14];
      v16 = [v53 objectForKey:v15];

      if (v16)
      {
        break;
      }

      v30 = *(v52 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 16) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_100024BC8(0, *(v30 + 2) + 1, 1, v30);
        *(v52 + 16) = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_100024BC8((v32 > 1), v33 + 1, 1, v30);
      }

      *(v30 + 2) = v33 + 1;
      *&v30[8 * v33 + 32] = v13;
      *(v52 + 16) = v30;
      aBlock[0] = v13;
      v34 = sub_1004DEFFC();
      v36 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100024ABC(0, *(v54 + 2) + 1, 1, v54);
      }

      v38 = *(v54 + 2);
      v37 = *(v54 + 3);
      if (v38 >= v37 >> 1)
      {
        v54 = sub_100024ABC((v37 > 1), v38 + 1, 1, v54);
      }

      *(v54 + 2) = v38 + 1;
      v39 = &v54[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      if (!--v8)
      {
LABEL_27:
        v7 = *(v52 + 16);
        a3 = v49;
        goto LABEL_29;
      }
    }

    v17 = v16;
    v18 = *(v6 + 16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v18;
    v20 = v6;
    *(v6 + 16) = 0x8000000000000000;
    v22 = sub_100028EF8(v13);
    v23 = *(v18 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v18 + 24) >= v25)
    {
      if (v19)
      {
        v29 = aBlock[0];
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100029894();
        v29 = aBlock[0];
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100022858(v25, v19);
      v27 = sub_100028EF8(v13);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_37;
      }

      v22 = v27;
      v29 = aBlock[0];
      if (v26)
      {
LABEL_3:
        v10 = v29[7] + 16 * v22;
        v11 = *v10;
        v12 = *(v10 + 8);
        *v10 = v16;
        *(v10 + 8) = 0;
        sub_10001066C(v11, v12);

        goto LABEL_4;
      }
    }

    v29[(v22 >> 6) + 8] |= 1 << v22;
    *(v29[6] + 8 * v22) = v13;
    v40 = v29[7] + 16 * v22;
    *v40 = v16;
    *(v40 + 8) = 0;

    v41 = v29[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_36;
    }

    v29[2] = v43;
LABEL_4:
    v6 = v20;
    *(v20 + 16) = v29;

    if (!--v8)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1004DF16C();
  __break(1u);
}

uint64_t sub_10002177C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v75 = a4;
  v13 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v13 - 8);
  v77 = v71 - v14;
  if (a2)
  {
    v76 = a2;
  }

  else
  {
    v15 = objc_allocWithZone(NSError);
    v16 = sub_1004DD3FC();
    v76 = [v15 initWithDomain:v16 code:0 userInfo:0];
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  v78 = *(v17 + 16);
  if (v78)
  {
    v71[1] = a7;
    v72 = a6;
    swift_errorRetain();

    v18 = 0;
    v19 = v76;
    v20 = v17;
    v73 = v17;
    v74 = a1;
    while (1)
    {
      if (v18 >= *(v20 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }

      v24 = *(v20 + 8 * v18 + 32);
      if (a1)
      {
        v80 = *(v20 + 8 * v18 + 32);
        v25 = a1;
        sub_1004DEFFC();
        v26 = sub_1004DD3FC();

        v27 = [v25 itemForKey:v26];

        if (v27)
        {
          v28 = [v27 productPageURL];
          if (v28)
          {
            v29 = v77;
            v30 = v28;
            sub_1004D802C();

            v31 = sub_1004D809C();
            (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
            sub_1000230B8(v29);
            v32 = *(v75 + 24);
            v33 = [objc_allocWithZone(NSNumber) initWithLongLong:v24];
            [v32 setObject:v27 forKey:v33];

            swift_beginAccess();
            v34 = v27;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79 = *(a5 + 16);
            v36 = v79;
            *(a5 + 16) = 0x8000000000000000;
            v38 = sub_100028EF8(v24);
            v39 = v36[2];
            v40 = (v37 & 1) == 0;
            v41 = v39 + v40;
            if (__OFADD__(v39, v40))
            {
              goto LABEL_45;
            }

            v42 = v37;
            if (v36[3] >= v41)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v45 = v79;
                if ((v37 & 1) == 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                sub_100029894();
                v45 = v79;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
              sub_100022858(v41, isUniquelyReferenced_nonNull_native);
              v43 = sub_100028EF8(v24);
              if ((v42 & 1) != (v44 & 1))
              {
                goto LABEL_47;
              }

              v38 = v43;
              v45 = v79;
              if ((v42 & 1) == 0)
              {
LABEL_34:
                v45[(v38 >> 6) + 8] |= 1 << v38;
                *(v45[6] + 8 * v38) = v24;
                v66 = v45[7] + 16 * v38;
                *v66 = v27;
                *(v66 + 8) = 0;
                v67 = v45[2];
                v54 = __OFADD__(v67, 1);
                v68 = v67 + 1;
                if (v54)
                {
                  goto LABEL_46;
                }

                v45[2] = v68;
                goto LABEL_36;
              }
            }

            v62 = v45[7] + 16 * v38;
            v63 = *v62;
            v64 = *(v62 + 8);
            *v62 = v27;
            *(v62 + 8) = 0;
            sub_10001066C(v63, v64);
LABEL_36:
            *(a5 + 16) = v45;
            swift_endAccess();

            v20 = v73;
            a1 = v74;
            v19 = v76;
            goto LABEL_8;
          }

          v46 = sub_1004D809C();
          v47 = v77;
          (*(*(v46 - 8) + 56))(v77, 1, 1, v46);
          sub_1000230B8(v47);
        }

        else
        {
        }
      }

      swift_beginAccess();
      swift_errorRetain();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(a5 + 16);
      v49 = v79;
      *(a5 + 16) = 0x8000000000000000;
      v50 = sub_100028EF8(v24);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_43;
      }

      v56 = v51;
      if (v49[3] < v55)
      {
        break;
      }

      if (v48)
      {
        goto LABEL_25;
      }

      v65 = v50;
      sub_100029894();
      v50 = v65;
      v58 = v79;
      if ((v56 & 1) == 0)
      {
LABEL_26:
        v58[(v50 >> 6) + 8] |= 1 << v50;
        *(v58[6] + 8 * v50) = v24;
        v59 = v58[7] + 16 * v50;
        *v59 = v19;
        *(v59 + 8) = 1;
        v60 = v58[2];
        v54 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v54)
        {
          goto LABEL_44;
        }

        v58[2] = v61;
        goto LABEL_7;
      }

LABEL_6:
      v21 = v58[7] + 16 * v50;
      v22 = *v21;
      v23 = *(v21 + 8);
      *v21 = v19;
      *(v21 + 8) = 1;
      sub_10001066C(v22, v23);
LABEL_7:
      *(a5 + 16) = v58;
      swift_endAccess();
LABEL_8:
      if (v78 == ++v18)
      {

        a6 = v72;
        if (!v72)
        {
        }

LABEL_38:
        swift_beginAccess();

        a6(v69);
      }
    }

    sub_100022858(v55, v48);
    v50 = sub_100028EF8(v24);
    if ((v56 & 1) != (v57 & 1))
    {
      goto LABEL_47;
    }

LABEL_25:
    v58 = v79;
    if ((v56 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  if (a6)
  {
    goto LABEL_38;
  }
}

void sub_100021D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  if (a1)
  {
    if (!a2)
    {
      sub_100022188(a1);
      v14 = objc_allocWithZone(SSVPlatformContext);
      isa = sub_1004DD1FC().super.isa;

      v16 = [v14 initWithBagDictionary:isa];

      a2 = 0;
      if (v16)
      {
        sub_100022188(a1);
        v17 = objc_allocWithZone(SSVURLBagInterpreter);
        v18 = sub_1004DD1FC().super.isa;

        v19 = [v17 initWithURLBagDictionary:v18];

        if (v19)
        {
          v20 = [objc_allocWithZone(SSVPlatformRequestOperation) initWithPlatformContext:v16];
          [v20 setPersonalizationStyle:2];
          [v20 setKeyProfile:SSLookupKeyProfileLockup];
          v21 = sub_1004DD85C().super.isa;
          [v20 setItemIdentifiers:v21];

          v22 = [v19 storeFrontSuffix];
          [v20 setStoreFrontSuffix:v22];

          v23 = sub_1004DD3FC();
          [v20 setValue:v23 forRequestParameter:SSLookupParameterProtocolVersion];

          v24 = sub_1004DD3FC();
          v25 = sub_1004DD3FC();
          [v20 setValue:v24 forRequestParameter:v25];

          v26 = sub_1004DD3FC();
          v27 = sub_1004DD3FC();
          [v20 setValue:v26 forRequestParameter:v27];

          v28 = swift_allocObject();
          v28[2] = a4;
          v28[3] = a5;
          v28[4] = a6;
          v28[5] = a7;
          v28[6] = a8;
          aBlock[4] = sub_1000230A8;
          aBlock[5] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100022450;
          aBlock[3] = &unk_1005CFFA8;
          v29 = _Block_copy(aBlock);

          sub_10000DE64(a7);

          [v20 setResponseBlock:v29];
          _Block_release(v29);
          [*(a5 + 16) addOperation:v20];

          return;
        }

        a2 = 0;
      }
    }
  }

  sub_10002177C(0, a2, a4, a5, a6, a7, a8);
}

uint64_t sub_100022188(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_1006332F0);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000904C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100006F5C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006F5C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006F5C(v31, v32);
    result = sub_1004DEA2C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100006F5C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100022450(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000224DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1004DD21C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000225AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000225E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100633300);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      result = sub_1004DE5EC(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100022858(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006332E8);
  v34 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
        sub_100010660(v23, v24);
      }

      result = sub_1004DF25C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100022AE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006332F8);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1004DF25C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100022D58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100632778);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1004DE5EC(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100022FC8()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100023038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023050()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000230B8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100632438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002312C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s15AnimationStatusOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s15AnimationStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100023230(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100023248(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10002325C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 25))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000232B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100023310(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100023368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == 1;
    case 2:
      return a5 == 2;
  }

  if (a5 < 3)
  {
    return 0;
  }

  sub_10002346C();
  if (sub_1004DE5FC())
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a2 == *&a6 && *&a3 == *&a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10002346C()
{
  result = qword_100633400;
  if (!qword_100633400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100633400);
  }

  return result;
}

void sub_1000234B8()
{
  sub_100021074();
  v0 = UIFontTextStyleTitle3;
  v1 = sub_1004DE48C();

  qword_100633408 = v1;
}

id sub_100023520()
{
  result = [objc_opt_self() labelColor];
  qword_100633410 = result;
  return result;
}

char *sub_10002355C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader_layoutInvalidationHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label] = v10;
  [v10 setAdjustsFontForContentSizeCategory:1];
  v12 = qword_100631F20;
  v13 = *&v4[v11];
  if (v12 != -1)
  {
    swift_once();
  }

  [v13 setFont:qword_100633408];

  v14 = qword_100631F28;
  v15 = *&v4[v11];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setTextColor:qword_100633410];

  [*&v4[v11] setNumberOfLines:0];
  [*&v4[v11] setLineBreakMode:0];
  LODWORD(v16) = 0.5;
  [*&v4[v11] _setHyphenationFactor:v16];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for SharingCollectionViewHeader();
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v17 addSubview:*&v17[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label]];
  return v17;
}

id sub_1000237B4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SharingCollectionViewHeader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100023978(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];
  [v3 sizeThatFits:a1 - (*&qword_1006330B8 + *&qword_1006330B8)];
  [v3 _firstLineBaselineOffsetFromBoundsTop];
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1004DE2CC();
  if (v4)
  {
    v6 = [objc_opt_self() defaultMetrics];
    [v6 scaledValueForValue:28.0];
  }

  return a1;
}

id sub_100023AE0()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SharingCollectionViewHeader();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  v3 = *&qword_1006330B8;
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1004DE2CC();
  if ((v4 & 1) != 0 && ([v0 bounds], v6 <= 736.0))
  {
    v9 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];
    [v0 bounds];
    [v9 sizeThatFits:{v12 - (v3 + v3), 1.79769313e308}];
    v10 = v13;
    v11 = v14;
  }

  else
  {
    if (v2 == 1)
    {
      [v0 bounds];
      v7 = CGRectGetMaxX(v23) - v3;
      [*&v0[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label] frame];
      v3 = v7 - v8;
    }

    v9 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];
    [v9 frame];
  }

  [v9 setFrame:{v3, 0.0, v10, v11}];
  v15 = [v0 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  LOBYTE(v15) = sub_1004DE2CC();
  v17 = 28.0;
  if (v15)
  {
    v18 = [objc_opt_self() defaultMetrics];
    [v18 scaledValueForValue:28.0];
    v20 = v19;

    v17 = v20;
  }

  return [v9 _setFirstLineBaselineFrameOriginY:v17];
}

uint64_t sub_100023D94()
{
  v62 = sub_100004CB8(&qword_100632458);
  v61 = *(v62 - 8);
  v0 = __chkstk_darwin(v62);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v0);
  v60 = &v54 - v4;
  __chkstk_darwin(v3);
  v64 = &v54 - v5;
  v6 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v70 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10002488C();
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v69 = v8;
    v15 = 0;
    v16 = result + 32;
    v67 = (v10 + 48);
    v65 = (v10 + 32);
    v59 = (v10 + 16);
    v66 = &_swiftEmptyArrayStorage;
    v63 = (v10 + 8);
    v58 = v2;
    v68 = v9;
    v56 = result;
    v55 = v14;
    v57 = result + 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v16 + 8 * v15);
      if (*(v17 + 16))
      {

        v18 = sub_100028F80(0x737465737361, 0xE600000000000000);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);
          swift_unknownObjectRetain();

          *&v74 = v20;
          sub_100004CB8(&qword_100633450);
          result = swift_dynamicCast();
          if (result)
          {
            v21 = v72;
            v22 = *(v72 + 16);
            if (v22)
            {
              v23 = 32;
              v71 = v72;
              while (1)
              {
                v24 = *(v21 + v23);
                v25 = *(v24 + 16);

                if (!v25)
                {
                  break;
                }

                v26 = sub_100028F80(0x726F76616C66, 0xE600000000000000);
                if (v27)
                {
                  *&v72 = *(*(v24 + 56) + 8 * v26);
                  swift_unknownObjectRetain();
                  v28 = swift_dynamicCast();
                  if (v28)
                  {
                    v29 = v74;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (v28)
                  {
                    v30 = *(&v74 + 1);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (!*(v24 + 16))
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v29 = 0;
                  v30 = 0;
                  if (!*(v24 + 16))
                  {
                    goto LABEL_29;
                  }
                }

                sub_100028F80(0x77656976657270, 0xE700000000000000);
                if ((v31 & 1) == 0)
                {
                  goto LABEL_29;
                }

                swift_unknownObjectRetain();

                objc_opt_self();
                v32 = swift_dynamicCastObjCClass();
                if (!v32)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_30;
                }

                *&v72 = 7107189;
                *(&v72 + 1) = 0xE300000000000000;
                v33 = v32;
                v34 = [v33 __swift_objectForKeyedSubscript:sub_1004DF11C()];
                swift_unknownObjectRelease();

                if (v34)
                {
                  sub_1004DE8DC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v72 = 0u;
                  v73 = 0u;
                }

                v74 = v72;
                v75 = v73;
                if (*(&v73 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v35 = *(&v72 + 1);
                  }

                  else
                  {
                    v35 = 0;
                  }
                }

                else
                {
                  sub_10001074C(&v74, &qword_100632198);
                  v35 = 0;
                }

                *&v72 = 0x6E6F697461727564;
                *(&v72 + 1) = 0xE800000000000000;
                v36 = v33;
                v52 = [v36 __swift_objectForKeyedSubscript:sub_1004DF11C()];
                swift_unknownObjectRelease();

                if (v52)
                {
                  sub_1004DE8DC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v72 = 0u;
                  v73 = 0u;
                }

                v2 = v58;
                v74 = v72;
                v75 = v73;
                if (!*(&v73 + 1))
                {
                  goto LABEL_31;
                }

                if (swift_dynamicCast())
                {
                  v37 = v72;
                }

                else
                {
                  v37 = 0.0;
                }

                if (!v35)
                {
LABEL_11:

                  goto LABEL_12;
                }

LABEL_32:
                v38 = v69;
                sub_1004D805C();

                v39 = v68;
                if ((*v67)(v38, 1, v68) == 1)
                {

                  sub_10001074C(v38, &qword_100632438);
                }

                else
                {
                  v40 = *v65;
                  (*v65)(v70, v38, v39);
                  if (v30)
                  {
                    if (v29 == 0x6964754173756C70 && v30 == 0xE90000000000006FLL || (sub_1004DF08C() & 1) != 0 || v29 == 0x647261646E617473 && v30 == 0xED00006F69647541)
                    {

LABEL_41:
                      v41 = v64;
                      (*v59)(v64, v70, v39);
                      v42 = v62;
                      *(v41 + *(v62 + 48)) = v37;
                      v43 = v41;
                      v44 = v60;
                      sub_100025194(v43, v60);
                      v45 = *(v42 + 48);
                      v46 = *(v44 + v45);
                      v40(v2, v44, v39);
                      *&v2[v45] = v46;
                      v47 = v66;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v47 = sub_100024CCC(0, v47[2] + 1, 1, v47);
                      }

                      v48 = v47;
                      v49 = v47[2];
                      v66 = v48;
                      v50 = v48[3];
                      if (v49 >= v50 >> 1)
                      {
                        v66 = sub_100024CCC(v50 > 1, v49 + 1, 1, v66);
                      }

                      sub_10001074C(v64, &qword_100632458);
                      (*v63)(v70, v39);
                      v51 = v66;
                      v66[2] = v49 + 1;
                      sub_100025204(v2, v51 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v49);
                      goto LABEL_12;
                    }

                    v53 = sub_1004DF08C();

                    if (v53)
                    {
                      goto LABEL_41;
                    }
                  }

                  (*v63)(v70, v39);
                }

LABEL_12:
                v23 += 8;
                --v22;
                v21 = v71;
                if (!v22)
                {

                  v13 = v56;
                  v14 = v55;
                  goto LABEL_67;
                }
              }

              v30 = 0;
              v29 = 0;
LABEL_29:

LABEL_30:
              v74 = 0u;
              v75 = 0u;
              sub_10001074C(&v74, &qword_100632198);
              v35 = 0;
              v36 = 0;
              v74 = 0u;
              v75 = 0u;
LABEL_31:
              sub_10001074C(&v74, &qword_100632198);
              v37 = 0.0;
              if (!v35)
              {
                goto LABEL_11;
              }

              goto LABEL_32;
            }

LABEL_67:
            v16 = v57;
          }
        }

        else
        {
        }
      }

      if (++v15 == v14)
      {

        return v66;
      }
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_100024714()
{
  v0 = sub_10002488C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = &_swiftEmptyArrayStorage;
    v3 = 32;
    do
    {
      if (*(*(v0 + v3) + 16))
      {

        sub_100028F80(1701869940, 0xE400000000000000);
        if (v4)
        {
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_100024ABC(0, *(v2 + 2) + 1, 1, v2);
            }

            v6 = *(v2 + 2);
            v5 = *(v2 + 3);
            if (v6 >= v5 >> 1)
            {
              v2 = sub_100024ABC((v5 > 1), v6 + 1, 1, v2);
            }

            *(v2 + 2) = v6 + 1;
            v7 = &v2[16 * v6];
            *(v7 + 4) = v9;
            *(v7 + 5) = v10;
          }
        }

        else
        {
        }
      }

      v3 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_10002488C()
{
  result = [v0 lookupDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_1004DD21C();

    sub_1004DEA4C();
    if (*(v3 + 16) && (v4 = sub_100028F3C(v6), (v5 & 1) != 0))
    {
      sub_10000904C(*(v3 + 56) + 32 * v4, v7);
      sub_1000105EC(v6);

      sub_100004CB8(&qword_100633450);
      if (swift_dynamicCast())
      {
        return 0x73726566666FLL;
      }
    }

    else
    {

      sub_1000105EC(v6);
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000249B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100024ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100633460);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024BC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100633468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100024CCC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100633458);
  v10 = *(sub_100004CB8(&qword_100632458) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100632458) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100024EBC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100633470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100632768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100024FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100633478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100025110(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_100633468);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100025194(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025274(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
  v4 = sub_1004D809C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v6 = v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
  *v6 = 0;
  *(v6 + 8) = 1;
  v5(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreURL, 1, 1, v4);
  v7 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumArtist);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit) = 0;
  v11 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_offerTypes) = &_swiftEmptyArrayStorage;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1000253E0()
{
  v1 = sub_100004CB8(&qword_100632438);
  v2 = __chkstk_darwin(v1 - 8);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
  swift_beginAccess();
  sub_1000108DC(v0 + v18, v17, &qword_100632438);
  v19 = sub_1004D809C();
  v20 = *(v19 - 8);
  v48 = *(v20 + 48);
  v49 = v20;
  v21 = v48(v17, 1, v19);
  result = sub_1000230B8(v17);
  if (v21 == 1)
  {
    v46 = v6;
    if (qword_100631F18 != -1)
    {
      swift_once();
    }

    v23 = *(qword_1006718A8 + 24);
    v24 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v0 + 16)];
    v25 = [v23 objectForKey:v24];

    if (v25)
    {
      v26 = [v25 productPageURL];
      if (v26)
      {
        v27 = v26;
        sub_1004D802C();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v6 = v46;

      (*(v49 + 56))(v12, v28, 1, v19);
      sub_100027F78(v12, v15);
    }

    else
    {
      (*(v49 + 56))(v15, 1, 1, v19);
      v6 = v46;
    }

    swift_beginAccess();
    sub_100027E34(v15, v0 + v18);
    result = swift_endAccess();
  }

  v29 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews;
  if (!*(*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews) + 16))
  {
    if (qword_100631F18 != -1)
    {
      swift_once();
    }

    v30 = *(qword_1006718A8 + 24);
    v31 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v0 + 16)];
    v32 = [v30 objectForKey:v31];

    if (v32)
    {
      v33 = v32;
      v34 = sub_100023D94();
    }

    else
    {
      v34 = &_swiftEmptyArrayStorage;
    }

    *(v0 + v29) = v34;
  }

  v35 = v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
  if ((*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier + 8) & 1) == 0)
  {
    v36 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreURL;
    swift_beginAccess();
    sub_1000108DC(v0 + v36, v9, &qword_100632438);
    v37 = v48(v9, 1, v19);
    result = sub_1000230B8(v9);
    if (v37 == 1)
    {
      if (qword_100631F18 == -1)
      {
        if ((*(v35 + 8) & 1) == 0)
        {
LABEL_22:
          v38 = *(qword_1006718A8 + 24);
          v39 = [objc_allocWithZone(NSNumber) initWithLongLong:*v35];
          v40 = [v38 objectForKey:v39];

          if (v40)
          {
            v41 = [v40 productPageURL];
            if (v41)
            {
              v42 = v47;
              v43 = v41;
              sub_1004D802C();

              v44 = 0;
            }

            else
            {
              v44 = 1;
              v42 = v47;
            }

            (*(v49 + 56))(v42, v44, 1, v19);
            sub_100027F78(v42, v6);
          }

          else
          {
            (*(v49 + 56))(v6, 1, 1, v19);
          }

          swift_beginAccess();
          sub_100027E34(v6, v0 + v36);
          return swift_endAccess();
        }
      }

      else
      {
        result = swift_once();
        if ((*(v35 + 8) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000259B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7];
  v9 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
  swift_beginAccess();
  sub_1000108DC(v2 + v9, v8, &qword_100632438);
  v10 = sub_1004D809C();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_1000230B8(v8);
  if (v11 != 1)
  {
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = a1;
    v17[4] = a2;
    v18 = *(v3 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
    if (v18)
    {

      v19 = sub_10000DE64(v18);
      v20 = v18(v19);
      sub_10000DE74(v18);
      if (v20)
      {
        v21 = swift_allocObject();
        v21[2] = sub_100027314;
        v21[3] = v17;
        v21[4] = v3;

        MPArtworkCatalog.requestImage(_:)(sub_1000273A4, v21);
      }
    }

    else
    {
    }

    v22 = sub_100026A20();
    v23 = sub_1000267F4();
    [v23 setSpecialization:v22];
    sub_100027320();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = v23;

    v25 = v23;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100027370, v24);
  }

  v12 = *(v3 + 16);
  if (qword_100631F18 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v3;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v12;
  sub_100004CB8(&qword_100633468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = v12;
  v16 = swift_allocObject();
  v16[2] = sub_1000272B0;
  v16[3] = v14;
  v16[4] = v12;

  sub_1000212A4(inited, sub_100027304, v16);

  swift_setDeallocating();
}

uint64_t sub_100025DA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100026A20();
  if (a2 >> 60 != 15)
  {
    v10 = objc_allocWithZone(LPImage);
    sub_100027F64(a1, a2);
    sub_100010530(a1, a2);
    isa = sub_1004D80FC().super.isa;
    v12 = sub_1004DD3FC();
    v13 = [v10 initWithData:isa MIMEType:v12];

    sub_100010584(a1, a2);
    [v9 setArtwork:v13];

    sub_100010584(a1, a2);
  }

  v14 = sub_1000267F4();
  [v14 setSpecialization:v9];
  sub_100027320();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v14;

  v16 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10002800C, v15);
}

uint64_t sub_100025F40(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a2)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1004DEAAC(47);

      v36 = 0xD00000000000002CLL;
      v37 = 0x80000001004E8740;
      v38 = a7;
      v39._countAndFlagsBits = sub_1004DEFFC();
      sub_1004DD5FC(v39);

      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
      sub_1004DD5FC(v40);
      v18 = sub_1004DD3FC();

      MMALog(v18);

      v19 = swift_allocObject();
      v19[2] = a4;
      v19[3] = a5;
      v19[4] = a6;
      v20 = *(a4 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      if (v20)
      {

        v21 = sub_10000DE64(v20);
        v22 = v20(v21);
        sub_10000DE74(v20);
        if (v22)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
      v23 = [a1 productPageURL];
      if (v23)
      {
        v24 = v23;
        sub_1004D802C();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = sub_1004D809C();
      (*(*(v26 - 8) + 56))(v15, v25, 1, v26);
      v27 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
      swift_beginAccess();
      sub_100027E34(v15, v17 + v27);
      swift_endAccess();
      v19 = swift_allocObject();
      v19[2] = a4;
      v19[3] = a5;
      v19[4] = a6;
      v28 = *(a4 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      if (v28)
      {

        v29 = sub_10000DE64(v28);
        v22 = v28(v29);
        sub_10000DE74(v28);
        if (v22)
        {
LABEL_13:
          v30 = swift_allocObject();
          v30[2] = sub_100028004;
          v30[3] = v19;
          v30[4] = a4;

          MPArtworkCatalog.requestImage(_:)(sub_100028008, v30);
        }
      }

      else
      {
      }
    }

    v31 = sub_100026A20();
    v32 = sub_1000267F4();
    [v32 setSpecialization:v31];
    sub_100027320();
    v33 = swift_allocObject();
    v33[2] = a5;
    v33[3] = a6;
    v33[4] = v32;

    v34 = v32;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10002800C, v33);
  }

  return result;
}

uint64_t sub_100026434(UIImage *a1, char a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1004DBEBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DBEFC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    aBlock[0] = a1;
    sub_100004CB8(&qword_100633048);
    swift_willThrowTypedImpl();
    return a3(0, 0xF000000000000000);
  }

  v19 = v16;
  v20 = UIImagePNGRepresentation(a1);
  if (!v20)
  {
    return a3(0, 0xF000000000000000);
  }

  v29 = v15;
  v30 = v11;
  v21 = v20;
  v22 = sub_1004D810C();
  v24 = v23;

  if (*(a5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) == 1)
  {
    if (qword_100631F30 != -1)
    {
      swift_once();
    }

    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v24;
    v25[4] = a3;
    v25[5] = a4;
    aBlock[4] = sub_1000273F4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005D0208;
    v26 = _Block_copy(aBlock);
    sub_100010530(v22, v24);

    sub_1004DBEDC();
    v31 = _swiftEmptyArrayStorage;
    sub_100027478();
    sub_100004CB8(&unk_1006323E0);
    sub_1000274D0();
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v26);
    sub_100010598(v22, v24);
    (*(v30 + 8))(v13, v10);
    (*(v29 + 8))(v18, v19);
  }

  else
  {
    sub_100010530(v22, v24);
    a3(v22, v24);
    sub_100010598(v22, v24);

    return sub_100010598(v22, v24);
  }
}

id sub_1000267F4()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100632438);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = [objc_allocWithZone(LPLinkMetadata) init];
  v9 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
  swift_beginAccess();
  sub_1000108DC(v1 + v9, v7, &qword_100632438);
  v10 = sub_1004D809C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v14 = 0;
  if (v12(v7, 1, v10) != 1)
  {
    sub_1004D7FDC(v13);
    v14 = v15;
    (*(v11 + 8))(v7, v10);
  }

  [v8 setURL:v14];

  sub_1000108DC(v1 + v9, v5, &qword_100632438);
  if (v12(v5, 1, v10) == 1)
  {
    v17 = 0;
  }

  else
  {
    sub_1004D7FDC(v16);
    v17 = v18;
    (*(v11 + 8))(v5, v10);
  }

  [v8 setOriginalURL:v17];

  return v8;
}

id sub_100026A20()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100632458);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - v4;
  v6 = sub_1004D809C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
  v21[1] = *(v0 + 16);
  sub_1004DEFFC();
  v11 = sub_1004DD3FC();

  [v10 setStoreIdentifier:v11];

  if (*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8))
  {

    v12 = sub_1004DD3FC();
  }

  else
  {
    v12 = 0;
  }

  [v10 setName:v12];

  if (*(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8))
  {

    v13 = sub_1004DD3FC();
  }

  else
  {
    v13 = 0;
  }

  [v10 setArtist:v13];

  if (*(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album + 8))
  {

    v14 = sub_1004DD3FC();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAlbum:v14];

  v15 = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews);
  if (*(v15 + 16))
  {
    sub_1000108DC(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, &qword_100632458);
    (*(v7 + 32))(v9, v5, v6);
    sub_1004D7FDC(v16);
    v18 = v17;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = 0;
  }

  [v10 setPreviewURL:v18];

  isa = sub_1004DD85C().super.isa;

  [v10 setOffers:isa];

  return v10;
}

uint64_t sub_100026DB0()
{
  v0 = sub_1004DE13C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DE0FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004DBEFC();
  __chkstk_darwin(v5 - 8);
  sub_100027320();
  type metadata accessor for SharableTrack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  sub_1004DE0EC();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_1004DE17C();
  qword_100633480 = result;
  return result;
}

uint64_t sub_100026F84()
{
  sub_1000230B8(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL);
  sub_1000230B8(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreURL);

  sub_10000DE74(*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing));
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser));

  return v0;
}

uint64_t sub_100027054()
{
  sub_100026F84();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharableTrack()
{
  result = qword_1006334B0;
  if (!qword_1006334B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027100()
{
  sub_1000271D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000271D8()
{
  if (!qword_1006334C0)
  {
    sub_1004D809C();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006334C0);
    }
  }
}

uint64_t sub_100027230()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100027268()
{

  return swift_deallocObject();
}

uint64_t sub_1000272C4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100027320()
{
  result = qword_1006321B8;
  if (!qword_1006321B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006321B8);
  }

  return result;
}

uint64_t sub_1000273B4()
{
  sub_100010598(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000273F4()
{
  v1 = v0[4];
  v2 = sub_100027BB8(v0[2], v0[3], 300.0, 0.8);
  v4 = v3;
  v1();

  return sub_100010598(v2, v4);
}

uint64_t sub_100027460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100027478()
{
  result = qword_1006321A8;
  if (!qword_1006321A8)
  {
    sub_1004DBEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006321A8);
  }

  return result;
}

unint64_t sub_1000274D0()
{
  result = qword_1006321B0;
  if (!qword_1006321B0)
  {
    sub_100008DE4(&unk_1006323E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006321B0);
  }

  return result;
}

unint64_t sub_100027534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100633300);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_100028EA8(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void *sub_10002763C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_1006332F8);
  v3 = sub_1004DEDBC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100028EF8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100028EF8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100027744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_1006332E8);
  v3 = sub_1004DEDBC();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_100028EF8(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return &_swiftEmptyDictionarySingleton;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = v3[7] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v6 & 1;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100010660(v4, v6 & 1);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_100028EF8(v5);
    v9 += 24;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100027854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_1006332F0);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, v13, &qword_100633758);
      result = sub_100028F3C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006F5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100027990(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100632778);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100028FF8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100027A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100633750);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v13, &qword_100633748);
      v5 = v13;
      v6 = v14;
      result = sub_100028F80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006F5C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100027BB8(uint64_t a1, unint64_t a2, double a3, double a4)
{
  sub_100004CB8(&qword_100633740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v9;
  *(inited + 72) = &type metadata for CGFloat;
  *(inited + 48) = a3;
  *(inited + 80) = sub_1004DD43C();
  *(inited + 88) = v10;
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 96) = a4;
  *(inited + 128) = sub_1004DD43C();
  *(inited + 136) = v11;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  sub_100027A88(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100633748);
  swift_arrayDestroy();
  isa = sub_1004DD1FC().super.isa;

  v13 = [objc_allocWithZone(NSMutableData) init];
  v14 = sub_1004DD3FC();
  v15 = isa;
  v16 = CGImageDestinationCreateWithData(v13, v14, 1uLL, v15);

  v17 = v15;
  if (v16)
  {
    v18 = sub_1004D80FC().super.isa;
    v19 = CGImageSourceCreateWithData(v18, 0);

    v17 = v15;
    if (v19)
    {
      CGImageDestinationAddImageFromSource(v16, v19, 0, v15);

      CGImageDestinationFinalize(v16);
      v17 = v19;
    }
  }

  if ([(__CFData *)v13 length]< 1)
  {

    sub_100010530(a1, a2);
  }

  else
  {
    v20 = v13;
    a1 = sub_1004D810C();
  }

  return a1;
}

uint64_t sub_100027E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632438);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027EA4()
{

  return swift_deallocObject();
}

uint64_t sub_100027EE4()
{

  return swift_deallocObject();
}

uint64_t sub_100027F24()
{

  return swift_deallocObject();
}

uint64_t sub_100027F64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010530(a1, a2);
  }

  return a1;
}

uint64_t sub_100027F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100028010()
{
  type metadata accessor for NowPlayingObserver();
  v0 = swift_allocObject();
  result = sub_100028108();
  qword_100671920 = v0;
  return result;
}

uint64_t sub_10002804C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_100028EA8(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 40);
    v10 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002971C();
      v8 = v10;
    }

    sub_100029404(v6, v8);
    *(v2 + 40) = v8;
  }

  return swift_endAccess();
}

void *sub_100028108()
{
  v1 = v0;
  v2 = sub_1004DE13C();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DE0FC();
  __chkstk_darwin(v4);
  v5 = sub_1004DBEFC();
  __chkstk_darwin(v5 - 8);
  sub_100006F10(0, &qword_1006338E0);
  v6 = sub_1004DDEDC();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v6;
  v0[5] = sub_100027534(&_swiftEmptyArrayStorage);
  v14 = sub_100006F10(0, &qword_1006321B8);
  type metadata accessor for NowPlayingObserver();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100010984(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480);
  sub_100008F60(&qword_1006321C8, &unk_100632480);
  sub_1004DE92C();
  (*(v16 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v1[6] = sub_1004DE17C();
  *(v1 + 28) = 0;
  sub_1000285A4();
  if ((*(v1 + 57) & 1) == 0)
  {
    *(v1 + 57) = 1;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = sub_100029F90;
    *(v11 + 48) = v9;
    aBlock[4] = sub_100029F94;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100014F1C;
    aBlock[3] = &unk_1005D0460;
    v12 = _Block_copy(aBlock);
    swift_retain_n();

    MRMediaRemoteGetNowPlayingInfo();

    _Block_release(v12);
  }

  return v1;
}

uint64_t sub_100028508()
{
  if (*(v0 + 56) == 1)
  {
    *(v0 + 56) = 0;
    swift_weakInit();
    sub_10002896C();
    swift_weakDestroy();
  }

  sub_10000DE74(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000285A4()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  result = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 56) = 1;
    v12 = *(v0 + 48);
    v13 = v7;
    v14 = result;
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100028C40;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005D0370;
    v11 = _Block_copy(aBlock);

    sub_1004DBEDC();
    v15 = &_swiftEmptyArrayStorage;
    sub_100010984(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0);
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v13 + 8))(v9, v14);
  }

  return result;
}

void sub_100028884()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MRMediaRemoteRegisterForNowPlayingNotifications();
    v2 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v2, v1, sub_100028964, kMRMediaRemoteNowPlayingInfoDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v3 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v3, v1, sub_100028964, kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_10002896C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MRMediaRemoteUnregisterForNowPlayingNotifications();
    v2 = CFNotificationCenterGetLocalCenter();
    if (kMRMediaRemoteNowPlayingInfoDidChangeNotification)
    {
      v3 = v2;
      CFNotificationCenterRemoveObserver(v2, v1, kMRMediaRemoteNowPlayingInfoDidChangeNotification, 0);

      v4 = CFNotificationCenterGetLocalCenter();
      if (kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification)
      {
        v5 = v4;
        CFNotificationCenterRemoveObserver(v4, v1, kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification, 0);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100028A28(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 57) = 0;
    sub_100028A8C(a1);
  }

  return result;
}

uint64_t sub_100028A8C(void *a1)
{
  v2 = v1;
  v3 = v1[2];
  v2[2] = a1;
  v4 = a1;

  v5 = v2[3];
  if (v5)
  {
    v6 = v2[2];
    sub_10000DE64(v2[3]);
    v7 = v6;
    v5();
    sub_10000DE74(v5);
  }

  swift_beginAccess();
  v8 = v2[5];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v8 + 56) + ((v15 << 10) | (16 * v16)));
    v20 = v2[2];
    v18 = v20;

    v19 = v18;
    v17(&v20);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100028C08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100028C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100028C60(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  *(a2 + 16) = a1;
  v13 = a1;

  if (a3)
  {
    if (a4)
    {
      sub_1004DE2AC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100006F10(0, &qword_1006321B8);
    v14 = swift_allocObject();
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a2;
    sub_10000DE64(a5);

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100029F08, v14);
  }
}

void sub_100028D68(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = *(a3 + 16);
    }

    else
    {
      sub_100006F10(0, &qword_1006338E0);
      v6 = sub_1004DDEDC();
      v5 = 0;
    }

    v7 = v5;
    a1(v6);
  }
}

unint64_t sub_100028E14(uint64_t a1)
{
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v2 = sub_1004DF2BC();

  return sub_100029048(a1, v2);
}

unint64_t sub_100028EA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DE5EC(*(v2 + 40));
  return sub_100029338(a1, v4, &qword_100632490);
}

unint64_t sub_100028EF8(uint64_t a1)
{
  v2 = sub_1004DF25C();

  return sub_10002914C(a1, v2);
}

unint64_t sub_100028F3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DEA2C(*(v2 + 40));

  return sub_1000291B8(a1, v4);
}

unint64_t sub_100028F80(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  sub_1004DD55C();
  v4 = sub_1004DF2BC();

  return sub_100029280(a1, a2, v4);
}

unint64_t sub_100028FF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DE5EC(*(v2 + 40));
  return sub_100029338(a1, v4, &qword_100632770);
}

unint64_t sub_100029048(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1004DD43C();
      v8 = v7;
      if (v6 == sub_1004DD43C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1004DF08C();

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

unint64_t sub_10002914C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000291B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100010678(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1004DEA3C();
      sub_1000105EC(v8);
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

unint64_t sub_100029280(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1004DF08C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100029338(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100006F10(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1004DE5FC();

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

void sub_100029404(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004DE94C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1004DE5EC(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_100029590(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004DE94C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1004DE5EC(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void *sub_10002971C()
{
  v1 = v0;
  sub_100004CB8(&qword_100633300);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100029894()
{
  v1 = v0;
  sub_100004CB8(&qword_1006332E8);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        result = sub_100010660(v19, v20);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100029A04()
{
  v1 = v0;
  sub_100004CB8(&qword_1006332F8);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100029B60()
{
  v1 = v0;
  sub_100004CB8(&qword_100632778);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100029CC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 57);

    if (v2 == 1)
    {
    }

    else
    {
      *(v1 + 57) = 1;
      v3 = swift_allocObject();
      swift_weakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = sub_100029E78;
      *(v5 + 48) = v3;
      v7[4] = sub_100029EBC;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100014F1C;
      v7[3] = &unk_1005D03E8;
      v6 = _Block_copy(v7);
      swift_retain_n();

      MRMediaRemoteGetNowPlayingInfo();

      _Block_release(v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100029E80()
{

  return swift_deallocObject();
}

uint64_t sub_100029EC0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100029F14()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

void sub_100029F98()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E8B10;
  v8._countAndFlagsBits = 0x206E776F6E6B6E75;
  v8._object = 0xED0000656C746974;
  v6._object = 0x80000001004E8AE0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100671928 = v2;
  unk_100671930 = v4;
}

void sub_10002A084()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E8A90;
  v8._countAndFlagsBits = 0x206E776F6E6B6E75;
  v8._object = 0xEE00747369747261;
  v6._object = 0x80000001004E8A60;
  v6._countAndFlagsBits = 0xD000000000000024;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100671938 = v2;
  unk_100671940 = v4;
}

void sub_10002A170()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E89C0;
  v6._object = 0x80000001004E8980;
  v8._object = 0x80000001004E89A0;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000001CLL;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100671948 = v2;
  unk_100671950 = v4;
}

void sub_10002A254()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MusicMessagesAppViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  if (qword_100631F58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_10002AAF4();
  swift_endAccess();
  if (!v2)
  {
    type metadata accessor for MusicMessagesSharingViewController();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8] = &off_1005D0488;
  swift_unknownObjectWeakAssign();
  v3 = v2;
  if (![v3 isViewLoaded])
  {
LABEL_8:
    v7 = [v3 view];

    if (v7)
    {
      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        [v7 setFrame:{v11, v13, v15, v17}];
        [v7 setAutoresizingMask:18];
        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          [v18 addSubview:v7];

          [v1 addChildViewController:v3];
          [v3 didMoveToParentViewController:v1];

          v20 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController];
          *&v1[OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController] = v3;

          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
  if (v4)
  {
    v5 = v4;
    [v5 contentInset];
    [v5 setContentOffset:0 animated:{0.0, -v6}];

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

void sub_10002A510()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp30MusicMessagesAppViewController__sharingViewController];
  if (!v2)
  {
LABEL_6:
    v5 = type metadata accessor for MusicMessagesAppViewController();
    v7.receiver = v1;
    v7.super_class = v5;
    objc_msgSendSuper2(&v7, "dealloc");
    return;
  }

  *&v2[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  v3 = v2;
  [v3 willMoveToParentViewController:0];
  v4 = [v3 view];

  if (v4)
  {
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    if (qword_100631F58 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10002BA60(&v6, v3);
    swift_endAccess();

    goto LABEL_6;
  }

  __break(1u);
}

void sub_10002A6E8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100632438);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_1004DD3FC();
  AnalyticsSendEvent();

  v10 = [a1 URL];
  if (v10)
  {
    v11 = v10;
    sub_1004D802C();

    v12 = sub_1004D809C();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    sub_1000230B8(v8);
    [a2 mma_shareRichLinkMetadata:a1];
    return;
  }

  v13 = sub_1004D809C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1000230B8(v8);
  v14 = sub_1004DD3FC();
  AnalyticsSendEvent();

  v16 = *(a3 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
  v15 = *(a3 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8);
  v17 = qword_100631F40;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_100671928;
  v18 = unk_100671930;
  if (v15)
  {
    v20 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v19 = v16;
      v18 = v15;
      goto LABEL_12;
    }
  }

LABEL_12:
  v22 = *(a3 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
  v21 = *(a3 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8);
  v23 = qword_100631F48;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_100671938;
  v24 = unk_100671940;
  if (!v21)
  {
    goto LABEL_20;
  }

  v26 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

LABEL_20:

    goto LABEL_21;
  }

  v25 = v22;
  v24 = v21;
LABEL_21:
  if (qword_100631F50 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_100632400);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1005126C0;
  *(v27 + 56) = &type metadata for String;
  v28 = sub_100010378();
  *(v27 + 32) = v19;
  *(v27 + 40) = v18;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v28;
  *(v27 + 64) = v28;
  *(v27 + 72) = v25;
  *(v27 + 80) = v24;
  sub_1004DD46C();
  [a2 requestPresentationStyle:0];
  v29 = [a2 activeConversation];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004DD3FC();

    [v30 insertText:v31 completionHandler:0];
  }

  else
  {
  }
}

uint64_t sub_10002AAF4()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (!v2)
  {
    if (*(v1 + 16))
    {
      v3 = sub_1004DE93C();
      v5 = *(v1 + 36);
      goto LABEL_6;
    }

    return 0;
  }

  if (!sub_1004DE9BC())
  {
    return 0;
  }

  v3 = sub_1004DE97C();
  v5 = v4;
LABEL_6:
  v6 = v2 != 0;
  sub_10002AD18(v3, v5, v6);
  v8 = v7;
  sub_10002AF6C(v3, v5, v6);
  return v8;
}

void sub_10002AD18(unint64_t a1, void *a2, char a3)
{
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1004DE9CC();
      type metadata accessor for MusicMessagesSharingViewController();

      swift_dynamicCast();
      sub_10002AF78();

      return;
    }

    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (a3)
  {
    v9 = v3;
    type metadata accessor for MusicMessagesSharingViewController();
    if (sub_1004DE99C() != *(v8 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1004DE9AC();
    swift_dynamicCast();
    a2 = v14;
    v3 = v14;
    v10 = sub_1004DE5EC(*(v8 + 40));
    v11 = -1 << *(v8 + 32);
    a1 = v10 & ~v11;
    if ((*(v8 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(v8 + 48) + 8 * a1);
        v3 = sub_1004DE5FC();

        if (v3)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(v8 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v9 = v3;
  if (*(v8 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10002B0D0();
  }

  sub_10002B65C(a1);
  *v9 = v8;
}

uint64_t sub_10002AF6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002AF78()
{
  v1 = v0;

  v2 = sub_1004DE9BC();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10002B7FC(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_1004DE5EC(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for MusicMessagesSharingViewController();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_1004DE5FC();

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
  sub_10002B65C(v8);
  result = sub_1004DE5FC();
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

id sub_10002B0D0()
{
  v1 = v0;
  sub_100004CB8(&qword_100633920);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10002B220()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100633920);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1004DE5EC(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002B434()
{
  v1 = v0;
  v2 = *v0;
  sub_100004CB8(&qword_100633920);
  result = sub_1004DEA6C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1004DE5EC(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_10002B65C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004DE94C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1004DE5EC(v10);

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

Swift::Int sub_10002B7FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100633920);
    v2 = sub_1004DEA7C();
    v14 = v2;
    sub_1004DE98C();
    if (sub_1004DE9EC())
    {
      type metadata accessor for MusicMessagesSharingViewController();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10002B434();
        }

        v2 = v14;
        result = sub_1004DE5EC(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1004DE9EC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_10002B9DC(uint64_t a1, void *a2)
{
  sub_1004DE5EC(a2[5]);
  result = sub_1004DE96C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_10002BA60(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1004DE9DC();

    if (v9)
    {

      type metadata accessor for MusicMessagesSharingViewController();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1004DE9BC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10002B7FC(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_10002B434();
    }

    v18 = v8;
    sub_10002B9DC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MusicMessagesSharingViewController();
  v11 = sub_1004DE5EC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10002BC78(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1004DE5FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

void sub_10002BC78(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002B434();
  }

  else
  {
    if (v7 > v6)
    {
      sub_10002B0D0();
      goto LABEL_12;
    }

    sub_10002B220();
  }

  v8 = *v3;
  v9 = sub_1004DE5EC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MusicMessagesSharingViewController();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004DE5FC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004DF15C();
  __break(1u);
}

void sub_10002DB38(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

uint64_t sub_10002DBAC()
{
  result = sub_10002DBCC();
  qword_100671958 = result;
  return result;
}

uint64_t sub_10002DBCC()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_100634B30);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v61 = sub_1001C6DC4(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_100634B38);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v63 = *(v4 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100511A40;
  v65 = v18;
  v58 = v19;
  v20 = v19 + v18;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 resourceURL];

  if (v23)
  {
    sub_1004D802C();

    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 0;
  }

  else
  {
    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 1;
  }

  v64 = v24;
  v24(v25, v26, 1, v0);
  v27 = v1;
  sub_100031AD8(v17, v20);
  type metadata accessor for BundleFinder();
  v28 = [v21 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    sub_1004D802C();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v27;
  v32 = v15;
  v33 = v15;
  v34 = v64;
  v64(v32, v30, 1, v0);
  v35 = v63;
  sub_100031AD8(v33, v20 + v63);
  v36 = [v21 mainBundle];
  v37 = [v36 bundleURL];

  sub_1004D802C();
  v62 = (v27 + 7);
  v34(v20 + 2 * v35, 0, 1, v0);
  v66 = v61;
  sub_100044E98(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "AC12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_1000108DC(v41, v9, &qword_100634B30);
      v42 = *v65;
      if ((*v65)(v9, 1, v0) == 1)
      {
        sub_100031B48(v9);
        v43 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v61)(v9, v0);
        v43 = 0;
      }

      v64(v12, v43, 1, v0);
      sub_1000108DC(v12, v31, &qword_100634B30);
      if (v42(v31, 1, v0) == 1)
      {
        sub_100031B48(v12);
      }

      else
      {
        v44 = v38;
        v45 = v12;
        v46 = v9;
        v47 = v59;
        (*v56)(v59, v31, v0);
        v48 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v9 = v46;
        v12 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v0);
        sub_100031B48(v12);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100512770;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_1004DD8DC();
  v5 = sub_1000EE74C(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_10002E378(uint64_t *a1)
{
  sub_100004CB8(a1);
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_opt_self() standardUserDefaults];
  return v1;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return sub_1004D967C();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations()
{
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();

  return sub_1004DD8DC();
}

uint64_t variable initialization expression of Gliss.Transition.completions()
{
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();

  return sub_1004DD8DC();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v3 = 2;
  v2[0] = 0xD000000000000014;
  v2[1] = 0x80000001004E9E20;
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100030C58();
  UserDefault.init(wrappedValue:defaults:key:)(&v3, v0, v2, &type metadata for String, &v4);
  return v4;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }
}

void *variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !sub_1004DED5C())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_10003C290(_swiftEmptyArrayStorage);
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10002EB44()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (qword_100633D90 != -1)
    {
      swift_once();
    }

    v4 = sub_1004DD3FC();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_100633DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_10063A310;
  v1 = qword_10063A310;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_10002EE04()
{
  if (qword_100633DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10063A310;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = sub_1004DC32C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = sub_1004DC33C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = sub_1004DC34C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_100512780;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions()
{
  type metadata accessor for RequestResponse.Controller();
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();

  return sub_1004DD8DC();
}

uint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap()
{
  type metadata accessor for RequestResponse.Controller();
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();
  v0 = sub_1004DD98C();
  swift_getTupleTypeMetadata2();
  v1 = sub_1004DD8DC();
  v2 = sub_1000EE74C(v1, &type metadata for Int, v0, &protocol witness table for Int);

  return v2;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10002F270@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (qword_100634470 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}