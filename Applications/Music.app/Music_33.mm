uint64_t sub_1003BB77C(uint64_t a1, uint64_t a2, unint64_t a3)
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

  result = _CocoaArrayWrapper.endIndex.getter();
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
    v12 = _CocoaArrayWrapper.endIndex.getter();
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

  sub_10000BF98(result, 1);

  return sub_1003BB65C(v6, v5, 1, v3);
}

unint64_t sub_1003BB890(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_10010FC20(&qword_101182128);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1003BB99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for Lyrics.TextLine(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = (v11 + 32) & ~v11;
  v15 = v9 + v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v13);
  v17 = a3 - v13;
  if (v16)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_23;
  }

  result = v15 + v12 * a3;
  v19 = v9 + v14 + v12 * a2;
  if (result < v19 || result >= v19 + (v18 - a2) * v12)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v19)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v21 = *(v9 + 16);
  v16 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v9 + 16) = v22;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1003BBB24(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_10049930C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1003BB99C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1003BBBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MotionData();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BBD24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
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

  result = _CocoaArrayWrapper.endIndex.getter();
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
    v12 = _CocoaArrayWrapper.endIndex.getter();
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

void sub_1003BBE20(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100009F78(0, &unk_1011842F0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  __chkstk_darwin(v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1003BAD68(v4, sub_1003BC41C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BBFC8(uint64_t a1, uint64_t a2, unint64_t a3)
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

  if (_CocoaArrayWrapper.endIndex.getter() < v5)
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
  v10 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
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

  sub_10000BF98(v14, 1);

  sub_1003BBE20(v6, v5, v10, v3);
}

void sub_1003BC0DC(char *a1)
{
  v2 = _s9PlaylistsVMa(0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController];
  v7 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v8 = sub_10049CB78();

  v9 = *(v6 + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_1003C16C8(v9 + v10, v5, _s9PlaylistsVMa);
  v5[8] = v8 & 1;
  sub_1003777F4(v5);
  sub_10037F198();
}

uint64_t sub_1003BC220(char *a1)
{
  v2 = _s9PlaylistsVMa(0);
  v3 = v2 - 8;
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v8 = v20;
  v9 = *(*&a1[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_1003C16C8(v9 + v10, v6, _s9PlaylistsVMa);

  *v6 = v8;
  v11 = v6 + *(v3 + 52);
  v12 = *v11;
  if (v11[1])
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100375B90(v13 | v12);
  v15 = (v14 >> 8) & 1;
  if ((v14 & 0xFF00) == 0x200)
  {
    v16 = 7;
  }

  else
  {
    v16 = v14;
  }

  if ((v14 & 0xFF00) == 0x200)
  {
    LOBYTE(v15) = 1;
  }

  *v11 = v16;
  v11[1] = v15;
  sub_10018F8E4(v13 | v12);
  sub_1003777F4(v6);
  v17 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
  swift_beginAccess();
  if (*&a1[v17])
  {

    dispatch thunk of MusicAutoupdatingResponse.update(_:)();
  }

  sub_10037F198();
}

void sub_1003BC470()
{
  v1 = *(sub_10010FC20(&unk_10118F670) - 8);
  v2 = v0 + ((*(v1 + 80) + 112) & ~*(v1 + 80));

  sub_1001F313C(v0 + 16, v2);
}

uint64_t sub_1003BC4E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F30;

  return sub_100394130(a1, v1 + 16);
}

uint64_t sub_1003BC578(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003944F4(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1003BC73C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AC860(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BC848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A8BC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BC968@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1003B1758(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003BC9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACDBC(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BCAB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A900C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BCC48(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10039BEE4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003BCDF4(void *a1)
{
  v2 = sub_10037FC08();
  v3 = sub_100380204();
  [v2 setCollectionViewLayout:v3];

  sub_10037F198();
  v4 = sub_100380E10();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];
}

uint64_t sub_1003BCEB0()
{
  v0 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118CDC0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118CDD0);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1003BD0B4(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_1011828F0);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&unk_10118CEC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&qword_101193C80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_10118CDC0);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118CDD0);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

id sub_1003BD4D0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for Playlist.Folder.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v44 - v17;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v58 = v13;
  v59 = v15;
  v22 = *(v15 + 16);
  v23 = *(v15 + 80);
  v61 = v18;
  v55 = v22;
  v56 = v19;
  (v22)(&v44 - v17, a1 + ((v23 + 32) & ~v23), v18, v20);
  sub_10037AA20(v21, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v59 + 8))(v21, v61);
    sub_1000095E8(v4, &qword_1011831B0);
    return 0;
  }

  v50 = ~v23;
  v57 = v21;
  v25 = v6;
  v54 = *(v6 + 32);
  v45 = v23;
  v26 = v10;
  v27 = v6 + 32;
  v28 = v58;
  v54(v58, v4, v5);
  v48 = v27;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v53 = v25;
  v46 = *(v25 + 16);
  v46(v26, v28, v5);
  v29 = *(v25 + 80);
  v30 = v5;
  v47 = v29 | 7;
  v49 = swift_allocObject();
  v54((v49 + ((v29 + 16) & ~v29)), v26, v5);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v60;
  v32 = v30;
  v51 = v30;
  v46(v60, v28, v30);
  v33 = v56;
  v34 = v61;
  v55(v56, v57, v61);
  v35 = (v29 + 24) & ~v29;
  v36 = (v7 + v45 + v35) & v50;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  v54((v37 + v35), v31, v32);
  v38 = v59;
  (*(v59 + 32))(v37 + v36, v33, v34);
  v39 = objc_opt_self();
  v66 = sub_1003C0D3C;
  v67 = v49;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010A9C60;
  v40 = _Block_copy(&aBlock);

  v66 = sub_1003C0D9C;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010A9C88;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);
  (*(v53 + 8))(v58, v51);
  (*(v38 + 8))(v57, v61);

  return v43;
}

uint64_t sub_1003BDAEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Playlist.EditableComponents();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v5 - 8);
  v35 = &v33 - v6;
  v7 = type metadata accessor for Playlist();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011831B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Playlist.Folder.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_10037AA20(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = &qword_1011831B0;
    v21 = v12;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v23 = UICollectionView.isDraggingCell(at:)();
    (*(v14 + 16))(v16, v19, v13);
    v24 = (*(v14 + 88))(v16, v13);
    if (v24 == enum case for Playlist.Folder.Item.folder(_:))
    {
      v25 = *(v14 + 8);
      v25(v19, v13);
      v22 = v23 ^ 1;
      v25(v16, v13);
      return v22 & 1;
    }

    if (v24 != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v28 = *(v14 + 8);
      v28(v19, v13);
      v28(v16, v13);
      goto LABEL_4;
    }

    (*(v14 + 96))(v16, v13);
    v27 = v38;
    (*(v38 + 32))(v9, v16, v7);
    if (v23)
    {
      (*(v27 + 8))(v9, v7);
      (*(v14 + 8))(v19, v13);
      goto LABEL_4;
    }

    v29 = v35;
    Playlist.editableComponents.getter();
    v31 = v36;
    v30 = v37;
    if ((*(v36 + 48))(v29, 1, v37) != 1)
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_10003D8C4(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v32 = *(v31 + 8);
      v32(v34, v30);
      (*(v38 + 8))(v9, v7);
      (*(v14 + 8))(v19, v13);
      v32(v29, v30);
      return v22 & 1;
    }

    (*(v38 + 8))(v9, v7);
    (*(v14 + 8))(v19, v13);
    v20 = &unk_10118D240;
    v21 = v29;
  }

  sub_1000095E8(v21, v20);
LABEL_4:
  v22 = 0;
  return v22 & 1;
}

void sub_1003BE070()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_pendingSelectedPlaylistItem;
  v3 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___globalHeaderRegistration;
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(*(v5 - 8) + 56);
  v6(v1 + v4, 1, 1, v5);
  v6(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___headerRegistration, 1, 1, v5);
  v7 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listPlaylistCellRegistration;
  v8 = sub_10010FC20(&qword_10118CCD8);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___listFolderCellRegistration;
  v10 = sub_10010FC20(&qword_10118CCE8);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridPlaylistCellRegistration;
  v12 = sub_10010FC20(&qword_10118CCF8);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___gridFolderCellRegistration;
  v14 = sub_10010FC20(&unk_10118CD08);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView) = 0;
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_prefetchingController;
  v16 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v15) = sub_10003AAD8(0xD000000000000020, 0x8000000100E483C0);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___searchController) = 0;
  v17 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___actionMetricsReportingContext;
  v18 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___impressionsTracker) = 0;
  v19 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  v20 = sub_10010FC20(&unk_1011839D0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse) = 0;
  v21 = v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponseSubscription;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_foregroundObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003BE4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1003BE608(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * v7;
  a2 = (v9 + 32 + 56 * v8);
  if (result != a2 || result >= &a2[56 * v14])
  {
    result = memmove(result, a2, 56 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(a4 + 16);
  v20 = *(a4 + 32);
  *(v10 + 48) = *(a4 + 48);
  *(v10 + 16) = v19;
  *(v10 + 32) = v20;
  *v10 = v18;
  a3 = &qword_10118D018;
  a2 = v21;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1000089F8(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_1000089F8(a4, v21, &qword_10118D018);
}

uint64_t sub_1003BE784(uint64_t (*a1)(uint64_t, uint64_t, __n128), double a2)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v7.n128_f64[0] = a2;

  return a1(v5, v6, v7);
}

uint64_t sub_1003BE814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACA38(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BE920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A8DE8(a1, v4, v5, v7, v6);
}

id sub_1003BEA48@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v11[2] = v6[2];
  v11[3] = v8;
  v11[4] = v6[4];
  v9 = v6[1];
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_100399F04(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003BEAB8()
{
  result = qword_10118CF10;
  if (!qword_10118CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF10);
  }

  return result;
}

uint64_t sub_1003BEB14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ACF94(a1, v4, v5, v6, v8 | v7);
}

id sub_1003BEBF8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v12 = *(v6 + 64);
  v9 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_10039A798(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003BEC68()
{
  result = qword_10118CF28;
  if (!qword_10118CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF28);
  }

  return result;
}

uint64_t sub_1003BED18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD83C(a1, v4, v5, v6, v8 | v7);
}

unint64_t sub_1003BEDFC()
{
  result = qword_10118CF60;
  if (!qword_10118CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CF60);
  }

  return result;
}

uint64_t sub_1003BEE58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD444(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BEF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A99B0(a1, v4, v5, v7, v6);
}

