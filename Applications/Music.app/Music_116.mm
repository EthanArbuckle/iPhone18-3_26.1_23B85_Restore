BOOL sub_100C6CA10(uint64_t a1, BOOL a2)
{
  v3 = sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Lyrics.Translation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011BBA58);
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
  sub_1000089F8(v18 + v19, v12, &qword_1011BBA58);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100C7B91C(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v21 = Locale.Language.characterDirection.getter();

    v22 = type metadata accessor for Lyrics.Transliteration;
    v23 = v16;
LABEL_8:
    sub_100C7B560(v23, v22);
    return v21 == 2;
  }

  sub_1000095E8(v12, &qword_1011BBA58);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v18 + v20, v5, &qword_1011BD4F0);
  if ((*(v25 + 48))(v5, 1, v6) != 1)
  {
    sub_100C7B91C(v5, v9, type metadata accessor for Lyrics.Translation);
    v21 = Locale.Language.characterDirection.getter();

    v22 = type metadata accessor for Lyrics.Translation;
    v23 = v9;
    goto LABEL_8;
  }

  sub_1000095E8(v5, &qword_1011BD4F0);
  return a2;
}

uint64_t sub_100C6CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v36 = a2;
  v7 = sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_1011BBA58);
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
  sub_1000089F8(v21 + v22, v15, &qword_1011BBA58);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_100C7B91C(v15, v19, type metadata accessor for Lyrics.Transliteration);
    v25 = *&v19[*(v16 + 28)];
    a4 = v35;
    if (*(v25 + 16) && (v26 = sub_10000F8B8(v36, v34), (v27 & 1) != 0))
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

  sub_1000095E8(v15, &qword_1011BBA58);
  v23 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v21 + v23, v9, &qword_1011BD4F0);
  v24 = (*(v37 + 48))(v9, 1, v10);
  a4 = v35;
  if (v24 != 1)
  {
    sub_100C7B91C(v9, v12, type metadata accessor for Lyrics.Translation);
    v30 = *&v12[*(v10 + 32)];
    if (*(v30 + 16) && (v31 = sub_10000F8B8(v36, v34), (v32 & 1) != 0))
    {
      a4 = *(*(v30 + 56) + 88 * v31);
    }

    else
    {
    }

    v28 = type metadata accessor for Lyrics.Translation;
    v29 = v12;
LABEL_18:
    sub_100C7B560(v29, v28);
    return a4;
  }

  sub_1000095E8(v9, &qword_1011BD4F0);
LABEL_7:

  return a4;
}

uint64_t sub_100C6D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011BBA58);
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
  sub_1000089F8(v20 + v21, v14, &qword_1011BBA58);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_100C7B91C(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v24 = *&v18[*(v15 + 28)];
    v25 = v36;
    if (*(v24 + 16) && (v26 = sub_10000F8B8(v37, v35), (v27 & 1) != 0))
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

  sub_1000095E8(v14, &qword_1011BBA58);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v20 + v22, v8, &qword_1011BD4F0);
  if ((*(v38 + 48))(v8, 1, v9) != 1)
  {
    sub_100C7B91C(v8, v11, type metadata accessor for Lyrics.Translation);
    v30 = *&v11[*(v9 + 32)];
    v31 = v36;
    if (*(v30 + 16) && (v32 = sub_10000F8B8(v37, v35), (v33 & 1) != 0))
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
    sub_100C7B560(v29, v28);
    return v23;
  }

  sub_1000095E8(v8, &qword_1011BD4F0);
  a4 = v36;
LABEL_7:
  swift_beginAccess();
  v23 = *(a4 + 16);

  return v23;
}

double sub_100C6D6A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X3>, _OWORD *a4@<X8>)
{
  v56 = a1;
  v7 = sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011BBA58);
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
  sub_1000089F8(v20 + v21, v14, &qword_1011BBA58);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_100C7B91C(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v28 = *&v18[*(v15 + 28)];
    if (*(v28 + 16) && (v29 = sub_10000F8B8(v56, v53), (v30 & 1) != 0))
    {
      v31 = *(v28 + 56) + 88 * v29;
      v32 = *(v31 + 72);
      v33 = *(v31 + 40);
      v34 = *(v31 + 56);
      v64 = *(v31 + 24);
      v65 = v33;
      v66 = v34;
      v67 = v32;
      sub_1000089F8(&v64, &v68, &qword_1011BBA40);

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
        sub_100C7B560(v38, v37);
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
    sub_1000089F8(&v64, v59, &qword_1011BBA40);
    sub_1000095E8(&v68, &qword_1011BBA40);
    goto LABEL_15;
  }

  sub_1000095E8(v14, &qword_1011BBA58);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v20 + v22, v9, &qword_1011BD4F0);
  v23 = v58;
  v24 = (*(v57 + 48))(v9, 1, v58);
  a4 = v54;
  if (v24 != 1)
  {
    v39 = v55;
    sub_100C7B91C(v9, v55, type metadata accessor for Lyrics.Translation);
    v40 = *(v39 + *(v23 + 32));
    if (*(v40 + 16) && (v41 = sub_10000F8B8(v56, v53), (v42 & 1) != 0))
    {
      v43 = *(v40 + 56) + 88 * v41;
      v44 = *(v43 + 72);
      v45 = *(v43 + 40);
      v46 = *(v43 + 56);
      v64 = *(v43 + 24);
      v65 = v45;
      v66 = v46;
      v67 = v44;
      sub_1000089F8(&v64, &v68, &qword_1011BBA40);

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
    sub_1000089F8(&v64, v59, &qword_1011BBA40);
    sub_1000095E8(&v68, &qword_1011BBA40);
    goto LABEL_22;
  }

  sub_1000095E8(v9, &qword_1011BD4F0);
  swift_beginAccess();
  v25 = a3[1];
  v26 = a3[2];
LABEL_8:
  v68 = v25;
  v69 = v26;
  v27 = a3[4];
  v70 = a3[3];
  v71 = v27;
  sub_1000089F8(&v68, &v64, &qword_1011BBA40);
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

uint64_t sub_100C6DCD4(uint64_t result)
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

  v3 = sub_100C70C94(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1011BC130, &unk_100F0F060, type metadata accessor for Lyrics.TextLine);
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

void *sub_100C6DE24(void *result)
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

  result = sub_100064418(result, v10, 1, v3);
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

  sub_10010FC20(&qword_1011BC0E0);
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

void sub_100C6DF28(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100C78C40(a2, a3, a4);
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

    sub_100C78FF4(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

uint64_t sub_100C6E0F8()
{
  v0 = sub_10010FC20(&qword_1011BBA80);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  Locale.Language.languageCode.getter();
  v6 = type metadata accessor for Locale.LanguageCode();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_1011BBA50);
    return 0;
  }

  else
  {
    v8 = Locale.LanguageCode.identifier.getter();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    v11 = v8 == 26746 && v10 == 0xE200000000000000;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      Locale.Language.script.getter();
      v12 = type metadata accessor for Locale.Script();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v2, 1, v12) == 1)
      {
        sub_1000095E8(v2, &qword_1011BBA80);
      }

      else
      {

        v14 = Locale.Script.identifier.getter();
        v16 = v15;
        (*(v13 + 8))(v2, v12);
        v19[0] = 2975866;
        v19[1] = 0xE300000000000000;
        v17._countAndFlagsBits = v14;
        v17._object = v16;
        String.append(_:)(v17);

        return v19[0];
      }
    }
  }

  return v8;
}

