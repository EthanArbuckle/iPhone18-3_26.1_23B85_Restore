uint64_t sub_70AA90@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_28469C(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_AB2D50();
      swift_allocObject();
      v8 = sub_AB2D00();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_AB3210();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_70AB58(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_466B8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_466B8(v6, v5);
    *v3 = xmmword_B07530;
    sub_466B8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_AB2D10() && __OFSUB__(v6, sub_AB2D40()))
      {
LABEL_26:
        __break(1u);
      }

      sub_AB2D50();
      swift_allocObject();
      v13 = sub_AB2CF0();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_70AF68(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_466B8(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_B07530;
    sub_466B8(0, 0xC000000000000000);
    sub_AB31D0();
    result = sub_70AF68(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

void *sub_70AEFC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_70AF68(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_AB2D10();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_AB2D40();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_AB2D30();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_70B01C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_ABADA0();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_ABB3C0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v14 = a2[10];
  v15 = a2[9];
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v9 || v6 != v10) && (sub_ABB3C0() & 1) == 0 || (v7 != v11 || v8 != v12) && (sub_ABB3C0() & 1) == 0 || (v17 != v15 || v16 != v14) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return sub_ABB3C0();
}

id _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_709FA0(a1, a2);
  v10 = v9;
  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  sub_70B7DC();
  sub_AB2AB0();

  sub_466B8(v8, v10);
  v30[4] = v24;
  v30[5] = v25;
  v31 = v26;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  PlaylistCovers.Recipe.asCoverRepresentation(_:)(&v20, 180.0, 180.0);
  sub_70CED8(v30);
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v13 = type metadata accessor for PlaylistCovers.ArtworkToken();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
    *v15 = v12;
    *(v15 + 1) = v11;
    v16 = v28;
    *(v15 + 1) = v27;
    *(v15 + 2) = v16;
    *(v15 + 6) = v29;
    v17 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
    *v17 = a3;
    *(v17 + 1) = a4;
    v19.receiver = v14;
    v19.super_class = v13;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {

    return 0;
  }
}

unint64_t sub_70B7DC()
{
  result = qword_E14600;
  if (!qword_E14600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14600);
  }

  return result;
}

unint64_t sub_70B830()
{
  result = qword_E14608;
  if (!qword_E14608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E14608);
  }

  return result;
}

id sub_70B950(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v21[0] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v21[1] = v2;
  v21[2] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v22 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_70B8A0(v21, &v19);
  v3 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v5 = v4;
  sub_70B8FC(v21);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_ABAD90(19);

  v19 = 0xD000000000000011;
  v20 = 0x8000000000B71620;
  v6 = a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle;
  v7 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v8 = *(v6 + 8);

  v23._countAndFlagsBits = v7;
  v23._object = v8;
  sub_AB94A0(v23);

  v9 = v19;
  v10 = v20;
  v19 = v3;
  v20 = v5;

  v24._countAndFlagsBits = v9;
  v24._object = v10;
  sub_AB94A0(v24);

  v12 = v19;
  v11 = v20;
  v19 = 0x203A657A6973202CLL;
  v20 = 0xE800000000000000;
  v25._countAndFlagsBits = sub_ABA500();
  sub_AB94A0(v25);

  v13 = v19;
  v14 = v20;
  v19 = v12;
  v20 = v11;

  v26._countAndFlagsBits = v13;
  v26._object = v14;
  sub_AB94A0(v26);

  v15 = objc_allocWithZone(NSString);
  v16 = sub_AB9260();

  v17 = [v15 initWithString:v16];

  return v17;
}

unint64_t sub_70BB30()
{
  result = qword_E14628;
  if (!qword_E14628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14628);
  }

  return result;
}

uint64_t sub_70BB84()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_197(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_70BC10()
{

  return swift_deallocObject();
}

unint64_t sub_70BCE8()
{
  result = qword_E14638;
  if (!qword_E14638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14638);
  }

  return result;
}

uint64_t sub_70BD3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_70BE90@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_70BCE8();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_ABB1A0();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_ABB1A0();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_ABB1A0();
  v25 = v13;
  v33 = 3;
  v14 = sub_ABB1A0();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_70BC78(&v28, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_70C280(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_70C184()
{
  result = qword_E14640;
  if (!qword_E14640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14640);
  }

  return result;
}

unint64_t sub_70C1D8()
{
  result = qword_E14650;
  if (!qword_E14650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14650);
  }

  return result;
}

unint64_t sub_70C22C()
{
  result = qword_E14658;
  if (!qword_E14658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14658);
  }

  return result;
}

uint64_t sub_70C2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEC00000064496E6FLL || (sub_ABB3C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F6C6F63 && a2 == 0xE90000000000006FLL || (sub_ABB3C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_ABB3C0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_70C424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147A8);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_70C1D8();
  sub_ABB680();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v26[0]) = 0;
  v8 = sub_ABB1A0();
  v10 = v9;
  v22 = v8;
  LOBYTE(v26[0]) = 1;
  v21 = sub_ABB1D0();
  v34 = 2;
  sub_70CE4C();
  sub_ABB1E0();
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v33 = 3;
  v11 = sub_ABB1A0();
  v12 = *(v5 + 8);
  v14 = v13;
  v12(v7, v43);
  v15 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v10;
  *&v24[0] = v21;
  *(v24 + 8) = v39;
  *(&v24[1] + 8) = v40;
  *(&v24[2] + 8) = v41;
  *(&v24[3] + 8) = v42;
  *(&v24[4] + 1) = v11;
  v25 = v14;
  sub_70CEA0(&v23, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26[0] = v15;
  v26[1] = v10;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v26[2] = v21;
  v31 = v11;
  v32 = v14;
  result = sub_70CED8(v26);
  v17 = v24[4];
  *(a2 + 64) = v24[3];
  *(a2 + 80) = v17;
  *(a2 + 96) = v25;
  v18 = v24[0];
  *a2 = v23;
  *(a2 + 16) = v18;
  v19 = v24[2];
  *(a2 + 32) = v24[1];
  *(a2 + 48) = v19;
  return result;
}

__n128 __swift_memcpy104_8_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_70C7CC()
{
  result = qword_E14770;
  if (!qword_E14770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14770);
  }

  return result;
}

unint64_t sub_70C824()
{
  result = qword_E14778;
  if (!qword_E14778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14778);
  }

  return result;
}

unint64_t sub_70C87C()
{
  result = qword_E14780;
  if (!qword_E14780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14780);
  }

  return result;
}

unint64_t sub_70C8D4()
{
  result = qword_E14788;
  if (!qword_E14788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14788);
  }

  return result;
}

unint64_t sub_70C92C()
{
  result = qword_E14790;
  if (!qword_E14790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14790);
  }

  return result;
}

unint64_t sub_70C984()
{
  result = qword_E14798;
  if (!qword_E14798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14798);
  }

  return result;
}

uint64_t sub_70C9D8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_70CA20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17BD0;

  return sub_709088(v2, v3, v4);
}

uint64_t sub_70CAD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17CF8;

  return sub_70A5D4(v2, v3, v4);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_70CBD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_70A6BC(a1, v4, v5, v6);
}

uint64_t sub_70CCA4()
{

  return swift_deallocObject();
}

uint64_t sub_70CCDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

uint64_t sub_70CD94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

unint64_t sub_70CE4C()
{
  result = qword_E147B0;
  if (!qword_E147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E147B0);
  }

  return result;
}

void *sub_70CF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_70AEFC(sub_70CF70, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.stringRepresentation.getter()
{
  sub_ABAD90(68);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x8000000000B717B0;
  sub_AB94A0(v6);
  v7._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v7);

  v8._object = 0x8000000000B717E0;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v8);
  v9._countAndFlagsBits = PlaylistCovers.RecipeColors.description.getter(v0[2], v0[3], v0[4], v0[5]);
  sub_AB94A0(v9);

  v10._countAndFlagsBits = 0x6F4374786574202CLL;
  v10._object = 0xED0000203A726F6CLL;
  sub_AB94A0(v10);
  v1 = [v0[6] description];
  v2 = sub_AB92A0();
  v4 = v3;

  v11._countAndFlagsBits = v2;
  v11._object = v4;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  return 0;
}

uint64_t static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(void *a1, char **a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7)
{
  v46 = a1;
  v13 = sub_AB35C0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_AB9250();
  isEscapingClosureAtFileLocation = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  if (!a4)
  {
LABEL_7:
    sub_AB91E0();
    (*(isEscapingClosureAtFileLocation + 16))(v17, v20, v14);
    if (qword_E0CB80 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v45 = a5;

  v21 = String.trim()();

  v22 = (v21._object >> 56) & 0xF;
  if ((v21._object & 0x2000000000000000) == 0)
  {
    v22 = v21._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a5 = v45;
    goto LABEL_7;
  }

  a5 = v45;
  while (1)
  {
    v25 = sub_AB9260();

    v26 = [v25 _containsEmoji];

    v27 = 270.0;
    if (a6 > 270.0)
    {
      v27 = a6;
    }

    v28 = v26 ? v27 : a6;
    v29 = v26 ? v27 : a7;
    v20 = &MPModelPropertyTVShowCreatorName_ptr;
    v30 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{v28, v29}];
    v14 = swift_allocObject();
    *(v14 + 16) = v28;
    *(v14 + 24) = v29;
    v31 = v46;
    *(v14 + 32) = v46;
    *(v14 + 40) = a5;
    *(v14 + 48) = a3;
    *(v14 + 56) = a4;
    *(v14 + 64) = a2;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_70BBD4;
    *(v32 + 24) = v14;
    v51 = sub_57B84;
    v52 = v32;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_41A314;
    v50 = &block_descriptor_198;
    v33 = _Block_copy(&aBlock);
    v34 = v31;
    a5 = a5;
    v35 = a2;

    a2 = &selRef_isMovingFromParentViewController;
    v36 = [v30 imageWithActions:v33];
    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_8:
    v23 = qword_E71B20;
    sub_AB3550();
    a3 = sub_AB9320();
    a4 = v24;
    (*(isEscapingClosureAtFileLocation + 8))(v20, v14);
  }

  v53.width = v28;
  v53.height = v29;
  v54.width = a6;
  v54.height = a7;
  if (CGSizeEqualToSize(v53, v54))
  {

    return v36;
  }

  v37 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = a6;
  *(v38 + 32) = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_70E3F4;
  *(v39 + 24) = v38;
  v51 = sub_C3FB8;
  v52 = v39;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_41A314;
  v50 = &block_descriptor_13_6;
  v40 = _Block_copy(&aBlock);
  v41 = v36;

  v36 = [v37 imageWithActions:v40];

  _Block_release(v40);
  v42 = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *PlaylistCovers.Cover.Representation.recipeColors.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;
  return v1;
}

uint64_t PlaylistCovers.Cover.Representation.hash(into:)()
{
  sub_ABB5D0(*v0 + 1);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABA7A0();
}

Swift::Int PlaylistCovers.Cover.Representation.hashValue.getter()
{
  sub_ABB5C0();
  sub_ABB5D0(*v0 + 1);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t sub_70D8C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v5, v7) & 1;
}

