uint64_t sub_9223B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_ABB060();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

BOOL sub_9223D4(uint64_t a1, BOOL a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Lyrics.Translation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v18 = Strong;
  v25 = v7;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_15F84(v18 + v19, v12, &qword_E21E98);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_931E7C(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v21 = sub_AB3580();

    v22 = type metadata accessor for Lyrics.Transliteration;
    v23 = v16;
LABEL_8:
    sub_931A30(v23, v22);
    return v21 == 2;
  }

  sub_12E1C(v12, &qword_E21E98);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v18 + v20, v5, &qword_E23930);
  if ((*(v25 + 48))(v5, 1, v6) != 1)
  {
    sub_931E7C(v5, v9, type metadata accessor for Lyrics.Translation);
    v21 = sub_AB3580();

    v22 = type metadata accessor for Lyrics.Translation;
    v23 = v9;
    goto LABEL_8;
  }

  sub_12E1C(v5, &qword_E23930);
  return a2;
}

uint64_t sub_92277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v36 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Lyrics.Transliteration(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v21 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v34 = a3;
  v35 = a4;
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_15F84(v21 + v22, v15, &qword_E21E98);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_931E7C(v15, v19, type metadata accessor for Lyrics.Transliteration);
    v25 = *&v19[*(v16 + 28)];
    a4 = v35;
    if (*(v25 + 16) && (v26 = sub_2EBF88(v36, v34), (v27 & 1) != 0))
    {
      a4 = *(*(v25 + 56) + 88 * v26);
    }

    else
    {
    }

    v28 = type metadata accessor for Lyrics.Transliteration;
    v29 = v19;
    goto LABEL_18;
  }

  sub_12E1C(v15, &qword_E21E98);
  v23 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v21 + v23, v9, &qword_E23930);
  v24 = (*(v37 + 48))(v9, 1, v10);
  a4 = v35;
  if (v24 != 1)
  {
    sub_931E7C(v9, v12, type metadata accessor for Lyrics.Translation);
    v30 = *&v12[*(v10 + 32)];
    if (*(v30 + 16) && (v31 = sub_2EBF88(v36, v34), (v32 & 1) != 0))
    {
      a4 = *(*(v30 + 56) + 88 * v31);
    }

    else
    {
    }

    v28 = type metadata accessor for Lyrics.Translation;
    v29 = v12;
LABEL_18:
    sub_931A30(v29, v28);
    return a4;
  }

  sub_12E1C(v9, &qword_E23930);
LABEL_7:

  return a4;
}

uint64_t sub_922BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v20 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v35 = a3;
  v36 = a4;
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_15F84(v20 + v21, v14, &qword_E21E98);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_931E7C(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v24 = *&v18[*(v15 + 28)];
    v25 = v36;
    if (*(v24 + 16) && (v26 = sub_2EBF88(v37, v35), (v27 & 1) != 0))
    {
      v23 = *(*(v24 + 56) + 88 * v26 + 16);
    }

    else
    {

      swift_beginAccess();
      v23 = *(v25 + 16);
    }

    v28 = type metadata accessor for Lyrics.Transliteration;
    v29 = v18;
    goto LABEL_18;
  }

  sub_12E1C(v14, &qword_E21E98);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v20 + v22, v8, &qword_E23930);
  if ((*(v38 + 48))(v8, 1, v9) != 1)
  {
    sub_931E7C(v8, v11, type metadata accessor for Lyrics.Translation);
    v30 = *&v11[*(v9 + 32)];
    v31 = v36;
    if (*(v30 + 16) && (v32 = sub_2EBF88(v37, v35), (v33 & 1) != 0))
    {
      v23 = *(*(v30 + 56) + 88 * v32 + 16);
    }

    else
    {

      swift_beginAccess();
      v23 = *(v31 + 16);
    }

    v28 = type metadata accessor for Lyrics.Translation;
    v29 = v11;
LABEL_18:
    sub_931A30(v29, v28);
    return v23;
  }

  sub_12E1C(v8, &qword_E23930);
  a4 = v36;
LABEL_7:
  swift_beginAccess();
  v23 = *(a4 + 16);

  return v23;
}

double sub_923064@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X3>, _OWORD *a4@<X8>)
{
  v56 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23930);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v20 = Strong;
  if (!a2)
  {

LABEL_7:
    swift_beginAccess();
    v25 = a3[1];
    v26 = a3[2];
    goto LABEL_8;
  }

  v53 = a2;
  v54 = a4;
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_15F84(v20 + v21, v14, &qword_E21E98);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_931E7C(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v28 = *&v18[*(v15 + 28)];
    if (*(v28 + 16) && (v29 = sub_2EBF88(v56, v53), (v30 & 1) != 0))
    {
      v31 = *(v28 + 56) + 88 * v29;
      v32 = *(v31 + 72);
      v33 = *(v31 + 40);
      v34 = *(v31 + 56);
      v64 = *(v31 + 24);
      v65 = v33;
      v66 = v34;
      v67 = v32;
      sub_15F84(&v64, &v68, &qword_E21E80);

      a4 = v54;
      if (*(&v65 + 1))
      {
LABEL_15:
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = v67;
        v37 = type metadata accessor for Lyrics.Transliteration;
        v38 = v18;
LABEL_23:
        sub_931A30(v38, v37);
        goto LABEL_24;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
    }

    else
    {

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      a4 = v54;
    }

    swift_beginAccess();
    v35 = a3[2];
    v64 = a3[1];
    v65 = v35;
    v36 = a3[4];
    v66 = a3[3];
    v67 = v36;
    sub_15F84(&v64, v59, &qword_E21E80);
    sub_12E1C(&v68, &qword_E21E80);
    goto LABEL_15;
  }

  sub_12E1C(v14, &qword_E21E98);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_15F84(v20 + v22, v9, &qword_E23930);
  v23 = v58;
  v24 = (*(v57 + 48))(v9, 1, v58);
  a4 = v54;
  if (v24 != 1)
  {
    v39 = v55;
    sub_931E7C(v9, v55, type metadata accessor for Lyrics.Translation);
    v40 = *(v39 + *(v23 + 32));
    if (*(v40 + 16) && (v41 = sub_2EBF88(v56, v53), (v42 & 1) != 0))
    {
      v43 = *(v40 + 56) + 88 * v41;
      v44 = *(v43 + 72);
      v45 = *(v43 + 40);
      v46 = *(v43 + 56);
      v64 = *(v43 + 24);
      v65 = v45;
      v66 = v46;
      v67 = v44;
      sub_15F84(&v64, &v68, &qword_E21E80);

      if (*(&v65 + 1))
      {
LABEL_22:
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = v67;
        v37 = type metadata accessor for Lyrics.Translation;
        v38 = v39;
        goto LABEL_23;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
    }

    else
    {

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
    }

    swift_beginAccess();
    v47 = a3[2];
    v64 = a3[1];
    v65 = v47;
    v48 = a3[4];
    v66 = a3[3];
    v67 = v48;
    sub_15F84(&v64, v59, &qword_E21E80);
    sub_12E1C(&v68, &qword_E21E80);
    goto LABEL_22;
  }

  sub_12E1C(v9, &qword_E23930);
  swift_beginAccess();
  v25 = a3[1];
  v26 = a3[2];
LABEL_8:
  v68 = v25;
  v69 = v26;
  v27 = a3[4];
  v70 = a3[3];
  v71 = v27;
  sub_15F84(&v68, &v64, &qword_E21E80);
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
LABEL_24:
  v49 = v61;
  *a4 = v60;
  a4[1] = v49;
  result = *&v62;
  v51 = v63;
  a4[2] = v62;
  a4[3] = v51;
  return result;
}

uint64_t sub_923698(uint64_t result)
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

  v3 = sub_925F8C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28);
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

uint64_t sub_9237D0(uint64_t result)
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

  v3 = sub_9269A0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_E22570, &unk_B397A0, type metadata accessor for Lyrics.TextLine);
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
  result = type metadata accessor for Lyrics.TextLine(0);
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

