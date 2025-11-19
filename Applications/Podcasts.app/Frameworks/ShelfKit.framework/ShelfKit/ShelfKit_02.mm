uint64_t sub_3A490(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_552A8(a2, a3);
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
      sub_59510();
      v11 = v19;
      goto LABEL_8;
    }

    sub_56C98(v16, a4 & 1);
    v11 = sub_552A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_68E68(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_3A5D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_3E5FC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_55490(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_59684();
      goto LABEL_7;
    }

    sub_56F4C(v17, a3 & 1);
    v22 = sub_55490(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_68EB0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_3EE894();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_3A7A4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_3E5FC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_55490(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_5992C();
    goto LABEL_7;
  }

  sub_576A8(result, a3 & 1);
  result = sub_55490(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_3EE894();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_68EC8(v14, v11, a1 & 1, v20);
}

uint64_t sub_3A944(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_3E5DC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_55564(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_59B9C();
      goto LABEL_7;
    }

    sub_57A68(v17, a3 & 1);
    v22 = sub_55564(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_68F80(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_3EE894();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_3AB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  v10 = sub_3E5FC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_55490(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_59E40();
      goto LABEL_9;
    }

    sub_57E44(v19, a5 & 1);
    v22 = sub_55490(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_3EE894();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v28;
    v26[1] = v24;
    v26[2] = a3;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_69054(v16, v13, v28, v24, a3, v25);
  }
}

_OWORD *sub_3AD08(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_5B680(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_5A0E0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_5825C(v13, a3 & 1);
    v8 = sub_5B680(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1FB90(a1, v19);
  }

  else
  {
    sub_69A68(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_3AE48(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_5B680(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_5A0F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_58270(v13, a3 & 1);
    v8 = sub_5B680(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AttributeName(0);
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (*(v18 + 56) + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1FB90(a1, v19);
  }

  else
  {
    sub_69A68(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_3AF88(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v50 = &v40[-v5];
  v6 = sub_3EC1F4();
  v46 = v6;
  v49 = *(v6 - 8);
  v7 = v49;
  __chkstk_darwin(v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v40[-v11];
  v47 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40[-v14];
  v16 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  v17 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid + 8);
  v44 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId);
  v43 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8);
  v42 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId);
  v41 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId + 8);
  sub_2F8C4(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &v40[-v14]);
  v45 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying);
  v18 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp);
  v48 = *(a1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp + 8);
  v19 = *(v7 + 16);
  v19(v12, a1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6);
  type metadata accessor for LibraryPlayPauseAction();
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v22 = sub_3E8944();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = (v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  *v23 = v16;
  v23[1] = v17;
  v24 = v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v24 = v44;
  *(v24 + 8) = v43;
  v25 = v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v25 = v42;
  *(v25 + 8) = v41;
  swift_beginAccess();

  sub_3B520(v15, v20 + v21);
  swift_endAccess();
  *(v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = v45;
  v26 = sub_3E8474();
  v27 = (v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v27 = v26;
  v27[1] = v28;
  *(v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = 0;
  *(v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = 0;
  *(v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = 0;
  v29 = v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v29 = v18;
  *(v29 + 8) = v48;
  *(v20 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = 0;
  v30 = v46;
  v31 = v47;
  v19(v9, v47, v46);
  v32 = sub_3EC634();
  v33 = v50;
  (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
  v34 = v51;
  sub_3E5FB4();
  v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v37 = v36;
  (*(v52 + 8))(v34, v53);
  v38 = v49;
  (*(v49 + 8))(v31, v30);
  sub_FCF8(v15, &qword_4E9FD0);
  *(v20 + 16) = v35;
  *(v20 + 24) = v37;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 32;
  (*(v38 + 32))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v30);
  sub_14A10(v33, v20 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v20;
}

uint64_t sub_3B4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3B520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_3B590()
{
  result = qword_4F6BF0;
  if (!qword_4F6BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F6BF0);
  }

  return result;
}

unint64_t sub_3B5DC(uint64_t a1)
{
  result = sub_3B604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3B604()
{
  result = qword_4EA1C8;
  if (!qword_4EA1C8)
  {
    type metadata accessor for LibraryPlayPauseAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA1C8);
  }

  return result;
}

uint64_t type metadata accessor for LibraryPlayPauseAction()
{
  result = qword_4EA1F8;
  if (!qword_4EA1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3B6B0()
{
  sub_350D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PlayAction.__allocating_init(adamId:episodeOffer:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v26 = a4;
  v25 = a3;
  v8 = sub_3E5FC4();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_3EC1F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId) = a1;
  sub_3BE20(a2, v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
  v19 = v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp;
  *v19 = v25;
  *(v19 + 8) = v26 & 1;
  (*(v15 + 16))(v17, a5, v14);
  v20 = sub_3EC634();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_3E5FB4();
  v21 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v23 = v22;
  (*(v15 + 8))(a5, v14);
  sub_3D91C(a2);
  (*(v27 + 8))(v10, v28);
  *(v18 + 16) = v21;
  *(v18 + 24) = v23;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v17, v14);
  sub_14A10(v13, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t PlayAction.init(adamId:episodeOffer:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v29 = sub_3E5FC4();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId) = a1;
  sub_3BE20(a2, v6 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
  v20 = v6 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp;
  *v20 = v27;
  *(v20 + 8) = v28 & 1;
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  (*(v17 + 8))(a5, v16);
  sub_3D91C(v26);
  (*(v10 + 8))(v12, v29);
  *(v6 + 16) = v22;
  *(v6 + 24) = v24;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 32;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v15, v6 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v6;
}

uint64_t sub_3BE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeOffer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlayAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v48 = *v3;
  v52 = sub_3EBF94();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v9 - 8);
  v47 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  sub_3EBE04();
  sub_3EBDC4();
  if (v20)
  {
    v49 = v12;
    v50 = v11;
    v21 = v51;
    v53 = a1;
    v22 = v46;
    v23 = sub_3E9494();
    if (v22)
    {
      v24 = v8;

      v25 = sub_3E9484();

      v46 = *(v49 + 8);
      v46(v19, v50);
    }

    else
    {
      v25 = v23;
      v24 = v8;
      v46 = *(v49 + 8);
      v46(v19, v50);
    }

    v30 = v3;
    *(v3 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId) = v25;
    sub_3EBE04();
    v31 = v24;
    v32 = v24;
    v33 = v21;
    v34 = v21;
    v35 = v52;
    v43 = *(v54 + 16);
    v43(v32, v34, v52);
    v36 = v47;
    EpisodeOffer.init(deserializing:using:)(v16, v31, v47);
    sub_3D978(v36, v30 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
    v38 = v30 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp;
    *v38 = 0;
    v38[8] = 1;
    v39 = v50;
    v40 = v44;
    (*(v49 + 16))(v44, v53, v50);
    v41 = v45;
    v43(v45, v33, v35);
    v27 = Action.init(deserializing:using:)(v40, v41);
    (*(v54 + 8))(v33, v35);
    v46(v53, v39);
  }

  else
  {
    v26 = *(v12 + 8);
    v26(v19, v11);
    v27 = sub_3ECEE4();
    sub_3DA9C(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v28 = *v3;
    *v29 = 0x49746E65746E6F63;
    v29[1] = 0xE900000000000064;
    v29[2] = v28;
    (*(*(v27 - 8) + 104))(v29, enum case for JSONError.missingProperty(_:), v27);
    swift_willThrow();
    (*(v54 + 8))(v51, v52);
    v26(a1, v11);
    swift_deallocPartialClassInstance();
  }

  return v27;
}

uint64_t PlayAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
  return v0;
}

uint64_t PlayAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);

  return swift_deallocClassInstance();
}

uint64_t PlayAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v49 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v3 - 8);
  v48 = &v37 - v4;
  v5 = sub_3E7DB4();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E7DD4();
  __chkstk_darwin(v7 - 8);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v9 - 8);
  v38 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v11 - 8);
  v43 = &v37 - v12;
  v13 = sub_3E7FE4();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v41 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_3E7DA4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = swift_allocObject();
  v37 = xmmword_3F5630;
  *(v23 + 16) = xmmword_3F5630;
  v24 = *(v16 + 104);
  v24(v23 + v22, enum case for PlaybackIntent.Option.startPlayback(_:), v15);
  v25 = sub_34BF8(v23);
  swift_setDeallocating();
  v26 = *(v16 + 8);
  v26(v23 + v22, v15);
  swift_deallocClassInstance();
  v51 = v25;
  v27 = v42;
  if ((*(v42 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp + 8) & 1) == 0)
  {
    *v18 = *(v42 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp);
    v24(v18, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v15);
    sub_30B94(v21, v18);
    v26(v21, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  v28 = swift_allocObject();
  *(v28 + 16) = v37;
  *(v28 + 32) = *(v27 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId);
  v29 = v40;
  v30 = v41;
  *v41 = v28;
  v31 = v39;
  (*(v39 + 104))(v30, enum case for MediaIdentifier.episodes(_:), v29);
  v32 = v38;
  sub_3BE20(v27 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer, v38);
  v33 = v43;
  PodcastsMediaLibrary.MediaItem.init(from:)(v32, v43);
  v34 = sub_3E7454();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  (*(v44 + 104))(v47, enum case for PlaybackIntent.Origin.default(_:), v45);
  (*(v31 + 56))(v48, 1, 1, v29);
  v35 = sub_3E8944();
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  sub_3E7DC4();
  return sub_3E7D84();
}

uint64_t PlayAction.playPauseAction.getter()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v31 = &v28[-v5];
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v28[-v10];
  v12 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v12 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId);
  sub_3BE20(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer, v14);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp);
  v29 = *(v0 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp + 8);
  v17 = *(v7 + 16);
  v30 = v6;
  v17(v11, v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6);
  type metadata accessor for PlayPauseAction();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_contentId) = v15;
  sub_3BE20(v14, v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);
  v19 = v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp;
  *v19 = v16;
  *(v19 + 8) = v29;
  v17(v35, v11, v6);
  v20 = sub_3EC634();
  v21 = v31;
  (*(*(v20 - 8) + 56))(v31, 1, 1, v20);

  v22 = v32;
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;

  (*(v33 + 8))(v22, v34);
  v26 = v30;
  (*(v7 + 8))(v11, v30);
  sub_3D91C(v14);
  *(v18 + 16) = v23;
  *(v18 + 24) = v25;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v35, v26);
  sub_14A10(v21, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t sub_3D13C()
{

  v1 = sub_3F898(v0);

  return v1;
}

uint64_t PlayAction.withTimestamp(_:)(double a1)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v30 = &v29 - v8;
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId);
  sub_3BE20(v2 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer, v17);
  v19 = *(v10 + 16);
  v19(v14, v2 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId) = v18;
  sub_3BE20(v17, v20 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
  v21 = v20 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp;
  *v21 = a1;
  *(v21 + 8) = 0;
  v22 = v29;
  v19(v29, v14, v9);
  v23 = sub_3EC634();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v31 + 8))(v6, v32);
  (*(v10 + 8))(v14, v9);
  sub_3D91C(v17);
  *(v20 + 16) = v25;
  *(v20 + 24) = v27;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 32;
  (*(v10 + 32))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v22, v9);
  sub_14A10(v24, v20 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v20;
}

uint64_t PlayAction.withoutTimestamp()()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v28 = &v27 - v6;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId);
  sub_3BE20(v1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer, v15);
  v17 = *(v8 + 16);
  v17(v12, v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId) = v16;
  sub_3BE20(v15, v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer);
  v19 = v18 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v27;
  v17(v27, v12, v7);
  v21 = sub_3EC634();
  v22 = v28;
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v29 + 8))(v4, v30);
  (*(v8 + 8))(v12, v7);
  sub_3D91C(v15);
  *(v18 + 16) = v23;
  *(v18 + 24) = v25;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v8 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v20, v7);
  sub_14A10(v22, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t sub_3D91C(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeOffer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeOffer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3D9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3DA44(uint64_t a1)
{
  result = sub_3DA9C(&qword_4EA308, type metadata accessor for PlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3DA9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PlayAction()
{
  result = qword_4EA338;
  if (!qword_4EA338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DB38()
{
  result = type metadata accessor for EpisodeOffer();
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

Swift::Int TabMenu.Item.GlyphTint.hashValue.getter(char a1)
{
  sub_3EE954();
  sub_3EE964(a1 & 1);
  return sub_3EE9A4();
}

unint64_t sub_3DCA8()
{
  result = qword_4EA408;
  if (!qword_4EA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA408);
  }

  return result;
}

uint64_t PlaybackActionModel.pendingPlaybackMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3E7324();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id MarkAsUnplayedEpisodeAction.episodeID.getter()
{
  v1 = *v0;
  sub_3DE90(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id sub_3DE90(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void UnbookmarkEpisodeAction.episodeID.setter(uint64_t a1, uint64_t a2, char a3)
{
  sub_3DEF8(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

void sub_3DEF8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t PlayEpisodeLastAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEpisodeLastAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlayEpisodeLastAction()
{
  result = qword_4EA468;
  if (!qword_4EA468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayEpisodeLastAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEpisodeLastAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEpisodeLastAction.intent.getter()
{
  v1 = sub_3E73A4();
  v2 = __chkstk_darwin(v1);
  v4 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  (*(v6 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PlaybackController.QueueCommand.Location.queueTail(_:), v2);
  sub_3DE90(v4, v5, v7);
  return sub_3E71B4();
}

uint64_t PlayEpisodeLastAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for PlayEpisodeLastAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_3E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3E35C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_3E3FC()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_3E47C()
{
  result = qword_4EA4A0;
  if (!qword_4EA4A0)
  {
    sub_3E71C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA4A0);
  }

  return result;
}

uint64_t PlayEpisodeNextAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEpisodeNextAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlayEpisodeNextAction()
{
  result = qword_4EA500;
  if (!qword_4EA500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayEpisodeNextAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEpisodeNextAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEpisodeNextAction.intent.getter()
{
  v1 = sub_3E73A4();
  v2 = __chkstk_darwin(v1);
  v4 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  (*(v6 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PlaybackController.QueueCommand.Location.queueHead(_:), v2);
  sub_3DE90(v4, v5, v7);
  return sub_3E71B4();
}

uint64_t PlayEpisodeNextAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for PlayEpisodeNextAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_3E830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3E8E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t PlayPauseAction.__allocating_init(from:)(uint64_t a1)
{
  v1 = sub_3F898(a1);

  return v1;
}

uint64_t PlayPauseAction.__allocating_init(adamId:episodeOffer:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v26 = a4;
  v25 = a3;
  v8 = sub_3E5FC4();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_3EC1F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_contentId) = a1;
  sub_3BE20(a2, v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);
  v19 = v18 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp;
  *v19 = v25;
  *(v19 + 8) = v26 & 1;
  (*(v15 + 16))(v17, a5, v14);
  v20 = sub_3EC634();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_3E5FB4();
  v21 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v23 = v22;
  (*(v15 + 8))(a5, v14);
  sub_3D91C(a2);
  (*(v27 + 8))(v10, v28);
  *(v18 + 16) = v21;
  *(v18 + 24) = v23;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v17, v14);
  sub_14A10(v13, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t PlayPauseAction.init(adamId:episodeOffer:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v29 = sub_3E5FC4();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_contentId) = a1;
  sub_3BE20(a2, v6 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);
  v20 = v6 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp;
  *v20 = v27;
  *(v20 + 8) = v28 & 1;
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_3EC634();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;
  (*(v17 + 8))(a5, v16);
  sub_3D91C(v26);
  (*(v10 + 8))(v12, v29);
  *(v6 + 16) = v22;
  *(v6 + 24) = v24;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 32;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v15, v6 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v6;
}

uint64_t PlayPauseAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);
  return v0;
}

uint64_t PlayPauseAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);

  return swift_deallocClassInstance();
}

uint64_t PlayPauseAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v49 = &v37 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v3 - 8);
  v48 = &v37 - v4;
  v5 = sub_3E7DB4();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E7DD4();
  __chkstk_darwin(v7 - 8);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v9 - 8);
  v38 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v11 - 8);
  v43 = &v37 - v12;
  v13 = sub_3E7FE4();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v41 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_3E7DA4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = swift_allocObject();
  v37 = xmmword_3F5630;
  *(v23 + 16) = xmmword_3F5630;
  v24 = *(v16 + 104);
  v24(v23 + v22, enum case for PlaybackIntent.Option.startPlayback(_:), v15);
  v25 = sub_34BF8(v23);
  swift_setDeallocating();
  v26 = *(v16 + 8);
  v26(v23 + v22, v15);
  swift_deallocClassInstance();
  v51 = v25;
  v27 = v42;
  if ((*(v42 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp + 8) & 1) == 0)
  {
    *v18 = *(v42 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp);
    v24(v18, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v15);
    sub_30B94(v21, v18);
    v26(v21, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  v28 = swift_allocObject();
  *(v28 + 16) = v37;
  *(v28 + 32) = *(v27 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_contentId);
  v29 = v40;
  v30 = v41;
  *v41 = v28;
  v31 = v39;
  (*(v39 + 104))(v30, enum case for MediaIdentifier.episodes(_:), v29);
  v32 = v38;
  sub_3BE20(v27 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer, v38);
  v33 = v43;
  PodcastsMediaLibrary.MediaItem.init(from:)(v32, v43);
  v34 = sub_3E7454();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  (*(v44 + 104))(v47, enum case for PlaybackIntent.Origin.default(_:), v45);
  (*(v31 + 56))(v48, 1, 1, v29);
  v35 = sub_3E8944();
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  sub_3E7DC4();
  return sub_3E7D84();
}

uint64_t sub_3F898(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v32 = &v30 - v5;
  v6 = sub_3EC1F4();
  v30 = *(v6 - 8);
  v7 = v30;
  __chkstk_darwin(v6);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_contentId);
  sub_3BE20(a1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_episodeOffer, v14);
  v16 = *(a1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp);
  v17 = *(a1 + OBJC_IVAR____TtC8ShelfKit10PlayAction_timestamp + 8);
  v18 = *(v7 + 16);
  v18(v11, a1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6);
  type metadata accessor for PlayPauseAction();
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_contentId) = v15;
  sub_3BE20(v14, v19 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_episodeOffer);
  v20 = v19 + OBJC_IVAR____TtC8ShelfKit15PlayPauseAction_timestamp;
  *v20 = v16;
  *(v20 + 8) = v17;
  v21 = v31;
  v18(v31, v11, v6);
  v22 = sub_3EC634();
  v23 = v32;
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v24 = v33;
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v34 + 8))(v24, v35);
  v28 = v30;
  (*(v30 + 8))(v11, v6);
  sub_3D91C(v14);
  *(v19 + 16) = v25;
  *(v19 + 24) = v27;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 32;
  (*(v28 + 32))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v21, v6);
  sub_14A10(v23, v19 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v19;
}

unint64_t sub_3FC54(uint64_t a1)
{
  result = sub_3FC7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3FC7C()
{
  result = qword_4EA538;
  if (!qword_4EA538)
  {
    type metadata accessor for PlayPauseAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA538);
  }

  return result;
}

uint64_t type metadata accessor for PlayPauseAction()
{
  result = qword_4EA568;
  if (!qword_4EA568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3FD28()
{
  result = type metadata accessor for EpisodeOffer();
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

uint64_t PlayPauseQueueAction.__allocating_init(contentId:episodeOffer:queueEpisodeIds:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_3E5FC4();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_3EC1F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_contentId) = a1;
  sub_3BE20(a2, v17 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);
  *(v17 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_queueEpisodeIds) = v24;
  (*(v14 + 16))(v16, a4, v13);
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v14 + 8))(a4, v13);
  sub_3D91C(a2);
  (*(v25 + 8))(v9, v26);
  *(v17 + 16) = v19;
  *(v17 + 24) = v21;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v14 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v16, v13);
  sub_14A10(v12, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t PlayPauseQueueAction.init(contentId:episodeOffer:queueEpisodeIds:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v9 = sub_3E5FC4();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_3EC1F4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_contentId) = a1;
  sub_3BE20(a2, v5 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);
  *(v5 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_queueEpisodeIds) = v25;
  (*(v16 + 16))(v18, a4, v15);
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  (*(v16 + 8))(a4, v15);
  sub_3D91C(a2);
  (*(v26 + 8))(v11, v27);
  *(v5 + 16) = v20;
  *(v5 + 24) = v22;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 32;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v18, v15);
  sub_14A10(v14, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t PlayPauseQueueAction.__allocating_init(from:)(uint64_t a1)
{
  v1 = sub_442D0(a1);

  return v1;
}

uint64_t sub_404B4()
{
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);
}

uint64_t PlayPauseQueueAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);

  return v0;
}

uint64_t PlayPauseQueueAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer;

  sub_3D91C(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t PlayPauseQueueAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v2 - 8);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v4 - 8);
  v49 = &v39 - v5;
  v6 = sub_3E7DB4();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E7DD4();
  __chkstk_darwin(v8 - 8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v10 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v13 - 8);
  v44 = &v39 - v14;
  v15 = sub_3E7FE4();
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v42 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  v17 = swift_allocObject();
  v39 = xmmword_3F5630;
  *(v17 + 16) = xmmword_3F5630;
  v18 = *(v1 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_contentId);
  *(v17 + 32) = v18;
  v43 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_queueEpisodeIds);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    v22 = _swiftEmptyArrayStorage;
    do
    {
      v26 = *v21++;
      v25 = v26;
      if (v26 != v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41AD4(0, v22[2] + 1, 1);
          v22 = v52;
        }

        v24 = v22[2];
        v23 = v22[3];
        if (v24 >= v23 >> 1)
        {
          sub_41AD4((v23 > 1), v24 + 1, 1);
          v22 = v52;
        }

        v22[2] = v24 + 1;
        v22[v24 + 4] = v25;
      }

      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v52 = v17;
  sub_40E54(v22);
  v29 = v41;
  v28 = v42;
  *v42 = v52;
  v30 = v40;
  (*(v40 + 104))(v28, enum case for MediaIdentifier.episodes(_:), v29);
  sub_3BE20(v43 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer, v12);
  v31 = v44;
  PodcastsMediaLibrary.MediaItem.init(from:)(v12, v44);
  v32 = sub_3E7454();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v33 = sub_3E7DA4();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v39;
  (*(v34 + 104))(v36 + v35, enum case for PlaybackIntent.Option.startPlayback(_:), v33);
  sub_34BF8(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v33);
  swift_deallocClassInstance();
  (*(v45 + 104))(v48, enum case for PlaybackIntent.Origin.default(_:), v46);
  (*(v30 + 56))(v49, 1, 1, v29);
  v37 = sub_3E8944();
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  sub_3E7DC4();
  return sub_3E7D84();
}

uint64_t sub_40D60(uint64_t result)
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

  result = sub_DFAE8(result, v10, 1, v3);
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

uint64_t sub_40E54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_E1524();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v6 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v6 < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v3 + 8 * v6 + 32), (v5 + 32), 8 * v2);

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_40F98(uint64_t result)
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

  result = sub_DFFFC(result, v10, 1, v3);
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

uint64_t sub_41090(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v6 = *(v3 + 24) >> 1, v6 < v4 + v2))
  {
    v3 = (sub_E1524)();
    v6 = *(v3 + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  result = sub_441D0(v35, (v3 + 8 * v7 + 32), v6 - v7, v5);
  if (result < v2)
  {
    goto LABEL_12;
  }

  v10 = result;
  if (result)
  {
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, result);
    v13 = v11 + result;
    if (v12)
    {
      __break(1u);
LABEL_16:
      v16 = (v8 + 64) >> 6;
      if (v16 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = (v8 + 64) >> 6;
      }

      v18 = v17 - 1;
      do
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_45:
          __break(1u);
          return result;
        }

        if (v19 >= v16)
        {
          v37 = v18;
          v38 = 0;
          goto LABEL_10;
        }

        v20 = *(v9 + 8 * v19);
        ++v13;
      }

      while (!v20);
      v14 = (v20 - 1) & v20;
      v15 = __clz(__rbit64(v20)) | (v19 << 6);
      v13 = v19;
      goto LABEL_24;
    }

    *(v3 + 16) = v13;
  }

  result = v35[0];
  if (v10 != v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v5 = *(v3 + 16);
  v9 = v35[1];
  v8 = v36;
  v13 = v37;
  if (!v38)
  {
    goto LABEL_16;
  }

  v14 = (v38 - 1) & v38;
  v15 = __clz(__rbit64(v38)) | (v37 << 6);
  v16 = (v36 + 64) >> 6;
LABEL_24:
  v21 = *(*(result + 48) + 8 * v15);
  while (1)
  {
    v22 = *(v3 + 24);
    v23 = v22 >> 1;
    if ((v22 >> 1) < v5 + 1)
    {
      break;
    }

    if (v5 < v23)
    {
      goto LABEL_32;
    }

LABEL_27:
    *(v3 + 16) = v5;
  }

  v32 = v13;
  v33 = v16;
  v34 = result;
  v27 = v9;
  v28 = v3;
  v29 = v14;
  v30 = sub_E1524(v22 > 1, v5 + 1, 1, v28);
  v14 = v29;
  v13 = v32;
  v16 = v33;
  v9 = v27;
  v3 = v30;
  result = v34;
  v23 = *(v3 + 24) >> 1;
  if (v5 >= v23)
  {
    goto LABEL_27;
  }

LABEL_32:
  while (1)
  {
    *(v3 + 32 + 8 * v5++) = v21;
    if (!v14)
    {
      break;
    }

LABEL_31:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = *(*(result + 48) + ((v13 << 9) | (8 * v24)));
    if (v5 == v23)
    {
      v5 = v23;
      goto LABEL_27;
    }
  }

  v25 = v13;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v26 >= v16)
    {
      break;
    }

    v14 = *(v9 + 8 * v26);
    ++v25;
    if (v14)
    {
      v13 = v26;
      goto LABEL_31;
    }
  }

  if (v16 <= v13 + 1)
  {
    v31 = v13 + 1;
  }

  else
  {
    v31 = v16;
  }

  v36 = v8;
  v37 = v31 - 1;
  v38 = 0;
  *(v3 + 16) = v5;