BOOL sub_100C6E398(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100F0F158[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100F0F158[*(*(a2 + 48) + v7)];
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

uint64_t sub_100C6E478()
{

  sub_10010FC20(&qword_1011BBAE0);
  return String.init<A>(describing:)();
}

uint64_t sub_100C6E4C0(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = a3(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  sub_10010FC20(&qword_1011BBAE0);
  return String.init<A>(describing:)();
}

uint64_t sub_100C6E594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  v1 = sub_10010FC20(&qword_1011BBA58);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  if (sub_100C6E398(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v4, v3, &qword_1011BBA58);
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10006B010(v3, v0 + v5, &qword_1011BBA58);
    swift_endAccess();
    v6 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v6, v3, &qword_1011BBA58);
  }

  else
  {
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v8, v3, &qword_1011BBA58);
    v9 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10006B010(v3, v0 + v9, &qword_1011BBA58);
    swift_endAccess();
    v10 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  v7 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10006B010(v3, v0 + v7, &qword_1011BBA58);
  swift_endAccess();
}

uint64_t Lyrics.line(before:useOriginalLines:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_100C6395C(*(v3 + 48));
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

  sub_100008FE4((v6 + 4), &v35);
  v8 = *(&v36 + 1);
  v7 = v37;
  sub_10000954C(&v35, *(&v36 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  sub_10000959C(&v35);
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

  sub_100008FE4(&v6[5 * v10 - 1], &v35);
  sub_10010FC20(&qword_1011BBB08);
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
      sub_10000959C(&v6[5 * v12 - 1]);
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

        sub_100008FE4(&v17[5 * v19], v32);
        v21 = v33;
        v20 = v34;
        sub_10000954C(v32, v33);
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

        sub_100008FE4(&v17[5 * v19 + 5], v29);
        v25 = v30;
        v24 = v31;
        sub_10000954C(v29, v30);
        v26 = (*(*(v24 + 8) + 8))(v25);
        sub_10000959C(v29);
        if (v23 > a3)
        {
          goto LABEL_16;
        }

        v15 = v19 + 1;
        if (v26 >= a3)
        {
LABEL_26:
          sub_1000095E8(&v35, &qword_1011BBB10);
          sub_100008FE4(v32, &v35);
          sub_10000959C(v32);
          goto LABEL_27;
        }

LABEL_17:
        sub_10000959C(v32);
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
    result = sub_100C7634C(v6);
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
  sub_10000954C(a1, v5);
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
  sub_100008FE4(v10 + 32, v11);
  sub_10010FC20(&qword_1011BBB08);
  result = swift_dynamicCast();
  if (result)
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  return sub_100008FE4(v10 + 32, a2);
}

id sub_100C6ECA4()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_1011BBA30 = result;
  return result;
}

uint64_t sub_100C6ECDC()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_1011BBA38 = result;
  return result;
}

void sub_100C6ED1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
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
    v19 = sub_10010FC20(&qword_1011BC1A0);
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

          sub_100015C64(0, v51, 0);
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
              sub_100015C64((v56 > 1), v57 + 1, 1);
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

        sub_10010FC20(&qword_1011BC1D8);
        sub_100020674(&qword_1011BC1E0, &qword_1011BC1D8);
        v29 = BidirectionalCollection<>.joined(separator:)();
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
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v44;

        v45 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100C70594(0, *(v41 + 2) + 1, 1, v41);
        }

        v29 = *(v45 + 2);
        v46 = *(v45 + 3);
        v47 = v45;
        if (v29 >= v46 >> 1)
        {
          v47 = sub_100C70594((v46 > 1), v29 + 1, 1, v45);
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
      v32 = sub_100C70470(0, *(v32 + 2) + 1, 1, v32);
      *a8 = v32;
LABEL_34:
      v62 = *(v32 + 2);
      v61 = *(v32 + 3);
      if (v62 >= v61 >> 1)
      {
        v32 = sub_100C70470((v61 > 1), v62 + 1, 1, v32);
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

uint64_t sub_100C6F31C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1011BB870 != -1)
  {
    swift_once();
  }

  v4 = qword_1011BBA30;
  v5 = String._bridgeToObjectiveC()();
  [v4 setString:v5];

  *a3 = NLTokenizer.tokens(for:)();
}