id sub_1003BF034@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v12[2] = v6[2];
  v12[3] = v8;
  v9 = v6[5];
  v12[4] = v6[4];
  v12[5] = v9;
  v10 = v6[1];
  v12[0] = *v6;
  v12[1] = v10;
  result = sub_10039A4C4(*a1, v12, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003BF0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9344(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF19C()
{
  result = qword_1011A3E50;
  if (!qword_1011A3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3E50);
  }

  return result;
}

uint64_t sub_1003BF2A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD10C(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BF3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9620(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF560()
{
  result = qword_10118CFA8;
  if (!qword_10118CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CFA8);
  }

  return result;
}

uint64_t sub_1003BF668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD2A8(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BF774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A97E8(a1, v4, v5, v7, v6);
}

unint64_t sub_1003BF94C()
{
  result = qword_10118CFC8;
  if (!qword_10118CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CFC8);
  }

  return result;
}

uint64_t sub_1003BFA54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AD6A0(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BFB60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9B58(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFCEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A9D20(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFE0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003ADAC8(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003BFF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003AA014(a1, v4, v5, v7, v6);
}

id sub_1003C006C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, Swift::String *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[4];
  v13 = *(v11 + 80);
  v17[4] = *(v11 + 64);
  v17[5] = v13;
  v18 = *(v11 + 96);
  v14 = *(v11 + 16);
  v17[0] = *v11;
  v17[1] = v14;
  v15 = *(v11 + 48);
  v17[2] = *(v11 + 32);
  v17[3] = v15;
  result = sub_10039A1E0(*a1, v17, v10, v12, a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1003C00DC()
{

  return swift_deallocObject();
}

uint64_t sub_1003C0158()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003C0198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1003AC6AC(a1, v4, v5, v6, v8 | v7);
}

uint64_t sub_1003C02A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003C02EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003A89B0(a1, v4, v5, v7, v6);
}

uint64_t sub_1003C03E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1003C0454(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + v7);
  v10 = *v9;
  v11 = (v3 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = v9[1];

  return a3(a1, v3 + v6, v10, v14, v12, v13);
}

char *sub_1003C0518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100009F78(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1003C0664(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), unint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v10 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v5;
    v12 = *v5 >> 62;
    if (!v12)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = (v16 + v15);
  if (!v17)
  {
    v10(result, 1);
    return sub_1003C0518(v9, v8, 1, v7, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003C07D4()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003C08A0(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10039BFFC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003C0998()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003C0AB4(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, double a5)
{
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  return sub_10039F7F0(*(v5 + 16), *(v5 + 24), a5, *(v5 + 32), v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3, a4);
}

uint64_t sub_1003C0C14()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1003C0CD8()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100390DD8(v2, v3, v4);
}

uint64_t sub_1003C0D3C()
{
  v1 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10038F7A0(v2);
}

unint64_t sub_1003C0D9C(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10038F860(a1, v7, v1 + v4, v8);
}

unint64_t sub_1003C0E84()
{
  result = qword_10118D288;
  if (!qword_10118D288)
  {
    sub_1001109D0(&qword_10118D280);
    sub_10003D8C4(&qword_10118D290, _s8GridCellVMa);
    sub_10003D8C4(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D288);
  }

  return result;
}

uint64_t sub_1003C0F80(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Folder() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for IndexPath();
  v13 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1 + v5;
  v8 = *(v1 + v5);
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_10038C6AC(a1, v14, v13, v6, v1 + v4, v8, v9, v10);
}

uint64_t sub_1003C1128(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Folder() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10038D184(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1003C12B8()
{
  result = qword_10118D2D8;
  if (!qword_10118D2D8)
  {
    sub_1001109D0(&qword_10118D2D0);
    sub_10003D8C4(&qword_10118D2E0, _s8ListCellVMa);
    sub_10003D8C4(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D2D8);
  }

  return result;
}

unint64_t sub_1003C13C8()
{
  result = qword_101193C30;
  if (!qword_101193C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193C30);
  }

  return result;
}

uint64_t sub_1003C14B0()
{
  v1 = *(sub_10010FC20(&unk_101182900) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10038164C(v2, v3, v4, v5);
}

uint64_t sub_1003C1524()
{
  v1 = *(sub_10010FC20(&unk_101182900) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003821F0(v2, v3);
}

void sub_1003C1594(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_101182900) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1003825F4(a1, v4, v5, v6);
}

unint64_t sub_1003C1614()
{
  result = qword_10118D3B8;
  if (!qword_10118D3B8)
  {
    sub_1001109D0(&unk_10118CEC0);
    sub_10003D8C4(&unk_10118D3C0, &type metadata accessor for Playlist.Folder.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D3B8);
  }

  return result;
}

uint64_t sub_1003C16C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C1730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C1790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C18D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 && (v3 = MPCPlayerResponse.playingModelObject.getter()) != 0)
  {
    v4 = v3;
    v5 = [v3 identifiers];

    if (!v2)
    {
LABEL_10:
      v8 = 0;
      if (v5)
      {
        goto LABEL_11;
      }

LABEL_8:
      if (!v8)
      {
        return 1;
      }

      v9 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v6 = MPCPlayerResponse.playingModelObject.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 identifiers];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v8)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v9 = [v5 intersectsSet:v8];

LABEL_13:
  v5 = v8;
LABEL_15:

  return v9;
}

void sub_1003C19C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10001C32C();
  }
}

uint64_t sub_1003C1A14()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 artist];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 name];

      if (v4)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v47[0] = v6;
    }

    else
    {
      v47[0] = 0;
    }

    v15 = [v1 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = 0;
    v47[1] = v17;
    v47[2] = v19;
    v21 = &_swiftEmptyArrayStorage;
LABEL_16:
    v22 = &v47[2 * v20];
    while (++v20 != 3)
    {
      v23 = v22 + 2;
      v24 = *v22;
      v22 += 2;
      if (v24)
      {
        v25 = *(v23 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100498B7C(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_100498B7C((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[16 * v27];
        *(v28 + 4) = v25;
        *(v28 + 5) = v24;
        goto LABEL_16;
      }
    }

LABEL_43:
    sub_10010FC20(&qword_1011815E0);
    swift_arrayDestroy();
    v47[3] = v21;
    sub_10010FC20(&qword_101183BC8);
    sub_100020674(&unk_101183BD0, &qword_101183BC8);
    v32 = BidirectionalCollection<>.joined(separator:)();

    return v32;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 show];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 title];

      if (v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v48 = v12;
      v49[0] = v14;
    }

    else
    {
      v48 = 0;
      v49[0] = 0;
    }

    v33 = [v8 title];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = 0;
    v49[1] = v35;
    v49[2] = v37;
    v21 = &_swiftEmptyArrayStorage;
LABEL_35:
    v39 = &v49[2 * v38];
    while (++v38 != 3)
    {
      v40 = v39 + 2;
      v41 = *v39;
      v39 += 2;
      if (v41)
      {
        v42 = *(v40 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100498B7C(0, *(v21 + 2) + 1, 1, v21);
        }

        v44 = *(v21 + 2);
        v43 = *(v21 + 3);
        if (v44 >= v43 >> 1)
        {
          v21 = sub_100498B7C((v43 > 1), v44 + 1, 1, v21);
        }

        *(v21 + 2) = v44 + 1;
        v45 = &v21[16 * v44];
        *(v45 + 4) = v42;
        *(v45 + 5) = v41;
        goto LABEL_35;
      }
    }

    goto LABEL_43;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    return 0;
  }

  v30 = [v29 title];
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v32;
}

id sub_1003C1E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003C1F00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A0F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for LibraryArtistHeaderView()
{
  result = qword_10118D570;
  if (!qword_10118D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C1FC8()
{
  type metadata accessor for Artist();
  if (v0 <= 0x3F)
  {
    sub_100237820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003C2070@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118D5B0);
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  type metadata accessor for LibraryArtistHeaderView();
  sub_10056CAE4(v8);
  v9 = sub_1003C354C(v8);
  sub_1000095E8(v8, &unk_101184290);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = sub_10010FC20(&qword_10118D5B8);
  sub_1003C22BC(v1, &v5[*(v10 + 44)], v9);
  if (qword_10117F668 != -1)
  {
    swift_once();
  }

  v11 = qword_10118D508;
  KeyPath = swift_getKeyPath();
  v13 = &v5[*(v3 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;

  static Font.Weight.bold.getter();
  sub_1003C3904();
  View.fontWeight(_:)();
  sub_1000095E8(v5, &qword_10118D5B0);
  LODWORD(v11) = static HierarchicalShapeStyle.primary.getter();
  *(a1 + *(sub_10010FC20(&qword_10118D5D8) + 36)) = v11;
  v14 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10118D5E0);
  v16 = a1 + *(result + 36);
  *v16 = v14;
  *(v16 + 8) = 1;
  return result;
}

uint64_t sub_1003C22BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v98 = a1;
  v97 = a2;
  v95 = sub_10010FC20(&qword_10118D5E8);
  __chkstk_darwin(v95);
  v96 = (v76 - v4);
  v84 = type metadata accessor for BorderlessButtonStyle();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryArtistHeaderView();
  v76[0] = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v76[1] = v7;
  v77 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10010FC20(&qword_101180F78);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v76 - v8;
  v92 = sub_10010FC20(&qword_10118D5F0);
  __chkstk_darwin(v92);
  v81 = v76 - v9;
  v10 = sub_10010FC20(&qword_10118D5F8);
  __chkstk_darwin(v10 - 8);
  v94 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = v76 - v13;
  v14 = type metadata accessor for ArtworkImage.ReusePolicy();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v18 - 8);
  v20 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v21 - 8);
  v23 = v76 - v22;
  v24 = sub_10010FC20(&qword_10118D600);
  __chkstk_darwin(v24);
  v26 = v76 - v25;
  v86 = sub_10010FC20(&qword_10118D608);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v28 = v76 - v27;
  v89 = sub_10010FC20(&qword_10118D610);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = v76 - v29;
  v88 = sub_10010FC20(&qword_10118D618) - 8;
  __chkstk_darwin(v88);
  v91 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v76 - v32;
  v34 = type metadata accessor for Artist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v34, &protocol witness table for Artist, v23);
  v35 = sub_10010FC20(&unk_101182950);
  (*(*(v35 - 8) + 56))(v20, 7, 11, v35);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(a3, 0, a3, 0, 0, 1, 2, v101);
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v23, v20, v101, v17, v26);
  (*(v15 + 8))(v17, v14);
  sub_100172200(v20);
  sub_1000095E8(v23, &unk_10118A5E0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v26[*(sub_10010FC20(&qword_10118D620) + 36)];
  v37 = v101[4];
  *v36 = v101[3];
  *(v36 + 1) = v37;
  *(v36 + 2) = v101[5];
  v38 = &v26[*(v24 + 36)];
  *v38 = 0;
  *(v38 + 4) = 257;
  v39 = sub_1003C39E8();
  View.corner(_:)();
  sub_1000095E8(v26, &qword_10118D600);
  Border.artwork.unsafeMutableAddressor();

  *&v102[0] = v24;
  *(&v102[0] + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v85;
  v42 = v86;
  View.border(_:corner:)();

  (*(v87 + 8))(v28, v42);
  v43 = Shadow.shallow.unsafeMutableAddressor();
  v44 = v43[4];
  v45 = *(v43 + 1);
  v102[0] = *v43;
  v102[1] = v45;
  v103 = v44;

  v99 = v42;
  v100 = OpaqueTypeConformance2;
  v46 = v98;
  swift_getOpaqueTypeConformance2();
  v47 = v89;
  View.shadow(_:corner:)(v102, 0, 0, 2);
  sub_1003C3B18(v102);
  (*(v90 + 8))(v41, v47);
  LOBYTE(v47) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v48 = &v33[*(v88 + 44)];
  *v48 = v47;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  Artist.catalogID.getter();
  if (v53)
  {

    v54 = v77;
    sub_1003C3CE4(v46, v77);
    v55 = (*(v76[0] + 80) + 16) & ~*(v76[0] + 80);
    v56 = swift_allocObject();
    v57 = sub_1003C3D48(v54, v56 + v55);
    __chkstk_darwin(v57);
    v76[-2] = v46;
    v58 = v78;
    Button.init(action:label:)();
    v59 = v82;
    BorderlessButtonStyle.init()();
    sub_100020674(&qword_101180F70, &qword_101180F78);
    sub_1003C3FA4(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
    v60 = v81;
    v61 = v80;
    v62 = v84;
    View.buttonStyle<A>(_:)();
    (*(v83 + 8))(v59, v62);
    (*(v79 + 8))(v58, v61);
    v63 = (v60 + *(v92 + 36));
    sub_10010FC20(&qword_10118D648);
    static ButtonBorderShape.roundedRectangle.getter();
    *v63 = swift_getKeyPath();
    sub_1000089F8(v60, v96, &qword_10118D5F0);
    swift_storeEnumTagMultiPayload();
    sub_1003C3B6C();
    v64 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v60, &qword_10118D5F0);
  }

  else
  {
    v99 = Artist.name.getter();
    v100 = v65;
    sub_100009838();
    v66 = Text.init<A>(_:)();
    v67 = v96;
    *v96 = v66;
    v67[1] = v68;
    *(v67 + 16) = v69 & 1;
    v67[3] = v70;
    swift_storeEnumTagMultiPayload();
    sub_1003C3B6C();
    v64 = v93;
    _ConditionalContent<>.init(storage:)();
  }

  v71 = v91;
  sub_1000089F8(v33, v91, &qword_10118D618);
  v72 = v94;
  sub_1000089F8(v64, v94, &qword_10118D5F8);
  v73 = v97;
  sub_1000089F8(v71, v97, &qword_10118D618);
  v74 = sub_10010FC20(&qword_10118D650);
  sub_1000089F8(v72, v73 + *(v74 + 48), &qword_10118D5F8);
  sub_1000095E8(v64, &qword_10118D5F8);
  sub_1000095E8(v33, &qword_10118D618);
  sub_1000095E8(v72, &qword_10118D5F8);
  return sub_1000095E8(v71, &qword_10118D618);
}

void sub_1003C3004(uint64_t a1)
{
  v2 = type metadata accessor for LibraryArtistHeaderView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  sub_10012B7A8(a1 + *(v3 + 28), v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v17);
  if (Strong)
  {
    v11 = sub_10003169C();

    if (v11)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      sub_1003C3CE4(a1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      type metadata accessor for MainActor();

      v13 = static MainActor.shared.getter();
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = &protocol witness table for MainActor;
      sub_1003C3D48(v6, v16 + v14);
      *(v16 + v15) = v11;
      sub_1001F4CB8(0, 0, v9, &unk_100EC9410, v16);
    }
  }
}

uint64_t sub_1003C3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001AB600;

  return sub_100136860(a5);
}

double sub_1003C32E0@<D0>(uint64_t a1@<X8>)
{
  *&v15 = Artist.name.getter();
  *(&v15 + 1) = v2;
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_10028EC98();
  if (qword_10117F670 != -1)
  {
    swift_once();
  }

  v10 = static UIFont.preferredFont(forTextStyle:weight:)();
  v11 = [objc_opt_self() configurationWithFont:v10 scale:1];

  static HierarchicalShapeStyle.secondary.getter();
  Text.withChevron<A>(_:tintColor:)(v11, v3, v5, v7 & 1, v9, &v15);

  sub_10011895C(v3, v5, v7 & 1);

  v12 = v16;
  v13 = v17;
  result = *&v15;
  *a1 = v15;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1003C3448()
{
  result = static Font.title.getter();
  qword_10118D508 = result;
  return result;
}

uint64_t sub_1003C3484(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._buttonBorderShape.setter();
}

double sub_1003C354C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101185768);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  (*(v3 + 104))(&v23 - v15, enum case for UserInterfaceSizeClass.regular(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_1003C3F34(a1, v9);
  sub_1003C3F34(v16, &v9[v17]);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) != 1)
  {
    sub_1003C3F34(v9, v12);
    if (v18(&v9[v17], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v9[v17], v2);
      sub_1003C3FA4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v3 + 8);
      v22(v5, v2);
      sub_1000095E8(v16, &unk_101184290);
      v22(v12, v2);
      sub_1000095E8(v9, &unk_101184290);
      if (v21)
      {
        return 120.0;
      }

      return 86.0;
    }

    sub_1000095E8(v16, &unk_101184290);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_1000095E8(v9, &qword_101185768);
    return 86.0;
  }

  sub_1000095E8(v16, &unk_101184290);
  if (v18(&v9[v17], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v9, &unk_101184290);
  return 120.0;
}

