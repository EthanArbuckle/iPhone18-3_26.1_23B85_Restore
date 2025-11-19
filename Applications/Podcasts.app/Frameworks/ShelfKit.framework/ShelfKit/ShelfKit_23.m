uint64_t sub_26CC74()
{
  v1 = (*v0 >> 57) & 0x78 | *v0 & 7;
  switch(v1)
  {
    case 31:
      return 0x656873696E69662ELL;
    case 95:
      return 0x656C64692ELL;
    case 63:
      return 0x737365636F72702ELL;
  }

  v3 = *v0 & 0xF000000000000007;
  if (v3 == 0xF000000000000007)
  {
    v4._countAndFlagsBits = 0xD000000000000018;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000011;
  }

  if (v3 == 0xF000000000000007)
  {
    v5 = ".feedUpdateFailed";
  }

  else
  {
    v5 = "isImplicitlyFollowed";
  }

  v4._object = (v5 | 0x8000000000000000);
  sub_3ED3D4(v4);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_3ED3D4(v6);
  return 0x6572756C6961662ELL;
}

uint64_t sub_26CD94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696B636F6C62;
  }

  else
  {
    v3 = 0x6B636F6C426E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEB00000000676E69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696B636F6C62;
  }

  else
  {
    v5 = 0x6B636F6C426E6F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000676E69;
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

Swift::Int sub_26CE44()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_26CED0()
{
  sub_3ED394();
}

Swift::Int sub_26CF48()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_26CFD0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B28F0;
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

void sub_26D030(uint64_t *a1@<X8>)
{
  v2 = 0x6B636F6C426E6F6ELL;
  if (*v1)
  {
    v2 = 0x676E696B636F6C62;
  }

  v3 = 0xEB00000000676E69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D078(uint64_t a1)
{
  v2 = sub_26D9CC();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

uint64_t sub_26D0B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_26D12C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6660);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater__status;
  *&v29 = 0xB000000000000007;
  sub_3E9E64();
  (*(v9 + 32))(v2 + v12, v11, v8);
  *(v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_internalStatusSubscription) = 0;

  *(v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_showUpdaterType) = sub_26DFD8(v13) & 1;
  v14 = *(a1 + 40);
  v15 = (v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_podcastUUID);
  *v15 = *(a1 + 32);
  v15[1] = v14;

  v16 = sub_3E8624();
  v18 = v17;
  if (v16 == sub_3E8624() && v18 == v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_3EE804();
  }

  *(v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_isImplicitlyFollowed) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC444();
  sub_3ECD14();
  sub_1FE90(&v29, v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_libraryActionController);
  if ((*(v2 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_isImplicitlyFollowed) & 1) != 0 && (v22 = sub_3E7424(), v30 = v22, v31 = sub_26E208(), boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v29), (*(*(v22 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.renderImplicitFollowsAsLocalShows(_:), v22), LOBYTE(v22) = sub_3E6C64(), __swift_destroy_boxed_opaque_existential_1Tm(&v29), (v22 & 1) == 0))
  {
    sub_3E98E4();
    v24 = sub_3E99F4();
    v25 = sub_3ED9D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "LocalShowPageFeedUpdater is supposed to be only used for local pages, and Implicit Follows should NOT be rendering in local pages if RenderImplicitFollowsAsLocalShows is OFF.", v26, 2u);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_26D500()
{
  v1 = OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater__status;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6660);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_libraryActionController);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalShowPageFeedUpdater()
{
  result = qword_4FCDF8;
  if (!qword_4FCDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D630()
{
  sub_26D6E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26D6E8()
{
  if (!qword_4FCE08)
  {
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FCE08);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8ShelfKit15FeedUpdateErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit29LocalShowPageFeedUpdaterErrorO(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit30LocalShowPageFeedUpdaterStatusO(void *a1)
{
  v1 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v1 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26D7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  if (v3 + 1 < 2)
  {
    v3 = 0;
  }

  if (v3 >= 4)
  {
    return v3 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((124 - a2) >> 2) | (32 * (124 - a2)) | ((((124 - a2) >> 2) | (32 * (124 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26D87C(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x7C)
  {
    *result = 0;
    *result = a2 - 125;
  }

  else if (a2)
  {
    *result = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
  }

  return result;
}

unint64_t sub_26D8C8()
{
  result = qword_4FCEB0;
  if (!qword_4FCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCEB0);
  }

  return result;
}

unint64_t sub_26D920()
{
  result = qword_4FCEB8;
  if (!qword_4FCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCEB8);
  }

  return result;
}

unint64_t sub_26D978()
{
  result = qword_4FCEC0;
  if (!qword_4FCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCEC0);
  }

  return result;
}

unint64_t sub_26D9CC()
{
  result = qword_4FCEC8;
  if (!qword_4FCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCEC8);
  }

  return result;
}

unint64_t sub_26DA20@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return sub_26DF98(v2);
}

unint64_t *sub_26DA2C@<X0>(unint64_t *result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = 0x3000000000000007;
  if (a2)
  {
    v4 = *result;
    if (((*result >> 57) & 0xF8 | *result & 7 | 0x20) != 0x7F)
    {
      v5 = a3;
      result = sub_26DE1C(*result);
      a3 = v5;
      v3 = v4;
    }
  }

  *a3 = v3;
  return result;
}

uint64_t sub_26DAA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_26DAE0(unint64_t *a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_3E98E4();

    sub_26DDDC(v6);
    v9 = sub_3E99F4();
    v10 = sub_3ED9D4();
    sub_26DE38(v6);

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v11 = 136315650;
      LOBYTE(v23) = *(v8 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_showUpdaterType);
      sub_26D8C8();
      v12 = sub_3EE7A4();
      v14 = sub_2EDD0(v12, v13, &v24);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v23 = v6;
      sub_26DDDC(v6);
      v15 = sub_26CC74();
      v17 = v16;
      sub_26DE38(v6);
      v18 = sub_2EDD0(v15, v17, &v24);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2080;
      v19 = *(v8 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_podcastUUID);
      v20 = *(v8 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_podcastUUID + 8);

      v21 = sub_2EDD0(v19, v20, &v24);

      *(v11 + 24) = v21;
      _os_log_impl(&dword_0, v9, v10, "LocalShowPageFeedUpdater of type: '%s' transitioning to '%s' for podcast with UUID: %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v6;
    sub_26DDDC(v6);
    return sub_3E9EB4();
  }

  return result;
}

unint64_t sub_26DDDC(unint64_t result)
{
  v1 = (result >> 57) & 0x78 | result & 7;
  if (v1 != 31 && v1 != 63 && v1 != 95)
  {
    return sub_26DE08(result);
  }

  return result;
}

unint64_t sub_26DE08(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_26DE1C(result);
  }

  return result;
}

unint64_t sub_26DE1C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_26DE38(unint64_t result)
{
  v1 = (result >> 57) & 0x78 | result & 7;
  if (v1 != 31 && v1 != 63 && v1 != 95)
  {
    return sub_26DE64(result);
  }

  return result;
}

unint64_t sub_26DE64(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_26DE78(result);
  }

  return result;
}

unint64_t sub_26DE78(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_26DE94@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_26DF18(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26DDDC(v1);

  return sub_3E9EB4();
}

unint64_t sub_26DF98(unint64_t result)
{
  if ((result & 0xF000000000000007) != 0x7000000000000007)
  {
    return sub_26DFB4(result);
  }

  return result;
}

unint64_t sub_26DFB4(unint64_t result)
{
  if (((result >> 57) & 0xF8 | result & 7 | 0x20) != 0x7F)
  {
    return sub_26DE1C(result);
  }

  return result;
}

uint64_t sub_26DFD8(uint64_t a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_podcastState) == 2)
    {
    }

    else
    {
      v8 = v4;
      sub_3E98E4();

      v9 = sub_3E99F4();
      v10 = sub_3ED9D4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = a1;
        v17 = v12;
        *v11 = 136380675;

        v13 = sub_3ED2B4();
        v15 = sub_2EDD0(v13, v14, &v17);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v9, v10, "LocalShowPageFeedUpdater is not supposed to work with store shows!  Offending PodcastDetail: %{private}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
      }

      (*(v3 + 8))(v6, v8);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_26E208()
{
  result = qword_4F07A0;
  if (!qword_4F07A0)
  {
    sub_3E7424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F07A0);
  }

  return result;
}

uint64_t sub_26E260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26E2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26E310(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x7D)
  {
    v3 = a2 - 126;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

void *sub_26E354(id a1, char a2, char a3, int a4)
{
  LODWORD(v120) = a4;
  v7 = sub_3E5F84();
  v119 = *(v7 - 8);
  __chkstk_darwin(v7);
  v124 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_3E5C04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v108[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v108[-v14];
  __chkstk_darwin(v16);
  v18 = &v108[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v19 - 8);
  v123 = &v108[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v108[-v22];
  v25 = __chkstk_darwin(v24);
  v126 = &v108[-v26];
  v27 = [a1 uuid];
  if (!v27)
  {
    goto LABEL_11;
  }

  v122 = v12;
  v118 = v7;
  v28 = v27;
  v128 = sub_3ED244();
  v30 = v29;

  v31 = [a1 title];
  if (!v31)
  {

LABEL_11:

    return 0;
  }

  v32 = v31;
  v113 = sub_3ED244();
  v112 = v33;

  v34 = sub_3E7784();
  (*(*(v34 - 8) + 56))(v126, 1, 1, v34);
  if ((a2 & 1) == 0)
  {
    sub_3ED924();
    v35 = v126;
    sub_1433A4(v126);
    sub_25612C(v23, v35);
  }

  StationSortOrder.init(rawValue:)([a1 containerOrder]);
  v36 = v132;
  if (v132 == 7)
  {
    v36 = 6;
  }

  v111 = v36;
  v109 = [a1 isUngroupedList];
  v37 = [a1 defaultSettings];
  v121 = a1;
  v127 = v30;
  v117 = v10;
  if (v37)
  {
    v38 = v37;
    v39 = [v37 showPlayedEpisodes];

    v110 = v39 ^ 1;
    if (a3)
    {
      v125 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (a3)
    {
      v110 = 1;
LABEL_24:
      v125 = 0;
      goto LABEL_27;
    }

    v110 = 1;
  }

  v41 = [a1 episodes];
  if (!v41)
  {
    goto LABEL_24;
  }

  v135 = _swiftEmptyArrayStorage;
  v116 = v41;
  sub_3ED964();
  sub_26F32C();
  sub_3EE114();
  if (v133)
  {
    v125 = _swiftEmptyArrayStorage;
    do
    {
      sub_1FB90(&v132, v130);
      sub_2F4AC(v130, v129);
      sub_36174(0, &qword_4F1C30);
      swift_dynamicCast();
      v42 = v134;

      v43 = sub_26F388(v42, v128, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      if (v43)
      {
        sub_3ED564();
        if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v135 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v125 = v135;
      }

      sub_3EE114();
      v30 = v127;
    }

    while (v133);
  }

  else
  {
    v125 = _swiftEmptyArrayStorage;
  }

  (*(v117 + 8))(v18, v9);

  a1 = v121;
LABEL_27:
  v134 = _swiftEmptyArrayStorage;
  v135 = &_swiftEmptySetSingleton;
  v44 = [a1 settings];
  v45 = v122;
  if (v120)
  {
    if (v44)
    {
      v121 = v44;
      sub_3ED964();
      sub_26F32C();
      sub_3EE114();
      if (v133)
      {
        v46 = _swiftEmptyArrayStorage;
        do
        {
          sub_1FB90(&v132, v130);
          sub_2F4AC(v130, v129);
          sub_36174(0, &qword_4FCF18);
          if (swift_dynamicCast() && (v47 = v131, v48 = [v131 podcast], v47, v48) && (v49 = objc_msgSend(v48, "uuid"), v48, v49))
          {
            v50 = sub_3ED244();
            v52 = v51;

            __swift_destroy_boxed_opaque_existential_1Tm(v130);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_DFAE8(0, *(v46 + 2) + 1, 1, v46);
            }

            v54 = *(v46 + 2);
            v53 = *(v46 + 3);
            if (v54 >= v53 >> 1)
            {
              v46 = sub_DFAE8((v53 > 1), v54 + 1, 1, v46);
            }

            *(v46 + 2) = v54 + 1;
            v55 = &v46[16 * v54];
            *(v55 + 4) = v50;
            *(v55 + 5) = v52;
            v45 = v122;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v130);
          }

          sub_3EE114();
        }

        while (v133);
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      (*(v117 + 8))(v45, v9);
      v58 = sub_37C6AC(v46);

      v57 = *(v58 + 16);
    }

    else
    {
      v57 = 0;
    }

    v114 = _swiftEmptyArrayStorage;
    goto LABEL_95;
  }

  if (v44)
  {
    v129[0] = _swiftEmptyArrayStorage;
    v56 = v44;
    sub_3ED964();
    sub_26F32C();
    sub_3EE114();
    if (v133)
    {
      v115 = _swiftEmptyArrayStorage;
      do
      {
        sub_1FB90(&v132, v130);
        sub_36174(0, &qword_4FCF18);
        if ((swift_dynamicCast() & 1) != 0 && v131)
        {
          sub_3ED564();
          if (*(&dword_10 + (v129[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v129[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v122 = *(&dword_10 + (v129[0] & 0xFFFFFFFFFFFFFF8));
            sub_3ED5A4();
          }

          sub_3ED604();
          v115 = v129[0];
        }

        sub_3EE114();
      }

      while (v133);
    }

    else
    {
      v115 = _swiftEmptyArrayStorage;
    }

    (*(v117 + 8))(v15, v9);
    v59 = v115;
    if (v115 >> 62)
    {
      goto LABEL_92;
    }

    v60 = *(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8));
    if (!v60)
    {
LABEL_93:
      v114 = _swiftEmptyArrayStorage;
LABEL_94:

      v57 = *(v135 + 16);
      goto LABEL_95;
    }

LABEL_52:
    v61 = 0;
    v62 = v59 & 0xC000000000000001;
    v117 = v59 & 0xFFFFFFFFFFFFFF8;
    v116 = (v59 + 32);
    v114 = _swiftEmptyArrayStorage;
    v63 = &selRef_setDefaultTabInterval_;
    v122 = v59 & 0xC000000000000001;
    v120 = v60;
    while (1)
    {
      while (1)
      {
        if (v62)
        {
          v64 = sub_3EE3F4();
        }

        else
        {
          if (v61 >= *(v117 + 16))
          {
            goto LABEL_91;
          }

          v64 = *(v116 + v61);
        }

        v65 = v64;
        if (__OFADD__(v61++, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v60 = sub_3EE5A4();
          if (!v60)
          {
            goto LABEL_93;
          }

          goto LABEL_52;
        }

        v67 = [v64 v63[154]];
        if (v67)
        {
          v68 = v67;
          v69 = [v67 uuid];

          if (v69)
          {
            break;
          }
        }

        if (v61 == v60)
        {
          goto LABEL_94;
        }
      }

      v70 = v63;
      v71 = sub_3ED244();
      v73 = v72;

      v74 = v135;
      if (*(v135 + 16))
      {
        sub_3EE954();
        sub_3ED394();
        v75 = sub_3EE9A4();
        v76 = -1 << *(v74 + 32);
        v77 = v75 & ~v76;
        if ((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
        {
          break;
        }
      }

LABEL_70:
      v81 = v65;
      v82 = [v81 uuid];
      if (!v82)
      {
        goto LABEL_79;
      }

      v83 = v82;
      v84 = sub_3ED244();
      v86 = v85;

      v63 = v70;
      v87 = [v81 v70[154]];
      if (v87)
      {
        v88 = v87;
        v89 = sub_26AA94(v88, 0, 0, 0, 1);
        if (v89)
        {
          v90 = v89;
          v91 = [v81 episodeCount];

          type metadata accessor for StationShow();
          v92 = swift_allocObject();
          v92[2] = v84;
          v92[3] = v86;
          v92[4] = v128;
          v92[5] = v127;
          v92[6] = v90;
          v92[7] = v91;

          sub_3ED564();
          if (*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v134 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_3ED5A4();
          }

          sub_3ED604();
          v114 = v134;
          sub_30E74(&v132, v71, v73);
        }

        else
        {

LABEL_79:
        }

        a1 = v121;
        v59 = v115;
LABEL_81:
        v62 = v122;
        v63 = v70;
        goto LABEL_82;
      }

      a1 = v121;
      v59 = v115;
      v62 = v122;
LABEL_82:
      v60 = v120;
      if (v61 == v120)
      {
        goto LABEL_94;
      }
    }

    v78 = ~v76;
    while (1)
    {
      v79 = (*(v74 + 48) + 16 * v77);
      v80 = *v79 == v71 && v79[1] == v73;
      if (v80 || (sub_3EE804() & 1) != 0)
      {
        break;
      }

      v77 = (v77 + 1) & v78;
      if (((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    a1 = v121;
    goto LABEL_81;
  }

  v114 = _swiftEmptyArrayStorage;
  v57 = 0;
LABEL_95:
  v93 = v109 ^ 1;
  v94 = [a1 isItunesPlaylist];
  v95 = [a1 unplayedCount];
  [a1 generatedDate];
  sub_3E5E24();
  sub_4E45C(v126, v123);
  v96 = [a1 episodes];
  if (v96)
  {
    v97 = v96;
    v98 = [v96 count];
  }

  else
  {

    v98 = 0;
  }

  sub_3ED934(v99);
  v101 = v100;
  v102 = [a1 objectID];

  sub_1433A4(v126);
  type metadata accessor for StationDetail();
  v103 = swift_allocObject();
  v104 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes) = 0;
  v105 = OBJC_IVAR____TtC8ShelfKit13StationDetail_shows;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_shows) = 0;
  v106 = v127;
  v103[2] = v128;
  v103[3] = v106;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_type) = v94;
  v107 = v112;
  v103[4] = v113;
  v103[5] = v107;
  sub_25612C(v123, v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_artwork);
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) = v111;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) = v93;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes) = v110;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount) = v98;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount) = v57;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_unplayedCount) = v95;
  swift_beginAccess();
  *(v103 + v104) = v125;
  swift_beginAccess();
  *(v103 + v105) = v114;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_predicateForEpisodes) = v101;
  *(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID) = v102;
  (*(v119 + 32))(v103 + OBJC_IVAR____TtC8ShelfKit13StationDetail_dateCreated, v124, v118);
  return v103;
}

unint64_t sub_26F32C()
{
  result = qword_4FCF10;
  if (!qword_4FCF10)
  {
    sub_3E5C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FCF10);
  }

  return result;
}

uint64_t sub_26F388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v6 - 8);
  v8 = &v115 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v115 - v13;
  __chkstk_darwin(v15);
  v17 = &v115 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v18 - 8);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v24 - 8);
  v148 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v147 = &v115 - v27;
  v29 = __chkstk_darwin(v28);
  v31 = &v115 - v30;
  v32 = [a1 uuid];
  if (!v32)
  {
    goto LABEL_8;
  }

  v146 = v20;
  v144 = a2;
  v33 = v32;
  v145 = sub_3ED244();
  v35 = v34;

  v36 = [a1 podcast];
  if (!v36)
  {

LABEL_8:

    return 0;
  }

  v37 = v36;
  v38 = [a1 podcastUuid];
  if (!v38)
  {

    goto LABEL_8;
  }

  v142 = v37;
  v39 = v38;
  v40 = sub_3ED244();
  v136 = v41;
  v137 = v40;

  [a1 duration];
  v43 = v42;
  v135 = sub_3EDF74();
  v134 = v44;
  v45 = [a1 bestTitle];
  if (v45)
  {
    v46 = v45;
    v47 = sub_3ED244();
    v132 = v48;
    v133 = v47;
  }

  else
  {
    v132 = 0xE000000000000000;
    v133 = 0;
  }

  v50 = [a1 numberedTitle];
  if (v50)
  {
    v51 = v50;
    v52 = sub_3ED244();
    v130 = v53;
    v131 = v52;
  }

  else
  {
    v130 = 0xE000000000000000;
    v131 = 0;
  }

  v54 = [a1 podcast];
  if (v54)
  {
    v55 = v54;
    sub_3EDF94();
  }

  else
  {
    v56 = sub_3E7784();
    (*(*(v56 - 8) + 56))(v31, 1, 1, v56);
  }

  v138 = v35;
  v140 = v14;
  v141 = v11;
  v143 = v8;
  v129 = [a1 isExplicit];
  v57 = [a1 bestSummary];
  if (v57)
  {
    v58 = v57;
    sub_3ED244();

    v59 = sub_3E9A64();
    sub_3E9A24();
    v60 = objc_allocWithZone(v59);
    v128 = sub_3E9A84();
  }

  else
  {
    v128 = 0;
  }

  [a1 pubDate];
  if (v61 <= 0.0)
  {
    v62 = 1;
  }

  else
  {
    [a1 pubDate];
    sub_3E5E24();
    v62 = 0;
  }

  v63 = sub_3E5F84();
  (*(*(v63 - 8) + 56))(v23, v62, 1, v63);
  v127 = sub_3EDF84();
  v64 = [v142 title];
  if (v64)
  {
    v65 = v64;
    v125 = sub_3ED244();
    v124 = v66;
  }

  else
  {
    v125 = 0;
    v124 = 0;
  }

  v67 = [a1 podcast];
  v68 = v67;
  if (v67)
  {
    [v67 storeCollectionId];

    v126 = sub_3E94B4();
  }

  else
  {
    v126 = 0;
  }

  v69 = [a1 assetURL];
  v139 = a3;
  if (v69)
  {
    v70 = v69;
    sub_3ED244();

    sub_3E5D94();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v71 = sub_3E5DC4();
    (*(*(v71 - 8) + 56))(v17, 1, 1, v71);
  }

  v72 = v146;
  v123 = [a1 entitlementState];
  v73 = [a1 podcast];
  if (v73 && (v74 = v73, v75 = [v73 channel], v74, v75) && (v76 = objc_msgSend(v75, "subscriptionName"), v75, v76))
  {
    v122 = sub_3ED244();
    v121 = v77;
  }

  else
  {
    v122 = 0;
    v121 = 0;
  }

  v120 = [a1 storeTrackId];
  v78 = [a1 podcast];
  if (v78 && (v79 = v78, v80 = [v78 channel], v79, v80) && (v81 = objc_msgSend(v80, "name"), v80, v81))
  {
    v117 = sub_3ED244();
    v116 = v82;
  }

  else
  {
    v117 = 0;
    v116 = 0;
  }

  v119 = v68 == 0;
  v83 = v147;
  sub_FBD0(v31, v147, &qword_4F1D50);
  v84 = v148;
  sub_3EDF14();
  sub_FBD0(v23, v72, &qword_4EF460);
  v85 = sub_3E5DC4();
  v86 = v140;
  (*(*(v85 - 8) + 56))(v140, 1, 1, v85);
  v87 = v141;
  sub_FBD0(v17, v141, &unk_4E9EE0);
  v88 = sub_3E8D24();
  (*(*(v88 - 8) + 56))(v143, 1, 1, v88);
  v118 = [a1 hasFreeVersion];
  [a1 upNextScore];
  v90 = v89;

  sub_FCF8(v17, &unk_4E9EE0);
  sub_FCF8(v23, &qword_4EF460);
  sub_FCF8(v31, &qword_4F1D50);
  type metadata accessor for StationEpisode();
  v91 = swift_allocObject();
  v92 = (v91 + OBJC_IVAR____TtC8ShelfKit14StationEpisode_stationUuid);
  v93 = v139;
  *v92 = v144;
  v92[1] = v93;
  v94 = OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork;
  v95 = sub_3E7784();
  (*(*(v95 - 8) + 56))(v91 + v94, 1, 1, v95);
  v96 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  v97 = v132;
  *v96 = v133;
  v96[1] = v97;
  v98 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  v99 = v130;
  *v98 = v131;
  v98[1] = v99;
  *(v91 + 16) = v135;
  *(v91 + 24) = v134 & 1;
  *(v91 + 32) = 0;
  *(v91 + 40) = 1;
  v100 = v116;
  *(v91 + 48) = v117;
  *(v91 + 56) = v100;
  sub_FACC(v83, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(v84, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = v128;
  v101 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  v102 = v124;
  *v101 = v125;
  v101[1] = v102;
  sub_FACC(v146, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(v86, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(v87, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = v127;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = v129;
  v103 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v103 = 0;
  v103[1] = 0;
  v104 = v91 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v104 = v43;
  *(v104 + 8) = 0;
  v105 = v91 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v105 = 0;
  *(v105 + 8) = 1;
  v106 = v91 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v106 = 0;
  *(v106 + 8) = 1;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = 1;
  v107 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v107 = 0;
  v107[1] = 0;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = 3;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = 0;
  v108 = v91 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v108 = 0;
  *(v108 + 8) = 1;
  v110 = v137;
  v109 = v138;
  *(v91 + 64) = v145;
  *(v91 + 72) = v109;
  v111 = v136;
  *(v91 + 80) = v110;
  *(v91 + 88) = v111;
  *(v91 + 96) = v126;
  *(v91 + 104) = v119;
  sub_FACC(v143, v91 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  result = v91;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = v123;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = v118;
  v112 = (v91 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  v113 = v121;
  *v112 = v122;
  v112[1] = v113;
  v114 = v91 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v114 = v120;
  *(v114 + 8) = 0;
  *(v91 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = v90;
  return result;
}

void *StationShow.__allocating_init(from:stationUuid:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 uuid];
  if (v6)
  {
    v7 = v6;
    v8 = sub_3ED244();
    v10 = v9;

    v11 = [a1 podcast];
    if (v11)
    {
      v12 = v11;
      v13 = sub_26AA94(v12, 0, 0, 0, 1);
      if (v13)
      {
        v14 = v13;
        v15 = [a1 episodeCount];

        type metadata accessor for StationShow();
        result = swift_allocObject();
        result[2] = v8;
        result[3] = v10;
        result[4] = a2;
        result[5] = a3;
        result[6] = v14;
        result[7] = v15;
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

ShelfKit::StationSortOrder_optional __swiftcall StationSortOrder.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 7;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StationSortOrder.init(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result >= 6)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t StationSortOrder.playlistContainerOrder.getter()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (*v0 > 4u)
    {
      if (v1 == 5)
      {
        return 5;
      }

      else
      {
        result = sub_3EE574();
        __break(1u);
      }
    }

    else if (v1 == 3)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double static ContentUnavailablePage.emptyLibraryChannels.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7B34();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0x800000000042B920;
  v23._object = 0x800000000042B900;
  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0x800000000042B990;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x800000000042B970;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  result = 1.4298969e248;
  *v17 = xmmword_411760;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyLibrary.getter@<D0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v1 = type metadata accessor for ActionButton();
  v2 = *(v1 - 8);
  v101 = (v1 - 8);
  __chkstk_darwin(v1 - 8);
  v102 = (&v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_3E5FC4();
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v116 = &v95 - v8;
  v98 = sub_3EC1F4();
  v9 = *(v98 - 8);
  __chkstk_darwin(v98);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v95 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v111 = &v95 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14D8);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v107 = *(v2 + 72);
  v19 = swift_allocObject();
  v105 = v19;
  v106 = v18;
  *(v19 + 16) = xmmword_3F5630;
  v20 = (v19 + v18);
  v114 = objc_opt_self();
  v21 = [v114 mainBundle];
  v91._countAndFlagsBits = 0xE000000000000000;
  v120._countAndFlagsBits = 0xD00000000000001CLL;
  v120._object = 0x800000000042B9F0;
  v126.value._countAndFlagsBits = 0;
  v126.value._object = 0;
  v22.super.isa = v21;
  v130._countAndFlagsBits = 0;
  v130._object = 0xE000000000000000;
  v100 = sub_3E5A74(v120, v126, v22, v130, v91);
  v99 = v23;

  v115 = sub_3E7784();
  v24 = *(v115 - 8);
  v25 = *(v24 + 56);
  v112 = v24 + 56;
  v113 = v25;
  v25(v17, 1, 1, v115);
  v26 = v14;
  v96 = v14;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v27 = type metadata accessor for TabChangeAction();
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = 12;
  *(v28 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = _swiftEmptyArrayStorage;
  *(v28 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
  *(v28 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
  v29 = v26;
  v30 = v98;
  (*(v9 + 16))(v11, v29, v98);
  v109 = sub_3EC634();
  v31 = *(v109 - 8);
  v110 = *(v31 + 56);
  v97 = v31 + 56;
  v32 = v116;
  v110(v116, 1, 1, v109);
  sub_3E5FB4();
  v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v35 = v34;
  (*(v103 + 8))(v6, v104);
  (*(v9 + 8))(v96, v30);
  *(v28 + 16) = v33;
  *(v28 + 24) = v35;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 0;
  (*(v9 + 32))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v30);
  sub_14A10(v32, v28 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v118 = v27;
  v119 = sub_273158(&unk_501110, type metadata accessor for TabChangeAction);
  *&v117 = v28;
  v37 = v109;
  v36 = v110;
  v110(v32, 1, 1, v109);
  v38 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v40 = v39;
  v41 = v101;
  v42 = v101[8];
  v113(v20 + v42, 1, 1, v115);
  v43 = v41[9];
  *(v20 + v43) = 2;
  v44 = v41[11];
  v36(v20 + v44, 1, 1, v37);
  *v20 = v38;
  v20[1] = v40;
  v45 = v99;
  v20[2] = v100;
  v20[3] = v45;
  v46 = v111;
  sub_51F9C(v111, v20 + v42, &qword_4F1D50);
  *(v20 + v43) = 2;
  sub_1D4F0(&v117, v20 + v41[10]);
  v47 = v116;
  sub_51F9C(v116, v20 + v44, &unk_4E9170);
  v48 = [v114 mainBundle];
  v92._countAndFlagsBits = 0xE000000000000000;
  v121._object = 0x800000000042AD70;
  v121._countAndFlagsBits = 0xD000000000000011;
  v127.value._countAndFlagsBits = 0;
  v127.value._object = 0;
  v49.super.isa = v48;
  v131._countAndFlagsBits = 0;
  v131._object = 0xE000000000000000;
  v50 = sub_3E5A74(v121, v127, v49, v131, v92);
  v103 = v51;
  v104 = v50;

  v52 = v113;
  v113(v46, 1, 1, v115);
  v53 = v102;
  v54 = (v102 + v41[10]);
  v54[3] = type metadata accessor for TextFieldAlertAction();
  v54[4] = sub_273158(&qword_501120, type metadata accessor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v54);
  static TextFieldAlertAction.followShowByURL(initialText:then:)(0, 0, 0, 0, boxed_opaque_existential_0Tm);
  v56 = v47;
  v57 = v109;
  v58 = v110;
  v110(v56, 1, 1, v109);
  v59 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v61 = v60;
  v62 = v41[8];
  v52(v53 + v62, 1, 1, v115);
  v63 = v41[9];
  *(v53 + v63) = 2;
  v64 = v41[11];
  v58(v53 + v64, 1, 1, v57);
  *v53 = v59;
  v53[1] = v61;
  v65 = v103;
  v53[2] = v104;
  v53[3] = v65;
  v66 = v53 + v62;
  v67 = v105;
  sub_51F9C(v111, v66, &qword_4F1D50);
  *(v53 + v63) = 2;
  sub_51F9C(v116, v53 + v64, &unk_4E9170);
  v69 = v67[2];
  v68 = v67[3];
  if (v69 >= v68 >> 1)
  {
    v67 = sub_E0430(v68 > 1, v69 + 1, 1, v67);
  }

  v67[2] = v69 + 1;
  sub_2730AC(v53, v67 + v106 + v69 * v107);
  v70 = v114;
  v71 = [v114 mainBundle];
  v93._countAndFlagsBits = 0xE000000000000000;
  v122._countAndFlagsBits = 0xD000000000000013;
  v122._object = 0x800000000042BA10;
  v128.value._countAndFlagsBits = 0;
  v128.value._object = 0;
  v72.super.isa = v71;
  v132._countAndFlagsBits = 0;
  v132._object = 0xE000000000000000;
  v73 = sub_3E5A74(v122, v128, v72, v132, v93);
  v75 = v74;

  v76 = [v70 mainBundle];
  v94._countAndFlagsBits = 0xE000000000000000;
  v123._countAndFlagsBits = 0xD000000000000016;
  v123._object = 0x800000000042BA30;
  v129.value._countAndFlagsBits = 0;
  v129.value._object = 0;
  v77.super.isa = v76;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  v78 = sub_3E5A74(v123, v129, v77, v133, v94);
  v80 = v79;

  v81 = sub_3E8084();
  v83 = v82;
  v84 = sub_3E7B04();
  v86 = v85;
  *&v117 = v81;
  *(&v117 + 1) = v83;
  v124._countAndFlagsBits = 95;
  v124._object = 0xE100000000000000;
  sub_3ED3D4(v124);
  v125._countAndFlagsBits = v84;
  v125._object = v86;
  sub_3ED3D4(v125);

  v87 = v108;
  sub_3ECCE4();
  v88 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v89 = v87 + *(v88 + 20);
  result = 1.4298969e248;
  *v89 = xmmword_411760;
  *(v89 + 16) = v73;
  *(v89 + 24) = v75;
  *(v89 + 32) = v78;
  *(v89 + 40) = v80;
  *(v89 + 48) = v67;
  return result;
}

double static ContentUnavailablePage.emptyLibraryLatestEpisodes.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7A74();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BA50;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x800000000042BA70;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  *&result = 0x6B636F6C63;
  *v17 = xmmword_411770;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyLibrarySaved.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7AB4();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BA90;
  v23._countAndFlagsBits = 0xD000000000000015;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000018;
  v24._object = 0x800000000042BAB0;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  result = 3.77673152e209;
  *v17 = xmmword_411780;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyLibraryShows.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7AC4();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BAD0;
  v23._countAndFlagsBits = 0xD000000000000012;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000021;
  v24._object = 0x800000000042BAF0;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  result = 1.4298969e248;
  *v17 = xmmword_411760;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptyLibraryRecentlyUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7A94();
  v4 = v3;
  v8._countAndFlagsBits = 95;
  v8._object = 0xE100000000000000;
  sub_3ED3D4(v8);
  v9._countAndFlagsBits = v2;
  v9._object = v4;
  sub_3ED3D4(v9);

  sub_3ECCE4();
  v5 = type metadata accessor for ContentUnavailablePage();
  result = sub_3EC154();
  v7 = (a1 + *(v5 + 20));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0xE000000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v7[6] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptySearchResults(id:term:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v23._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x800000000042A180;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v8.super.isa = v7;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v9 = sub_3E5A74(v25, v27, v8, v29, v23);
  v11 = v10;

  v12 = sub_3ECCF4();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  v13 = [v6 mainBundle];
  v24._countAndFlagsBits = 0xE000000000000000;
  v26._object = 0x800000000042A1A0;
  v26._countAndFlagsBits = 0xD000000000000011;
  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v14.super.isa = v13;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v15 = sub_3E5A74(v26, v28, v14, v30, v24);
  v17 = v16;

  v18 = type metadata accessor for ContentUnavailablePage();
  v19 = *(v18 + 24);
  v20 = sub_3EC164();
  result = (*(*(v20 - 8) + 16))(a3 + v19, a2, v20);
  v22 = (a3 + *(v18 + 20));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v9;
  v22[3] = v11;
  v22[4] = v15;
  v22[5] = v17;
  v22[6] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.offlineSearch(reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_3E8084();
  v6 = sub_3E7AE4();
  v8 = v7;
  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  sub_3ED3D4(v18);
  v19._countAndFlagsBits = v6;
  v19._object = v8;
  sub_3ED3D4(v19);

  sub_3ECCE4();
  v9 = [objc_opt_self() mainBundle];
  v17._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x800000000042BB20;
  v20._countAndFlagsBits = 0xD000000000000014;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v10.super.isa = v9;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v11 = sub_3E5A74(v20, v21, v10, v22, v17);
  v13 = v12;

  v14 = type metadata accessor for ContentUnavailablePage();

  result = sub_3EC154();
  v16 = (a3 + *(v14 + 20));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = v11;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyLibraryCategories.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7A24();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0x800000000042BB60;
  v23._object = 0x800000000042BB40;
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0x800000000042BBE0;
  v24._countAndFlagsBits = 0xD000000000000021;
  v24._object = 0x800000000042BBB0;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  result = 1.4298969e248;
  *v17 = xmmword_411760;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptyUnplayedLibraryDownloaded.getter@<X0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7A34();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x800000000042BC60;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x800000000042BC80;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  result = sub_3EC154();
  v18 = (a1 + *(v16 + 20));
  *v18 = 0xD000000000000015;
  v18[1] = 0x800000000042BC40;
  v18[2] = v8;
  v18[3] = v10;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptyLibraryDownloaded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v21._object = 0x800000000042BCB0;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v4.super.isa = v3;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v5 = sub_3E5A74(v21, v25, v4, v27, v19);
  v7 = v6;

  sub_3E8024();
  v8 = sub_3E7A34();
  v10 = v9;
  v22._countAndFlagsBits = 95;
  v22._object = 0xE100000000000000;
  sub_3ED3D4(v22);
  v23._countAndFlagsBits = v8;
  v23._object = v10;
  sub_3ED3D4(v23);

  sub_3ECCE4();
  v11 = [v2 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x800000000042BCD0;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  result = sub_3EC154();
  v18 = (a1 + *(v16 + 20));
  *v18 = 0xD000000000000015;
  v18[1] = 0x800000000042BC40;
  v18[2] = v5;
  v18[3] = v7;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyUnplayedLibrarySaved.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7AB4();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BC60;
  v23._countAndFlagsBits = 0xD000000000000019;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000027;
  v24._object = 0x800000000042BD00;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  result = 3.77673152e209;
  *v17 = xmmword_411780;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

double static ContentUnavailablePage.emptyUnplayedLibraryLatestEpisodes.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7A74();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BC60;
  v23._countAndFlagsBits = 0xD000000000000019;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x800000000042BA70;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  sub_3EC154();
  v17 = a1 + *(v16 + 20);
  *&result = 0x6B636F6C63;
  *v17 = xmmword_411770;
  *(v17 + 16) = v8;
  *(v17 + 24) = v10;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptyStation.getter@<X0>(uint64_t a1@<X8>)
{
  sub_3E8024();
  v2 = sub_3E7B14();
  v4 = v3;
  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_3ED3D4(v21);
  v22._countAndFlagsBits = v2;
  v22._object = v4;
  sub_3ED3D4(v22);

  sub_3ECCE4();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x800000000042BD30;
  v23._countAndFlagsBits = 0xD000000000000013;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v7.super.isa = v6;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v8 = sub_3E5A74(v23, v25, v7, v27, v19);
  v10 = v9;

  v11 = [v5 mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000016;
  v24._object = 0x800000000042BD50;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v12.super.isa = v11;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v13 = sub_3E5A74(v24, v26, v12, v28, v20);
  v15 = v14;

  v16 = type metadata accessor for ContentUnavailablePage();
  result = sub_3EC154();
  v18 = (a1 + *(v16 + 20));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = v8;
  v18[3] = v10;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t static ContentUnavailablePage.emptyFilteredEpisodes(id:filter:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v40 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v41 = &v39 - v10;
  v12 = sub_3ECCF4();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  v13 = sub_3E83A4();
  v45 = v14;
  v46 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14D8);
  v15 = (type metadata accessor for ActionButton() - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  v44 = v17;
  *(v17 + 16) = xmmword_3F5630;
  v18 = (v17 + v16);
  v19 = [objc_opt_self() mainBundle];
  v38._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x800000000042B380;
  v49._countAndFlagsBits = 0xD000000000000011;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v20.super.isa = v19;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v21 = sub_3E5A74(v49, v50, v20, v51, v38);
  v42 = v22;
  v43 = v21;

  v23 = sub_3E7784();
  v39 = *(*(v23 - 8) + 56);
  v39(v11, 1, 1, v23);
  sub_1F958(a2, v48);
  v24 = sub_3EC634();
  v25 = *(*(v24 - 8) + 56);
  v25(v8, 1, 1, v24);
  v26 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v28 = v27;
  v29 = v15[8];
  v39(v18 + v29, 1, 1, v23);
  v30 = v15[9];
  *(v18 + v30) = 2;
  v31 = v15[11];
  v25(v18 + v31, 1, 1, v24);
  *v18 = v26;
  v18[1] = v28;
  v32 = v42;
  v18[2] = v43;
  v18[3] = v32;
  sub_51F9C(v41, v18 + v29, &qword_4F1D50);
  *(v18 + v30) = 2;
  sub_1D4F0(v48, v18 + v15[10]);
  sub_51F9C(v40, v18 + v31, &unk_4E9170);
  v33 = type metadata accessor for ContentUnavailablePage();
  v34 = v47;
  result = sub_3EC154();
  v36 = (v34 + *(v33 + 20));
  *v36 = 0;
  v36[1] = 0;
  v37 = v45;
  v36[2] = v46;
  v36[3] = v37;
  v36[4] = 0;
  v36[5] = 0;
  v36[6] = v44;
  return result;
}

void __swiftcall ContentUnavailablePage.Presentation.init(symbol:title:description:buttons:)(ShelfKit::ContentUnavailablePage::Presentation *__return_ptr retstr, Swift::String_optional symbol, Swift::String title, Swift::String_optional description, Swift::OpaquePointer buttons)
{
  retstr->symbol = symbol;
  retstr->title = title;
  retstr->description = description;
  retstr->buttons = buttons;
}

uint64_t ContentUnavailablePage.Presentation.buttons.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ContentUnavailablePage.init(id:presentation:pageMetrics:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a2[1];
  v17 = *a2;
  v15 = a2[2];
  v7 = *(a2 + 6);
  v8 = sub_3ECCF4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ContentUnavailablePage();
  v10 = a4 + *(v9 + 20);
  *v10 = v17;
  *(v10 + 16) = v16;
  *(v10 + 32) = v15;
  *(v10 + 48) = v7;
  v11 = *(v9 + 24);
  v12 = sub_3EC164();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t type metadata accessor for ContentUnavailablePage()
{
  result = qword_4FCF78;
  if (!qword_4FCF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContentUnavailablePage.presentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContentUnavailablePage() + 20);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 ContentUnavailablePage.presentation.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v5 = a1[2];
  v2 = *(a1 + 6);
  v3 = v1 + *(type metadata accessor for ContentUnavailablePage() + 20);

  *v3 = v7;
  *(v3 + 16) = v6;
  result = v5;
  *(v3 + 32) = v5;
  *(v3 + 48) = v2;
  return result;
}

uint64_t ContentUnavailablePage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentUnavailablePage() + 24);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentUnavailablePage.pageMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentUnavailablePage() + 24);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static ContentUnavailablePage.emptyUnconfiguredStation(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v84 = a1;
  v93 = a3;
  v3 = sub_3E5FC4();
  v94 = *(v3 - 8);
  v95 = v3;
  __chkstk_darwin(v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v97 = &v74 - v7;
  v8 = sub_3EC1F4();
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v74 - v11;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v17 = &v74 - v16;
  v79 = &v74 - v16;
  v18 = sub_3E8024();
  v20 = v19;
  v21 = sub_3E7B14();
  v23 = v22;
  *&v98 = v18;
  *(&v98 + 1) = v20;
  v101._countAndFlagsBits = 95;
  v101._object = 0xE100000000000000;
  sub_3ED3D4(v101);
  v102._countAndFlagsBits = v21;
  v102._object = v23;
  sub_3ED3D4(v102);

  sub_3ECCE4();
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v71._countAndFlagsBits = 0xE000000000000000;
  v103._countAndFlagsBits = 0xD000000000000020;
  v103._object = 0x800000000042BD70;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v26.super.isa = v25;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v27 = sub_3E5A74(v103, v106, v26, v109, v71);
  v91 = v28;
  v92 = v27;

  v29 = [v24 mainBundle];
  v72._countAndFlagsBits = 0xE000000000000000;
  v104._object = 0x800000000042BDA0;
  v104._countAndFlagsBits = 0xD000000000000019;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v30.super.isa = v29;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v31 = sub_3E5A74(v104, v107, v30, v110, v72);
  v87 = v32;
  v88 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14D8);
  v33 = type metadata accessor for ActionButton();
  v34 = *(v33 - 8);
  v82 = (v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v83 = v36;
  *(v36 + 16) = xmmword_3F5630;
  v37 = (v36 + v35);
  v38 = [v24 mainBundle];
  v73._countAndFlagsBits = 0xE000000000000000;
  v105._countAndFlagsBits = 0xD000000000000024;
  v105._object = 0x800000000042BDC0;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v39.super.isa = v38;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v81 = sub_3E5A74(v105, v108, v39, v111, v73);
  v80 = v40;

  v77 = sub_3E7784();
  v41 = *(v77 - 8);
  v76 = *(v41 + 56);
  v78 = v41 + 56;
  v76(v17, 1, 1, v77);
  v42 = v86;
  *v14 = v84;
  v14[1] = v42;
  v75 = v14;
  swift_storeEnumTagMultiPayload();

  v43 = v96;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v86 = type metadata accessor for FlowAction(0);
  v44 = swift_allocObject();
  sub_FC38(v14, v44 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v45 = (v44 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v45 = 0;
  v45[1] = 0;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v44 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v46 = v89;
  v47 = v85;
  v48 = v43;
  v49 = v90;
  (*(v89 + 16))(v85, v48, v90);
  v50 = sub_3EC634();
  v51 = *(v50 - 8);
  v74 = *(v51 + 56);
  v84 = v51 + 56;
  v52 = v97;
  v74(v97, 1, 1, v50);
  sub_3E5FB4();
  v53 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v55 = v54;
  (*(v94 + 8))(v5, v95);
  (*(v46 + 8))(v96, v49);
  sub_FC9C(v75);
  *(v44 + 16) = v53;
  *(v44 + 24) = v55;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = 48;
  (*(v46 + 32))(v44 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v47, v49);
  sub_14A10(v52, v44 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v99 = v86;
  v100 = sub_273158(&qword_4F8A40, type metadata accessor for FlowAction);
  *&v98 = v44;
  v56 = v74;
  v74(v52, 1, 1, v50);
  v57 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
  v59 = v58;
  v60 = v82;
  v61 = v82[8];
  v76(v37 + v61, 1, 1, v77);
  v62 = v60[9];
  *(v37 + v62) = 2;
  v63 = v60[11];
  v56(v37 + v63, 1, 1, v50);
  *v37 = v57;
  v37[1] = v59;
  v64 = v80;
  v37[2] = v81;
  v37[3] = v64;
  sub_51F9C(v79, v37 + v61, &qword_4F1D50);
  *(v37 + v62) = 2;
  sub_1D4F0(&v98, v37 + v60[10]);
  sub_51F9C(v97, v37 + v63, &unk_4E9170);
  v65 = type metadata accessor for ContentUnavailablePage();
  v66 = v93;
  result = sub_3EC154();
  v68 = (v66 + *(v65 + 20));
  *v68 = 0;
  v68[1] = 0;
  v69 = v91;
  v68[2] = v92;
  v68[3] = v69;
  v70 = v87;
  v68[4] = v88;
  v68[5] = v70;
  v68[6] = v83;
  return result;
}

uint64_t sub_2730AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2731B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3ECCF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_3EC164();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2732F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3ECCF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_3EC164();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_273418()
{
  result = sub_3ECCF4();
  if (v1 <= 0x3F)
  {
    result = sub_3EC164();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t EmptyPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EC164();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EmptyPage.init(pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_27359C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27361C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EmptyPage()
{
  result = qword_4FD010;
  if (!qword_4FD010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2736D8()
{
  result = sub_3EC164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void MPModelPodcastEpisode.indexChapters.getter()
{
  v1 = [v0 chapters];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_273A74();
  v3 = sub_3ED584();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_3EE5A4();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      do
      {
        v6 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = sub_3EE3F4();
          }

          else
          {
            if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_22;
            }

            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          if (sub_3EDCC4())
          {
            break;
          }

          ++v6;
          if (v5 == v4)
          {
            goto LABEL_24;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_41ECC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          sub_41ECC((v9 > 1), v10 + 1, 1);
          v11 = v10 + 1;
        }

        _swiftEmptyArrayStorage[2] = v11;
        v12 = &_swiftEmptyArrayStorage[2 * v10];
        v12[4] = v6;
        v12[5] = v8;
      }

      while (v5 != v4);
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_4;
    }
  }

LABEL_24:

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage[5];
    v16 = _swiftEmptyArrayStorage;
    do
    {
      v17 = &v15[2 * v14];
      v18 = v14;
      while (1)
      {
        if (v18 >= _swiftEmptyArrayStorage[2])
        {
          __break(1u);
          return;
        }

        v19 = *(v17 - 1);
        v14 = v18 + 1;
        v20 = *v17;
        v21 = [v20 title];
        if (v21)
        {
          break;
        }

        v17 += 2;
        ++v18;
        if (v13 == v14)
        {
          goto LABEL_36;
        }
      }

      v35 = v15;
      v22 = v21;
      v34 = sub_3ED244();
      v24 = v23;

      [v20 startTime];
      v26 = v25;
      [v20 startTime];
      v28 = v27;
      [v20 duration];
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_E0A60(0, *(v16 + 2) + 1, 1, v16);
      }

      v32 = *(v16 + 2);
      v31 = *(v16 + 3);
      if (v32 >= v31 >> 1)
      {
        v16 = sub_E0A60((v31 > 1), v32 + 1, 1, v16);
      }

      *(v16 + 2) = v32 + 1;
      v33 = &v16[40 * v32];
      v15 = v35;
      *(v33 + 4) = v19;
      *(v33 + 5) = v34;
      *(v33 + 6) = v24;
      *(v33 + 7) = v26;
      *(v33 + 8) = v28 + v30;
    }

    while (v13 - 1 != v18);
  }

LABEL_36:
}

unint64_t sub_273A74()
{
  result = qword_4FD048;
  if (!qword_4FD048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4FD048);
  }

  return result;
}

void MPModelPodcastEpisode.chapter(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3E5F84();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 chapters];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  sub_273A74();
  v12 = sub_3ED584();

  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD050);
  sub_273E18();
  if ((sub_3ED894() & 1) == 0 || *(a1 + 48) == 2)
  {

LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v13 = *(a1 + 40);
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v16 = *a1;
  sub_3E5F74();
  sub_3E5E34();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  if (v14 + (v18 - v16) * v13 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v14 + (v18 - v16) * v13;
  }

  if (!(v12 >> 62))
  {
    v20 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_31:
    v37 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

LABEL_30:
  v20 = sub_3EE5A4();
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_11:
  v21 = 0;
  v19 = fmax(v19, 0.0);
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v22 = v21;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v23 = sub_3EE3F4();
      }

      else
      {
        if (v22 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v23 = *(v12 + 8 * v22 + 32);
      }

      v24 = v23;
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      [v23 startTime];
      if (v25 <= v19)
      {
        sub_3EDCD4();
        if (v19 < v26)
        {
          break;
        }
      }

      ++v22;
      if (v21 == v20)
      {
        goto LABEL_32;
      }
    }

    v27 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_41ECC(0, v27[2] + 1, 1);
      v27 = v38;
    }

    v30 = v27[2];
    v29 = v27[3];
    v31 = (v30 + 1);
    if (v30 >= v29 >> 1)
    {
      v36 = v27[2];
      v37 = (v30 + 1);
      sub_41ECC((v29 > 1), v30 + 1, 1);
      v30 = v36;
      v31 = v37;
      v27 = v38;
    }

    v27[2] = v31;
    v37 = v27;
    v32 = &v27[2 * v30];
    v32[4] = v22;
    v32[5] = v24;
  }

  while (v21 != v20);
LABEL_32:

  if (!v37[2])
  {

    goto LABEL_5;
  }

  v33 = v37[4];
  v34 = v37[5];

  QueueModel.Chapter.init(id:mpChapter:)(v34, v33, a2);
}

unint64_t sub_273E18()
{
  result = qword_4FD058;
  if (!qword_4FD058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD058);
  }

  return result;
}

void QueueModel.Chapter.init(id:mpChapter:)(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_3ED244();
    v10 = v9;

    [a1 startTime];
    v12 = v11;
    [a1 startTime];
    v14 = v13;
    [a1 duration];
    v16 = v15;

    v17 = v14 + v16;
  }

  else
  {

    a2 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v17 = 0.0;
  }

  *a3 = a2;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v17;
}

uint64_t QueueModel.currentChapter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

__n128 QueueModel.init(chapters:currentChapter:areChaptersGenerated:hardQueue:softQueue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v8 = *(a2 + 32);
  *a6 = a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = v8;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

void __swiftcall QueueModel.Chapter.init(id:name:startTime:endTime:)(ShelfKit::QueueModel::Chapter *__return_ptr retstr, Swift::Int id, Swift::String name, Swift::Double startTime, Swift::Double endTime)
{
  retstr->id = id;
  retstr->name = name;
  retstr->startTime = startTime;
  retstr->endTime = endTime;
}

void QueueModel.Chapter.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_3EE964(*v0);
  sub_3ED394();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  sub_3EE994(*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  sub_3EE994(*&v4);
}

Swift::Int QueueModel.Chapter.hashValue.getter()
{
  sub_3EE954();
  QueueModel.Chapter.hash(into:)();
  return sub_3EE9A4();
}

Swift::Int sub_2740B0()
{
  sub_3EE954();
  QueueModel.Chapter.hash(into:)();
  return sub_3EE9A4();
}

uint64_t QueueModel.Episode.id.getter()
{
  v1 = [*v0 contentItemIdentifier];
  v2 = sub_3ED244();

  return v2;
}

void *QueueModel.Episode.contentId.getter()
{
  v1 = *(v0 + 8);
  sub_3DE90(v1, *(v0 + 16), *(v0 + 24));
  return v1;
}

uint64_t Showcase.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t QueueModel.Episode.init(responseItem:contentId:title:subline:duration:isExplicit:menuProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char a11, __int128 *a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return sub_1D4F0(a12, a9 + 80);
}

Swift::String __swiftcall QueueModel.Episode.sublineWithDuration(isRTL:explicitSymbol:)(Swift::Bool isRTL, Swift::String_optional explicitSymbol)
{
  object = explicitSymbol.value._object;
  countAndFlagsBits = explicitSymbol.value._countAndFlagsBits;
  [*v2 duration];
  sub_3E5E44();
  v7 = v16 + (v6 - v14) * v17;
  if (v7 >= v15)
  {
    v8 = v15;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 0.0)
  {
    v9 = *(v2 + 48);
    v10 = *(v2 + 56);
    v19.value._countAndFlagsBits = v9;
    v19.value._object = v10;
    v20.value._countAndFlagsBits = countAndFlagsBits;
    v20.value._object = object;
    v11 = sub_3ED794(v19, *(v2 + 72), v20, isRTL, 1);
    if (!v12)
    {
LABEL_8:

      v11 = v9;
      v12 = v10;
    }
  }

  else
  {
    v9 = *(v2 + 48);
    v10 = *(v2 + 56);
    v18.value._countAndFlagsBits = v9;
    v18.value._object = v10;
    v21.value._countAndFlagsBits = countAndFlagsBits;
    v21.value._object = object;
    v11 = sub_3ED7A4(v18, isRTL, *(v2 + 72), v21);
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void sub_274320(uint64_t *a1@<X8>)
{
  v3 = [*v1 contentItemIdentifier];
  v4 = sub_3ED244();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

double sub_274378()
{
  *&xmmword_4FD060 = &_swiftEmptyArrayStorage;
  result = 0.0;
  *(&xmmword_4FD060 + 8) = 0u;
  *&algn_4FD070[8] = 0u;
  *(&xmmword_4FD080 + 1) = 0u;
  qword_4FD098 = &_swiftEmptyArrayStorage;
  qword_4FD0A0 = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t static QueueModel.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8AA8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_4FD090;
  v8[2] = xmmword_4FD080;
  v8[3] = unk_4FD090;
  v2 = qword_4FD0A0;
  v9 = qword_4FD0A0;
  v4 = xmmword_4FD060;
  v3 = *algn_4FD070;
  v8[0] = xmmword_4FD060;
  v8[1] = *algn_4FD070;
  *(a1 + 32) = xmmword_4FD080;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_275EB8(v8, v7);
}

uint64_t QueueViewModel.queue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

__n128 sub_2744B4@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_27454C(__int128 *a1)
{
  v2 = a1[3];
  v13[2] = a1[2];
  v13[3] = v2;
  v14 = *(a1 + 8);
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  sub_275EB8(v13, v7);

  return sub_3E9EB4();
}

uint64_t QueueViewModel.queue.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*QueueViewModel.queue.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_27667C;
}

uint64_t sub_274744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t QueueViewModel.$queue.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*QueueViewModel.$queue.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B8);
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

  v9 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__queue;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  sub_3E9E74();
  swift_endAccess();
  return sub_276680;
}

void (*QueueViewModel.isChapterListExpanded.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_27667C;
}

uint64_t sub_274C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_274E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*QueueViewModel.$isChapterListExpanded.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
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

  v9 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isChapterListExpanded;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E74();
  swift_endAccess();
  return sub_276680;
}

uint64_t sub_2750D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_275154@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_2751E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_275268()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*QueueViewModel.isLocalPlayback.modify(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_275378;
}

void (*QueueViewModel.$isLocalPlayback.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
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

  v9 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isLocalPlayback;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E74();
  swift_endAccess();
  return sub_275514;
}

uint64_t QueueViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  QueueViewModel.init()();
  return v0;
}

uint64_t QueueViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__queue;
  if (qword_4E8AA8 != -1)
  {
    swift_once();
  }

  v23[2] = xmmword_4FD080;
  v23[3] = unk_4FD090;
  v24 = qword_4FD0A0;
  v23[0] = xmmword_4FD060;
  v23[1] = *algn_4FD070;
  v20 = xmmword_4FD080;
  v21 = unk_4FD090;
  v22 = qword_4FD0A0;
  v18 = xmmword_4FD060;
  v19 = *algn_4FD070;
  sub_275EB8(v23, v17);
  sub_3E9E64();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isChapterListExpanded;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  LOBYTE(v18) = v12 == &dword_0 + 1;
  sub_3E9E64();
  v13 = *(v2 + 32);
  v13(v0 + v10, v4, v1);
  v14 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isLocalPlayback;
  LOBYTE(v18) = 1;
  sub_3E9E64();
  v13(v0 + v14, v4, v1);
  return v0;
}

BOOL QueueViewModel.isQueueEmpty.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v15[2] = v12;
  v15[3] = v13;
  v16 = v14;
  v15[0] = v10;
  v15[1] = v11;

  sub_2760D4(v15);
  v0 = *(*(&v13 + 1) + 16);

  if (v0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v8[2] = v5;
  v8[3] = v6;
  v9 = v7;
  v8[0] = v3;
  v8[1] = v4;

  sub_2760D4(v8);
  v2 = *(v7 + 16);

  return v2 == 0;
}

uint64_t QueueViewModel.hasChapters.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  v8 = v6;

  sub_2760D4(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0D0);
  sub_276104();
  v0 = sub_3ED894();

  return v0 & 1;
}

uint64_t QueueViewModel.areChaptersGenerated.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v6[2] = v3;
  v7 = v4;
  v8 = v5;
  v6[0] = v1;
  v6[1] = v2;
  sub_2760D4(v6);
  return v7;
}

uint64_t QueueViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__queue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isChapterListExpanded;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isLocalPlayback, v4);
  return v0;
}

uint64_t QueueViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__queue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD0B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isChapterListExpanded;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC8ShelfKit14QueueViewModel__isLocalPlayback, v4);

  return swift_deallocClassInstance();
}

BOOL _s8ShelfKit10QueueModelV7ChapterV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_3EE804();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t _s8ShelfKit10QueueModelV7EpisodeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_117100();
  v4 = *a1;
  v5 = *a2;
  if (sub_3EDEC4() & 1) != 0 && (*(a1 + 32) == *(a2 + 32) ? (v6 = *(a1 + 40) == *(a2 + 40)) : (v6 = 0), (v6 || (sub_3EE804()) && (*(a1 + 48) == *(a2 + 48) ? (v7 = *(a1 + 56) == *(a2 + 56)) : (v7 = 0), (v7 || (sub_3EE804()) && *(a1 + 72) == *(a2 + 72))))
  {
    v10 = [v4 contentItemIdentifier];
    v11 = sub_3ED244();
    v13 = v12;

    v14 = [v5 contentItemIdentifier];
    v15 = sub_3ED244();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_3EE804();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _s8ShelfKit10QueueModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a1 + 64);
  if ((sub_115B20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v10)
    {
      if (v2 != v9)
      {
        swift_bridgeObjectRetain_n();
        v16 = 1;
        goto LABEL_17;
      }

      if (v4 == v11 && v3 == v10)
      {
        swift_bridgeObjectRetain_n();
        if (v6 != v13)
        {
          v16 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v17 = sub_3EE804();
        swift_bridgeObjectRetain_n();
        v16 = 1;
        if ((v17 & 1) == 0 || v6 != v13)
        {
LABEL_17:
          swift_bridgeObjectRelease_n();
          if (v16 || ((v7 ^ v14) & 1) != 0)
          {
            return 0;
          }

          goto LABEL_19;
        }
      }

      v16 = v5 != v12;
      goto LABEL_17;
    }

LABEL_10:

    return 0;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  if (v7 != v14)
  {
    return 0;
  }

LABEL_19:
  if ((sub_115BFC(v8, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_115BFC(v20, v19);
}

unint64_t sub_276104()
{
  result = qword_4FD0D8;
  if (!qword_4FD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD0D8);
  }

  return result;
}

unint64_t sub_276178()
{
  result = qword_4FD0E0;
  if (!qword_4FD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD0E0);
  }

  return result;
}

uint64_t sub_2762A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2762E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_276348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_276390(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_276414(uint64_t *a1, int a2)
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

uint64_t sub_27645C(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for QueueViewModel()
{
  result = qword_4FD110;
  if (!qword_4FD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27651C()
{
  sub_276630(319, &unk_4FD120);
  if (v0 <= 0x3F)
  {
    sub_276630(319, &qword_4F5C60);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_276630(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_3E9EC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_276698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for EpisodeListEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2767A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for EpisodeListEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for EmptyEpisodeList()
{
  result = qword_4FD210;
  if (!qword_4FD210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2768FC()
{
  sub_276980();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EpisodeListEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_276980()
{
  if (!qword_4FD220)
  {
    sub_3ECF74();
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FD220);
    }
  }
}

uint64_t sub_2769F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EAAF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_FBD0(v2, &v14 - v9, &qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3ECF74();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_276BF4@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD250);
  __chkstk_darwin(v2);
  v4 = (v19 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD258);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD260);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_3ECF74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2769F4(v14);
  if ((*(v12 + 88))(v14, v11) == enum case for WidgetFamily.systemSmall(_:))
  {
    *v10 = sub_3EAC74();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD280);
    sub_276FDC(v1, &v10[*(v15 + 44)]);
    sub_FBD0(v10, v7, &qword_4FD260);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FD270, &qword_4FD260);
    sub_886BC(&qword_4FD278, &qword_4FD250);
    sub_3EADE4();
    return sub_FCF8(v10, &qword_4FD260);
  }

  else
  {
    *v4 = sub_3EBA74();
    v4[1] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD268);
    sub_2776AC(v1, v4 + *(v18 + 44));
    sub_FBD0(v4, v7, &qword_4FD250);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FD270, &qword_4FD260);
    sub_886BC(&qword_4FD278, &qword_4FD250);
    sub_3EADE4();
    sub_FCF8(v4, &qword_4FD250);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_276FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD288);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = (a1 + *(type metadata accessor for EmptyEpisodeList() + 20));
  v17 = v16[3];
  if (v17)
  {
    v18 = v16[2];
    v31 = v17;
    v32 = v18;
  }

  else
  {
    v19 = *v16;
    v31 = v16[1];
    v32 = v19;
  }

  sub_3EBA54();
  sub_3EA434();
  sub_277324(&v6[*(v4 + 20)]);
  *v6 = 3;
  sub_3EBA64();
  sub_3EA804();
  sub_277AAC(v6, v12);
  v20 = &v12[*(v7 + 36)];
  v21 = v47;
  *(v20 + 4) = v46;
  *(v20 + 5) = v21;
  *(v20 + 6) = v48;
  v22 = v43;
  *v20 = v42;
  *(v20 + 1) = v22;
  v23 = v45;
  *(v20 + 2) = v44;
  *(v20 + 3) = v23;
  sub_277B10(v12, v15);
  sub_FBD0(v15, v9, &qword_4FD288);
  v25 = v31;
  v24 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v31;
  *v34 = 2;
  *&v34[8] = v39;
  *&v34[24] = v40;
  *&v34[40] = v41;
  v26 = *v34;
  *a2 = v33;
  *(a2 + 16) = v26;
  v27 = *&v34[32];
  *(a2 + 32) = *&v34[16];
  *(a2 + 48) = v27;
  *(a2 + 64) = *&v34[48];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD290);
  sub_FBD0(v9, a2 + *(v28 + 48), &qword_4FD288);
  sub_FBD0(&v33, v35, &qword_4FD298);
  sub_FCF8(v15, &qword_4FD288);
  sub_FCF8(v9, &qword_4FD288);
  v35[0] = v24;
  v35[1] = v25;
  v35[2] = 2;
  v36 = v39;
  v37 = v40;
  v38 = v41;
  return sub_FCF8(v35, &qword_4FD298);
}

uint64_t sub_277324@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17 = a1;
  v16 = sub_3EAAF4();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = sub_3ECF74();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v2, v8, &qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16);
  }

  v14 = (*(v10 + 88))(v12, v9);
  if (v14 == enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v10 + 104))(v17, v14, v9);
    type metadata accessor for EpisodeViewStyle();
  }

  else if (v14 == enum case for WidgetFamily.systemMedium(_:))
  {
    type metadata accessor for EpisodeViewStyle();
  }

  else
  {
    if (v14 != enum case for WidgetFamily.systemLarge(_:) && v14 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      type metadata accessor for EpisodeViewStyle();
      swift_storeEnumTagMultiPayload();
      return (*(v10 + 8))(v12, v9);
    }

    (*(v10 + 104))(v17);
    type metadata accessor for EpisodeViewStyle();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2776AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD288);
  __chkstk_darwin(v31);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = (a1 + *(type metadata accessor for EmptyEpisodeList() + 20));
  v16 = v15[3];
  if (v16)
  {
    v17 = v15[2];
    v32 = v16;
    v33 = v17;
  }

  else
  {
    v18 = *v15;
    v32 = v15[1];
    v33 = v18;
  }

  sub_3EBA54();
  sub_3EA804();
  sub_277324(&v6[*(v4 + 20)]);
  *v6 = 3;
  sub_3EBA74();
  sub_3EA804();
  sub_277AAC(v6, v11);
  v19 = &v11[*(v31 + 36)];
  v20 = v56;
  *(v19 + 4) = v55;
  *(v19 + 5) = v20;
  *(v19 + 6) = v57;
  v21 = v52;
  *v19 = v51;
  *(v19 + 1) = v21;
  v22 = v54;
  *(v19 + 2) = v53;
  *(v19 + 3) = v22;
  sub_277B10(v11, v14);
  sub_FBD0(v14, v8, &qword_4FD288);
  *&v35[88] = v49;
  *&v35[104] = v50;
  *&v35[56] = v47;
  *&v35[72] = v48;
  *&v35[8] = v44;
  *&v35[24] = v45;
  v24 = v32;
  v23 = v33;
  *&v34 = v33;
  *(&v34 + 1) = v32;
  *v35 = 2;
  *&v35[40] = v46;
  v25 = *&v35[96];
  *(a2 + 96) = *&v35[80];
  *(a2 + 112) = v25;
  *(a2 + 128) = *&v35[112];
  v26 = *v35;
  *a2 = v34;
  *(a2 + 16) = v26;
  v27 = *&v35[32];
  *(a2 + 32) = *&v35[16];
  *(a2 + 48) = v27;
  v28 = *&v35[64];
  *(a2 + 64) = *&v35[48];
  *(a2 + 80) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A8);
  sub_FBD0(v8, a2 + *(v29 + 48), &qword_4FD288);
  sub_FBD0(&v34, v36, &qword_4FD2B0);
  sub_FCF8(v14, &qword_4FD288);
  sub_FCF8(v8, &qword_4FD288);
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v37 = v44;
  v38 = v45;
  v36[0] = v23;
  v36[1] = v24;
  v36[2] = 2;
  v39 = v46;
  return sub_FCF8(v36, &qword_4FD2B0);
}

uint64_t sub_277AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEmptyText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_277B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_277B84()
{
  result = qword_4FD2B8;
  if (!qword_4FD2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD2C0);
    sub_886BC(&qword_4FD270, &qword_4FD260);
    sub_886BC(&qword_4FD278, &qword_4FD250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD2B8);
  }

  return result;
}

uint64_t sub_277C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = _s7EpisodeVMa();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_277DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = _s7EpisodeVMa();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for EpisodeCaptionView()
{
  result = qword_4FD320;
  if (!qword_4FD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_277F30()
{
  sub_27800C(319, &qword_4FD330);
  if (v0 <= 0x3F)
  {
    sub_27800C(319, &unk_4FD338);
    if (v1 <= 0x3F)
    {
      sub_94C68();
      if (v2 <= 0x3F)
      {
        _s7EpisodeVMa();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27800C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_3EA324();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_278074(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (!*(v1 + 3))
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v16 = *(v1 + 12);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v17[0] = v10;
  v17[1] = v5;
  v17[2] = v12;
  v17[3] = v6;
  v17[4] = v14;
  v17[5] = v4;
  v18 = v16;
  sub_279914(v17, v8);
  a1(&v19, &v10);
  v8[4] = v14;
  v8[5] = v15;
  v9 = v16;
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_279970(v8);
    __break(1u);
  }

  else
  {
    sub_279970(v8);
    return v19;
  }

  return result;
}

uint64_t sub_27818C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD390);
  __chkstk_darwin(v2);
  v4 = v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD398);
  __chkstk_darwin(v5);
  v7 = v49 - v6;
  v8 = sub_3EAF54();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD3A0);
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = v49 - v11;
  v61 = type metadata accessor for WidgetEyebrowGenerator(0);
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3E7424();
  v71 = v14;
  v72 = sub_2798CC(&qword_4F07A0, &type metadata accessor for Podcasts);
  v15 = __swift_allocate_boxed_opaque_existential_0Tm(&v68);
  (*(*(v14 - 8) + 104))(v15, enum case for Podcasts.widgetEyebrowsUseTextVariants(_:), v14);
  LOBYTE(v14) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  if (v14)
  {
    v49[1] = a1;
    v16 = sub_278A20();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v49[0] = v16;
      v19 = v16 + v18;
      v62 = *(v12 + 72);
      v66 = _swiftEmptyArrayStorage;
      v60 = v2;
      v58 = v10;
      v20 = v63;
      v59 = v7;
      v57 = v5;
      v56 = v8;
      do
      {
        sub_2797E0(v19, v20, type metadata accessor for WidgetEyebrowGenerator);
        sub_2A6EF0(&v68);
        if (v71)
        {
          v22 = v68;
          v21 = v69;
          v65 = v78;
          v64 = v77;
          v23 = v70;
          if (*(v20 + *(v61 + 28)) == 1)
          {
            v54 = v72;
            v55 = v75;
            v24 = v73;
            v25 = v76;
            v26 = v74;
            sub_243E88(v68, v69, v70 & 1);

            v27 = v24;
            v28 = v55;
            sub_243E88(v54, v27, v26 & 1);

            sub_243E88(v28, v25, v64 & 1);

            v22 = sub_3EB214();
            v21 = v29;
            v23 = v30;
          }

          else
          {
            sub_FBD0(&v68, v67, &qword_4FD3C8);
            sub_243E88(v22, v21, v23 & 1);
          }

          v31 = sub_3EB264();
          v33 = v32;
          v64 = v34;
          v65 = v35;
          sub_94D30(v22, v21, v23 & 1);

          sub_FCF8(&v68, &qword_4FD3C8);
          sub_FCF8(&v68, &qword_4FD3C8);
          sub_279784(v63);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v8 = v56;
            v36 = v66;
          }

          else
          {
            v36 = sub_E0CD0(0, *(v66 + 2) + 1, 1, v66);
            v8 = v56;
          }

          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
          if (v38 >= v37 >> 1)
          {
            v36 = sub_E0CD0((v37 > 1), v38 + 1, 1, v36);
          }

          *(v36 + 2) = v38 + 1;
          v66 = v36;
          v39 = &v36[32 * v38];
          *(v39 + 4) = v31;
          *(v39 + 5) = v33;
          v39[48] = v64 & 1;
          *(v39 + 7) = v65;
          v7 = v59;
          v10 = v58;
          v20 = v63;
        }

        else
        {
          sub_279784(v20);
        }

        v19 += v62;
        --v17;
      }

      while (v17);
    }

    v41 = sub_3EB344();
    v43 = v42;
    v45 = v44;
    v46 = v50;
    sub_3EAE74();
    sub_3EB224();
    sub_94D30(v41, v43, v45 & 1);

    (*(v51 + 8))(v46, v8);
    v47 = v52;
    v48 = v53;
    (*(v52 + 16))(v7, v53, v10);
    swift_storeEnumTagMultiPayload();
    v67[0] = v8;
    v67[1] = &protocol witness table for SizeDependentTextVariant;
    swift_getOpaqueTypeConformance2();
    sub_279650();
    sub_3EADE4();
    return (*(v47 + 8))(v48, v10);
  }

  else
  {
    sub_279094();
    sub_FBD0(v4, v7, &qword_4FD390);
    swift_storeEnumTagMultiPayload();
    v68 = v8;
    v69 = &protocol witness table for SizeDependentTextVariant;
    swift_getOpaqueTypeConformance2();
    sub_279650();
    sub_3EADE4();
    return sub_FCF8(v4, &qword_4FD390);
  }
}

size_t sub_278A20()
{
  v1 = type metadata accessor for WidgetEyebrowGenerator(0);
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v46 - v5;
  __chkstk_darwin(v6);
  v49 = &v46 - v7;
  v8 = sub_3EAAF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v62 = v0;
  v13 = v12;
  v51 = *(v0 + 8);
  if ((v51 & 1) == 0)
  {

    sub_3ED9E4();
    v14 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    (*(v9 + 8))(v11, v8);
    v13 = v63;
  }

  v46 = v11;
  v47 = v9;
  v48 = v8;
  v15 = type metadata accessor for EpisodeCaptionView();
  v16 = v62 + v15[7];
  if (*(v16 + 40))
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v53 = v17;
  v54 = v13 & 0xFFFFFFFFFFFFFFFDLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1520);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v61 = *(v2 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_3F5630;
  v60 = v18;
  v20 = (v19 + v18);
  v22 = *(v16 + 24);
  v21 = *(v16 + 32);
  v63 = v22;
  v64 = v21;
  v56 = v21;
  v57 = sub_138570();
  v23 = 0;
  v24 = 0;
  if (sub_3ED894())
  {
    v24 = v56;

    v23 = v22;
  }

  v52 = v22;
  v25 = *(v62 + v15[8]);
  v26 = v20 + v1[8];
  v58 = v15[6];
  sub_282B94(v26);
  *v20 = v23;
  v20[1] = v24;
  sub_2797E0(v16, v20 + v1[5], _s7EpisodeVMa);
  v27 = v53;
  *(v20 + v1[6]) = v53;
  v28 = v1[7];
  v59 = v25;
  *(v20 + v28) = v25;
  if ((v51 & 1) == 0)
  {

    sub_3ED9E4();
    v29 = sub_3EB034();
    sub_3E9754();

    v30 = v46;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    (*(v47 + 8))(v30, v48);
    LOBYTE(v12) = v63;
  }

  v31 = v55;
  v32 = v56;
  v33 = v52;
  if ((v12 & 4) != 0)
  {
    v63 = v52;
    v64 = v56;
    if (sub_3ED894())
    {
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v34 = v49;
    sub_2797E0(v16, &v49[v1[5]], _s7EpisodeVMa);
    sub_282B94(v34 + v1[8]);
    *v34 = v33;
    v34[1] = v32;
    *(v34 + v1[6]) = v27 & 0xFFFFFFFFFFFFFFFBLL;
    *(v34 + v1[7]) = v59;
    v19 = sub_E0B80(1uLL, 2, 1, v19);
    *(v19 + 16) = 2;
    sub_279848(v34, v19 + v60 + v61);
  }

  if (*(v16 + 64))
  {
    v35 = v27;
  }

  else
  {
    v35 = v54;
  }

  v37 = *(v16 + 48);
  v36 = *(v16 + 56);
  v63 = v37;
  v64 = v36;
  if (sub_3ED894())
  {

    v38 = v37;
    v39 = v36;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  sub_2797E0(v16, v31 + v1[5], _s7EpisodeVMa);
  sub_282B94(v31 + v1[8]);
  *v31 = v38;
  v31[1] = v39;
  *(v31 + v1[6]) = v35;
  *(v31 + v1[7]) = v59;
  v41 = *(v19 + 16);
  v40 = *(v19 + 24);
  if (v41 >= v40 >> 1)
  {
    v19 = sub_E0B80(v40 > 1, v41 + 1, 1, v19);
  }

  *(v19 + 16) = v41 + 1;
  sub_279848(v31, v19 + v60 + v41 * v61);
  if ((v35 & 4) != 0)
  {
    v63 = v37;
    v64 = v36;
    if (sub_3ED894())
    {
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    v42 = v50;
    sub_2797E0(v16, &v50[v1[5]], _s7EpisodeVMa);
    sub_282B94(v42 + v1[8]);
    *v42 = v37;
    v42[1] = v36;
    *(v42 + v1[6]) = v35 & 0xFFFFFFFFFFFFFFFBLL;
    *(v42 + v1[7]) = v59;
    v44 = *(v19 + 16);
    v43 = *(v19 + 24);
    if (v44 >= v43 >> 1)
    {
      v19 = sub_E0B80(v43 > 1, v44 + 1, 1, v19);
    }

    *(v19 + 16) = v44 + 1;
    sub_279848(v42, v19 + v60 + v44 * v61);
  }

  return v19;
}

uint64_t sub_279094()
{
  v0 = type metadata accessor for WidgetEyebrowGenerator(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD3D0);
  __chkstk_darwin(v4);
  v6 = (v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD3B8);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  sub_2A980C();
  if (v10)
  {

    *v9 = sub_3EB054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD3D8);
    v11 = sub_278A20();
    sub_266A38(v11);
    v13 = v12;

    v25[0] = v13;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD3E0);
    type metadata accessor for WidgetEyebrowSizeRestrictingView(0);
    v24[1] = v7;
    sub_886BC(&qword_4FD3E8, &qword_4FD3E0);
    sub_2798CC(&qword_4FD3F0, type metadata accessor for WidgetEyebrowSizeRestrictingView);
    sub_3EB9C4();
    sub_FBD0(v9, v6, &qword_4FD3B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB938);
    sub_886BC(&qword_4FD3B0, &qword_4FD3B8);
    sub_279708();
    sub_3EADE4();
    return sub_FCF8(v9, &qword_4FD3B8);
  }

  else
  {
    v15 = sub_278A20();
    if (*(v15 + 16))
    {
      sub_2797E0(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for WidgetEyebrowGenerator);

      sub_2A6EF0(v25);
      __chkstk_darwin(v16);
      v17 = sub_278074(sub_2798AC);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      sub_FCF8(v25, &qword_4FD3C8);
      sub_279784(v3);
    }

    else
    {

      v17 = 0;
      v19 = 0;
      v21 = 0;
      v23 = 0;
    }

    *v6 = v17;
    v6[1] = v19;
    v6[2] = v21;
    v6[3] = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB938);
    sub_886BC(&qword_4FD3B0, &qword_4FD3B8);
    sub_279708();
    return sub_3EADE4();
  }
}

uint64_t sub_279598@<X0>(uint64_t a1@<X8>)
{
  sub_27818C(a1);
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD378) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD380);
  sub_3EA844();
  *v2 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD388);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  *(v5 + 16) = 0;
  return result;
}

unint64_t sub_279650()
{
  result = qword_4FD3A8;
  if (!qword_4FD3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD390);
    sub_886BC(&qword_4FD3B0, &qword_4FD3B8);
    sub_279708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD3A8);
  }

  return result;
}

unint64_t sub_279708()
{
  result = qword_4FD3C0;
  if (!qword_4FD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD3C0);
  }

  return result;
}

uint64_t sub_279784(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEyebrowGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2797E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_279848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEyebrowGenerator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2798CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2799C8()
{
  result = qword_4FD3F8;
  if (!qword_4FD3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD388);
    sub_279A80();
    sub_886BC(&qword_4F16F8, &qword_4F16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD3F8);
  }

  return result;
}

unint64_t sub_279A80()
{
  result = qword_4FD400;
  if (!qword_4FD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD378);
    sub_279B38();
    sub_886BC(&qword_4FD418, &qword_4FD380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD400);
  }

  return result;
}