BOOL sub_100C6F404(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
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

  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = _NSRange.description.getter();
    v21 = sub_1000109A8(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1000109A8(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_1000109A8(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_1000095E8(v24, &qword_1011BC1D0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_100C6F6E0(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
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

  sub_100C713E0(0, v17, 0);
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
      sub_100C713E0((v27 > 1), v28 + 1, 1);
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

uint64_t sub_100C6F968(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_1011BBA48);

  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_1011BD4F0);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_1011BBA58);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_1011BD4F0);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_1011BBA58);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_1011BBA58);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_1011BBA58);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_100C76A18(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    AnyHashable.init<A>(_:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_100C73FE8(v6, 0xD000000000000017, 0x8000000100E69F60, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    AnyHashable.init<A>(_:)();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_100C73FE8(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_1000089F8(a1, v48, &qword_1011BD990);
  if (v49)
  {
    sub_100009F78(0, &qword_1011BBB18);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
                v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    sub_1000095E8(v48, &qword_1011BD990);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100C70214()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.lyrics);
  sub_1000060E4(v0, static Logger.lyrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100C70330(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = sub_100C7B768(v3[1]);

  return v1;
}

char *sub_100C70398(int64_t a1)
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

    return sub_100015C64(result, v5, 0);
  }

  return result;
}

uint64_t sub_100C70410()
{
  sub_10010FC20(&qword_1011BC0E0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_100C70470(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100C70594(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC1A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_100C706BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BC1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_1011BC1B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100C70804(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BC1C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_1011BC1C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C7094C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0F8);
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

char *sub_100C70A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0E8);
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

void *sub_100C70B4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BC110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_1011BBB08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100C70C94(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_10010FC20(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_100C70E70(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BBAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_1011BC128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C70FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0A8);
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

char *sub_100C710A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC098);
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

uint64_t sub_100C711DC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000109A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100C71238(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC170);
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

_BYTE **sub_100C7132C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100C7133C(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_100C7135C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_100C71380(size_t a1, int64_t a2, char a3)
{
  result = sub_100C71460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C713A0(char *a1, int64_t a2, char a3)
{
  result = sub_100C71650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100C713C0(void *a1, int64_t a2, char a3)
{
  result = sub_100C71774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C713E0(char *a1, int64_t a2, char a3)
{
  result = sub_100C718BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71400(char *a1, int64_t a2, char a3)
{
  result = sub_100C719E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71420(char *a1, int64_t a2, char a3)
{
  result = sub_100C71AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71440(char *a1, int64_t a2, char a3)
{
  result = sub_100C71BEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100C71460(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10010FC20(&qword_1011BB9F0);
  v10 = *(sub_10010FC20(&qword_1011BB9E8) - 8);
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
  v15 = *(sub_10010FC20(&qword_1011BB9E8) - 8);
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

char *sub_100C71650(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_100C71774(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_1011BC110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_1011BBB08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C718BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC1A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100C719E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0B0);
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

char *sub_100C71AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0D0);
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

char *sub_100C71BEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_100C71CF0(double *a1)
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return sub_100C71D5C(a1, v2);
}

uint64_t sub_100C71D5C(double *a1, uint64_t a2)
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
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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

uint64_t sub_100C71F4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC148);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

        sub_100C7CC04(v49, v48);
        v50 = *&v49[24];
        v51 = *&v49[40];
        v30 = *&v49[56];
        v31 = *&v49[72];
      }

      v52 = v30;
      v53 = v31;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100C722AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Transliteration(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_1011BC150);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100C7B91C(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_100C7B4F8(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_100C7B91C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Transliteration);
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

uint64_t sub_100C72624(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10010FC20(&qword_1011BC138);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100C7B91C(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_100C7B4F8(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_100C7B91C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Translation);
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

uint64_t sub_100C7299C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC100);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_1000160F8(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100C72C6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC088);
  v53 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      Hasher._combine(_:)(*&v28);
      if (v24 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24;
      }

      Hasher._combine(_:)(*&v29);
      v54 = v25;
      String.hash(into:)();
      v59 = v27;
      v30 = *(v27 + 16);
      Hasher._combine(_:)(v30);
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

          Hasher._combine(_:)(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          Hasher._combine(_:)(*&v38);

          String.hash(into:)();
          Hasher._combine(_:)(v34);
          Hasher._combine(_:)(v35);
          Hasher._combine(_:)(v36);

          --v30;
        }

        while (v30);
      }

      if (v56)
      {
        Hasher._combine(_:)(0);
        v7 = v51;
        v5 = v52;
        v39 = v57;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v39 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v57;
        }

        else
        {
          v40 = 0;
        }

        Hasher._combine(_:)(v40);
        v7 = v51;
        v5 = v52;
      }

      result = Hasher._finalize()();
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

Swift::Int sub_100C73094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0B8);
  v55 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      Hasher._combine(_:)(*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      Hasher._combine(_:)(*&v30);
      v56 = v25;
      String.hash(into:)();
      v60 = v27;
      v31 = *(v27 + 16);
      Hasher._combine(_:)(v31);
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

          Hasher._combine(_:)(*&v33);
          if (v34 == 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v34;
          }

          Hasher._combine(_:)(*&v39);

          String.hash(into:)();
          Hasher._combine(_:)(v35);
          Hasher._combine(_:)(v36);
          Hasher._combine(_:)(v37);

          --v31;
        }

        while (v31);
      }

      if (v57)
      {
        Hasher._combine(_:)(0);
        v7 = v53;
        v40 = v58;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v40 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v41 = v58;
        }

        else
        {
          v41 = 0;
        }

        Hasher._combine(_:)(v41);
        v7 = v53;
      }

      result = Hasher._finalize()();
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

uint64_t sub_100C734C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
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

uint64_t sub_100C73758(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0C0);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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

uint64_t sub_100C739F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC078);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_100016270(v22, v36);
      }

      else
      {
        sub_10000DD18(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

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
      result = sub_100016270(v36, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_100C73CC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F8B8(a2, a3);
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
      return sub_100C7D060(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100C748E8();
    goto LABEL_7;
  }

  sub_100C722AC(v15, a4 & 1);
  v22 = sub_10000F8B8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  sub_100C745DC(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

uint64_t sub_100C73E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F8B8(a2, a3);
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
      return sub_100C7D060(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100C74B40();
    goto LABEL_7;
  }

  sub_100C72624(v15, a4 & 1);
  v22 = sub_10000F8B8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  sub_100C745DC(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

uint64_t sub_100C73FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F8B8(a2, a3);
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
      sub_100C7299C(v16, a4 & 1);
      v11 = sub_10000F8B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100C74D98();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_10040DF5C(a1, v22);
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

unint64_t sub_100C74178(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100C71CF0(a2);
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
      sub_100C72C6C(v14, a3 & 1);
      result = sub_100C71CF0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100C74F4C();
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
  sub_100118E9C(&v28, v26);
  return sub_1000089F8(&v27, v26, &qword_1011BC0A0);
}

uint64_t sub_100C742F4(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100C71CF0(a2);
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
      sub_100C73094(v14, a3 & 1);
      v9 = sub_100C71CF0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_100C750DC();
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
      sub_100118E9C(&v29, v27);
      return sub_1000089F8(&v28, v27, &qword_1011BC0A0);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_100C7449C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002B5A68(a2);
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
      sub_100C75548();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100C739F0(v13, a3 & 1);
    v8 = sub_1002B5A68(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_2(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100C745DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100C7B91C(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
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

unint64_t sub_100C74688(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
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

unint64_t sub_100C746D4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

void *sub_100C74718()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC148);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_100C7CC04(&v33, v32))
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

void *sub_100C748E8()
{
  v1 = v0;
  v2 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BC150);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
        sub_100C7B4F8(*(v4 + 56) + v26, v30, type metadata accessor for Lyrics.Transliteration);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100C7B91C(v25, *(v27 + 56) + v26, type metadata accessor for Lyrics.Transliteration);
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

void *sub_100C74B40()
{
  v1 = v0;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BC138);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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
        sub_100C7B4F8(*(v4 + 56) + v26, v30, type metadata accessor for Lyrics.Translation);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100C7B91C(v25, *(v27 + 56) + v26, type metadata accessor for Lyrics.Translation);
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

void *sub_100C74D98()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC100);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_1000160F8(*(v2 + 56) + 40 * v17, v28);
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

void *sub_100C74F4C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC088);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_100C750DC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_100C7527C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_100C753E4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

id sub_100C75548()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC078);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_10000DD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v19, (*(v4 + 56) + 32 * v17));
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

Swift::Int sub_100C756C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
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

Swift::Int sub_100C75814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = _HashTable.BucketIterator.currentValue.getter();
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
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
    _HashTable.BucketIterator.advance()();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = _HashTable.BucketIterator.currentValue.getter();
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
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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

Swift::Int sub_100C75A70(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_100C75B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_100015C64(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_100015C64((v10 > 1), v11 + 1, 1);
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
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
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

        v14 = _HashTable.copy()();

        *v3 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_100C967B4();
}

uint64_t sub_100C75CFC()
{

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v2 = *(v0[1] + 16);
  if (*v0)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v2)
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

        v4 = _HashTable.copy()();

        *v0 = v4;
        v3 = v4;
      }

      if (v3)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v2 < 0x10)
  {
    return result;
  }

  return sub_100C967CC();
}

uint64_t sub_100C75E34(__int128 *a1)
{
  v2 = v1;
  v18 = a1[1];
  v17 = *(a1 + 4);
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  sub_100118E9C(&v18, v16);
  sub_1000089F8(&v17, v16, &qword_1011BC0A0);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_100C713A0(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_100C713A0((v8 > 1), v9 + 1, 1);
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
    if (static _HashTable.maximumCapacity(forScale:)() > v9)
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

        v15 = _HashTable.copy()();

        *v2 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_100C96870();
}

void sub_100C75FF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_100C96FA4(a1, a2, v20, a3);
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

void *sub_100C7615C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_100C75FF0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100C761EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
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

      Hasher._combine(_:)(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      Hasher._combine(_:)(*&v11);

      String.hash(into:)();
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100C762B8(uint64_t a1, uint64_t a2, uint64_t *a3)
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
  return sub_100059A8C(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_100C76374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC210);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F8B8(v5, v6);
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

unint64_t sub_100C76488(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BC188);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011BC138);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011BC188);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F8B8(*v5, v12);
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
      result = sub_100C7B91C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
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

unint64_t sub_100C76670(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BC180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011BC150);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011BC180);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F8B8(*v5, v12);
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
      result = sub_100C7B91C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
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

unint64_t sub_100C76858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC148);
  v3 = static _DictionaryStorage.allocate(capacity:)();

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
  sub_1000089F8(&v27, v26, &qword_1011BC160);
  result = sub_10000F8B8(v7, v8);
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
    sub_1000089F8(&v27, v26, &qword_1011BC160);
    result = sub_10000F8B8(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100C76A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC100);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v16, &qword_1011BC108);
      v5 = v16;
      v6 = v17;
      result = sub_10000F8B8(v16, v17);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC078);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011BC080);
      v5 = v11;
      result = sub_1002B5A68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100C76C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC088);
    v3 = static _DictionaryStorage.allocate(capacity:)();

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

      result = sub_100C71CF0(&v18);
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

unint64_t sub_100C76DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC0B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

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

      result = sub_100C71CF0(&v18);
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

unint64_t sub_100C76EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC0C0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = sub_1006BE788(*(a1 + 32));
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

    result = sub_1006BE788(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100C77014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC0C8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = sub_1006BE788(v4);
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

    v7 = sub_1006BE788(v15);
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
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100C64098(*(a1 + 32), *(a2 + 32)))
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
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
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
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100C773C4(uint64_t result)
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

uint64_t sub_100C77484(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (!a2)
  {
    goto LABEL_4;
  }

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for Locale.LanguageCode();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &qword_1011BBA50);
LABEL_4:
    v12 = 1;
    return v12 & 1;
  }

  v13 = Locale.LanguageCode.identifier.getter();
  v15 = v14;
  (*(v11 + 8))(v9, v10);
  if (qword_1011BB868 != -1)
  {
    swift_once();
  }

  v16 = sub_10048C9BC(v13, v15, qword_10121C0F8);

  v12 = v16 ^ 1;
  return v12 & 1;
}

Swift::Int sub_100C776BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC118);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      Hasher._combine(_:)(*&v11);
      result = Hasher._finalize()();
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

_UNKNOWN **sub_100C77810(uint64_t a1, uint64_t a2)
{
  v27[1] = a1;
  v3 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale.LanguageCode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  __chkstk_darwin(v17);
  if (!a2)
  {
    return &off_1010F3048;
  }

  v19 = v27 - v18;

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1000095E8(v5, &qword_1011BBA50);
    return &off_1010F3048;
  }

  v21 = v19;
  (*(v11 + 32))(v19, v5, v10);
  (*(v11 + 16))(v16, v19, v10);
  Locale.LanguageCode.init(stringLiteral:)();
  sub_100C7BB04(&qword_1011BC200, &type metadata accessor for Locale.LanguageCode);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  if (v22 & 1) != 0 || (Locale.LanguageCode.init(stringLiteral:)(), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v23(v13, v10), (v24) || (Locale.LanguageCode.init(stringLiteral:)(), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), v23(v13, v10), (v25))
  {
    v23(v16, v10);
  }

  else
  {
    Locale.LanguageCode.init(stringLiteral:)();
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23(v13, v10);
    v23(v16, v10);
    if ((v26 & 1) == 0)
    {
      v23(v21, v10);
      return &off_1010F3020;
    }
  }

  v23(v21, v10);
  return &off_1010F2FF8;
}