void *sub_923920(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_926EC0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_923A24(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == &dword_0 + 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = sub_AB92A0();
    v15 = v14;

    v16 = sub_92F098(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    sub_92F44C(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = sub_AB92A0();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t sub_923BF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EC0);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_AB3570();
  v6 = sub_AB34C0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_12E1C(v5, &qword_E21E90);
    return 0;
  }

  else
  {
    v8 = sub_AB34A0();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    v11 = v8 == 26746 && v10 == 0xE200000000000000;
    if (v11 || (sub_ABB3C0() & 1) != 0)
    {
      sub_AB3590();
      v12 = sub_AB3530();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v2, 1, v12) == 1)
      {
        sub_12E1C(v2, &qword_E21EC0);
      }

      else
      {

        v14 = sub_AB3520();
        v16 = v15;
        (*(v13 + 8))(v2, v12);
        v18[0] = 2975866;
        v18[1] = 0xE300000000000000;
        v19._countAndFlagsBits = v14;
        v19._object = v16;
        sub_AB94A0(v19);

        return v18[0];
      }
    }
  }

  return v8;
}

BOOL sub_923E94(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  v4 = qword_B39898[a1];
  sub_ABB5D0(v4);
  v5 = sub_ABB610();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_B39898[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_923F74()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F20);
  return sub_AB9350();
}

uint64_t sub_923FBC(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = a3(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F20);
  return sub_AB9350();
}