unint64_t sub_279B38()
{
  result = qword_4FD408;
  if (!qword_4FD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD410);
    sub_3EAF54();
    swift_getOpaqueTypeConformance2();
    sub_279650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD408);
  }

  return result;
}

uint64_t sub_279C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_279CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeListView()
{
  result = qword_4FD478;
  if (!qword_4FD478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_279DFC()
{
  sub_27A084(319, &unk_4FD338, &type metadata for WidgetListStyle, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_27A020(319, &qword_4FD220, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_279FBC();
      if (v2 <= 0x3F)
      {
        sub_27A084(319, &qword_4FD498, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_27A020(319, &qword_4FD4A0, _s7EpisodeVMa, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_27A084(319, &unk_4FD4A8, &type metadata for WidgetEmptyMessage, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_279FBC()
{
  if (!qword_4FD488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD490);
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FD488);
    }
  }
}

void sub_27A020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27A084(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27A0F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD4F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD500);
  __chkstk_darwin(v8 - 8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v46 - v11;
  v12 = type metadata accessor for EpisodeListView();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD508);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin(v16);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = &v46 - v19;
  v20 = sub_3B3228(*(a1 + *(v13 + 44)), *(a1 + *(v13 + 40)));
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v53 = v5;
  if ((v25 & 1) == 0)
  {

LABEL_3:
    sub_268D68(v20, v22, v24, v26);
    v28 = v27;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_3EE824();
  swift_unknownObjectRetain_n();

  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = v29[2];

  if (__OFSUB__(v26 >> 1, v24))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v30 != (v26 >> 1) - v24)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v28)
  {
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

LABEL_11:
  v55 = v28;
  sub_27CBD8(a1, &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpisodeListView);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = swift_allocObject();
  sub_27CC40(&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for EpisodeListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
  type metadata accessor for EpisodeRowView();
  sub_886BC(&qword_4FD518, &qword_4FD510);
  sub_27CB90(&qword_4FD520, type metadata accessor for EpisodeRowView);
  sub_27CB90(&qword_4FD528, _s7EpisodeVMa);
  v33 = v54;
  sub_3EB9D4();
  v34 = v46;
  sub_27ADA8(v46);
  v35 = v50;
  sub_27B748(v50);
  v37 = v47;
  v36 = v48;
  v38 = *(v48 + 16);
  v39 = v49;
  v38(v47, v33, v49);
  v40 = v51;
  sub_FBD0(v34, v51, &qword_4FD500);
  v41 = v53;
  sub_FBD0(v35, v53, &qword_4FD4F8);
  v42 = v52;
  v38(v52, v37, v39);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD530);
  sub_FBD0(v40, &v42[*(v43 + 48)], &qword_4FD500);
  sub_FBD0(v41, &v42[*(v43 + 64)], &qword_4FD4F8);
  sub_FCF8(v35, &qword_4FD4F8);
  sub_FCF8(v34, &qword_4FD500);
  v44 = *(v36 + 8);
  v44(v54, v39);
  sub_FCF8(v41, &qword_4FD4F8);
  sub_FCF8(v40, &qword_4FD500);
  return (v44)(v37, v39);
}

uint64_t sub_27A718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD608);
  __chkstk_darwin(v57);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD610);
  __chkstk_darwin(v7 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = _s7EpisodeVMa();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v59 = &v52 - v19;
  sub_27CBD8(a1, &v52 - v19, _s7EpisodeVMa);
  sub_27CBD8(a1, v14, _s7EpisodeVMa);
  v56 = *(v16 + 56);
  v56(v14, 0, 1, v15);
  v20 = type metadata accessor for EpisodeListView();
  v21 = *(v20 + 32);
  v22 = *(v20 + 36);
  v58 = v20;
  v23 = *(a2 + v21);
  v60 = a2;
  v24 = sub_3B3228(*(a2 + v22), v23);
  v55 = v25;
  v27 = v26;
  v29 = v28;
  if ((v28 & 1) == 0)
  {

LABEL_3:
    sub_268D68(v24, v55, v27, v29);
    v31 = v30;
    v32 = v61;
    v33 = v57;
    goto LABEL_12;
  }

  v52 = v11;
  sub_3EE824();
  swift_unknownObjectRetain_n();

  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v34 = _swiftEmptyArrayStorage;
  }

  v35 = v34[2];

  if (__OFSUB__(v29 >> 1, v27))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v35 != (v29 >> 1) - v27)
  {
LABEL_25:
    swift_unknownObjectRelease();
    v11 = v52;
    goto LABEL_3;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v32 = v61;
  v11 = v52;
  v33 = v57;
  if (!v31)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_12:
    swift_unknownObjectRelease();
    if (!v31[2])
    {
      goto LABEL_13;
    }

LABEL_10:
    sub_27CBD8(v31 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v11, _s7EpisodeVMa);
    v36 = 0;
    goto LABEL_14;
  }

  if (v31[2])
  {
    goto LABEL_10;
  }

LABEL_13:
  v36 = 1;
LABEL_14:

  v56(v11, v36, 1, v15);
  v37 = *(v33 + 48);
  sub_FBD0(v14, v6, &qword_4FD610);
  sub_FBD0(v11, &v6[v37], &qword_4FD610);
  v38 = v11;
  v39 = *(v16 + 48);
  if (v39(v6, 1, v15) == 1)
  {
    sub_FCF8(v38, &qword_4FD610);
    sub_FCF8(v14, &qword_4FD610);
    if (v39(&v6[v37], 1, v15) == 1)
    {
      sub_FCF8(v6, &qword_4FD610);
LABEL_22:
      v44 = v58;
      v43 = v60;
      v42 = *(v60 + *(v58 + 40));
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v40 = v38;
  v41 = v54;
  sub_FBD0(v6, v54, &qword_4FD610);
  if (v39(&v6[v37], 1, v15) == 1)
  {
    sub_FCF8(v40, &qword_4FD610);
    sub_FCF8(v14, &qword_4FD610);
    sub_27CCA8(v41, _s7EpisodeVMa);
LABEL_19:
    sub_FCF8(v6, &qword_4FD608);
    goto LABEL_20;
  }

  v45 = &v6[v37];
  v46 = v53;
  sub_27CC40(v45, v53, _s7EpisodeVMa);
  v47 = sub_2AE844(v41, v46);
  sub_27CCA8(v46, _s7EpisodeVMa);
  sub_FCF8(v40, &qword_4FD610);
  sub_FCF8(v14, &qword_4FD610);
  sub_27CCA8(v41, _s7EpisodeVMa);
  sub_FCF8(v6, &qword_4FD610);
  if (v47)
  {
    goto LABEL_22;
  }

LABEL_20:
  v42 = 5;
  v43 = v60;
  v44 = v58;
LABEL_23:
  v48 = *(v43 + *(v44 + 44)) * 0.5;
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v49 = type metadata accessor for EpisodeRowView();
  v50 = v49[5];
  *(v32 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  sub_27CC40(v59, v32 + v49[6], _s7EpisodeVMa);
  *(v32 + v49[7]) = v42;
  type metadata accessor for EpisodeViewStyle();
  result = swift_storeEnumTagMultiPayload();
  *(v32 + v49[9]) = v48;
  return result;
}

uint64_t sub_27ADA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD558);
  __chkstk_darwin(v56);
  v5 = &v44 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5C8);
  __chkstk_darwin(v54);
  v55 = &v44 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5D0);
  __chkstk_darwin(v52);
  v47 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5D8);
  __chkstk_darwin(v48);
  v50 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v9 - 8);
  v45 = &v44 - v10;
  v49 = type metadata accessor for EpisodeRowView();
  __chkstk_darwin(v49);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5E0);
  __chkstk_darwin(v53);
  v51 = &v44 - v12;
  v13 = sub_3EAAF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EpisodeListView();
  v18 = v1 + v17[6];
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_3ED9E4();
    v20 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v19, 0);
    (*(v14 + 8))(v16, v13);
    LOBYTE(v19) = v59;
  }

  if (v19 == 2)
  {
    v21 = *v2;
    if (*(v2 + 8) == 1)
    {
      if (!*v2)
      {
        goto LABEL_15;
      }
    }

    else
    {

      sub_3ED9E4();
      v22 = a1;
      v23 = sub_3EB034();
      sub_3E9754();

      a1 = v22;
      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v21, 0);
      (*(v14 + 8))(v16, v13);
      if (!v58)
      {
        goto LABEL_15;
      }
    }
  }

  else if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v2 + v17[10]) == 5 && *(*(v2 + v17[8]) + 16) < *(v2 + v17[9]))
  {
    v24 = v2 + v17[7];
    v25 = *v24;
    if (*(v24 + 8) == 1)
    {
      if ((v25 & 1) == 0)
      {
LABEL_14:
        type metadata accessor for WidgetEmptyText();
        type metadata accessor for EpisodeViewStyle();
        v26 = v47;
        swift_storeEnumTagMultiPayload();
        *v26 = 1;
        v27 = sub_3EB0A4();
        sub_3EA264();
        v28 = &v26[*(v52 + 36)];
        *v28 = v27;
        *(v28 + 1) = v29;
        *(v28 + 2) = v30;
        *(v28 + 3) = v31;
        *(v28 + 4) = v32;
        v28[40] = 0;
        sub_FBD0(v26, v50, &qword_4FD5D0);
        swift_storeEnumTagMultiPayload();
        sub_27CB90(&qword_4FD520, type metadata accessor for EpisodeRowView);
        sub_27CAD4();
        v33 = v51;
        sub_3EADE4();
        sub_FCF8(v26, &qword_4FD5D0);
LABEL_21:
        sub_FBD0(v33, v55, &qword_4FD5E0);
        swift_storeEnumTagMultiPayload();
        sub_27CA18();
        sub_27C53C();
        sub_3EADE4();
        sub_FCF8(v33, &qword_4FD5E0);
        goto LABEL_22;
      }
    }

    else
    {

      sub_3ED9E4();
      v35 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v25, 0);
      (*(v14 + 8))(v16, v13);
      if (v57 != 1)
      {
        goto LABEL_14;
      }
    }

    v36 = v45;
    sub_282F54(v45);
    v37 = sub_3ECF74();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    v38 = v49;
    v39 = v46;
    sub_2AC7D0(v36, &v46[*(v49 + 24)]);
    sub_FCF8(v36, &qword_4FD5B8);
    v40 = *(v2 + v17[11]) * 0.5;
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v41 = v38[5];
    *(v39 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
    swift_storeEnumTagMultiPayload();
    *(v39 + v38[7]) = 1;
    type metadata accessor for EpisodeViewStyle();
    swift_storeEnumTagMultiPayload();
    *(v39 + v38[9]) = v40;
    sub_27CBD8(v39, v50, type metadata accessor for EpisodeRowView);
    swift_storeEnumTagMultiPayload();
    sub_27CB90(&qword_4FD520, type metadata accessor for EpisodeRowView);
    sub_27CAD4();
    v33 = v51;
    sub_3EADE4();
    sub_27CCA8(v39, type metadata accessor for EpisodeRowView);
    goto LABEL_21;
  }