void sub_100C77C5C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011BC120);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009F78(0, &qword_1011BBB18);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

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
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009F78(0, &qword_1011BBB18);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

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

char *sub_100C77F4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v137 = a1;
  v138 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v128 = _swiftEmptyArrayStorage;
    v82 = qword_1011BB878;

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
  v8 = 15;
  v7 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptyArrayStorage;
  while (1)
  {
    v118 = v12;
    v111 = String.index(after:)();
    v15 = (v14 & 1) != 0 ? v8 : v114;
    v16 = (v14 & 1) != 0 ? v8 : v11;
    if (v15 >> 14 > String.index(after:)() >> 14)
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
    v22 = sub_10010FC20(&qword_1011BC1A0);
    Array.extractFirst(where:)(v22, &v131);
    v23 = v131;
    String.subscript.getter();
    v24 = Character.isWhitespace.getter();

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
          String.subscript.getter();
          v31 = static String._fromSubstring(_:)();
          v33 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_100C70804(0, v122[2] + 1, 1, v122);
          }

          v35 = v122[2];
          v34 = v122[3];
          v9 = a2;
          if (v35 >= v34 >> 1)
          {
            v122 = sub_100C70804((v34 > 1), v35 + 1, 1, v122);
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
    String.subscript.getter();
    v120 = static String._fromSubstring(_:)();
    v96 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_100C70804(0, v122[2] + 1, 1, v122);
    }

    v75 = v122[2];
    v74 = v122[3];
    if (v75 >= v74 >> 1)
    {
      v122 = sub_100C70804((v74 > 1), v75 + 1, 1, v122);
    }

    v122[2] = v75 + 1;
    v76 = &v122[5 * v75];
    v76[4] = v72;
    v76[5] = v120;
    v76[6] = v96;
    v76[7] = v108;
    v76[8] = v115;
    String.subscript.getter();
    v121 = static String._fromSubstring(_:)();
    v78 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100C706BC(0, v7[2] + 1, 1, v7);
    }

    v80 = v7[2];
    v79 = v7[3];
    if (v80 >= v79 >> 1)
    {
      v7 = sub_100C706BC((v79 > 1), v80 + 1, 1, v7);
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
    if (v28 == String.index(before:)() >> 14 && v12)
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
      String.index(after:)();
      String.subscript.getter();
      v44 = static String._fromSubstring(_:)();
      v46 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_100C70804(0, v122[2] + 1, 1, v122);
      }

      v48 = v122[2];
      v47 = v122[3];
      if (v48 >= v47 >> 1)
      {
        v122 = sub_100C70804((v47 > 1), v48 + 1, 1, v122);
      }

      v122[2] = v48 + 1;
      v49 = &v122[5 * v48];
      v49[4] = v113;
      v49[5] = v44;
      v49[6] = v46;
      v49[7] = v41;
      v49[8] = v43;
      String.index(after:)();
      String.subscript.getter();
      v9 = v50;
      v51 = static String._fromSubstring(_:)();
      v53 = v52;

      v7 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100C706BC(0, v38[2] + 1, 1, v38);
      }

      v55 = v7[2];
      v54 = v7[3];
      v127 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v7 = sub_100C706BC((v54 > 1), v127, 1, v7);
      }

      v7[2] = v127;
      v56 = &v7[5 * v55];
      v56[4] = v51;
      v56[5] = v53;
      v56[6] = v122;
      v56[7] = v104;
      v56[8] = v100;
      v136 = _swiftEmptyArrayStorage;
      sub_100C713A0(0, v127, 0);
      v57 = 0;
      v58 = v136;
      v8 = (v7 + 7);
      v59 = a6;
      while (v57 < v7[2])
      {
        v9 = v7;
        v61 = *(v8 - 16);
        v60 = *v8;
        v128 = *(v8 - 24);
        v129 = v61;
        v130 = v60;
        sub_100C6F6E0(&v128, v59 & 1, &v131);
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
          sub_100C713A0((v67 > 1), v68 + 1, 1);
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
        v8 += 40;
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
  UnfairLock.locked<A>(_:)(sub_100C7D130);
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

      sub_100C6ED1C(*(v90 - 2), v91, a2, a3, &v137, v8, v7, &v138);
      v90 += 2;
      v86 = v92;
    }

    while (v85 != v92);
  }

  swift_beginAccess();
  v94 = v138;

  return v94;
}