unint64_t sub_1003C3904()
{
  result = qword_10118D5C0;
  if (!qword_10118D5C0)
  {
    sub_1001109D0(&qword_10118D5B0);
    sub_100020674(&qword_10118D5C8, &qword_10118D5D0);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D5C0);
  }

  return result;
}

unint64_t sub_1003C39E8()
{
  result = qword_10118D628;
  if (!qword_10118D628)
  {
    sub_1001109D0(&qword_10118D600);
    sub_1003C3A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D628);
  }

  return result;
}

unint64_t sub_1003C3A74()
{
  result = qword_10118D630;
  if (!qword_10118D630)
  {
    sub_1001109D0(&qword_10118D620);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D630);
  }

  return result;
}

unint64_t sub_1003C3B6C()
{
  result = qword_10118D638;
  if (!qword_10118D638)
  {
    sub_1001109D0(&qword_10118D5F0);
    sub_1001109D0(&qword_101180F78);
    type metadata accessor for BorderlessButtonStyle();
    sub_100020674(&qword_101180F70, &qword_101180F78);
    sub_1003C3FA4(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_10118D640, &qword_10118D648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D638);
  }

  return result;
}

uint64_t sub_1003C3CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryArtistHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryArtistHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003C3DAC()
{
  v1 = *(type metadata accessor for LibraryArtistHeaderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1003C3004(v2);
}

uint64_t sub_1003C3E14(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryArtistHeaderView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003C3224(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003C3F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3FA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003C3FEC()
{
  result = qword_10118D658;
  if (!qword_10118D658)
  {
    sub_1001109D0(&qword_10118D5E0);
    sub_1003C40A4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D658);
  }

  return result;
}

unint64_t sub_1003C40A4()
{
  result = qword_10118D660;
  if (!qword_10118D660)
  {
    sub_1001109D0(&qword_10118D5D8);
    sub_1001109D0(&qword_10118D5B0);
    sub_1003C3904();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D660);
  }

  return result;
}

void sub_1003C41C4()
{
  v11.receiver = v0;
  v11.super_class = _s19NavigationTitleViewCMa(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView];
  v2 = v0[OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *v1;
    [v0 bounds];
    [v4 sizeThatFits:{v5, v6}];
    CGRect.centeringAlong(axes:in:)();
    UIView.untransformedFrame.setter(v7, v8, v9, v10);
    sub_10004ADFC(v3, v2);
  }
}

void sub_1003C4400()
{
  sub_1003C48EC(319, &qword_10118D6B8, _s19NavigationTitleViewC7ContentOMa);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1003C4658(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003C47A4()
{
  type metadata accessor for Artwork();
  if (v0 <= 0x3F)
  {
    sub_1003C48EC(319, &qword_101182208, &type metadata accessor for Artwork.CropStyle);
    if (v1 <= 0x3F)
    {
      sub_1003C4940();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003C48EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003C4940()
{
  if (!qword_10119E2E0)
  {
    sub_1001109D0(&qword_101181A00);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10119E2E0);
    }
  }
}

uint64_t sub_1003C49A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1003C49EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C4A5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C4A7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 384) = v3;
  return result;
}

void sub_1003C4B38()
{
  sub_1003C4BA0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1003C4BA0()
{
  if (!qword_10118D7B0)
  {
    type metadata accessor for Artwork();
    sub_1001109D0(&unk_101184060);
    sub_1001109D0(&unk_10118D7B8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10118D7B0);
    }
  }
}

uint64_t sub_1003C4C44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1003C4CA4();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_1003C4CA4()
{
  result = qword_101197A30;
  if (!qword_101197A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101197A30);
  }

  return result;
}

uint64_t sub_1003C4CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  __chkstk_darwin(v4);
  v71 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_10010FC20(&qword_10118D7E8);
  __chkstk_darwin(v73);
  v74 = &v66[-v7];
  v8 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v8 - 8);
  v72 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v77 = &v66[-v11];
  __chkstk_darwin(v12);
  v14 = &v66[-v13];
  v15 = type metadata accessor for Artwork();
  v79 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v78 = &v66[-v19];
  v20 = _s19NavigationTitleViewC7ContentOMa(0);
  __chkstk_darwin(v20);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v66[-v24];
  v26 = sub_10010FC20(&qword_10118D7F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v66[-v27];
  v30 = &v66[*(v29 + 56) - v27];
  sub_1003C555C(a1, &v66[-v27]);
  sub_1003C555C(a2, v30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003C555C(v28, v25);
    v35 = sub_10010FC20(&qword_10118D7F8);
    v36 = *(v35 + 48);
    v37 = *(v35 + 64);
    v38 = *&v25[v37];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1000095E8(&v25[v36], &unk_101184060);
      (*(v79 + 8))(v25, v15);
      goto LABEL_11;
    }

    v69 = *(v30 + v37);
    v70 = v38;
    v39 = *(v79 + 32);
    v40 = v15;
    v41 = v78;
    v39(v78, v25, v40);
    v39(v17, v30, v40);
    v42 = &v25[v36];
    v43 = v14;
    sub_1003C561C(v42, v14);
    v44 = v77;
    sub_1003C561C(v30 + v36, v77);
    if (static Artwork.== infix(_:_:)())
    {
      v68 = v17;
      v45 = v40;
      v46 = *(v73 + 48);
      v47 = v43;
      v48 = v43;
      v49 = v74;
      sub_1003C568C(v48, v74);
      sub_1003C568C(v44, &v49[v46]);
      v50 = v75;
      v51 = *(v76 + 48);
      if (v51(v49, 1, v75) == 1)
      {
        sub_1000095E8(v44, &unk_101184060);
        sub_1000095E8(v47, &unk_101184060);
        v52 = *(v79 + 8);
        v52(v68, v45);
        v52(v78, v45);
        if (v51(&v49[v46], 1, v50) == 1)
        {
          sub_1000095E8(v49, &unk_101184060);
          v53 = v69;
          v54 = v70;
          goto LABEL_24;
        }
      }

      else
      {
        v73 = v47;
        v56 = v72;
        sub_1003C568C(v49, v72);
        if (v51(&v49[v46], 1, v50) != 1)
        {
          v59 = v76;
          v60 = &v49[v46];
          v61 = v71;
          (*(v76 + 32))(v71, v60, v50);
          sub_1003C56FC();
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          v62 = *(v59 + 8);
          v62(v61, v50);
          sub_1000095E8(v77, &unk_101184060);
          sub_1000095E8(v73, &unk_101184060);
          v63 = *(v79 + 8);
          v63(v68, v45);
          v63(v78, v45);
          v62(v72, v50);
          sub_1000095E8(v49, &unk_101184060);
          v53 = v69;
          v54 = v70;
          if ((v67 & 1) == 0)
          {

LABEL_30:

            goto LABEL_31;
          }

LABEL_24:
          if (v54)
          {
            if (v53)
            {
              v64 = v53;

              v34 = v54 == v64;
LABEL_32:
              sub_1003C55C0(v28);
              return v34 & 1;
            }
          }

          else if (!v53)
          {
            v34 = 1;
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v57 = v56;
        sub_1000095E8(v77, &unk_101184060);
        sub_1000095E8(v73, &unk_101184060);
        v58 = *(v79 + 8);
        v58(v68, v45);
        v58(v78, v45);
        (*(v76 + 8))(v57, v50);
      }

      sub_1000095E8(v49, &qword_10118D7E8);
    }

    else
    {

      sub_1000095E8(v44, &unk_101184060);
      sub_1000095E8(v14, &unk_101184060);
      v55 = *(v79 + 8);
      v55(v17, v40);
      v55(v41, v40);
    }

LABEL_31:
    v34 = 0;
    goto LABEL_32;
  }

  sub_1003C555C(v28, v22);
  v31 = *v22;
  v32 = v22[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v31 == *v30 && v32 == v30[1])
    {
      v34 = 1;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_32;
  }

LABEL_11:
  sub_1000095E8(v28, &qword_10118D7F0);
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1003C555C(uint64_t a1, uint64_t a2)
{
  v4 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C55C0(uint64_t a1)
{
  v2 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C568C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C56FC()
{
  result = qword_10118D800;
  if (!qword_10118D800)
  {
    type metadata accessor for Artwork.CropStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D800);
  }

  return result;
}

void sub_1003C5754()
{
  v1 = OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_content;
  v2 = _s19NavigationTitleViewC7ContentOMa(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_isContentVisible) = 0;
  v3 = v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_contentView;
  *v3 = 0;
  *(v3 + 8) = -1;
  v4 = OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_animationSpecs;
  v5 = *&CATransform3DIdentity.m33;
  *&__src[0].m31 = *&CATransform3DIdentity.m31;
  *&__src[0].m33 = v5;
  v6 = *&CATransform3DIdentity.m43;
  *&__src[0].m41 = *&CATransform3DIdentity.m41;
  *&__src[0].m43 = v6;
  v7 = *&CATransform3DIdentity.m13;
  *&__src[0].m11 = *&CATransform3DIdentity.m11;
  *&__src[0].m13 = v7;
  v8 = *&CATransform3DIdentity.m23;
  *&__src[0].m21 = *&CATransform3DIdentity.m21;
  *&__src[0].m23 = v8;
  CATransform3DMakeScale(&__src[1], 1.1, 1.1, 1.0);
  CATransform3DMakeScale(&__src[2], 0.8, 0.8, 1.0);
  memcpy((v0 + v4), __src, 0x180uLL);
  *(v0 + OBJC_IVAR____TtCV5Music15ContainerDetail19NavigationTitleView_activeAnimator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003C58A4()
{
  v1 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) initWithImage:0];
  v2 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkShadowView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_cropStyle;
  v4 = type metadata accessor for Artwork.CropStyle();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_specs;
  v6 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v6, v15, 0.4, 6.0, 0.0, 2.0);
  *v5 = vdupq_n_s64(0x4044800000000000uLL);
  v7 = v15[1];
  *(v5 + 24) = v15[0];
  *(v5 + 16) = 0x401C000000000000;
  *(v5 + 40) = v7;
  *(v5 + 56) = v16;
  __asm { FMOV            V0.2D, #4.0 }

  *(v5 + 64) = _Q0;
  *(v5 + 80) = _Q0;
  v13 = OBJC_IVAR____TtCCV5Music15ContainerDetail19NavigationTitleViewP33_43996391452D1F881F8D9F2EF57B4A6820ArtworkContainerView_artworkLoader;
  v14 = sub_10010FC20(&qword_101181A00);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003C5B84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPUIGridViewBaseStyleUtil();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003C5BDC(uint64_t a1)
{
  v2 = 0xE900000000000064;
  v3 = [swift_getObjCClassFromMetadata() reuseIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 0xE400000000000000;
      v5 = 1869768008;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v5 = 0x6972476567616D49;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (!a1)
  {
    v5 = 0x65736E65646E6F43;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xEA00000000006469;
  v5 = 0x7247657261757153;
LABEL_11:

  v6._countAndFlagsBits = v5;
  v6._object = v2;
  String.append(_:)(v6);

  return v4;
}

uint64_t sub_1003C5D60(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_1003C8E30(v1);
  }

  return result;
}

uint64_t sub_1003C5DC4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v3, Strong + OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger, v0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "User capabilities change: clearing Now Playing state and scheduling timeline reload", v7, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_100670420(&off_10109A9F0);
    sub_1003C6340(v9);
  }

  return result;
}

uint64_t sub_1003C5F9C()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v19 = &v19 - v1;
  v2 = sub_10010FC20(&qword_10118DA20);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for WidgetRecommendationDiskCache(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FA58 != -1)
  {
    swift_once();
  }

  v8 = 0;
  v9 = qword_101219170;
  v10 = OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache;
  do
  {
    v11 = *(&off_10109AA18 + v8++ + 32);
    sub_1003C9F84(v9 + v10, v7);
    v12 = type metadata accessor for WidgetMusicRecommendation(0);
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    v20 = v11;
    v13 = String.init<A>(describing:)();
    sub_100713D34(v13, v14, v4);

    sub_1000095E8(v4, &qword_10118DA20);
    sub_1003C9FE8(v7);
  }

  while (v8 != 6);
  v15 = type metadata accessor for TaskPriority();
  v16 = v19;
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_10035EB10(0, 0, v16, &unk_100EC9788, v17);

  return sub_1000095E8(v16, &unk_101181520);
}

uint64_t sub_1003C627C()
{
  if (qword_10117FC70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100719F38();
}

uint64_t sub_1003C6340(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    sub_1003C9C94();
    v11 = Set.description.getter();
    v13 = sub_1000105AC(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling timeline update for reasons: %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  if (*(v2 + 56))
  {

    Task.cancel()();
  }

  v14 = *(v2 + 64);

  *(v2 + 64) = sub_1003C65D4(a1, v14);

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = 0x3FE0000000000000;
  v16[5] = v2;

  *(v2 + 56) = sub_1001F4CB8(0, 0, v6, &unk_100EC9748, v16);
}

uint64_t sub_1003C65D4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1003B42E4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C66B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1003C6774, 0, 0);
}

uint64_t sub_1003C6774()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1003C6850;

  return sub_10062A46C(v1, v3, 0, 0, 1);
}

uint64_t sub_1003C6850()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1003CA1F8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1003C69E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003C69E8()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1 = *(v0 + 24);

    sub_1003C90C8(v2);

    *(v1 + 64) = &_swiftEmptySetSingleton;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003C6A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_10010FC20(&unk_101181520);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v7;
  v5[17] = v6;

  return _swift_task_switch(sub_1003C6B54, v7, v6);
}