Swift::Int sub_70D924()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1 + 1);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t sub_70D9CC()
{
  sub_ABB5D0(*v0 + 1);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABA7A0();
}

Swift::Int sub_70DA5C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1 + 1);
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

__n128 PlaylistCovers.Cover.init(image:representation:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 5);
  v22 = *(a2 + 6);
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  sub_70B8A0(a2, v23);
  v8 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v10 = v9;
  v11 = *a2;
  v12 = PlaylistCovers.Expression.accessibilityLabel.getter();
  v14 = v13;
  sub_70B8FC(a2);
  v15 = PlaylistCovers.Expression.accessibilityIdentifier.getter(v11);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  result = v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v7;
  *(a3 + 72) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  return result;
}

double PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = 0.0;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

uint64_t sub_70DBFC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_70DC08(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

id sub_70DC90()
{
  v0 = [objc_opt_self() whiteColor];
  sub_13C80(0, &qword_E147E0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 128, 128, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 230, 230, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(250, 35, 59, 1.0);
  qword_E72080 = v0;
  *algn_E72088 = v1;
  qword_E72090 = v2;
  unk_E72098 = result;
  return result;
}

id sub_70DD48()
{
  sub_13C80(0, &qword_E147E0);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(238, 238, 238, 1.0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(187, 187, 187, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(70, 70, 70, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(17, 17, 17, 1.0);
  qword_E720A0 = v0;
  *algn_E720A8 = v1;
  qword_E720B0 = v2;
  unk_E720B8 = result;
  return result;
}

void sub_70DDF4(int a1, id a2, double a3, double a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 drawInRect:{0.0, 0.0, a3, a4}];
  v11 = sub_AB9420();
  v12 = objc_opt_self();
  [a5 scale];
  if (v11 <= 30)
  {
    v13 = 33.0;
  }

  else
  {
    v13 = 27.0;
  }

  sub_AB3A00();
  v14 = [v12 systemFontOfSize:? weight:?];
  v15 = [v14 fontDescriptor];

  v16 = kCTFontIgnoreLegibilityWeightAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = v16;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCTFontOpticalSizeAttribute;
  *(inited + 104) = &type metadata for CGFloat;
  *(inited + 80) = v13;
  v18 = v16;
  v19 = kCTFontOpticalSizeAttribute;
  v45 = v18;
  v44 = v19;
  v20 = v15;
  sub_52B1C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9D8);
  swift_arrayDestroy();
  _s3__C13AttributeNameVMa_0(0);
  sub_70EBA4();
  isa = sub_AB8FD0().super.isa;

  v42 = [v20 fontDescriptorByAddingAttributes:isa];

  v22 = [v12 fontWithDescriptor:v42 size:0.0];
  [a5 scale];
  sub_AB3A00();
  v24 = v23;
  v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v25 setMinimumLineHeight:v24];
  [v25 setMaximumLineHeight:v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147F0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_AF85D0;
  *(v26 + 32) = NSFontAttributeName;
  v27 = sub_13C80(0, &qword_E147F8);
  *(v26 + 40) = v22;
  *(v26 + 64) = v27;
  *(v26 + 72) = NSForegroundColorAttributeName;
  v28 = sub_13C80(0, &qword_E147E0);
  *(v26 + 80) = a8;
  *(v26 + 104) = v28;
  *(v26 + 112) = NSKernAttributeName;
  *(v26 + 120) = -0.25 / (270.0 / a3);
  *(v26 + 144) = &type metadata for CGFloat;
  *(v26 + 152) = NSParagraphStyleAttributeName;
  *(v26 + 184) = sub_13C80(0, &qword_E14800);
  *(v26 + 160) = v25;
  v29 = NSFontAttributeName;
  v30 = v22;
  v31 = NSForegroundColorAttributeName;
  v32 = a8;
  v33 = NSKernAttributeName;
  v34 = NSParagraphStyleAttributeName;
  v35 = v25;
  sub_52B1EC(v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9C8);
  swift_arrayDestroy();
  v36 = sub_AB4C40();
  sub_AB4C30();
  v37 = objc_allocWithZone(v36);

  v38 = sub_AB4C50();
  v39 = sub_AB4C20();

  [a5 scale];
  sub_AB3A00();
  sub_AB9EA0();
  [v39 drawWithRect:1 options:0 context:{UIEdgeInsetsInsetRect(0.0, 0.0, a3, a4, v40, v41)}];
}

uint64_t sub_70E324()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_70E3BC()
{

  return swift_deallocObject();
}

uint64_t sub_70E410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E147D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v4 = v3;
  v26 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v5;
  v25 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v29 = v6;
  v23 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v30 = v7;
  v8 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v10 = v9;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v24 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v28 = v14;
  v22 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  if (v2 == v8 && v4 == v10)
  {
  }

  else
  {
    v17 = sub_ABB3C0();

    if ((v17 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v26 == v11 && v27 == v13)
  {
  }

  else
  {
    v18 = sub_ABB3C0();

    if ((v18 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v25 == v24 && v29 == v28)
  {

    goto LABEL_14;
  }

  v19 = sub_ABB3C0();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    return 0;
  }

LABEL_14:
  if (v23 == v22 && v30 == v16)
  {

LABEL_19:
    sub_13C80(0, &qword_E112E0);
    return sub_ABA790() & 1;
  }

  v20 = sub_ABB3C0();

  if (v20)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &qword_E112E0);
  if ((sub_ABA790() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v35 = *(a1 + 24);
  v5 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v5;
  v6 = *(a1 + 72);
  v38 = v6;
  v7 = *(a2 + 40);
  v32[0] = *(a2 + 24);
  v32[1] = v7;
  v33 = *(a2 + 56);
  v8 = *(a2 + 72);
  v34 = v8;
  v9 = v35;
  v10 = v36;
  v11 = v32[0];
  v12 = *(&v33 + 1);
  if (!*(&v35 + 1))
  {
    if (!*(&v32[0] + 1))
    {
      v18 = *(&v37 + 1);
      v19 = v36;
      v20 = v37;
      v21 = v35;
      v22 = *(&v36 + 1);
      sub_70E410(&v35, v44);
      sub_70E410(v32, v44);
      sub_70EB34(v21, 0, v19, v22, v20, v18, v6);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!*(&v32[0] + 1))
  {
LABEL_12:
    v13 = *(&v37 + 1);
    v14 = v37;
    v26 = *(&v33 + 1);
    v28 = v7;
    v15 = *(&v36 + 1);
    v30 = v33;
    sub_70E410(&v35, v44);
    sub_70E410(v32, v44);
    sub_70EB34(v9, *(&v9 + 1), v10, v15, v14, v13, v6);
    sub_70EB34(v11, *(&v11 + 1), v28, *(&v28 + 1), v30, v26, v8);
    goto LABEL_13;
  }

  v44[0] = v32[0];
  v45 = *(&v32[0] + 1);
  v46 = v7;
  v47 = v33;
  v48 = v8;
  v39[0] = v35;
  v40 = *(&v35 + 1);
  v41 = v36;
  v42 = v37;
  v43 = v6;
  v25 = v37;
  v24 = *(&v36 + 1);
  v29 = v33;
  v27 = v7;
  sub_70E410(&v35, v31);
  sub_70E410(v32, v31);
  v23 = _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v39, v44);
  sub_70EB34(v11, *(&v11 + 1), v27, *(&v27 + 1), v29, v12, v8);
  sub_70EB34(v9, *(&v9 + 1), v10, v24, v25, *(&v25 + 1), v6);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

LABEL_16:
  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_ABB3C0();
  }

  return v16 & 1;
}

unint64_t sub_70E9E0()
{
  result = qword_E147D8;
  if (!qword_E147D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E147D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_70EA5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_70EAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_70EB34(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_70EBA4()
{
  result = qword_E0DE40;
  if (!qword_E0DE40)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DE40);
  }

  return result;
}

uint64_t PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6, double a7, double a8)
{
  if (a6 > 3u)
  {
    if (a6 > 5u)
    {
      if (a6 == 6)
      {
        v8 = sub_71499C(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_70FD90(a1, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (a6 == 4)
      {
        v8 = sub_70F9E8(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      v11 = sub_70FBBC(a1, a2, a3, a4, a5, a7, a8);
    }

LABEL_17:
    v9 = v11;
    v10 = &selRef_whiteColor;
    goto LABEL_18;
  }

  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v8 = sub_70F640(a1, a2, a3, a4, a5, a7, a8);
      goto LABEL_12;
    }

    v11 = sub_70F814(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  if (a6)
  {
    v11 = sub_70F460(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  v8 = sub_70F28C(a1, a2, a3, a4, a5, a7, a8);
LABEL_12:
  v9 = v8;
  v10 = &selRef_blackColor;
LABEL_18:
  v12 = [objc_opt_self() *v10];
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityLabel.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (qword_E0D440 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
      }

      else
      {
        if (qword_E0D448 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
      }
    }

    else if (a1 == 4)
    {
      if (qword_E0D430 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
    }

    else
    {
      if (qword_E0D438 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_E0D420 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
    }

    else
    {
      if (qword_E0D428 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
    }
  }

  else if (a1)
  {
    if (qword_E0D418 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
  }

  else
  {
    if (qword_E0D410 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
  }

  v2 = *v1;

  return v2;
}

id PlaylistCovers.Expression.textColor.getter(char a1)
{
  v1 = [objc_opt_self() *off_D31768[a1]];

  return v1;
}

uint64_t sub_70F28C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_7150B0;
  *(v15 + 24) = v14;
  v23[4] = sub_57B84;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_41A314;
  v23[3] = &block_descriptor_199;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_70F460(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_715138;
  *(v15 + 24) = v14;
  v24[4] = sub_C3FB8;
  v24[5] = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_41A314;
  v24[3] = &block_descriptor_34_4;
  v16 = _Block_copy(v24);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;

  v22 = [v21 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_70F640(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_71516C;
  *(v15 + 24) = v14;
  v23[4] = sub_C3FB8;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_41A314;
  v23[3] = &block_descriptor_57_2;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_70F814(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_715184;
  *(v15 + 24) = v14;
  v23[4] = sub_C3FB8;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_41A314;
  v23[3] = &block_descriptor_70_2;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_70F9E8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_71519C;
  *(v15 + 24) = v14;
  v23[4] = sub_C3FB8;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_41A314;
  v23[3] = &block_descriptor_92_2;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_70FBBC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_7151B4;
  *(v15 + 24) = v14;
  v23[4] = sub_C3FB8;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_41A314;
  v23[3] = &block_descriptor_104_0;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

void sub_70FD90(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6 * 1.1, a7 * 1.1}];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a6 * 1.1;
  *(v16 + 56) = a7 * 1.1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_7152D0;
  *(v17 + 24) = v16;
  v52 = sub_C3FB8;
  v53 = v17;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_41A314;
  v51 = &block_descriptor_140_2;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v23 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  [v23 scale];
  v25 = v24;
  [v23 scale];
  v27 = v26;
  v28 = [v23 CGImage];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v14;
  v55.size.height = v27 * a7;
  v55.origin.y = v27 * a7 * 0.05;
  v55.size.width = v25 * a6;
  v55.origin.x = v25 * a6 * 0.05;
  v31 = CGImageCreateWithImageInRect(v28, v55);

  if (v31)
  {
    v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

    v54 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_715300;
    *(v34 + 24) = v33;
    v52 = sub_C3FB8;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_41A314;
    v51 = &block_descriptor_150_0;
    v35 = _Block_copy(&aBlock);

    v36 = [v14 imageWithActions:v35];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v46;
      *(v37 + 40) = v22;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = a6;
      *(v37 + 72) = a7;
      *(v37 + 80) = v36;
      *(v37 + 88) = &v54;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_715360;
      *(v38 + 24) = v37;
      v52 = sub_C3FB8;
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_41A314;
      v51 = &block_descriptor_160_0;
      v39 = _Block_copy(&aBlock);
      v40 = v19;
      v41 = v20;
      v42 = v46;
      v43 = v22;
      v44 = v36;

      [v30 imageWithActions:v39];

      _Block_release(v39);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if ((v39 & 1) == 0)
      {
        v45 = v54;

        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

Swift::Int sub_7102E4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1 + 1);
  return sub_ABB610();
}

Swift::Int sub_71035C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1 + 1);
  return sub_ABB610();
}

uint64_t sub_7103A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  return _swift_task_switch(sub_710418, 0, 0);
}

uint64_t sub_710418()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14808);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14810);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_710558;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v9, 0, 0, &unk_B240E8, v6, v5);
}

uint64_t sub_710558()
{

  return _swift_task_switch(sub_710670, 0, 0);
}

uint64_t sub_710688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 144) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14830);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_7107AC, 0, 0);
}

uint64_t sub_7107AC()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = **(v0 + 112);
    v3 = (v1 + 32);
    v38 = sub_AB9990();
    v4 = *(v38 - 8);
    v37 = *(v4 + 56);
    v36 = (v4 + 48);
    v35 = (v4 + 8);
    do
    {
      v40 = v2;
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = v3 + 1;
      v13 = *v3;
      v41 = v12;
      v37(*(v0 + 192), 1, 1, v38);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      *(v14 + 56) = v9;
      *(v14 + 64) = v7;
      *(v14 + 72) = v8;
      *(v14 + 80) = v6;
      *(v14 + 88) = v5;
      v15 = v9;
      v16 = v7;
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v20 = swift_taskGroup_addPending();
      v21 = *(v0 + 192);
      if (v20)
      {
        v22 = *(v0 + 184);
        sub_50F344(v21, v22);
        v23 = (*v36)(v22, 1, v38);
        v24 = *(v0 + 184);
        if (v23 == 1)
        {
          sub_512968(*(v0 + 184));
        }

        else
        {
          sub_AB9980();
          (*v35)(v24, v38);
        }

        v3 = v41;
        if (*(v14 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_AB98B0();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = swift_allocObject();
        *(v28 + 16) = &unk_B241F8;
        *(v28 + 24) = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14808);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 192);
        *(v0 + 72) = 1;
        *(v0 + 80) = v29;
        *(v0 + 88) = v39;
        swift_task_create();

        sub_512968(v30);
      }

      else
      {
        sub_512968(v21);

        v3 = v41;
      }

      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14808);
  sub_AB98F0();
  *(v0 + 224) = _swiftEmptyDictionarySingleton;
  v31 = sub_36A00(&qword_E14838, &qword_E14830);
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  *v32 = v0;
  v32[1] = sub_710B84;
  v33 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 48, v33, v31);
}

uint64_t sub_710B84()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 216);
    v6 = v2 + 200;
    v4 = *(v2 + 200);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = UIScreen.Dimensions.size.getter;
  }

  else
  {
    v7 = sub_710CD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_710CD4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v1;
    v10 = v7;
    v11 = v9;
    v12 = v10;
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v2;
    v18 = sub_522388(v8);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v19;
      if (*(*(v0 + 224) + 24) < v23)
      {
        sub_52500C(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_522388(v8);
        if ((v3 & 1) != (v24 & 1))
        {

          return sub_ABB4C0();
        }

LABEL_21:
        v46 = *(v0 + 96);
        v48 = *(v0 + 160);
        v47 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        if (v3)
        {
          v51 = v46[7] + 56 * v18;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v54 = *(v51 + 24);
          v55 = *(v51 + 32);
          v56 = *(v51 + 40);
          v57 = *(v51 + 48);
          *v51 = v8;
          *(v51 + 8) = v11;
          *(v51 + 16) = v50;
          *(v51 + 24) = v49;
          *(v51 + 32) = v48;
          *(v51 + 40) = v47;
          *(v51 + 48) = v12;
        }

        else
        {
          v46[(v18 >> 6) + 8] |= 1 << v18;
          *(v46[6] + v18) = v8;
          v58 = v46[7] + 56 * v18;
          *v58 = v8;
          *(v58 + 8) = v11;
          *(v58 + 16) = v50;
          *(v58 + 24) = v49;
          *(v58 + 32) = v48;
          *(v58 + 40) = v47;
          *(v58 + 48) = v12;

          v62 = v46[2];
          v22 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v22)
          {
            __break(1u);
            return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
          }

          v46[2] = v63;
        }

        *(v0 + 224) = v46;
        v64 = sub_36A00(&qword_E14838, &qword_E14830);
        v65 = swift_task_alloc();
        *(v0 + 232) = v65;
        *v65 = v0;
        v65[1] = sub_710B84;
        v60 = *(v0 + 200);
        v59 = v0 + 48;
        v61 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }
    }

    v66 = v18;
    sub_528098();
    v18 = v66;
    goto LABEL_21;
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v67 = v0;
  do
  {
    if (*(v2 + 16))
    {
      v29 = sub_522388(*(&off_D1C888 + v26 + 32));
      if (v30)
      {
        v31 = *(v2 + 56) + 56 * v29;
        v69 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v36 = *(v31 + 48);
        v68 = *(v31 + 8);
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v41 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_506FDC(0, *(v27 + 2) + 1, 1, v27);
        }

        v43 = *(v27 + 2);
        v42 = *(v27 + 3);
        if (v43 >= v42 >> 1)
        {
          v27 = sub_506FDC((v42 > 1), v43 + 1, 1, v27);
        }

        *(v27 + 2) = v43 + 1;
        v28 = &v27[56 * v43];
        v28[32] = v69;
        v0 = v67;
        *(v28 + 5) = v68;
        *(v28 + 6) = v37;
        *(v28 + 7) = v38;
        *(v28 + 8) = v39;
        *(v28 + 9) = v40;
        *(v28 + 10) = v41;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  v44 = *(v0 + 104);

  *v44 = v27;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_711148(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 40) = a7;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 80) = a6;
  *(v10 + 16) = a1;
  return _swift_task_switch(sub_711184, 0, 0);
}

uint64_t sub_711184()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 80);
  *v8 = v9;
  *(v8 + 8) = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v5, v3, v4, v1, v2, v9, v6, v7);
  *(v8 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

CGColorSpaceRef sub_711200()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_E720C0 = result;
  return result;
}

void sub_711220(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a2 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  [a1 fillRect:{0.0, 0.0, a4, a5}];
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v15 = qword_E720C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF7C50;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a7 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v18 = CGGradientCreateWithColors(v15, isa, dbl_D1C8D0);

  if (v18)
  {
    v19 = [a1 CGContext];
    v49.x = 0.0;
    v49.y = 0.0;
    v54.x = a4;
    v54.y = a5;
    CGContextDrawLinearGradient(v19, v18, v49, v54, 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF82E0;
  *(v20 + 32) = [a7 CGColor];
  *(v20 + 40) = [a7 CGColor];
  v21 = [a7 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v20 + 48) = v22;
  v23 = sub_AB9740().super.isa;

  v24 = CGGradientCreateWithColors(v15, v23, dbl_D1C900);

  if (v24)
  {
    v25 = [a1 CGContext];
    v50.x = a4;
    v50.y = a5;
    v55.x = a4;
    v55.y = a5;
    CGContextDrawRadialGradient(v25, v24, v50, 0.0, v55, a4, 0);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_AF82E0;
  *(v26 + 32) = [a3 CGColor];
  v27 = [a3 colorWithAlphaComponent:0.0];
  v28 = [v27 CGColor];

  *(v26 + 40) = v28;
  v29 = [a3 colorWithAlphaComponent:0.0];
  v30 = [v29 CGColor];

  *(v26 + 48) = v30;
  v31 = sub_AB9740().super.isa;

  v32 = CGGradientCreateWithColors(v15, v31, dbl_D1C938);

  if (v32)
  {
    v33 = [a1 CGContext];
    v51.x = 0.0;
    v56.x = 0.0;
    v51.y = a5;
    v56.y = a5;
    CGContextDrawRadialGradient(v33, v32, v51, 0.0, v56, a4, 0);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_AF82E0;
  *(v34 + 32) = [a3 CGColor];
  v35 = [a3 colorWithAlphaComponent:0.0];
  v36 = [v35 CGColor];

  *(v34 + 40) = v36;
  v37 = [a3 colorWithAlphaComponent:0.0];
  v38 = [v37 CGColor];

  *(v34 + 48) = v38;
  v39 = sub_AB9740().super.isa;

  v40 = CGGradientCreateWithColors(v15, v39, dbl_D1C970);

  if (v40)
  {
    v41 = [a1 CGContext];
    v52.y = 0.0;
    v57.y = 0.0;
    v52.x = a4;
    v57.x = a4;
    CGContextDrawRadialGradient(v41, v40, v52, 0.0, v57, a4, 0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_AF7C50;
  *(v42 + 32) = [a2 CGColor];
  v43 = [a2 colorWithAlphaComponent:0.0];
  v44 = [v43 CGColor];

  *(v42 + 40) = v44;
  v45 = sub_AB9740().super.isa;

  v46 = CGGradientCreateWithColors(v15, v45, dbl_D1C9A8);

  if (v46)
  {
    v47 = [a1 CGContext];
    v53.x = 0.0;
    v53.y = 0.0;
    v58.x = 0.0;
    v58.y = 0.0;
    CGContextDrawRadialGradient(v47, v46, v53, 0.0, v58, a4, 0);
  }
}

void sub_711890(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CGFloat a7, CGFloat a8)
{
  v119 = a6;
  v117 = a3;
  v125 = sub_AB39E0();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a2;
  v16 = [a2 CGColor];
  v118 = a4;
  v17 = [a4 CGColor];
  v120 = a5;
  v18 = [a5 CGColor];
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v19 = qword_E720C0;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF93E0;
  *(v20 + 32) = v18;
  *(v20 + 40) = v18;
  *(v20 + 48) = v16;
  *(v20 + 56) = v16;
  _s3__C7CGColorCMa_0(0);
  v22 = v21;
  v23 = v18;
  v24 = v16;
  v25 = v23;
  v26 = v24;
  v121 = v22;
  isa = sub_AB9740().super.isa;

  v122 = v19;
  v28 = CGGradientCreateWithColors(v19, isa, dbl_D1C9D8);

  if (v28)
  {
    v29 = [a1 CGContext];
    v132.x = 0.0;
    v132.y = 0.0;
    v135.x = a7;
    v135.y = a8;
    CGContextDrawLinearGradient(v29, v28, v132, v135, 0);
  }

  v30 = [a1 CGContext];
  CGContextSaveGState(v30);

  v31 = a7 * -0.235;
  v32 = a7 * 1.47;
  v137.origin.x = a7 * -0.235;
  v137.origin.y = a8 * 0.15;
  v137.size.width = a7 * 1.47;
  v137.size.height = a8 * 0.7;
  v33 = -CGRectGetMidX(v137);
  v138.origin.x = a7 * -0.235;
  v138.origin.y = a8 * 0.15;
  v138.size.width = a7 * 1.47;
  v138.size.height = a8 * 0.7;
  MidY = CGRectGetMidY(v138);
  CGAffineTransformMakeTranslation(&t1, v33, -MidY);
  tx = t1.tx;
  ty = t1.ty;
  v126 = *&t1.a;
  v123 = *&t1.c;
  *&v111 = 0xBFE0C152382D7365;
  CGAffineTransformMakeRotation(&t1, -0.523598776);
  v37 = *&t1.a;
  v38 = *&t1.c;
  v39 = *&t1.tx;
  *&t1.a = v126;
  *&t1.c = v123;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v37;
  *&t2.c = v38;
  *&t2.tx = v39;
  CGAffineTransformConcat(&v129, &t1, &t2);
  v40 = v129.tx;
  *&v126 = a7;
  v41 = v129.ty;
  v123 = *&v129.a;
  v115 = *&v129.c;
  v139.origin.x = v31;
  v139.origin.y = a8 * 0.15;
  v139.size.width = v32;
  v139.size.height = a8 * 0.7;
  MidX = CGRectGetMidX(v139);
  v140.origin.x = v31;
  v140.origin.y = a8 * 0.15;
  v140.size.width = v32;
  v140.size.height = a8 * 0.7;
  v43 = CGRectGetMidY(v140);
  CGAffineTransformMakeTranslation(&t1, MidX, v43);
  *&t2.a = v123;
  *&t2.c = v115;
  t2.tx = v40;
  t2.ty = v41;
  v44 = *&v126;
  v129 = t1;
  CGAffineTransformConcat(&t1, &t2, &v129);
  Mutable = CGPathCreateMutable();
  sub_AB9FF0();
  v46 = [a1 CGContext];
  *&v115 = Mutable;
  CGContextAddPath(v46, Mutable);

  v47 = [a1 CGContext];
  v48 = v127;
  v49 = *(v127 + 104);
  v114 = enum case for CGPathFillRule.winding(_:);
  v50 = v125;
  v113 = v49;
  v49(v15);
  sub_AB9E20();

  v51 = *(v48 + 8);
  v110 = v15;
  v127 = v48 + 8;
  v112 = v51;
  v51(v15, v50);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_B13CB0;
  *(v52 + 32) = v17;
  *(v52 + 40) = v17;
  *(v52 + 48) = v25;
  *(v52 + 56) = v25;
  *(v52 + 64) = v26;
  *(v52 + 72) = v26;
  *(v52 + 80) = v25;
  *(v52 + 88) = v25;
  *(v52 + 96) = v17;
  *(v52 + 104) = v17;
  *(v52 + 112) = v25;
  v53 = v25;
  v54 = v17;
  v55 = v53;
  v56 = v54;
  v57 = v55;
  v58 = v26;
  v59 = v56;
  v60 = v57;
  *&v123 = v58;
  v61 = v59;
  v62 = v60;
  v63 = v120;
  v64 = [v120 colorWithAlphaComponent:0.8];
  v65 = [v64 CGColor];

  *(v52 + 120) = v65;
  v66 = [v63 colorWithAlphaComponent:0.5];
  v67 = [v66 CGColor];

  *(v52 + 128) = v67;
  v68 = [v63 colorWithAlphaComponent:0.5];
  v69 = [v68 CGColor];

  *(v52 + 136) = v69;
  v70 = [v63 colorWithAlphaComponent:0.8];
  v71 = [v70 CGColor];

  *(v52 + 144) = v71;
  *(v52 + 152) = v62;
  *(v52 + 160) = v61;
  *(v52 + 168) = v61;
  v72 = v61;
  v73 = v62;
  v109 = v72;
  v74 = sub_AB9740().super.isa;

  v75 = v122;
  v76 = CGGradientCreateWithColors(v122, v74, dbl_D1CA18);

  if (v76)
  {
    v77 = [a1 CGContext];
    v133.x = v44 * 0.5;
    v133.y = a8 * 0.5;
    CGContextDrawConicGradient(v77, v76, v133, 0.0);
  }

  v78 = [a1 CGContext];
  CGContextRestoreGState(v78);

  v79 = v44 * 0.26375;
  v80 = v44 * 0.4725;
  v141.origin.x = v44 * 0.26375;
  v141.origin.y = a8 * 0.388888889;
  v141.size.width = v44 * 0.4725;
  v141.size.height = a8 * 0.2225;
  v81 = -CGRectGetMidX(v141);
  v142.origin.x = v44 * 0.26375;
  v142.origin.y = a8 * 0.388888889;
  v142.size.width = v44 * 0.4725;
  v142.size.height = a8 * 0.2225;
  v82 = CGRectGetMidY(v142);
  CGAffineTransformMakeTranslation(&t2, v81, -v82);
  v83 = t2.tx;
  v84 = t2.ty;
  v108 = *&t2.a;
  v107 = *&t2.c;
  CGAffineTransformMakeRotation(&t2, *&v111);
  v85 = *&t2.a;
  v86 = *&t2.c;
  v87 = *&t2.tx;
  *&t2.a = v108;
  *&t2.c = v107;
  t2.tx = v83;
  t2.ty = v84;
  *&v129.a = v85;
  *&v129.c = v86;
  *&v129.tx = v87;
  CGAffineTransformConcat(&v128, &t2, &v129);
  v88 = v128.tx;
  v89 = v128.ty;
  v111 = *&v128.a;
  v108 = *&v128.c;
  v143.origin.x = v79;
  v143.origin.y = a8 * 0.388888889;
  v143.size.width = v80;
  v143.size.height = a8 * 0.2225;
  v90 = CGRectGetMidX(v143);
  v144.origin.x = v79;
  v144.origin.y = a8 * 0.388888889;
  v144.size.width = v80;
  v144.size.height = a8 * 0.2225;
  v91 = CGRectGetMidY(v144);
  CGAffineTransformMakeTranslation(&t2, v90, v91);
  *&v129.c = v108;
  *&v129.a = v111;
  v129.tx = v88;
  v92 = *&v126;
  v129.ty = v89;
  v128 = t2;
  CGAffineTransformConcat(&t2, &v129, &v128);
  v93 = sub_712470(v119, v116, v117, v118, v63, &t2, v79, a8 * 0.388888889, v80, a8 * 0.2225);
  [v93 drawInRect:{0.0, 0.0, v92, a8}];

  v94 = [a1 CGContext];
  CGContextSetFillColorWithColor(v94, v123);

  v95 = CGPathCreateMutable();
  sub_AB9FF0();
  v96 = [a1 CGContext];
  CGContextAddPath(v96, v95);

  v97 = [a1 CGContext];
  v98 = v110;
  v99 = v125;
  v113(v110, v114, v125);
  sub_AB9E40();

  v112(v98, v99);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_AF7C50;
  *(v100 + 32) = v73;
  v101 = v73;
  v102 = [v63 colorWithAlphaComponent:0.0];
  v103 = [v102 CGColor];

  *(v100 + 40) = v103;
  v104 = sub_AB9740().super.isa;

  v105 = CGGradientCreateWithColors(v75, v104, dbl_D1CAC8);

  if (v105)
  {
    v106 = [a1 CGContext];
    v134.y = 0.0;
    v136.y = 0.0;
    v134.x = v92 * 0.5;
    v136.x = v92 * 0.5;
    CGContextDrawRadialGradient(v106, v105, v134, 0.0, v136, v134.x, 0);

    v95 = v106;
  }

  else
  {
    v105 = v115;
  }
}

uint64_t sub_712470(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_715154;
  *(v22 + 24) = v20;
  v37[4] = sub_C3FB8;
  v37[5] = v22;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_41A314;
  v37[3] = &block_descriptor_47_1;
  v23 = _Block_copy(v37);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v30 = [v28 CGImage];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(CIImage) initWithCGImage:v30];
      v33 = [v32 imageByClampingToExtent];
      v34 = [v33 imageByApplyingGaussianBlurWithSigma:20.0];
      [v32 extent];
      v35 = [v34 imageByCroppingToRect:?];
      v36 = [objc_allocWithZone(UIImage) initWithCIImage:v35];

      return v36;
    }

    else
    {
    }

    return v28;
  }

  return result;
}

uint64_t sub_712728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_AB39E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 CGContext];
  v12 = [a5 colorWithAlphaComponent:0.55];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(v11, v13);
  Mutable = CGPathCreateMutable();
  sub_AB9FF0();
  v15 = [a1 CGContext];
  CGContextAddPath(v15, Mutable);

  v16 = [a1 CGContext];
  (*(v8 + 104))(v10, enum case for CGPathFillRule.winding(_:), v7);
  sub_AB9E40();

  return (*(v8 + 8))(v10, v7);
}

void sub_71292C(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v12 = qword_E720C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_B036F0;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_D1CAF8);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_B036F0;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = sub_AB9740().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_D1CB48);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_AF7C50;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = sub_AB9740().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_D1CB98);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void sub_712DC4(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82E0;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  _s3__C7CGColorCMa_0(0);
  colors = sub_AB9740().super.isa;

  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = qword_E720C0;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&off_D1CBA8 + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&off_D1CE38 + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14840);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_AF7C50;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = sub_AB9740().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_D1CE28);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void sub_713210(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v13 = qword_E720C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_B036F0;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_D1CEC0);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF82E0;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = sub_AB9740().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_D1CF10);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void sub_71356C(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v12 = qword_E720C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF82E0;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_D1CF48);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF82E0;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = sub_AB9740().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_D1CF80);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_AF93E0;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = sub_AB9740().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_D1CFB8);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void sub_7139DC(double a1, double a2, double a3, double a4)
{
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  v9 = sub_AB9260();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_713AF4(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_AF93E0;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_D1CFF8);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_AF93E0;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = sub_AB9740().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_D1D038);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_AF7C50;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = sub_AB9740().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_D1D078);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_713FD8(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (qword_E0CEF8 != -1)
  {
    swift_once();
  }

  v14 = qword_E720C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_B13C80;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = sub_AB9740().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_D1D0A8);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF7C50;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = sub_AB9740().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_D1D0F0);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