LABEL_10:
  result = sub_44824();
  *v1 = v3;
  return result;
}

uint64_t sub_41318(uint64_t result)
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

  result = sub_E0168(result, v10, 1, v3);
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

uint64_t sub_414BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_E0900(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C8);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_4164C(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_3EE5A4();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v3 >> 62))
  {
    v8 = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_3EE5A4();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(&dword_10 + v12) + 32, (*(&dword_18 + v12) >> 1) - *(&dword_10 + v12), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_417A4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_41910(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_41A30(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA828, &unk_3F6DC0, type metadata accessor for ActionMenu.Child);
  *v3 = result;
  return result;
}

char *sub_41A74(char *a1, int64_t a2, char a3)
{
  result = sub_42004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_41A94(void *a1, int64_t a2, char a3)
{
  result = sub_42564(a1, a2, a3, *v3, &qword_4E9E28, &unk_3F9A40, &unk_502170);
  *v3 = result;
  return result;
}

char *sub_41AD4(char *a1, int64_t a2, char a3)
{
  result = sub_43610(a1, a2, a3, *v3, &qword_4F1CF0);
  *v3 = result;
  return result;
}

size_t sub_41B04(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA898, &unk_3F6E40, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_41B48(void *a1, int64_t a2, char a3)
{
  result = sub_420F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_41B68(char *a1, int64_t a2, char a3)
{
  result = sub_4222C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_41B88(char *a1, int64_t a2, char a3)
{
  result = sub_4233C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_41BA8(char *a1, int64_t a2, char a3)
{
  result = sub_42458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41BC8(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4F1290, &unk_3F6CE0, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_41C0C(void *a1, int64_t a2, char a3)
{
  result = sub_42564(a1, a2, a3, *v3, &unk_506560, &unk_3F6D80, &qword_4EA7A8);
  *v3 = result;
  return result;
}

char *sub_41C4C(char *a1, int64_t a2, char a3)
{
  result = sub_426D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_41C6C(void *a1, int64_t a2, char a3)
{
  result = sub_427D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41C8C(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA7E0, &unk_3F6D88, type metadata accessor for BubbleTip);
  *v3 = result;
  return result;
}

char *sub_41CD0(char *a1, int64_t a2, char a3)
{
  result = sub_4290C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41CF0(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA7D8, &unk_3FF1C0, type metadata accessor for ModernShelf);
  *v3 = result;
  return result;
}

char *sub_41D34(char *a1, int64_t a2, char a3)
{
  result = sub_42A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_41D54(char *a1, int64_t a2, char a3)
{
  result = sub_42B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41D74(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA790, &unk_3F6D30, type metadata accessor for TabMenu.Item);
  *v3 = result;
  return result;
}

void *sub_41DB8(void *a1, int64_t a2, char a3)
{
  result = sub_42C58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41DD8(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA7E8, &unk_3F6D90, type metadata accessor for Link);
  *v3 = result;
  return result;
}

char *sub_41E1C(char *a1, int64_t a2, char a3)
{
  result = sub_42D8C(a1, a2, a3, *v3, &qword_4EA7D0);
  *v3 = result;
  return result;
}

char *sub_41E4C(char *a1, int64_t a2, char a3)
{
  result = sub_42D8C(a1, a2, a3, *v3, &qword_4EA7C0);
  *v3 = result;
  return result;
}

char *sub_41E7C(char *a1, int64_t a2, char a3)
{
  result = sub_42D8C(a1, a2, a3, *v3, &qword_4EA7B8);
  *v3 = result;
  return result;
}

char *sub_41EAC(char *a1, int64_t a2, char a3)
{
  result = sub_42E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_41ECC(void *a1, int64_t a2, char a3)
{
  result = sub_42F84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_41EEC(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA738, &unk_3F6CC8, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

size_t sub_41F30(size_t a1, int64_t a2, char a3)
{
  result = sub_430E0(a1, a2, a3, *v3, &qword_4EA740, &unk_3F6CD0, _s7EpisodeVMa);
  *v3 = result;
  return result;
}

char *sub_41F74(char *a1, int64_t a2, char a3)
{
  result = sub_432BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_41F94(void *a1, int64_t a2, char a3)
{
  result = sub_434BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_41FB4(char *a1, int64_t a2, char a3)
{
  result = sub_43610(a1, a2, a3, *v3, &qword_4EA768);
  *v3 = result;
  return result;
}

void *sub_41FE4(void *a1, int64_t a2, char a3)
{
  result = sub_4370C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_42004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_420F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_4222C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_4233C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_42458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_42564(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_426D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA838);
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

void *sub_427D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_4290C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_42A18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_42B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_42C58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_42D8C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_42E78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7B0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_42F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_430E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_432BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA788);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_433C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_434BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_43610(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_4370C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_43840(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA890, &qword_4EA888);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA888);
            v9 = sub_5A278(v13, i, a3);
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
        sub_36174(0, &qword_4EA880);
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

uint64_t sub_439E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA868, &qword_4EA860);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA860);
            v9 = sub_5A278(v13, i, a3);
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
        sub_36174(0, &qword_4E94B8);
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

uint64_t sub_43B80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA850, &qword_4EA848);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA848);
            v9 = sub_5A2F8(v13, i, a3);
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
        type metadata accessor for ClosureAction();
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

uint64_t sub_43D10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA818, &qword_4EA810);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA810);
            v9 = sub_5A2F8(v13, i, a3);
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
        type metadata accessor for LegacyLockup();
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

uint64_t sub_43EA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA7F8, &qword_4EA7F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7F0);
            v9 = sub_5A400(v13, i, a3);
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
        sub_3E75E4();
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

uint64_t sub_44030(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3EE5A4();
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
      result = sub_3EE5A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_4482C(&qword_4EA750, &unk_5010F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010F0);
            v9 = sub_5A278(v13, i, a3);
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
        sub_36174(0, &qword_4EA748);
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

void *sub_441D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_442D0(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - v5;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v9;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId);
  sub_3BE20(a1 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer, v15);
  v17 = *(a1 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds);
  v18 = *(v7 + 16);
  v18(v12, a1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6);
  type metadata accessor for PlayPauseQueueAction();
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_contentId) = v16;
  sub_3BE20(v15, v19 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);
  *(v19 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_queueEpisodeIds) = v17;
  v18(v9, v12, v6);
  v20 = sub_3EC634();
  v21 = v29;
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);

  v22 = v30;
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v31 + 8))(v22, v32);
  (*(v7 + 8))(v12, v6);
  sub_3D91C(v15);
  *(v19 + 16) = v23;
  *(v19 + 24) = v25;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 32;
  (*(v7 + 32))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v28, v6);
  sub_14A10(v21, v19 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v19;
}

unint64_t sub_44678(uint64_t a1)
{
  result = sub_446A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_446A0()
{
  result = qword_4EA638;
  if (!qword_4EA638)
  {
    type metadata accessor for PlayPauseQueueAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA638);
  }

  return result;
}

uint64_t type metadata accessor for PlayPauseQueueAction()
{
  result = qword_4EA668;
  if (!qword_4EA668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4474C()
{
  result = type metadata accessor for EpisodeOffer();
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

uint64_t sub_4482C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlayPauseStationAction.__allocating_init(stationUUID:episodeUUID:episodeAdamID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v34 = a6;
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v35 = sub_3E5FC4();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v20 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  v24 = v20 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
  *v24 = v33;
  *(v24 + 8) = v34 & 1;
  (*(v17 + 16))(v19, a7, v16);
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v17 + 8))(a7, v16);
  (*(v10 + 8))(v12, v35);
  *(v20 + 16) = v26;
  *(v20 + 24) = v28;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 32;
  (*(v17 + 32))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v15, v20 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v20;
}

uint64_t PlayPauseStationAction.init(stationUUID:episodeUUID:episodeAdamID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v37 = sub_3E5FC4();
  v12 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_3EC1F4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v8 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v8 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  v26 = v8 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
  *v26 = v35;
  *(v26 + 8) = v36 & 1;
  (*(v19 + 16))(v22, a7, v18, v20);
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  sub_3E5FB4();
  v28 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v30 = v29;
  (*(v19 + 8))(a7, v18);
  (*(v12 + 8))(v14, v37);
  *(v8 + 16) = v28;
  *(v8 + 24) = v30;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 32;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v22, v18);
  sub_14A10(v17, v8 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v8;
}

uint64_t PlayPauseStationAction.__allocating_init(from:)(uint64_t a1)
{
  v1 = sub_45710(a1);

  return v1;
}

uint64_t PlayPauseStationAction.stationUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);

  return v1;
}

uint64_t PlayPauseStationAction.episodeUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);

  return v1;
}

uint64_t sub_44FC0()
{
}

uint64_t PlayPauseStationAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t PlayPauseStationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t PlayPauseStationAction.pendingPlaybackMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID + 8);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
    v5 = v1 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
    v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID);
    v7 = *(v5 + 8);

    return PendingPlaybackMetadata.init(adamId:uuid:)(v6, v7, v4, v3);
  }

  else
  {
    v8 = sub_3E7324();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t PlayPauseStationAction.playbackIntent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_3E7FE4();
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID + 8);
  v9 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v10 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID + 8);
  *v7 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  (*(v11 + 104))(v7, enum case for MediaIdentifier.station(_:), v5);
  v12 = sub_3E8944();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v13 = sub_3E7DA4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;
  (*(v14 + 104))(v16 + v15, enum case for PlaybackIntent.Option.startPlayback(_:), v13);

  sub_34BF8(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  return sub_3E7D74();
}