uint64_t sub_1003C6B54()
{
  v103 = v0;
  *(v0 + 144) = OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 88);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v98 = *&v5;
    *v4 = 136446210;
    v6 = *(v3 + 40);
    *(v0 + 80) = v6;
    v7 = v6;
    sub_10010FC20(&qword_10118DA00);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v98);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received new player response %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v11 = *(v0 + 88);
  v12 = *(v11 + 40);
  if (!v12 || (v13 = &selRef_trackNumber, v14 = [v12 tracklist], v15 = objc_msgSend(v14, "playingItem"), v14, !v15) || (v16 = objc_msgSend(v15, "isPlaceholder"), v15, (v16 & 1) != 0))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Received placeholder: clearing Now Playing state and scheduling timeline reload", v19, 2u);
    }

    if (qword_10117F6C0 != -1)
    {
      swift_once();
    }

    sub_1004115BC();
    v20 = sub_100670420(&off_10109A9F0);
    sub_1003C6340(v20);

LABEL_11:

    v21 = *(v0 + 8);

    return v21();
  }

  *(v0 + 72) = &_swiftEmptySetSingleton;
  v23 = *(v11 + 40);
  v24 = *(v0 + 96);
  if (v23)
  {
    v25 = [v23 state];
    if (v24)
    {
      v26 = 0;
      if (v25 == [*(v0 + 96) state])
      {
        v27 = *(v11 + 40);
        if (!v27)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    if (!v24)
    {
      v32 = 0;
      v31 = 0;
      v49 = 0;
      v50 = 0uLL;
      v51 = 0.0;
      v33 = 1;
      goto LABEL_67;
    }

    [*(v0 + 96) state];
    v26 = 0;
  }

  sub_1003B42E4(&v98, 3);
  v27 = *(v11 + 40);
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_23:
  v28 = [v27 tracklist];
  v29 = [v28 playingItem];

  if (v29)
  {
    v30 = [v29 metadataObject];

    if (v30)
    {
      v31 = [v30 innermostModelObject];

      if (v26)
      {
        v32 = 0;
        v33 = 1;
        goto LABEL_33;
      }

LABEL_29:
      v34 = [*(v0 + 96) tracklist];
      v35 = [v34 playingItem];

      if (v35 && (v36 = [v35 metadataObject], v35, v36))
      {
        v32 = [v36 innermostModelObject];

        v33 = 0;
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

LABEL_33:
      *(v0 + 152) = v32;
      *(v0 + 232) = v33;
      if (v31)
      {
        v37 = v31;
        v38 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
        v39 = MPModelObject.bestIdentifier(for:)(*v38, 1u);
        v41 = v40;

        if (!v32)
        {
          if (!v41)
          {
            if (MPModelObject.favoriteStatus.getter() == 4)
            {
              v32 = 0;
LABEL_62:
              v13 = &selRef_trackNumber;
              goto LABEL_63;
            }

LABEL_49:
            *(v0 + 160) = v31;
            sub_1003B42E4(&v98, 1);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v52 = *(v11 + 40);
            if (v52)
            {
              v53 = v52;
              v54 = sub_1003C8608();
            }

            else
            {
              v54 = 0;
            }

            *(v0 + 168) = v54;
            v55 = swift_task_alloc();
            *(v0 + 176) = v55;
            *v55 = v0;
            v55[1] = sub_1003C7778;

            return sub_100412500(v31, v54);
          }

          goto LABEL_48;
        }

        v42 = v41;
      }

      else
      {
        v42 = 0;
        v39 = 0;
        if (!v32)
        {
          v31 = 0;
          v32 = 0;
          v13 = &selRef_trackNumber;
          goto LABEL_63;
        }
      }

      v43 = v32;
      v44 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      v45 = MPModelObject.bestIdentifier(for:)(*v44, 1u);
      v47 = v46;

      if (v42)
      {
        if (v47)
        {
          if (v39 == v45 && v42 == v47)
          {

            if (!v31)
            {
LABEL_42:
              v48 = MPModelObject.favoriteStatus.getter();
LABEL_61:
              if (v48 == 4)
              {
                goto LABEL_62;
              }

              goto LABEL_49;
            }

LABEL_60:
            v57 = MPModelObject.favoriteStatus.getter();
            v58 = MPModelObject.favoriteStatus.getter();
            v48 = v58;
            if (v57 != 4)
            {
              if (v58 != 4 && (sub_1003C9AA0(v57, v58) & 1) != 0)
              {
                goto LABEL_62;
              }

              goto LABEL_49;
            }

            goto LABEL_61;
          }

          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v56 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_59:
          if (!v31)
          {
            goto LABEL_42;
          }

          goto LABEL_60;
        }
      }

      else if (!v47)
      {
        goto LABEL_59;
      }

LABEL_48:

      goto LABEL_49;
    }
  }

LABEL_27:
  v31 = 0;
  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  v33 = 1;
  v32 = 0;
LABEL_63:
  v59 = *(*(v0 + 88) + 40);
  v50 = 0uLL;
  v51 = 0.0;
  if (v59)
  {
    v60 = [v59 v13[2]];
    v61 = [v60 playingItem];

    if (v61)
    {
      [v61 duration];
      v51 = v98;
      v96 = v100;
      v97 = v99;
      v49 = v101;
      v62 = v102;

      v63 = v96;
      v50 = v97;
    }

    else
    {
      v49 = 0;
      v62 = 2;
      v63 = 0uLL;
      v50 = 0uLL;
    }

    goto LABEL_69;
  }

  v49 = 0;
LABEL_67:
  v62 = 2;
  v63 = 0uLL;
LABEL_69:
  *(v0 + 233) = v33;
  *(v0 + 184) = v32;
  *(v0 + 192) = v31;
  *(v0 + 16) = v51;
  *(v0 + 24) = v50;
  *(v0 + 40) = v63;
  *(v0 + 56) = v49;
  *(v0 + 64) = v62;
  if ((v33 & 1) != 0 || (v64 = [*(v0 + 96) v13[2]], v65 = objc_msgSend(v64, "playingItem"), v64, !v65))
  {
    if (v62 == 2)
    {
      v67 = *(*(v0 + 88) + 40);
      v68 = *(v0 + 233);
      if (v67)
      {
        goto LABEL_77;
      }

      if (*(v0 + 233))
      {
        v72 = 0;
        v73 = 0;
        goto LABEL_103;
      }

      goto LABEL_95;
    }
  }

  else
  {
    [v65 duration];
    v66 = v98;

    if (v62 != 2 && v51 == v66)
    {
      v67 = *(*(v0 + 88) + 40);
      if (v67)
      {
        v68 = *(v0 + 233);
LABEL_77:
        v69 = v67;
        v70 = sub_1003C8608();

        if (v68)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          if (!v70)
          {
            goto LABEL_103;
          }

          goto LABEL_86;
        }

        v71 = sub_1003C8608();
        if (v70)
        {
LABEL_86:
          v75 = v70;
          v76 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v77 = MPModelObject.bestIdentifier(for:)(*v76, 1u);
          v79 = v78;

          if (!v71)
          {
            v73 = 0;
            v72 = v70;
            if (!v79)
            {
              goto LABEL_103;
            }

            goto LABEL_110;
          }

          v72 = v70;
          v80 = v79;
LABEL_97:
          v81 = v71;
          v82 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v83 = MPModelObject.bestIdentifier(for:)(*v82, 1u);
          v85 = v84;

          if (v80)
          {
            if (v85)
            {
              if (v77 == v83 && v80 == v85)
              {

                goto LABEL_104;
              }

              v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v95)
              {
LABEL_104:

                v86 = *(v0 + 72);
                if (*(v86 + 16))
                {
                  v88 = *(v0 + 184);
                  v87 = *(v0 + 192);
                  sub_1003C6340(v86);
                }

                else
                {

                  v89 = Logger.logObject.getter();
                  v90 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v89, v90))
                  {
                    v91 = swift_slowAlloc();
                    *v91 = 0;
                    _os_log_impl(&_mh_execute_header, v89, v90, "Skipping timeline update: nothing important changed", v91, 2u);
                  }

                  v93 = *(v0 + 184);
                  v92 = *(v0 + 192);
                }

                goto LABEL_11;
              }

              goto LABEL_111;
            }

            v70 = v72;
LABEL_110:

            v72 = v70;
LABEL_111:
            *(v0 + 208) = v72;
            *(v0 + 216) = v71;
            sub_1003B42E4(&v98, 0);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v94 = swift_task_alloc();
            *(v0 + 224) = v94;
            *v94 = v0;
            v94[1] = sub_1003C82FC;

            return sub_10041C458(v72);
          }

          v73 = v71;
          v70 = v72;
          if (v85)
          {
            goto LABEL_110;
          }

LABEL_103:
          v71 = v73;
          goto LABEL_104;
        }

LABEL_96:
        v72 = 0;
        v80 = 0;
        v77 = 0;
        v73 = 0;
        if (!v71)
        {
          goto LABEL_103;
        }

        goto LABEL_97;
      }

LABEL_95:
      v71 = sub_1003C8608();
      goto LABEL_96;
    }
  }

  sub_1003B42E4(&v98, 2);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v74 = swift_task_alloc();
  *(v0 + 200) = v74;
  *v74 = v0;
  v74[1] = sub_1003C7E5C;

  return sub_10041AB9C(v0 + 16);
}

uint64_t sub_1003C7778()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_1003C78B8, v4, v3);
}

uint64_t sub_1003C78B8()
{
  v49 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 232);
  v4 = *(*(v0 + 88) + 40);
  v5 = 0uLL;
  v6 = 0.0;
  if (v4)
  {
    v7 = [v4 tracklist];
    v8 = [v7 playingItem];

    if (v8)
    {
      [v8 duration];
      v6 = v44;
      v9 = v47;
      v10 = v48;

      v11 = v46;
      v5 = v45;
    }

    else
    {
      v9 = 0;
      v10 = 2;
      v11 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v9 = 0;
    v10 = 2;
    v11 = 0uLL;
  }

  *(v0 + 233) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v1;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 40) = v11;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  if ((v3 & 1) != 0 || (v12 = [*(v0 + 96) tracklist], v13 = objc_msgSend(v12, "playingItem"), v12, !v13))
  {
    if (v10 == 2)
    {
      v14 = *(*(v0 + 88) + 40);
      v15 = *(v0 + 233);
      if (v14)
      {
        goto LABEL_14;
      }

      if (*(v0 + 233))
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_37;
      }

      goto LABEL_29;
    }
  }

  else
  {
    [v13 duration];

    if (v10 != 2 && v6 == v44)
    {
      v14 = *(*(v0 + 88) + 40);
      if (v14)
      {
        v15 = *(v0 + 233);
LABEL_14:
        v16 = v14;
        v17 = sub_1003C8608();

        if (v15)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          if (!v17)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v18 = sub_1003C8608();
        if (v17)
        {
LABEL_23:
          v23 = v17;
          v24 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v25 = MPModelObject.bestIdentifier(for:)(*v24, 1u);
          v27 = v26;

          if (!v18)
          {
            v20 = 0;
            v19 = v17;
            if (!v27)
            {
              goto LABEL_37;
            }

            goto LABEL_47;
          }

          v19 = v17;
          v28 = v27;
LABEL_31:
          v29 = v18;
          v30 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
          v31 = MPModelObject.bestIdentifier(for:)(*v30, 1u);
          v33 = v32;

          if (v28)
          {
            if (v33)
            {
              if (v25 == v31 && v28 == v33)
              {

LABEL_38:

                v34 = *(v0 + 72);
                if (*(v34 + 16))
                {
                  v36 = *(v0 + 184);
                  v35 = *(v0 + 192);
                  sub_1003C6340(v34);

                  v37 = v18;
                  v18 = v19;
                  v19 = v36;
                }

                else
                {

                  v38 = Logger.logObject.getter();
                  v39 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v38, v39))
                  {
                    v40 = swift_slowAlloc();
                    *v40 = 0;
                    _os_log_impl(&_mh_execute_header, v38, v39, "Skipping timeline update: nothing important changed", v40, 2u);
                  }

                  v37 = *(v0 + 184);
                  v35 = *(v0 + 192);
                }

                v41 = *(v0 + 8);

                return v41();
              }

              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v43)
              {
                goto LABEL_38;
              }

              goto LABEL_48;
            }

            v17 = v19;
LABEL_47:

            v19 = v17;
LABEL_48:
            *(v0 + 208) = v19;
            *(v0 + 216) = v18;
            sub_1003B42E4(&v44, 0);
            if (qword_10117F6C0 != -1)
            {
              swift_once();
            }

            v42 = swift_task_alloc();
            *(v0 + 224) = v42;
            *v42 = v0;
            v42[1] = sub_1003C82FC;

            return sub_10041C458(v19);
          }

          v20 = v18;
          v17 = v19;
          if (v33)
          {
            goto LABEL_47;
          }

LABEL_37:
          v18 = v20;
          goto LABEL_38;
        }