char *sub_100C78C40(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    sub_100009F78(0, &qword_1011BC198);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10010FC20(&qword_1011BC1A0);
    v9 = sub_100020674(&qword_1011BC1E8, &qword_1011BC1A0);
    v10 = Sequence.exclude(_:)(sub_100C6FD04, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = sub_100C77484(a2, a3);
  v12 = sub_100C77810(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

  v29 = sub_100C77F4C(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL sub_100C78EB8()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dominantLanguageForString:v5];

  if (!v6)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Locale.Language.init(identifier:)();
  v7 = Locale.Language.characterDirection.getter();

  (*(v1 + 8))(v3, v0);
  return v7 == 2;
}

unint64_t sub_100C78FF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  sub_100009F78(0, &qword_1011BC198);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
  sub_100009F78(0, &qword_1011BC198);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
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
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
  v27 = sub_100C77484(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v28 characterRange];
  v56 = v35;
  v57 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = sub_100C78EB8();

  result = [v28 subwords];
  if (result)
  {
    v39 = result;
    type metadata accessor for Lyrics(0);
    sub_100009F78(0, &qword_1011BC198);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = [v28 lyricsText];
    v42 = a4;
    v43 = v38;
    v44 = v33;
    v45 = v31;
    v46 = [v41 string];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v28 lyricsText];
    v50 = [v49 string];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v31 = v45;
    v33 = v44;
    v38 = v43;
    a4 = v42;
    v54 = sub_100C77F4C(v40, v55, v48, v51, v53, 0, v27 & 1);
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

void *sub_100C7948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
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
  v193 = type metadata accessor for Locale.Language();
  v13 = *(v193 - 8);
  __chkstk_darwin(v193);
  v162 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v158 = &v156 - v16;
  v17 = sub_10010FC20(&qword_1011BBA50);
  __chkstk_darwin(v17 - 8);
  v157 = &v156 - v18;
  v19 = sub_10010FC20(&qword_1011BBA48);
  __chkstk_darwin(v19 - 8);
  v176 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v156 - v22;
  __chkstk_darwin(v24);
  v199 = &v156 - v25;
  *&v205[0] = a1;
  swift_getKeyPath();
  sub_10010FC20(&qword_1011BC1F0);
  sub_100020674(&qword_1011BC1F8, &qword_1011BC1F0);
  v26 = Sequence.sorted<A>(by:comparator:)();

  if (v26 >> 62)
  {
    goto LABEL_109;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v31 = &selRef_trackNumber;
    v201 = _swiftEmptyArrayStorage;
    v191 = v23;
    while (1)
    {
      if (v171)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
          v27 = _CocoaArrayWrapper.endIndex.getter();
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
      sub_100C7F338(v203, v36);
      swift_endAccess();

      v37 = [v36 v31[9]];
      if (!v37)
      {

        goto LABEL_19;
      }

      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      if (v39 == 0x6E6F73726570 && v41 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v43 = [v36 identifier];
        if (v43)
        {
          v44 = v43;
          v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          v30 = v49;
          v31 = &selRef_trackNumber;
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
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
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

      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v183 = v63;
        v184 = v62;
      }

      else
      {
        v183 = 0;
        v184 = 0;
      }

      v187 = v30;
      v64 = [v192 v31[9]];
      v65 = &selRef_primaryVocalText;
      if (v64 != 2)
      {
        v65 = &selRef_lyricsText;
      }

      v66 = v202;
      v67 = [v202 *v65];
      v68 = [v67 string];

      v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v197 = v69;

      v70 = [v66 words];
      if (v70)
      {
        v71 = v70;
        sub_100009F78(0, &qword_1011BC198);
        v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v204[0] = v72;
        v73 = sub_10010FC20(&qword_1011BC1A0);
        v74 = sub_100020674(&qword_1011BC1E8, &qword_1011BC1A0);
        v75 = v73;
        v76 = v178;
        v77 = Sequence.exclude(_:)(sub_100C6FD04, 0, v75, v74);
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
      v26 = String._bridgeToObjectiveC()();
      v82 = [v170 dominantLanguageForString:v26];

      if (v82)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Locale.Language.init(identifier:)();

LABEL_60:
        v194(v23, 0, 1, v28);
        sub_10006B010(v23, v29, &qword_1011BBA48);
        goto LABEL_61;
      }

      v83 = [v192 language];
      if (v83)
      {
        v84 = v83;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        Locale.Language.init(identifier:)();
        v29 = v199;
        goto LABEL_60;
      }

LABEL_61:
      if ([v192 v31[9]] == 2)
      {
        v85 = [objc_opt_self() standardUserDefaults];
        v26 = String._bridgeToObjectiveC()();
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
            Locale.Language.languageCode.getter();
            v92 = v90;
            v93 = v91;
            (*v164)(v92, v28);
            v94 = type metadata accessor for Locale.LanguageCode();
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v93, 1, v94) == 1)
            {
              sub_1000095E8(v93, &qword_1011BBA50);
              v88 = 0;
              v89 = 0;
            }

            else
            {
              v96 = v93;
              v97 = Locale.LanguageCode.identifier.getter();
              v89 = v98;
              v99 = v96;
              v23 = v191;
              (*(v95 + 8))(v99, v94);
              v88 = v97;
            }

            v28 = v193;
          }

          v100 = v202;
          v26 = sub_100C78C40(v202, v88, v89);

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
              v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v106;
            }

            else
            {

              v105 = 0;
              v26 = 0;
            }

            sub_100C78FF4(v102, v105, v26, v205);
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
          sub_1000095E8(v204, &qword_1011BBA40);
        }
      }

      v112 = v176;
      sub_1000089F8(v199, v176, &qword_1011BBA48);
      if ((*v179)(v112, 1, v28) == 1)
      {
        sub_1000095E8(v112, &qword_1011BBA48);
        v113 = v163;
      }

      else
      {
        v114 = v162;
        (*v160)(v162, v112, v28);
        v115 = Locale.Language.characterDirection.getter();
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
        v13 = _CocoaArrayWrapper.endIndex.getter();
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
        v13 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_93;
        }
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v124 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v124 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v125 = *(v77 + 8 * v124 + 32);
      }