LABEL_15:
  if (*(v2 + v17[10]) == 5 && *(*(v2 + v17[8]) + 16) < *(v2 + v17[9]))
  {
    sub_27BC08();
    sub_FBD0(v5, v55, &qword_4FD558);
    swift_storeEnumTagMultiPayload();
    sub_27CA18();
    sub_27C53C();
    sub_3EADE4();
    sub_FCF8(v5, &qword_4FD558);
LABEL_22:
    v34 = 0;
    goto LABEL_23;
  }

  v34 = 1;
LABEL_23:
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5E8);
  return (*(*(v42 - 8) + 56))(a1, v34, 1, v42);
}

uint64_t *sub_27B748@<X0>(uint64_t a1@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD538);
  __chkstk_darwin(v37);
  v4 = &v31 - v3;
  v5 = type metadata accessor for EpisodeListView();
  v6 = v5 - 8;
  v32 = *(v5 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD540);
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = &v31 - v9;
  v10 = *(v1 + *(v6 + 44));
  v11 = sub_3B3228(v10, *(v1 + *(v6 + 40)));
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (v16)
  {
    v31 = a1;
    sub_3EE824();
    swift_unknownObjectRetain_n();

    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = v19[2];

    if (__OFSUB__(v17 >> 1, v15))
    {
      goto LABEL_18;
    }

    if (v20 != (v17 >> 1) - v15)
    {
      goto LABEL_19;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v15)
    {
      goto LABEL_11;
    }

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  while (1)
  {
    sub_268D68(v11, v13, v15, v17);
    v15 = v18;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v21 = v15[2];

    v22 = __OFSUB__(v10, v21);
    v11 = v10 - v21;
    if (!v22)
    {
      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_unknownObjectRelease();
  }

  if (v11 < 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_27C4B8();
    return sub_3EADE4();
  }

  else
  {
    v23 = sub_1C368C(v11 - 1, 0);
    result = sub_27C7A4(v38, (v23 + 4), v11 - 1, 1, v11);
    if (result == (v11 - 1))
    {
      v38[0] = v23;
      swift_getKeyPath();
      v25 = v33;
      sub_27CBD8(v1, v33, type metadata accessor for EpisodeListView);
      v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v27 = swift_allocObject();
      sub_27CC40(v25, v27 + v26, type metadata accessor for EpisodeListView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD558);
      sub_886BC(&qword_4FD5A8, &qword_4FD5A0);
      sub_27C53C();
      v28 = v34;
      sub_3EB9C4();
      v30 = v35;
      v29 = v36;
      (*(v35 + 16))(v4, v28, v36);
      swift_storeEnumTagMultiPayload();
      sub_27C4B8();
      sub_3EADE4();
      return (*(v30 + 8))(v28, v29);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_27BC08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B0);
  __chkstk_darwin(v1);
  v3 = &v43 - v2;
  v51 = sub_3EA7C4();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v5 - 8);
  v46 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD560);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5C0);
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v43 - v11;
  v12 = sub_3EAAF4();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for EpisodeListView();
  v15 = *(v45 + 28);
  v52 = v0;
  v16 = v0 + v15;
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
LABEL_3:
      v18 = sub_3EB774();
      sub_3EBA74();
      sub_3EA804();
      *&v55[6] = v56;
      *&v55[22] = v57;
      *&v55[38] = v58;
      *&v55[54] = v59;
      *&v55[102] = v62;
      *&v55[86] = v61;
      *&v55[70] = v60;
      *v3 = v18;
      *(v3 + 4) = 256;
      v19 = *v55;
      v20 = *&v55[16];
      v21 = *&v55[32];
      *(v3 + 58) = *&v55[48];
      *(v3 + 42) = v21;
      *(v3 + 26) = v20;
      *(v3 + 10) = v19;
      v22 = *&v55[64];
      v23 = *&v55[80];
      v24 = *&v55[96];
      *(v3 + 15) = *&v55[110];
      *(v3 + 106) = v24;
      *(v3 + 90) = v23;
      *(v3 + 74) = v22;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD588);
      v25 = sub_27C604();
      v53 = v7;
      v54 = v25;
      swift_getOpaqueTypeConformance2();
      sub_27C6EC();
      return sub_3EADE4();
    }
  }

  else
  {

    sub_3ED9E4();
    v27 = sub_3EB034();
    v43 = v12;
    v28 = v7;
    v29 = v27;
    sub_3E9754();

    v7 = v28;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v44 + 8))(v14, v43);
    if (v56 != 1)
    {
      goto LABEL_3;
    }
  }

  v30 = v45;
  v31 = v52;
  v32 = v46;
  sub_282F54(v46);
  v33 = sub_3ECF74();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = type metadata accessor for EpisodeRowView();
  sub_2AC7D0(v32, &v9[v34[6]]);
  sub_FCF8(v32, &qword_4FD5B8);
  v35 = *(v31 + *(v30 + 44)) * 0.5;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v36 = v34[5];
  *&v9[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v9[v34[7]] = 5;
  type metadata accessor for EpisodeViewStyle();
  swift_storeEnumTagMultiPayload();
  *&v9[v34[9]] = v35;
  KeyPath = swift_getKeyPath();
  v38 = &v9[*(v7 + 36)];
  *v38 = KeyPath;
  v38[1] = 0;
  v39 = v48;
  sub_3EA7B4();
  v40 = sub_27C604();
  v41 = v47;
  sub_3EB704();
  (*(v50 + 8))(v39, v51);
  sub_FCF8(v9, &qword_4FD560);
  v42 = v49;
  (*(v49 + 16))(v3, v41, v10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD588);
  *&v56 = v7;
  *(&v56 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_27C6EC();
  sub_3EADE4();
  return (*(v42 + 8))(v41, v10);
}

uint64_t sub_27C3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 44));
  *a2 = sub_3EAC74();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD4F0);
  return sub_27A0F0(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_27C438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_27A718(a1, v6, a2);
}