uint64_t sub_71433C(void *a1, double a2, double a3)
{
  v6 = sub_AB39E0();
  result = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v12 = a2 >= 0.0;
  if (v11 > 0.0)
  {
    v12 = a2 <= 0.0;
  }

  if (!v12)
  {
    v13 = 0;
    v14 = a3 / 3.0;
    v15 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v15 = a3 <= 0.0;
    }

    v29 = v15;
    v31 = enum case for CGPathFillRule.winding(_:);
    v16 = (v8 + 104);
    v17 = (v8 + 8);
    v28 = a2;
    while (1)
    {
      v20 = __OFADD__(v13, 1);
      v21 = v13 + 1;
      if (v20)
      {
        break;
      }

      if (v14 == 0.0)
      {
        goto LABEL_23;
      }

      v30 = v21;
      if (!v29)
      {
        v22 = 0;
        while (!__OFADD__(v22, 1))
        {
          v23 = (v22 + 1) * v14 + 0.0;
          Mutable = CGPathCreateMutable();
          v33 = 0;
          v34 = 0;
          v32 = 0x3FF0000000000000;
          v35 = 0x3FF0000000000000;
          v36 = 0;
          v37 = 0;
          sub_ABA000();
          v25 = [a1 CGContext];
          CGContextAddPath(v25, Mutable);

          v26 = [a1 CGContext];
          (*v16)(v10, v31, v6);
          sub_AB9E40();

          result = (*v17)(v10, v6);
          v27 = v23 <= a3;
          if (v14 > 0.0)
          {
            v27 = v23 >= a3;
          }

          ++v22;
          if (v27)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v13 = v30;
      v18 = v30 * v11 + 0.0;
      v19 = v18 <= v28;
      if (v11 > 0.0)
      {
        v19 = v18 >= v28;
      }

      if (v19)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_714608(void *a1, int a2, int a3, int a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_714778(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_71486C;

  return v5(v2 + 16);
}

uint64_t sub_71486C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_71499C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_7151DC;
  *(v14 + 24) = v13;
  v33 = sub_C3FB8;
  v34 = v14;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_41A314;
  v32 = &block_descriptor_117_1;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a6;
    *(v18 + 56) = a7;
    *(v18 + 64) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = a6;
    *(v18 + 88) = a7;
    *(v18 + 96) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_715250;
    *(v19 + 24) = v18;
    v33 = sub_C3FB8;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_41A314;
    v32 = &block_descriptor_127;
    v20 = _Block_copy(&aBlock);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = v16;

    v26 = [v12 imageWithActions:v20];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_714CBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_17CF8;

  return sub_710688(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t sub_714DB4()
{
  result = qword_E14818;
  if (!qword_E14818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14818);
  }

  return result;
}

uint64_t sub_714E5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_714EBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_17BD0;

  return sub_711148(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_714FC0()
{

  return swift_deallocObject();
}

uint64_t sub_714FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_714778(a1, v4);
}

uint64_t block_copy_helper_199(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7150E0()
{

  return swift_deallocObject();
}

uint64_t sub_7151F8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{

  return swift_deallocObject();
}

uint64_t sub_715308()
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (qword_E0CF00 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  sub_ABAD90(60);
  v25._object = 0x8000000000B71880;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_AB94A0(v25);
  v8 = [a1 description];
  v9 = sub_AB92A0();
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_AB94A0(v26);

  v27._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v27._object = 0xEA0000000000203ALL;
  sub_AB94A0(v27);
  v12 = [a2 description];
  v13 = sub_AB92A0();
  v15 = v14;

  v28._countAndFlagsBits = v13;
  v28._object = v15;
  sub_AB94A0(v28);

  v29._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v29._object = 0xEA0000000000203ALL;
  sub_AB94A0(v29);
  v16 = [a3 description];
  v17 = sub_AB92A0();
  v19 = v18;

  v30._countAndFlagsBits = v17;
  v30._object = v19;
  sub_AB94A0(v30);

  v31._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v31._object = 0xEA0000000000203ALL;
  sub_AB94A0(v31);
  v20 = [a4 description];
  v21 = sub_AB92A0();
  v23 = v22;

  v32._countAndFlagsBits = v21;
  v32._object = v23;
  sub_AB94A0(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_AB94A0(v33);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)()
{
  sub_5D26B8();
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)()
{
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABA7A0();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t sub_715820()
{
  sub_5D26B8();
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_7158C0()
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t sub_715940()
{
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABA7A0();
}

Swift::Int sub_7159A4()
{
  sub_ABB5C0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  sub_ABA7A0();
  return sub_ABB610();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = sub_AB8D50();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_AB8DE0();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80);
  v1[24] = swift_task_alloc();
  v4 = sub_AB8860();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC40);
  v1[31] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for PlaylistCovers.Source();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_715CBC, 0, 0);
}

uint64_t sub_715CBC()
{
  sub_71A610(*(v0 + 136), *(v0 + 288));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    *(v0 + 344) = *v2;
    v4 = *(v3 + 16);
    *(v0 + 352) = v4;
    if (!v4)
    {
LABEL_19:

      goto LABEL_20;
    }

    *(v0 + 404) = *(*(v0 + 176) + 80);
    *(v0 + 408) = enum case for Playlist.Entry.InternalItem.musicMovie(_:);
    *(v0 + 412) = enum case for Playlist.Entry.InternalItem.musicVideo(_:);
    *(v0 + 416) = enum case for Playlist.Entry.InternalItem.song(_:);
    *(v0 + 360) = 0;
    if (*(v3 + 16))
    {
      v5 = 0;
      do
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), v3 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v5, *(v0 + 168));
        v6 = sub_AB8D80();
        *(v0 + 368) = v7;
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          v10 = *(v0 + 408);
          v12 = *(v0 + 152);
          v11 = *(v0 + 160);
          v13 = *(v0 + 144);
          sub_AB8D60();
          v14 = (*(v12 + 88))(v11, v13);
          if (v14 != v10)
          {
            v15 = *(v0 + 412);
            if (v14 == v15 || v14 == *(v0 + 416))
            {
              v63 = v14 == v15;
              (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
              sub_AB8DD0();
              v64 = swift_task_alloc();
              *(v0 + 376) = v64;
              *v64 = v0;
              v64[1] = sub_71685C;
              v59 = *(v0 + 192);
              v60 = v9;
              v61 = v8;
              v62 = v63;
              goto LABEL_33;
            }
          }

          v18 = *(v0 + 152);
          v17 = *(v0 + 160);
          v19 = *(v0 + 144);

          (*(v18 + 8))(v17, v19);
        }

        v20 = *(v0 + 352);
        v21 = *(v0 + 360) + 1;
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        v5 = *(v0 + 360) + 1;
        *(v0 + 360) = v5;
        v3 = *(v0 + 344);
      }

      while (v5 < *(v3 + 16));
    }

    __break(1u);
  }

  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  (*(v23 + 32))(v22, v2, v24);
  (*(v23 + 16))(v25, v22, v24);
  *(v0 + 392) = *(v26 + 36);
  *(v0 + 296) = sub_71A674();
  sub_AB9C60();
  *(v0 + 396) = enum case for Track.song(_:);
  *(v0 + 400) = enum case for Track.musicVideo(_:);
  v27 = *(v0 + 392);
  v28 = *(v0 + 248);
  sub_AB9CA0();
  if (*(v28 + v27) == *(v0 + 128))
  {
LABEL_18:
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    sub_12E1C(*(v0 + 248), &qword_E0EC40);
    (*(v41 + 8))(v40, v42);
LABEL_20:
    if (qword_E0CEE8 != -1)
    {
      swift_once();
    }

    v43 = *algn_E72088;
    v45 = qword_E72090;
    v44 = unk_E72098;
    v68 = qword_E72080;
    v66 = v43;
    v46 = v45;
    v47 = v44;

    v48 = *(v0 + 8);

    return v48(v68, v66, v46, v47);
  }

  while (1)
  {
    v29 = *(v0 + 232);
    v67 = *(v0 + 224);
    v30 = *(v0 + 208);
    v65 = *(v0 + 200);
    v31 = sub_AB9D80();
    v32 = *(v30 + 16);
    v32(v29);
    v31(v0 + 96, 0);
    sub_AB9CB0();
    (*(v30 + 32))(v67, v29, v65);
    v33 = sub_AB87D0();
    v35 = v34;
    *(v0 + 304) = v34;
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    if (v35)
    {
      break;
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 248);
    (*(v37 + 8))(*(v0 + 224), v36);
    sub_AB9CA0();
    if (*(v39 + v38) == *(v0 + 128))
    {
      goto LABEL_18;
    }
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 396);
  v52 = *(v0 + 216);
  v69 = v33;
  v53 = *(v0 + 200);
  (v32)(v52, *(v0 + 224), v36);
  v54 = (*(v37 + 88))(v52, v53);
  v56 = v54 != v51 && v54 == v50;
  v57 = *(v37 + 8);
  *(v0 + 312) = v57;
  *(v0 + 320) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v52, v53);
  sub_AB8840();
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = sub_716308;
  v59 = *(v0 + 192);
  v60 = v69;
  v61 = v35;
  v62 = v56;
LABEL_33:

  return sub_716CF8(v60, v61, v62, v59);
}

uint64_t sub_716308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  sub_12E1C(v7, &unk_E10D80);

  return _swift_task_switch(sub_716460, 0, 0);
}