uint64_t sub_45550@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (*v1 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = (v3 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID);
    v8 = *v7;
    v9 = *(v7 + 8);

    return PendingPlaybackMetadata.init(adamId:uuid:)(v8, v9, v6, v5);
  }

  else
  {
    v10 = sub_3E7324();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t PlayPauseStationAction.episodeIdentifier.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID;
  v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v2 = *(v1 + 8);

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_456C4()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  v3 = *v1;
  v2 = v1[1];

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_45710(uint64_t a1)
{
  v2 = sub_3E5FC4();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v35 = &v30[-v5];
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v30[-v12];
  v14 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID + 8);
  v33 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  v15 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v16 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID + 8);
  v32 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID);
  v31 = *(a1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID + 8);
  v17 = *(v7 + 16);
  v17(&v30[-v12], a1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6, v11);
  type metadata accessor for PlayPauseStationAction();
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
  v20 = v32;
  *v19 = v33;
  v19[1] = v14;
  v21 = (v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  *v21 = v15;
  v21[1] = v16;
  v22 = v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
  *v22 = v20;
  *(v22 + 8) = v31;
  (v17)(v9, v13, v6);
  v23 = sub_3EC634();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);

  v25 = v36;
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v37 + 8))(v25, v38);
  (*(v7 + 8))(v13, v6);
  *(v18 + 16) = v26;
  *(v18 + 24) = v28;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v34, v6);
  sub_14A10(v24, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

unint64_t sub_45A98(uint64_t a1)
{
  result = sub_45AC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_45AC0()
{
  result = qword_4EA8A0;
  if (!qword_4EA8A0)
  {
    type metadata accessor for PlayPauseStationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA8A0);
  }

  return result;
}

uint64_t type metadata accessor for PlayPauseStationAction()
{
  result = qword_4EA8D0;
  if (!qword_4EA8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayQueueAction.__allocating_init(contentId:episodeOffer:queueEpisodeIds:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_3E5FC4();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_3EC1F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId) = a1;
  sub_3BE20(a2, v17 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer);
  *(v17 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds) = v24;
  (*(v14 + 16))(v16, a4, v13);
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v14 + 8))(a4, v13);
  sub_3D91C(a2);
  (*(v25 + 8))(v9, v26);
  *(v17 + 16) = v19;
  *(v17 + 24) = v21;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v14 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v16, v13);
  sub_14A10(v12, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t PlayQueueAction.init(contentId:episodeOffer:queueEpisodeIds:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v9 = sub_3E5FC4();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_3EC1F4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId) = a1;
  sub_3BE20(a2, v5 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer);
  *(v5 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds) = v25;
  (*(v16 + 16))(v18, a4, v15);
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;
  (*(v16 + 8))(a4, v15);
  sub_3D91C(a2);
  (*(v26 + 8))(v11, v27);
  *(v5 + 16) = v20;
  *(v5 + 24) = v22;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 32;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v18, v15);
  sub_14A10(v14, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t PlayQueueAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v52 = *v3;
  v53 = sub_3EBF94();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v43 - v8;
  __chkstk_darwin(v9);
  v50 = &v43 - v10;
  v11 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v11 - 8);
  v51 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_3EBDF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v46 = &v43 - v17;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  sub_3EBE04();
  sub_3EBDC4();
  if (v24)
  {
    v45 = v6;
    v54 = v14;
    v55 = v13;
    v25 = v3;
    v26 = v53;
    v27 = a1;
    v28 = v49;
    v29 = sub_3E9494();
    if (v28)
    {

      v30 = sub_3E9484();

      v49 = *(v54 + 8);
      v49(v23, v55);
    }

    else
    {
      v30 = v29;
      v49 = *(v54 + 8);
      v49(v23, v55);
    }

    v35 = v51;
    v51 = v25;
    *(v25 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId) = v30;
    sub_3EBE04();
    v36 = v50;
    v37 = v57;
    v44 = *(v56 + 16);
    v44(v50, v57, v26);
    EpisodeOffer.init(deserializing:using:)(v20, v36, v35);
    v39 = v51;
    sub_3D978(v35, v51 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer);
    sub_3EBE04();
    v40 = v44;
    v44(v48, v37, v26);
    sub_475B0();
    *(v39 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds) = sub_3ED644();
    v41 = v47;
    (*(v54 + 16))(v47, v27, v55);
    v42 = v45;
    v40(v45, v37, v26);
    v32 = Action.init(deserializing:using:)(v41, v42);
    (*(v56 + 8))(v57, v26);
    v49(v27, v55);
  }

  else
  {
    v31 = *(v14 + 8);
    v31(v23, v13);
    v32 = sub_3ECEE4();
    sub_4765C(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v33 = 0x49746E65746E6F63;
    v34 = v52;
    v33[1] = 0xE900000000000064;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, enum case for JSONError.missingProperty(_:), v32);
    swift_willThrow();
    (*(v56 + 8))(v57, v53);
    v31(a1, v13);
    swift_deallocPartialClassInstance();
  }

  return v32;
}