LABEL_94:

      [v125 endTime];
      v129 = v128;

      LODWORD(v180) = v201[2] == 0;
      sub_1000089F8(v199, v23, &qword_1011BBA48);
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

      sub_10006B010(v191, v143 + v197, &qword_1011BBA48);
      v144 = (v143 + v142[13]);
      *v144 = v134;
      v144[1] = v135;
      *(v143 + v142[8]) = v185;
      *(v143 + v142[9]) = v174;
      v145 = (v143 + v142[14]);
      v146 = v182;
      *v145 = sub_100C7D1A0;
      v145[1] = v146;
      v147 = (v143 + v142[15]);
      v148 = v181;
      *v147 = sub_100C7D234;
      v147[1] = v148;
      v149 = (v143 + v142[16]);
      *v149 = sub_100C7D1C0;
      v149[1] = v133;
      v150 = (v143 + v142[17]);
      *v150 = sub_100C7D1D0;
      v150[1] = v138;
      v151 = (v143 + v142[18]);
      *v151 = sub_100C7D224;
      v151[1] = v140;
      sub_100C7B4F8(v143, v190, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = sub_100C70C94(0, v201[2] + 1, 1, v201, &qword_1011BC130, &unk_100F0F060, type metadata accessor for Lyrics.TextLine);
      }

      v26 = v177;
      v152 = v187;
      v31 = &selRef_trackNumber;
      v13 = v201[2];
      v153 = v201[3];
      v28 = v193;
      v23 = v191;
      v29 = v199;
      if (v13 >= v153 >> 1)
      {
        v201 = sub_100C70C94(v153 > 1, v13 + 1, 1, v201, &qword_1011BC130, &unk_100F0F060, type metadata accessor for Lyrics.TextLine);
      }

      v154 = v201;
      v201[2] = v13 + 1;
      sub_100C7B91C(v190, v154 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v13, type metadata accessor for Lyrics.TextLine);
      sub_100C7B560(v189, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v29, &qword_1011BBA48);

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