LABEL_30:
        v19 = 0;
        v28 = 0;
        v25 = 0;
        v20 = 0;
        if (!v18)
        {
          goto LABEL_37;
        }

        goto LABEL_31;
      }

LABEL_29:
      v18 = sub_1003C8608();
      goto LABEL_30;
    }
  }

  sub_1003B42E4(&v44, 2);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1003C7E5C;

  return sub_10041AB9C(v0 + 16);
}

uint64_t sub_1003C7E5C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1003C7F7C, v3, v2);
}

uint64_t sub_1003C7F7C()
{
  v31 = v0;
  v1 = *(*(v0 + 88) + 40);
  v2 = *(v0 + 233);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1003C8608();

    if (v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    v5 = sub_1003C8608();
    if (v4)
    {
LABEL_8:
      v8 = v4;
      v9 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      v10 = MPModelObject.bestIdentifier(for:)(*v9, 1u);
      v12 = v11;

      if (v5)
      {
        v6 = v4;
        v13 = v12;
        goto LABEL_12;
      }

      v7 = 0;
      v6 = v4;
      if (v12)
      {
LABEL_30:

        v6 = v4;
        goto LABEL_31;
      }

LABEL_20:
      v5 = v7;
      goto LABEL_21;
    }
  }

  else
  {
    if (*(v0 + 233))
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_20;
    }

    v5 = sub_1003C8608();
  }

  v6 = 0;
  v13 = 0;
  v10 = 0;
  v7 = 0;
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = v5;
  v15 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
  v16 = MPModelObject.bestIdentifier(for:)(*v15, 1u);
  v18 = v17;

  if (!v13)
  {
    v7 = v5;
    v4 = v6;
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  if (!v18)
  {
    v4 = v6;
    goto LABEL_30;
  }

  if (v10 == v16 && v13 == v18)
  {

LABEL_21:

    v19 = *(v0 + 72);
    if (*(v19 + 16))
    {
      v21 = *(v0 + 184);
      v20 = *(v0 + 192);
      sub_1003C6340(v19);

      v22 = v5;
      v5 = v6;
      v6 = v21;
    }

    else
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Skipping timeline update: nothing important changed", v25, 2u);
      }

      v22 = *(v0 + 184);
      v20 = *(v0 + 192);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_21;
  }

LABEL_31:
  *(v0 + 208) = v6;
  *(v0 + 216) = v5;
  sub_1003B42E4(&v30, 0);
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  *v28 = v0;
  v28[1] = sub_1003C82FC;

  return sub_10041C458(v6);
}

uint64_t sub_1003C82FC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1003C841C, v3, v2);
}

uint64_t sub_1003C841C()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v2;
  sub_1001F4CB8(0, 0, v1, &unk_100EC9730, v5);

  v6 = v0[9];
  v7 = v0[26];
  v8 = v0[27];
  if (*(v6 + 16))
  {
    v10 = v0[23];
    v9 = v0[24];
    sub_1003C6340(v6);

    v11 = v8;
    v8 = v7;
    v7 = v10;
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping timeline update: nothing important changed", v14, 2u);
    }

    v11 = v0[23];
    v9 = v0[24];
  }

  v15 = v0[1];

  return v15();
}

id sub_1003C8608()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v1 tracklist];
  v11 = [v10 playingItemIndexPath];

  if (v11)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v5, v2);
    v12 = [v1 tracklist];
    v13 = [v12 items];

    v14 = [v13 sectionAtIndex:IndexPath.section.getter()];
    v15 = [v14 metadataObject];

    if (v15)
    {
      v16 = [v15 flattenedGenericObject];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 anyObject];

        (*(v3 + 8))(v9, v2);
        result = v18;
        if (v18)
        {
          return result;
        }
      }

      else
      {
        (*(v3 + 8))(v9, v2);
      }
    }

    else
    {
      (*(v3 + 8))(v9, v2);
    }
  }

  return 0;
}

uint64_t sub_1003C8868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1003C895C, v7, v6);
}

uint64_t sub_1003C895C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1003C8A28;

  return sub_10062A46C(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1003C8A28()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1003CA1FC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1003C8BBC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003C8BBC()
{
  if (qword_10117FC70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003C8C80;

  return sub_100719F38();
}

uint64_t sub_1003C8C80()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1003C8DA0, v3, v2);
}

uint64_t sub_1003C8DA0()
{

  v1 = sub_10010BA00(&off_10109AAB8);
  sub_1003C6340(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003C8E30(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v2 + 40);
  *(v2 + 40) = a1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v7;
  v10 = a1;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v2;
  v12[5] = v7;
  sub_1001F4CB8(0, 0, v6, &unk_100EC9720, v12);
}

uint64_t sub_1003C8F8C()
{
  if (qword_10117F6C0 != -1)
  {
    swift_once();
  }

  sub_1004115BC();
  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Application termination: requesting widget timeline reloads", v2, 2u);
  }

  v3 = sub_10010BA00(&off_10109AAE0);
  sub_1003C90C8(v3);
}

void sub_1003C90C8(Swift::Int a1)
{

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v15 = v5;
    *v4 = 136446210;
    sub_1003C9C94();
    v6 = Set.description.getter();
    v8 = sub_1000105AC(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting timeline update for reasons: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  sub_1003C9BF0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      v14 = v12 + 1;
      v15 = *(v13 + 16 * v12);
      sub_1003C9260(&v15, a1);
      v12 = v14;
      if (v11 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1003C9260(void *a1, Swift::Int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*(v4 + 8))(*a1, v4);
  v7 = v6;
  v8 = (*(v4 + 16))(v3, v4);
  LOBYTE(v4) = sub_1003C9568(v8, a2);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  if (v4)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136446466;
      v13 = sub_1000105AC(v5, v7, &v21);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2082;
      sub_1003C9C94();
      v14 = Set.description.getter();
      v16 = sub_1000105AC(v14, v15, &v21);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping reload %{public}s with non-observed reasons %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (v11)
    {
      v17 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_1000105AC(v5, v7, &v21);
      *(v17 + 12) = 2082;
      sub_1003C9C94();
      v18 = Set.description.getter();
      v20 = sub_1000105AC(v18, v19, &v21);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requesting reload %{public}s with reasons %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for WidgetCenter();
    static WidgetCenter.shared.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();
  }
}

Swift::Int sub_1003C9568(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003C96E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C9798()
{
  String.hash(into:)();
}

Swift::Int sub_1003C983C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003C98F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003CA19C(*a1);
  *a2 = result;
  return result;
}

void sub_1003C9920(unint64_t *a1@<X8>)
{
  v2 = "chartsWidgetRefreshTTLSeconds";
  v3 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001BLL;
    v2 = "istRefreshTTLSeconds";
  }

  v4 = 0xD00000000000001DLL;
  if (*v1)
  {
    v5 = "dgetsRefreshTTLSeconds";
  }

  else
  {
    v4 = 0xD000000000000026;
    v5 = "eviewed";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1003C99A8()
{

  v1 = OBJC_IVAR____TtC5Music19WidgetUpdateManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003C9A40()
{
  sub_1003C99A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1003C9AA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646574;
  v3 = 0x726F707075736E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  if (a2 == 2)
  {
    v3 = 0x64656B696C736964;
    v2 = 0xE800000000000000;
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000064;
  if (a2)
  {
    v7 = 0x6C61727475656ELL;
    v8 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

double sub_1003C9BF0()
{
  sub_10010FC20(&qword_10118D9F8);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_100EC6C60;
  *(v0 + 32) = &type metadata for RecentlyPlayedWidgetConfiguration;
  *(v0 + 40) = &off_1010AFC88;
  *(v0 + 48) = &type metadata for RecommendationsWidgetConfiguration;
  *(v0 + 56) = &off_1010B9C60;
  *(v0 + 64) = &type metadata for TopChartsWidgetConfiguration;
  *(v0 + 72) = &off_1010A79F0;
  *(v0 + 80) = &type metadata for PinsWidgetConfiguration;
  *(v0 + 88) = &off_1010B3EB0;
  *(v0 + 96) = &type metadata for RadioWidgetConfiguration;
  *(v0 + 104) = &off_1010AC2C0;
  return result;
}

unint64_t sub_1003C9C94()
{
  result = qword_10118D9F0;
  if (!qword_10118D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118D9F0);
  }

  return result;
}

uint64_t sub_1003C9CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1003C6A80(a1, v4, v5, v7, v6);
}

uint64_t sub_1003C9DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1003C8868(a1, v4, v5, v6);
}

uint64_t sub_1003C9E5C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003C66B0(v6, a1, v4, v5, v7);
}

unint64_t sub_1003C9F28()
{
  result = qword_10118DA10;
  if (!qword_10118DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA10);
  }

  return result;
}

uint64_t sub_1003C9F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetRecommendationDiskCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C9FE8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetRecommendationDiskCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003CA044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1003C6260();
}

unint64_t sub_1003CA148()
{
  result = qword_10118DA38;
  if (!qword_10118DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA38);
  }

  return result;
}

unint64_t sub_1003CA19C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AB08, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003CA20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1003CA254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003CA2B4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = a2;
    goto LABEL_9;
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v8);
  v10 = v9;

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_1007E90D4(0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v5 = v12;

    a2 = 0;
LABEL_9:
    v13 = a2;
    v14 = [v3 items];
    v15 = [v14 sectionAtIndex:IndexPath.section.getter()];

    v16 = [v15 metadataObject];
    if (v16)
    {
      v17 = [v16 innermostModelObject];

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        if ([v18 type] == 4 && objc_msgSend(v19, "subtype") == 2)
        {
          v20 = sub_1003CC784(v19);

          return v20;
        }
      }
    }

    v21 = sub_1003CA548(a1, v5);
    v20 = sub_1003CCB3C(v21);

    return v20;
  }

  __break(1u);
  return result;
}

char *sub_1003CA548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = _swiftEmptyArrayStorage;
  v6 = [v2 items];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 itemAtIndexPath:isa];

  v9 = [v8 metadataObject];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  v11 = [v9 innermostModelObject];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_5:
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v28._countAndFlagsBits = 0xD000000000000028;
    v28._object = 0x8000000100E48B00;
    String.append(_:)(v28);
    v29 = v8;
    v30 = [v29 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 544497952;
    v35._object = 0xE400000000000000;
    String.append(_:)(v35);
    type metadata accessor for IndexPath();
    sub_1003CCFE4(&unk_101197050, &type metadata accessor for IndexPath);
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0x206120746F4E203ALL;
    v37._object = 0xEC000000676E6F73;
    String.append(_:)(v37);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 120, 0xE100000000000000);

    sub_1003CABE0();

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v13 = v12;
  _StringGuts.grow(_:)(31);

  v40 = 0xD000000000000018;
  v41 = 0x8000000100E48B30;
  v14 = [v13 humanDescription];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 10272;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20 = [v8 contentItemIdentifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD000000000000018, 0x8000000100E48B30, 80, 0, 0xE000000000000000);

  __chkstk_darwin(v26);
  v39[2] = v13;
  v39[3] = v3;
  v39[4] = a1;
  v39[5] = a2;
  v39[6] = &v42;
  v27 = sub_100123994(sub_1003CD088, v39, &off_1010991C0);

  sub_1003CABE0();
LABEL_6:

  return v27;
}

uint64_t sub_1003CA91C@<X0>(id a1@<X2>, unsigned __int8 *a2@<X0>, void *a3@<X1>, void *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 items];
  v11 = [v10 sectionAtIndex:IndexPath.section.getter()];

  v12 = [v11 metadataObject];
  sub_1003CD0AC(v9, a3, v12, a4, v32);
  if (v5)
  {

    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x7473696C79616C50;
    if (v9 != 2)
    {
      v15 = 0x7265646C6F46;
      v14 = 0xE600000000000000;
    }

    v16 = 0x6D75626C41;
    if (v9)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v16 = 0x747369747241;
    }

    if (v9 <= 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v9 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v33 = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v21._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v21);

    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 120, 0xE100000000000000);

    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {

    v23 = 0xE600000000000000;
    v24 = 0xE800000000000000;
    v25 = 0x7473696C79616C50;
    if (v9 != 2)
    {
      v25 = 0x7265646C6F46;
      v24 = 0xE600000000000000;
    }

    v26 = 0x6D75626C41;
    if (v9)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v26 = 0x747369747241;
    }

    if (v9 <= 1)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    if (v9 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v24;
    }

    v29 = v28;
    String.append(_:)(*&v27);

    Array<A>.appendStringComponents(_:lineLength:bullet:)(0, 0xE000000000000000, 80, 9673954, 0xA300000000000000);

    v30 = v32[1];
    *a5 = v32[0];
    a5[1] = v30;
    v31 = v32[3];
    a5[2] = v32[2];
    a5[3] = v31;
  }

  return result;
}

void sub_1003CABE0()
{

  v1 = Array<A>.asciiBoxed()(v0);

  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = &unk_10117F000;
    v17 = v1;
    while (v3 < *(v1 + 2))
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = v5[243];

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_101218DE8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v7;
        v13 = swift_slowAlloc();
        v14 = v2;
        v15 = v5;
        v16 = swift_slowAlloc();
        v18 = v16;
        *v13 = 136446210;
        *(v13 + 4) = sub_1000105AC(v12, v6, &v18);
        _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s", v13, 0xCu);
        sub_10000959C(v16);
        v5 = v15;
        v2 = v14;
        v1 = v17;
      }

      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