unint64_t sub_27C4B8()
{
  result = qword_4FD548;
  if (!qword_4FD548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD540);
    sub_27C53C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD548);
  }

  return result;
}

unint64_t sub_27C53C()
{
  result = qword_4FD550;
  if (!qword_4FD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD560);
    sub_27C604();
    swift_getOpaqueTypeConformance2();
    sub_27C6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD550);
  }

  return result;
}

unint64_t sub_27C604()
{
  result = qword_4FD568;
  if (!qword_4FD568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD560);
    sub_27CB90(&qword_4FD520, type metadata accessor for EpisodeRowView);
    sub_886BC(&qword_4FD570, &qword_4FD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD568);
  }

  return result;
}

unint64_t sub_27C6EC()
{
  result = qword_4FD580;
  if (!qword_4FD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD588);
    sub_886BC(&qword_4FD590, &qword_4FD598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD580);
  }

  return result;
}

uint64_t *sub_27C7A4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for EpisodeListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_23968C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_3ECF74();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_23968C(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_23968C(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

unint64_t sub_27CA18()
{
  result = qword_4FD5F0;
  if (!qword_4FD5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD5E0);
    sub_27CB90(&qword_4FD520, type metadata accessor for EpisodeRowView);
    sub_27CAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD5F0);
  }

  return result;
}