uint64_t sub_100C7A874(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  sub_10010FC20(&qword_1011BC148);
  result = static _DictionaryStorage.copy(original:)();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C7AA84(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v96 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 1)
    {
      v94 = v2;
      v91 = 0;
      v3 = &_swiftEmptySetSingleton;
      v104 = &_swiftEmptySetSingleton;

      __CocoaSet.makeIterator()();
      v4 = __CocoaSet.Iterator.next()();
      if (v4)
      {
        v5 = v4;
        sub_100009F78(0, &qword_1011BBB18);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v98 = v6;
          swift_dynamicCast();
          v8 = [v99 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v99;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            sub_100C80334(v16 + 1);
          }

          v3 = v104;
          v17 = NSObject._rawHashValue(seed:)(v104[5]);
          v18 = (v104 + 7);
          v19 = -1 << *(v104 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v104[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v104[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = __CocoaSet.Iterator.next()();
        }

        while (v6);
      }

      v39 = v96;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v92 = __CocoaSet.count.getter();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v94 = 0;
  v91 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v92 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v92;

  v30 = v28 > 0xD;
  v7 = a1;
  if (v30)
  {
    goto LABEL_130;
  }

LABEL_30:
  v90 = &v90;
  __chkstk_darwin(isStackAllocationSafe);
  v93 = &v90 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v93, v15);
  v95 = 0;
  v31 = 0;
  v33 = *(v7 + 56);
  v7 += 56;
  v32 = v33;
  v34 = 1 << *(v7 - 24);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v36)
        {
          v41 = v31;
          while (1)
          {
            v31 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_129;
            }

            if (v31 >= v37)
            {
              goto LABEL_55;
            }

            v42 = *(v7 + 8 * v31);
            ++v41;
            if (v42)
            {
              v40 = __clz(__rbit64(v42));
              v36 = (v42 - 1) & v42;
              goto LABEL_44;
            }
          }
        }

        v40 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
LABEL_44:
        v43 = v40 | (v31 << 6);
        v15 = *(*(v96 + 48) + 8 * v43);
        v44 = [v15 type];
        if (v44)
        {
          break;
        }
      }

      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      if (v46 == 0x6E6F73726570 && v48 == 0xE600000000000000)
      {

        break;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((v50 & 1) == 0);
    *&v93[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
  }

  while (!__OFADD__(v95++, 1));
  __break(1u);
LABEL_55:
  v39 = v96;
  v3 = sub_100C96FA4(v93, v92, v95, v96);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v92 = *(v3 + 16);
LABEL_57:

    if (v94)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_1011BBB18);
      sub_100C7D0C8();
      Set.Iterator.init(_cocoa:)();
      v39 = v99;
      v95 = v100;
      v15 = v101;
      v7 = v102;
      v52 = v103;
    }

    else
    {
      v53 = -1 << *(v39 + 32);
      v54 = *(v39 + 56);
      v95 = v39 + 56;
      v15 = ~v53;
      v55 = -v53;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v52 = v56 & v54;

      v7 = 0;
    }

    v93 = v15;
    v57 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v39 < 0)
        {
          v61 = __CocoaSet.Iterator.next()();
          if (!v61 || (v98 = v61, sub_100009F78(0, &qword_1011BBB18), swift_dynamicCast(), (v60 = v104) == 0))
          {
LABEL_81:
            sub_10005C9F8();
            LODWORD(v93) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v58 = v7;
          for (i = v52; !i; ++v58)
          {
            v7 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v57)
            {
              goto LABEL_81;
            }

            i = *(v95 + 8 * v7);
          }

          v52 = (i - 1) & i;
          v60 = *(*(v39 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v60)
          {
            goto LABEL_81;
          }
        }

        v62 = [v60 type];
        if (v62)
        {
          break;
        }
      }

      v63 = v62;
      v64 = v39;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v15 == 0x70756F7267 && v66 == 0xE500000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = v64;
      if (v15)
      {
        goto LABEL_118;
      }
    }