uint64_t sub_46908()
{
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer);
}

uint64_t PlayQueueAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer);

  return v0;
}

uint64_t PlayQueueAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer;

  sub_3D91C(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t PlayQueueAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v2 - 8);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v4 - 8);
  v49 = &v39 - v5;
  v6 = sub_3E7DB4();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E7DD4();
  __chkstk_darwin(v8 - 8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v10 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v13 - 8);
  v44 = &v39 - v14;
  v15 = sub_3E7FE4();
  v40 = *(v15 - 8);
  v41 = v15;
  __chkstk_darwin(v15);
  v42 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  v17 = swift_allocObject();
  v39 = xmmword_3F5630;
  *(v17 + 16) = xmmword_3F5630;
  v18 = *(v1 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId);
  *(v17 + 32) = v18;
  v43 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    v22 = _swiftEmptyArrayStorage;
    do
    {
      v26 = *v21++;
      v25 = v26;
      if (v26 != v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41AD4(0, v22[2] + 1, 1);
          v22 = v52;
        }

        v24 = v22[2];
        v23 = v22[3];
        if (v24 >= v23 >> 1)
        {
          sub_41AD4((v23 > 1), v24 + 1, 1);
          v22 = v52;
        }

        v22[2] = v24 + 1;
        v22[v24 + 4] = v25;
      }

      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v52 = v17;
  sub_40E54(v22);
  v29 = v41;
  v28 = v42;
  *v42 = v52;
  v30 = v40;
  (*(v40 + 104))(v28, enum case for MediaIdentifier.episodes(_:), v29);
  sub_3BE20(v43 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer, v12);
  v31 = v44;
  PodcastsMediaLibrary.MediaItem.init(from:)(v12, v44);
  v32 = sub_3E7454();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v33 = sub_3E7DA4();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v39;
  (*(v34 + 104))(v36 + v35, enum case for PlaybackIntent.Option.startPlayback(_:), v33);
  sub_34BF8(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v33);
  swift_deallocClassInstance();
  (*(v45 + 104))(v48, enum case for PlaybackIntent.Origin.default(_:), v46);
  (*(v30 + 56))(v49, 1, 1, v29);
  v37 = sub_3E8944();
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  sub_3E7DC4();
  return sub_3E7D84();
}

uint64_t PlayQueueAction.playPauseAction.getter()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v28 = &v27 - v5;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_contentId);
  sub_3BE20(v0 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_episodeOffer, v14);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit15PlayQueueAction_queueEpisodeIds);
  v17 = *(v7 + 16);
  v27 = v6;
  v17(v11, v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6);
  type metadata accessor for PlayPauseQueueAction();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_contentId) = v15;
  sub_3BE20(v14, v18 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_episodeOffer);
  *(v18 + OBJC_IVAR____TtC8ShelfKit20PlayPauseQueueAction_queueEpisodeIds) = v16;
  v17(v32, v11, v6);
  v19 = sub_3EC634();
  v20 = v28;
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);

  v21 = v29;
  sub_3E5FB4();
  v22 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v24 = v23;

  (*(v30 + 8))(v21, v31);
  v25 = v27;
  (*(v7 + 8))(v11, v27);
  sub_3D91C(v14);
  *(v18 + 16) = v22;
  *(v18 + 24) = v24;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v32, v25);
  sub_14A10(v20, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t sub_47540()
{

  v1 = sub_442D0(v0);

  return v1;
}

unint64_t sub_475B0()
{
  result = qword_4EA9A0;
  if (!qword_4EA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EA9A0);
  }

  return result;
}