uint64_t sub_716460()
{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    sub_12E1C(*(v0 + 248), &qword_E0EC40);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  sub_AB9CA0();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_12E1C(*(v0 + 248), &qword_E0EC40);
    (*(v17 + 8))(v16, v18);
    if (qword_E0CEE8 != -1)
    {
      swift_once();
    }

    v19 = *algn_E72088;
    v20 = qword_E72090;
    v21 = unk_E72098;
    v39 = qword_E72080;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = sub_AB9D80();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    sub_AB9CB0();
    (*(v9 + 32))(v40, v8, v35);
    v12 = sub_AB87D0();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    sub_AB9CA0();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  sub_AB8840();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_716308;
  v34 = *(v0 + 192);

  return sub_716CF8(v41, v38, v31, v34);
}

uint64_t sub_71685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  sub_12E1C(v7, &unk_E10D80);

  return _swift_task_switch(sub_7169B4, 0, 0);
}

uint64_t sub_7169B4()
{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = *algn_E72088;
        v28 = qword_E72090;
        v29 = unk_E72098;
        v1 = qword_E72080;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = sub_AB8D80();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        sub_AB8D60();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            sub_AB8DD0();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = sub_71685C;
            v25 = *(v0 + 192);

            return sub_716CF8(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (qword_E0CEE8 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t sub_716CF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_AB8A60();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_716E10, 0, 0);
}

uint64_t sub_716E10()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_71A86C(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 48), &unk_E10D80);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_717258;
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_717770(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = sub_AB8A00();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_AB8A10();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = sub_AB8A30();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_AB8A20();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_717070;

  return sub_71ACF4(v6, v8, v10, v12);
}