unint64_t sub_27CAD4()
{
  result = qword_4FD5F8;
  if (!qword_4FD5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD5D0);
    sub_27CB90(&qword_4FD600, type metadata accessor for WidgetEmptyText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD5F8);
  }

  return result;
}

uint64_t sub_27CB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27CBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27CC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27CCA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27CD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
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
    v8 = type metadata accessor for EpisodeListEntry();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27CE20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for EpisodeListEntry();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27CEE0()
{
  sub_27800C(319, &unk_4FD338);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EpisodeListEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27CF90@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for SingleListEpisodeWidgetLarge(0);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD6B8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v29 = type metadata accessor for HeroEpisodeListWidgetLarge(0);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EAAF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 8) == 1)
  {
    v32 = *v1;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_3ED9E4();
    v16 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (!v32)
    {
      goto LABEL_13;
    }
  }

  v13 = sub_3EE804();

  if (v13)
  {
LABEL_14:
    v24 = type metadata accessor for EpisodeListWidgetLarge(0);
    sub_27F490(v1 + *(v24 + 20), &v7[*(v29 + 24)], type metadata accessor for EpisodeListEntry);
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    *(v7 + 2) = swift_getKeyPath();
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[48] = 0;
    sub_27F490(v7, v5, type metadata accessor for HeroEpisodeListWidgetLarge);
    swift_storeEnumTagMultiPayload();
    sub_27F4F8(&qword_4FD6C0, type metadata accessor for HeroEpisodeListWidgetLarge);
    sub_27F4F8(&qword_4FD6C8, type metadata accessor for SingleListEpisodeWidgetLarge);
    sub_3EADE4();
    v22 = type metadata accessor for HeroEpisodeListWidgetLarge;
    v23 = v7;
    return sub_27F54C(v23, v22);
  }

  v14 = *v1;
  if (*(v1 + 8) == 1)
  {
    v31 = *v1;
    v15 = v14;
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_3ED9E4();
    v17 = sub_3EB034();
    v26 = v2;
    v18 = v17;
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_27CD50(v14, 0);
    (*(v9 + 8))(v11, v8);
    v15 = v31;
    if (!v31)
    {
      goto LABEL_11;
    }
  }

  if (v15 != 1)
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_11:
  v19 = sub_3EE804();

  if (v19)
  {
    goto LABEL_14;
  }

  v20 = v1 + *(type metadata accessor for EpisodeListWidgetLarge(0) + 20);
  v21 = v27;
  sub_27F490(v20, v27, type metadata accessor for EpisodeListEntry);
  sub_27F490(v21, v5, type metadata accessor for SingleListEpisodeWidgetLarge);
  swift_storeEnumTagMultiPayload();
  sub_27F4F8(&qword_4FD6C0, type metadata accessor for HeroEpisodeListWidgetLarge);
  sub_27F4F8(&qword_4FD6C8, type metadata accessor for SingleListEpisodeWidgetLarge);
  sub_3EADE4();
  v22 = type metadata accessor for SingleListEpisodeWidgetLarge;
  v23 = v21;
  return sub_27F54C(v23, v22);
}