uint64_t sub_47604(uint64_t a1)
{
  result = sub_4765C(&qword_4EA9A8, type metadata accessor for PlayQueueAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4765C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PlayQueueAction()
{
  result = qword_4EA9D8;
  if (!qword_4EA9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayQueueItemAction.init(item:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for PlayQueueItemAction() + 20);
  v6 = sub_3EC1F4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for PlayQueueItemAction()
{
  result = qword_4EAB00;
  if (!qword_4EAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayQueueItemAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayQueueItemAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_47898(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_47958(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_479FC()
{
  result = sub_47A80();
  if (v1 <= 0x3F)
  {
    result = sub_3EC1F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_47A80()
{
  result = qword_4EAB10;
  if (!qword_4EAB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EAB10);
  }

  return result;
}

uint64_t PlayShowLastAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayShowLastAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlayShowLastAction()
{
  result = qword_4EAB98;
  if (!qword_4EAB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayShowLastAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayShowLastAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayShowLastAction.intent.getter()
{
  v1 = sub_3E73A4();
  v2 = __chkstk_darwin(v1);
  v4 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  (*(v6 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PlaybackController.QueueCommand.Location.queueTail(_:), v2);
  sub_3DE90(v4, v5, v7);
  return sub_3E7174();
}

uint64_t PlayShowLastAction.init(showID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for PlayShowLastAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t static PlayShowLastAction.canPerform(asPartOf:)()
{
  sub_3E7404();
  sub_3EC394();
  sub_3E7354();
  v0 = sub_3E7334();

  return v0 & 1;
}

uint64_t sub_47E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_47F34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_47FD8()
{
  result = qword_4EABD0;
  if (!qword_4EABD0)
  {
    sub_3E7184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EABD0);
  }

  return result;
}

uint64_t PlayShowNextAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayShowNextAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlayShowNextAction()
{
  result = qword_4EAC30;
  if (!qword_4EAC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayShowNextAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayShowNextAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayShowNextAction.intent.getter()
{
  v1 = sub_3E73A4();
  v2 = __chkstk_darwin(v1);
  v4 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  (*(v6 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PlaybackController.QueueCommand.Location.queueHead(_:), v2);
  sub_3DE90(v4, v5, v7);
  return sub_3E7174();
}

uint64_t PlayShowNextAction.init(showID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for PlayShowNextAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_48370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_48428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t PlayStationAction.__allocating_init(stationUUID:episodeUUID:episodeAdamID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v34 = a6;
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v35 = sub_3E5FC4();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v20 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  v24 = v20 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
  *v24 = v33;
  *(v24 + 8) = v34 & 1;
  (*(v17 + 16))(v19, a7, v16);
  v25 = sub_3EC634();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;
  (*(v17 + 8))(a7, v16);
  (*(v10 + 8))(v12, v35);
  *(v20 + 16) = v26;
  *(v20 + 24) = v28;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  *(v20 + 48) = 32;
  (*(v17 + 32))(v20 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v19, v16);
  sub_14A10(v15, v20 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v20;
}

uint64_t PlayStationAction.init(stationUUID:episodeUUID:episodeAdamID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v37 = sub_3E5FC4();
  v12 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_3EC1F4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v8 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  *v23 = a1;
  v23[1] = a2;
  v24 = (v8 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  v26 = v8 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
  *v26 = v35;
  *(v26 + 8) = v36 & 1;
  (*(v19 + 16))(v22, a7, v18, v20);
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  sub_3E5FB4();
  v28 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v30 = v29;
  (*(v19 + 8))(a7, v18);
  (*(v12 + 8))(v14, v37);
  *(v8 + 16) = v28;
  *(v8 + 24) = v30;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 32;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v22, v18);
  sub_14A10(v17, v8 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v8;
}

uint64_t PlayStationAction.stationUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);

  return v1;
}

uint64_t PlayStationAction.episodeUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);

  return v1;
}

uint64_t sub_48BB4()
{
}

uint64_t PlayStationAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t PlayStationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t PlayStationAction.pendingPlaybackMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID + 8);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
    v5 = v1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
    v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID);
    v7 = *(v5 + 8);

    return PendingPlaybackMetadata.init(adamId:uuid:)(v6, v7, v4, v3);
  }

  else
  {
    v8 = sub_3E7324();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t PlayStationAction.playbackIntent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_3E7FE4();
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID + 8);
  v9 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v10 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID + 8);
  *v7 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  (*(v11 + 104))(v7, enum case for MediaIdentifier.station(_:), v5);
  v12 = sub_3E8944();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v13 = sub_3E7DA4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_3F5630;
  (*(v14 + 104))(v16 + v15, enum case for PlaybackIntent.Option.startPlayback(_:), v13);

  sub_34BF8(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  return sub_3E7D74();
}

uint64_t sub_49144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (*v1 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = (v3 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID);
    v8 = *v7;
    v9 = *(v7 + 8);

    return PendingPlaybackMetadata.init(adamId:uuid:)(v8, v9, v6, v5);
  }

  else
  {
    v10 = sub_3E7324();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t PlayStationAction.playPauseAction.getter()
{
  v1 = v0;
  v2 = sub_3E5FC4();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v36 = &v30[-v5];
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v30[-v12];
  v14 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID + 8);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID + 8);
  v33 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v34 = v14;
  v32 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID);
  v31 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID + 8);
  v17 = *(v7 + 16);
  v17(&v30[-v12], v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v6, v11);
  type metadata accessor for PlayPauseStationAction();
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_stationUUID);
  v20 = v33;
  *v19 = v34;
  v19[1] = v15;
  v21 = (v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeUUID);
  *v21 = v20;
  v21[1] = v16;
  v22 = v18 + OBJC_IVAR____TtC8ShelfKit22PlayPauseStationAction_episodeAdamID;
  *v22 = v32;
  *(v22 + 8) = v31;
  (v17)(v9, v13, v6);
  v23 = sub_3EC634();
  v24 = v36;
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);

  v25 = v37;
  sub_3E5FB4();
  v26 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v28 = v27;

  (*(v38 + 8))(v25, v39);
  (*(v7 + 8))(v13, v6);
  *(v18 + 16) = v26;
  *(v18 + 24) = v28;
  *(v18 + 32) = 0;
  *(v18 + 40) = 0;
  *(v18 + 48) = 32;
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v35, v6);
  sub_14A10(v24, v18 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v18;
}

uint64_t PlayStationAction.episodeIdentifier.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID;
  v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v2 = *(v1 + 8);

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_49638()
{

  v1 = sub_45710(v0);

  return v1;
}

uint64_t sub_49690()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  v3 = *v1;
  v2 = v1[1];

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_496DC(uint64_t a1)
{
  result = sub_49704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_49704()
{
  result = qword_4EAC68;
  if (!qword_4EAC68)
  {
    type metadata accessor for PlayStationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAC68);
  }

  return result;
}

uint64_t type metadata accessor for PlayStationAction()
{
  result = qword_4EAC98;
  if (!qword_4EAC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PodcastPlayAction.__allocating_init(showId:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v21 = sub_3E5FC4();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC8ShelfKit17PodcastPlayAction_showId) = a1;
  (*(v11 + 16))(v13, a2, v10);
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v11 + 8))(a2, v10);
  (*(v4 + 8))(v6, v21);
  *(v14 + 16) = v16;
  *(v14 + 24) = v18;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 32;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v9, v14 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v14;
}

uint64_t PodcastPlayAction.init(showId:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = sub_3E5FC4();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC8ShelfKit17PodcastPlayAction_showId) = a1;
  (*(v13 + 16))(v16, a2, v12, v14);
  v17 = sub_3EC634();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_3E5FB4();
  v18 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v20 = v19;
  (*(v13 + 8))(a2, v12);
  (*(v6 + 8))(v8, v23);
  *(v3 + 16) = v18;
  *(v3 + 24) = v20;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 32;
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v16, v12);
  sub_14A10(v11, v3 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v3;
}

uint64_t PodcastPlayAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = *v3;
  v6 = sub_3EBF94();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = a1;
  sub_3EBE04();
  sub_3EBDC4();
  if (v15)
  {
    v16 = v3;
    v17 = v8;
    v18 = v39;
    v36 = v6;
    v19 = v37;
    v20 = sub_3E9494();
    if (v19)
    {

      v21 = sub_3E9484();

      v22 = v9;
      v23 = v17;
      v37 = *(v9 + 8);
      v37(v14, v17);
    }

    else
    {
      v21 = v20;
      v37 = *(v9 + 8);
      v37(v14, v17);
      v22 = v9;
      v23 = v17;
    }

    *(v16 + OBJC_IVAR____TtC8ShelfKit17PodcastPlayAction_showId) = v21;
    v28 = *(v22 + 16);
    v29 = v11;
    v30 = v41;
    v35 = v23;
    v28(v11, v41, v23);
    v31 = v38;
    v32 = v40;
    v33 = v36;
    (*(v18 + 16))(v38, v40, v36);
    v25 = Action.init(deserializing:using:)(v29, v31);
    (*(v18 + 8))(v32, v33);
    v37(v30, v35);
  }

  else
  {
    v38 = v5;
    v24 = *(v9 + 8);
    v24(v14, v8);
    v25 = sub_3ECEE4();
    sub_4A984(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v26 = *v3;
    *v27 = 0x6449776F6873;
    v27[1] = 0xE600000000000000;
    v27[2] = v26;
    (*(*(v25 - 8) + 104))(v27, enum case for JSONError.missingProperty(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v40, v6);
    v24(v41, v8);
    swift_deallocPartialClassInstance();
  }

  return v25;
}

uint64_t PresentNowPlayingAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v0;
}

uint64_t PresentNowPlayingAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t PodcastPlayAction.playbackIntent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_3E7FE4();
  v5 = __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = *(v0 + OBJC_IVAR____TtC8ShelfKit17PodcastPlayAction_showId);
  (*(v8 + 104))(v7, enum case for MediaIdentifier.podcast(_:), v5);
  v9 = sub_3E8944();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v10 = sub_3E7DA4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  (*(v11 + 104))(v13 + v12, enum case for PlaybackIntent.Option.startPlayback(_:), v10);
  sub_34BF8(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  return sub_3E7D74();
}

uint64_t sub_4A6AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_3E7FE4();
  v5 = __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = *(*v0 + OBJC_IVAR____TtC8ShelfKit17PodcastPlayAction_showId);
  (*(v8 + 104))(v7, enum case for MediaIdentifier.podcast(_:), v5);
  v9 = sub_3E8944();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v10 = sub_3E7DA4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  (*(v11 + 104))(v13 + v12, enum case for PlaybackIntent.Option.startPlayback(_:), v10);
  sub_34BF8(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  return sub_3E7D74();
}

uint64_t sub_4A92C(uint64_t a1)
{
  result = sub_4A984(&qword_4EAD68, type metadata accessor for PodcastPlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4A984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PodcastPlayAction()
{
  result = qword_4EAD98;
  if (!qword_4EAD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeekToTimestampAndPlayAction.init(episodeAdamID:timestamp:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  v6 = *(type metadata accessor for SeekToTimestampAndPlayAction() + 24);
  v7 = sub_3EC1F4();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t type metadata accessor for SeekToTimestampAndPlayAction()
{
  result = qword_4EAEB0;
  if (!qword_4EAEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeekToTimestampAndPlayAction.init(episodeShareURL:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_3E59F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E59C4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = sub_3EC1F4();
    (*(*(v13 - 8) + 8))(a2, v13);
    v14 = sub_3E5DC4();
    (*(*(v14 - 8) + 8))(a1, v14);
    sub_4AFA8(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = sub_4B010();
    if ((v16 & 1) == 0)
    {
      v21 = v15;
      v22 = URLComponents.playerTime.getter();
      if (v23)
      {
        v24 = URLComponents.referenceTime.getter();
        v26 = v25;
        v27 = sub_3E5DC4();
        (*(*(v27 - 8) + 8))(a1, v27);
        (*(v10 + 8))(v12, v9);
        if (v26)
        {
          v28 = sub_3EC1F4();
          (*(*(v28 - 8) + 8))(a2, v28);
          goto LABEL_5;
        }
      }

      else
      {
        v24 = v22;
        v29 = sub_3E5DC4();
        (*(*(v29 - 8) + 8))(a1, v29);
        (*(v10 + 8))(v12, v9);
      }

      *a3 = v21;
      a3[1] = v24;
      v30 = type metadata accessor for SeekToTimestampAndPlayAction();
      v31 = *(v30 + 24);
      v32 = sub_3EC1F4();
      (*(*(v32 - 8) + 32))(a3 + v31, a2, v32);
      return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
    }

    v17 = sub_3EC1F4();
    (*(*(v17 - 8) + 8))(a2, v17);
    v18 = sub_3E5DC4();
    (*(*(v18 - 8) + 8))(a1, v18);
    (*(v10 + 8))(v12, v9);
  }

LABEL_5:
  v19 = type metadata accessor for SeekToTimestampAndPlayAction();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t sub_4AFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4B010()
{
  v0 = sub_3E5994();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = URLComponents.queryItems(named:)(105, 0xE100000000000000);
  if (v4[2])
  {
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    sub_3E5984();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      return sub_3E94C4();
    }
  }

  else
  {
  }

  return 0;
}

uint64_t SeekToTimestampAndPlayAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeekToTimestampAndPlayAction() + 24);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_4B1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_4B25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_3EC1F4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_4B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_3EC1F4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_4B364()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t StoreEpisodePlayAction.__allocating_init(adamID:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v21 = sub_3E5FC4();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC8ShelfKit22StoreEpisodePlayAction_adamID) = a1;
  (*(v11 + 16))(v13, a2, v10);
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  (*(v11 + 8))(a2, v10);
  (*(v4 + 8))(v6, v21);
  *(v14 + 16) = v16;
  *(v14 + 24) = v18;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 32;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
  sub_14A10(v9, v14 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v14;
}

uint64_t StoreEpisodePlayAction.init(adamID:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = sub_3E5FC4();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC8ShelfKit22StoreEpisodePlayAction_adamID) = a1;
  (*(v13 + 16))(v16, a2, v12, v14);
  v17 = sub_3EC634();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_3E5FB4();
  v18 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v20 = v19;
  (*(v13 + 8))(a2, v12);
  (*(v6 + 8))(v8, v23);
  *(v3 + 16) = v18;
  *(v3 + 24) = v20;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 32;
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v16, v12);
  sub_14A10(v11, v3 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v3;
}

uint64_t StoreEpisodePlayAction.playbackIntent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_3E7FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
  v8 = swift_allocObject();
  v15 = xmmword_3F5630;
  *(v8 + 16) = xmmword_3F5630;
  *(v8 + 32) = *(v0 + OBJC_IVAR____TtC8ShelfKit22StoreEpisodePlayAction_adamID);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for MediaIdentifier.episodes(_:), v4);
  v9 = sub_3E8944();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v10 = sub_3E7DA4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  (*(v11 + 104))(v13 + v12, enum case for PlaybackIntent.Option.startPlayback(_:), v10);
  sub_34BF8(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  return sub_3E7D74();
}

unint64_t sub_4BCD4(uint64_t a1)
{
  result = sub_4BCFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4BCFC()
{
  result = qword_4EAEF0;
  if (!qword_4EAEF0)
  {
    type metadata accessor for StoreEpisodePlayAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAEF0);
  }

  return result;
}

uint64_t type metadata accessor for StoreEpisodePlayAction()
{
  result = qword_4EAF20;
  if (!qword_4EAF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Action.init(uniqueId:title:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v24 = a7;
  v15 = sub_3E5FC4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_3E5FB4();
    a1 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v20 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v21 = sub_3EC1F4();
  (*(*(v21 - 8) + 32))(v8 + v20, a6, v21);
  sub_14A10(v24, v8 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v8;
}

uint64_t Action.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v51 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EAFE0);
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - v6;
  v47 = sub_3EC1F4();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3EBF94();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E5FC4();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EBDF4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v59 = a1;
  sub_3EBE04();
  v21 = sub_3EBDC4();
  v23 = v22;
  v24 = *(v15 + 8);
  v53 = v15 + 8;
  v54 = v14;
  v52 = v24;
  v24(v20, v14);
  v48 = v8;
  if (!v23)
  {
    sub_3E5FB4();
    v21 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v23 = v25;
    (*(v45 + 8))(v13, v46);
  }

  v26 = v56;
  *(v56 + 16) = v21;
  *(v26 + 24) = v23;
  sub_3EBE04();
  v27 = sub_3EBDC4();
  v29 = v28;
  v52(v18, v54);
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  sub_3EBE04();
  v30 = *(v55 + 16);
  v31 = v57;
  v32 = v58;
  v30(v10, v58, v57);
  sub_4CDFC();
  sub_3EC574();
  v33 = v60;
  if (v61)
  {
    v33 = 0;
  }

  *(v26 + 48) = v33;
  sub_3EBE04();
  v46 = v30;
  v30(v10, v32, v31);
  v34 = v49;
  v35 = v47;
  sub_3EC574();
  v36 = v50;
  v37 = *(v50 + 48);
  if (v37(v34, 1, v35) == 1)
  {
    v38 = v48;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    if (v37(v34, 1, v35) != 1)
    {
      sub_FCF8(v34, &qword_4EAFE0);
    }
  }

  else
  {
    v38 = v48;
    (*(v36 + 32))(v48, v34, v35);
  }

  v39 = v56;
  (*(v36 + 32))(v56 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v38, v35);
  sub_3EC634();
  v40 = v59;
  sub_3EBE04();
  v41 = v57;
  v42 = v58;
  v46(v10, v58, v57);
  v43 = v51;
  sub_3EC574();
  (*(v55 + 8))(v42, v41);
  v52(v40, v54);
  sub_14A10(v43, v39 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v39;
}

uint64_t Action.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t TapToRate.shelfUniqueId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Showcase.caption.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Action.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Action.__allocating_init(uniqueId:title:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v13 = sub_3E5FC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  if (!a2)
  {
    sub_3E5FB4();
    a1 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    a2 = v18;
    (*(v14 + 8))(v16, v13);
  }

  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  v19 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v20 = sub_3EC1F4();
  (*(*(v20 - 8) + 32))(v17 + v19, a6, v20);
  sub_14A10(v23, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t Action.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Action.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Action.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

uint64_t sub_4CA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_4CAD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_4CBFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  if (sub_3EBDA4())
  {
    result = 0;
  }

  else
  {
    result = sub_4CE50();
    if (v1)
    {
      sub_3EBF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
      sub_3EBFB4();
      (*(v4 + 8))(v6, v3);
      sub_FBD0(v10, v8, qword_4EB0E0);
      if (v9)
      {
        __swift_project_boxed_opaque_existential_1(v8, v9);
        type metadata accessor for Action();
        sub_3EC854();

        sub_FCF8(v10, qword_4EB0E0);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
      }

      else
      {
        sub_FCF8(v10, qword_4EB0E0);

        sub_FCF8(v8, qword_4EB0E0);
      }

      result = 0;
    }
  }

  *a1 = result;
  return result;
}

unint64_t sub_4CDFC()
{
  result = qword_4EAFE8;
  if (!qword_4EAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAFE8);
  }

  return result;
}

uint64_t sub_4CE50()
{
  result = sub_3EC244();
  if (!v0)
  {
    sub_1F958(v6, &v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
    v2 = type metadata accessor for Action();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      return v7;
    }

    else
    {
      v3 = sub_3ECEE4();
      sub_4D38C();
      swift_allocError();
      *v4 = v2;
      v4[1] = _swiftEmptyArrayStorage;
      (*(*(v3 - 8) + 104))(v4, enum case for JSONError.malformedDocument(_:), v3);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  return result;
}

uint64_t _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  __chkstk_darwin(v0);
  v1 = sub_3EBDA4();
  result = 0;
  if ((v1 & 1) == 0)
  {
    return sub_4CE50();
  }

  return result;
}

uint64_t sub_4D150@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4CE50();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for Action()
{
  result = qword_4EB018;
  if (!qword_4EB018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4D1F0()
{
  sub_3EC1F4();
  if (v0 <= 0x3F)
  {
    sub_4D334();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_4D334()
{
  if (!qword_4EB028)
  {
    sub_3EC634();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EB028);
    }
  }
}

unint64_t sub_4D38C()
{
  result = qword_4E9AB8;
  if (!qword_4E9AB8)
  {
    sub_3ECEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9AB8);
  }

  return result;
}

uint64_t ActionRunnerDelegatingActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_3E6654();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_3ED6B4();
  v4[17] = sub_3ED6A4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  v7 = swift_task_alloc();
  v4[18] = v7;
  *v7 = v4;
  v7[1] = sub_4D520;

  return BaseObjectGraph.inject<A>(_:)(v4 + 7, v6, v6);
}

uint64_t sub_4D520()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_3ED684();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_4D9A8;
  }

  else
  {
    v5 = sub_4D680;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4D680()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v13 = v0[11];
  v6 = v0[8];
  v0[22] = v0[7];
  ObjectType = swift_getObjectType();
  v8 = *(v3 + 16);
  v0[5] = v8;
  v0[6] = *(v3 + 24);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0Tm, v5, v8);
  (*(v2 + 104))(v1, enum case for ActionMetricsBehavior.notProcessed(_:), v4);
  v0[23] = ActionRunner.perform(_:withMetrics:asPartOf:)(v0 + 2, v1, v13, ObjectType, v6);
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_4D810;
  v11 = v0[9];

  return Promise.then()(v11);
}

uint64_t sub_4D810()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_4DA14;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_4D92C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_4D92C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4D9A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4DA14()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2368C;

  return ActionRunnerDelegatingActionImplementation.perform(_:asPartOf:)(a1, a2, a3, a4);
}

uint64_t sub_4DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, WitnessTable);
}

ShelfKit::AlertActionStyle_optional __swiftcall AlertActionStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4AFD58;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

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

  *v3 = v7;
  return result;
}

uint64_t AlertActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_4DCA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x8000000000421FD0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0x8000000000421FD0;
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
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_4DD4C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_4DDD4()
{
  sub_3ED394();
}

Swift::Int sub_4DE48()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_4DECC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4AFD58;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_4DF2C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000000421FD0;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t AlertAction.__allocating_init(title:message:isCancelable:buttonActions:style:artwork:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char *a7, uint64_t a8, unsigned __int8 a9)
{
  v32 = a2;
  v30 = a1;
  v31 = a9;
  v15 = sub_3E5FC4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *a7;
  v21 = (v19 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);
  *v21 = a3;
  v21[1] = a4;
  *(v19 + OBJC_IVAR____TtC8ShelfKit11AlertAction_isCancelable) = a5;
  *(v19 + OBJC_IVAR____TtC8ShelfKit11AlertAction_buttonActions) = a6;
  *(v19 + OBJC_IVAR____TtC8ShelfKit11AlertAction_style) = v20;
  sub_4E45C(a8, v19 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork);
  v22 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v23 = sub_3EC634();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v26 = v25;
  sub_FCF8(a8, &qword_4F1D50);
  (*(v16 + 8))(v18, v15);
  *(v19 + 16) = v24;
  *(v19 + 24) = v26;
  v27 = v32;
  *(v19 + 32) = v30;
  *(v19 + 40) = v27;
  *(v19 + 48) = v31;
  return v19;
}

uint64_t AlertAction.init(title:message:isCancelable:buttonActions:style:artwork:presentationStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _BYTE *a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v34 = a6;
  v35 = a8;
  v33 = a5;
  v39 = a2;
  v37 = a1;
  v38 = a9;
  v36 = sub_3E5FC4();
  v14 = *(v36 - 8);
  __chkstk_darwin(v36);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_3EC1F4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v21 - 8);
  v23 = &v32[-v22];
  LOBYTE(v22) = *a7;
  v24 = (v10 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);
  *v24 = a3;
  v24[1] = a4;
  *(v10 + OBJC_IVAR____TtC8ShelfKit11AlertAction_isCancelable) = v33;
  v25 = v35;
  *(v10 + OBJC_IVAR____TtC8ShelfKit11AlertAction_buttonActions) = v34;
  *(v10 + OBJC_IVAR____TtC8ShelfKit11AlertAction_style) = v22;
  sub_4E45C(v25, v10 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork);
  v26 = sub_3EC634();
  (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v27 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v29 = v28;
  sub_FCF8(v25, &qword_4F1D50);
  (*(v14 + 8))(v16, v36);
  *(v10 + 16) = v27;
  *(v10 + 24) = v29;
  v30 = v39;
  *(v10 + 32) = v37;
  *(v10 + 40) = v30;
  *(v10 + 48) = v38;
  (*(v18 + 32))(v10 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v20, v17);
  sub_14A10(v23, v10 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v10;
}

uint64_t sub_4E45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);

  return v1;
}

uint64_t sub_4E5DC()
{

  return sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork, &qword_4F1D50);
}

uint64_t AlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork, &qword_4F1D50);
  return v0;
}