void sub_1003CADDC(void *a1, uint64_t a2, void *a3)
{
  v81 = a3;
  v5 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v5 - 8);
  v7 = &v78 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v78 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v79 = &v78 - v13;
  __chkstk_darwin(v12);
  *&v80 = &v78 - v14;
  v15 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  type metadata accessor for MainActor();
  v19 = a1;
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;
  sub_1001F4CB8(0, 0, v17, &unk_100EC9918, v21);

  v84 = 0;
  v85 = 0xE000000000000000;
  v86 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(37);

  v84 = 0xD000000000000023;
  v85 = 0x8000000100E48990;
  v82 = [v19 providerID];
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v84, v85, 80, 0, 0xE000000000000000);

  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v84 = 0xD000000000000014;
  v85 = 0x8000000100E48930;
  v23 = [v19 providerBundleIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = v8;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v25 = v8;
    v26 = 0;
    v28 = 0;
  }

  v29 = v9;
  v82 = v26;
  v83 = v28;
  sub_10010FC20(&qword_1011815E0);
  v30._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v30);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v84, v85, 80, 0, 0xE000000000000000);

  v31 = objc_opt_self();
  v32 = [v31 defaultWorkspace];
  if (v32)
  {
    v33 = v32;
    v34 = a2;
    v35 = v81;
    v36 = String._bridgeToObjectiveC()();
    v37 = [v33 applicationIsInstalled:v36];

    if (v37)
    {
      v38 = [v19 providerUniversalLink];
      if (v38)
      {
        v39 = v79;
        v40 = v38;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v80;
        (*(v29 + 32))(v80, v39, v25);
        v84 = 0;
        v85 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v84 = 0xD000000000000019;
        v85 = 0x8000000100E48A60;
        sub_1003CCFE4(&qword_1011A4850, &type metadata accessor for URL);
        v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v42);

        Array<A>.appendStringComponents(_:lineLength:bullet:)(v84, v85, 80, 9673954, 0xA300000000000000);

        v43 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v44);
        v46 = v45;
        [v43 openURL:v45 withCompletionHandler:0];

        (*(v29 + 8))(v41, v25);
      }

      else
      {
        v84 = 0;
        v85 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v84 = 0xD000000000000013;
        v85 = 0x8000000100E48A40;
        v57._countAndFlagsBits = v34;
        v57._object = v81;
        String.append(_:)(v57);
        Array<A>.appendStringComponents(_:lineLength:bullet:)(v84, v85, 80, 9673954, 0xA300000000000000);

        v58 = [v31 defaultWorkspace];
        if (v58)
        {
          v59 = v58;
          v60 = String._bridgeToObjectiveC()();
          [v59 openApplicationWithBundleID:v60];
        }
      }
    }

    else
    {
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v84 = 0xD00000000000001FLL;
      v85 = 0x8000000100E489C0;
      v47._countAndFlagsBits = v34;
      v47._object = v35;
      String.append(_:)(v47);
      URL.init(string:)();

      v48 = v29;
      v49 = *(v29 + 48);
      v50 = v25;
      if (v49(v7, 1, v25) == 1)
      {
        sub_100028A38(v7);
        Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD00000000000003FLL, 0x8000000100E489E0, 80, 120, 0xE100000000000000);
      }

      else
      {
        v51 = v78;
        (*(v48 + 32))(v78, v7, v50);
        v84 = 0;
        v85 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v84 = 0xD000000000000012;
        v85 = 0x8000000100E48A20;
        sub_1003CCFE4(&qword_1011A4850, &type metadata accessor for URL);
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        Array<A>.appendStringComponents(_:lineLength:bullet:)(v84, v85, 80, 9673954, 0xA300000000000000);

        v53 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v54);
        v56 = v55;
        [v53 openURL:v55 withCompletionHandler:0];

        (*(v48 + 8))(v51, v50);
      }
    }

    v79 = v86;
    v61 = Array<A>.asciiBoxed()(v86);
    v63 = v61;
    v64 = *(v61 + 2);
    if (!v64)
    {
LABEL_21:

      return;
    }

    v65 = 0;
    v66 = (v61 + 40);
    v67 = &unk_10117F000;
    *&v62 = 136446210;
    v80 = v62;
    while (v65 < *(v63 + 2))
    {
      v68 = *v66;
      v81 = *(v66 - 1);
      v69 = v67[243];

      if (v69 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_1000060E4(v70, qword_101218DE8);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v63;
        v74 = v64;
        v75 = v67;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v84 = v77;
        *v76 = v80;
        *(v76 + 4) = sub_1000105AC(v81, v68, &v84);
        _os_log_impl(&_mh_execute_header, v71, v72, "%{public}s", v76, 0xCu);
        sub_10000959C(v77);

        v67 = v75;
        v64 = v74;
        v63 = v73;
      }

      ++v65;
      v66 += 2;
      if (v64 == v65)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003CB80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10010FC20(&qword_101183A20);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003CB914, v6, v5);
}

uint64_t sub_1003CB914()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v0[5] = [v4 providerID];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(v2, 1, 1, v8);
  v9(v3, 1, 1, v8);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v5, v7, 5, 28, v2, 0, 0, 12, v1, 0, 0, 65280, 0, 0xE000000000000000, 0, 0xE000000000000000, v3, 0, 1, 2, 0, 0, 0);
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = sub_10053771C();
  v13 = v12;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v14 = v0[9];
  v15 = qword_101218AD0;
  v16 = GroupActivitiesManager.hasJoined.getter();
  v17 = GroupActivitiesManager.participantsCount.getter();
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v10) + 0xB8))(v14, v11, v13, v16 & 1, v17, *(v15 + v18));

  sub_1003CD02C(v14);

  v19 = v0[1];

  return v19();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

uint64_t sub_1003CBC90()
{
  v1 = 0x747369747241;
  v2 = 0x7473696C79616C50;
  if (*v0 != 2)
  {
    v2 = 0x7265646C6F46;
  }

  if (*v0)
  {
    v1 = 0x6D75626C41;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1003CBD00(_OWORD *a1, _OWORD *a2)
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
  return sub_1003CC660(v7, v8) & 1;
}

Swift::Int sub_1003CBD4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F044(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 64;
          if (*v12 >= *(v12 - 64))
          {
            break;
          }

          v14 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          v26 = *(v12 + 2);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 3);
          *v12 = *v13;
          *(v12 + 1) = v17;
          v18 = *(v12 - 1);
          *(v12 + 2) = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v12 - 2) = v26;
          *(v12 - 1) = v19;
          *v13 = v20;
          *(v12 - 3) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_1003CBEB4(&v24, v23, v28, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1003CBEB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v102 = *v102;
    if (!v102)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10059F01C(v9);
      v9 = result;
    }

    v94 = v9 + 16;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v9[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1003CC444((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), v102);
        if (v4)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_112;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_113;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_114;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + (v8 << 6));
      v12 = v10 << 6;
      v13 = (*a3 + (v10 << 6));
      v16 = *v13;
      v15 = v13 + 128;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 64;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = (v8 << 6) - 64;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v33 + v12);
            v25 = (v33 + v21);
            v27 = v24[2];
            v26 = v24[3];
            v29 = *v24;
            v28 = v24[1];
            v30 = v25[3];
            v32 = *v25;
            v31 = v25[1];
            v24[2] = v25[2];
            v24[3] = v30;
            *v24 = v32;
            v24[1] = v31;
            *v25 = v29;
            v25[1] = v28;
            v25[2] = v27;
            v25[3] = v26;
          }

          ++v23;
          v21 -= 64;
          v12 += 64;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100498FCC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100498FCC((v47 > 1), v48 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v10;
    *(v50 + 5) = v8;
    v51 = *v102;
    if (!*v102)
    {
      goto LABEL_125;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_57:
          if (v56)
          {
            goto LABEL_103;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_106;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_110;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_71:
        if (v74)
        {
          goto LABEL_105;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_108;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_78:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v91 = *&v9[16 * v90 + 32];
        v92 = *&v9[16 * v52 + 40];
        sub_1003CC444((*a3 + (v91 << 6)), (*a3 + (*&v9[16 * v52 + 32] << 6)), (*a3 + (v92 << 6)), v51);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10059F01C(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v93 = &v9[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_10059EF90(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_101;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_102;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_104;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_107;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_111;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v34 = *a3;
  v35 = (*a3 + (v8 << 6));
  v36 = v10 - v8;
LABEL_30:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = v38 - 4;
    if (*v38 >= *(v38 - 64))
    {
LABEL_29:
      ++v8;
      v35 += 4;
      --v36;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v41 = v38[2];
    v40 = v38[3];
    v43 = *v38;
    v42 = v38[1];
    v44 = *(v38 - 3);
    *v38 = *v39;
    v38[1] = v44;
    v45 = *(v38 - 1);
    v38[2] = *(v38 - 2);
    v38[3] = v45;
    *v39 = v43;
    *(v38 - 3) = v42;
    v38 -= 4;
    v39[2] = v41;
    v39[3] = v40;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1003CC444(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = v5 + 64;
      v23 = *(v21 - 64);
      v21 -= 64;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v27 = *v20;
          v28 = *(v6 - 3);
          v29 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v29;
          *v5 = v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v14)
      {
        v24 = *v21;
        v25 = *(v21 + 1);
        v26 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v26;
        *v5 = v24;
        *(v5 + 1) = v25;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v30 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v30 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v30 >> 6 << 6);
  }

  return 1;
}

id sub_1003CC660(void *a1, void *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)))
  {
    v7 = a1[4];
    v8 = a2[4];
    v9 = (v7 | v8) == 0;
    if (v7 && v8)
    {
      if (a1[3] == a2[3] && v7 == v8)
      {
        v10 = a1[5];
        if (v10)
        {
          if (!a2[5])
          {
            return 0;
          }

          return [v10 isArtworkVisuallyIdenticalToCatalog:?];
        }

        return (a2[5] == 0);
      }

      v12 = a1;
      v13 = a2;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v13;
      v9 = v14;
      v10 = v12[5];
      if (!v10)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (a2[5] != 0 && v9)
      {
        return [v10 isArtworkVisuallyIdenticalToCatalog:?];
      }

      return 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v9)
  {
    return (a2[5] == 0);
  }

  return 0;
}

void (*sub_1003CC784(void *a1))()
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(37);

  v29 = 0xD000000000000023;
  v30 = 0x8000000100E48900;
  v27 = [a1 providerID];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v29, v30, 80, 0, 0xE000000000000000);

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v29 = 0xD000000000000014;
  v30 = 0x8000000100E48930;
  v6 = [a1 providerBundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v27 = v8;
  v28 = v10;
  sub_10010FC20(&qword_1011815E0);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v29, v30, 80, 0, 0xE000000000000000);

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v29 = 0xD00000000000001ALL;
  v30 = 0x8000000100E48950;
  v12 = [a1 providerUniversalLink];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v4, v14, 1, v15);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  Array<A>.appendStringComponents(_:lineLength:bullet:)(v29, v30, 80, 0, 0xE000000000000000);

  v17 = [a1 providerBundleIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v19;
    v22[4] = v21;
    v23 = a1;
    v24 = sub_1003CCF24;
  }

  else
  {
    Array<A>.appendStringComponents(_:lineLength:bullet:)(0xD000000000000011, 0x8000000100E48970, 80, 120, 0xE100000000000000);
    v24 = 0;
  }

  sub_1003CABE0();

  return v24;
}

Class sub_1003CCB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    if (v1)
    {
      v16 = *(a1 + 80);
      v17 = *(a1 + 72);

      return v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v26 = a1;

    sub_1003CBD4C(&v26);

    v2 = v26;
    v3 = *(v26 + 2);
    if (v3)
    {
      v26 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      sub_100009F78(0, &qword_1011839A0);
      v22 = objc_opt_self();
      v23 = v2;
      v4 = 0;
      while (1)
      {
        v25 = v3;
        v9 = v2[v4 + 32];
        v10 = *&v2[v4 + 72];
        v11 = *&v2[v4 + 80];
        v12 = *&v2[v4 + 88];
        Library.Menu.Identifier.symbolName(for:)(2, 0x1010302u >> (8 * v9));
        v24 = v10;

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v13 = String._bridgeToObjectiveC()();

        v14 = [v22 systemImageNamed:v13];

        v15 = swift_allocObject();
        *(v15 + 16) = v11;
        *(v15 + 24) = v12;

        v21._rawValue = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v5 = 0xD000000000000014;
            v6 = "Actions.goToPlaylistFolder";
          }

          else
          {
            v5 = 0xD00000000000001ALL;
            v6 = "Opening Universal Link = ";
          }
        }

        else
        {
          if (v9)
          {
            v7 = 0x8000000100E48AC0;
            v5 = 0xD000000000000011;
            goto LABEL_6;
          }

          v5 = 0xD000000000000012;
          v6 = "Actions.goToAlbum";
        }

        v7 = v6 | 0x8000000000000000;
LABEL_6:
        v8 = AccessibilityIdentifier.init(name:)(*&v5);
        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v8, *(&v8 + 1));

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 += 64;
        --v3;
        v2 = v23;
        if (v25 == 1)
        {

          preferredElementSize = v26;
          goto LABEL_18;
        }
      }
    }

    preferredElementSize = _swiftEmptyArrayStorage;