LABEL_118:
    sub_10005C9F8();
    LODWORD(v93) = 0;
LABEL_82:
    v68 = v96;
    if (v94)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_1011BBB18);
      sub_100C7D0C8();
      Set.Iterator.init(_cocoa:)();
      v68 = v104;
      v95 = v105;
      v7 = v106;
      v69 = v107;
      v70 = v108;
    }

    else
    {
      v71 = -1 << *(v96 + 32);
      v72 = *(v96 + 56);
      v95 = v96 + 56;
      v7 = ~v71;
      v73 = -v71;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v70 = v74 & v72;

      v69 = 0;
    }

    v96 = v7;
    v75 = (v7 + 64) >> 6;
LABEL_90:
    if (v68 < 0)
    {
      v79 = __CocoaSet.Iterator.next()();
      if (!v79 || (v97 = v79, sub_100009F78(0, &qword_1011BBB18), swift_dynamicCast(), (v78 = v98) == 0))
      {
LABEL_106:
        sub_10005C9F8();
        if (v92 == 2)
        {
          v86 = 1;
        }

        else
        {
          v86 = 2;
        }

        if (v92 == 1)
        {
          v86 = 0;
        }

        if (v92 >= 3)
        {
          v87 = 2;
        }

        else
        {
          v87 = 0x10000u >> (8 * v92);
        }

        if (v93)
        {
          return v86;
        }

        else
        {
          return v87;
        }
      }
    }

    else
    {
      v76 = v69;
      v77 = v70;
      if (!v70)
      {
        while (1)
        {
          v69 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          if (v69 >= v75)
          {
            goto LABEL_106;
          }

          v77 = *(v95 + 8 * v69);
          ++v76;
          if (v77)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v88 = swift_slowAlloc();
          v89 = v91;
          v3 = sub_100C7615C(v88, v92, v7, sub_100C6F968);
          v91 = v89;

          v39 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v70 = (v77 - 1) & v77;
      v78 = *(*(v68 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v77)))));
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v80 = [v78 type];
  if (!v80)
  {

    goto LABEL_90;
  }

  v81 = v80;
  v7 = v68;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  if (v82 != 0x726568746FLL || v84 != 0xE500000000000000)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v68 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

LABEL_120:
  sub_10005C9F8();
  if (v93)
  {
    if (v92 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v92);
    }
  }

  else if (v92 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}