uint64_t AlertAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork, &qword_4F1D50);

  return swift_deallocClassInstance();
}

uint64_t static AlertAction.alertAuthenticationActionAccountCreationEnabled.getter()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_3E7784();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v9 = (v8 + OBJC_IVAR____TtC8ShelfKit11AlertAction_message);
  *v9 = 0;
  v9[1] = 0;
  *(v8 + OBJC_IVAR____TtC8ShelfKit11AlertAction_isCancelable) = 1;
  *(v8 + OBJC_IVAR____TtC8ShelfKit11AlertAction_buttonActions) = 0;
  *(v8 + OBJC_IVAR____TtC8ShelfKit11AlertAction_style) = 1;
  sub_4E45C(v6, v8 + OBJC_IVAR____TtC8ShelfKit11AlertAction_artwork);
  v10 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v11 = sub_3EC634();
  (*(*(v11 - 8) + 56))(v8 + v10, 1, 1, v11);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v12 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  sub_FCF8(v6, &qword_4F1D50);
  *(v8 + 16) = v12;
  *(v8 + 24) = v14;
  *(v8 + 32) = xmmword_3F7510;
  *(v8 + 48) = 32;
  return v8;
}

unint64_t sub_4EAA8()
{
  result = qword_4EB168;
  if (!qword_4EB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB168);
  }

  return result;
}

uint64_t type metadata accessor for AlertAction()
{
  result = qword_4EB198;
  if (!qword_4EB198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4EB60()
{
  sub_4EC44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_4EC44()
{
  if (!qword_4EB1A8)
  {
    sub_3E7784();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EB1A8);
    }
  }
}

uint64_t AlertSheetAction.init(title:message:buttons:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;
  v9 = *(type metadata accessor for AlertSheetAction() + 28);
  v10 = sub_3EC1F4();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a7[v9], a6, v10);
}

uint64_t type metadata accessor for AlertSheetAction()
{
  result = qword_4EB2E8;
  if (!qword_4EB2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NSUserDefaults.Keys.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Header.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AlertSheetAction.buttons.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AlertSheetAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlertSheetAction() + 28);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlertSheetAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlertSheetAction() + 28);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_4EFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static AlertSheetAction.deleteStation(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v21._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x8000000000424610;
  v31._countAndFlagsBits = 0xD000000000000026;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v6.super.isa = v5;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_3E5A74(v31, v34, v6, v37, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_3F5630;
  v24 = a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_4F39C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;

  v10 = sub_3ED214();
  v25 = v11;
  v26 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB288);
  sub_3ECC24();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_3F5310;
  v13 = [v4 mainBundle];
  v22._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0x435F4E4F49544341;
  v32._object = 0xED00004C45434E41;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v14.super.isa = v13;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_3E5A74(v32, v35, v14, v38, v22);

  sub_3ECBC4();
  v27 = 0u;
  v28 = 0;
  sub_3ECBF4();
  v15 = [v4 mainBundle];
  v23._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0x535F4554454C4544;
  v33._object = 0xEE004E4F49544154;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v16.super.isa = v15;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_3E5A74(v33, v36, v16, v39, v23);

  sub_3ECBB4();
  v29 = type metadata accessor for DeleteStationAction();
  v30 = sub_4F3F0();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v27);
  v18 = *(v24 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID);
  v19 = v18;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *boxed_opaque_existential_0Tm = v18;
  boxed_opaque_existential_0Tm[1] = 0;
  *(boxed_opaque_existential_0Tm + 16) = 1;
  sub_3ECBF4();
  type metadata accessor for AlertSheetAction();
  result = _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *a2 = v26;
  a2[1] = v25;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v12;
  return result;
}