uint64_t sub_924090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E98);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  if (sub_923E94(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_15F84(v0 + v4, v3, &qword_E21E98);
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_160B4(v3, v0 + v5, &qword_E21E98);
    swift_endAccess();
    v6 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_15F84(v0 + v6, v3, &qword_E21E98);
  }

  else
  {
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_15F84(v0 + v8, v3, &qword_E21E98);
    v9 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_160B4(v3, v0 + v9, &qword_E21E98);
    swift_endAccess();
    v10 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  v7 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_160B4(v3, v0 + v7, &qword_E21E98);
  swift_endAccess();
}

uint64_t Lyrics.line(before:useOriginalLines:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_9192E8(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  sub_E8BA0((v6 + 4), &v35);
  v8 = *(&v36 + 1);
  v7 = v37;
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  __swift_destroy_boxed_opaque_existential_0(&v35);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v28 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  sub_E8BA0(&v6[5 * v10 - 1], &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = v6[2];
    if (v12)
    {
LABEL_12:
      v13 = v12 - 1;
      __swift_destroy_boxed_opaque_existential_0(&v6[5 * v12 - 1]);
      v6[2] = v13;
LABEL_13:
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v14 = v6[2];
      if (!v14)
      {
LABEL_27:
        v27 = v36;
        *v28 = v35;
        *(v28 + 16) = v27;
        *(v28 + 32) = v37;
      }

      v15 = 0;
      v16 = v14 - 1;
      v17 = v6 + 4;
      v18 = v14 - 1;
      while (1)
      {
        if (__OFSUB__(v18, v15))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v19 = v15 + (v18 - v15) / 2;
        if (__OFADD__(v15, (v18 - v15) / 2))
        {
          goto LABEL_30;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v19 >= v6[2])
        {
          goto LABEL_32;
        }

        sub_E8BA0(&v17[5 * v19], v32);
        v21 = v33;
        v20 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v22 = (*(*(v20 + 8) + 8))(v21);
        v23 = v22;
        if (v19 >= v16)
        {
          break;
        }

        if (v19 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        sub_E8BA0(&v17[5 * v19 + 5], v29);
        v25 = v30;
        v24 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v26 = (*(*(v24 + 8) + 8))(v25);
        __swift_destroy_boxed_opaque_existential_0(v29);
        if (v23 > a3)
        {
          goto LABEL_16;
        }

        v15 = v19 + 1;
        if (v26 >= a3)
        {
LABEL_26:
          sub_12E1C(&v35, &qword_E21F50);
          sub_E8BA0(v32, &v35);
          __swift_destroy_boxed_opaque_existential_0(v32);
          goto LABEL_27;
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0(v32);
        if (v18 < v15)
        {
          goto LABEL_27;
        }
      }

      if (v22 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v18 = v19 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    result = sub_92C6FC(v6);
    v6 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Lyrics.line(after:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 16))(v5, v6);
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  sub_E8BA0(v10 + 32, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  result = swift_dynamicCast();
  if (result)
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  return sub_E8BA0(v10 + 32, a2);
}

id sub_9247A0()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_E21E70 = result;
  return result;
}

uint64_t sub_9247D8()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_E21E78 = result;
  return result;
}

void sub_924818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
{

  v70._countAndFlagsBits = a3;
  v70._object = a4;
  v12 = _NSRange.init(range:in:)();
  v13 = 0;
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v68 = a6;
  while (1)
  {
LABEL_4:
    v18 = v13;
    __chkstk_darwin(v12);
    swift_beginAccess();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E0);
    Array.extractFirst(where:)(v19, &v71);
    swift_endAccess();
    v13 = v71;
    if (!v71)
    {
      if (*(v15 + 2))
      {
        v25 = 0.0;
        v27 = 0.0;
        if (v14)
        {
          [v14 startTime];
          v27 = v49;
        }

        if (v18)
        {
          [v18 endTime];
          v25 = v50;
        }

        v51 = *(v15 + 2);
        if (v51)
        {

          sub_927620(0, v51, 0);
          v52 = v15;
          v53 = (v15 + 56);
          do
          {
            v55 = *(v53 - 1);
            v54 = *v53;
            v57 = _swiftEmptyArrayStorage[2];
            v56 = _swiftEmptyArrayStorage[3];

            if (v57 >= v56 >> 1)
            {
              sub_927620((v56 > 1), v57 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v57 + 1;
            v58 = &_swiftEmptyArrayStorage[2 * v57];
            v58[4] = v55;
            v58[5] = v54;
            v53 += 7;
            --v51;
          }

          while (v51);
          v15 = v52;
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22618);
        sub_36A00(&qword_E22620, &qword_E22618);
        v29 = sub_AB9140();
        v33 = v59;

        swift_beginAccess();
        v32 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v32;
        a7 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_37:

      return;
    }

    if (!v14)
    {
      v20 = v13;
      v14 = v13;
    }

    v21 = v13;
    v22 = [v21 lyricsText];
    v23 = [v22 string];
    if (!v23)
    {
      break;
    }

    v17 = v23;

    v18 = v21;
    [v18 endTime];
    v25 = v24;
    [v18 startTime];
    v27 = v26;
    [v18 characterRange];
    v29 = v28;
    [v18 characterRange];
    v30._countAndFlagsBits = a6;
    v30._object = a7;
    location = _NSRange.convert(from:to:preserveLength:)(v30, v70, 0).location;
    if (v32)
    {

      v16 = v17;
      v17 = v18;
      goto LABEL_3;
    }

    v33 = location;
    v34 = [v17 length];
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v35 = v34;
    if (v34)
    {
      v64 = v14;
      v36 = 0;
      v37 = (v25 - v27) / v29;
      v66 = v33;
      v67 = a7;
      while (1)
      {
        v38 = __OFADD__(v33, v36);
        v33 += v36;
        if (v38)
        {
          break;
        }

        [v18 startTime];
        v25 = v39;
        [v18 startTime];
        v27 = v40;
        v41 = v15;
        v42 = [v17 substringWithRange:{v36, 1}];
        v43 = sub_AB92A0();
        v69 = v44;

        v45 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_9262A0(0, *(v41 + 2) + 1, 1, v41);
        }

        v29 = *(v45 + 2);
        v46 = *(v45 + 3);
        v47 = v45;
        if (v29 >= v46 >> 1)
        {
          v47 = sub_9262A0((v46 > 1), v29 + 1, 1, v45);
        }

        *(v47 + 2) = v29 + 1;
        v15 = v47;
        v48 = &v47[56 * v29];
        *(v48 + 4) = v37 * v36 + v25;
        *(v48 + 5) = v37 * (v36 + 1) + v27;
        *(v48 + 6) = v43;
        *(v48 + 7) = v69;
        *(v48 + 8) = v33;
        *(v48 + 72) = vdupq_n_s64(1uLL);
        ++v36;
        v33 = v66;
        a7 = v67;
        if (v36 == v35)
        {

          v14 = v64;
          a6 = v68;
          goto LABEL_4;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v32 = sub_92617C(0, *(v32 + 2) + 1, 1, v32);
      *a8 = v32;
LABEL_34:
      v62 = *(v32 + 2);
      v61 = *(v32 + 3);
      if (v62 >= v61 >> 1)
      {
        v32 = sub_92617C((v61 > 1), v62 + 1, 1, v32);
        *a8 = v32;
      }

      *(v32 + 2) = v62 + 1;
      v63 = &v32[56 * v62];
      *(v63 + 4) = v27;
      *(v63 + 5) = v25;
      *(v63 + 6) = v29;
      *(v63 + 7) = v33;
      *(v63 + 8) = v15;
      *(v63 + 9) = 0;
      v63[80] = 1;
      swift_endAccess();
      v14 = a7;
      goto LABEL_37;
    }

    v16 = v18;
    a6 = v68;
LABEL_3:
  }

  __break(1u);
}

uint64_t sub_924E18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_E21CB0 != -1)
  {
    swift_once();
  }

  v4 = qword_E21E70;
  v5 = sub_AB9260();
  [v4 setString:v5];

  *a3 = sub_AB9E00();
}

BOOL sub_924F00(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  [*a1 characterRange];
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  v12 = _NSRange.convert(from:to:preserveLength:)(v10, v11, 0);
  if (!v13)
  {
    return _NSRange.intersects(_:)(v12);
  }

  if (qword_E21CC0 != -1)
  {
    swift_once();
  }

  v14 = sub_AB4BC0();
  __swift_project_value_buffer(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = sub_AB4BA0();
  v17 = sub_AB9F30();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = sub_ABA910();
    v21 = sub_927078(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_927078(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_927078(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&dword_0, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_12E1C(v24, &qword_E22610);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_9251DC(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v39 = a1[4];
  v8 = *(v7 + 16);
  v9 = 0;
  if (!v8)
  {
    v11 = 0.0;
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  [*(v7 - 8 + 40 * v8) endTime];
  v11 = v10;
  if (!*(v7 + 16) || ([*(v7 + 32) startTime], v11 = v11 - v12, !*(v7 + 16)))
  {
    v14 = 0;
    goto LABEL_14;
  }

  [*(v7 + 32) startTime];
  v14 = v13;
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  [*(v7 - 8 + 40 * v15) endTime];
  v9 = v16;
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v5;
  v38 = a3;

  sub_927680(0, v17, 0);
  v18 = (v7 + 64);
  do
  {
    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v40 = *v18;
    v22 = *(v18 - 4);

    [v22 startTime];
    v24 = v23;
    [v22 endTime];
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_927680((v27 > 1), v28 + 1, 1);
    }

    v18 += 5;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[7 * v28];
    v29[4] = v24;
    v29[5] = v26;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v21;
    v29[9] = v40;
    v29[10] = v39;
    --v17;
  }

  while (v17);
  a3 = v38;
  v5 = v37;
  a2 = v36;
LABEL_15:
  v30 = 1;
  v31 = 0.0;
  if ((a2 & 1) != 0 && v11 > 1.0 && v39 <= 7)
  {
    v33 = 2.0;
    if (v11 <= 2.0)
    {
      v33 = v11;
    }

    v34 = v33 + -1.0;
    v31 = 0.0;
    if (v11 < 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 > 0.0)
    {
      v30 = 0;
      v31 = v35;
    }
  }

  *a3 = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = v31;
  *(a3 + 48) = v30;
}

id sub_925464(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = sub_AB92A0();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return &dword_0 + 1;
    }

    else
    {
      v7 = sub_ABB3C0();

      return (v7 & 1);
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_E21E88);

  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_E23930);
  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_E21E98);
  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_E23930);
  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_E21E98);
  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_E21E98);
  sub_12E1C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_E21E98);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_92CDC8(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    sub_ABAD10();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_92A394(v6, 0xD000000000000017, 0x8000000000B79B40, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    sub_ABAD10();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_92A394(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_15F84(a1, v48, &qword_E23DD0);
  if (v49)
  {
    sub_13C80(0, &qword_E21F58);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = sub_AB92A0();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v47 type];
      if (v7)
      {
        v8 = v7;
        v9 = sub_AB92A0();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = sub_ABB3C0();

            if ((v12 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_45;
        }
      }

      else if (v6)
      {
        goto LABEL_42;
      }

      v13 = [v1 name];
      if (v13)
      {
        v14 = v13;
        v15 = sub_AB92A0();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_AB92A0();
        v22 = v21;

        if (v17)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          if (v15 == v20 && v17 == v22)
          {
          }

          else
          {
            v23 = sub_ABB3C0();

            if ((v23 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v24 = [v1 artistID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_AB92A0();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v47 artistID];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v30 = v29;
      v31 = sub_AB92A0();
      v33 = v32;

      if (v28)
      {
        if (!v33)
        {
          goto LABEL_42;
        }

        if (v26 == v31 && v28 == v33)
        {

          goto LABEL_47;
        }

        v34 = sub_ABB3C0();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = sub_AB92A0();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          v42 = [v47 identifier];
          if (v42)
          {
            v43 = v42;
            v44 = sub_AB92A0();
            v46 = v45;

            if (!v39)
            {

              if (!v46)
              {
                v40 = 1;
                return v40 & 1;
              }

              goto LABEL_43;
            }

            if (v46)
            {
              if (v37 != v44 || v39 != v46)
              {
                v40 = sub_ABB3C0();

                return v40 & 1;
              }

              goto LABEL_61;
            }
          }

          else if (!v39)
          {
LABEL_61:

            v40 = 1;
            return v40 & 1;
          }

LABEL_42:

LABEL_43:

          goto LABEL_50;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!v33)
      {
        goto LABEL_47;
      }

LABEL_45:
    }
  }

  else
  {
    sub_12E1C(v48, &qword_E23DD0);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_925D30()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.lyrics);
  __swift_project_value_buffer(v0, static Logger.lyrics);
  return sub_AB4BB0();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E21CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_925E4C(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = sub_931CB8(v3[1]);

  return v1;
}

char *sub_925EB4(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_927620(result, v5, 0);
  }

  return result;
}

uint64_t sub_925F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

size_t sub_925F8C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28) - 8);
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

char *sub_92617C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_9262A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_9263C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_926510(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_926658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22538);
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

char *sub_926764(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22528);
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

void *sub_926858(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_9269A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

void *sub_926B7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22568);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_926CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_926DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D8);
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

void *sub_926EC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22518);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_92701C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_927078(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_927078(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_927144(v11, 0, 0, 1, a1, a2);
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

unint64_t sub_927144(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_927250(a5, a6);
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

void *sub_927250(uint64_t a1, unint64_t a2)
{
  v3 = sub_92729C(a1, a2);
  sub_9273CC(&off_D47298);
  return v3;
}

void *sub_92729C(uint64_t a1, unint64_t a2)
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

  v6 = sub_935FB4(v5, 0);
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

  result = sub_ABAE60();
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
        v10 = sub_AB94C0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_935FB4(v10, 0);
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

uint64_t sub_9273CC(uint64_t result)
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

  result = sub_9274B8(result, v11, 1, v3);
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

char *sub_9274B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225B0);
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

_BYTE **sub_9275AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_9275BC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_9275DC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_927600(size_t a1, int64_t a2, char a3)
{
  result = sub_927700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_927620(char *a1, int64_t a2, char a3)
{
  result = sub_9278F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_927640(char *a1, int64_t a2, char a3)
{
  result = sub_9279FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_927660(void *a1, int64_t a2, char a3)
{
  result = sub_927B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_927680(char *a1, int64_t a2, char a3)
{
  result = sub_927C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_9276A0(char *a1, int64_t a2, char a3)
{
  result = sub_927D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_9276C0(char *a1, int64_t a2, char a3)
{
  result = sub_927E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_9276E0(char *a1, int64_t a2, char a3)
{
  result = sub_927F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_927700(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E28) - 8);
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

char *sub_9278F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22538);
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

char *sub_9279FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_927B20(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_927C68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_927D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224F0);
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

char *sub_927E94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22510);
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

char *sub_927F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224B0);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_92809C(double *a1)
{
  sub_ABB5C0();
  Lyrics.Word.hash(into:)(v4);
  v2 = sub_ABB610();

  return sub_928108(a1, v2);
}

uint64_t sub_928108(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = sub_ABB3C0();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = sub_ABB3C0();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_9282F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22588);
  v45 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v5;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + 88 * v23);
      if (v45)
      {
        v47 = *v28;
        v46 = *(v28 + 1);
        v29 = *(v28 + 5);
        v50 = *(v28 + 3);
        v51 = v29;
        v30 = *(v28 + 7);
        v31 = *(v28 + 9);
      }

      else
      {
        v32 = *(v28 + 1);
        *v49 = *v28;
        *&v49[16] = v32;
        v34 = *(v28 + 3);
        v33 = *(v28 + 4);
        v35 = v28[10];
        *&v49[32] = *(v28 + 2);
        *&v49[80] = v35;
        *&v49[48] = v34;
        *&v49[64] = v33;
        v47 = *v49;
        v46 = *&v49[8];

        sub_933564(v49, v48);
        v50 = *&v49[24];
        v51 = *&v49[40];
        v30 = *&v49[56];
        v31 = *&v49[72];
      }

      v52 = v30;
      v53 = v31;
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 88 * v15;
      *(v17 + 8) = v46;
      v18 = v51;
      *(v17 + 24) = v50;
      *(v17 + 40) = v18;
      v19 = v53;
      *(v17 + 56) = v52;
      *v17 = v47;
      *(v17 + 72) = v19;
      ++*(v7 + 16);
      v5 = v44;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_928658(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Transliteration(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22590);
  v40 = a2;
  result = sub_ABB0A0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_931E7C(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_9319C8(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_931E7C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Transliteration);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_9289D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22578);
  v40 = a2;
  result = sub_ABB0A0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_931E7C(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_9319C8(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_931E7C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Translation);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_928D48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22540);
  v38 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_9ACA0(v27, &v39);
      }

      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_929018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C8);
  v53 = a2;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v50 = v12;
    v51 = v6;
    v52 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v58 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v57 = *(v22 + 40);
      v56 = *(v22 + 48);
      v55 = *(v21 + 8 * v20);
      if ((v53 & 1) == 0)
      {
      }

      sub_ABB5C0();
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      sub_ABB600(*&v28);
      if (v24 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24;
      }

      sub_ABB600(*&v29);
      v54 = v25;
      sub_AB93F0();
      v59 = v27;
      v30 = *(v27 + 16);
      sub_ABB5D0(v30);
      if (v30)
      {
        v31 = (v27 + 80);
        do
        {
          v32 = *(v31 - 6);
          v33 = *(v31 - 5);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v37 = *v31;
          v31 += 7;
          v36 = *&v37;
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          sub_ABB600(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          sub_ABB600(*&v38);

          sub_AB93F0();
          sub_ABB5D0(v34);
          sub_ABB5D0(v35);
          sub_ABB5D0(v36);

          --v30;
        }

        while (v30);
      }

      if (v56)
      {
        sub_ABB5D0(0);
        v7 = v51;
        v5 = v52;
        v39 = v57;
      }

      else
      {
        sub_ABB5D0(1uLL);
        v39 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v57;
        }

        else
        {
          v40 = 0;
        }

        sub_ABB600(v40);
        v7 = v51;
        v5 = v52;
      }

      result = sub_ABB610();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v11 = v58;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v11 = v58;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 16) = v54;
      *(v15 + 24) = v26;
      *(v15 + 32) = v59;
      *(v15 + 40) = v39;
      *(v15 + 48) = v56;
      *(*(v7 + 56) + 8 * v14) = v55;
      ++*(v7 + 16);
      v12 = v50;
    }

    v17 = v8;
    result = v49;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v49[v8];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v58 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_53;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v49, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
  return result;
}

Swift::Int sub_929440(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224F8);
  v55 = a2;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v50 = v2;
    v51 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v52 = v12;
    v53 = v6;
    v54 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v59 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v58 = *(v22 + 40);
      v57 = *(v22 + 48);
      v28 = *(v21 + 8 * v20);
      if ((v55 & 1) == 0)
      {
      }

      sub_ABB5C0();
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      sub_ABB600(*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      sub_ABB600(*&v30);
      v56 = v25;
      sub_AB93F0();
      v60 = v27;
      v31 = *(v27 + 16);
      sub_ABB5D0(v31);
      if (v31)
      {
        v32 = (v27 + 80);
        do
        {
          v33 = *(v32 - 6);
          v34 = *(v32 - 5);
          v35 = *(v32 - 2);
          v36 = *(v32 - 1);
          v38 = *v32;
          v32 += 7;
          v37 = *&v38;
          if (v33 == 0.0)
          {
            v33 = 0.0;
          }

          sub_ABB600(*&v33);
          if (v34 == 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v34;
          }

          sub_ABB600(*&v39);

          sub_AB93F0();
          sub_ABB5D0(v35);
          sub_ABB5D0(v36);
          sub_ABB5D0(v37);

          --v31;
        }

        while (v31);
      }

      if (v57)
      {
        sub_ABB5D0(0);
        v7 = v53;
        v40 = v58;
      }

      else
      {
        sub_ABB5D0(1uLL);
        v40 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v41 = v58;
        }

        else
        {
          v41 = 0;
        }

        sub_ABB600(v41);
        v7 = v53;
      }

      result = sub_ABB610();
      v42 = -1 << *(v7 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      v5 = v54;
      if (((-1 << v43) & ~*(v13 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v11 = v59;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v13 + 8 * v44);
          if (v48 != -1)
          {
            v14 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v43) & ~*(v13 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v11 = v59;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 16) = v56;
      *(v15 + 24) = v26;
      *(v15 + 32) = v60;
      *(v15 + 40) = v40;
      *(v15 + 48) = v57;
      *(*(v7 + 56) + 8 * v14) = v28;
      ++*(v7 + 16);
      v12 = v52;
    }

    v17 = v8;
    result = v51;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v51[v8];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v59 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_53;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
  return result;
}

uint64_t sub_929870(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22508);
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v22 = (*(v5 + 56) + 32 * v20);
      v31 = v22[1];
      v32 = *v22;
      if ((a2 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_ABB5D0(v21);
      result = sub_ABB610();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v32;
      v16[1] = v31;
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

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_929B04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22500);
  v30 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v30 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_ABB5D0(v20);
      result = sub_ABB610();
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_929D9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224B8);
  v35 = a2;
  result = sub_ABB0A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_9ACFC(v22, v36);
      }

      else
      {
        sub_808B0(v22, v36);
        v23 = v21;
      }

      sub_AB92A0();
      sub_ABB5C0();
      sub_AB93F0();
      v24 = sub_ABB610();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_9ACFC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_92A06C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      return sub_933C54(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_92AC94();
    goto LABEL_7;
  }

  sub_928658(v15, a4 & 1);
  v22 = sub_2EBF88(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_92A988(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

uint64_t sub_92A200(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Translation(0);
      return sub_933C54(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_92AEEC();
    goto LABEL_7;
  }

  sub_9289D0(v15, a4 & 1);
  v22 = sub_2EBF88(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_92A988(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

uint64_t sub_92A394(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_928D48(v16, a4 & 1);
      v11 = sub_2EBF88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_92B144();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_9AD68(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_92A524(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_92809C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_929018(v14, a3 & 1);
      result = sub_92809C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_92B2F8();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  sub_C8C3C(&v28, v26);
  return sub_15F84(&v27, v26, &qword_E224E0);
}

uint64_t sub_92A6A0(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_92809C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_929440(v14, a3 & 1);
      v9 = sub_92809C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_ABB4C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_92B488();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v22 = *a2;
    v29 = *(a2 + 1);
    v21 = v29;
    v28 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v23 = v19[6] + 56 * v9;
    v24 = *(a2 + 2);
    *(v23 + 16) = v21;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(a2 + 48);
    *v23 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      sub_C8C3C(&v29, v27);
      return sub_15F84(&v28, v27, &qword_E224E0);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_92A848(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_8C0BE8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_92B8F4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_929D9C(v13, a3 & 1);
    v8 = sub_8C0BE8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_2(0);
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_9ACFC(a1, v19);
  }

  else
  {
    sub_526874(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_92A988(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_931E7C(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_92AA34(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_92AA80(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_92AAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22588);
  v2 = *v0;
  v3 = sub_ABB090();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_933564(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_92AC94()
{
  v1 = v0;
  v2 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22590);
  v4 = *v0;
  v5 = sub_ABB090();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_9319C8(*(v4 + 56) + v26, v30, type metadata accessor for Lyrics.Transliteration);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_931E7C(v25, *(v27 + 56) + v26, type metadata accessor for Lyrics.Transliteration);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_92AEEC()
{
  v1 = v0;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22578);
  v4 = *v0;
  v5 = sub_ABB090();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_9319C8(*(v4 + 56) + v26, v30, type metadata accessor for Lyrics.Translation);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_931E7C(v25, *(v27 + 56) + v26, type metadata accessor for Lyrics.Translation);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_92B144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22540);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_9ACA0(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_92B2F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C8);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void *sub_92B488()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224F8);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void *sub_92B628()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22508);
  v2 = *v0;
  v3 = sub_ABB090();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void *sub_92B790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22500);
  v2 = *v0;
  v3 = sub_ABB090();
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

id sub_92B8F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224B8);
  v2 = *v0;
  v3 = sub_ABB090();
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
        sub_808B0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_9ACFC(v19, (*(v4 + 56) + 32 * v17));
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

Swift::Int sub_92BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_ABB5C0();
  sub_AB93F0();
  result = sub_ABB610();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_AB4950();
    result = sub_AB4980();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (sub_ABB3C0())
          {
            break;
          }

          sub_AB49A0();
          result = sub_AB4980();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

Swift::Int sub_92BBC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_ABB5C0();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = sub_ABB610();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = sub_AB4950();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = sub_AB4980();
  if (v17)
  {
    return v16;
  }

  v18 = *v38;
  while (1)
  {
    v20 = a2 + 56 * v16;
    if (*v20 != v18 || *(v20 + 8) != *(v38 + 8))
    {
      goto LABEL_6;
    }

    result = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v36 = *(v20 + 48);
    if (result != *(v38 + 16) || *(v20 + 24) != *(v38 + 24))
    {
      result = sub_ABB3C0();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v38 + 32);
    v25 = *(v21 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_6;
    }

    if (v25 && v21 != v24)
    {
      break;
    }

LABEL_20:
    if (v36)
    {
      if (*(v38 + 48))
      {
        return v16;
      }
    }

    else if ((*(v38 + 48) & 1) == 0 && v22 == *(v38 + 40))
    {
      return v16;
    }

LABEL_6:
    sub_AB49A0();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = sub_AB4980();
    if (v19)
    {
      return v16;
    }
  }

  v27 = (v21 + 80);
  v28 = v24 + 40;
  while (v25)
  {
    if (*(v27 - 6) != *(v28 - 8) || *(v27 - 5) != *v28)
    {
      goto LABEL_6;
    }

    result = *(v27 - 4);
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v32 = *v27;
    v34 = *(v28 + 24);
    v33 = *(v28 + 32);
    v35 = *(v28 + 40);
    if (result != *(v28 + 8) || *(v27 - 3) != *(v28 + 16))
    {
      result = sub_ABB3C0();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30 != v34 || v31 != v33 || *&v32 != v35)
    {
      goto LABEL_6;
    }

    v27 += 7;
    v28 += 56;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_92BE20(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  result = sub_ABB610();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_AB4950();
    result = sub_AB4980();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_AB49A0();
        result = sub_AB4980();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_92BF34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_927620(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_927620((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  if (*v3)
  {
    swift_beginAccess();
    if (sub_AB49B0() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v3;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = sub_AB49D0();

        *v3 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return sub_AB4970();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_94D62C();
}

uint64_t sub_92C0AC()
{

  sub_ABAE90();
  sub_ABAED0();
  sub_ABAEE0();
  result = sub_ABAEA0();
  v2 = *(v0[1] + 16);
  if (*v0)
  {
    swift_beginAccess();
    if (sub_AB49B0() >= v2)
    {
      result = swift_isUniquelyReferenced_native();
      v3 = *v0;
      if ((result & 1) == 0)
      {
        if (!v3)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v4 = sub_AB49D0();

        *v0 = v4;
        v3 = v4;
      }

      if (v3)
      {
        return sub_AB4970();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v2 < 0x10)
  {
    return result;
  }

  return sub_94D644();
}

uint64_t sub_92C1E4(__int128 *a1)
{
  v2 = v1;
  v18 = a1[1];
  v17 = *(a1 + 4);
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  sub_C8C3C(&v18, v16);
  sub_15F84(&v17, v16, &qword_E224E0);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_927640(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_927640((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  v10 = v5 + 56 * v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  *(v10 + 80) = *(a1 + 48);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 32) = v11;
  v2[1] = v5;
  if (*v2)
  {
    swift_beginAccess();
    if (sub_AB49B0() > v9)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v2;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_AB49D0();

        *v2 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_AB4970();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_94D6E8();
}

void sub_92C3A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_94DE1C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_92C50C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_92C3A0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_92C59C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_ABB5D0(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v4 += 7;
      v9 = *&v10;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      sub_ABB600(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      sub_ABB600(*&v11);

      sub_AB93F0();
      sub_ABB5D0(v7);
      sub_ABB5D0(v8);
      sub_ABB5D0(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_92C668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for Lyrics.SongwritersLine;
  v12 = &protocol witness table for Lyrics.SongwritersLine;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_70DF8(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_92C724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22650);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92C838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22578);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E225C8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2EBF88(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Translation(0);
      result = sub_931E7C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92CA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22590);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E225C0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2EBF88(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Transliteration(0);
      result = sub_931E7C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92CC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22588);
  v3 = sub_ABB0C0();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_15F84(&v27, v26, &qword_E225A0);
  result = sub_2EBF88(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_15F84(&v27, v26, &qword_E225A0);
    result = sub_2EBF88(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_92CDC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22540);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v16, &qword_E22548);
      v5 = v16;
      v6 = v17;
      result = sub_2EBF88(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92CF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224B8);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_E224C0);
      v5 = v11;
      result = sub_8C0BE8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92D028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C8);
    v3 = sub_ABB0C0();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_92809C(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92D160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224F8);
    v3 = sub_ABB0C0();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_92809C(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_92D2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22500);
  v3 = sub_ABB0C0();
  v13 = *(a1 + 32);
  result = sub_8E0BA4(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_8E0BA4(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_92D3C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22508);
  v3 = sub_ABB0C0();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = sub_8E0BA4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = result;
    v10 = (v3[7] + 32 * v7);
    *v10 = v17;
    v10[1] = v18;
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

    v14 = (v9 + 40);
    v15 = *(v9 - 1);
    v17 = *v9;
    v18 = v9[1];

    v7 = sub_8E0BA4(v15);
    v9 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (sub_ABB3C0()) && (sub_919A24(*(a1 + 32), *(a2 + 32)))
    {
      if (*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          return 1;
        }
      }

      else if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = sub_ABB3C0(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7LyricsX0A0C8TextLineV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v4 = type metadata accessor for Lyrics.TextLine(0), *(a1 + v4[10]) == *(a2 + v4[10])) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v5 = v4;
    v6 = (*(a1 + v4[16]))();
    v8 = v7;
    if (v6 == (*(a2 + v5[16]))() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_ABB3C0();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_92D774(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    goto LABEL_7;
  }

  result = *(result + 64);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_92D834()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_92D86C()
{

  return swift_deallocObject();
}

uint64_t sub_92D8A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB35A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_AB3560();
  sub_AB3570();
  (*(v4 + 8))(v6, v3);
  v10 = sub_AB34C0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &qword_E21E90);
LABEL_4:
    v12 = 1;
    return v12 & 1;
  }

  v13 = sub_AB34A0();
  v15 = v14;
  (*(v11 + 8))(v9, v10);
  if (qword_E21CA8 != -1)
  {
    swift_once();
  }

  v16 = sub_472F00(v13, v15, qword_E74418);

  v12 = v16 ^ 1;
  return v12 & 1;
}

Swift::Int sub_92DADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22558);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_ABB5C0();
      sub_ABB5D0(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      sub_ABB600(*&v11);
      result = sub_ABB610();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_UNKNOWN **sub_92DC30(uint64_t a1, uint64_t a2)
{
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = sub_AB35A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB34C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  __chkstk_darwin(v17);
  if (!a2)
  {
    return &off_D47378;
  }

  v19 = v27 - v18;

  sub_AB3560();
  sub_AB3570();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_12E1C(v5, &qword_E21E90);
    return &off_D47378;
  }

  v21 = v19;
  (*(v11 + 32))(v19, v5, v10);
  (*(v11 + 16))(v16, v19, v10);
  sub_AB34B0();
  sub_93210C(&qword_E22640, &type metadata accessor for Locale.LanguageCode);
  v22 = sub_AB91C0();
  v23 = *(v11 + 8);
  v23(v13, v10);
  if (v22 & 1) != 0 || (sub_AB34B0(), v24 = sub_AB91C0(), v23(v13, v10), (v24) || (sub_AB34B0(), v25 = sub_AB91C0(), v23(v13, v10), (v25))
  {
    v23(v16, v10);
  }

  else
  {
    sub_AB34B0();
    v26 = sub_AB91C0();
    v23(v13, v10);
    v23(v16, v10);
    if ((v26 & 1) == 0)
    {
      v23(v21, v10);
      return &off_D47350;
    }
  }

  v23(v21, v10);
  return &off_D47328;
}

uint64_t sub_92E07C()
{

  return swift_deallocObject();
}

void sub_92E0B4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22560);
      v3 = sub_ABAD50();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_ABAE20();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_13C80(0, &qword_E21F58);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_13C80(0, &qword_E21F58);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_92E3A4(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v137 = a1;
  v138 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v128 = _swiftEmptyArrayStorage;
    v82 = qword_E21CB8;

    if (v82 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    v12 = 0;
    v97 = _swiftEmptyArrayStorage;
LABEL_80:

    return v97;
  }

  v102._countAndFlagsBits = a4;
  v102._object = a5;
  v101 = 4 * v10;

  v11 = 0;
  v114 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v8 = (&dword_C + 3);
  v7 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptyArrayStorage;
  while (1)
  {
    v118 = v12;
    v111 = sub_AB9430();
    v15 = ((v14 & 1) != 0 ? v8 : v114);
    v16 = ((v14 & 1) != 0 ? v8 : v11);
    if (v15 >> 14 > sub_AB9430() >> 14)
    {
      break;
    }

    v17 = _NSRange.init(range:in:)();
    if (v13 < v16 >> 14)
    {
      goto LABEL_84;
    }

    v103 = v15 >> 14;
    v112 = v13;
    v126 = v15;
    v19 = v17;
    v20 = v18;

    v116 = v16;
    v108 = _NSRange.init(range:in:)();
    v115 = v21;
    __chkstk_darwin(v108);
    v105 = v19;
    v99 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E0);
    Array.extractFirst(where:)(v22, &v131);
    v23 = v131;
    sub_AB9560();
    v24 = sub_AB90F0();

    if ((v24 & 1) == 0)
    {
      if (v23)
      {
LABEL_22:
        v9 = a2;
        if (v118)
        {
          v106 = v23;
          v30 = v23;
          sub_AB9590();
          v31 = sub_AB93B0();
          v33 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_926510(0, v122[2] + 1, 1, v122);
          }

          v35 = v122[2];
          v34 = v122[3];
          v9 = a2;
          if (v35 >= v34 >> 1)
          {
            v122 = sub_926510((v34 > 1), v35 + 1, 1, v122);
          }

          v110 = 0;
          v122[2] = v35 + 1;
          v36 = &v122[5 * v35];
          v36[4] = v118;
          v36[5] = v31;
          v36[6] = v33;
          v36[7] = v108;
          v36[8] = v115;
          v109 = v8;
          v114 = v126;
          v23 = v106;
          v12 = v106;
        }

        else
        {
          v37 = v23;
          v110 = 0;
          v109 = v8;
          v114 = v126;
          v12 = v23;
        }
      }

      else
      {
        v110 = 0;
        v109 = v16;
        v114 = v126;
        v9 = a2;
        v12 = v118;
      }

LABEL_31:
      v28 = v112;
      goto LABEL_32;
    }

    if (v23)
    {
      goto LABEL_22;
    }

    v9 = a2;
    if (!v118)
    {
      v110 = 0;
      v12 = 0;
      v109 = v16;
      v114 = v126;
      goto LABEL_31;
    }

    v25 = v118;
    [v25 characterRange];
    v26._countAndFlagsBits = a2;
    v26._object = a3;
    v27 = _NSRange.convert(from:to:preserveLength:)(v102, v26, 0);
    v28 = v112;
    if (v29)
    {

      v110 = 0;
      v109 = v116;
      v114 = v126;
LABEL_60:
      v12 = v118;
      goto LABEL_32;
    }

    v71 = _NSRange.contains(_:)(v27);

    if (!v71)
    {
      v110 = 0;
      v109 = v116;
      v114 = v126;
      v9 = a2;
      goto LABEL_60;
    }

    v72 = v25;
    v9 = a2;
    sub_AB9590();
    v120 = sub_AB93B0();
    v96 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_926510(0, v122[2] + 1, 1, v122);
    }

    v75 = v122[2];
    v74 = v122[3];
    if (v75 >= v74 >> 1)
    {
      v122 = sub_926510((v74 > 1), v75 + 1, 1, v122);
    }

    v122[2] = v75 + 1;
    v76 = &v122[5 * v75];
    v76[4] = v72;
    v76[5] = v120;
    v76[6] = v96;
    v76[7] = v108;
    v76[8] = v115;
    sub_AB9590();
    v121 = sub_AB93B0();
    v78 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_9263C8(0, v7[2] + 1, 1, v7);
    }

    v80 = v7[2];
    v79 = v7[3];
    if (v80 >= v79 >> 1)
    {
      v7 = sub_9263C8((v79 > 1), v80 + 1, 1, v7);
    }

    v7[2] = v80 + 1;
    v81 = &v7[5 * v80];
    v81[4] = v121;
    v81[5] = v78;
    v81[6] = v122;
    v81[7] = v105;
    v81[8] = v99;

    v109 = 0;
    v114 = 0;
    v12 = 0;
    v110 = 1;
    v122 = _swiftEmptyArrayStorage;
LABEL_32:
    if (v28 == sub_AB9440() >> 14 && v12)
    {
      if (v28 < v103)
      {
        goto LABEL_86;
      }

      v107 = v23;
      v38 = v7;

      v119 = v12;
      v39 = v12;
      v104 = _NSRange.init(range:in:)();
      v100 = v40;

      v41 = _NSRange.init(range:in:)();
      v43 = v42;
      v113 = v39;
      sub_AB9430();
      sub_AB9590();
      v44 = sub_AB93B0();
      v46 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_926510(0, v122[2] + 1, 1, v122);
      }

      v48 = v122[2];
      v47 = v122[3];
      if (v48 >= v47 >> 1)
      {
        v122 = sub_926510((v47 > 1), v48 + 1, 1, v122);
      }

      v122[2] = v48 + 1;
      v49 = &v122[5 * v48];
      v49[4] = v113;
      v49[5] = v44;
      v49[6] = v46;
      v49[7] = v41;
      v49[8] = v43;
      sub_AB9430();
      sub_AB9590();
      v9 = v50;
      v51 = sub_AB93B0();
      v53 = v52;

      v7 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_9263C8(0, v38[2] + 1, 1, v38);
      }

      v55 = v7[2];
      v54 = v7[3];
      v127 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v7 = sub_9263C8((v54 > 1), v127, 1, v7);
      }

      v7[2] = v127;
      v56 = &v7[5 * v55];
      v56[4] = v51;
      v56[5] = v53;
      v56[6] = v122;
      v56[7] = v104;
      v56[8] = v100;
      v136 = _swiftEmptyArrayStorage;
      sub_927640(0, v127, 0);
      v57 = 0;
      v58 = v136;
      v8 = v7 + 7;
      v59 = a6;
      while (v57 < v7[2])
      {
        v9 = v7;
        v61 = *(v8 - 1);
        v60 = *v8;
        v128 = *(v8 - 3);
        v129 = v61;
        v130 = v60;
        sub_9251DC(&v128, v59 & 1, &v131);
        v62 = v131;
        v63 = v132;
        v64 = v133;
        v65 = v134;
        v66 = v135;
        v136 = v58;
        v68 = v58[2];
        v67 = v58[3];
        v69 = v58;
        if (v68 >= v67 >> 1)
        {
          v123 = v133;
          v117 = v131;
          sub_927640((v67 > 1), v68 + 1, 1);
          v62 = v117;
          v64 = v123;
          v59 = a6;
          v69 = v136;
        }

        v69[2] = v68 + 1;
        v70 = &v69[7 * v68];
        *(v70 + 2) = v62;
        ++v57;
        v70[6] = v63;
        *(v70 + 7) = v64;
        v70[9] = v65;
        *(v70 + 80) = v66;
        v8 = (v8 + 40);
        v7 = v9;
        v58 = v69;
        if (v127 == v57)
        {

          v122 = _swiftEmptyArrayStorage;
          v97 = v58;
          v9 = a2;
          v12 = v119;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    v8 = v111;
    v13 = v111 >> 14;
    v14 = v110;
    v11 = v109;
    if (v111 >> 14 == v101)
    {

      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v83 = swift_once();
LABEL_62:
  __chkstk_darwin(v83);
  UnfairLock.locked<A>(_:)(sub_933D5C);
  v84 = v128;
  v85 = v128[2];
  if (v85)
  {
    v86 = 0;
    v87 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v87 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v88 = 7;
    if (((a3 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v88 = 11;
    }

    v9 = 4 * v87;
    v89 = v88 | (v87 << 16);
    v90 = v128 + 6;
    do
    {
      v92 = v86 + 1;
      v93 = *(v90 - 1);
      if (v86 >= v85 - 1)
      {
        if (v9 == v93 >> 14)
        {
          v91 = *(v90 - 1);
        }

        else
        {
          v91 = v89;
        }
      }

      else
      {
        if (v92 >= v84[2])
        {
          goto LABEL_85;
        }

        if ((*v90 ^ v93) >= 0x4000)
        {
          v91 = *v90;
        }

        else
        {
          v91 = *(v90 - 1);
        }
      }

      sub_924818(*(v90 - 2), v91, a2, a3, &v137, v8, v7, &v138);
      v90 += 2;
      v86 = v92;
    }

    while (v85 != v92);
  }

  swift_beginAccess();
  v94 = v138;

  return v94;
}

char *sub_92F098(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    sub_13C80(0, &qword_E225D8);
    sub_AB9760();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E0);
    v9 = sub_36A00(&qword_E22628, &qword_E225E0);
    v10 = Sequence.exclude(_:)(sub_925800, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = sub_92D8A4(a2, a3);
  v12 = sub_92DC30(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = sub_AB92A0();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = sub_AB92A0();
  v22 = v21;

  [a1 endTime];
  [a1 startTime];
  v23 = v12[2];
  v24 = (v12 + 4);
  do
  {
    v25 = v23;
    if (v23-- == 0)
    {
      break;
    }

    v27 = *v24++;
  }

  while (v27 != 2);
  v28 = v25 != 0;

  v29 = sub_92E3A4(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL sub_92F310()
{
  v0 = sub_AB35A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_AB9260();
  v6 = [v4 dominantLanguageForString:v5];

  if (!v6)
  {
    return 0;
  }

  sub_AB92A0();
  sub_AB3560();
  v7 = sub_AB3580();

  (*(v1 + 8))(v3, v0);
  return v7 == 2;
}

unint64_t sub_92F44C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  sub_13C80(0, &qword_E225D8);
  v11 = sub_AB9760();

  if (v11 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_9:

LABEL_10:
    [a1 startTime];
    v4 = v15;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  [v13 startTime];
  v4 = v14;

LABEL_11:
  v16 = [a1 subwords];
  if (!v16)
  {
LABEL_22:
    [a1 endTime];
    v25 = v26;
    goto LABEL_23;
  }

  v17 = v16;
  sub_13C80(0, &qword_E225D8);
  v18 = sub_AB9760();

  if (!(v18 >> 62))
  {
    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = sub_ABB060();
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_14:
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = sub_ABAE20();
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v22 = *(v18 + 8 * result + 32);
LABEL_19:
  v23 = v22;

  [v23 endTime];
  v25 = v24;

LABEL_23:
  v27 = sub_92D8A4(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = sub_AB92A0();
  v33 = v32;

  v34 = [v28 characterRange];
  v56 = v35;
  v57 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  sub_AB92A0();

  v38 = sub_92F310();

  result = [v28 subwords];
  if (result)
  {
    v39 = result;
    type metadata accessor for Lyrics(0);
    sub_13C80(0, &qword_E225D8);
    v40 = sub_AB9760();

    v41 = [v28 lyricsText];
    v42 = a4;
    v43 = v38;
    v44 = v33;
    v45 = v31;
    v46 = [v41 string];

    v55 = sub_AB92A0();
    v48 = v47;

    v49 = [v28 lyricsText];
    v50 = [v49 string];

    v51 = sub_AB92A0();
    v53 = v52;

    v31 = v45;
    v33 = v44;
    v38 = v43;
    a4 = v42;
    v54 = sub_92E3A4(v40, v55, v48, v51, v53, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v57;
  *(a4 + 40) = v56;
  *(a4 + 48) = v38;
  *(a4 + 56) = v54;
  return result;
}

void *sub_92F8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
{
  v174 = a7;
  v175 = a8;
  v163 = a6;
  v192 = a5;
  v166 = a3;
  v167 = a4;
  v165 = a2;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v172 = *(v9 - 8);
  v173 = v9;
  __chkstk_darwin(v9);
  v190 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v189 = (&v156 - v12);
  v193 = sub_AB35A0();
  v13 = *(v193 - 8);
  __chkstk_darwin(v193);
  v162 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v158 = &v156 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin(v17 - 8);
  v157 = &v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin(v19 - 8);
  v176 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v156 - v22;
  __chkstk_darwin(v24);
  v199 = &v156 - v25;
  *&v205[0] = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22630);
  sub_36A00(&qword_E22638, &qword_E22630);
  v26 = Sequence.sorted<A>(by:comparator:)();

  if (v26 >> 62)
  {
    goto LABEL_109;
  }

  v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v28 = v193;
  v29 = v199;
  if (v27)
  {
    v169 = v27;
    v170 = objc_opt_self();
    v171 = v26 & 0xC000000000000001;
    v177 = v26;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v26 = v177;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v30 = 0;
    v195 = (v13 + 56);
    v161 = "$_staticText";
    v178 = 0;
    v179 = (v13 + 48);
    v156 = (v13 + 16);
    v164 = (v13 + 8);
    v159 = v26 & 0xFFFFFFFFFFFFFF8;
    v160 = (v13 + 32);
    v168 = v163;
    v31 = &selRef__authenticateReturningError_;
    v201 = _swiftEmptyArrayStorage;
    v191 = v23;
    while (1)
    {
      if (v171)
      {
        v32 = sub_ABAE20();
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v30 >= *(v159 + 16))
        {
          goto LABEL_106;
        }

        v32 = *(v26 + 8 * v30 + 32);
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
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
          v27 = sub_ABB060();
          goto LABEL_3;
        }
      }

      v186 = v33;
      v202 = v32;
      v34 = [v202 agent];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      swift_beginAccess();
      v36 = v35;
      sub_936178(v203, v36);
      swift_endAccess();

      v37 = [v36 v31[335]];
      if (!v37)
      {

        goto LABEL_19;
      }

      v38 = v37;
      v39 = sub_AB92A0();
      v41 = v40;

      v42 = v39;
      if (v39 == 0x6E6F73726570 && v41 == 0xE600000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v43 = [v36 identifier];
        if (v43)
        {
          v44 = v43;
          v200 = sub_AB92A0();
          v46 = v45;
        }

        else
        {
          v200 = 0;
          v46 = 0;
        }

        v48 = *(v166 + 16);
        if (v48)
        {
          v49 = v30;
          v50 = [v48 identifier];
          if (v50)
          {
            v51 = v50;
            v52 = sub_AB92A0();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          v30 = v49;
          v31 = &selRef__authenticateReturningError_;
          if (v46)
          {
LABEL_29:
            if (!v54)
            {

              v23 = v191;
              goto LABEL_44;
            }

            if (v200 == v52 && v46 == v54)
            {

              v23 = v191;
            }

            else
            {
              v55 = sub_ABB3C0();

              v23 = v191;
              if ((v55 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v52 = 0;
          v54 = 0;
          if (v46)
          {
            goto LABEL_29;
          }
        }

        v23 = v191;
        if (v54)
        {

LABEL_43:

LABEL_44:
          v57 = v167;
          v58 = *(v166 + 16);
          v29 = v199;
          v28 = v193;
          if (v58)
          {
            *(v167 + 16) = (*(v167 + 16) & 1) == 0;
          }

          *(v166 + 16) = v35;
          v59 = v57;

          v47 = *(v59 + 16);
          goto LABEL_47;
        }
      }

LABEL_35:
      if (v42 == 0x70756F7267 && v41 == 0xE500000000000000)
      {

        v185 = 0;
        v29 = v199;
        v28 = v193;
        goto LABEL_48;
      }

      v56 = sub_ABB3C0();
      v29 = v199;
      if (v56)
      {

        v185 = 0;
        v28 = v193;
        goto LABEL_48;
      }

      if (v42 == 0x726568746FLL && v41 == 0xE500000000000000)
      {

        v185 = 1;
        v28 = v193;
        goto LABEL_48;
      }

      v126 = sub_ABB3C0();

      v28 = v193;
      if (v126)
      {
        v47 = 1;
        goto LABEL_47;
      }

LABEL_19:
      v47 = *(v167 + 16);
LABEL_47:
      v185 = v47;
LABEL_48:
      v60 = [v202 translationKey];
      if (v60)
      {
        v61 = v60;
        v62 = sub_AB92A0();
        v183 = v63;
        v184 = v62;
      }

      else
      {
        v183 = 0;
        v184 = 0;
      }

      v187 = v30;
      v64 = [v192 v31[335]];
      v65 = &selRef_primaryVocalText;
      if (v64 != &dword_0 + 2)
      {
        v65 = &selRef_lyricsText;
      }

      v66 = v202;
      v67 = [v202 *v65];
      v68 = [v67 string];

      v196 = sub_AB92A0();
      v197 = v69;

      v70 = [v66 words];
      if (v70)
      {
        v71 = v70;
        sub_13C80(0, &qword_E225D8);
        v72 = sub_AB9760();

        *&v204[0] = v72;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225E0);
        v74 = sub_36A00(&qword_E22628, &qword_E225E0);
        v75 = v73;
        v76 = v178;
        v77 = Sequence.exclude(_:)(sub_925800, 0, v75, v74);
        v178 = v76;
      }

      else
      {
        v77 = _swiftEmptyArrayStorage;
      }

      v78 = swift_allocObject();
      v200 = v78;
      *(v78 + 16) = _swiftEmptyArrayStorage;
      v79 = (v78 + 16);
      v80 = swift_allocObject();
      v80[1] = 0u;
      v81 = v80 + 1;
      v80[2] = 0u;
      v80[3] = 0u;
      v198 = v80;
      v80[4] = 0u;
      v194 = *v195;
      v194(v29, 1, 1, v28);
      v26 = sub_AB9260();
      v82 = [v170 dominantLanguageForString:v26];

      if (v82)
      {
        sub_AB92A0();
        sub_AB3560();

LABEL_60:
        v194(v23, 0, 1, v28);
        sub_160B4(v23, v29, &qword_E21E88);
        goto LABEL_61;
      }

      v83 = [v192 language];
      if (v83)
      {
        v84 = v83;
        v26 = sub_AB92A0();

        sub_AB3560();
        v29 = v199;
        goto LABEL_60;
      }

LABEL_61:
      if ([v192 v31[335]] == &dword_0 + 2)
      {
        v85 = [objc_opt_self() standardUserDefaults];
        v26 = sub_AB9260();
        v86 = [v85 BOOLForKey:v26];

        if ((v86 & 1) == 0)
        {
          v87 = v199;
          if ((*v179)(v199, 1, v28))
          {
            v88 = 0;
            v89 = 0;
          }

          else
          {
            v90 = v158;
            (*v156)(v158, v87, v28);
            v91 = v157;
            sub_AB3570();
            v92 = v90;
            v93 = v91;
            (*v164)(v92, v28);
            v94 = sub_AB34C0();
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v93, 1, v94) == 1)
            {
              sub_12E1C(v93, &qword_E21E90);
              v88 = 0;
              v89 = 0;
            }

            else
            {
              v96 = v93;
              v97 = sub_AB34A0();
              v89 = v98;
              v99 = v96;
              v23 = v191;
              (*(v95 + 8))(v99, v94);
              v88 = v97;
            }

            v28 = v193;
          }

          v100 = v202;
          v26 = sub_92F098(v202, v88, v89);

          swift_beginAccess();
          *v79 = v26;

          v101 = [v100 backgroundVocals];
          if (v101)
          {
            v102 = v101;
            v103 = [v192 language];
            if (v103)
            {
              v104 = v103;
              v105 = sub_AB92A0();
              v26 = v106;
            }

            else
            {

              v105 = 0;
              v26 = 0;
            }

            sub_92F44C(v102, v105, v26, v205);
            v188 = v205[0];
            v180 = v205[3];
            v181 = v205[2];
            v182 = v205[1];
          }

          else
          {
            v188 = 0u;
            v181 = 0u;
            v182 = 0u;
            v180 = 0u;
          }

          swift_beginAccess();
          v107 = v81[1];
          v204[0] = *v81;
          v204[1] = v107;
          v108 = v81[3];
          v204[2] = v81[2];
          v204[3] = v108;
          v109 = v198;
          v110 = v182;
          v198[1] = v188;
          v109[2] = v110;
          v111 = v180;
          v109[3] = v181;
          v109[4] = v111;
          sub_12E1C(v204, &qword_E21E80);
        }
      }

      v112 = v176;
      sub_15F84(v199, v176, &qword_E21E88);
      if ((*v179)(v112, 1, v28) == 1)
      {
        sub_12E1C(v112, &qword_E21E88);
        v113 = v163;
      }

      else
      {
        v114 = v162;
        (*v160)(v162, v112, v28);
        v115 = sub_AB3580();
        (*v164)(v114, v28);
        v113 = v115 == 2;
      }

      v116 = v202;
      *&v188 = [v202 lineIndex];
      [v116 startTime];
      v118 = v117;
      [v116 endTime];
      v120 = v119;
      if (v77 >> 62)
      {
        v13 = sub_ABB060();
        if (!v13)
        {
LABEL_93:
          v125 = v202;
          [v202 startTime];
          v123 = v127;
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
        if (!v13)
        {
          goto LABEL_93;
        }
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v121 = sub_ABAE20();
      }

      else
      {
        if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_105;
        }

        v121 = *(v77 + 32);
      }

      v26 = v121;
      [v121 startTime];
      v123 = v122;

      v124 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_104;
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v125 = sub_ABAE20();
      }

      else
      {
        if ((v124 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v124 >= *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_108;
        }

        v125 = *(v77 + 8 * v124 + 32);
      }

LABEL_94:

      [v125 endTime];
      v129 = v128;

      LODWORD(v180) = v201[2] == 0;
      sub_15F84(v199, v23, &qword_E21E88);
      v130 = swift_allocObject();
      *&v182 = v130;
      v131 = v175;
      *(v130 + 16) = v175;
      *(v130 + 24) = v168;
      v132 = swift_allocObject();
      *&v181 = v132;
      *(v132 + 16) = v131;
      *(v132 + 24) = v113;
      v133 = swift_allocObject();
      v135 = v183;
      v134 = v184;
      *(v133 + 2) = v131;
      *(v133 + 3) = v134;
      v137 = v196;
      v136 = v197;
      *(v133 + 4) = v135;
      *(v133 + 5) = v137;
      *(v133 + 6) = v136;
      v138 = swift_allocObject();
      *(v138 + 2) = v131;
      *(v138 + 3) = v134;
      v139 = v200;
      *(v138 + 4) = v135;
      *(v138 + 5) = v139;
      v140 = swift_allocObject();
      v140[2] = v131;
      v140[3] = v134;
      v141 = v198;
      v140[4] = v135;
      v140[5] = v141;
      v142 = v173;
      v197 = v173[7];
      v143 = v189;
      v194(v189 + v197, 1, 1, v193);
      v143[2] = v188;
      *v143 = v118;
      v143[1] = v120;
      *(v143 + v142[10]) = v123;
      *(v143 + v142[11]) = v129;
      *(v143 + v142[12]) = v180;
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      sub_160B4(v191, v143 + v197, &qword_E21E88);
      v144 = (v143 + v142[13]);
      *v144 = v134;
      v144[1] = v135;
      *(v143 + v142[8]) = v185;
      *(v143 + v142[9]) = v174;
      v145 = (v143 + v142[14]);
      v146 = v182;
      *v145 = sub_933E90;
      v145[1] = v146;
      v147 = (v143 + v142[15]);
      v148 = v181;
      *v147 = sub_933FB8;
      v147[1] = v148;
      v149 = (v143 + v142[16]);
      *v149 = sub_933EF8;
      v149[1] = v133;
      v150 = (v143 + v142[17]);
      *v150 = sub_933F0C;
      v150[1] = v138;
      v151 = (v143 + v142[18]);
      *v151 = sub_933F60;
      v151[1] = v140;
      sub_9319C8(v143, v190, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = sub_9269A0(0, v201[2] + 1, 1, v201, &qword_E22570, &unk_B397A0, type metadata accessor for Lyrics.TextLine);
      }

      v26 = v177;
      v152 = v187;
      v31 = &selRef__authenticateReturningError_;
      v13 = v201[2];
      v153 = v201[3];
      v28 = v193;
      v23 = v191;
      v29 = v199;
      if (v13 >= v153 >> 1)
      {
        v201 = sub_9269A0(v153 > 1, v13 + 1, 1, v201, &qword_E22570, &unk_B397A0, type metadata accessor for Lyrics.TextLine);
      }

      v154 = v201;
      v201[2] = v13 + 1;
      sub_931E7C(v190, v154 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v13, type metadata accessor for Lyrics.TextLine);
      sub_931A30(v189, type metadata accessor for Lyrics.TextLine);
      sub_12E1C(v29, &qword_E21E88);

      v30 = v152 + 1;
      if (v186 == v169)
      {
        goto LABEL_102;
      }
    }
  }

  v201 = _swiftEmptyArrayStorage;
LABEL_102:

  return v201;
}