uint64_t sub_27D590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EB744();
  *&v93 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD820);
  __chkstk_darwin(v95);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v85 - v10);
  v99 = sub_3EAAF4();
  *&v94 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD828);
  __chkstk_darwin(v13);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  result = type metadata accessor for HeroEpisodeListWidgetLarge(0);
  v19 = a1 + *(result + 24);
  v20 = *(v19 + 40);
  if (*(v20 + 16))
  {
    v86 = v13;
    v87 = v4;
    v97 = v11;
    v91 = v8;
    v92 = a2;
    v21 = type metadata accessor for EpisodeListWidgetLargeHeader();
    v22 = *(v21 + 20);
    v23 = *(_s7EpisodeVMa() - 8);
    sub_27F490(v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), &v17[v22], _s7EpisodeVMa);
    v24 = *(v19 + 32);
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v17[*(v21 + 24)] = v24;
    v25 = sub_3EB094();
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v29 = *(a1 + 32);
    v28 = *(a1 + 40);
    v100 = *(a1 + 48);
    v90 = v29;
    v89 = v26;
    v88 = v28;
    if (v100 == 1)
    {
      v32 = v94;
    }

    else
    {

      sub_3ED9E4();
      v30 = sub_3EB034();
      sub_3E9754();

      v31 = v98;
      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_27FA74(v27, v26, v29, v28, 0);
      v32 = v94;
      (*(v94 + 8))(v31, v99);
    }

    sub_3EA264();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD830) + 36)];
    *v41 = v25;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = sub_3EB0A4();
    sub_3EA264();
    v43 = &v17[*(v86 + 36)];
    *v43 = v42;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    v43[40] = 0;
    v48 = sub_3EAC84();
    v49 = v97;
    *v97 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD838);
    sub_27DE8C(a1, v49 + *(v50 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC160);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_3F5310;
    v52 = enum case for Color.RGBColorSpace.sRGB(_:);
    v53 = *(v93 + 104);
    v54 = v87;
    v53(v6, enum case for Color.RGBColorSpace.sRGB(_:), v87);
    *(v51 + 32) = sub_3EB7C4();
    v53(v6, v52, v54);
    *(v51 + 40) = sub_3EB7C4();
    sub_3EBA14();
    sub_3EBB34();
    sub_3EBB44();
    sub_3EA5A4();
    v55 = v106;
    v93 = v108;
    v94 = v107;
    if (v100)
    {
      v56 = v89;
      v102 = v27;
      v103 = v89;
      v57 = v90;
      v58 = v88;
      v104 = v90;
      v105 = v88;
    }

    else
    {

      sub_3ED9E4();
      v59 = sub_3EB034();
      sub_3E9754();

      v60 = v98;
      sub_3EAAE4();
      swift_getAtKeyPath();
      v56 = v89;
      v57 = v90;
      v58 = v88;
      sub_27FA74(v27, v89, v90, v88, 0);
      (*(v32 + 8))(v60, v99);
    }

    sub_3EB094();
    sub_3EA254();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    KeyPath = swift_getKeyPath();
    v101 = 0;
    v70 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD840) + 36);
    *v70 = v55;
    *(v70 + 24) = v93;
    *(v70 + 8) = v94;
    *(v70 + 40) = v62;
    *(v70 + 48) = v64;
    *(v70 + 56) = v66;
    *(v70 + 64) = v68;
    *(v70 + 72) = KeyPath;
    *(v70 + 80) = v101;
    v71 = sub_3EB0A4();
    if (!v100)
    {

      sub_3ED9E4();
      v72 = v58;
      v73 = sub_3EB034();
      sub_3E9754();

      v74 = v98;
      sub_3EAAE4();
      swift_getAtKeyPath();
      v75 = v72;
      v49 = v97;
      sub_27FA74(v27, v56, v57, v75, 0);
      (*(v32 + 8))(v74, v99);
    }

    sub_3EA264();
    v76 = v49 + *(v95 + 36);
    *v76 = v71;
    *(v76 + 8) = v77;
    *(v76 + 16) = v78;
    *(v76 + 24) = v79;
    *(v76 + 32) = v80;
    *(v76 + 40) = 0;
    v81 = v96;
    sub_FBD0(v17, v96, &qword_4FD828);
    v82 = v91;
    sub_FBD0(v49, v91, &qword_4FD820);
    v83 = v92;
    sub_FBD0(v81, v92, &qword_4FD828);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD848);
    sub_FBD0(v82, v83 + *(v84 + 48), &qword_4FD820);
    sub_FCF8(v49, &qword_4FD820);
    sub_FCF8(v17, &qword_4FD828);
    sub_FCF8(v82, &qword_4FD820);
    return sub_FCF8(v81, &qword_4FD828);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27DE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD850);
  __chkstk_darwin(v4);
  v93 = (&v86 - v5);
  v89 = type metadata accessor for EpisodeListView();
  __chkstk_darwin(v89);
  v91 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = (&v86 - v8);
  __chkstk_darwin(v9);
  v92 = &v86 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD858);
  __chkstk_darwin(v100);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v86 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD860);
  __chkstk_darwin(v105);
  v15 = &v86 - v14;
  v94 = type metadata accessor for WidgetEmptyText();
  __chkstk_darwin(v94);
  v96 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD868);
  __chkstk_darwin(v19 - 8);
  v97 = (&v86 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD870);
  __chkstk_darwin(v21);
  v98 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v99 = &v86 - v24;
  v25 = sub_3EAAF4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (a1 + *(type metadata accessor for HeroEpisodeListWidgetLarge(0) + 24));
  result = v29[5];
  v31 = *(result + 16);
  if (!v31)
  {
    __break(1u);
    goto LABEL_14;
  }

  v87 = v29;
  v102 = v21;
  v103 = a2;
  v32 = *a1;
  v33 = *(a1 + 8);
  v104 = result;
  if (v33 == 1)
  {
    LOBYTE(v106) = v32;

    v34 = v32;
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_7:
    v37 = sub_3EE804();

    if (v31 == 1 && (v37 & 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_27FA88(v32, 0);
  sub_3ED9E4();
  v35 = v4;
  v36 = sub_3EB034();
  sub_3E9754();

  v4 = v35;
  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_27CD50(v32, 0);
  (*(v26 + 8))(v28, v25);
  v34 = v106;
  if (!v106)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v34 == 1)
  {
    goto LABEL_7;
  }

  if (v31 == 1)
  {
LABEL_9:
    v38 = sub_3EAC74();
    v39 = v97;
    *v97 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8A8) + 44);
    type metadata accessor for EpisodeViewStyle();
    v41 = v95;
    swift_storeEnumTagMultiPayload();
    *v41 = 3;
    v42 = v96;
    sub_27F490(v41, v96, type metadata accessor for WidgetEmptyText);
    *v40 = 0;
    *(v40 + 8) = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8B0);
    sub_27F490(v42, v40 + *(v43 + 48), type metadata accessor for WidgetEmptyText);
    v44 = v40 + *(v43 + 64);
    *v44 = 0;
    *(v44 + 8) = 1;
    sub_27F54C(v41, type metadata accessor for WidgetEmptyText);
    sub_27F54C(v42, type metadata accessor for WidgetEmptyText);
    sub_3EBA74();
    sub_3EA804();
    v45 = v98;
    sub_FACC(v39, v98, &qword_4FD868);
    v46 = (v45 + *(v102 + 36));
    v47 = v111;
    v46[4] = v110;
    v46[5] = v47;
    v46[6] = v112;
    v48 = v107;
    *v46 = v106;
    v46[1] = v48;
    v49 = v109;
    v46[2] = v108;
    v46[3] = v49;
    v50 = v99;
    sub_FACC(v45, v99, &qword_4FD870);
    sub_FBD0(v50, v15, &qword_4FD870);
    swift_storeEnumTagMultiPayload();
    sub_27FBCC();
    sub_886BC(&qword_4FD8A0, &qword_4FD850);
    sub_3EADE4();

    return sub_FCF8(v50, &qword_4FD870);
  }