unint64_t sub_4F39C()
{
  result = qword_4EB280;
  if (!qword_4EB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB280);
  }

  return result;
}

unint64_t sub_4F3F0()
{
  result = qword_5010D0;
  if (!qword_5010D0)
  {
    type metadata accessor for DeleteStationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5010D0);
  }

  return result;
}

uint64_t sub_4F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4F51C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4F5C0()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_4F65C();
    if (v1 <= 0x3F)
    {
      sub_3EC1F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_4F65C()
{
  if (!qword_4EB2F8)
  {
    sub_3ECC24();
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4EB2F8);
    }
  }
}

uint64_t AnyReferenceLink.base.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_1D4F0(a1, v1);
}

uint64_t AnyActionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3EE9D4();
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3ED0C4();

  (*(v6 + 8))(v8, v5);
  if (!*&v11[0])
  {
    sub_4F8F0();
  }

  sub_DBAE8(a1, v11);
  if (!v2)
  {
    sub_1D4F0(v11, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_4F8F0()
{
  result = qword_4EB340;
  if (!qword_4EB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB340);
  }

  return result;
}

uint64_t AnyActionModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3EEA04();
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3ED0C4();

  (*(v4 + 8))(v6, v3);
  if (!v8)
  {
    sub_4F8F0();
  }

  return sub_DBD04(v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4FB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_4FB64(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t BookmarkEpisodeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BookmarkEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BookmarkEpisodeAction()
{
  result = qword_4EB3A0;
  if (!qword_4EB3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BookmarkEpisodeAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BookmarkEpisodeAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BookmarkEpisodeAction.intent.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_3F5630;
  v2 = *v0;
  v3 = *(v0 + 8);
  *(v1 + 32) = *v0;
  *(v1 + 40) = v3;
  v4 = *(v0 + 16);
  *(v1 + 48) = v4;
  sub_3DE90(v2, v3, v4);

  return sub_3E7024();
}

uint64_t BookmarkEpisodeAction.init(episodeID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for BookmarkEpisodeAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_4FE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4FF3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_4FFE0()
{
  result = qword_4F1A30;
  if (!qword_4F1A30)
  {
    sub_3E7044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1A30);
  }

  return result;
}

uint64_t ChannelOfferAction.buyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_buyParams);

  return v1;
}

uint64_t ChannelOfferAction.completionHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_completionHandlers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *ChannelOfferAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v61 = *v3;
  v5 = sub_3EBF94();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBDF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v60 = &v52 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  *&v3[OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_completionHandlers] = _swiftEmptyArrayStorage;
  v56 = a1;
  sub_3EBE04();
  v18 = sub_3EBDC4();
  v20 = v19;
  v52 = v8;
  v23 = *(v8 + 8);
  v22 = v8 + 8;
  v21 = v23;
  v23(v17, v7);
  if (v20)
  {
    v61 = v21;
    v24 = &v3[OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_buyParams];
    *v24 = v18;
    v24[1] = v20;
    v25 = v56;
    sub_3EBE04();
    sub_3EBDC4();
    v27 = v26;
    if (v26)
    {
      v28 = v62;
      v29 = sub_3E9494();
      if (v28)
      {

        v30 = sub_3E9484();

        v31 = v61;
        v61(v15, v7);
        v62 = 0;
      }

      else
      {
        v30 = v29;
        v62 = 0;
        v31 = v61;
        v61(v15, v7);
      }
    }

    else
    {
      v31 = v61;
      v61(v15, v7);
      v30 = 0;
    }

    v35 = &v3[OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_channelAdamId];
    *v35 = v30;
    v35[8] = v27 == 0;
    v36 = v60;
    sub_3EBE04();
    sub_3EBDC4();
    v38 = v37;
    v55 = v22;
    if (v37)
    {
      v39 = v62;
      v40 = sub_3E9494();
      v41 = v39;
      v42 = v58;
      if (v39)
      {
        v43 = v25;

        v44 = sub_3E9484();

        v61(v60, v7);
        v41 = 0;
      }

      else
      {
        v44 = v40;
        v43 = v25;
        v61(v60, v7);
      }
    }

    else
    {
      v43 = v25;
      v31(v36, v7);
      v44 = 0;
      v42 = v58;
      v41 = v62;
    }

    v45 = &v3[OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_showAdamId];
    *v45 = v44;
    v45[8] = v38 == 0;
    v46 = v53;
    (*(v52 + 16))(v53, v43, v7);
    v47 = v54;
    v48 = v57;
    v49 = v59;
    (*(v42 + 16))(v54, v57, v59);
    v50 = Action.init(deserializing:using:)(v46, v47);
    if (!v41)
    {
      v3 = v50;
    }

    (*(v42 + 8))(v48, v49);
    v61(v43, v7);
  }

  else
  {
    v32 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v33 = *v3;
    *v34 = 0x6D61726150797562;
    v34[1] = 0xE900000000000073;
    v34[2] = v33;
    (*(*(v32 - 8) + 104))(v34, enum case for JSONError.missingProperty(_:), v32);
    swift_willThrow();
    (*(v58 + 8))(v57, v59);
    v21(v56, v7);

    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_5086C()
{
}

uint64_t ChannelOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t ChannelOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelOfferAction()
{
  result = qword_4EB400;
  if (!qword_4EB400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClosureAction.closure.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);

  return v1;
}

uint64_t ClosureAction.__allocating_init(title:presentationStyle:actionMetrics:closure:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v26 = a1;
  v27 = a2;
  v9 = sub_3E5FC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v14 = a5;
  v14[1] = a6;
  v15 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v16 = sub_3EC1F4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13 + v15, a4, v16);
  v18 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v19 = sub_3EC634();
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);

  sub_3E5FB4();
  v20 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v22 = v21;

  (*(v17 + 8))(a4, v16);
  (*(v10 + 8))(v12, v9);
  *(v13 + 16) = v20;
  *(v13 + 24) = v22;
  v23 = v27;
  *(v13 + 32) = v26;
  *(v13 + 40) = v23;
  *(v13 + 48) = v28;
  return v13;
}

uint64_t ClosureAction.init(title:presentationStyle:actionMetrics:closure:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v11 = sub_3E5FC4();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_3EC1F4();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v7 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v22 = a5;
  v22[1] = a6;
  v23 = a4;
  (*(v18 + 16))(v21, a4, v17, v19);
  v24 = sub_3EC634();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);

  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;

  (*(v18 + 8))(v23, v17);
  (*(v31 + 8))(v13, v32);
  *(v7 + 16) = v25;
  *(v7 + 24) = v27;
  v28 = v34;
  *(v7 + 32) = v33;
  *(v7 + 40) = v28;
  *(v7 + 48) = v35;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v21, v17);
  sub_14A10(v16, v7 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v7;
}

uint64_t ClosureAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return v0;
}

uint64_t ClosureAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t ClosureAction.copy(with:)(uint64_t a1)
{
  v21[1] = a1;
  v25 = sub_3E5FC4();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3EC1F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  v24 = *(v1 + 32);
  v22 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;

  sub_136A40();
  sub_3EC534();
  sub_3EC1C4();
  v10 = OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure;
  v12 = *(v1 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  v11 = *(v1 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure + 8);
  v13 = swift_allocObject();
  v14 = (v13 + v10);
  *v14 = v12;
  v14[1] = v11;
  (*(v6 + 16))(v13 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v8, v5);
  v15 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v16 = sub_3EC634();
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);

  sub_3E5FB4();
  v17 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v19 = v18;
  (*(v23 + 8))(v3, v25);
  (*(v6 + 8))(v8, v5);
  *(v13 + 16) = v17;
  *(v13 + 24) = v19;
  *(v13 + 32) = v24;
  *(v13 + 40) = v9;
  *(v13 + 48) = v22;
  return v13;
}

uint64_t type metadata accessor for ClosureAction()
{
  result = qword_4EB4F8;
  if (!qword_4EB4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_51700(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_completionHandlers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_DFD9C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_DFD9C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_51CA4;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t CompletableAction.addCompletionHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a4 + 24);

  v10 = v9(v19, a3, a4);
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_DFD9C(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_DFD9C((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_51BFC;
  v17[5] = v8;
  return v10(v19, 0);
}

uint64_t sub_51948()
{
  v1 = OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_completionHandlers;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall CompletableAction.removeAllCompletionHandlers()()
{
  v1 = (*(v0 + 24))(v3);
  *v2 = _swiftEmptyArrayStorage;

  v1(v3, 0);
}

uint64_t sub_51A20(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18ChannelOfferAction_completionHandlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v7 = 0;
  v8 = a1 & 1;
  v9 = v4 + 40;
  while (v7 < *(v4 + 16))
  {
    ++v7;
    v10 = *(v9 - 8);
    v11 = v8;

    v10(&v11);

    v9 += 16;
    if (v5 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CompletableAction.performCompletionHandlers(success:)(Swift::Bool success)
{
  v3 = (*(v1 + 8))();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = success;
    v8 = v3 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v9 = *(v8 - 8);
      v10 = v7;

      v9(&v10);

      v8 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_51BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t ContextActionsConfiguration.__allocating_init(asPartOf:presentationSource:previewModel:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  v10 = sub_3E64E4();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = v8 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v8 + 16) = a1;
  v12 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(a2, v8 + v12, &qword_4EB5B8);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(a3, v8 + v13, &qword_4EB5C0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v15 = sub_3E6434();
  (*(*(v15 - 8) + 32))(v8 + v14, a4, v15);
  return v8;
}

uint64_t ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  v10 = sub_3E64E4();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = v4 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v4 + 16) = a1;
  v12 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(a2, v4 + v12, &qword_4EB5B8);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(a3, v4 + v13, &qword_4EB5C0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v15 = sub_3E6434();
  (*(*(v15 - 8) + 32))(v4 + v14, a4, v15);
  return v4;
}

uint64_t sub_51F9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_5200C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_FBD0(a1, &v10 - v5, &qword_4EB5B8);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(v6, v7 + v8, &qword_4EB5B8);
  return swift_endAccess();
}

uint64_t sub_520EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  return sub_FBD0(v1 + v3, a1, &qword_4EB5B8);
}

uint64_t sub_52154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(a1, v1 + v3, &qword_4EB5B8);
  return swift_endAccess();
}

uint64_t sub_52224(uint64_t a1, uint64_t *a2)
{
  sub_FBD0(a1, v6, &qword_4EB5C0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(v6, v3 + v4, &qword_4EB5C0);
  return swift_endAccess();
}

uint64_t sub_522B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  return sub_FBD0(v1 + v3, a1, &qword_4EB5C0);
}

uint64_t sub_52318(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(a1, v1 + v3, &qword_4EB5C0);
  return swift_endAccess();
}

uint64_t sub_523E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  swift_beginAccess();
  v5 = sub_3E6434();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_52474(uint64_t a1, uint64_t *a2)
{
  v4 = sub_3E6434();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_5258C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  swift_beginAccess();
  v4 = sub_3E6434();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_52614(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  swift_beginAccess();
  v4 = sub_3E6434();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ContextActionsConfiguration.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource, &qword_4EB5B8);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel, &qword_4EB5C0);
  v1 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v2 = sub_3E6434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContextActionsConfiguration.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource, &qword_4EB5B8);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel, &qword_4EB5C0);
  v1 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v2 = sub_3E6434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ContextActionsConfiguration.perform(_:)(void *a1)
{
  v41 = a1;
  v2 = sub_3EC204();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3ECE84();
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E6654();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_FBD0(v1 + v18, v17, &qword_4EB5B8);
  v19 = sub_3E64E4();
  if ((*(*(v19 - 8) + 48))(v17, 1, v19))
  {
    sub_FCF8(v17, &qword_4EB5B8);
LABEL_3:
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v20 = v42;
    sub_3ECB94();

    (*(v43 + 8))(v7, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v45 + 104))(v44, enum case for ActionOutcome.unsupported(_:), v46);
    return sub_3ECDB4();
  }

  v39 = v11;
  v40 = v8;
  v22 = v9;
  v23 = v1;
  v24 = sub_3E64A4();
  sub_FCF8(v17, &qword_4EB5B8);
  if (!v24)
  {
    goto LABEL_3;
  }

  v25 = v24;
  v26 = UIResponder.nearestActionRunner.getter();
  v28 = v27;

  if (v26)
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v29 = sub_3E6434();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v47[3] = type metadata accessor for ContextActionsConfiguration(0);
    v47[0] = v23;

    v30 = [v25 view];
    v31 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v14, v47, v30);

    sub_FCF8(v14, &qword_5005B0);
    sub_FCF8(v47, &unk_501090);
    ObjectType = swift_getObjectType();
    v34 = v39;
    v33 = v40;
    (*(v22 + 104))(v39, enum case for ActionMetricsBehavior.fromAction(_:), v40);
    v35 = ActionRunner.perform(_:withMetrics:asPartOf:)(v41, v34, v31, ObjectType, v28);

    swift_unknownObjectRelease();

    (*(v22 + 8))(v34, v33);
    return v35;
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    v36 = v42;
    sub_3ECB94();

    (*(v43 + 8))(v7, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v45 + 104))(v44, enum case for ActionOutcome.unsupported(_:), v46);
    v37 = sub_3ECDB4();

    return v37;
  }
}