uint64_t sub_717070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(sub_717174, 0, 0);
}

uint64_t sub_717174()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_717258()
{

  return _swift_task_switch(sub_717354, 0, 0);
}

uint64_t sub_717354()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    sub_12E1C(v2, &unk_E10D80);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = sub_AB8A00();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_AB8A10();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_AB8A30();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_AB8A20();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_717588;

  return sub_71ACF4(v4, v6, v8, v10);
}

uint64_t sub_717588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(sub_71768C, 0, 0);
}

uint64_t sub_71768C()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_717770(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F618);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0);
  *(v4 + 96) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F620);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F628);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C0);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECD8);
  *(v4 + 176) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C8);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5D0);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_717ABC, 0, 0);
}

uint64_t sub_717ABC()
{
  v20 = v0;
  if (qword_E0CF00 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  *(v0 + 232) = __swift_project_value_buffer(v1, static Logger.playlistCovers);

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = sub_500C84(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = sub_AB8040();
    v11 = sub_500C84(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_0, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = sub_AB8030();
    sub_71BA2C(&qword_E0F5D8, &type metadata accessor for MusicVideo);

    sub_AB7F00();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_717E94;
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = sub_AB86C0();
    sub_71BA2C(&qword_E0F630, &type metadata accessor for Song);

    sub_AB7F00();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_718200;
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}

uint64_t sub_717E94()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_71856C;
  }

  else
  {
    v2 = sub_717FA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_717FA8()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_AB7F30();
  sub_58BB88(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    sub_12E1C(v10, &qword_E0ECD8);
    v12 = sub_AB8A60();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    sub_AB8020();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_718200()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_718818;
  }

  else
  {
    v2 = sub_718314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_718314()
{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_AB7F30();
  sub_58BBB8(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_12E1C(v10, &qword_E0ECE0);
    v12 = sub_AB8A60();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    sub_AB86A0();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_71856C()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_AB8040();
    v12 = sub_500C84(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_12E1C(v8, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_AB8A60();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_718818()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_AB8040();
    v12 = sub_500C84(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_12E1C(v8, &qword_E0F560);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_AB8A60();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_718AC4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.playlistCovers);
  __swift_project_value_buffer(v0, static Logger.playlistCovers);
  return sub_AB4BB0();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CF00 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int sub_718BF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_735B70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_718DB8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_718C5C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_735B70(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_ABB2B0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14908);
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_718F54(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_718DB8(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14908);
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_7194E4(v7, v8, a1, v4);
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
    return sub_718EC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_718EC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_718F54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_735B34(v8);
      v8 = result;
    }

    v84 = v8 + 2;
    v85 = v8[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_719AA0((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_506670(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v38 = v8[3];
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      result = sub_506670((v38 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v39;
    v40 = v8 + 4;
    v41 = &v8[2 * v5 + 4];
    *v41 = v9;
    v41[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v8[4];
          v43 = v8[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[2 * v5];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[2 * v5 - 2];
        v80 = *v79;
        v81 = &v40[2 * v5];
        v82 = v81[1];
        sub_719AA0((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v8[2];
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        result = memmove(&v40[2 * v5], v81 + 2, 16 * (v83 - 1 - v5));
        v8[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[2 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[2 * v5];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_7194E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_735B34(v10);
      v10 = result;
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        sub_719CA4((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_735B34(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = sub_735AA8(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_506670(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      result = sub_506670((v47 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v97;
    if (!*v97)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        sub_719CA4((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_735B34(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        result = sub_735AA8(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_719AA0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
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

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_719CA4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

uint64_t _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF8820;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return sub_AB92E0();
}

uint64_t _s9MusicCore14PlaylistCoversO6SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PlaylistCovers.Source();
  v9 = __chkstk_darwin(v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14910);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_71A610(a1, &v23 - v16);
  sub_71A610(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_71A610(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = sub_5D509C(v19, *&v17[v18]);

LABEL_9:
      sub_71B9D0(v17);
      return v20 & 1;
    }
  }

  else
  {
    sub_71A610(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      sub_AB8860();
      sub_71BA2C(&qword_E14918, &type metadata accessor for Track);
      v20 = sub_AB7E00();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_12E1C(v17, &qword_E14910);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_ABA960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = sub_AB9260();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = sub_ABA940();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (qword_E0CF00 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, static Logger.playlistCovers);

    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_500C84(a1, a2, &v22);
      _os_log_impl(&dword_0, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source()
{
  result = qword_E148C0;
  if (!qword_E148C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_71A610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_71A674()
{
  result = qword_E0EC58;
  if (!qword_E0EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0EC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EC58);
  }

  return result;
}

unint64_t sub_71A6DC()
{
  result = qword_E14848;
  if (!qword_E14848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14848);
  }

  return result;
}

void sub_71A730()
{
  sub_71A7A4();
  if (v0 <= 0x3F)
  {
    sub_71A804();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_71A7A4()
{
  if (!qword_E148D0)
  {
    sub_AB8860();
    v0 = sub_AB7E10();
    if (!v1)
    {
      atomic_store(v0, &qword_E148D0);
    }
  }
}

void sub_71A804()
{
  if (!qword_E148D8)
  {
    sub_AB8DE0();
    v0 = sub_AB9870();
    if (!v1)
    {
      atomic_store(v0, &qword_E148D8);
    }
  }
}

uint64_t sub_71A86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_71A8DC(char *a1)
{
  v42 = a1;

  sub_718BF0(&v42);
  v1 = v42;
  v2 = *(v42 + 16);
  if (v2)
  {
    v3 = (v42 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v40 = *v3;
        v38 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_503A28(0, *(v4 + 2) + 1, 1);
          v4 = v42;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v40;
        if (v6 >= v5 >> 1)
        {
          sub_503A28((v5 > 1), v6 + 1, 1);
          v7 = v40;
          v4 = v42;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v38;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v42 = v4;

  sub_718C5C(&v42);

  v10 = v42;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v42 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v39 = v22;
      v41 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v14;
      if ((v26 & 1) == 0)
      {
        sub_503A28(0, *(v14 + 2) + 1, 1);
        v14 = v42;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v39;
      v17 = v41;
      if (v16 >= v15 >> 1)
      {
        sub_503A28((v15 > 1), v16 + 1, 1);
        v18 = v39;
        v17 = v41;
        v14 = v42;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v42 = v14;
  sub_511654(v10);
  v27 = v42;
  v28 = *(v42 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    v35 = sub_ABAE20();
    sub_ABAE20();
    sub_ABAE20();
    sub_ABAE20();
    goto LABEL_36;
  }

  v42 = _swiftEmptyArrayStorage;
  sub_ABAEC0();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v42;
  if ((v42 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    v35 = *(v30 + 32);
    v32;
    v33;
    v36 = v34;
LABEL_36:

    return v35;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_71ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_71AD18, 0, 0);
}

uint64_t sub_71AD18()
{
  v122 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v115 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v117 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v116 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v112 = UIColor.hsba.getter();
  v113 = v23;
  v25 = v24;

  v118 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v58 = v14 + 0.2;
      v59 = v16 + 0.1;
      v60 = 1.0;
      if (v58 > 1.0)
      {
LABEL_54:
        if (v59 <= v60)
        {
          v61 = v19 + 0.1;
          v58 = 1.0;
          if (v61 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v61 = v19 + 0.1;
        v59 = 1.0;
        v58 = v60;
        if (v61 <= 1.0)
        {
LABEL_64:
          v60 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v60 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v61 = 1.0;
        goto LABEL_64;
      }

      if (v59 > 1.0)
      {
        v60 = v58;
        goto LABEL_59;
      }

      v61 = v19 + 0.1;
LABEL_62:
      if (v61 <= v60)
      {
        v66 = v21 + 0.2;
        if (v66 <= v60)
        {
          v65 = v25 + 0.2;
          v62 = 1.0;
          v63 = v9;
          if (v65 <= 1.0)
          {
            v64 = v113 + 0.6;
            if (v113 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v60 = v66;
LABEL_68:
          v64 = v113 + 0.6;
          v65 = v62;
          v66 = v60;
          if (v113 + 0.6 <= 1.0)
          {
LABEL_70:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E018);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_AF85D0;
            *(v67 + 32) = v115;
            *(v67 + 40) = v118;
            *(v67 + 48) = v63;
            *(v67 + 56) = v11;
            *(v67 + 64) = v117;
            *(v67 + 72) = v58;
            *(v67 + 80) = v59;
            *(v67 + 88) = 0x3FF0000000000000;
            *(v67 + 96) = v116;
            *(v67 + 104) = v61;
            *(v67 + 112) = v66;
            *(v67 + 120) = 0x3FF0000000000000;
            *(v67 + 128) = v112;
            *(v67 + 136) = v65;
            *(v67 + 144) = v64;
            *(v67 + 152) = 0x3FF0000000000000;
            v68 = sub_71A8DC(v67);
            v70 = v69;
            v72 = v71;
            v74 = v73;

            if (qword_E0CF00 != -1)
            {
              swift_once();
            }

            v75 = sub_AB4BC0();
            __swift_project_value_buffer(v75, static Logger.playlistCovers);
            v38 = v68;
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = sub_AB4BA0();
            v76 = sub_AB9F50();

            if (!os_log_type_enabled(v42, v76))
            {
              goto LABEL_97;
            }

            v44 = swift_slowAlloc();
            v119 = v76;
            v45 = swift_slowAlloc();
            v121 = v45;
            *v44 = 136446210;
            v77 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
            v79 = sub_500C84(v77, v78, &v121);

            *(v44 + 4) = v79;
            v49 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v64 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v62 = v25 + 0.2;
        v63 = v9;
        if (v62 > 1.0)
        {
          v62 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E018);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_AF85D0;
      *(v29 + 32) = v115;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v117;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v116;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v112;
      *(v29 + 136) = v28;
      *(v29 + 144) = v113;
      *(v29 + 152) = 0x3FF0000000000000;
      v30 = sub_71A8DC(v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      if (qword_E0CF00 != -1)
      {
        swift_once();
      }

      v37 = sub_AB4BC0();
      __swift_project_value_buffer(v37, static Logger.playlistCovers);
      v38 = v30;
      v39 = v32;
      v40 = v34;
      v41 = v36;
      v42 = sub_AB4BA0();
      v43 = sub_AB9F50();

      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_97;
      }

      v44 = swift_slowAlloc();
      v119 = v43;
      v45 = swift_slowAlloc();
      v121 = v45;
      *v44 = 136446210;
      v46 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
      v48 = sub_500C84(v46, v47, &v121);

      *(v44 + 4) = v48;
      v49 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&dword_0, v42, v119, v49, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v114 = v9;
      v50 = v14 + 0.3;
      v51 = v16 + 0.2;
      v52 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v53 = v116;
        if (v51 <= 1.0)
        {
          v54 = v118 + 0.5;
          v55 = v114 + 0.2;
          v56 = 1.0;
          v111 = v11;
          if (v118 + 0.5 <= 1.0)
          {
            if (v55 <= 1.0)
            {
              v57 = v115;
              v91 = -0.5;
              if (v116 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v57 = v115;
            goto LABEL_87;
          }

          v57 = v115;
          v54 = 1.0;
          if (v55 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v56 = v55;
          goto LABEL_87;
        }
      }

      else
      {
        v50 = 1.0;
        v53 = v116;
        if (v51 <= 1.0)
        {
          v52 = v16 + 0.2;
        }
      }

      v54 = v118 + 0.5;
      v55 = v114 + 0.2;
      v56 = 1.0;
      v111 = v11;
      if (v118 + 0.5 <= 1.0)
      {
        if (v55 <= 1.0)
        {
          v57 = v115;
          v91 = -0.5;
          v51 = v52;
          if (v53 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v57 = v115;
        v51 = v52;
        goto LABEL_87;
      }

      v57 = v115;
      v51 = v52;
      v54 = 1.0;
      if (v55 > 1.0)
      {
LABEL_87:
        v91 = -0.5;
        v55 = v56;
        if (v53 >= 0.5)
        {
LABEL_89:
          v92 = v53 + v91;
          if (v21 + 0.8 <= 1.0)
          {
            v93 = v21 + 0.8;
          }

          else
          {
            v93 = 1.0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E018);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_AF85D0;
          *(v94 + 32) = v57;
          *(v94 + 40) = v118;
          *(v94 + 48) = v114;
          *(v94 + 56) = v111;
          *(v94 + 64) = v117;
          *(v94 + 72) = v50;
          *(v94 + 80) = v51;
          *(v94 + 88) = 0x3FF0000000000000;
          *(v94 + 96) = v57;
          *(v94 + 104) = v54;
          *(v94 + 112) = v55;
          *(v94 + 120) = 0x3FF0000000000000;
          *(v94 + 128) = v92;
          *(v94 + 136) = v19;
          *(v94 + 144) = v93;
          *(v94 + 152) = 0x3FF0000000000000;
          v95 = sub_71A8DC(v94);
          v97 = v96;
          v99 = v98;
          v101 = v100;

          if (qword_E0CF00 != -1)
          {
            swift_once();
          }

          v102 = sub_AB4BC0();
          __swift_project_value_buffer(v102, static Logger.playlistCovers);
          v38 = v95;
          v39 = v97;
          v40 = v99;
          v41 = v101;
          v42 = sub_AB4BA0();
          v103 = sub_AB9F50();

          if (!os_log_type_enabled(v42, v103))
          {
            goto LABEL_97;
          }

          v104 = swift_slowAlloc();
          v120 = v1;
          v121 = swift_slowAlloc();
          v105 = v121;
          *v104 = 136446210;
          v106 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
          v108 = sub_500C84(v106, v107, &v121);

          *(v104 + 4) = v108;
          _os_log_impl(&dword_0, v42, v103, "Using recipe 1 colors=%{public}s", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          v1 = v120;
          goto LABEL_96;
        }

LABEL_88:
        v91 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v58 = v14 + 0.2;
    v59 = v16 + 0.1;
    v60 = 1.0;
    if (v58 > 1.0)
    {
      goto LABEL_54;
    }

    v61 = v19 + 0.1;
    if (v59 > 1.0)
    {
      v59 = 1.0;
      if (v61 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v113 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (qword_E0CF00 != -1)
  {
    swift_once();
  }

  v80 = sub_AB4BC0();
  __swift_project_value_buffer(v80, static Logger.playlistCovers);
  v81 = sub_AB4BA0();
  v82 = sub_AB9F50();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v121 = v84;
    *v83 = 136446210;
    if (qword_E0CEF0 != -1)
    {
      swift_once();
    }

    v85 = PlaylistCovers.RecipeColors.description.getter(qword_E720A0, *algn_E720A8, qword_E720B0, qword_E720B8);
    v87 = sub_500C84(v85, v86, &v121);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_0, v81, v82, "Using black and white colors=%{public}s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
  }

  if (qword_E0CEF0 != -1)
  {
    swift_once();
  }

  v88 = *algn_E720A8;
  v90 = qword_E720B0;
  v89 = qword_E720B8;
  v38 = qword_E720A0;
  v39 = v88;
  v40 = v90;
  v41 = v89;
LABEL_98:
  v109 = v1[1];

  return v109(v38, v39, v40, v41);
}

uint64_t sub_71B9D0(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71BA2C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = sub_5B4DF0(a1, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v18 = v4;
  if (v6)
  {
    v7 = qword_E0CF08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E14920);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_71E354;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_71F2F4;
    aBlock[3] = &block_descriptor_200;
    v13 = _Block_copy(aBlock);
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v2, aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(aBlock, v15 + 24);
    *(v15 + 120) = v18;
    *(v15 + 128) = style;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v18;
    v6(v2, v17, sub_5487D4, v15);
    sub_17654(v6);
  }

  else
  {
    sub_71C834(v4, style, &dword_0 + 1, 0, 0);
  }
}

uint64_t PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_720A4C(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      return sub_12E1C(v8, &qword_E0EB30);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = qword_E0CF08;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_AB4BC0();
    __swift_project_value_buffer(v13, qword_E14920);
    v14 = sub_AB4BA0();
    v15 = sub_AB9F50();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Deferring presentation…", v16, 2u);
    }

    v17 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_71E354;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_71F2F4;
    aBlock[3] = &block_descriptor_3_6;
    v18 = _Block_copy(aBlock);
    v19 = [v17 initWithTimeout:v18 interruptionHandler:10.0];
    _Block_release(v18);

    sub_15F28(v6, aBlock);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_17704(aBlock, v20 + 24);
    *(v20 + 120) = a1;
    *(v20 + 128) = a2 & 1;
    *(v20 + 129) = a3 & 1;
    *(v20 + 136) = a4;
    *(v20 + 144) = a5;
    v21 = v19;
    v22 = a1;
    sub_307CC(a4);
    v11(v6, v22, sub_5488D0, v20);
    sub_17654(v11);
  }

  else
  {
    v23 = (a2 & 1);
    v24 = (a3 & 1);

    sub_71C834(a1, v23, v24, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      sub_71F364(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_71C2D8;
}

void sub_71C2D8(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  sub_307CC(v1);
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  sub_307CC(v1);
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_AF7710;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    sub_12E1C(a2, &qword_E14940);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void sub_71C834(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_58B7D4();
  *v15 = sub_ABA150();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_AB7CF0();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v230 = v6;
    LODWORD(v228) = a2;
    v229 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (qword_E0CF08 == -1)
      {
LABEL_8:
        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, qword_E14920);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = sub_AB4BA0();
        v24 = sub_AB9F50();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v225 = v23;
          v26 = v25;
          v226 = swift_slowAlloc();
          *&v238 = v226;
          *v26 = 136446466;
          v27 = v22;
          v227 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = sub_AB92A0();
          LODWORD(v224) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = sub_500C84(v37, v36, &v238);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E149D8);
          v39 = sub_AB9350();
          v41 = sub_500C84(v39, v40, &v238);
          v22 = v227;

          *(v26 + 14) = v41;
          v42 = v225;
          _os_log_impl(&dword_0, v225, v224, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_15F28(v230, &v238);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        sub_17704(&v238, v75 + 32);
        *(v75 + 128) = v228 & 1;
        *(v75 + 129) = v229 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v233 = sub_71F9FC;
        *(&v233 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_CF24C;
        *(&v232 + 1) = &block_descriptor_33_3;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        sub_307CC(a4);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = _s27WeakViewControllerReferenceCMa();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v237.receiver = v58;
      v237.super_class = v57;
      v59 = objc_msgSendSuper2(&v237, "init");
      if (qword_E0CDB0 != -1)
      {
        swift_once();
      }

      v227 = a4;
      objc_setAssociatedObject(a1, qword_E11250, v59, &dword_0 + 1);
      v226 = v56;

      v60 = v230;
      v61 = v230[8];
      if (v61)
      {
        v61(a1);
      }

      v222 = a5;
      v217 = [a1 modalPresentationStyle];
      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v224 = v64;
      v223 = v66;
      v230 = v65;
      v72 = v65;
      v73 = v68;
      v225 = v69;
      sub_71F930(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v226;
      v220 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v221)
      {
        v107 = v220;
        if ([v220 modalPresentationStyle] == &dword_4 + 3)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v218 = a3;
            if (qword_E0CF08 != -1)
            {
              swift_once();
            }

            v110 = sub_AB4BC0();
            __swift_project_value_buffer(v110, qword_E14920);
            v111 = sub_AB4BA0();
            v112 = sub_AB9F50();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = sub_AB4BA0();
              v117 = sub_AB9F50();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v219 = COERCE_DOUBLE(swift_slowAlloc());
                *&v238 = v219;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E149D0);
                v119 = sub_AB9350();
                v221 = v106;
                v121 = sub_500C84(v119, v120, &v238);
                v216 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&dword_0, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(*&v219);

                sub_17760(v224, v221, v223, v230, v73, v104);
              }

              else
              {
                sub_17760(v224, v106, v223, v230, v73, v104);
              }

              v106 = 0;
              v223 = 0;
              v230 = 0;
              v73 = 0;
              v225 = (&dword_C + 3);
              v104 = 2;
              v224 = v115;
              a3 = v218;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v218;
              if (v124)
              {
                v125 = v124;
                v221 = v106;
                v126 = v124;
                v127 = sub_AB4BA0();
                v128 = sub_AB9F50();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v216 = v129;
                  v219 = COERCE_DOUBLE(swift_slowAlloc());
                  *&v238 = v219;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = sub_AB92A0();
                  v215 = v127;
                  v133 = v132;
                  v214 = v128;
                  v135 = v134;

                  a3 = v218;
                  v136 = sub_500C84(v133, v135, &v238);

                  v137 = v216;
                  *(v216 + 4) = v136;
                  v138 = v215;
                  _os_log_impl(&dword_0, v215, v214, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(*&v219);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                sub_17760(v224, v221, v223, v230, v73, v104);

                v104 = 0;
                v106 = v143;
                v223 = v145;
                v230 = v147;
                v73 = v149;
                v225 = (&dword_C + 3);
                v224 = v125;
              }

              else
              {
                v139 = sub_AB4BA0();
                v140 = sub_AB9F40();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v221 = v106;
                  *v141 = 0;
                  v106 = v221;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v221 = v106;
      v219 = *&v73;
      v153 = v220;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == &dword_0 + 2) && (v228 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == &dword_4 + 3;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v238 = v224;
      *(&v238 + 1) = v106;
      *&v239 = v223;
      *(&v239 + 1) = v230;
      *&v240 = v73;
      BYTE8(v240) = v104;
      v241 = v225;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v218 = a3;
          if (qword_E0CF08 != -1)
          {
            swift_once();
          }

          v157 = sub_AB4BC0();
          v158 = __swift_project_value_buffer(v157, qword_E14920);
          v159 = v153;
          v228 = v158;
          v160 = sub_AB4BA0();
          v161 = sub_AB9F50();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *&aBlock = v217;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = sub_AB92A0();
            v167 = v166;

            v168 = sub_500C84(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v221;
            __swift_destroy_boxed_opaque_existential_0(v217);
          }

          v169 = v227;
          v170 = v218;
          v171 = v223;
          v172 = v224;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v217 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v230;
            v177 = *&v219;
            sub_71F930(v174, v106, v171, v230, *&v219, v104);
            sub_71F944(v175, v106, v171, v176, v177, v104);
            v178 = sub_AB4BA0();
            v179 = sub_AB9F50();
            v228 = v104;
            v180 = v178;
            v181 = v179;
            sub_17760(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v236 = v183;
              *v182 = 136446210;
              aBlock = v238;
              v232 = v239;
              v233 = v240;
              v234 = v241;
              LOBYTE(v104) = v228;
              sub_71F944(v175, v106, v223, v176, v177, v228);
              v184 = sub_AB9350();
              v186 = sub_500C84(v184, v185, &v236);
              v106 = v221;

              *(v182 + 4) = v186;
              _os_log_impl(&dword_0, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v183);
              v171 = v223;
              v169 = v227;

              v170 = v218;
            }

            else
            {

              LOBYTE(v104) = v228;
            }

            v201 = v217;
            v235 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate_0;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v224;
            v153 = v220;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v221;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v230;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v210 = *&v219;
                v211 = v219;
                [v207 setSourceView:v224];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, v211}];
                v212 = v210;
                v172 = v224;
                sub_17760(v224, v106, v171, v209, v212, v104);
              }

              [v208 setPermittedArrowDirections:v225];

              sub_17760(v172, v106, v171, v230, *&v219, v104);
            }

            else
            {
              sub_17760(v172, v106, v171, v230, *&v219, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = (&dword_0 + 2);
      }

      else
      {
        v188 = v217;
        if (v217 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v217 == &dword_4 + 3) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = (&dword_0 + 3);
          }

          else
          {
            v188 = (&dword_4 + 3);
          }
        }
      }

      v190 = a3;
      if (qword_E0CF08 != -1)
      {
        swift_once();
      }

      v191 = sub_AB4BC0();
      __swift_project_value_buffer(v191, qword_E14920);
      v192 = sub_AB4BA0();
      v193 = sub_AB9F50();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v236 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = sub_AB9350();
        v198 = sub_500C84(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&dword_0, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v195);
        v106 = v221;
      }

      v169 = v227;
      v170 = v190;
      v171 = v223;
      [v153 setModalPresentationStyle:v188];
      v172 = v224;
LABEL_84:
      if (v169)
      {
        *&v233 = v169;
        *(&v233 + 1) = v222;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_1B5EB4;
        *(&v232 + 1) = &block_descriptor_27_5;
        v199 = _Block_copy(&aBlock);
        v106 = v221;
      }

      else
      {
        v199 = 0;
      }

      v200 = v226;
      [v226 presentViewController:v153 animated:v229 & 1 completion:v199];

      _Block_release(v199);
      sub_17760(v172, v106, v171, v230, *&v219, v104);
      return;
    }

    if (qword_E0CF08 != -1)
    {
      swift_once();
    }

    v78 = sub_AB4BC0();
    __swift_project_value_buffer(v78, qword_E14920);
    v79 = a1;
    v80 = a2;
    v81 = sub_AB4BA0();
    v82 = sub_AB9F50();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v218 = a3;
      v84 = v83;
      *&v238 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = sub_AB92A0();
      v227 = a4;
      v88 = v87;
      v222 = a5;
      v90 = v89;

      v91 = sub_500C84(v88, v90, &v238);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = sub_AB92A0();
      v96 = v95;

      v97 = v94;
      a4 = v227;
      v98 = sub_500C84(v97, v96, &v238);
      a5 = v222;

      *(v84 + 14) = v98;
      _os_log_impl(&dword_0, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v218;
    }

    sub_15F28(v230, &v238);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    sub_17704(&v238, v99 + 32);
    *(v99 + 128) = v228 & 1;
    v100 = v229 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v233 = sub_71F918;
    *(&v233 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v232 = sub_1B5EB4;
    *(&v232 + 1) = &block_descriptor_24_2;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    sub_307CC(a4);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (qword_E0CF08 != -1)
    {
      swift_once();
    }

    v43 = sub_AB4BC0();
    __swift_project_value_buffer(v43, qword_E14920);
    v44 = a1;
    v45 = sub_AB4BA0();
    v46 = sub_AB9F50();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v238 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_AB92A0();
      v52 = a4;
      v54 = v53;

      v55 = sub_500C84(v51, v54, &v238);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&dword_0, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void sub_71E354()
{
  if (qword_E0CF08 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E14920);
  oslog = sub_AB4BA0();
  v1 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_71E43C(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_E0CF08 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  __swift_project_value_buffer(v13, qword_E14920);
  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  sub_71C834(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void sub_71E574(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  if (qword_E0CF08 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, qword_E14920);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  swift_unknownObjectRelease();
  v40 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v39 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E149D8);
    v17 = sub_AB9350();
    v19 = sub_500C84(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = sub_AB92A0();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = sub_500C84(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_0, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v39;
  }

  v29 = *(a4 + 80);
  if (v29)
  {

    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Deferring presentation…", v32, 2u);
    }

    v33 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_71E354;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_71F2F4;
    aBlock[3] = &block_descriptor_36_5;
    v34 = _Block_copy(aBlock);
    v35 = [v33 initWithTimeout:v34 interruptionHandler:10.0];
    _Block_release(v34);

    sub_15F28(a4, aBlock);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    sub_17704(aBlock, v36 + 24);
    *(v36 + 120) = v40;
    *(v36 + 128) = a5 & 1;
    *(v36 + 129) = a6 & 1;
    *(v36 + 136) = a7;
    *(v36 + 144) = a8;
    v37 = v40;
    v38 = v35;
    sub_307CC(a7);
    v29(a4, v37, sub_5488D0, v36);
    sub_17654(v29);
  }

  else
  {
    sub_71C834(v40, a5 & 1, a6 & 1, a7, a8);
  }
}

void sub_71E9A0(void *a1, void *a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  if (qword_E0CF08 != -1)
  {
    swift_once();
  }

  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, qword_E14920);
  v12 = a1;
  v13 = a2;
  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  if (os_log_type_enabled(v14, v15))
  {
    v41 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v40 = a3;
    v19 = sub_AB92A0();
    v21 = v20;

    v22 = sub_500C84(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = sub_AB92A0();
    v27 = v26;

    v28 = v25;
    a3 = v40;
    v29 = sub_500C84(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&dword_0, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v41;
  }

  v30 = *(a3 + 80);
  if (v30)
  {

    v31 = sub_AB4BA0();
    v32 = sub_AB9F50();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_71E354;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_71F2F4;
    aBlock[3] = &block_descriptor_43_11;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    sub_15F28(a3, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    sub_17704(aBlock, v37 + 24);
    *(v37 + 120) = v13;
    *(v37 + 128) = a4 & 1;
    *(v37 + 129) = a5 & 1;
    *(v37 + 136) = a6;
    *(v37 + 144) = a7;
    v38 = v13;
    v39 = v36;
    sub_307CC(a6);
    v30(a3, v38, sub_5488D0, v37);
    sub_17654(v30);
  }

  else
  {
    sub_71C834(v13, a4 & 1, a5 & 1, a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      sub_ABA440();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        sub_71F364(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        sub_71F364(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    sub_71F364(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  sub_71F364(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t sub_71F0C0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E14920);
  __swift_project_value_buffer(v0, qword_E14920);
  return sub_AB4BB0();
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t sub_71F1C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_AB9940();
  v2[4] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_71F25C, v4, v3);
}

uint64_t sub_71F25C()
{
  v1 = *(v0 + 16);

  v2 = sub_5B4DF0(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_71F2F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_71F394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_71F404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E14940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_71F4E8()
{
  result = qword_E14948;
  if (!qword_E14948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14948);
  }

  return result;
}

unint64_t sub_71F540()
{
  result = qword_E14950;
  if (!qword_E14950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14950);
  }

  return result;
}

unint64_t sub_71F598()
{
  result = qword_E14958;
  if (!qword_E14958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14958);
  }

  return result;
}

unint64_t sub_71F5F0()
{
  result = qword_E14960;
  if (!qword_E14960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E14960);
  }

  return result;
}

uint64_t sub_71F644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_71F6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_71F71C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_71F764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_71F7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_71F80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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