LABEL_11:
  v98 = v15;
  v99 = v4;
  v51 = v87[1];
  *&v106 = *v87;
  *(&v106 + 1) = v51;
  sub_68DC4();

  v52 = sub_3EB394();
  v54 = v53;
  v56 = v55;
  sub_3EB1A4();
  sub_3EB114();

  v57 = sub_3EB2A4();
  v59 = v58;
  v61 = v60;
  v63 = v62;

  sub_94D30(v52, v54, v56 & 1);

  KeyPath = swift_getKeyPath();
  *&v106 = v57;
  *(&v106 + 1) = v59;
  v65 = v61 & 1;
  LOBYTE(v107) = v61 & 1;
  *(&v107 + 1) = v63;
  *&v108 = KeyPath;
  *(&v108 + 1) = 1;
  LOBYTE(v109) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD878);
  sub_27FA9C();
  v66 = v101;
  sub_3EB484();
  sub_94D30(v57, v59, v65);

  result = swift_getKeyPath();
  v67 = &v66[*(v100 + 36)];
  *v67 = result;
  v67[8] = 0;
  v68 = v104;
  v69 = *(v104 + 16);
  if (v69)
  {
    v70 = (2 * v69) | 1;
    v71 = *(_s7EpisodeVMa() - 8);
    sub_268D68(v68, v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), 1, v70);
    v73 = v72;
    v74 = swift_getKeyPath();
    v75 = v88;
    *v88 = v74;
    *(v75 + 8) = 0;
    v76 = v89;
    v77 = *(v89 + 20);
    *(v75 + v77) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
    swift_storeEnumTagMultiPayload();
    v78 = v75 + v76[6];
    *v78 = swift_getKeyPath();
    *(v78 + 8) = 0;
    v79 = v75 + v76[7];
    *v79 = swift_getKeyPath();
    *(v79 + 8) = 0;
    *(v75 + v76[8]) = v73;
    *(v75 + v76[9]) = 3;
    *(v75 + v76[10]) = 5;
    *(v75 + v76[11]) = 0x4028000000000000;
    v80 = v66;
    v81 = v92;
    sub_27FB68(v75, v92);
    v82 = v90;
    sub_FBD0(v80, v90, &qword_4FD858);
    v83 = v91;
    sub_27F490(v81, v91, type metadata accessor for EpisodeListView);
    v84 = v93;
    *v93 = 0x4026000000000000;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD888);
    sub_FBD0(v82, v84 + v85[12], &qword_4FD858);
    *(v84 + v85[16]) = 0x4020000000000000;
    sub_27F490(v83, v84 + v85[20], type metadata accessor for EpisodeListView);
    sub_27F54C(v83, type metadata accessor for EpisodeListView);
    sub_FCF8(v82, &qword_4FD858);
    sub_FBD0(v84, v98, &qword_4FD850);
    swift_storeEnumTagMultiPayload();
    sub_27FBCC();
    sub_886BC(&qword_4FD8A0, &qword_4FD850);
    sub_3EADE4();

    sub_FCF8(v84, &qword_4FD850);
    sub_27F54C(v81, type metadata accessor for EpisodeListView);
    return sub_FCF8(v80, &qword_4FD858);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_27EA8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0x3FD8000000000000;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD810);
  sub_27D590(v1, a1 + *(v3 + 44));
  sub_282F7C();
  sub_3EB074();
  sub_3EA254();
  v5 = 0.0 - v4;
  v7 = 0.0 - v6;
  v9 = 0.0 - v8;
  v11 = 0.0 - v10;
  v12 = sub_3EB084();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD818);
  v14 = a1 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = v5;
  *(v14 + 16) = v7;
  *(v14 + 24) = v9;
  *(v14 + 32) = v11;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_27EB8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for EpisodeListView();
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8C0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8C8);
  v12 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  *v11 = sub_3EAB54();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8D0);
  sub_27EF7C(a1, &v11[*(v17 + 44)]);
  sub_886BC(&qword_4FD8D8, &qword_4FD8C0);
  v18 = v16;
  v33 = v16;
  sub_3EB484();
  sub_FCF8(v11, &qword_4FD8C0);
  v32 = *(a1 + 40);
  v19 = v32;
  v20 = *(a1 + 32);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v21 = v4[7];
  *&v8[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v22 = &v8[v4[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v8[v4[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *&v8[v4[10]] = v19;
  *&v8[v4[11]] = 4;
  v8[v4[12]] = v20;
  *&v8[v4[13]] = 0x4020000000000000;
  v24 = *(v12 + 16);
  v26 = v34;
  v25 = v35;
  v24(v34, v18, v35);
  v27 = v36;
  sub_27F490(v8, v36, type metadata accessor for EpisodeListView);
  v28 = v37;
  v24(v37, v26, v25);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E0);
  sub_27F490(v27, &v28[*(v29 + 48)], type metadata accessor for EpisodeListView);

  sub_27F54C(v8, type metadata accessor for EpisodeListView);
  v30 = *(v12 + 8);
  v30(v33, v25);
  sub_27F54C(v27, type metadata accessor for EpisodeListView);
  return (v30)(v26, v25);
}

uint64_t sub_27EF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logo();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v46[-v9];
  v11 = *a1;
  v12 = a1[1];
  v63 = v11;
  v64 = v12;
  sub_68DC4();

  v13 = sub_3EB394();
  v15 = v14;
  v17 = v16;
  sub_3EB1C4();
  v50 = sub_3EB2A4();
  v49 = v18;
  v20 = v19;
  v51 = v21;

  sub_94D30(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v22 = sub_3EB094();
  v23 = v22;
  v47 = v22;
  sub_3EA264();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v20 &= 1u;
  LOBYTE(v63) = v20;
  LOBYTE(v56) = 0;
  v52 = 0;
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v32 = *(v5 + 28);
  *&v10[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v33 = *(v5 + 32);
  *&v10[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v34 = v7;
  sub_27F490(v10, v7, type metadata accessor for Logo);
  v35 = v50;
  *&v56 = v50;
  v36 = v49;
  *(&v56 + 1) = v49;
  LOBYTE(v57) = v20;
  *(&v57 + 1) = *v55;
  DWORD1(v57) = *&v55[3];
  v37 = v51;
  *(&v57 + 1) = v51;
  v38 = KeyPath;
  *&v58 = KeyPath;
  *(&v58 + 1) = 1;
  LOBYTE(v59) = 0;
  *(&v59 + 1) = *v54;
  DWORD1(v59) = *&v54[3];
  BYTE8(v59) = v23;
  HIDWORD(v59) = *&v53[3];
  *(&v59 + 9) = *v53;
  *&v60 = v25;
  *(&v60 + 1) = v27;
  *&v61 = v29;
  *(&v61 + 1) = v31;
  v62 = 0;
  v39 = v60;
  v40 = v61;
  *(a2 + 96) = 0;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v41 = v56;
  v42 = v57;
  v43 = v59;
  *(a2 + 32) = v58;
  *(a2 + 48) = v43;
  *a2 = v41;
  *(a2 + 16) = v42;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8F0);
  sub_27F490(v34, a2 + *(v44 + 64), type metadata accessor for Logo);
  sub_FBD0(&v56, &v63, &qword_4FD8F8);
  sub_27F54C(v10, type metadata accessor for Logo);
  sub_27F54C(v34, type metadata accessor for Logo);
  v63 = v35;
  v64 = v36;
  v65 = v20;
  *v66 = *v55;
  *&v66[3] = *&v55[3];
  v67 = v37;
  v68 = v38;
  v69 = 1;
  v70 = 0;
  *v71 = *v54;
  *&v71[3] = *&v54[3];
  v72 = v47;
  *&v73[3] = *&v53[3];
  *v73 = *v53;
  v74 = v25;
  v75 = v27;
  v76 = v29;
  v77 = v31;
  v78 = 0;
  return sub_FCF8(&v63, &qword_4FD8F8);
}

uint64_t sub_27F3FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_3EAC74();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8B8);
  return sub_27EB8C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_27F490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27F4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27F54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27F5C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27F640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27F6B0()
{
  result = type metadata accessor for EpisodeListEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27F730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
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
    v8 = type metadata accessor for EpisodeListEntry();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27F7E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for EpisodeListEntry();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27F888()
{
  sub_27800C(319, &unk_4FD338);
  if (v0 <= 0x3F)
  {
    sub_27800C(319, &unk_4FD7C8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EpisodeListEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_27F948()
{
  result = qword_4FD800;
  if (!qword_4FD800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD808);
    sub_27F4F8(&qword_4FD6C0, type metadata accessor for HeroEpisodeListWidgetLarge);
    sub_27F4F8(&qword_4FD6C8, type metadata accessor for SingleListEpisodeWidgetLarge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD800);
  }

  return result;
}

uint64_t sub_27FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_27FA88(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_27FA9C()
{
  result = qword_4FD880;
  if (!qword_4FD880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD878);
    sub_886BC(&qword_4F16F8, &qword_4F16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD880);
  }

  return result;
}

uint64_t sub_27FB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27FBCC()
{
  result = qword_4FD890;
  if (!qword_4FD890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD870);
    sub_886BC(&qword_4FD898, &qword_4FD868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD890);
  }

  return result;
}

unint64_t sub_27FC94()
{
  result = qword_4FD900;
  if (!qword_4FD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD818);
    sub_27FD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD900);
  }

  return result;
}

unint64_t sub_27FD20()
{
  result = qword_4FD908;
  if (!qword_4FD908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD810);
    sub_886BC(&qword_4FD910, &qword_4FD918);
    sub_886BC(&qword_4FD920, &qword_4FD928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FD908);
  }

  return result;
}

uint64_t sub_27FE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
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
    v8 = _s7EpisodeVMa();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27FF14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = _s7EpisodeVMa();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeListWidgetLargeHeader()
{
  result = qword_4FD998;
  if (!qword_4FD998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_280000()
{
  sub_2800E4(319, &qword_4FD330, &_s10ComponentsVN, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    _s7EpisodeVMa();
    if (v1 <= 0x3F)
    {
      sub_2800E4(319, &unk_4FD4A8, &type metadata for WidgetEmptyMessage, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2800E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_280150()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_412510;
  v5 = (v0 + *(type metadata accessor for EpisodeListWidgetLargeHeader() + 20));
  v6 = v5[10];
  *(v4 + 32) = v5[9];
  *(v4 + 40) = v6;
  v7 = v5[4];
  *(v4 + 48) = v5[3];
  *(v4 + 56) = v7;
  v8 = v5[12];
  *(v4 + 64) = v5[11];
  *(v4 + 72) = v8;
  v9 = v5 + *(_s7EpisodeVMa() + 96);
  v10 = type metadata accessor for WidgetPredictedPlayState(0);
  v11 = &v9[*(v10 + 32)];
  v12 = *(v11 + 1);
  *(v4 + 80) = *v11;
  *(v4 + 88) = v12;
  sub_FBD0(&v9[*(v10 + 24)], v3, &qword_4FDA38);
  v13 = sub_3E9224();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v3, 1, v13);

  if (v15 == 1)
  {
    sub_FCF8(v3, &qword_4FDA38);
  }

  else
  {
    sub_3E9214();
    (*(v14 + 8))(v3, v13);
  }

  result = AXDurationStringForDurationWithSeconds();
  if (result)
  {
    v17 = result;
    v18 = sub_3ED244();
    v20 = v19;

    *(v4 + 96) = v18;
    *(v4 + 104) = v20;
    v22[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_886BC(&qword_4EED78, &unk_5010E0);
    v21 = sub_3ED134();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2803FC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9D8);
  __chkstk_darwin(v29);
  v3 = &v29 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9E0);
  __chkstk_darwin(v30);
  v5 = &v29 - v4;
  v6 = type metadata accessor for EpisodeListWidgetLargeHeader();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9E8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = v1 + *(v7 + 28);
  v15 = _s7EpisodeVMa();
  sub_FBD0(v14 + *(v15 + 64), v13, &unk_4E9EE0);
  sub_2829E8(v1, v10, type metadata accessor for EpisodeListWidgetLargeHeader);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_282980(v10, v17 + v16, type metadata accessor for EpisodeListWidgetLargeHeader);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA00);
  *&v13[*(v18 + 36)] = 0;
  v19 = &v13[*(v18 + 40)];
  *v19 = sub_2827E8;
  v19[1] = v17;
  v20 = *v14;
  v21 = *(v14 + 8);
  v22 = &v13[*(v11 + 52)];
  *v22 = *v14;
  *(v22 + 1) = v21;
  v23 = *(v14 + 16);
  v22[16] = v23;
  sub_3DE90(v20, v21, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  sub_3E8324();
  v24 = v35;
  sub_FCF8(v34, &qword_4FDA08);
  if (!v24)
  {
    sub_FBD0(v13, v3, &qword_4FD9E8);
    swift_storeEnumTagMultiPayload();
    sub_282858();
    sub_886BC(&qword_4FDA18, &qword_4FD9E8);
    sub_3EADE4();
    return sub_FCF8(v13, &qword_4FD9E8);
  }

  result = sub_3E8324();
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v26 = *(v15 + 96);
    v27 = (v14 + v26 + *(type metadata accessor for WidgetPredictedPlayState(0) + 32));
    v28 = v27[1];
    v32 = *v27;
    v33 = v28;
    sub_886BC(&qword_4FDA18, &qword_4FD9E8);
    sub_68DC4();

    sub_3EB3C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    sub_FBD0(v5, v3, &qword_4FD9E0);
    swift_storeEnumTagMultiPayload();
    sub_282858();
    sub_3EADE4();
    sub_FCF8(v5, &qword_4FD9E0);
    return sub_FCF8(v13, &qword_4FD9E8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2808B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA20);
  __chkstk_darwin(v2);
  v4 = v8 - v3;
  *v4 = sub_3EAB64();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA28);
  sub_2809FC(a1, &v4[*(v5 + 44)]);
  v8[0] = sub_280150();
  v8[1] = v6;
  sub_886BC(&qword_4FDA30, &qword_4FDA20);
  sub_68DC4();
  sub_3EB5B4();

  return sub_FCF8(v4, &qword_4FDA20);
}

uint64_t sub_2809FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA40);
  __chkstk_darwin(v56);
  v50 = (&v49 - v3);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA48);
  __chkstk_darwin(v51);
  v54 = &v49 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA50);
  __chkstk_darwin(v53);
  v49 = (&v49 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA58);
  __chkstk_darwin(v6 - 8);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v49 - v9;
  v10 = type metadata accessor for EpisodeViewStyle();
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = _s7EpisodeVMa();
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WidgetArtworkView();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v52 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  v28 = type metadata accessor for EpisodeListWidgetLargeHeader();
  sub_2829E8(a1 + *(v28 + 20), v18, _s7EpisodeVMa);
  v29 = enum case for WidgetFamily.systemLarge(_:);
  v30 = sub_3ECF74();
  (*(*(v30 - 8) + 104))(v15, v29, v30);
  swift_storeEnumTagMultiPayload();
  sub_282980(v15, v12, type metadata accessor for EpisodeViewStyle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = 8.0;
  }

  else
  {
    v31 = 6.0;
  }

  sub_282A50(v12, type metadata accessor for EpisodeViewStyle);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_282980(v18, &v24[*(v20 + 28)], _s7EpisodeVMa);
  v32 = *(v20 + 32);
  v33 = a1;
  *&v24[v32] = v31;
  sub_282980(v24, v27, type metadata accessor for WidgetArtworkView);
  v34 = *(a1 + *(v28 + 24));
  if (v34 == 5)
  {
    v35 = sub_3EAC84();
    v36 = v49;
    *v49 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA60);
    sub_2816A8(v33, v36 + *(v37 + 44));
    v38 = &qword_4FDA50;
    sub_FBD0(v36, v54, &qword_4FDA50);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FDA68, &qword_4FDA40);
    sub_886BC(&qword_4FDA70, &qword_4FDA50);
    v39 = v55;
    sub_3EADE4();
    v40 = v36;
  }

  else
  {
    v41 = sub_3EAC74();
    v42 = v50;
    *v50 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA80);
    sub_281118(v34, v42 + *(v43 + 44));
    v38 = &qword_4FDA40;
    sub_FBD0(v42, v54, &qword_4FDA40);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FDA68, &qword_4FDA40);
    sub_886BC(&qword_4FDA70, &qword_4FDA50);
    v39 = v55;
    sub_3EADE4();
    v40 = v42;
  }

  sub_FCF8(v40, v38);
  v44 = v52;
  sub_2829E8(v27, v52, type metadata accessor for WidgetArtworkView);
  v45 = v57;
  sub_FBD0(v39, v57, &qword_4FDA58);
  v46 = v58;
  sub_2829E8(v44, v58, type metadata accessor for WidgetArtworkView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA78);
  *(v46 + *(v47 + 48)) = 0x402E000000000000;
  sub_FBD0(v45, v46 + *(v47 + 64), &qword_4FDA58);
  sub_FCF8(v39, &qword_4FDA58);
  sub_282A50(v27, type metadata accessor for WidgetArtworkView);
  sub_FCF8(v45, &qword_4FDA58);
  return sub_282A50(v44, type metadata accessor for WidgetArtworkView);
}

uint64_t sub_281118@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = type metadata accessor for WidgetEmptyText();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD288);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  __chkstk_darwin(v12);
  v49 = &v47 - v13;
  v14 = type metadata accessor for Logo();
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA88);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v47 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v27 = *(v15 + 28);
  *&v17[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v28 = *(v15 + 32);
  *&v17[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  sub_3EBA94();
  sub_3EA804();
  sub_282980(v17, v23, type metadata accessor for Logo);
  v29 = &v23[*(v19 + 44)];
  v30 = v57;
  *(v29 + 4) = v56;
  *(v29 + 5) = v30;
  *(v29 + 6) = v58;
  v31 = v53;
  *v29 = v52;
  *(v29 + 1) = v31;
  v32 = v55;
  *(v29 + 2) = v54;
  *(v29 + 3) = v32;
  sub_FACC(v23, v26, &qword_4FDA88);
  v33 = *(v3 + 28);
  v34 = enum case for WidgetFamily.systemLarge(_:);
  v35 = sub_3ECF74();
  (*(*(v35 - 8) + 104))(&v5[v33], v34, v35);
  type metadata accessor for EpisodeViewStyle();
  swift_storeEnumTagMultiPayload();
  *v5 = v48;
  sub_3EBA84();
  sub_3EA804();
  sub_282980(v5, v11, type metadata accessor for WidgetEmptyText);
  v36 = &v11[*(v7 + 44)];
  v37 = v64;
  *(v36 + 4) = v63;
  *(v36 + 5) = v37;
  *(v36 + 6) = v65;
  v38 = v60;
  *v36 = v59;
  *(v36 + 1) = v38;
  v39 = v62;
  *(v36 + 2) = v61;
  *(v36 + 3) = v39;
  v40 = v49;
  sub_FACC(v11, v49, &qword_4FD288);
  v41 = v47;
  sub_FBD0(v26, v47, &qword_4FDA88);
  v42 = v50;
  sub_FBD0(v40, v50, &qword_4FD288);
  v43 = v51;
  sub_FBD0(v41, v51, &qword_4FDA88);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA90);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_FBD0(v42, v43 + *(v44 + 64), &qword_4FD288);
  sub_FCF8(v40, &qword_4FD288);
  sub_FCF8(v26, &qword_4FDA88);
  sub_FCF8(v42, &qword_4FD288);
  return sub_FCF8(v41, &qword_4FDA88);
}

uint64_t sub_2816A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v44 = type metadata accessor for PlayButtonLarge(0) - 8;
  __chkstk_darwin(v44);
  v45 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v43 = &v39[-v5];
  v6 = sub_3EB174();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA98);
  __chkstk_darwin(v10 - 8);
  v47 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v39[-v13];
  *v14 = sub_3EAB64();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAA0);
  sub_281AF0(a1, &v14[*(v15 + 44)]);
  v42 = a1 + *(type metadata accessor for EpisodeListWidgetLargeHeader() + 20);
  v16 = *(v42 + 96);
  v48 = *(v42 + 88);
  v49 = v16;
  sub_68DC4();

  v17 = sub_3EB394();
  v19 = v18;
  v21 = v20;
  sub_3EB0F4();
  (*(v7 + 104))(v9, enum case for Font.Leading.tight(_:), v6);
  sub_3EB194();

  (*(v7 + 8))(v9, v6);
  v22 = sub_3EB2A4();
  v24 = v23;
  v40 = v25;
  v41 = v26;

  sub_94D30(v17, v19, v21 & 1);

  v27 = v43;
  sub_2829E8(v42, v43, _s7EpisodeVMa);
  v28 = sub_3EBA84();
  v29 = &v27[*(v44 + 28)];
  *v29 = v28;
  v29[1] = v30;
  v31 = v47;
  sub_FBD0(v14, v47, &qword_4FDA98);
  v32 = v45;
  sub_2829E8(v27, v45, type metadata accessor for PlayButtonLarge);
  v33 = v31;
  v34 = v46;
  sub_FBD0(v33, v46, &qword_4FDA98);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAA8);
  v36 = v34;
  v37 = v34 + v35[12];
  *v37 = v22;
  *(v37 + 8) = v24;
  LOBYTE(v34) = v40 & 1;
  *(v37 + 16) = v40 & 1;
  *(v37 + 24) = v41;
  *(v37 + 32) = 0x3FF0000000000000;
  *(v36 + v35[16]) = 0x4010000000000000;
  sub_2829E8(v32, v36 + v35[20], type metadata accessor for PlayButtonLarge);
  sub_243E88(v22, v24, v34);

  sub_282A50(v27, type metadata accessor for PlayButtonLarge);
  sub_FCF8(v14, &qword_4FDA98);
  sub_282A50(v32, type metadata accessor for PlayButtonLarge);
  sub_94D30(v22, v24, v34);

  return sub_FCF8(v47, &qword_4FDA98);
}

uint64_t sub_281AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logo();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA88);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAB0);
  __chkstk_darwin(v18 - 8);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v34 - v22;
  *v23 = sub_3EAC74();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAB8);
  sub_281EC8(a1, &v23[*(v24 + 44)]);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v25 = *(v5 + 28);
  *&v7[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v26 = *(v5 + 32);
  *&v7[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  sub_3EBA54();
  sub_3EA804();
  sub_282980(v7, v14, type metadata accessor for Logo);
  v27 = &v14[*(v9 + 44)];
  v28 = v34[5];
  *(v27 + 4) = v34[4];
  *(v27 + 5) = v28;
  *(v27 + 6) = v34[6];
  v29 = v34[1];
  *v27 = v34[0];
  *(v27 + 1) = v29;
  v30 = v34[3];
  *(v27 + 2) = v34[2];
  *(v27 + 3) = v30;
  sub_FACC(v14, v17, &qword_4FDA88);
  sub_FBD0(v23, v20, &qword_4FDAB0);
  sub_FBD0(v17, v11, &qword_4FDA88);
  sub_FBD0(v20, a2, &qword_4FDAB0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAC0);
  v32 = a2 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_FBD0(v11, a2 + *(v31 + 64), &qword_4FDA88);
  sub_FCF8(v17, &qword_4FDA88);
  sub_FCF8(v23, &qword_4FDAB0);
  sub_FCF8(v11, &qword_4FDA88);
  return sub_FCF8(v20, &qword_4FDAB0);
}

uint64_t sub_281EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAC8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = *(type metadata accessor for EpisodeListWidgetLargeHeader() + 20);
  v12 = type metadata accessor for EpisodeCaptionView();
  sub_2829E8(a1 + v11, &v10[v12[7]], _s7EpisodeVMa);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  *(v10 + 2) = swift_getKeyPath();
  v10[24] = 0;
  v13 = v12[6];
  *&v10[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  v10[v12[8]] = 0;
  sub_3EB1A4();
  v14 = sub_3EB114();

  KeyPath = swift_getKeyPath();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAD8) + 36)];
  *v18 = v17;
  v18[8] = 0;
  v19 = swift_getKeyPath();
  v20 = &v10[*(v5 + 44)];
  *v20 = v19;
  v20[1] = 4;
  sub_FBD0(v10, v7, &qword_4FDAC8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDAE0);
  sub_FBD0(v7, a2 + *(v21 + 48), &qword_4FDAC8);
  *(a2 + *(v21 + 64)) = 0x4010000000000000;
  sub_FCF8(v10, &qword_4FDAC8);
  return sub_FCF8(v7, &qword_4FDAC8);
}