void sub_52FE4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_53044()
{
  v1 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_53090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_53148(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_531A8()
{
  v1 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_531FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NowPlayingContextActionConfiguration.__allocating_init(asPartOf:playerResponseItem:modelObject:presentationSource:performPreviewActionBlock:interactionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  *(v14 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem) = 0;
  v16 = (v14 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);
  *v16 = 0;
  v16[1] = 0;
  *(v14 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject) = a3;
  swift_beginAccess();
  *(v14 + v15) = a2;
  *v16 = a5;
  v16[1] = a6;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v17 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  v18 = sub_3E64E4();
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = v14 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v14 + 16) = a1;
  v20 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(a4, v14 + v20, &qword_4EB5B8);
  swift_endAccess();
  v21 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(v25, v14 + v21, &qword_4EB5C0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v23 = sub_3E6434();
  (*(*(v23 - 8) + 32))(v14 + v22, a7, v23);
  return v14;
}

uint64_t NowPlayingContextActionConfiguration.init(asPartOf:playerResponseItem:modelObject:presentationSource:performPreviewActionBlock:interactionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  *(v7 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem) = 0;
  v15 = (v7 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject) = a3;
  swift_beginAccess();
  *(v7 + v14) = a2;
  *v15 = a5;
  v15[1] = a6;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v16 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  v17 = sub_3E64E4();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  v18 = v7 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v7 + 16) = a1;
  v19 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(a4, v7 + v19, &qword_4EB5B8);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(v24, v7 + v20, &qword_4EB5C0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v22 = sub_3E6434();
  (*(*(v22 - 8) + 32))(v7 + v21, a7, v22);
  return v7;
}

void sub_5366C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);
  if (v1)
  {

    v1(v2);

    sub_16AC0(v1);
  }
}

uint64_t sub_53704()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);

  return sub_16AC0(v1);
}

uint64_t NowPlayingContextActionConfiguration.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource, &qword_4EB5B8);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel, &qword_4EB5C0);
  v1 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v2 = sub_3E6434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_16AC0(*(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock));
  return v0;
}

uint64_t NowPlayingContextActionConfiguration.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource, &qword_4EB5B8);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel, &qword_4EB5C0);
  v1 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v2 = sub_3E6434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem);

  sub_16AC0(*(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock));

  return swift_deallocClassInstance();
}

void *NowPlayingTranscriptSelectionContextActionConfiguration.selectedText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_selectedText);
  v2 = v1;
  return v1;
}

uint64_t sub_539CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCURadar.ReportContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NowPlayingTranscriptSelectionContextActionConfiguration.__allocating_init(asPartOf:modelObject:selectedText:referenceStartTime:referenceEndTime:playerStartTime:reportContent:alignmentCoordinator:presentationSource:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v39 = a2;
  v40 = a1;
  v41 = a13;
  v37 = a11;
  v38 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v19 - 8);
  v21 = &v37 - v20;
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_selectedText) = a3;
  v23 = v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_referenceStartTime;
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  v24 = v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_referenceEndTime;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  v25 = v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_playerStartTime;
  *v25 = a8;
  *(v25 + 8) = a9 & 1;
  sub_54054(a10, v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_reportContent);
  sub_1D4F0(v37, v22 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_alignmentCoordinator);
  v26 = sub_3E64E4();
  v27 = *(v26 - 8);
  (*(v27 + 32))(v21, v38, v26);
  v28 = *(v27 + 56);
  v28(v21, 0, 1, v26);
  v29 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  *(v22 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem) = 0;
  v30 = (v22 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);
  *v30 = 0;
  v30[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject) = v39;
  swift_beginAccess();
  *(v22 + v29) = 0;
  *v30 = 0;
  v30[1] = 0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v28((v22 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource), 1, 1, v26);
  v31 = v22 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  *(v22 + 16) = v40;
  v32 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(v21, v22 + v32, &qword_4EB5B8);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(v42, v22 + v33, &qword_4EB5C0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v35 = sub_3E6434();
  (*(*(v35 - 8) + 32))(v22 + v34, v41, v35);
  return v22;
}

uint64_t NowPlayingTranscriptSelectionContextActionConfiguration.init(asPartOf:modelObject:selectedText:referenceStartTime:referenceEndTime:playerStartTime:reportContent:alignmentCoordinator:presentationSource:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v39 = a2;
  v40 = a1;
  v41 = a13;
  v37 = a11;
  v38 = a12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v20 - 8);
  v22 = &v37 - v21;
  *(v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_selectedText) = a3;
  v23 = v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_referenceStartTime;
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  v24 = v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_referenceEndTime;
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  v25 = v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_playerStartTime;
  *v25 = a8;
  *(v25 + 8) = a9 & 1;
  sub_54054(a10, v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_reportContent);
  sub_1D4F0(v37, v13 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_alignmentCoordinator);
  v26 = sub_3E64E4();
  v27 = *(v26 - 8);
  (*(v27 + 32))(v22, v38, v26);
  v28 = *(v27 + 56);
  v28(v22, 0, 1, v26);
  v29 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  *(v13 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem) = 0;
  v30 = (v13 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock);
  *v30 = 0;
  v30[1] = 0;
  *(v13 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject) = v39;
  swift_beginAccess();
  *(v13 + v29) = 0;
  *v30 = 0;
  v30[1] = 0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v28((v13 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource), 1, 1, v26);
  v31 = v13 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  *(v13 + 16) = v40;
  v32 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  sub_51F9C(v22, v13 + v32, &qword_4EB5B8);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  sub_51F9C(v42, v13 + v33, &qword_4EB5C0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v35 = sub_3E6434();
  (*(*(v35 - 8) + 32))(v13 + v34, v41, v35);
  return v13;
}

uint64_t sub_54054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KCURadar.ReportContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_54114()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_alignmentCoordinator);
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_reportContent;

  return sub_54270(v1);
}

uint64_t NowPlayingTranscriptSelectionContextActionConfiguration.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource, &qword_4EB5B8);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel, &qword_4EB5C0);
  v1 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_context;
  v2 = sub_3E6434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_16AC0(*(v0 + OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_performPreviewActionBlock));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_alignmentCoordinator);
  sub_54270(v0 + OBJC_IVAR____TtC8ShelfKit55NowPlayingTranscriptSelectionContextActionConfiguration_reportContent);
  return v0;
}

uint64_t sub_54270(uint64_t a1)
{
  v2 = type metadata accessor for KCURadar.ReportContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingTranscriptSelectionContextActionConfiguration.__deallocating_deinit()
{
  NowPlayingTranscriptSelectionContextActionConfiguration.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_543A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5A488(*a1);
  *a2 = result;
  return result;
}

void *static ContextActionType.createSubMenus(actions:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v4)
      {
        v10 = sub_3EE3F4();
      }

      else
      {
        if (v3 >= *(v55 + 16))
        {
          goto LABEL_57;
        }

        v10 = *(v1 + 8 * v3 + 32);
      }

      v11 = v10;
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v2 = sub_3EE5A4();
        goto LABEL_3;
      }

      v13 = [v10 identifier];
      v14 = sub_3ED244();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      ContextActionType.init(rawValue:)(v17);
      v18 = v56;
      v9 = v11;
      if (v56 == 47)
      {
        sub_3ED564();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();

        goto LABEL_7;
      }

      v19 = v5;
      v20 = v1;
      v1 = v2;
      v21 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      LOBYTE(v56) = v19;
      v23 = sub_553C0(v18);
      v25 = v19[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_56;
      }

      v29 = v24;
      if (v19[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v34 = v23;
      sub_58B68();
      v23 = v34;
      v31 = v19;
      if ((v29 & 1) == 0)
      {
LABEL_23:
        v31[(v23 >> 6) + 8] |= 1 << v23;
        *(v31[6] + v23) = v18;
        *(v31[7] + 8 * v23) = v9;
        v32 = v31[2];
        v27 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v27)
        {
          goto LABEL_58;
        }

        v6 = v31;
        v31[2] = v33;
        goto LABEL_6;
      }

LABEL_5:
      v6 = v31;
      v7 = v31[7];
      v8 = *(v7 + 8 * v23);
      *(v7 + 8 * v23) = v9;

      v9 = v8;
LABEL_6:

      v4 = v21;
      v2 = v1;
      v1 = v20;
      v5 = v6;
LABEL_7:
      ++v3;
      if (v12 == v2)
      {
        goto LABEL_28;
      }
    }

    sub_55BA4(v28, isUniquelyReferenced_nonNull_native);
    v23 = sub_553C0(v18);
    if ((v29 & 1) != (v30 & 1))
    {
      result = sub_3EE894();
      __break(1u);
      return result;
    }

LABEL_22:
    v31 = v19;
    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_28:
  v35 = 0;
  v1 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v36 = 0;
    if (v35 <= 0x2F)
    {
      v37 = 47;
    }

    else
    {
      v37 = v35;
    }

    v38 = &unk_4B0278;
    while (1)
    {
      if (v35 == v37)
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v5[2])
      {
        v39 = sub_553C0(v38[v35]);
        if (v40)
        {
          break;
        }
      }

      --v37;
      ++v38;
      if (v35 - 47 == --v36)
      {
        goto LABEL_40;
      }
    }

    v41 = *(v5[7] + 8 * v39);
    sub_3ED564();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    v42 = v35 - 46;
    sub_3ED604();
    v1 = _swiftEmptyArrayStorage;
    v35 = v35 - v36 + 1;
  }

  while (v42 != v36);
LABEL_40:

  sub_40F40(v43);
  v44 = sub_5A498(_swiftEmptyArrayStorage);

  for (i = 0; i != 7; ++i)
  {
    if (v44[2])
    {
      v46 = *(&off_4AFDA8 + i + 32);
      v47 = sub_55354(*(&off_4AFDA8 + i + 32));
      if (v48)
      {
        v49 = *(v44[7] + 8 * v47);
        if (v46)
        {
          v50 = -1;
        }

        else
        {
          v50 = 1;
        }

        if (v49 >> 62)
        {
          sub_36174(0, &unk_5010A0);

          v51 = sub_3EE594();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_3EE814();
          sub_36174(0, &unk_5010A0);
          v51 = v49;
        }

        sub_36174(0, &qword_4EB5D0);
        v58._countAndFlagsBits = 0;
        v58._object = 0xE000000000000000;
        v59.value._countAndFlagsBits = 0;
        v59.value._object = 0;
        v57.value.super.isa = 0;
        v57.is_nil = 0;
        v52.value = (&dword_0 + 1);
        sub_3EDE14(v58, v59, v57, v52, v50, v51, v54);
        sub_3ED564();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
      }
    }
  }

  return _swiftEmptyArrayStorage;
}