LABEL_18:
    sub_100009F78(0, &unk_1011845F0);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v27.value.super.isa = 0;
    v27.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v21).super.super.isa;
  }
}

uint64_t sub_1003CCF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003CB80C(a1, v4, v5, v6);
}

uint64_t sub_1003CCFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003CD02C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003CD0AC(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v21 = [a2 album];
      if (v21)
      {
        v12 = v21;
        v61 = sub_100483660(v21, a2, a3, a4);
        if (v61)
        {
          v19 = v22;
          if ([v12 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
          {
            v20 = [v12 artworkCatalog];
          }

          else
          {
            v20 = 0;
          }

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v31 = String.init(localized:table:bundle:locale:comment:)();
          v60 = v42;
          v43 = [v12 title];
          if (v43)
          {
            v44 = v31;
            v45 = v19;
            v46 = v20;
            v47 = v43;
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v48;

            v12 = v47;
            v20 = v46;
            v19 = v45;
            v31 = v44;
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v38 = String.init(localized:table:bundle:locale:comment:)();
            v59 = v50;
          }

          v41 = 1;
          v40 = v59;
          v33 = v60;
          goto LABEL_41;
        }

LABEL_17:
        sub_1003CD7C8();
        swift_allocError();
        v25 = 4;
        goto LABEL_18;
      }

      sub_1003CD7C8();
      swift_allocError();
      v30 = 2;
    }

    else
    {
      v17 = [a2 artist];
      if (v17)
      {
        v12 = v17;
        v61 = sub_100483050(v17, a2, a4);
        if (v61)
        {
          v19 = v18;
          if ([v12 hasLoadedValueForKey:MPModelPropertyArtistArtwork])
          {
            v20 = [v12 artworkCatalog];
          }

          else
          {
            v20 = 0;
          }

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v31 = String.init(localized:table:bundle:locale:comment:)();
          v33 = v32;
          v34 = [v12 name];
          if (v34)
          {
            v58 = v31;
            v35 = v19;
            v36 = v20;
            v37 = v34;
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            v20 = v36;
            v19 = v35;
            v31 = v58;

            v41 = 0;
          }

          else
          {

            v41 = 0;
            v38 = 0;
            v40 = 0;
          }

          goto LABEL_41;
        }

        goto LABEL_17;
      }

      sub_1003CD7C8();
      swift_allocError();
      v30 = 1;
    }

    *v29 = v30;
    goto LABEL_25;
  }

  if (!a3)
  {
    sub_1003CD7C8();
    swift_allocError();
    *v23 = 0;
LABEL_25:
    swift_willThrow();
    return;
  }

  v12 = a3;
  v13 = [v12 innermostModelObject];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    sub_1003CD7C8();
    swift_allocError();
    v25 = 3;
LABEL_18:
    *v24 = v25;
    swift_willThrow();

    return;
  }

  v15 = v14;
  if ((a1 == 3) != ([v14 type] == 3))
  {
    sub_1003CD7C8();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();

    return;
  }

  v26 = sub_1004840C8(v15, a2, a4);
  v57 = v27;
  v61 = v26;
  if (!v26)
  {
    sub_1003CD7C8();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();

    return;
  }

  v28 = v12;
  if ([v15 hasLoadedValueForKey:MPModelPropertyPlaylistArtwork])
  {
    v20 = [v15 artworkCatalog];
  }

  else
  {
    v20 = 0;
  }

  [v15 type];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v52;
  v53 = [v15 name];
  if (v53)
  {
    v54 = v20;
    v55 = v53;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v56;

    v20 = v54;
  }

  else
  {

    v38 = 0;
    v40 = 0;
  }

  v41 = 2;
  v19 = v57;
  v31 = v51;
LABEL_41:
  *a5 = v41;
  *(a5 + 8) = v31;
  *(a5 + 16) = v33;
  *(a5 + 24) = v38;
  *(a5 + 32) = v40;
  *(a5 + 40) = v20;
  *(a5 + 48) = v61;
  *(a5 + 56) = v19;
}

unint64_t sub_1003CD7C8()
{
  result = qword_10118DA40;
  if (!qword_10118DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA40);
  }

  return result;
}

uint64_t sub_1003CD82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003CD874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003CD8D8()
{
  result = qword_10118DA48;
  if (!qword_10118DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA48);
  }

  return result;
}

unint64_t sub_1003CD930()
{
  result = qword_10118DA50;
  if (!qword_10118DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA50);
  }

  return result;
}

unint64_t sub_1003CD994()
{
  result = qword_10118DA58;
  if (!qword_10118DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DA58);
  }

  return result;
}

void *sub_1003CDBA8(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result tabs];

    sub_100009F78(0, &qword_101181F70);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007E914C(j, v6);
        }

        else
        {
          if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v9 = *(v6 + 8 * j + 32);
        }

        v10 = v9;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v12 = swift_dynamicCastObjCProtocolConditional();
        if (v12)
        {
          v13 = v12;
          if ([v12 respondsToSelector:*a2])
          {
            [v13 *a2];
          }
        }

        if (v11 == i)
        {
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return result;
}

void sub_1003CDE78(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a2 managingTabGroup];
  if (v6)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = v5;
    if (!*(v4 + 16))
    {
      goto LABEL_7;
    }
  }

  v7 = sub_1006BEAC4(v6);
  if (v8)
  {
    v11 = *(*(v4 + 56) + 8 * v7);

    goto LABEL_8;
  }

LABEL_7:
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *a3 = v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6334(v11, v6, isUniquelyReferenced_nonNull_native);

  *a3 = v4;
}

id sub_1003CE190(uint64_t a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = [a2 managingTabGroup];
  if (!v8)
  {
    v8 = a2;
  }

  v9 = swift_dynamicCastObjCProtocolConditional();

  if (v9 && ([v9 respondsToSelector:"tabBarController:tab:operationForAcceptingItemsFromDropSession:"] & 1) != 0)
  {
    v10 = [v9 tabBarController:a1 tab:a2 operationForAcceptingItemsFromDropSession:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1003CE344()
{
  v2.receiver = v0;
  v2.super_class = _s11BarDelegateCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003CE700(void *a1, id a2)
{
  v4 = [a2 managingTabGroup];
  if (!v4)
  {
    v4 = a2;
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5 && (v6 = v5, ([v5 respondsToSelector:"tabBarController:shouldSelectTab:"] & 1) != 0))
  {
    v7 = [v6 tabBarController:a1 shouldSelectTab:a2];

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = [a1 selectedTab];
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  sub_100009F78(0, &qword_101181F70);
  v11 = a2;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  v13 = sub_1006BDF60([a1 selectedIndex]);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 viewControllers];

    sub_100009F78(0, &qword_101183D40);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_13:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_10004056C(0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v17 = *(v16 + 32);
        }

        v18 = v17;

        goto LABEL_20;
      }
    }
  }

  v18 = [a1 selectedViewController];
  if (v18)
  {
LABEL_20:
    v19 = sub_1006BDF60([a1 selectedIndex]);
    if (!v19)
    {
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [v19 topViewController];
    if (!v21)
    {

      v23 = v20;
      goto LABEL_25;
    }

    v22 = v21;
    sub_100009F78(0, &qword_101183D40);
    v23 = v18;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
LABEL_23:
      UIViewController.scrollToTopIfPossible()();
      UIViewController.focusOnSearchBarIfPossible()();
      v23 = v18;
    }

LABEL_25:
  }

  return 1;
}

uint64_t sub_1003CE9C4(uint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 managingTabGroup];
  if (!v6)
  {
    v6 = a2;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7 && (v8 = v7, ([v7 respondsToSelector:"tabBarController:displayedViewControllersForTab:proposedViewControllers:"] & 1) != 0))
  {
    sub_100009F78(0, &qword_101183D40);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = [v8 tabBarController:a1 displayedViewControllersForTab:a2 proposedViewControllers:isa];

    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1003CEAF0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v45 = _swiftEmptyDictionarySingleton;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E914C(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v44 = v5;
      sub_1003CDE78(&v45, &v44, &v43);

      v8 = v43;
      v45 = v43;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_15:
  if (qword_10117F7A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_101218E00);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v42 = v2;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136446210;
    sub_100009F78(0, &qword_101181F70);
    v14 = Array.description.getter();
    v16 = sub_1000105AC(v14, v15, &v45);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Visibility changed for tabs %{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  v17 = v8 + 8;
  v18 = 1 << *(v8 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v8[8];
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v41 = v21;
  while (v20)
  {
LABEL_27:
    v24 = *(v8[6] + ((v22 << 9) | (8 * __clz(__rbit64(v20)))));

    v25 = v24;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v28 = 138543618;
      *(v28 + 4) = v25;
      *v39 = v25;
      *(v28 + 12) = 2082;
      sub_100009F78(0, &qword_101181F70);
      v29 = v25;
      v30 = Array.description.getter();
      v32 = sub_1000105AC(v30, v31, &v45);
      v17 = v8 + 8;

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Dispatching tab visibility change to managing tab  %{public}@ for tabs %{public}s", v28, 0x16u);
      sub_1003CF2B0(v39);

      sub_10000959C(v40);

      v2 = v42;
    }

    v33 = [(objc_class *)v25 managingTabGroup];
    if (!v33)
    {
      v33 = v25;
    }

    v34 = swift_dynamicCastObjCProtocolConditional();
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector:"tabBarController:visibilityDidChangeForTabs:"])
      {
        sub_100009F78(0, &qword_101181F70);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v35 tabBarController:a1 visibilityDidChangeForTabs:isa];

        v25 = v33;
        v33 = isa;
        v17 = v8 + 8;
      }
    }

    v20 &= v20 - 1;

    v21 = v41;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = v17[v23];
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_27;
    }
  }
}