uint64_t sub_282148()
{
  v1 = v0;
  v2 = (type metadata accessor for EpisodeListWidgetLargeHeader() - 8);
  v3 = *(*v2 + 80);
  v50 = *(*v2 + 64);
  v51 = (v3 + 16) & ~v3;
  v4 = v0 + v51;
  sub_23968C(*v4, *(v4 + 8));
  v5 = v4 + v2[7];
  sub_3DEF8(*v5, *(v5 + 8), *(v5 + 16));

  v6 = _s7EpisodeVMa();
  v7 = v6[11];
  v8 = sub_3E5F84();
  v9 = *(v8 - 8);
  v48 = *(v9 + 48);
  if (!v48(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v49 = v9;

  v10 = v5 + v6[13];
  v11 = sub_3E7784();
  v12 = *(*(v11 - 8) + 48);
  if (!v12(v10, 1, v11))
  {

    v13 = *(v10 + 32);
    if (v13 != 255)
    {
      sub_F2248(*(v10 + 16), *(v10 + 24), v13);
    }

    v14 = *(v10 + 64);
    if (v14 != 255)
    {
      sub_F2260(*(v10 + 56), v14);
    }

    v15 = *(v10 + 80);
    if (v15 != 255)
    {
      sub_F2260(*(v10 + 72), v15);
    }

    v16 = *(v10 + 96);
    if (v16 != 255)
    {
      sub_F2260(*(v10 + 88), v16);
    }

    v47 = v3;
    v17 = *(v10 + 112);
    if (v17 != 255)
    {
      sub_F2260(*(v10 + 104), v17);
    }

    v18 = v1;
    v19 = *(v10 + 128);
    if (v19 != 255)
    {
      sub_F2260(*(v10 + 120), v19);
    }

    v20 = *(v11 + 44);
    v21 = sub_3E7624();
    (*(*(v21 - 8) + 8))(v10 + v20, v21);

    v1 = v18;
    v3 = v47;
  }

  v22 = v5 + v6[14];
  if (!v12(v22, 1, v11))
  {

    v23 = *(v22 + 32);
    if (v23 != 255)
    {
      sub_F2248(*(v22 + 16), *(v22 + 24), v23);
    }

    v24 = *(v22 + 64);
    if (v24 != 255)
    {
      sub_F2260(*(v22 + 56), v24);
    }

    v25 = *(v22 + 80);
    if (v25 != 255)
    {
      sub_F2260(*(v22 + 72), v25);
    }

    v26 = *(v22 + 96);
    if (v26 != 255)
    {
      sub_F2260(*(v22 + 88), v26);
    }

    v27 = *(v22 + 112);
    if (v27 != 255)
    {
      sub_F2260(*(v22 + 104), v27);
    }

    v28 = *(v22 + 128);
    if (v28 != 255)
    {
      sub_F2260(*(v22 + 120), v28);
    }

    v29 = *(v11 + 44);
    v30 = sub_3E7624();
    (*(*(v30 - 8) + 8))(v22 + v29, v30);
  }

  v31 = v6[16];
  v32 = sub_3E5DC4();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v5 + v31, 1, v32))
  {
    (*(v33 + 8))(v5 + v31, v32);
  }

  v34 = v6[20];
  if (!v48(v5 + v34, 1, v8))
  {
    (*(v49 + 8))(v5 + v34, v8);
  }

  v35 = v6[22];
  if (!v48(v5 + v35, 1, v8))
  {
    (*(v49 + 8))(v5 + v35, v8);
  }

  v36 = v6[23];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v37 - 8) + 8))(v5 + v36, v37);
  v38 = v5 + v6[24];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v40 = *(v49 + 8);
    v40(v38, v8);
    v40(v38 + *(v39 + 36), v8);
  }

  v41 = type metadata accessor for WidgetPredictedPlayState(0);
  v42 = *(v41 + 20);
  if (!v48(v38 + v42, 2, v8))
  {
    (*(v49 + 8))(v38 + v42, v8);
  }

  v43 = *(v41 + 24);
  v44 = sub_3E9224();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v38 + v43, 1, v44))
  {
    (*(v45 + 8))(v38 + v43, v44);
  }

  return _swift_deallocObject(v1, v51 + v50, v3 | 7);
}

uint64_t sub_2827E8()
{
  v1 = *(type metadata accessor for EpisodeListWidgetLargeHeader() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2808B4(v2);
}

unint64_t sub_282858()
{
  result = qword_4FDA10;
  if (!qword_4FDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD9E0);
    sub_886BC(&qword_4FDA18, &qword_4FD9E8);
    sub_282910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDA10);
  }

  return result;
}

unint64_t sub_282910()
{
  result = qword_4F19C8;
  if (!qword_4F19C8)
  {
    sub_3EAFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F19C8);
  }

  return result;
}

uint64_t sub_282980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2829E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_282A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_282ADC()
{
  result = qword_4FDAE8;
  if (!qword_4FDAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FDAF0);
    sub_282858();
    sub_886BC(&qword_4FDA18, &qword_4FD9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDAE8);
  }

  return result;
}

uint64_t sub_282BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EAAF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v2, v10, &qword_4FDD68);
  if (v11 == 1)
  {
    return sub_1D4F0(v10, a1);
  }

  sub_3ED9E4();
  v9 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_282D54@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_3EAAF4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_FBD0(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_3ED9E4();
    v17 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

double sub_282F7C()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[32] == 1)
  {
    return *v0;
  }

  sub_3ED9E4();
  v6 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_FCF8(v0, &qword_4FDDC8);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_283120@<X0>(uint64_t *a1@<X8>)
{
  sub_288CF4();
  sub_3EAB04();
  sub_288D48();
  result = sub_3EAB04();
  *a1 = v4 & ~v3;
  return result;
}

uint64_t sub_2831E8@<X0>(_BYTE *a1@<X8>)
{
  sub_288770();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_283284@<X0>(void *a1@<X8>)
{
  result = sub_3EAA94();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

ShelfKit::WidgetListStyle_optional __swiftcall WidgetListStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B2940;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t WidgetListStyle.rawValue.getter()
{
  v1 = 0x7972617262696CLL;
  if (*v0 != 1)
  {
    v1 = 2003789939;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7478654E7075;
  }
}

uint64_t sub_283360(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  if (v2 != 1)
  {
    v4 = 2003789939;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7478654E7075;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7972617262696CLL;
  if (*a2 != 1)
  {
    v8 = 2003789939;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7478654E7075;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

unint64_t sub_283454()
{
  result = qword_4FDAF8;
  if (!qword_4FDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FDAF8);
  }

  return result;
}

Swift::Int sub_2834A8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_283540()
{
  sub_3ED394();
}

Swift::Int sub_2835C4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_283664(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7972617262696CLL;
  if (v2 != 1)
  {
    v5 = 2003789939;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7478654E7075;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2836DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EpisodeListEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB00);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB08);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[9] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[11];

  return v20(v21, a2, v19);
}

uint64_t sub_283974(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EpisodeListEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD1B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB00);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB08);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDB10);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[11];

  return v20(v21, a2, a2, v19);
}

uint64_t type metadata accessor for EpisodeListWidgetMain()
{
  result = qword_4FDB70;
  if (!qword_4FDB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_283C48()
{
  type metadata accessor for EpisodeListEntry();
  if (v0 <= 0x3F)
  {
    sub_283E28(319, &qword_4FD220, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_283E28(319, &qword_4FDB80, &type metadata accessor for RedactionReasons);
      if (v2 <= 0x3F)
      {
        sub_283E28(319, &qword_4FDB88, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          sub_283DD8();
          if (v4 <= 0x3F)
          {
            sub_283E28(319, &unk_4FDB90, &type metadata accessor for WidgetRenderingMode);
            if (v5 <= 0x3F)
            {
              sub_283E28(319, &qword_4FB580, &type metadata accessor for ColorScheme);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_283DD8()
{
  if (!qword_4FD498)
  {
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FD498);
    }
  }
}

void sub_283E28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EA324();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_283E98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCA8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if (*(v1 + 32) == 5 && *(v1 + *(type metadata accessor for EpisodeListEntry() + 60)) != 1)
  {
    v11 = type metadata accessor for EpisodeListWidgetMain();
    sub_FBD0(v1 + *(v11 + 28), v9, &qword_4FDCA8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_3EA7C4();
      return (*(*(v12 - 8) + 32))(a1, v9, v12);
    }

    else
    {
      sub_3ED9E4();
      v13 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {

    return sub_3EA7B4();
  }
}

uint64_t sub_2840EC()
{
  v1 = sub_3EA6C4();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v58 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3ECF74();
  v57 = *(v3 - 8);
  __chkstk_darwin(v3);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v53 = type metadata accessor for EpisodeListWidgetMain();
  __chkstk_darwin(v53);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_3E9A04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9974();
  sub_288C8C(v0, v15, type metadata accessor for EpisodeListWidgetMain);
  sub_288C8C(v0, v12, type metadata accessor for EpisodeListWidgetMain);
  v56 = v0;
  sub_288C8C(v0, v9, type metadata accessor for EpisodeListWidgetMain);
  v20 = sub_3E99F4();
  v21 = sub_3ED9F4();
  v22 = os_log_type_enabled(v20, v21);
  v55 = v3;
  if (v22)
  {
    v47 = v21;
    v48 = v20;
    v49 = v17;
    v50 = v16;
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v23 = 136446722;
    v24 = v53;
    sub_282D54(&qword_4FD2A0, &type metadata accessor for WidgetFamily, v7);
    sub_288DFC(&qword_4FDD60, &type metadata accessor for WidgetFamily);
    v25 = sub_3EE7A4();
    v27 = v26;
    (*(v57 + 8))(v7, v3);
    sub_288D9C(v15, type metadata accessor for EpisodeListWidgetMain);
    v28 = sub_2EDD0(v25, v27, &v59);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    sub_282D54(&qword_4FDCB0, &type metadata accessor for DynamicTypeSize, v58);
    v29 = sub_3ED2B4();
    v31 = v30;
    sub_288D9C(v12, type metadata accessor for EpisodeListWidgetMain);
    v32 = sub_2EDD0(v29, v31, &v59);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2082;
    v33 = 0xE700000000000000;
    v34 = 0x7972617262696CLL;
    if (v9[*(v24 + 20)] != 1)
    {
      v34 = 2003789939;
      v33 = 0xE400000000000000;
    }

    if (v9[*(v24 + 20)])
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x7478654E7075;
    }

    if (v9[*(v24 + 20)])
    {
      v36 = v33;
    }

    else
    {
      v36 = 0xE600000000000000;
    }

    sub_288D9C(v9, type metadata accessor for EpisodeListWidgetMain);
    v37 = sub_2EDD0(v35, v36, &v59);

    *(v23 + 24) = v37;
    v38 = v48;
    _os_log_impl(&dword_0, v48, v47, "Creating UpNextView with widgetFamily.%{public}s, DynamicTypeSize.%{public}s, style: %{public}s", v23, 0x20u);
    swift_arrayDestroy();

    (*(v49 + 8))(v19, v50);
    v39 = v54;
  }

  else
  {

    sub_288D9C(v9, type metadata accessor for EpisodeListWidgetMain);
    sub_288D9C(v12, type metadata accessor for EpisodeListWidgetMain);
    sub_288D9C(v15, type metadata accessor for EpisodeListWidgetMain);
    (*(v17 + 8))(v19, v16);
    v39 = v54;
  }

  sub_282D54(&qword_4FD2A0, &type metadata accessor for WidgetFamily, v39);
  v40 = v57;
  v41 = v55;
  v42 = (*(v57 + 88))(v39, v55);
  v43 = v58;
  if (v42 == enum case for WidgetFamily.systemSmall(_:))
  {
    v44 = 1;
    return v44 & 1;
  }

  if (v42 == enum case for WidgetFamily.systemMedium(_:))
  {
LABEL_15:
    v44 = 0;
    return v44 & 1;
  }

  if (v42 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_282D54(&qword_4FDCB0, &type metadata accessor for DynamicTypeSize, v58);
    v44 = sub_3EA6B4();
    (*(v51 + 8))(v43, v52);
    return v44 & 1;
  }

  v44 = 0;
  if (v42 != enum case for WidgetFamily.systemExtraLarge(_:) && v42 != enum case for WidgetFamily.accessoryCorner(_:) && v42 != enum case for WidgetFamily.accessoryCircular(_:) && v42 != enum case for WidgetFamily.accessoryRectangular(_:) && v42 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v40 + 8))(v39, v41);
    goto LABEL_15;
  }

  return v44 & 1;
}

uint64_t sub_284860@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_3EAAF4();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_3ECF74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodeListWidgetMain();
  sub_FBD0(v1 + *(v12 + 24), v7, &qword_4FD2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v19);
  }

  v14 = (*(v9 + 88))(v11, v8);
  v15 = enum case for WidgetFamily.systemSmall(_:);
  v16 = sub_3EA6C4();
  v17 = *(*(v16 - 8) + 104);
  if (v14 == v15 || v14 == enum case for WidgetFamily.systemMedium(_:))
  {
    return v17(v20, enum case for DynamicTypeSize.xxxLarge(_:), v16);
  }

  v17(v20, enum case for DynamicTypeSize.accessibility5(_:), v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_284B8C()
{
  v1 = v0;
  v2 = sub_3EA304();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v32 - v5;
  v6 = sub_3ECF44();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_3EAAF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + *(type metadata accessor for EpisodeListWidgetMain() + 36);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_3ED9E4();
    v18 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v17, 0);
    (*(v13 + 8))(v15, v12);
    LOBYTE(v17) = v39;
  }

  sub_282D54(&qword_4FD8E8, &type metadata accessor for WidgetRenderingMode, v11);
  v19 = type metadata accessor for EpisodeListEntry();
  v20 = v34;
  if (*(v1 + *(v19 + 36)))
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v1 + *(v19 + 40)) != 0;
  }

  sub_282D54(&qword_4FB588, &type metadata accessor for ColorScheme, v34);
  sub_3ECF34();
  v22 = sub_3ECF14();
  v23 = v36;
  v24 = *(v35 + 8);
  v24(v8, v36);
  if (v22)
  {
    (*(v37 + 8))(v20, v38);
    v24(v11, v23);
    return 3;
  }

  else if (v17)
  {
    if (v21)
    {
      (*(v37 + 8))(v20, v38);
      v24(v11, v23);
      return 0;
    }

    else
    {
      v26 = v37;
      v27 = v33;
      v28 = v20;
      v29 = v38;
      (*(v37 + 104))(v33, enum case for ColorScheme.dark(_:), v38);
      v30 = sub_3EA2F4();
      v31 = *(v26 + 8);
      v31(v27, v29);
      v31(v28, v29);
      v24(v11, v23);
      if (v30)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    (*(v37 + 8))(v20, v38);
    v24(v11, v23);
    return 4;
  }
}

__n128 sub_285030@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_3EB744();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_284B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC160);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F5310;
  v7 = enum case for Color.RGBColorSpace.sRGB(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(v6 + 32) = sub_3EB7B4();
  v8(v5, v7, v2);
  *(v6 + 40) = sub_3EB7B4();
  sub_3EBA14();
  sub_3EBB34();
  sub_3EBB44();
  sub_3EA5A4();
  result = v12;
  v10 = v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_28526C@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = sub_3E6044();
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v91 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_3EAAF4();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3ECF44();
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v88 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v69 - v8;
  v84 = sub_3EA7C4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBD8);
  __chkstk_darwin(v78);
  v11 = &v69 - v10;
  v85 = type metadata accessor for EpisodeListWidgetMain();
  v100 = *(v85 - 8);
  v99 = *(v100 + 8);
  __chkstk_darwin(v85);
  v98 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_3EAFC4();
  v13 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBE0);
  __chkstk_darwin(v96);
  v17 = &v69 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBE8);
  __chkstk_darwin(v95);
  v19 = &v69 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBF0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v69 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDBF8);
  __chkstk_darwin(v74);
  v77 = &v69 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC00);
  __chkstk_darwin(v79);
  v82 = &v69 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC08);
  __chkstk_darwin(v81);
  v86 = &v69 - v23;
  sub_285E50(v17);
  sub_3EAFB4();
  v101 = v1;
  sub_3EBA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDC10);
  sub_2878BC();
  sub_287C60();
  v24 = v1;
  sub_3EB5F4();
  v25 = v15;
  v26 = v95;
  (*(v13 + 8))(v25, v97);
  sub_FCF8(v17, &qword_4FDBE0);
  KeyPath = swift_getKeyPath();
  v28 = v98;
  sub_288C8C(v24, v98, type metadata accessor for EpisodeListWidgetMain);
  v29 = (v100[80] + 16) & ~v100[80];
  v30 = swift_allocObject();
  sub_2882DC(v28, v30 + v29);
  v31 = *(v26 + 36);
  v100 = v19;
  v32 = &v19[v31];
  *v32 = KeyPath;
  v32[1] = sub_288340;
  v32[2] = v30;
  sub_284860(v11);
  sub_3EA6C4();
  sub_288DFC(&qword_4FDCB8, &type metadata accessor for DynamicTypeSize);
  v33 = v11;
  result = sub_3ED174();
  if (result)
  {
    v35 = sub_2883B0();
    v36 = sub_886BC(&qword_4FDCD8, &qword_4FDBD8);
    v37 = v73;
    v38 = v78;
    v39 = v100;
    sub_3EB564();
    sub_FCF8(v33, &qword_4FDBD8);
    sub_2884D0(v39);
    v40 = v80;
    sub_283E98(v80);
    v102 = v26;
    v103 = v38;
    v104 = v35;
    v105 = v36;
    swift_getOpaqueTypeConformance2();
    v41 = v77;
    v42 = v76;
    sub_3EB704();
    (*(v83 + 8))(v40, v84);
    (*(v75 + 8))(v37, v42);
    v43 = swift_getKeyPath();
    v44 = sub_284B8C();
    v45 = v41 + *(v74 + 36);
    *v45 = v43;
    *(v45 + 8) = v44;
    v46 = swift_getKeyPath();
    v47 = v85;
    v48 = v87;
    sub_282D54(&qword_4FD8E8, &type metadata accessor for WidgetRenderingMode, v87);
    v49 = v88;
    sub_3ECF24();
    LOBYTE(v39) = sub_3ECF14();
    v50 = *(v89 + 8);
    v51 = v49;
    v52 = v90;
    v50(v51, v90);
    v50(v48, v52);
    if (v39)
    {
      v53 = v24 + *(v47 + 36);
      v54 = *v53;
      if (*(v53 + 8) != 1)
      {

        sub_3ED9E4();
        v55 = sub_3EB034();
        sub_3E9754();

        v56 = v70;
        sub_3EAAE4();
        swift_getAtKeyPath();
        sub_23968C(v54, 0);
        (*(v71 + 8))(v56, v72);
        LOBYTE(v54) = v102;
      }

      v57 = v54 ^ 1;
    }

    else
    {
      v57 = 0;
    }

    v58 = v82;
    sub_FACC(v41, v82, &qword_4FDBF8);
    v59 = v58 + *(v79 + 36);
    *v59 = v46;
    *(v59 + 8) = v57 & 1;
    v60 = swift_getKeyPath();
    v61 = *(v24 + *(v47 + 20));
    v62 = v86;
    sub_FACC(v58, v86, &qword_4FDC00);
    v63 = v62 + *(v81 + 36);
    *v63 = v60;
    *(v63 + 8) = v61;
    v64 = swift_getKeyPath();
    v65 = v91;
    sub_3E6034();
    sub_3E5FE4();
    (*(v92 + 8))(v65, v93);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCE0);
    v67 = v94;
    v68 = (v94 + *(v66 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCE8);
    sub_3E5FD4();
    *v68 = v64;
    return sub_FACC(v62, v67, &qword_4FDC08);
  }

  else
  {
    __break(1u);
  }

  return result;
}