void *sub_1003CF028(uint64_t a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = Strong;
  v8 = [a3 managingTabGroup];
  if (!v8)
  {
    v8 = a3;
  }

  v9 = swift_dynamicCastObjCProtocolConditional();

  if (v9 && (v10 = swift_dynamicCastObjCProtocolConditional()) != 0 && (v11 = v10, ([v10 respondsToSelector:{"musicTabBarController:tab:itemsForBeginningDragSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}] & 1) != 0))
  {
    v12 = [v11 musicTabBarController:a1 tab:a3 itemsForBeginningDragSession:a2];

    sub_100009F78(0, &qword_10118B920);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  return v13;
}

id sub_1003CF184(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = [a3 managingTabGroup];
  if (!v10)
  {
    v10 = a3;
  }

  v11 = swift_dynamicCastObjCProtocolConditional();

  if (v11 && (v12 = swift_dynamicCastObjCProtocolConditional()) != 0 && (v13 = v12, ([v12 respondsToSelector:{"musicTabBarController:sidebarAction:group:operationForAcceptingItemsFromDropSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}] & 1) != 0))
  {
    v14 = [v13 musicTabBarController:a1 sidebarAction:a2 group:a3 operationForAcceptingItemsFromDropSession:a4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_1003CF2B0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003CF318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1003CF3B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = *(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);

  *(v1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = *(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists);
  return result;
}

uint64_t sub_1003CF5BC()
{
  v1 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__workName;
  v2 = sub_10010FC20(&qword_101184258);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v4 = sub_10010FC20(&qword_1011928F0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName, v4);

  return swift_deallocClassInstance();
}

void sub_1003CF718()
{
  sub_1003CF7FC();
  if (v0 <= 0x3F)
  {
    sub_1003CF84C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003CF7FC()
{
  if (!qword_101187AF8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101187AF8);
    }
  }
}

void sub_1003CF84C()
{
  if (!qword_101187B08)
  {
    sub_1001109D0(&qword_1011815E0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101187B08);
    }
  }
}

uint64_t sub_1003CF8BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClassicalAlbumSection(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1003CF8FC@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v11 = sub_10010FC20(&qword_10118DD50);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v67 = sub_10010FC20(&qword_10118DD58) - 8;
  __chkstk_darwin(v67);
  v66 = &v62 - v15;
  v69 = sub_10010FC20(&qword_10118DD60) - 8;
  __chkstk_darwin(v69);
  v68 = &v62 - v16;
  v72 = sub_10010FC20(&qword_10118DD68) - 8;
  __chkstk_darwin(v72);
  v70 = &v62 - v17;
  v74 = sub_10010FC20(&qword_10118DD70) - 8;
  __chkstk_darwin(v74);
  v71 = &v62 - v18;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = sub_10010FC20(&qword_10118DD78);
  sub_1003CFFE4(v1, &v14[*(v19 + 44)]);
  v20 = static Edge.Set.horizontal.getter();
  v65 = v1;
  EdgeInsets.init(_all:)();
  v21 = &v14[*(v12 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v64 = static Edge.Set.top.getter();
  type metadata accessor for ClassicalAlbumSectionCell(0);
  sub_10056CABC(v10);
  v63 = enum case for DynamicTypeSize.accessibility1(_:);
  v62 = *(v3 + 104);
  v62(v7);
  sub_1003D0FDC(&qword_1011810B0, &type metadata accessor for DynamicTypeSize);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v26 = *(v3 + 8);
  v26(v7, v2);
  v26(v10, v2);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v66;
  sub_10003D17C(v14, v66, &qword_10118DD50);
  v36 = v35 + *(v67 + 44);
  *v36 = v64;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  LOBYTE(v14) = static Edge.Set.bottom.getter();
  v37 = v73;
  sub_10056CABC(v73);
  (v62)(v7, v63, v2);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v26(v7, v2);
  v26(v37, v2);
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v68;
  sub_10003D17C(v35, v68, &qword_10118DD58);
  v47 = v46 + *(v69 + 44);
  *v47 = v14;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v70;
  sub_10003D17C(v46, v70, &qword_10118DD60);
  v49 = (v48 + *(v72 + 44));
  v50 = v81;
  v49[4] = v80;
  v49[5] = v50;
  v49[6] = v82;
  v51 = v77;
  *v49 = v76;
  v49[1] = v51;
  v52 = v79;
  v49[2] = v78;
  v49[3] = v52;
  v53 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v54 = v48;
  v55 = v71;
  sub_10003D17C(v54, v71, &qword_10118DD68);
  v56 = (v55 + *(v74 + 44));
  *v56 = v53;
  v56[1] = sub_100119634;
  v56[2] = 0;
  v57 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v58 = v55;
  v59 = v75;
  sub_10003D17C(v58, v75, &qword_10118DD70);
  result = sub_10010FC20(&qword_10118DD80);
  v61 = (v59 + *(result + 36));
  *v61 = v57;
  v61[1] = sub_100119634;
  v61[2] = 0;
  return result;
}

uint64_t sub_1003CFFE4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118DD88);
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v69 = v62 - v5;
  v67 = sub_10010FC20(&qword_10118DD90);
  __chkstk_darwin(v67);
  v73 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = v62 - v8;
  __chkstk_darwin(v9);
  v72 = v62 - v10;
  v62[2] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62[1] = sub_100009838();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  if (qword_10117F680 != -1)
  {
    swift_once();
  }

  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;
  sub_10011895C(v11, v13, v15 & 1);

  static Font.Weight.semibold.getter();
  v21 = Text.fontWeight(_:)();
  v64 = v22;
  v65 = v21;
  v24 = v23;
  v66 = v25;
  sub_10011895C(v16, v18, v20 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v63 = v24 & 1;
  v103 = v24 & 1;
  v83 = sub_1003D0634();
  v84 = v26;
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  if (qword_10117F688 != -1)
  {
    swift_once();
  }

  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;
  sub_10011895C(v27, v29, v31 & 1);

  LODWORD(v83) = static HierarchicalShapeStyle.secondary.getter();
  v37 = Text.foregroundStyle<A>(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10011895C(v32, v34, v36 & 1);

  v83 = v37;
  v84 = v39;
  v85 = v41 & 1;
  v87 = v43;
  if (qword_10117FBC8 != -1)
  {
    swift_once();
  }

  v44 = v69;
  View.minimumLineHeight(_:)();
  sub_10011895C(v37, v39, v41 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v68;
  (*(v70 + 32))(v68, v44, v71);
  v46 = (v45 + *(v67 + 36));
  v47 = v107;
  v48 = v109;
  v46[4] = v108;
  v46[5] = v48;
  v46[6] = v110;
  v49 = v105;
  *v46 = v104;
  v46[1] = v49;
  v46[2] = v106;
  v46[3] = v47;
  v50 = v72;
  sub_10003D17C(v45, v72, &qword_10118DD90);
  v51 = v73;
  sub_100083EE0(v50, v73);
  v53 = v64;
  v52 = v65;
  *&v74 = v65;
  *(&v74 + 1) = v64;
  v54 = v63;
  LOBYTE(v75) = v63;
  *(&v75 + 1) = *v102;
  DWORD1(v75) = *&v102[3];
  v55 = v66;
  *(&v75 + 1) = v66;
  v80 = v99;
  v81 = v100;
  v82 = v101;
  v76 = v95;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v56 = v100;
  a2[6] = v99;
  a2[7] = v56;
  a2[8] = v82;
  v57 = v77;
  a2[2] = v76;
  a2[3] = v57;
  v58 = v79;
  a2[4] = v78;
  a2[5] = v58;
  v59 = v75;
  *a2 = v74;
  a2[1] = v59;
  v60 = sub_10010FC20(&qword_10118DD98);
  sub_100083EE0(v51, a2 + *(v60 + 48));
  sub_1003D1024(&v74, &v83);
  sub_100083F50(v50);
  sub_100083F50(v51);
  v83 = v52;
  v84 = v53;
  v85 = v54;
  *v86 = *v102;
  *&v86[3] = *&v102[3];
  v87 = v55;
  v92 = v99;
  v93 = v100;
  v94 = v101;
  v88 = v95;
  v89 = v96;
  v90 = v97;
  v91 = v98;
  return sub_1003D1094(&v83);
}

uint64_t sub_1003D0634()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 2128194;
  v4._object = 0xE300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v16;
  v6 = v17;
  if (!v17)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v5 = String.init(localized:table:bundle:locale:comment:)();
    v6 = v7;
  }

  v8 = v6;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v5);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v15._object)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0x209380E220;
    v11._object = 0xA500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v13._countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
    String.append(_:)(v13);
  }

  return v10;
}

uint64_t sub_1003D0988()
{
  result = static Font.callout.getter();
  qword_101218B88 = result;
  return result;
}

uint64_t sub_1003D09A8()
{
  result = static Font.footnote.getter();
  qword_101218B90 = result;
  return result;
}

uint64_t sub_1003D09C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003D0A48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1003D0B1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
  }

  return ((*(a1 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) ^ *(a2 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists)) ^ 1) & 1;
}

void sub_1003D0EA0()
{
  sub_1003D0F2C();
  if (v0 <= 0x3F)
  {
    sub_100117C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003D0F2C()
{
  if (!qword_10118DD18)
  {
    type metadata accessor for ClassicalAlbumSection(255);
    sub_1003D0FDC(&qword_101192B20, type metadata accessor for ClassicalAlbumSection);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10118DD18);
    }
  }
}

uint64_t sub_1003D0FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D1024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101181130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D1094(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101181130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003D10FC()
{
  result = qword_10118DDA0;
  if (!qword_10118DDA0)
  {
    sub_1001109D0(&qword_10118DD80);
    sub_1003D1188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDA0);
  }

  return result;
}

unint64_t sub_1003D1188()
{
  result = qword_10118DDA8;
  if (!qword_10118DDA8)
  {
    sub_1001109D0(&qword_10118DD70);
    sub_1003D1214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDA8);
  }

  return result;
}

unint64_t sub_1003D1214()
{
  result = qword_10118DDB0;
  if (!qword_10118DDB0)
  {
    sub_1001109D0(&qword_10118DD68);
    sub_1003D12A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDB0);
  }

  return result;
}

unint64_t sub_1003D12A0()
{
  result = qword_10118DDB8;
  if (!qword_10118DDB8)
  {
    sub_1001109D0(&qword_10118DD60);
    sub_1003D132C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDB8);
  }

  return result;
}

unint64_t sub_1003D132C()
{
  result = qword_10118DDC0;
  if (!qword_10118DDC0)
  {
    sub_1001109D0(&qword_10118DD58);
    sub_1003D13B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDC0);
  }

  return result;
}

unint64_t sub_1003D13B8()
{
  result = qword_10118DDC8;
  if (!qword_10118DDC8)
  {
    sub_1001109D0(&qword_10118DD50);
    sub_1003D1444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDC8);
  }

  return result;
}

unint64_t sub_1003D1444()
{
  result = qword_10118DDD0;
  if (!qword_10118DDD0)
  {
    sub_1001109D0(&qword_10118DDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DDD0);
  }

  return result;
}

id sub_1003D14A8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___headerRegistration;
  v8 = sub_10010FC20(&unk_10118A650);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___listCellRegistration;
  v10 = sub_10010FC20(&qword_10118DE48);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController] = 0;
  type metadata accessor for MusicLibrary();
  LOBYTE(v24) = 5;
  *(&v24 + 1) = static MusicLibrary.shared.getter();
  v25 = a1;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = 260;
  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = _swiftEmptyArrayStorage;
  v32 = &_swiftEmptySetSingleton;
  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = _swiftEmptyArrayStorage;
  sub_10010FC20(&unk_10118DE50);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController] = sub_1003A2A04(&v24);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  UIViewController.playActivityFeatureIdentifier.setter(5);
  v13 = [v11 traitCollection];

  v14 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = [v11 navigationItem];
    [v17 setLargeTitleDisplayMode:v14];
  }

  sub_10010FC20(&unk_101182D80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  v19 = sub_100217F14();
  *(v18 + 32) = &type metadata for LibraryFilterTrait;
  *(v18 + 40) = v19;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  v21 = sub_100137E8C();
  *(v20 + 32) = &type metadata for MusicLibraryTrait;
  *(v20 + 40) = v21;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1003D18A8()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = sub_1003D1BE4();
  v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v4 = v2;
  v5 = [v3 init];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v8 + 80) = 0;
  *(v8 + 88) = v6;
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010AA640;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithSectionProvider:v10 configuration:v5];

  _Block_release(v10);

  [v1 setCollectionViewLayout:v11];

  v12 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v12 + 32);
  *(v12 + 32) = sub_1003D57A8;
  *(v12 + 40) = v13;

  sub_100020438(v14);

  v15 = sub_1003D2424();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v15 + 88);
  *(v15 + 88) = sub_1003D57B0;
  *(v15 + 96) = v16;

  sub_100020438(v17);

  v21[3] = sub_10010FC20(&unk_10118A650);
  v18 = sub_10001C8B8(v21);
  sub_1003D25FC(v18);
  v22[3] = sub_10010FC20(&qword_10118DE48);
  v19 = sub_10001C8B8(v22);
  sub_1003D2884(v19);
  return swift_arrayDestroy();
}

id sub_1003D1BE4()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D1FDC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v8 = sub_10010FC20(&unk_10118D230);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v41 = v9;
    v42 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v7);

    v17 = sub_10010FC20(&unk_10118DE70);
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v18 + 48;
    if (v19(v7, 1, v17) == 1)
    {
      sub_1000095E8(v7, &unk_10118DE60);
      v21 = 1;
    }

    else
    {
      v40 = v20;
      v22 = v19;
      v23 = v11;
      v24 = v41;
      (*(v41 + 16))(v14, v7, v8);
      sub_1000095E8(v7, &unk_10118DE70);
      v25 = MusicLibrarySectionedResponse.isEmpty.getter();
      v26 = v24;
      v11 = v23;
      v19 = v22;
      (*(v26 + 8))(v14, v8);
      v21 = !v25;
    }

    [v16 setNeedsUpdateContentUnavailableConfiguration];
    v27 = sub_1003D1BE4();
    [v27 setBouncesVertically:v21 & 1];

    v28 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView;
    [*&v16[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v21 & 1];
    [*&v16[v28] reloadData];
    v29 = sub_1003D2424();
    RequestResponse.Revision.content.getter(v4);
    if (v19(v4, 1, v17) == 1)
    {
      sub_1000095E8(v4, &unk_10118DE60);
    }

    else
    {
      v30 = v41;
      (*(v41 + 16))(v11, v4, v8);
      sub_1000095E8(v4, &unk_10118DE70);
      v31 = MusicLibrarySectionedResponse.isEmpty.getter();
      (*(v30 + 8))(v11, v8);
      if (!v31)
      {
        v39 = *(v29 + 64);
        *(v29 + 64) = 1;
        if (v39)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    v32 = (*(*&v16[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32 & 0xFFFFFFFFFFFFLL;
      if ((v33 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v33) & 0xF;
      }

      else
      {
        v35 = v34;
      }

      v36 = v35 != 0;
      v37 = *(v29 + 64);
      *(v29 + 64) = v36;
      if (v37 == v36)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v38 = *(v29 + 64);
      *(v29 + 64) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    sub_10043EAB8();
LABEL_14:
  }

  return result;
}

uint64_t sub_1003D2424()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1003D24C8(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController);
    v6 = result;

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = *(v5 + 48);
    swift_beginAccess();
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 48);
    v13 = *(v9 + 64);
    v14 = *(v9 + 96);
    v20[4] = *(v9 + 80);
    v20[5] = v14;
    v21 = *(v9 + 112);
    v20[2] = v12;
    v20[3] = v13;
    v20[0] = v10;
    v20[1] = v11;
    v15 = *(v9 + 16);
    v23 = *(v9 + 32);
    v22 = v15;
    v16 = *(v9 + 56);
    v17 = *(v9 + 72);
    v18 = *(v9 + 88);
    v29 = *(v9 + 104);
    v28 = v18;
    v27 = v17;
    v26 = v16;

    sub_1003BF504(v20, &v19);

    v24 = v7;
    v25 = v8;
    sub_100379288(&v22);
  }

  return result;
}

uint64_t sub_1003D25FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1003D2884@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118DE88);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music27LibraryGenresViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118DE88);
  v10 = sub_10010FC20(&qword_10118DE48);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10118DE88);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Genre();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10118DE88);
  return swift_endAccess();
}

uint64_t sub_1003D2BF8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryGenresList.unsafeMutableAddressor();
  sub_100363C68(v9, v7);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100363CCC(v7);
}

void sub_1003D2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&unk_10118D230);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&unk_10118D220);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_10118DE70);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_10118DE60);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118DE70);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}