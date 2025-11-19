uint64_t sub_1001C60E4(uint64_t a1)
{
  v2 = sub_1001C73C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C6120(void *a1)
{
  v3 = v1;
  v5 = sub_10007EBC0(&qword_1006B5FE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000244BC(a1, a1[3]);
  sub_1001C73C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v12 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_label);
    v11 = 1;
    sub_10007EBC0(&qword_1006AF8F0);
    sub_1001C7414(&qword_1006B5FF0, &qword_1006AF8F0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName);
    v11 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName);
    v11 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_nickname);
    v11 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_fullName);
    v11 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself);
    v11 = 6;
    sub_10007EBC0(&qword_1006B14D8);
    sub_1001C7414(&qword_1006B5FF8, &qword_1006B14D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1001C64A0(void *a1)
{
  v3 = v1;
  v5 = sub_10007EBC0(&qword_1006B5FD8);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_givenName];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_familyName];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_nickname];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName];
  *v12 = 0;
  v12[1] = 0;
  v3[OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself] = 2;
  *&v3[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram] = 0;
  v13 = a1[3];
  v38 = a1;
  sub_1000244BC(a1, v13);
  sub_1001C73C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v40 = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = &v3[OBJC_IVAR____TtC6FindMy11FMRecipient_handle];
    *v15 = v14;
    v15[1] = v16;
    v17 = type metadata accessor for FMRecipient();
    v39.receiver = v3;
    v39.super_class = v17;
    v18 = objc_msgSendSuper2(&v39, "init");
    v40 = 1;
    v19 = v18;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
    *v21 = v20;
    v21[1] = v22;

    v40 = 2;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_givenName];
    *v24 = v23;
    v24[1] = v25;

    v40 = 3;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_familyName];
    *v27 = v26;
    v27[1] = v28;

    v40 = 4;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_nickname];
    *v30 = v29;
    v30[1] = v31;

    v40 = 5;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName];
    *v33 = v32;
    v33[1] = v34;

    v40 = 6;
    LOBYTE(v27) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    (*(v37 + 8))(v7, v5);
    v19[OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself] = v27;

    sub_100006060(v38);
    return v19;
  }

  return result;
}

char *sub_1001C69FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, char a6, char a7)
{
  v10 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_givenName];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_familyName];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_nickname];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName];
  *v14 = 0;
  v14[1] = 0;
  v7[OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself] = 2;
  v15 = OBJC_IVAR____TtC6FindMy11FMRecipient_monogram;
  *&v7[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram] = 0;
  if ([a5 contactType])
  {

    type metadata accessor for FMRecipient();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = &v7[OBJC_IVAR____TtC6FindMy11FMRecipient_handle];
  *v18 = a1;
  v18[1] = a2;
  v70.receiver = v7;
  v70.super_class = type metadata accessor for FMRecipient();

  v19 = objc_msgSendSuper2(&v70, "init");
  v20 = &v19[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
  *v20 = a3;
  *(v20 + 1) = a4;
  v17 = v19;

  v21 = a5;
  v22 = [a5 givenName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = &v17[OBJC_IVAR____TtC6FindMy11FMRecipient_givenName];
  *v26 = v23;
  v26[1] = v25;

  v27 = [v21 familyName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v17[OBJC_IVAR____TtC6FindMy11FMRecipient_familyName];
  *v31 = v28;
  v31[1] = v30;

  v32 = [v21 nickname];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = &v17[OBJC_IVAR____TtC6FindMy11FMRecipient_nickname];
  *v36 = v33;
  v36[1] = v35;

  v37 = [objc_opt_self() stringFromContact:v21 style:0];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

LABEL_8:
    v53 = &v17[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName];
    *v53 = v39;
    v53[1] = v41;

    v17[OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself] = a7;
    if (a6)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v54 = qword_1006D47A0 == 1;
      v55 = objc_opt_self();
      v56 = [objc_opt_self() mainScreen];
      [v56 scale];
      v58 = v57;

      v59 = [v55 scopeWithPointSize:v54 scale:0 rightToLeft:128.0 style:{128.0, v58}];
      if (qword_1006AEAE8 != -1)
      {
        swift_once();
      }

      v60 = qword_1006B5F68;
      sub_10007EBC0(&qword_1006AFC30);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1005528C0;
      *(v61 + 32) = v21;
      sub_1001C8788();
      v62 = v21;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v64 = [v60 avatarImageForContacts:isa scope:v59];

      swift_unknownObjectRelease();
      v65 = *&v17[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram];
      *&v17[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram] = v64;
    }

    else
    {

      v65 = v17;
    }

    return v17;
  }

  v42 = [objc_opt_self() mainBundle];
  v71._object = 0x80000001005850E0;
  v43._object = 0x80000001005850C0;
  v71._countAndFlagsBits = 0xD00000000000002FLL;
  v43._countAndFlagsBits = 0xD00000000000001DLL;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v71);

  sub_10007EBC0(&unk_1006B20B0);
  result = swift_allocObject();
  *(result + 1) = xmmword_100552210;
  v46 = v26[1];
  if (v46)
  {
    v47 = result;
    v48 = *v26;
    *(result + 7) = &type metadata for String;
    result = sub_10008EE84();
    *(v47 + 8) = result;
    *(v47 + 4) = v48;
    *(v47 + 5) = v46;
    v49 = v31[1];
    if (v49)
    {
      v50 = result;
      v51 = *v31;

      *(v47 + 12) = &type metadata for String;
      *(v47 + 13) = v50;
      *(v47 + 9) = v51;
      *(v47 + 10) = v49;
      v39 = String.init(format:_:)();
      v41 = v52;

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001C704C()
{
  _StringGuts.grow(_:)(24);

  swift_getObjectType();
  sub_10007EBC0(&qword_1006B6000);
  v1._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x656C646E6168202CLL;
  v2._object = 0xE90000000000003DLL;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle + 8);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2564140;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName + 8);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName);

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName + 8);
    if (v11)
    {
      v12 = *(v0 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName);

      v13._countAndFlagsBits = v12;
      v13._object = v11;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 15911;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      String.init(format:_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1001C723C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRecipient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001C7348@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for FMRecipient());
  result = sub_1001C64A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001C73C0()
{
  result = qword_1006B5FE0;
  if (!qword_1006B5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5FE0);
  }

  return result;
}

uint64_t sub_1001C7414(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007EC08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1001C747C(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v147 = a4;
  v139 = a2;
  v160 = type metadata accessor for CharacterSet();
  v6 = *(v160 - 8);
  v7 = __chkstk_darwin(v160);
  v158 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v132 - v9;
  v170 = _swiftEmptyArrayStorage;
  type metadata accessor for FMContactsUtilities();
  sub_100477134(&v171);
  v10 = v171;
  v132 = a1;
  if (v171)
  {

    v11 = sub_100478030(v10);
    v12 = v11[2];
    if (v12)
    {
      v164 = a3;
      v165 = v6;
      v168 = _swiftEmptyArrayStorage;
      sub_10016715C(0, v12, 0);
      v13 = v168;
      v14 = v11 + 5;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v168 = v13;
        v18 = v13[2];
        v17 = v13[3];

        if (v18 >= v17 >> 1)
        {
          sub_10016715C((v17 > 1), v18 + 1, 1);
          v13 = v168;
        }

        v13[2] = v18 + 1;
        v19 = &v13[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
        v14 += 6;
        --v12;
      }

      while (v12);

      a1 = v132;
      a3 = v164;
      v6 = v165;
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v168 = v20;

  sub_100493DD4(v13);
  v161 = v168;
  if (a1 >> 62)
  {
    goto LABEL_133;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  if (v21)
  {
    v22 = 0;
    v23 = a1;
    a1 = 0;
    v138 = v23 & 0xC000000000000001;
    v137 = v23 & 0xFFFFFFFFFFFFFF8;
    v136 = v23 + 32;
    v134 = v139 + 32;
    v133 = kCFAllocatorDefault;
    v159 = (v6 + 8);
    v152 = v161 + 5;
    v143 = _swiftEmptyArrayStorage;
    v135 = v21;
    while (1)
    {
      if (v138)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v137 + 16))
        {
          goto LABEL_130;
        }

        v24 = *(v136 + 8 * v22);
      }

      v148 = v24;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_129;
      }

      v141 = v22 + 1;
      v25 = v148;
      v26 = [v148 phoneNumbers];
      sub_10007EBC0(&unk_1006BC970);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = [v25 emailAddresses];
      v151 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v139)
      {
        if (v22 >= *(v139 + 16))
        {
          goto LABEL_131;
        }

        v29 = (v134 + 16 * v22);
        v6 = *v29;
        v30 = v29[1];
        swift_bridgeObjectRetain_n();
        static CharacterSet.decimalDigits.getter();
        v31._countAndFlagsBits = 0x2D232A29282BLL;
        v31._object = 0xE600000000000000;
        CharacterSet.insert(charactersIn:)(v31);
        v168 = v6;
        v169 = v30;
        sub_100035F3C();
        StringProtocol.rangeOfCharacter(from:options:range:)();
        if (v32)
        {

          v33 = v30;
          v34 = v6;
        }

        else
        {
          v168 = v6;
          v169 = v30;
          v36 = String.Index.utf16Offset<A>(in:)();
          v37 = String.count.getter();
          v38 = v37 - v36;
          if (__OFSUB__(v37, v36))
          {
            goto LABEL_132;
          }

          v39 = String._bridgeToObjectiveC()();
          v40 = [v39 substringWithRange:{v36, v38}];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v41;
        }

        v35 = v30;
        v42 = HIBYTE(v33) & 0xF;
        v144 = v34;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v42 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v42)
        {
          sub_1001230FC();
          v43 = String._bridgeToObjectiveC()();
          v44 = String._bridgeToObjectiveC()();

          v45 = CFPhoneNumberCreate();

          if (!v45)
          {
            (*v159)(v140, v160);

LABEL_39:
            v35 = v30;
            goto LABEL_40;
          }

          v46 = v45;
          String = CFPhoneNumberCreateString();
          if (!String)
          {
            (*v159)(v140, v160);

            goto LABEL_39;
          }

          v48 = String;

          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v49;

          (*v159)(v140, v160);
          v35 = v30;
        }

        else
        {
          (*v159)(v140, v160);
        }
      }

      else
      {
        v144 = 0;
        v33 = 0;
        v6 = 0;
        v35 = 0;
      }

LABEL_40:
      v142 = v6;
      if (v27 >> 62)
      {
        v50 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v50 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v154 = v35;
      if (v50)
      {
        v51 = 0;
        v155 = v27 & 0xC000000000000001;
        v146 = v27 & 0xFFFFFFFFFFFFFF8;
        v145 = v27 + 32;
        v150 = v27;
        v149 = v33;
        v153 = v50;
        do
        {
          if (v155)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v53 = __OFADD__(v51, 1);
            v54 = (v51 + 1);
            if (v53)
            {
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
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
LABEL_133:
              v21 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_15;
            }
          }

          else
          {
            if (v51 >= *(v146 + 16))
            {
              goto LABEL_127;
            }

            v52 = *(v145 + 8 * v51);
            v53 = __OFADD__(v51, 1);
            v54 = (v51 + 1);
            if (v53)
            {
              goto LABEL_125;
            }
          }

          v157 = v54;
          v55 = v52;
          v56 = [v52 value];
          v57 = [v56 stringValue];

          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v61 = v58 & 0xFFFFFFFFFFFFLL;
          }

          if (v61)
          {
            v156 = v55;
            v62 = sub_1001235AC(v58, v60);
            v64 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v64 = v62 & 0xFFFFFFFFFFFFLL;
            }

            if (v64)
            {
              v65 = v63;
            }

            else
            {
              v65 = v60;
            }

            if (v64)
            {
              v66 = v62;
            }

            else
            {
              v66 = v58;
            }

            v165 = v66;

            v67 = v161[2] + 1;
            v68 = v152;
            while (--v67)
            {
              v70 = *(v68 - 1);
              v71 = *v68;

              v72 = static String.emailPredicate.getter();
              v6 = String._bridgeToObjectiveC()();
              v73 = [v72 evaluateWithObject:v6];

              if (v73)
              {
                v168 = v70;
                v169 = v71;
                v166 = v165;
                v167 = v65;
                sub_100035F3C();
                v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();
              }

              else
              {
                v74 = v158;
                static CharacterSet.decimalDigits.getter();
                CharacterSet.insert(_:)();

                v75 = sub_100123328(v70, v71, v74);
                v163 = v76;
                v164 = v75;

                v6 = v160;
                v77 = *v159;
                (*v159)(v74, v160);
                static CharacterSet.decimalDigits.getter();
                CharacterSet.insert(_:)();

                v162 = sub_100123328(v165, v65, v74);
                v79 = v78;

                v77(v74, v6);
                v168 = v164;
                v169 = v163;
                v166 = v162;
                v167 = v79;
                sub_100035F3C();
                v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();
              }

              v68 += 2;
              if (!v69)
              {
                goto LABEL_75;
              }
            }

            v80 = v149;
            if (v149 && (v144 != v165 || v149 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_75;
            }

            v81 = [v156 label];
            if (v81)
            {
              v82 = v81;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

            v83 = objc_opt_self();
            v84 = String._bridgeToObjectiveC()();

            v85 = [v83 localizedStringForLabel:v84];

            v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v88 = v87;

            v89 = objc_allocWithZone(type metadata accessor for FMRecipient());

            v90 = v148;
            v91 = sub_1001C69FC(v165, v65, v86, v88, v90, v147 & 1, 2);
            if (v91)
            {
              v92 = v91;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v143 = v170;

              if (v80)
              {
                break;
              }
            }

            else
            {
LABEL_75:
            }
          }

          else
          {
          }

          v51 = v157;
        }

        while (v157 != v153);
      }

      v93 = v151;
      if (v151 >> 62)
      {
        v130 = _CocoaArrayWrapper.endIndex.getter();
        v93 = v151;
        v94 = v130;
        if (v130)
        {
LABEL_84:
          v95 = 0;
          v150 = v93 & 0xC000000000000001;
          v146 = v93 & 0xFFFFFFFFFFFFFF8;
          v145 = v93 + 32;
          v149 = v94;
          do
          {
            if (v150)
            {
              v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v53 = __OFADD__(v95, 1);
              v97 = v95 + 1;
              if (v53)
              {
                goto LABEL_126;
              }
            }

            else
            {
              if (v95 >= *(v146 + 16))
              {
                goto LABEL_128;
              }

              v96 = *(v145 + 8 * v95);
              v53 = __OFADD__(v95, 1);
              v97 = v95 + 1;
              if (v53)
              {
                goto LABEL_126;
              }
            }

            v155 = v97;
            v98 = v96;
            v99 = [v96 value];
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v101;

            v102 = HIBYTE(v6) & 0xF;
            v164 = v100;
            v165 = v6;
            if ((v6 & 0x2000000000000000) == 0)
            {
              v102 = v100 & 0xFFFFFFFFFFFFLL;
            }

            if (v102)
            {
              v153 = v98;
              v103 = -v161[2];
              v104 = -1;
              v105 = v152;
              v156 = v103;
              while (v103 + v104 != -1)
              {
                if (++v104 >= v161[2])
                {
                  __break(1u);
                  goto LABEL_125;
                }

                v115 = *(v105 - 1);
                v116 = *v105;

                v117 = static String.emailPredicate.getter();
                v118 = String._bridgeToObjectiveC()();
                v6 = [v117 evaluateWithObject:v118];

                if (v6)
                {
                  v168 = v115;
                  v169 = v116;
                  v166 = v164;
                  v167 = v165;
                  sub_100035F3C();
                  v114 = StringProtocol.caseInsensitiveCompare<A>(_:)();
                }

                else
                {
                  v106 = v158;
                  static CharacterSet.decimalDigits.getter();
                  CharacterSet.insert(_:)();

                  v107 = sub_100123328(v115, v116, v106);
                  v162 = v108;
                  v163 = v107;

                  v109 = v160;
                  v157 = *v159;
                  v110 = v165;
                  v157(v106, v160);
                  static CharacterSet.decimalDigits.getter();
                  CharacterSet.insert(_:)();

                  v111 = sub_100123328(v164, v110, v106);
                  v113 = v112;

                  v157(v106, v109);
                  v103 = v156;
                  v6 = v162;
                  v168 = v163;
                  v169 = v162;
                  v166 = v111;
                  v167 = v113;
                  sub_100035F3C();
                  v114 = StringProtocol.caseInsensitiveCompare<A>(_:)();
                }

                v105 += 2;
                if (!v114)
                {

                  goto LABEL_86;
                }
              }

              if (v154 && (v142 != v164 || v154 != v165) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {

LABEL_116:

                goto LABEL_86;
              }

              v119 = [v153 label];
              if (v119)
              {
                v120 = v119;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v121 = objc_opt_self();
              v122 = String._bridgeToObjectiveC()();

              v123 = [v121 localizedStringForLabel:v122];

              v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v6 = v125;

              v126 = objc_allocWithZone(type metadata accessor for FMRecipient());
              v127 = v148;
              v128 = sub_1001C69FC(v164, v165, v124, v6, v127, v147 & 1, 2);
              if (!v128)
              {
                goto LABEL_116;
              }

              v129 = v128;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v143 = v170;
              if (v154)
              {

                goto LABEL_18;
              }
            }

            else
            {
            }

LABEL_86:
            v95 = v155;
          }

          while (v155 != v149);
        }
      }

      else
      {
        v94 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
          goto LABEL_84;
        }
      }

LABEL_18:

      v22 = v141;
      if (v141 == v135)
      {
        goto LABEL_123;
      }
    }
  }

  v143 = _swiftEmptyArrayStorage;
LABEL_123:

  return v143;
}

id sub_1001C8604(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_label];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_givenName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_familyName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_nickname];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_fullName];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself;
  v1[OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself] = 2;
  *&v1[OBJC_IVAR____TtC6FindMy11FMRecipient_monogram] = 0;
  v10 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle);
  v9 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_handle + 8);
  v11 = &v1[OBJC_IVAR____TtC6FindMy11FMRecipient_handle];
  *v11 = v10;
  v11[1] = v9;
  v12 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_label + 8);
  *v3 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_label);
  v3[1] = v12;
  v13 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName + 8);
  *v4 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_givenName);
  v4[1] = v13;
  v14 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName + 8);
  *v5 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_familyName);
  v5[1] = v14;
  v15 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_nickname + 8);
  *v6 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_nickname);
  v6[1] = v15;

  v16 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_fullName + 8);
  *v7 = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_fullName);
  v7[1] = v16;

  v1[v8] = *(a1 + OBJC_IVAR____TtC6FindMy11FMRecipient_isMyself);
  v18.receiver = v1;
  v18.super_class = type metadata accessor for FMRecipient();
  return objc_msgSendSuper2(&v18, "init");
}

unint64_t sub_1001C8788()
{
  result = qword_1006BFD00;
  if (!qword_1006BFD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BFD00);
  }

  return result;
}

unint64_t sub_1001C87E8()
{
  result = qword_1006B6008;
  if (!qword_1006B6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6008);
  }

  return result;
}

unint64_t sub_1001C8840()
{
  result = qword_1006B6010;
  if (!qword_1006B6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6010);
  }

  return result;
}

unint64_t sub_1001C8898()
{
  result = qword_1006B6018;
  if (!qword_1006B6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6018);
  }

  return result;
}

unint64_t sub_1001C88EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1006222D8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C8938()
{
  type metadata accessor for FMSystemDirectoryUtilities();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  sysdir_get_next_search_path_enumeration(started, v1);
  v3 = String.init(cString:)();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  qword_1006D4038 = v0;
  return result;
}

uint64_t sub_1001C89C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001C8A1C(uint64_t a1, uint64_t a2, char a3)
{
  v24 = a2;
  v4 = type metadata accessor for FMIPItemImageSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItemRole();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FMIPItemImageCacheRequest();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = &selRef_systemGray3Color;
  if ((a3 & 1) == 0)
  {
    v16 = &selRef_systemBackgroundColor;
  }

  v17 = [v15 *v16];
  FMIPItem.role.getter();
  v18 = FMIPItemRole.emoji.getter();
  v23[0] = v19;
  v23[1] = v18;
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, v24, v4);
  v20 = [objc_opt_self() mainScreen];
  [v20 scale];

  v21 = [v17 CGColor];

  FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)();

  dispatch thunk of FMImageCache.cachedImage(for:completion:)();
  (*(v12 + 8))(v14, v25);
  return v26;
}

uint64_t sub_1001C8D24(unint64_t a1, void *a2, char a3)
{
  v31 = a2;
  v5 = type metadata accessor for FMIPItem();
  v29 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      v10 = *(result + 16);
      sub_1000C5220(v31, 0);

      os_unfair_lock_lock((v10 + 24));
      v11 = *(v10 + 16);

      os_unfair_lock_unlock((v10 + 24));

      if (v11 >> 62)
      {
        goto LABEL_21;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v13 = FMIPManager.items.getter();
          __chkstk_darwin(v13);
          v22[-2] = a1;
          v14 = sub_1003F8234(sub_1001C92F8, &v22[-4], v13);
          v22[1] = 0;

          v27 = v14[2];
          v28 = v14;
          if (!v27)
          {
LABEL_18:

            sub_1000C522C(v31, 0);
            swift_unknownObjectRelease();
          }

          if (v12 < 1)
          {
            break;
          }

          v15 = 0;
          v25 = v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
          a1 = v11 & 0xC000000000000001;
          v23 = (v29 + 8);
          v24 = v29 + 16;
          v26 = v5;
          while (v15 < v28[2])
          {
            v16 = *(v29 + 72);
            v30 = v15;
            (*(v29 + 16))(v8, &v25[v16 * v15], v5);
            for (i = 0; i != v12; ++i)
            {
              if (a1)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v20 = *(v11 + 8 * i + 32);
              }

              v21 = v20 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v18 = *(v21 + 8);
                ObjectType = swift_getObjectType();
                (*(v18 + 112))(v9, v31, v8, ObjectType, v18);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            v15 = v30 + 1;
            v5 = v26;
            (*v23)(v8, v26);
            if (v15 == v27)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_21:
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if (!v12)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_22:
        sub_1000C522C(v31, 0);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1001C90B4()
{

  v1 = v0 + qword_1006B60E8;

  return sub_10005CD20(v1);
}

uint64_t sub_1001C90F8()
{
  v0 = FMIPItemImageCache.deinit();

  sub_10005CD20(v0 + qword_1006B60E8);

  return swift_deallocClassInstance();
}

void sub_1001C916C()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id sub_1001C91BC()
{
  v0 = type metadata accessor for FMIPProductType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.productType.getter();
  FMIPProductType.isAirTag.getter();
  (*(v1 + 8))(v3, v0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() imageNamed:v4];

  return v5;
}

double sub_1001C9364()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 systemWhiteColor];
  v3 = [v0 clearColor];
  v4 = [v0 systemBlueColor];
  v5 = [v0 systemBlueColor];
  qword_1006D4050 = v1;
  qword_1006D4058 = v2;
  qword_1006D4060 = v3;
  qword_1006D4068 = v4;
  qword_1006D4070 = v5;
  result = 5.0;
  *&qword_1006D4078 = xmmword_100558400;
  return result;
}

id sub_1001C943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25.receiver = v4;
  v25.super_class = type metadata accessor for FMStickyRoundedButton();
  v8 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = v8;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setTitle:v10 forState:0];

  sub_10017EE08(a3, v23);
  v11 = v24;
  if (v24)
  {
    v12 = sub_1000244BC(v23, v24);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v11);
    sub_100006060(v23);
  }

  else
  {
    v16 = 0;
  }

  [v8 addTarget:v16 action:a4 forControlEvents:64];
  swift_unknownObjectRelease();
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEAF8 != -1)
  {
    swift_once();
  }

  v17 = qword_1006D4050;
  [v8 setContentEdgeInsets:{unk_1006D4080, *&qword_1006D4078, unk_1006D4080, *&qword_1006D4078}];
  v18 = [v8 titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() preferredFontForTextStyle:v17];
    [v19 setFont:v20];
  }

  [v8 setTitleColor:qword_1006D4068 forState:0];
  v21 = qword_1006D4058;
  [v8 setTitleColor:qword_1006D4058 forState:1];
  [v8 setTitleColor:v21 forState:4];

  sub_10000D2C0(a3);
  return v8;
}

void sub_1001C9850(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  v11 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, a4 * 0.25}];
  if (([v4 isHighlighted] & 1) != 0 || objc_msgSend(v4, "isSelected"))
  {
    v10 = &qword_1006D4070;
    if (qword_1006AEAF8 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = &qword_1006D4060;
    if (qword_1006AEAF8 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  [*v10 set];
  [v11 fill];
}

id sub_1001C9AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMStickyRoundedButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1001C9B2C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  result = 0.0;
  xmmword_1006D4090 = xmmword_100558470;
  unk_1006D40A0 = xmmword_100558480;
  qword_1006D40B0 = 0x4030000000000000;
  qword_1006D40B8 = v1;
  dword_1006D40C0 = 1031127695;
  qword_1006D40D0 = 0;
  unk_1006D40D8 = 0;
  qword_1006D40C8 = 0x4030000000000000;
  return result;
}

void sub_1001C9BC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden);
  v2 = objc_opt_self();
  sub_10002B27C();
  if (v1 == 1)
  {

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:isa];

    v4 = *(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton);

    [v4 removeFromSuperview];
  }

  else
  {

    v5 = Array._bridgeToObjectiveC()().super.isa;

    [v2 activateConstraints:v5];
  }
}

void sub_1001C9CE4()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden) == 1)
  {
    v1 = objc_opt_self();
    sub_10002B27C();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 activateConstraints:isa];

    v3 = Array._bridgeToObjectiveC()().super.isa;

    [v1 deactivateConstraints:v3];

    [*(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView) setHidden:1];
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator);

    [v4 setHidden:1];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView) setHidden:0];
    [*(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator) setHidden:0];
    v5 = objc_opt_self();
    sub_10002B27C();

    v6 = Array._bridgeToObjectiveC()().super.isa;

    [v5 deactivateConstraints:v6];

    v7 = Array._bridgeToObjectiveC()().super.isa;

    [v5 activateConstraints:v7];
  }
}

char *sub_1001C9F00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_sharedLockupViewGroup;
  v3 = objc_allocWithZone(ASCLockupViewGroup);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithName:v4];

  *&v1[v2] = v5;
  v6 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView;
  *&v1[v6] = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_contentStackView;
  *&v1[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_secondaryStackView;
  *&v1[v8] = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for FMActionAndInfoButton()) init];
  v10 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator;
  *&v1[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_platterBackgroundView;
  v12 = type metadata accessor for FMPlatterBackgroundView();
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v24.receiver = v13;
  v24.super_class = v12;
  v14 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v11] = v14;
  *&v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonShowingConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewShowingContstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewHiddenConstraints] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden] = 1;
  v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden] = 0;
  v15 = &v1[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_displayedAppBundleID];
  v16 = type metadata accessor for FMPlatterAppStoreInfoAndButtonGroupView();
  *v15 = 0;
  v15[1] = 0;
  v23.receiver = v1;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *&v17[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton];
  v19 = v17;
  v20 = v18;
  v21 = String._bridgeToObjectiveC()();

  [v20 setTitle:v21 forState:0];

  (*((swift_isaMask & *v19) + 0x190))();
  sub_1001CA7C4();
  (*((swift_isaMask & *v19) + 0x1A0))();

  return v19;
}

void sub_1001CA254()
{
  v1 = [v0 layer];
  v35 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v36 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v34);
  v4 = _UISheetCornerRadius;
  if (v3)
  {
    v4 = 26.0;
  }

  [v1 setCornerRadius:v4];

  v5 = [v0 layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];

  v6 = [v0 layer];
  [v6 setMasksToBounds:0];

  v35 = &type metadata for SolariumFeatureFlag;
  v36 = v2;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v34);
  if (v7)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_platterBackgroundView]];
  }

  else
  {
    v8 = [v0 layer];
    [v8 setShouldRasterize:1];

    v9 = [v0 layer];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v9 setRasterizationScale:v12];
    v13 = [v0 layer];
    if (qword_1006AEB00 != -1)
    {
      swift_once();
    }

    [v13 setShadowColor:qword_1006D40B8];

    v14 = [v0 layer];
    LODWORD(v15) = dword_1006D40C0;
    [v14 setShadowOpacity:v15];

    v16 = [v0 layer];
    [v16 setShadowRadius:*&qword_1006D40C8];

    v17 = [v0 layer];
    [v17 setShadowOffset:{*&qword_1006D40D0, unk_1006D40D8}];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v18 = [v0 traitCollection];
  v19 = sub_100356E0C(v18);

  [v0 setBackgroundColor:v19];
  v20 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_contentStackView];
  [v20 setAxis:1];
  v21 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton];
  v22 = [v21 titleLabel];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v23 setFont:v24];
  }

  v25 = [v21 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setAdjustsFontForContentSizeCategory:1];
  }

  [v21 setContentHorizontalAlignment:4];
  [v21 addTarget:v0 action:"handleAction" forControlEvents:64];
  v27 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator];
  v28 = [objc_opt_self() labelColor];
  v29 = [v28 colorWithAlphaComponent:0.1];

  [v27 setBackgroundColor:v29];
  v30 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView];
  [v30 setGroup:*&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_sharedLockupViewGroup]];
  [v0 addSubview:v30];
  [v0 addSubview:v27];
  [v0 addSubview:v20];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_secondaryStackView]];
  v31 = [v21 titleLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 text];

    if (v33)
    {

      [v0 addSubview:v21];
    }
  }
}

void sub_1001CA7C4()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006D4798;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton];
  [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
  v90 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_contentStackView];
  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_secondaryStackView];
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
  v94 = &type metadata for SolariumFeatureFlag;
  v95 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v93);
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_platterBackgroundView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005521F0;
    v8 = [v5 topAnchor];
    v9 = [v0 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    *(v7 + 32) = v10;
    v11 = [v5 leadingAnchor];
    v12 = [v0 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v7 + 40) = v13;
    v14 = [v5 trailingAnchor];
    v15 = [v0 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v7 + 48) = v16;
    v17 = [v5 bottomAnchor];
    v18 = [v0 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v7 + 56) = v19;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:isa];
  }

  if (qword_1006AEB00 != -1)
  {
    swift_once();
  }

  [v3 setLayoutMargins:{*(&xmmword_1006D4090 + 1), unk_1006D40A0, *&qword_1006D40A8, *&qword_1006D40B0}];
  sub_10007EBC0(&qword_1006AFC30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552200;
  v22 = [v3 topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v21 + 32) = v24;
  v25 = [v3 leadingAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 40) = v27;
  v28 = [v3 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v21 + 48) = v30;
  v31 = [v2 topAnchor];
  v32 = [v3 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v1];

  *(v21 + 56) = v33;
  v34 = [v2 leadingAnchor];
  v35 = [v0 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v1];

  *(v21 + 64) = v36;
  v37 = [v2 trailingAnchor];
  v38 = [v0 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v21 + 72) = v39;
  v40 = [v2 heightAnchor];
  v41 = [v40 constraintEqualToConstant:1.0];

  *(v21 + 80) = v41;
  v42 = [v90 topAnchor];
  v43 = [v2 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v21 + 88) = v44;
  *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewShowingContstraints] = v21;

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1005528C0;
  v46 = [v90 topAnchor];
  v47 = [v0 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v45 + 32) = v48;
  *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewHiddenConstraints] = v45;

  v89 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100552EE0;
  v50 = [v90 leadingAnchor];
  v51 = [v0 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:v1];

  *(v49 + 32) = v52;
  v53 = [v90 trailingAnchor];
  v54 = [v0 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-v1];

  *(v49 + 40) = v55;
  sub_10002B27C();
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v56];

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100552EF0;
  v58 = [v91 topAnchor];
  v59 = [v90 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v57 + 32) = v60;
  v61 = [v91 leadingAnchor];
  v62 = [v0 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v57 + 40) = v63;
  v64 = [v91 trailingAnchor];
  v65 = [v0 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v57 + 48) = v66;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v67];

  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1005521F0;
  v69 = [v92 topAnchor];
  v70 = [v91 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:8.0];

  *(v68 + 32) = v71;
  v72 = [v92 leadingAnchor];
  v73 = [v0 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:v1];

  *(v68 + 40) = v74;
  v75 = [v92 trailingAnchor];
  v76 = [v0 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:-v1];

  *(v68 + 48) = v77;
  v78 = [v92 bottomAnchor];
  v79 = [v0 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-12.0];

  *(v68 + 56) = v80;
  *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonShowingConstraints] = v68;

  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1005528C0;
  v82 = [v91 bottomAnchor];
  v83 = [v0 bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:-3.0];

  *(v81 + 32) = v84;
  *&v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonHiddenConstraints] = v81;

  v85 = [v92 titleLabel];
  if (v85 && (v86 = v85, v87 = [v85 text], v86, v87))
  {

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  v0[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden] = v88;
  sub_1001C9BC0();
}

void sub_1001CB548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = &v5[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_displayedAppBundleID];
  v11 = *&v5[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_displayedAppBundleID + 8];
  if (!v11)
  {
    goto LABEL_10;
  }

  if (*v10 == a1 && v11 == a2)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a3)
  {
LABEL_10:
    v5[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden] = 1;
    sub_1001C9CE4();
    *v10 = a1;
    v10[1] = a2;

    v14 = [*&v5[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView] group];
    if (v14)
    {
      v15 = v14;
      v16 = String._bridgeToObjectiveC()();
      v17 = ASCLockupContextStandard;
      v18 = swift_allocObject();
      v18[2] = v5;
      v18[3] = a4;
      v18[4] = a5;
      v21[4] = sub_1001CBAA0;
      v21[5] = v18;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_10012105C;
      v21[3] = &unk_10062CB10;
      v19 = _Block_copy(v21);
      v20 = v5;

      [v15 _lockupRequestForBundleID:v16 withContext:v17 completionBlock:v19];
      _Block_release(v19);
    }
  }
}

uint64_t sub_1001CB714(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_100005B4C(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMPlatterAppStoreInfoGroupView: Error requesting lockup view %s", v9, 0xCu);
      sub_100006060(v10);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v15 = *(a3 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView);
    v16 = a1;
    [v15 setRequest:v16];
    *(a3 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden) = 0;
    sub_1001C9CE4();
  }

  else
  {
    *(a3 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden) = 1;
    sub_1001C9CE4();
  }

  return a4(a2);
}

id sub_1001CB958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterAppStoreInfoAndButtonGroupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001CBAAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_sharedLockupViewGroup;
  v3 = objc_allocWithZone(ASCLockupViewGroup);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithName:v4];

  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupView;
  *(v1 + v6) = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_contentStackView;
  *(v1 + v7) = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_secondaryStackView;
  *(v1 + v8) = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for FMActionAndInfoButton()) init];
  v10 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_topSeparator;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_platterBackgroundView;
  v12 = type metadata accessor for FMPlatterBackgroundView();
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v11) = v14;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonShowingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButtonHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewShowingContstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_lockupViewHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden) = 0;
  v15 = (v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_displayedAppBundleID);
  *v15 = 0;
  v15[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001CBCF8()
{
  v0 = objc_opt_self();
  v1 = [v0 quaternarySystemFillColor];
  v2 = [v0 systemFillColor];
  v3 = [v2 CGColor];

  v4 = [v0 quaternarySystemFillColor];
  qword_1006D40E0 = v1;
  result = 10.0;
  unk_1006D40E8 = xmmword_1005584D0;
  qword_1006D40F8 = 0x4022000000000000;
  unk_1006D4100 = v3;
  qword_1006D4108 = v4;
  return result;
}

id sub_1001CBDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FMPlatteredTableViewCell();
  v6 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = qword_1006AEB08;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setBackgroundColor:qword_1006D40E0];
  [v8 setSelectionStyle:0];

  return v8;
}

id sub_1001CC08C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatteredTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1001CC0F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC6FindMyP33_06C68F60534B37E780B39268674B6CC031FMDiscoveredAccessoryAnnotation_itemImage] = a4;
  v8 = a4;
  [a1 coordinate];
  v10 = v9;
  v12 = v11;
  [a1 horizontalAccuracy];
  v13 = &v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_100558510;
  v14 = &v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v14 = v10;
  v14[1] = v12;
  *&v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v15;
  v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 1;
  v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = 0;
  v4[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for FMAnnotation();
  v16 = objc_msgSendSuper2(&v19, "init");

  v17 = &v16[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v17 = a2;
  *(v17 + 1) = a3;

  return v16;
}

uint64_t sub_1001CC2BC()
{
  type metadata accessor for FMDiscoveredAccessoryAnnotationView();
  sub_10007EBC0(&qword_1006B64D8);
  result = String.init<A>(describing:)();
  qword_1006B62D0 = result;
  *algn_1006B62D8 = v1;
  return result;
}

id sub_1001CC454(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001CC4BC()
{
  if (*&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_subscription])
  {
    v1 = *(*(*&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel] + 24) + 16);

    os_unfair_lock_lock((v1 + 24));
    sub_10008FB6C((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMAccessoryPairingConfirmationCard(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001CC780()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel];
  v3 = *(type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(0) + 20);
  FMIPItem.name.getter();
  v4 = String._bridgeToObjectiveC()();

  [v0 setTitle:v4];

  v5 = [v0 contentView];
  v6 = [v5 titleTextView];

  if (v6)
  {
    [v6 setTextAlignment:0];
  }

  [v1 setDismissalType:2];
  v7 = [objc_opt_self() mainBundle];
  v22._object = 0x8000000100579A00;
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x8000000100585840;
  v9.value._object = 0x80000001005799E0;
  v22._countAndFlagsBits = 0xD000000000000018;
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v22);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001CF974;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062CD18;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = [v1 addAction:v15];

  sub_10007EBC0(&unk_1006AF7A0);
  v17 = type metadata accessor for FMIPItem();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100552220;
  (*(v18 + 16))(v20 + v19, &v2[v3], v17);

  sub_100014BB0(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  sub_1001CE060(&v2[v3]);
}

void sub_1001CCB38()
{
  v0 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v2);

      sub_1001CF97C(v2, type metadata accessor for FMAccessoryPairingCoordinator.Event);
    }
  }
}

uint64_t sub_1001CCC30()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_verticalStackView];
  [v1 addSubview:v2];

  [v2 setAxis:1];
  [v2 setBaselineRelativeArrangement:1];
  [v2 setSpacing:36.0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_withYouView];
  [v2 addArrangedSubview:v3];
  [v2 setCustomSpacing:v3 afterView:18.0];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView]];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_featuresView]];
  sub_1001CDE6C();

  return sub_1001CD1A8();
}

void sub_1001CCD4C()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_withYouView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_verticalStackView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 contentView];
  v4 = [v3 mainContentGuide];

  v5 = [v1 contentView];
  v6 = [v5 titleView];

  if (v6)
  {
    v7 = [v6 bottomAnchor];
  }

  else
  {
    v7 = [v4 topAnchor];
  }

  v8 = v4;
  v31 = v7;
  v30 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1005521F0;
  v10 = [v2 topAnchor];
  v11 = [v10 constraintEqualToAnchor:v7];

  *(v9 + 32) = v11;
  v12 = [v2 leadingAnchor];
  v13 = [v4 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v9 + 40) = v14;
  v15 = [v2 trailingAnchor];
  v16 = [v4 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v9 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v4 bottomAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];

  *(v9 + 56) = v20;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100552EE0;
  v23 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView];
  v24 = [v23 widthAnchor];
  v25 = [v2 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v22 + 32) = v26;
  v27 = [v23 heightAnchor];
  v28 = [v23 widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 multiplier:0.583333333];

  *(v22 + 40) = v29;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v32];
}

uint64_t sub_1001CD1A8()
{
  v1 = v0;
  v102 = _swiftEmptyArrayStorage;
  if (qword_1006AECC0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    if (byte_1006D4AD1 == 1)
    {
      v2 = objc_opt_self();
      v3 = [v2 mainBundle];
      v103._object = 0x8000000100579A00;
      v4._countAndFlagsBits = 0xD000000000000030;
      v4._object = 0x8000000100585790;
      v5.value._object = 0x80000001005799E0;
      v103._countAndFlagsBits = 0xD000000000000018;
      v5.value._countAndFlagsBits = 0xD000000000000013;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v103);

      v8 = [v2 mainBundle];
      v104._object = 0x8000000100579A00;
      v9._countAndFlagsBits = 0xD000000000000033;
      v9._object = 0x80000001005857D0;
      v10.value._object = 0x80000001005799E0;
      v104._countAndFlagsBits = 0xD000000000000018;
      v10.value._countAndFlagsBits = 0xD000000000000013;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v104);

      v13 = [objc_opt_self() systemBlueColor];
      v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
      v15 = [objc_opt_self() configurationWithFont:v14];

      v16 = v15;
      v17 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() _systemImageNamed:v17 withConfiguration:v16];

      if (v18)
      {
        v19 = [v18 imageWithTintColor:v13 renderingMode:1];
      }

      else
      {

        v19 = 0;
      }

      objc_allocWithZone(type metadata accessor for FMSymbolBulletedListItemView());
      v20 = v19;

      v21 = sub_100282B18(v7._countAndFlagsBits, v7._object, v12._countAndFlagsBits, v12._object, v19);

      v22 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v23 = v1 + OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel;
    if (*(v23 + *(type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(0) + 24)))
    {
      v25 = objc_opt_self();
      v26 = [v25 mainBundle];
      v105._object = 0x8000000100579A00;
      v27._countAndFlagsBits = 0xD00000000000002BLL;
      v27._object = 0x8000000100585710;
      v105._countAndFlagsBits = 0xD000000000000018;
      v28.value._countAndFlagsBits = 0xD000000000000013;
      v28.value._object = 0x80000001005799E0;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v105);

      v31 = [v25 mainBundle];
      v106._object = 0x8000000100579A00;
      v32._countAndFlagsBits = 0xD00000000000002ELL;
      v32._object = 0x8000000100585740;
      v106._countAndFlagsBits = 0xD000000000000018;
      v33.value._countAndFlagsBits = 0xD000000000000013;
      v33.value._object = 0x80000001005799E0;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v106);

      v36 = [objc_opt_self() systemBlueColor];
      v37 = [objc_opt_self() preferredFontForTextStyle:?];
      v38 = [objc_opt_self() configurationWithFont:v37];

      v39 = v38;
      v40 = String._bridgeToObjectiveC()();
      v41 = [objc_opt_self() _systemImageNamed:v40 withConfiguration:v39];

      if (v41)
      {
        v42 = [v41 imageWithTintColor:v36 renderingMode:1];
      }

      else
      {

        v42 = 0;
      }

      objc_allocWithZone(type metadata accessor for FMSymbolBulletedListItemView());
      v43 = v42;

      v44 = sub_100282B18(v30._countAndFlagsBits, v30._object, v35._countAndFlagsBits, v35._object, v42);

      v45 = v44;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v24 = UIFontTextStyleTitle1;
    }

    else
    {
      v24 = UIFontTextStyleTitle1;
    }

    v46 = objc_opt_self();
    v47 = [v46 mainBundle];
    v107._object = 0x8000000100579A00;
    v48._countAndFlagsBits = 0xD00000000000002ALL;
    v48._object = 0x8000000100585600;
    v107._countAndFlagsBits = 0xD000000000000018;
    v49.value._countAndFlagsBits = 0xD000000000000013;
    v49.value._object = 0x80000001005799E0;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v107);

    v98 = v46;
    v52 = [v46 mainBundle];
    v108._object = 0x8000000100579A00;
    v53._countAndFlagsBits = 0xD00000000000002DLL;
    v53._object = 0x8000000100585630;
    v108._countAndFlagsBits = 0xD000000000000018;
    v54.value._countAndFlagsBits = 0xD000000000000013;
    v54.value._object = 0x80000001005799E0;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v108);

    v97 = objc_opt_self();
    v57 = [v97 systemBlueColor];
    v96 = objc_opt_self();
    v100 = v24;
    v58 = [v96 preferredFontForTextStyle:v24];
    v95 = objc_opt_self();
    v59 = [v95 configurationWithFont:v58];

    v60 = v59;
    v61 = String._bridgeToObjectiveC()();
    v62 = objc_opt_self();
    v63 = [v62 _systemImageNamed:v61 withConfiguration:v60];

    if (v63)
    {
      v64 = [v63 imageWithTintColor:v57 renderingMode:1];
    }

    else
    {

      v64 = 0;
    }

    v94 = type metadata accessor for FMSymbolBulletedListItemView();
    objc_allocWithZone(v94);
    v65 = v64;

    sub_100282B18(v51._countAndFlagsBits, v51._object, v56._countAndFlagsBits, v56._object, v64);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v66 = v102;
    My = type metadata accessor for Feature.FindMy();
    v101[3] = My;
    v101[4] = sub_10000A0C0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v68 = sub_100008FC0(v101);
    (*(*(My - 8) + 104))(v68, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100006060(v101);
    if (My)
    {
      v99 = v62;
      v69 = [v98 mainBundle];
      v109._object = 0x800000010057D3F0;
      v70._countAndFlagsBits = 0xD000000000000028;
      v70._object = 0x8000000100585680;
      v71.value._object = 0x800000010057D3D0;
      v109._countAndFlagsBits = 0xD000000000000018;
      v71.value._countAndFlagsBits = 0xD000000000000013;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v109);

      v74 = [v98 mainBundle];
      v110._object = 0x800000010057D3F0;
      v75._countAndFlagsBits = 0xD00000000000002BLL;
      v75._object = 0x80000001005856B0;
      v76.value._object = 0x800000010057D3D0;
      v110._countAndFlagsBits = 0xD000000000000018;
      v76.value._countAndFlagsBits = 0xD000000000000013;
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v110);

      v79 = [v97 systemBlueColor];
      v80 = [v96 preferredFontForTextStyle:v100];
      v81 = [v95 configurationWithFont:v80];

      v82 = v81;
      v83 = String._bridgeToObjectiveC()();
      v84 = [v99 _systemImageNamed:v83 withConfiguration:v82];

      if (v84)
      {
        v85 = [v84 imageWithTintColor:v79 renderingMode:1];
      }

      else
      {

        v85 = 0;
      }

      objc_allocWithZone(v94);
      v86 = v85;

      sub_100282B18(v73._countAndFlagsBits, v73._object, v78._countAndFlagsBits, v78._object, v85);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v66 = v102;
    }

    if (v66 >> 62)
    {
      break;
    }

    v87 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v87)
    {
    }

LABEL_31:
    v88 = 0;
    v89 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_featuresView;
    while (1)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v88 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v90 = *(v66 + 8 * v88 + 32);
      }

      v91 = v90;
      v92 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      [*(v1 + v89) addArrangedSubview:v90];

      ++v88;
      if (v92 == v87)
      {
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v87 = _CocoaArrayWrapper.endIndex.getter();
  if (v87)
  {
    goto LABEL_31;
  }
}

void sub_1001CDE6C()
{
  if (qword_1006AECC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView);
  if (byte_1006D4AD1 == 1)
  {
    [*(v0 + OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView) setDelegate:v0];
    type metadata accessor for FMDiscoveredAccessoryAnnotationView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (qword_1006AEB10 != -1)
    {
      swift_once();
    }

    v3 = String._bridgeToObjectiveC()();
    [v1 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v3];

    [v1 setHidden:0];
    [v1 setUserInteractionEnabled:0];
    [v1 setShowsUserLocation:1];
    [v1 setUserTrackingMode:1];
    v4 = [v1 layer];
    [v4 setCornerCurve:kCACornerCurveContinuous];

    v6 = [v1 layer];
    [v6 setCornerRadius:16.0];
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView);

    [v5 setHidden:1];
  }
}

void sub_1001CE060(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v3 = type metadata accessor for FMIPItem();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v57 = v4;
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v5 - 8);
  v56 = &v53 - v6;
  v7 = type metadata accessor for UUID();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B64E8);
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v64 = &v53 - v11;
  v12 = type metadata accessor for FMIPItemImageSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMAccessoryPairingConfirmationCard: Attempting to update map view.", v19, 2u);
  }

  v20 = *(*(*&v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel] + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (v20)
  {
    (*(v13 + 104))(v15, enum case for FMIPItemImageSize.infobox(_:), v12);

    v21 = v20;
    v22 = [v2 traitCollection];
    v23 = [v22 userInterfaceStyle];
    v54 = v2;
    v24 = v23;

    v25 = v24 == 2;
    v26 = v63;
    v27 = sub_1001C8A1C(v63, v15, v25);

    (*(v13 + 8))(v15, v12);
    if (v27)
    {
      type metadata accessor for FMLocationShifter();
      swift_allocObject();
      v28 = FMLocationShifter.init()();
      UUID.init()();
      UUID.uuidString.getter();
      v55[1](v9, v7);
      type metadata accessor for FMLocationShiftingRequest();
      swift_allocObject();
      v29 = v21;
      v30 = FMLocationShiftingRequest.init(identifier:location:)();
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = v30;
      v55 = v27;
      sub_10007EBC0(&unk_1006B64F0);
      swift_allocObject();
      v66 = Future.init(_:)();
      v32 = [objc_opt_self() mainRunLoop];
      v65 = v32;
      v33 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v34 = v56;
      (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
      sub_10000905C(0, &qword_1006B2918);
      v35 = v26;
      sub_100004098(&unk_1006B6500, &unk_1006B64F0);
      sub_100110658();
      Publisher.receive<A>(on:options:)();
      sub_100012DF0(v34, &qword_1006B64E0);

      *(swift_allocObject() + 16) = v29;
      v36 = swift_allocObject();
      v37 = v54;
      swift_unknownObjectWeakInit();
      v39 = v61;
      v38 = v62;
      v40 = v58;
      (*(v61 + 16))(v58, v35, v62);
      v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
      v42 = (v57 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 16) = v36;
      (*(v39 + 32))(v43 + v41, v40, v38);
      v44 = v55;
      *(v43 + v42) = v55;
      sub_100004098(&qword_1006B6510, &qword_1006B64E8);
      v45 = v29;
      v46 = v44;
      v47 = v60;
      v48 = v64;
      v49 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v59 + 8))(v48, v47);
      *&v37[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapUpdateCancellable] = v49;

      return;
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "FMAccessoryPairingConfirmationCard: failed to fetch current location current or item icon", v52, 2u);
  }
}

void sub_1001CE894(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v6, "FMAccessoryPairingConfirmationCard: failed to shift location: %@", v7, 0xCu);
      sub_100012DF0(v8, &unk_1006AF760);
    }
  }
}

void sub_1001CE9EC(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v5;
    v9 = FMIPItem.name.getter();
    v11 = v10;
    objc_allocWithZone(type metadata accessor for FMDiscoveredAccessoryAnnotation());
    v12 = sub_1001CC0F8(v8, v9, v11, a4);
    v13 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView;
    v14 = *&v7[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView];
    isa = [v14 annotations];
    if (!isa)
    {
      sub_10007EBC0(&qword_1006C1DD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v14 removeAnnotations:isa];

    [*&v7[v13] addAnnotation:v12];
    [*&v7[v13] selectAnnotation:v12 animated:0];
    [v8 coordinate];
    v31 = MKCoordinateRegionMakeWithDistance(v30, 600.0, 400.0);
    [*&v7[v13] regionThatFits:{v31.center.latitude, v31.center.longitude, v31.span.latitudeDelta, v31.span.longitudeDelta}];
    MKMapRectForCoordinateRegion();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = v22 / -5.0;
    v25 = *&v7[v13];
    v32.origin.x = v17;
    v32.origin.y = v19;
    v32.size.width = v21;
    v32.size.height = v23;
    v33 = MKMapRectOffset(v32, 0.0, v24);
    [v25 setVisibleMapRect:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMAccessoryPairingConfirmationCard: Updating map view with item annotation", v29, 2u);
    }
  }
}

uint64_t sub_1001CECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_10007EBC0(&qword_1006AFC30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005528C0;
  *(v8 + 32) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1001C2164;
  *(v9 + 24) = v7;

  dispatch thunk of FMLocationShifter.shift(requests:completion:)();
}

void sub_1001CEDBC(unint64_t a1, void (*a2)(void *, uint64_t))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    a2(0, 1);
    return;
  }

  v4 = a1;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v3 = FMLocationShiftingRequest.location.getter();

  v6 = v3;
  a2(v3, 0);
}

uint64_t sub_1001CEF00()
{
  result = type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(319);
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

void sub_1001CEFDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001CE060(a2);
  }
}

void sub_1001CF150()
{
  type metadata accessor for FMMediator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FMIPItem();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SPAccessoryCapability(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1001CF1EC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_verticalStackView;
  *&v2[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_featuresView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListView()) init];
  v6 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_withYouView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingWithYouLabel()) init];
  v7 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapView;
  *&v2[v7] = [objc_allocWithZone(MKMapView) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_mapUpdateCancellable] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_subscription] = 0;
  swift_unknownObjectWeakAssign();
  sub_1001CF9DC(a2, &v2[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingConfirmationCard_viewModel]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FMAccessoryPairingConfirmationCard(0);
  v8 = objc_msgSendSuper2(&v10, "initWithContentView:", 0);
  sub_1001CF97C(a2, type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel);
  return v8;
}

uint64_t sub_1001CF33C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v34 = a1;
  v12 = FMIPItem.identifier.getter();
  v14 = v13;
  v33 = v2;
  type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(0);
  if (v12 == FMIPItem.identifier.getter() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v31 = v4;
  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMAccessoryPairingConfirmationCard: Received item image.", v22, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
  v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v10 + 32))(v26 + v25, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1001CF858;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062CC28;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v28 = v31;
  v29 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v37 + 8))(v29, v28);
  return (*(v35 + 8))(v8, v36);
}

void sub_1001CF858()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001CEFDC(v2, v3);
}

void sub_1001CF8CC(void **a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001CE9EC(a1, v5, v1 + v4, v6);
}

uint64_t sub_1001CF97C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CF9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CFA54()
{
  result = qword_1006B6518;
  if (!qword_1006B6518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6518);
  }

  return result;
}

id sub_1001CFAB0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  v5 = type metadata accessor for FMIPItem();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_selectionSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_devicesSubscription] = 0;
  v6 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView;
  v7 = objc_allocWithZone(type metadata accessor for FMActionLandingView());
  *&v2[v6] = sub_1001C2B3C(1);
  v8 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListView()) init];
  *&v2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_imageFetchingCancellable] = 0;
  v9 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_continueButton;
  *&v2[v9] = [objc_opt_self() boldButton];
  *&v2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] = a1;

  v10 = String._bridgeToObjectiveC()();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMRemoveItemViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:icon:contentLayout:", v10, 0, 0, 4);

  return v11;
}

int64_t sub_1001CFD64(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMRemoveItemViewController();
  result = objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_selectionSubscription];
  if (v4)
  {
    v5 = *(*&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] + 56);
    swift_beginAccess();

    result = sub_1003CD53C((v5 + 16), v4);
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v8 = result;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v7 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= result)
      {
LABEL_4:
        sub_1003CD570(result, v7);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1001CFEC4()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3B10);
  __chkstk_darwin(v2 - 8);
  v109 = v94 - v3;
  v4 = type metadata accessor for FMIPPerson();
  v110 = *(v4 - 8);
  v111 = v4;
  __chkstk_darwin(v4);
  v104 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v6 - 8);
  v97 = v94 - v7;
  v8 = sub_10007EBC0(&qword_1006B3B08);
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v98 = v94 - v9;
  v10 = type metadata accessor for FMIPProductType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B07D0);
  v15 = __chkstk_darwin(v14 - 8);
  v108 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v94 - v17;
  v19 = type metadata accessor for FMIPItem();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v101 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v94 - v23;
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancel"];
  v26 = [v1 navigationItem];
  v105 = v25;
  v27 = v25;
  v28 = v20;
  [v26 setLeftBarButtonItem:v27];

  v29 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  v107 = v29;
  sub_1001104A8(&v1[v29], v18);
  v106 = *(v20 + 48);
  v30 = v106(v18, 1, v19);
  v102 = v13;
  v103 = v10;
  if (v30 == 1)
  {
    sub_100012DF0(v18, &qword_1006B07D0);
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
    FMIPItem.productType.getter();
    v31 = FMIPProductType.isAccessory.getter();
    v96 = v11;
    v95 = v20;
    v32 = *(v11 + 8);
    v32(v13, v10);
    if (v31)
    {

      FMIPItem.productType.getter();
      v33 = sub_1001AF880(v13, 1);

      v32(v13, v10);
      v94[2] = v33;
      v113 = v33;
      v34 = objc_opt_self();

      v35 = [v34 mainRunLoop];
      v112 = v35;
      v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v37 = v97;
      (*(*(v36 - 8) + 56))(v97, 1, 1, v36);
      v94[1] = sub_10007EBC0(&unk_1006B4D90);
      sub_10000905C(0, &qword_1006B2918);
      sub_100004098(&qword_1006B7800, &unk_1006B4D90);
      sub_100110658();
      v38 = v98;
      Publisher.receive<A>(on:options:)();
      sub_100012DF0(v37, &qword_1006B64E0);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
      v39 = v100;
      v40 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v99 + 8))(v38, v39);
      v28 = v95;
      (*(v95 + 8))(v24, v19);
      *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_imageFetchingCancellable] = v40;

      v11 = v96;
      goto LABEL_7;
    }

    v28 = v95;
    (*(v95 + 8))(v24, v19);
    v11 = v96;
  }

  v41 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView;
  v42 = *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView];
  sub_10000905C(0, &qword_1006BC2B0);
  v43 = v42;
  v44 = sub_1003DE3FC(6775124, 0xE300000000000000, 6778480, 0xE300000000000000);
  v45 = *&v43[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage];
  *&v43[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage] = v44;
  v46 = v44;

  [*&v43[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView] setImage:v46];
  v47 = *&v1[v41];
  v47[OBJC_IVAR____TtC6FindMy19FMActionLandingView_usesB389Adjustments] = 1;
  v48 = v47;
  sub_1001C3DC0();

LABEL_7:
  v49 = v108;
  sub_1001104A8(&v1[v107], v108);
  if (v106(v49, 1, v19))
  {
    sub_100012DF0(v49, &qword_1006B07D0);
    v50 = 0;
  }

  else
  {
    v51 = v101;
    (*(v28 + 16))(v101, v49, v19);
    sub_100012DF0(v49, &qword_1006B07D0);
    v52 = v102;
    FMIPItem.productType.getter();
    (*(v28 + 8))(v51, v19);
    v50 = FMIPProductType.isAccessory.getter();
    (*(v11 + 8))(v52, v103);
  }

  v53 = *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_continueButton];
  v54 = objc_opt_self();
  v55 = [v54 mainBundle];
  v114._object = 0x8000000100579A00;
  v56._countAndFlagsBits = 0xD000000000000017;
  v56._object = 0x8000000100585CF0;
  v57.value._object = 0x80000001005799E0;
  v114._countAndFlagsBits = 0xD000000000000018;
  v57.value._countAndFlagsBits = 0xD000000000000013;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v114);

  v59 = String._bridgeToObjectiveC()();

  [v53 setTitle:v59 forState:0];

  v60 = [v1 headerView];
  if (v50)
  {
    v61 = [v54 mainBundle];
    v93 = 0x8000000100579A00;
    v62 = 0xD000000000000016;
    v63 = 0x80000001005859A0;
    v64 = 0x80000001005799E0;
    v65 = 0xD000000000000018;
    v66 = 0xD000000000000013;
  }

  else
  {
    v61 = [v54 mainBundle];
    v66 = 0xD000000000000010;
    v62 = 0xD000000000000011;
    v93 = 0x8000000100582000;
    v63 = 0x80000001005859C0;
    v64 = 0x8000000100581FE0;
    v65 = 0xD000000000000015;
  }

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v62, *&v66, v61, v67, *&v65);

  v68 = String._bridgeToObjectiveC()();

  [v60 setTitle:v68];

  v69 = [v1 buttonTray];
  [v69 addButton:v53];

  v70 = v109;
  FMIPManager.owner.getter();
  v72 = v110;
  v71 = v111;
  if ((*(v110 + 48))(v70, 1, v111) == 1)
  {
    __break(1u);
  }

  else
  {

    v73 = v104;
    (*(v72 + 32))(v104, v70, v71);
    v74 = FMIPPerson.username.getter();
    v76 = v75;
    (*(v72 + 8))(v73, v71);

    v77 = sub_100477BA0(v74, v76, 0);

    if (v77)
    {
      v74 = sub_100123238(v74);
      v79 = v78;

      v76 = v79;
    }

    v80 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView;
    v81 = *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView];
    v82 = &v81[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwner];
    *v82 = v74;
    v82[1] = v76;
    v83 = v81;

    v84 = *&v83[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceOwnerLabel];

    v85 = v84;
    v86 = String._bridgeToObjectiveC()();

    [v85 setText:v86];

    sub_1001D0D18();
    v87 = [v1 contentView];
    v88 = [objc_opt_self() systemBackgroundColor];
    [v87 setBackgroundColor:v88];

    v89 = [v1 contentView];
    [v89 addSubview:*&v1[v80]];

    v90 = [v1 secondaryContentView];
    if (v90)
    {
      v91 = v90;
      v92 = *&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView];
      [v91 addSubview:v92];
    }
  }
}

void sub_1001D0C60(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView);

    v5 = *&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage];
    *&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImage] = v1;
    v6 = v1;

    [*&v4[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceImageView] setImage:v6];
  }
}

uint64_t sub_1001D0D18()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v96 - v11;
  v13 = sub_10007EBC0(&qword_1006B07D0);
  v14 = __chkstk_darwin(v13 - 8);
  v112 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v96 - v16;
  v18 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  v110 = v18;
  sub_1001104A8(&v1[v18], v17);
  v19 = *(v7 + 48);
  v109 = v7 + 48;
  v108 = v19;
  v20 = v19(v17, 1, v6);
  v117 = v6;
  v116 = v7;
  v119 = v10;
  v115 = v1;
  if (v20)
  {
    sub_100012DF0(v17, &qword_1006B07D0);
  }

  else
  {
    (*(v7 + 16))(v12, v17, v6);
    sub_100012DF0(v17, &qword_1006B07D0);
    FMIPItem.productType.getter();
    (*(v7 + 8))(v12, v6);
    v21 = FMIPProductType.isAccessory.getter();
    (*(v3 + 8))(v5, v2);
    if (v21)
    {
      v22 = 1;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = [objc_opt_self() mainBundle];
  v124._object = 0x8000000100579A00;
  v24._countAndFlagsBits = 0xD00000000000001CLL;
  v24._object = 0x8000000100585B80;
  v25.value._object = 0x80000001005799E0;
  v120._countAndFlagsBits = 0xD000000000000018;
  v25.value._countAndFlagsBits = 0xD000000000000013;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v120);
  countAndFlagsBits = v27._countAndFlagsBits;
  object = v27._object;

  v118 = objc_opt_self();
  v28 = [v118 mainBundle];
  v97 = 0x8000000100579A00;
  v124._object = 0x8000000100579A00;
  v29._countAndFlagsBits = 0xD00000000000001FLL;
  v29._object = 0x8000000100585BA0;
  v98 = "CLEAR_TAGS_MESSAGE";
  v30.value._object = 0x80000001005799E0;
  v121._countAndFlagsBits = 0xD000000000000018;
  v30.value._countAndFlagsBits = 0xD000000000000013;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v121);
  v107 = v32._countAndFlagsBits;
  v113 = v32._object;

  v103 = objc_opt_self();
  v33 = [v103 systemBlueColor];
  v102 = objc_opt_self();
  v101 = UIFontTextStyleTitle1;
  v34 = [v102 preferredFontForTextStyle:?];
  v100 = objc_opt_self();
  v35 = [v100 configurationWithFont:v34];

  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  v99 = objc_opt_self();
  v38 = [v99 _systemImageNamed:v37 withConfiguration:v36];

  if (v38)
  {
    v39 = v38;
    v106 = [v39 imageWithTintColor:v33 renderingMode:1];
  }

  else
  {

    v106 = 0;
  }

  v104 = v22;
  if (v22)
  {
    v40 = 0xD000000000000029;
  }

  else
  {
    v40 = 0xD00000000000002BLL;
  }

  if (v22)
  {
    v41 = "_SHARING_TITLE_ITEM";
  }

  else
  {
    v41 = "_SHARING_TITLE_AIRTAG";
  }

  if (v22)
  {
    v42 = 0xD000000000000023;
  }

  else
  {
    v42 = 0xD000000000000025;
  }

  if (v22)
  {
    v43 = "_FOOTNOTE_DEFAULT";
  }

  else
  {
    v43 = "ACCESSORY_REMOVE_APPLE_ID_TITLE";
  }

  v44 = v118;
  v45 = [v118 mainBundle];
  v124._object = 0x800000010057D3F0;
  v46._object = (v43 | 0x8000000000000000);
  v47.value._object = 0x800000010057D3D0;
  v122._countAndFlagsBits = 0xD000000000000018;
  v46._countAndFlagsBits = v42;
  v47.value._countAndFlagsBits = 0xD000000000000013;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v122);
  v96 = v49._countAndFlagsBits;
  v105 = v49._object;

  v50 = [v44 mainBundle];
  v124._object = 0x800000010057D3F0;
  v51._object = (v41 | 0x8000000000000000);
  v52.value._object = 0x800000010057D3D0;
  v123._countAndFlagsBits = 0xD000000000000018;
  v51._countAndFlagsBits = v40;
  v52.value._countAndFlagsBits = 0xD000000000000013;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v123);

  v55 = [v103 systemBlueColor];
  v56 = [v102 preferredFontForTextStyle:v101];
  v57 = [v100 configurationWithFont:v56];

  v58 = v57;
  v59 = String._bridgeToObjectiveC()();
  v60 = [v99 _systemImageNamed:v59 withConfiguration:v58];

  if (v60)
  {
    v61 = v60;
    v62 = [v61 imageWithTintColor:v55 renderingMode:1];
  }

  else
  {

    v62 = 0;
  }

  v63 = v117;
  v64 = v116;
  v65 = v119;
  v66 = v115;
  if (v104)
  {
    v67 = [v118 mainBundle];
    v124._object = v97;
    v68._countAndFlagsBits = 0xD000000000000021;
    v68._object = 0x8000000100585C60;
    v69.value._object = (v98 | 0x8000000000000000);
    v124._countAndFlagsBits = 0xD000000000000018;
    v69.value._countAndFlagsBits = 0xD000000000000013;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v124);
  }

  else
  {
    sub_10022ECA4(0xD000000000000014, 0x8000000100585C40);
  }

  v71 = [v66 buttonTray];
  v72 = String._bridgeToObjectiveC()();

  [v71 setCaptionText:v72];

  v73 = v112;
  sub_1001104A8(&v66[v110], v112);
  if (v108(v73, 1, v63) == 1)
  {
    sub_100012DF0(v73, &qword_1006B07D0);
  }

  else
  {
    v74 = (*(v64 + 32))(v65, v73, v63);
    v75 = *(*(*&v66[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] + 24) + 64);
    __chkstk_darwin(v74);
    v124._object = v76;

    v77 = sub_1001048C4(sub_1001098B0, (&v96 - 4), v75);

    v78 = *(v77 + 16);

    if (v78)
    {
      v79 = *&v66[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView];
      sub_10007EBC0(&unk_1006B4150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100552210;
      *(inited + 32) = v107;
      v81 = countAndFlagsBits;
      *(inited + 40) = v113;
      *(inited + 48) = v81;
      v82 = v62;
      v83 = v106;
      *(inited + 56) = object;
      *(inited + 64) = v83;
      v84 = v64;
      v85 = v105;
      *(inited + 72) = v96;
      *(inited + 80) = v85;
      *(inited + 88) = v54;
      *(inited + 104) = v82;
      v86 = v82;
      v87 = v79;

      v88 = v83;

      sub_10036F4B4(inited);

      swift_setDeallocating();
      swift_arrayDestroy();
      return (*(v84 + 8))(v119, v117);
    }

    (*(v64 + 8))(v119, v63);
  }

  v90 = *&v66[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView];
  sub_10007EBC0(&unk_1006B4150);
  v91 = swift_initStackObject();
  *(v91 + 16) = xmmword_100552220;
  *(v91 + 32) = v107;
  v92 = countAndFlagsBits;
  *(v91 + 40) = v113;
  *(v91 + 48) = v92;
  v93 = v106;
  *(v91 + 56) = object;
  *(v91 + 64) = v93;
  v94 = v93;
  v95 = v90;

  sub_10036F4B4(v91);

  swift_setDeallocating();
  return sub_1001D6CF8(v91 + 32);
}

void sub_1001D194C()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView;
  [*&v0[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView;
  [*&v0[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_bulletedListView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v0[v1] topAnchor];
  v6 = [v0 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] bottomAnchor];
  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v4 + 56) = v20;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  v22 = [v0 secondaryContentView];
  if (v22)
  {
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1005521F0;
    v25 = [*&v0[v2] topAnchor];
    v26 = [v23 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:32.0];

    *(v24 + 32) = v27;
    v28 = [*&v0[v2] bottomAnchor];
    v29 = [v23 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v24 + 40) = v30;
    v31 = [*&v0[v2] leadingAnchor];
    v32 = [v23 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v24 + 48) = v33;
    v34 = [*&v0[v2] trailingAnchor];
    v35 = [v23 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v24 + 56) = v36;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v37];
  }
}

void sub_1001D1E50()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType();
  v58._countAndFlagsBits = *(v2 - 1);
  v58._object = v2;
  __chkstk_darwin(v2);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FMIPItem();
  v4 = *(v63 - 1);
  v5 = __chkstk_darwin(v63);
  v59 = v6;
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v55 - v7;
  v56 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v56);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B07D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v55 = &v55 - v15;
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMRemoveItemViewController: Remove item button pressed", v21, 2u);
  }

  v22 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  sub_1001104A8(&v0[v22], v17);
  v62 = v4;
  v23 = *(v4 + 48);
  v24 = v63;
  v25 = v23(v17, 1, v63);
  sub_100012DF0(v17, &qword_1006B07D0);
  if (v25 == 1)
  {
    v26 = *(*&v0[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] + 56);
    v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v26 + v27, v9);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v28 = v62;
      v24 = v63;
      v29 = v55;
      (*(v62 + 32))(v55, v9, v63);
      (*(v28 + 56))(v29, 0, 1, v24);
      swift_beginAccess();
      sub_1000E211C(v29, &v0[v22]);
      swift_endAccess();
    }

    else
    {
      sub_10005D4E4(v9);
      v24 = v63;
    }
  }

  sub_1001104A8(&v0[v22], v13);
  if (v23(v13, 1, v24) == 1)
  {
    sub_100012DF0(v13, &qword_1006B07D0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMRemoveItemViewController: Can't remove an unkown item", v32, 2u);
    }
  }

  else
  {
    v63 = *(v62 + 32);
    (v63)(v61, v13, v24);
    [v0 setModalInPresentation:1];
    v33 = v57;
    FMIPItem.productType.getter();
    v34 = FMIPProductType.isAccessory.getter();
    (*(v58._countAndFlagsBits + 8))(v33, v58._object);
    v35 = [objc_opt_self() mainBundle];
    if (v34)
    {
      v36 = "CLEAR_TAGS_MESSAGE";
      v37 = 0x8000000100579A00;
      v38 = 0xD000000000000013;
      v39 = 0xD000000000000018;
    }

    else
    {
      v36 = "CAMERA_ALERT_TITLE";
      v37 = 0x8000000100582000;
      v38 = 0xD000000000000010;
      v39 = 0xD000000000000015;
    }

    v54 = v37;
    v40._object = 0x8000000100585A60;
    v41 = v36 | 0x8000000000000000;
    v40._countAndFlagsBits = 0xD000000000000020;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, *&v38, v35, v42, *&v39);

    v43 = *(*&v1[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator] + 16);
    v44 = v61;
    v45 = v62;
    v46 = v1;
    v47 = v60;
    (*(v62 + 16))(v60, v61, v24);
    v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v49 = v24;
    v50 = (v59 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    (v63)(v51 + v48, v47, v49);
    *(v51 + v50) = v46;
    v52 = v43;
    v53 = v46;
    sub_1003DCB60(v52, v58._countAndFlagsBits, v58._object, v53, sub_1001D6A98, v51);

    (*(v45 + 8))(v44, v49);
  }
}

void sub_1001D2558(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPProductType();
  v11 = __chkstk_darwin(v10);
  v14 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v120 = v14;
    v121 = v12;
    v122 = v11;
    v123 = v8;
    v125 = v7;
    v126 = v6;
    v127 = a3;
    v15 = FMIPItem.owner.getter();
    v17 = v16;
    v18 = [objc_opt_self() SPOwner];
    v19 = [v18 destination];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v15 == v20 && v17 == v22;
    v129 = a2;
    v124 = v9;
    if (v23)
    {

      v25 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0x4445524148535FLL;
      }

      v26 = 0xE700000000000000;
      if (v24)
      {
        v26 = 0xE000000000000000;
      }
    }

    v131 = v26;
    aBlock = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    aBlock = 0xD000000000000018;
    v133 = 0x8000000100585A90;
    v114 = 0x8000000100585A90;
    v31._countAndFlagsBits = v25;
    v32 = v131;
    v31._object = v131;
    String.append(_:)(v31);
    v33 = aBlock;
    v34 = v133;
    v35 = objc_opt_self();
    v36 = [v35 mainBundle];
    v139._object = 0x8000000100579A00;
    v37.value._object = 0x80000001005799E0;
    v38._countAndFlagsBits = v33;
    v38._object = v34;
    v37.value._countAndFlagsBits = 0xD000000000000013;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v139._countAndFlagsBits = 0xD000000000000018;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v139);
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;

    aBlock = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    aBlock = 0xD00000000000001FLL;
    v133 = 0x8000000100585AB0;
    v113 = 0x8000000100585AB0;
    v41._countAndFlagsBits = v25;
    v41._object = v32;
    String.append(_:)(v41);
    v42 = aBlock;
    v43 = v133;
    v44 = [v35 mainBundle];
    v140._object = 0x8000000100579A00;
    v45.value._object = 0x80000001005799E0;
    v46._countAndFlagsBits = v42;
    v46._object = v43;
    v45.value._countAndFlagsBits = 0xD000000000000013;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v140._countAndFlagsBits = 0xD000000000000018;
    v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v45, v44, v47, v140);
    v110[1] = v48._countAndFlagsBits;
    v119 = v48._object;

    aBlock = 0;
    v133 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v111 = 0xD000000000000020;
    aBlock = 0xD000000000000020;
    v133 = 0x8000000100585AD0;
    v112 = 0x8000000100585AD0;
    v49 = v25;
    v50._countAndFlagsBits = v25;
    v50._object = v32;
    String.append(_:)(v50);
    v51 = aBlock;
    v52 = v133;
    v116 = v35;
    v53 = [v35 mainBundle];
    v115 = 0x8000000100579A00;
    v141._object = 0x8000000100579A00;
    v117 = 0xD000000000000013;
    v118 = "CLEAR_TAGS_MESSAGE";
    v54.value._object = 0x80000001005799E0;
    v55._countAndFlagsBits = v51;
    v55._object = v52;
    v54.value._countAndFlagsBits = 0xD000000000000013;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v141._countAndFlagsBits = 0xD000000000000018;
    v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v54, v53, v56, v141)._countAndFlagsBits;

    v58 = v120;
    v59 = v129;
    FMIPItem.productType.getter();
    LOBYTE(v51) = FMIPProductType.isAccessory.getter();
    (*(v121 + 8))(v58, v122);

    if (v51)
    {
      v131 = v57;
    }

    else
    {

      aBlock = 0;
      v133 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      aBlock = 0xD000000000000018;
      v133 = v114;
      v60 = v49;
      v61._countAndFlagsBits = v49;
      v62 = v131;
      v61._object = v131;
      String.append(_:)(v61);
      v63 = aBlock;
      v64 = v133;
      v65 = v116;
      v66 = [v116 mainBundle];
      v67.value._countAndFlagsBits = 0xD000000000000010;
      v142._countAndFlagsBits = 0xD000000000000015;
      v142._object = 0x8000000100582000;
      v67.value._object = 0x8000000100581FE0;
      v68._countAndFlagsBits = v63;
      v68._object = v64;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v67, v66, v69, v142);
      countAndFlagsBits = v70._countAndFlagsBits;
      object = v70._object;

      aBlock = 0;
      v133 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      aBlock = 0xD00000000000001FLL;
      v133 = v113;
      v71._countAndFlagsBits = v60;
      v71._object = v62;
      String.append(_:)(v71);
      v72 = aBlock;
      v73 = v133;
      v74 = v65;
      v75 = [v65 mainBundle];
      v76 = v115;
      v143._object = v115;
      v78 = v117;
      v77 = v118;
      v79.value._object = (v118 | 0x8000000000000000);
      v80._countAndFlagsBits = v72;
      v80._object = v73;
      v79.value._countAndFlagsBits = v117;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      v143._countAndFlagsBits = 0xD000000000000018;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v79, v75, v81, v143);

      aBlock = 0;
      v133 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      aBlock = v111;
      v133 = v112;
      v82._countAndFlagsBits = v60;
      v82._object = v62;
      String.append(_:)(v82);

      v83 = aBlock;
      v84 = v133;
      v85 = [v74 mainBundle];
      v144._object = v76;
      v59 = v129;
      v86.value._object = (v77 | 0x8000000000000000);
      v87._countAndFlagsBits = v83;
      v87._object = v84;
      v86.value._countAndFlagsBits = v78;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v144._countAndFlagsBits = 0xD000000000000018;
      v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v86, v85, v88, v144)._countAndFlagsBits;
    }

    v89 = String._bridgeToObjectiveC()();

    v90 = [objc_opt_self() alertControllerWithTitle:0 message:v89 preferredStyle:0];

    v91 = String._bridgeToObjectiveC()();

    v92 = objc_opt_self();
    v93 = [v92 actionWithTitle:v91 style:1 handler:0];

    v95 = v124;
    v94 = v125;
    v96 = v126;
    (*(v125 + 16))(v124, v59, v126);
    v97 = (*(v94 + 80) + 24) & ~*(v94 + 80);
    v98 = swift_allocObject();
    v99 = v127;
    *(v98 + 16) = v127;
    (*(v94 + 32))(v98 + v97, v95, v96);
    v100 = v99;
    v101 = String._bridgeToObjectiveC()();

    v136 = sub_1001D6B34;
    v137 = v98;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100017328;
    v135 = &unk_10062D090;
    v102 = _Block_copy(&aBlock);

    v103 = [v92 actionWithTitle:v101 style:2 handler:v102];
    _Block_release(v102);

    v104 = v93;
    v105 = String._bridgeToObjectiveC()();
    [v104 setAccessibilityIdentifier:v105];

    v106 = v103;
    v107 = String._bridgeToObjectiveC()();
    [v106 setAccessibilityIdentifier:v107];

    [v90 addAction:v106];
    [v90 addAction:v104];
    v108 = v90;
    v109 = String._bridgeToObjectiveC()();
    [v108 setAccessibilityIdentifier:v109];

    [v100 presentViewController:v108 animated:1 completion:0];
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v131 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v131, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v131, v28, "FMRemoveItemViewController: Couldn't remove item, BT is off", v29, 2u);
    }

    v30 = v131;
  }
}

uint64_t sub_1001D3050(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPItem();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v40 = v6;
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPProductType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a2[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView];
  v11[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 1;
  v12 = v11;
  sub_1001C29D8();

  v13 = [a2 headerView];
  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v45._object = 0x8000000100579A00;
  v39 = "IRMATION_CONFIRM";
  v16._object = 0x8000000100585B00;
  v17.value._object = 0x80000001005799E0;
  v45._countAndFlagsBits = 0xD000000000000018;
  v16._countAndFlagsBits = 0xD000000000000013;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v45);

  v19 = String._bridgeToObjectiveC()();

  [v13 setTitle:v19];

  v42 = a3;
  FMIPItem.productType.getter();
  LOBYTE(v13) = FMIPProductType.isAccessory.getter();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    v20 = [a2 headerView];
    v21 = [v14 mainBundle];
    v22.value._countAndFlagsBits = 0xD000000000000010;
    v46._object = 0x8000000100582000;
    v23._object = (v39 | 0x8000000000000000);
    v22.value._object = 0x8000000100581FE0;
    v46._countAndFlagsBits = 0xD000000000000015;
    v23._countAndFlagsBits = 0xD000000000000013;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v46);

    v25 = String._bridgeToObjectiveC()();

    [v20 setTitle:v25];
  }

  v26 = [a2 navigationItem];
  v27 = [v26 leftBarButtonItem];

  if (v27)
  {
    [v27 setEnabled:0];
  }

  v28 = v42;
  v29 = v43;
  v30 = *(v43 + 16);
  v31 = v41;
  v32 = v44;
  v30(v41, v42, v44);
  type metadata accessor for FMIPRemoveItemAction();
  swift_allocObject();
  v33 = FMIPRemoveItemAction.init(item:forced:)();
  v30(v31, v28, v32);
  v34 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v35 = (v40 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v29 + 32))(v36 + v34, v31, v32);
  *(v36 + v35) = a2;

  v37 = a2;
  sub_1000D6A90(v33, sub_1001D6C44, v36);
}

void sub_1001D3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a4;
  v7 = type metadata accessor for FMIPProductType();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v88 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B6598);
  __chkstk_darwin(v9 - 8);
  v11 = v82 - v10;
  v12 = type metadata accessor for FMIPItemActionControllerError();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v92 = v82 - v18;
  __chkstk_darwin(v17);
  v20 = v82 - v19;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100005B14(v21, qword_1006D4630);
  swift_errorRetain();
  v91 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v86 = v16;
    v87 = v12;
    v93 = v20;
    v26 = v25;
    v27 = v13;
    v28 = swift_slowAlloc();
    v95 = a3;
    aBlock[0] = v28;
    *v26 = 136315138;
    sub_10007EBC0(&qword_1006B9570);
    v29 = Optional.debugDescription.getter();
    v31 = a5;
    v32 = sub_100005B4C(v29, v30, aBlock);

    *(v26 + 4) = v32;
    a5 = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMRemoveItemViewController: Performed action successfuly? %s", v26, 0xCu);
    sub_100006060(v28);
    v13 = v27;

    v20 = v93;
    v16 = v86;
    v12 = v87;
  }

  if (!a3)
  {
    v13[7](v11, 1, 1, v12);
    sub_100012DF0(v11, &qword_1006B6598);
    [a5 dismissViewControllerAnimated:1 completion:0];
    return;
  }

  aBlock[0] = a3;
  swift_errorRetain();
  sub_10007EBC0(&unk_1006AF7B0);
  v33 = swift_dynamicCast();
  v13[7](v11, v33 ^ 1u, 1, v12);
  if ((v13[6])(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006B6598);
LABEL_13:
    sub_1001D3FD4(v94);
    return;
  }

  v87 = a5;
  (v13[4])(v20, v11, v12);
  v34 = v92;
  (v13[13])(v92, enum case for FMIPItemActionControllerError.tagInUseRemoveFailed(_:), v12);
  v35 = static FMIPItemActionControllerError.== infix(_:_:)();
  v36 = v13[1];
  (v36)(v34, v12);
  if ((v35 & 1) == 0)
  {
    (v36)(v20, v12);
    goto LABEL_13;
  }

  v84 = (v13 + 1);
  v85 = v36;
  v86 = v13;
  v93 = v20;
  v37 = objc_opt_self();
  v38 = [v37 mainBundle];
  v97._object = 0x8000000100579A00;
  v39._countAndFlagsBits = 0xD000000000000020;
  v83 = "ITEM_REMOVING_TITLE";
  v39._object = 0x8000000100585B20;
  v40.value._countAndFlagsBits = 0xD000000000000013;
  v40.value._object = 0x80000001005799E0;
  v97._countAndFlagsBits = 0xD000000000000018;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v82[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v97)._countAndFlagsBits;

  v42.super.isa = [v37 mainBundle];
  v98._object = 0x8000000100579A00;
  v43._countAndFlagsBits = 0xD000000000000023;
  v82[0] = "IR_FAILURE_TITLE";
  v43._object = 0x8000000100585B50;
  v44.value._countAndFlagsBits = 0xD000000000000013;
  v44.value._object = 0x80000001005799E0;
  v98._countAndFlagsBits = 0xD000000000000018;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v98);

  v46 = v88;
  FMIPItem.productType.getter();
  LOBYTE(v42.super.isa) = FMIPProductType.isAccessory.getter();
  (*(v89 + 8))(v46, v90);
  if (v42.super.isa)
  {
    v47 = v37;
  }

  else
  {

    v48 = [v37 mainBundle];
    v99._object = 0x8000000100582000;
    v49._countAndFlagsBits = 0xD000000000000020;
    v49._object = (v83 | 0x8000000000000000);
    v50.value._object = 0x8000000100581FE0;
    v99._countAndFlagsBits = 0xD000000000000015;
    v50.value._countAndFlagsBits = 0xD000000000000010;
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v99);
    v47 = v37;

    v52 = [v37 mainBundle];
    v100._object = 0x8000000100582000;
    v53._countAndFlagsBits = 0xD000000000000023;
    v53._object = (v82[0] | 0x8000000000000000);
    v54.value._object = 0x8000000100581FE0;
    v100._countAndFlagsBits = 0xD000000000000015;
    v54.value._countAndFlagsBits = 0xD000000000000010;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v100);
  }

  v56 = String._bridgeToObjectiveC()();

  v57 = String._bridgeToObjectiveC()();

  v58 = [objc_opt_self() alertControllerWithTitle:v56 message:v57 preferredStyle:1];

  v59 = [v47 mainBundle];
  v101._object = 0x8000000100579B60;
  v60._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v60._object = 0xEF454C5449545F4ELL;
  v101._countAndFlagsBits = 0xD000000000000021;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v101);

  v62 = swift_allocObject();
  v63 = v87;
  *(v62 + 16) = v87;
  v64 = v63;
  v65 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001D6D7C;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062D108;
  v66 = _Block_copy(aBlock);

  v67 = [objc_opt_self() actionWithTitle:v65 style:1 handler:v66];
  _Block_release(v66);

  [v58 addAction:v67];
  [v64 presentViewController:v58 animated:1 completion:0];
  v68 = *(v86 + 2);
  v69 = v93;
  v68(v16, v93, v12);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136315138;
    v74 = v58;
    v68(v92, v16, v12);
    v75 = String.init<A>(describing:)();
    v77 = v76;
    v78 = v16;
    v79 = v85;
    (v85)(v78, v12);
    v80 = sub_100005B4C(v75, v77, aBlock);

    *(v72 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v70, v71, "FMRemoveItemViewController: error: %s", v72, 0xCu);
    sub_100006060(v73);

    (v79)(v93, v12);
  }

  else
  {

    v81 = v85;
    (v85)(v16, v12);
    (v81)(v69, v12);
  }
}

void sub_1001D3FD4(uint64_t a1)
{
  v85 = a1;
  v78 = type metadata accessor for FMIPProductType();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v75 - v3;
  v90 = type metadata accessor for FMIPItem();
  v5 = *(v90 - 8);
  v6 = __chkstk_darwin(v90);
  v83 = v7;
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v75 - v8);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v79 = v9;
  v88 = v5;
  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMRemoveItemViewController: Presenting force unpair", v13, 2u);
  }

  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v97._object = 0x8000000100579A00;
  v75 = "ITEM_REMOVE_TITLE";
  v16._object = 0x80000001005859E0;
  v17.value._object = 0x80000001005799E0;
  v16._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v97._countAndFlagsBits = 0xD000000000000018;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v97)._countAndFlagsBits;

  v87 = v14;
  v19 = [v14 mainBundle];
  v80 = 0x8000000100579A00;
  v98._object = 0x8000000100579A00;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  v20._object = 0x8000000100585A00;
  v81 = 0xD000000000000013;
  v82 = "CLEAR_TAGS_MESSAGE";
  v21.value._object = 0x80000001005799E0;
  v21.value._countAndFlagsBits = 0xD000000000000013;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v98._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v98);

  v23 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  v24 = v89;
  swift_beginAccess();
  sub_1001104A8(v24 + v23, v4);
  v25 = v88;
  v26 = v90;
  if ((*(v88 + 48))(v4, 1, v90) == 1)
  {
    sub_100012DF0(v4, &qword_1006B07D0);
  }

  else
  {
    v27 = v79;
    (*(v25 + 32))(v79, v4, v26);
    v28 = v76;
    FMIPItem.productType.getter();
    v29 = FMIPProductType.isAccessory.getter();
    (*(v77 + 8))(v28, v78);
    if (v29)
    {
      (*(v25 + 8))(v27, v26);
    }

    else
    {

      v30 = v87;
      v31 = [v87 mainBundle];
      v99._object = 0x8000000100582000;
      v32._object = (v75 | 0x8000000000000000);
      v33.value._object = 0x8000000100581FE0;
      v32._countAndFlagsBits = 0xD000000000000018;
      v33.value._countAndFlagsBits = 0xD000000000000010;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v99._countAndFlagsBits = 0xD000000000000015;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v99)._countAndFlagsBits;

      v35 = [v30 mainBundle];
      v100._object = 0x8000000100582000;
      v36._countAndFlagsBits = 0xD00000000000001ALL;
      v36._object = 0x8000000100585A00;
      v37.value._object = 0x8000000100581FE0;
      v37.value._countAndFlagsBits = 0xD000000000000010;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v100._countAndFlagsBits = 0xD000000000000015;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v100);

      (*(v25 + 8))(v79, v26);
    }
  }

  v39 = String._bridgeToObjectiveC()();

  v40 = String._bridgeToObjectiveC()();

  countAndFlagsBits = [objc_opt_self() alertControllerWithTitle:v39 message:v40 preferredStyle:1];

  v41 = v87;
  v42 = [v87 mainBundle];
  v43 = v80;
  v101._object = v80;
  v44._countAndFlagsBits = 0xD000000000000019;
  v44._object = 0x8000000100585A20;
  v45 = v81;
  v46 = v82;
  v47.value._object = (v82 | 0x8000000000000000);
  v47.value._countAndFlagsBits = v81;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v101._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v47, v42, v48, v101);

  v49 = swift_allocObject();
  v50 = v89;
  *(v49 + 16) = v89;
  v51 = v50;
  v52 = String._bridgeToObjectiveC()();

  v95 = sub_1001D69B0;
  v96 = v49;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v79 = &v93;
  v93 = sub_100017328;
  v94 = &unk_10062CFA0;
  v53 = _Block_copy(&aBlock);

  v54 = objc_opt_self();
  v89 = [v54 actionWithTitle:v52 style:1 handler:v53];
  _Block_release(v53);

  v55 = [v41 mainBundle];
  v102._object = v43;
  v56._countAndFlagsBits = 0xD00000000000001ALL;
  v56._object = 0x8000000100585A40;
  v57.value._object = (v46 | 0x8000000000000000);
  v57.value._countAndFlagsBits = v45;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v102._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v102);

  v59 = v88;
  v60 = v84;
  v61 = v90;
  (*(v88 + 16))(v84, v85, v90);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v83 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  *(v64 + v63) = v51;
  v65 = v51;
  v66 = String._bridgeToObjectiveC()();

  v95 = sub_1001D69D4;
  v96 = v64;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100017328;
  v94 = &unk_10062CFF0;
  v67 = _Block_copy(&aBlock);

  v68 = [v54 actionWithTitle:v66 style:2 handler:v67];
  _Block_release(v67);

  v69 = countAndFlagsBits;
  v70 = String._bridgeToObjectiveC()();
  [v69 setAccessibilityIdentifier:v70];

  v71 = v68;
  v72 = String._bridgeToObjectiveC()();
  [v71 setAccessibilityIdentifier:v72];

  v73 = v89;
  v74 = String._bridgeToObjectiveC()();
  [v73 setAccessibilityIdentifier:v74];

  [v69 addAction:v71];
  [v69 addAction:v73];
  [v65 presentViewController:v69 animated:1 completion:0];
}

uint64_t sub_1001D4A20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMRemoveItemViewController: User agreed to force unpair", v12, 2u);
  }

  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for FMIPRemoveItemAction();
  swift_allocObject();
  v13 = FMIPRemoveItemAction.init(item:forced:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;

  v15 = a3;
  sub_1000D6A90(v13, sub_1001D6A70, v14);
}

uint64_t sub_1001D4C44()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPProductType();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v36 = type metadata accessor for FMIPItem();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setModalInPresentation:0];
  v10 = *&v0[OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView];
  v10[OBJC_IVAR____TtC6FindMy19FMActionLandingView_showsActivity] = 0;
  v11 = v10;
  sub_1001C29D8();

  v12 = [v1 navigationItem];
  v13 = [v12 leftBarButtonItem];

  if (v13)
  {
    [v13 setEnabled:1];
  }

  v14 = [v1 headerView];
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v37._object = 0x8000000100579A00;
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0x80000001005859A0;
  v18.value._countAndFlagsBits = 0xD000000000000013;
  v18.value._object = 0x80000001005799E0;
  v37._countAndFlagsBits = 0xD000000000000018;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v37);

  v20 = String._bridgeToObjectiveC()();

  [v14 setTitle:v20];

  v21 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  sub_1001104A8(v1 + v21, v7);
  v22 = v36;
  if ((*(v8 + 48))(v7, 1, v36) == 1)
  {
    return sub_100012DF0(v7, &qword_1006B07D0);
  }

  v24 = v35;
  (*(v8 + 32))(v35, v7, v22);
  FMIPItem.productType.getter();
  v25 = FMIPProductType.isAccessory.getter();
  (*(v33 + 8))(v4, v34);
  if ((v25 & 1) == 0)
  {
    v26 = [v1 headerView];
    v27 = [v15 mainBundle];
    v38._object = 0x8000000100582000;
    v28._countAndFlagsBits = 0xD000000000000011;
    v28._object = 0x80000001005859C0;
    v29.value._object = 0x8000000100581FE0;
    v38._countAndFlagsBits = 0xD000000000000015;
    v29.value._countAndFlagsBits = 0xD000000000000010;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v38);

    v31 = String._bridgeToObjectiveC()();

    [v26 setTitle:v31];
  }

  return (*(v8 + 8))(v24, v22);
}

void sub_1001D50F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPProductType();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v66 = v2;
  v63 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = a1 != 0;

    _os_log_impl(&_mh_execute_header, v15, v16, "FMRemoveItemViewController: Show remove failed if needed %{BOOL}d", v18, 8u);
  }

  else
  {
  }

  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v64 = 0x8000000100579A00;
  v75._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD000000000000019;
  v21._object = 0x8000000100585960;
  v65 = "CLEAR_TAGS_MESSAGE";
  v22.value._object = 0x80000001005799E0;
  v75._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v75);
  countAndFlagsBits = v24._countAndFlagsBits;
  object = v24._object;

  v26 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  v27 = v66;
  swift_beginAccess();
  sub_1001104A8(v27 + v26, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &qword_1006B07D0);
LABEL_10:
    v29 = &selRef__enter3DMode;
    goto LABEL_12;
  }

  (*(v11 + 32))(v13, v9, v10);
  FMIPItem.productType.getter();
  v28 = FMIPProductType.isAccessory.getter();
  (*(v60 + 8))(v6, v61);
  if (v28)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_10;
  }

  v29 = &selRef__enter3DMode;
  v30 = [v19 mainBundle];
  v31.value._countAndFlagsBits = 0xD000000000000010;
  v76._object = 0x8000000100582000;
  v32._countAndFlagsBits = 0xD000000000000019;
  v32._object = 0x8000000100585960;
  v31.value._object = 0x8000000100581FE0;
  v76._countAndFlagsBits = 0xD000000000000015;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v76);
  countAndFlagsBits = v34._countAndFlagsBits;
  object = v34._object;

  (*(v11 + 8))(v13, v10);
LABEL_12:
  v35 = v19;
  v36 = [v19 v29[272]];
  v77._object = v64;
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x8000000100585980;
  v38.value._object = (v65 | 0x8000000000000000);
  v77._countAndFlagsBits = 0xD000000000000018;
  v38.value._countAndFlagsBits = 0xD000000000000013;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v77);

  v40 = swift_allocObject();
  v41 = v63;
  v42 = v66;
  *(v40 + 16) = v63;
  *(v40 + 24) = v42;
  if (v41)
  {
    v43 = objc_opt_self();
    swift_errorRetain();
    swift_errorRetain();
    v44 = v42;
    v45 = [v43 sharedInstance];
    v46 = [v45 isInternalBuild];

    v73 = countAndFlagsBits;
    v74 = object;
    if (v46)
    {
      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      _StringGuts.grow(_:)(17);
      v47._countAndFlagsBits = 0x65746E492A2A200ALL;
      v47._object = 0xEF202A2A6C616E72;
      String.append(_:)(v47);
      v67 = v41;
      sub_10007EBC0(&unk_1006AF7B0);
      _print_unlocked<A, B>(_:_:)();
      String.append(_:)(aBlock);
    }

    v48 = String._bridgeToObjectiveC()();

    v49 = String._bridgeToObjectiveC()();

    v50 = [objc_opt_self() alertControllerWithTitle:v48 message:v49 preferredStyle:1];

    v51 = [v35 v29[272]];
    v78._object = v64;
    v52._countAndFlagsBits = 0x4B4F5F524F525245;
    v52._object = 0xEF4E4F545455425FLL;
    v53.value._object = (v65 | 0x8000000000000000);
    v78._countAndFlagsBits = 0xD000000000000018;
    v53.value._countAndFlagsBits = 0xD000000000000013;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v78);

    v55 = swift_allocObject();
    *(v55 + 16) = sub_1001D6728;
    *(v55 + 24) = v40;

    v56 = String._bridgeToObjectiveC()();

    v71 = sub_1001D69A8;
    v72 = v55;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v69 = sub_100017328;
    v70 = &unk_10062CF50;
    v57 = _Block_copy(&aBlock);

    v58 = [objc_opt_self() actionWithTitle:v56 style:0 handler:v57];
    _Block_release(v57);

    [v50 addAction:v58];
    [v44 presentViewController:v50 animated:1 completion:0];
  }

  else
  {
    v59 = v42;

    sub_1001D6730(0, v59);
  }
}

void sub_1001D595C()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B07D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  sub_1001104A8(v0 + v15, v14);
  v36 = v2;
  v16 = *(v2 + 48);
  v17 = v16(v14, 1, v1);
  sub_100012DF0(v14, &qword_1006B07D0);
  if (v17 == 1)
  {
    v18 = *(*(v0 + OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_mediator) + 56);
    v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v18 + v19, v5);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v20 = v36;
      (*(v36 + 32))(v12, v5, v1);
      (*(v20 + 56))(v12, 0, 1, v1);
      swift_beginAccess();
      sub_1000E211C(v12, v0 + v15);
      swift_endAccess();
    }

    else
    {
      sub_10005D4E4(v5);
    }
  }

  sub_1001104A8(v0 + v15, v9);
  if (v16(v9, 1, v1) == 1)
  {
    sub_100012DF0(v9, &qword_1006B07D0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMRemoveItemViewController: Can't update because there is no selected item", v24, 2u);
    }
  }

  else
  {
    v26 = v35;
    v25 = v36;
    (*(v36 + 32))(v35, v9, v1);
    v27 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_landingView);
    v28 = FMIPItem.name.getter();
    v29 = &v27[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceName];
    *v29 = v28;
    v29[1] = v30;

    v31 = *&v27[OBJC_IVAR____TtC6FindMy19FMActionLandingView_deviceNameLabel];

    v32 = v31;
    v33 = String._bridgeToObjectiveC()();

    [v32 setText:v33];

    (*(v25 + 8))(v26, v1);
  }
}

id sub_1001D5E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRemoveItemViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMRemoveItemViewController()
{
  result = qword_1006B6588;
  if (!qword_1006B6588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D5FC8()
{
  sub_1001D6088();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D6088()
{
  if (!qword_1006BA400)
  {
    type metadata accessor for FMIPItem();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BA400);
    }
  }
}

id sub_1001D60EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_100062074(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10005D4E4(v9);
    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  (*(v11 + 32))(v16, v9, v10);
  v17 = FMIPItem.identifier.getter();
  v19 = v18;
  v20 = OBJC_IVAR____TtC6FindMy26FMRemoveItemViewController_itemToRemove;
  swift_beginAccess();
  sub_1001104A8(v2 + v20, v6);
  if ((*(v11 + 48))(v6, 1, v10))
  {
    sub_100012DF0(v6, &qword_1006B07D0);

    (*(v11 + 8))(v16, v10);
    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  (*(v11 + 16))(v14, v6, v10);
  sub_100012DF0(v6, &qword_1006B07D0);
  v22 = FMIPItem.identifier.getter();
  v24 = v23;
  v25 = *(v11 + 8);
  v25(v14, v10);
  if (v17 == v22 && v19 == v24)
  {

    return (v25)(v16, v10);
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (v25)(v16, v10);
    if ((v26 & 1) == 0)
    {
      return [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  return result;
}

uint64_t sub_1001D6440()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1001D6704;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062CED8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id sub_1001D6730(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v8 = String.init<A>(describing:)();
      v10 = sub_100005B4C(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "FMRemoveItemViewController: error forcing unpairing %s", v6, 0xCu);
      sub_100006060(v7);
    }

    return sub_1001D4C44();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMRemoveItemViewController: succesfully forced unpairing", v15, 2u);
    }

    return [a2 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1001D69D4(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D4A20(a1, v1 + v4, v5);
}

void sub_1001D6A98(char a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001D2558(a1, v1 + v4, v5);
}

uint64_t sub_1001D6B34(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1001D3050(a1, v4, v5);
}

uint64_t sub_1001D6BA8()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1001D6C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPItem() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001D3518(a1, a2, a3, v3 + v8, v9);
}

void LocateIntent.__allocating_init(friendName:friendId:handles:contactId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a5 + 16);
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = a5 + 40;
    do
    {
      if (v9 >= *(a5 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = objc_allocWithZone(INPersonHandle);

      v13 = String._bridgeToObjectiveC()();

      v14 = [v12 initWithValue:v13 type:1];

      if (!v10)
      {
        v15 = v14;
        v10 = v14;
      }

      v16 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v9;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v11 += 16;
    }

    while (v7 != v9);
    if (!v10)
    {
      goto LABEL_15;
    }

    v17 = v10;

    v18 = String._bridgeToObjectiveC()();

    if (a7)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_allocWithZone(INPerson);
    v21 = String._bridgeToObjectiveC()();

    sub_1001D7000();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v20 initWithPersonHandle:v17 nameComponents:0 displayName:v18 image:0 contactIdentifier:v19 customIdentifier:v21 aliases:isa suggestionType:2];

    v24 = [objc_allocWithZone(v27) init];
    v25 = v23;
    [v24 setPerson:v25];
  }

  else
  {
LABEL_15:
    __break(1u);
  }
}

unint64_t sub_1001D7000()
{
  result = qword_1006B65A0;
  if (!qword_1006B65A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B65A0);
  }

  return result;
}

uint64_t sub_1001D704C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v31 = _swiftEmptyArrayStorage;
  sub_10016744C(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v28 = v5 + 56;
  v6 = _HashTable.startBucket.getter();
  v7 = 0;
  v24 = v5 + 64;
  v25 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    v27 = v7;
    v11 = *(v5 + 36);
    v12 = v5;
    v29 = *(*(v5 + 48) + 8 * v6);

    sub_1001FFE94(&v29, a2, &v30);
    if (v2)
    {
      goto LABEL_26;
    }

    v13 = v30;
    v31 = v4;
    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      sub_10016744C((v14 > 1), v15 + 1, 1);
      v4 = v31;
    }

    v4[2] = v15 + 1;
    v4[v15 + 4] = v13;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_23;
    }

    v16 = *(v28 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v12;
    if (v11 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (v24 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1000F6E08(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1000F6E08(v6, v11, 0);
    }

LABEL_4:
    v2 = 0;
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v9)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1001D72B8()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4110);
  sub_100005B14(v0, qword_1006D4110);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001D745C()
{
  v0 = 0x454843415454415FLL;
  v1 = sub_10007EBC0(&unk_1006BBCE0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = sub_1001D76BC(&v16 - v5);
  if (v7 < 0x100u || (v7 & 1) != 0)
  {
    if ((v7 & 1) == 0)
    {
      v0 = 0;
    }
  }

  else
  {
    v8 = type metadata accessor for FMIPDevice();
    if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
    {
      v0 = 0;
    }
  }

  sub_100007204(v6, v4, &unk_1006BBCE0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = FMIPDevice.name.getter();
    v12 = v13;
    (*(v10 + 8))(v4, v9);
  }

  sub_10007EBC0(&qword_1006B6990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552220;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  sub_100012DF0(v6, &unk_1006BBCE0);
  return v0;
}

uint64_t sub_1001D76BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPDeviceState();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v31 - v7;
  v8 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v15 = *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
  v16 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v15 + v17));
  (*(v12 + 16))(v14, v15 + v16, v11);
  os_unfair_lock_unlock((v15 + v17));

  v18 = FMIPDevice.deviceConnectedWithBeacon.getter();
  v20 = v19;
  v21 = *(v12 + 8);
  v21(v14, v11);
  v37 = v2;
  if (!v20)
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  sub_1000E5180(v18, v20, a1);

  sub_100007204(a1, v10, &unk_1006BBCE0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &unk_1006BBCE0);
    v22 = 0;
  }

  else
  {
    v23 = v32;
    FMIPDevice.state.getter();
    v21(v10, v11);
    v24 = v33;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
    v25 = v35;
    v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v26 = *(v34 + 8);
    v26(v24, v25);
    v26(v23, v25);
  }

  v27 = *(v37 + v36) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v28 = *(v27 + *(type metadata accessor for FMDeviceDetailViewModel() + 160));
  if (v28 & ~v22)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 0xFFFFFFFE | v28 & v22 & 1;
}

uint64_t sub_1001D7AEC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v6 = *(v5 + 48);
  if (v6)
  {
    v7 = *(v6 + 16);
    v13[1] = v2 + 16;
    v8 = (v2 + 8);

    v9 = 0;
    while (1)
    {
      v10 = v7 != v9;
      if (v7 == v9)
      {
LABEL_6:

        return v10;
      }

      if (v9 >= *(v6 + 16))
      {
        break;
      }

      (*(v2 + 16))(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v1);
      v11 = sub_1001D7CB8();
      ++v9;
      (*v8)(v4, v1);
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = (*v8)(v4, v1);
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

BOOL sub_1001D7CB8()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006C39A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v31 - v13;
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  FMIPItem.productType.getter();
  if ((*(v2 + 88))(v4, v1) != enum case for FMIPProductType.hawkeye(_:))
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  (*(v2 + 96))(v4, v1);
  sub_100035318(v4, v16, &qword_1006C39A0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v31[1] = v0;
  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: isMagneticCow == true", v20, 2u);
  }

  sub_100007204(v16, v14, &qword_1006C39A0);
  v21 = type metadata accessor for FMIPHawkeyeProductInformation();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v14, 1, v21) == 1)
  {
    sub_100012DF0(v16, &qword_1006C39A0);
    v24 = v14;
LABEL_17:
    sub_100012DF0(v24, &qword_1006C39A0);
    return 0;
  }

  v26 = FMIPHawkeyeProductInformation.vendorIdentifier.getter();
  v27 = v14;
  v28 = *(v22 + 8);
  v28(v27, v21);
  if (v26 != 76)
  {
    v24 = v16;
    goto LABEL_17;
  }

  sub_100007204(v16, v11, &qword_1006C39A0);
  if (v23(v11, 1, v21) == 1)
  {
    sub_100012DF0(v11, &qword_1006C39A0);
  }

  else
  {
    v29 = FMIPHawkeyeProductInformation.productIdentifier.getter();
    v28(v11, v21);
    if (v29 == 8231)
    {
      sub_100012DF0(v16, &qword_1006C39A0);
      return 1;
    }
  }

  sub_100007204(v16, v8, &qword_1006C39A0);
  if (v23(v8, 1, v21) == 1)
  {
    sub_100012DF0(v16, &qword_1006C39A0);
    v24 = v8;
    goto LABEL_17;
  }

  v30 = FMIPHawkeyeProductInformation.productIdentifier.getter();
  sub_100012DF0(v16, &qword_1006C39A0);
  v28(v8, v21);
  return v30 == 8233;
}

char *sub_1001D81C0(uint64_t a1)
{
  v310 = a1;
  v2 = type metadata accessor for DeviceManagementSectionView();
  __chkstk_darwin(v2 - 8);
  v283 = v281 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for ManagedDevice.Properties();
  __chkstk_darwin(v282);
  v281[0] = v281 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedDevice();
  __chkstk_darwin(v5 - 8);
  v281[1] = v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = type metadata accessor for UIHostingControllerSizingOptions();
  v301 = *(v303 - 8);
  __chkstk_darwin(v303);
  v302 = v281 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceLostModeManagementSectionView();
  __chkstk_darwin(v8 - 8);
  v300 = v281 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceLostModeStatusProvider();
  __chkstk_darwin(v10 - 8);
  v299 = v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceLostModeManagementViewModel.Dependencies();
  __chkstk_darwin(v12 - 8);
  v298 = v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B68A0);
  v296 = *(v14 - 8);
  v297 = v14;
  __chkstk_darwin(v14);
  v294 = v281 - v15;
  v16 = sub_10007EBC0(&qword_1006B68A8);
  v308 = *(v16 - 8);
  v309 = v16;
  v17 = __chkstk_darwin(v16);
  v295 = v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v307 = v281 - v19;
  v20 = type metadata accessor for LostDevice.Capabilities();
  __chkstk_darwin(v20 - 8);
  v292 = v281 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LostDevice();
  v305 = *(v22 - 8);
  v306 = v22;
  v23 = __chkstk_darwin(v22);
  v293 = v281 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v304 = v281 - v25;
  v313 = type metadata accessor for FMIPDevice();
  v316 = *(v313 - 8);
  v26 = __chkstk_darwin(v313);
  v291 = v281 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v290 = v281 - v28;
  v29 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v29 - 8);
  v289 = v281 - v30;
  v288 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v288);
  v287 = v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v32 - 8);
  v311 = v281 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v315 = *(v312 - 8);
  __chkstk_darwin(v312);
  v286 = v281 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v322);
  v36 = v281 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = v1;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription) = 0;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
  v324 = objc_opt_self();
  v37 = [v324 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for FMIconPlatterButton();
  v39 = objc_allocWithZone(v38);
  v40 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v39[v40] = [objc_allocWithZone(UIImageView) init];
  v41 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v39[v41] = [objc_allocWithZone(UILabel) init];
  v42 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v39[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v39[v43] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v44 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v45 = type metadata accessor for FMPlatterBackgroundView();
  v46 = objc_allocWithZone(v45);
  v46[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v338.receiver = v46;
  v338.super_class = v45;
  v47 = objc_msgSendSuper2(&v338, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v39[v44] = v47;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v48 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v37;
  v319 = type metadata accessor for FMPlatterIcon;
  sub_10022017C(v36, &v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v49 = &v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v49 = 0xD00000000000001ELL;
  *(v49 + 1) = 0x80000001005863C0;
  v49[40] = 0;
  *(v49 + 3) = 0;
  *(v49 + 4) = 0;
  *(v49 + 2) = 0;
  v39[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 1;
  v39[v48] = 1;
  v337.receiver = v39;
  v317 = v38;
  v337.super_class = v38;
  v50 = v37;
  v51 = objc_msgSendSuper2(&v337, "init");
  sub_1000D3C9C();
  v52 = objc_opt_self();
  v321 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = 0;
  *&v341 = sub_100140B98;
  *(&v341 + 1) = v53;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  v320 = &v340;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D368;
  v54 = _Block_copy(&v339);
  v55 = v51;

  [v52 animateWithDuration:v54 animations:0.35];
  _Block_release(v54);

  v323 = type metadata accessor for FMPlatterIcon;
  v56 = v36;
  sub_1002201E4(v36, type metadata accessor for FMPlatterIcon);
  v57 = v318;
  *(v318 + v285) = v55;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v58 = [v324 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v284 = 0x80000001005863E0;
  v59 = objc_allocWithZone(v38);
  v60 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v59[v60] = [objc_allocWithZone(UIImageView) init];
  v61 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v59[v61] = [objc_allocWithZone(UILabel) init];
  v62 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v59[v62] = [objc_allocWithZone(UILabel) init];
  v63 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v59[v63] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v64 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v65 = objc_allocWithZone(v45);
  v65[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v336.receiver = v65;
  v336.super_class = v45;
  v66 = objc_msgSendSuper2(&v336, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v59[v64] = v66;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v67 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v58;
  sub_10022017C(v36, &v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v319);
  v68 = &v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v69 = v284;
  *v68 = 0xD000000000000028;
  *(v68 + 1) = v69;
  v68[40] = 0;
  *(v68 + 3) = 0;
  *(v68 + 4) = 0;
  *(v68 + 2) = 0;
  v59[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v59[v67] = 0;
  v335.receiver = v59;
  v70 = v317;
  v335.super_class = v317;
  v71 = v58;
  v72 = objc_msgSendSuper2(&v335, "init");
  sub_1000D3C9C();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = 0;
  *&v341 = sub_100141408;
  *(&v341 + 1) = v73;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D3B8;
  v74 = _Block_copy(&v339);
  v75 = v72;

  v76 = v321;
  [v321 animateWithDuration:v74 animations:0.35];
  _Block_release(v74);

  sub_1002201E4(v56, v323);
  *(v57 + v285) = v75;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v77 = [v324 systemIndigoColor];
  v78 = v56;
  swift_storeEnumTagMultiPayload();
  v79 = objc_allocWithZone(v70);
  v80 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v79[v80] = [objc_allocWithZone(UIImageView) init];
  v81 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v79[v81] = [objc_allocWithZone(UILabel) init];
  v82 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v79[v82] = [objc_allocWithZone(UILabel) init];
  v83 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v79[v83] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v84 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v314 = v45;
  v85 = objc_allocWithZone(v45);
  v85[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v334.receiver = v85;
  v334.super_class = v45;
  v86 = objc_msgSendSuper2(&v334, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v79[v84] = v86;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v87 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v77;
  v88 = v319;
  sub_10022017C(v56, &v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v319);
  v89 = &v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v89 = 0xD000000000000029;
  *(v89 + 1) = 0x8000000100586410;
  v89[40] = 0;
  *(v89 + 3) = 0;
  *(v89 + 4) = 0;
  *(v89 + 2) = 0;
  v79[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v79[v87] = 0;
  v90 = v317;
  v333.receiver = v79;
  v333.super_class = v317;
  v91 = v77;
  v92 = objc_msgSendSuper2(&v333, "init");
  sub_1000D3C9C();
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = 0;
  *&v341 = sub_100141408;
  *(&v341 + 1) = v93;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D408;
  v94 = _Block_copy(&v339);
  v95 = v92;

  [v76 animateWithDuration:v94 animations:0.35];
  _Block_release(v94);

  v96 = v78;
  sub_1002201E4(v78, v323);
  v97 = v318;
  *(v318 + v285) = v95;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton;
  v98 = [v324 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v284 = 0x8000000100586440;
  v99 = objc_allocWithZone(v90);
  v100 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v99[v100] = [objc_allocWithZone(UIImageView) init];
  v101 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v99[v101] = [objc_allocWithZone(UILabel) init];
  v102 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v99[v102] = [objc_allocWithZone(UILabel) init];
  v103 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v99[v103] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v104 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v105 = v314;
  v106 = objc_allocWithZone(v314);
  v106[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v332.receiver = v106;
  v332.super_class = v105;
  v107 = objc_msgSendSuper2(&v332, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v99[v104] = v107;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v108 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v98;
  sub_10022017C(v96, &v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v88);
  v109 = &v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v109 = 0xD00000000000001ELL;
  *(v109 + 1) = v284;
  *(v109 + 2) = 0;
  v109[40] = 0;
  *(v109 + 3) = 0;
  *(v109 + 4) = 0;
  v99[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v99[v108] = 0;
  v110 = v317;
  v331.receiver = v99;
  v331.super_class = v317;
  v111 = v98;
  v112 = objc_msgSendSuper2(&v331, "init");
  sub_1000D3C9C();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = 0;
  *&v341 = sub_100141408;
  *(&v341 + 1) = v113;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D458;
  v114 = _Block_copy(&v339);
  v115 = v112;

  [v321 animateWithDuration:v114 animations:0.35];
  _Block_release(v114);

  sub_1002201E4(v96, v323);
  *(v97 + v285) = v115;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton;
  v116 = [v324 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v117 = objc_allocWithZone(v110);
  v118 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v117[v118] = [objc_allocWithZone(UIImageView) init];
  v119 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v117[v119] = [objc_allocWithZone(UILabel) init];
  v120 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v117[v120] = [objc_allocWithZone(UILabel) init];
  v121 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v117[v121] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v122 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v123 = v314;
  v124 = objc_allocWithZone(v314);
  v124[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v330.receiver = v124;
  v330.super_class = v123;
  v125 = objc_msgSendSuper2(&v330, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v117[v122] = v125;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v126 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v116;
  sub_10022017C(v96, &v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v319);
  v127 = &v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v127 = 0xD00000000000001FLL;
  *(v127 + 1) = 0x800000010057F980;
  v127[40] = 0;
  *(v127 + 3) = 0;
  *(v127 + 4) = 0;
  *(v127 + 2) = 0;
  v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v117[v126] = 0;
  v128 = v317;
  v329.receiver = v117;
  v329.super_class = v317;
  v129 = v116;
  v130 = objc_msgSendSuper2(&v329, "init");
  sub_1000D3C9C();
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = 0;
  *&v341 = sub_100141408;
  *(&v341 + 1) = v131;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D4A8;
  v132 = _Block_copy(&v339);
  v133 = v130;

  [v321 animateWithDuration:v132 animations:0.35];
  _Block_release(v132);

  sub_1002201E4(v96, v323);
  *(v97 + v285) = v133;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager) = 0;
  v285 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton;
  v134 = [v324 systemBlueColor];
  v135 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
  v136 = enum case for FMFindingType.owner(_:);
  v137 = type metadata accessor for FMFindingType();
  (*(*(v137 - 8) + 104))(v96, v136, v137);
  *(v96 + v135) = 0;
  v138 = enum case for FMFindingTechnology.proximity(_:);
  v139 = type metadata accessor for FMFindingTechnology();
  (*(*(v139 - 8) + 104))(v96, v138, v139);
  swift_storeEnumTagMultiPayload();
  v140 = objc_allocWithZone(v128);
  v141 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v140[v141] = [objc_allocWithZone(UIImageView) init];
  v142 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v140[v142] = [objc_allocWithZone(UILabel) init];
  v143 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v140[v143] = [objc_allocWithZone(UILabel) init];
  v144 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v140[v144] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v145 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v146 = v314;
  v147 = objc_allocWithZone(v314);
  v147[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v328.receiver = v147;
  v328.super_class = v146;
  v148 = objc_msgSendSuper2(&v328, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v140[v145] = v148;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v149 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v134;
  sub_10022017C(v96, &v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v319);
  v150 = &v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v150 = 0xD000000000000019;
  *(v150 + 1) = 0x8000000100586460;
  v150[40] = 0;
  *(v150 + 3) = 0;
  *(v150 + 4) = 0;
  *(v150 + 2) = 0;
  v140[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v140[v149] = 0;
  v327.receiver = v140;
  v327.super_class = v128;
  v151 = v134;
  v152 = objc_msgSendSuper2(&v327, "init");
  sub_1000D3C9C();
  v153 = swift_allocObject();
  *(v153 + 16) = v152;
  *(v153 + 24) = 0;
  *&v341 = sub_100141408;
  *(&v341 + 1) = v153;
  *&v339 = _NSConcreteStackBlock;
  *(&v339 + 1) = 1107296256;
  *&v340 = sub_100004AE4;
  *(&v340 + 1) = &unk_10062D4F8;
  v154 = _Block_copy(&v339);
  v155 = v152;

  [v321 animateWithDuration:v154 animations:0.35];
  _Block_release(v154);

  sub_1002201E4(v96, v323);
  *(v97 + v285) = v155;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken) = 0;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController____lazy_storage___ownerSession) = 0;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask) = 0;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = 0;
  v156 = v97;
  v322 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialUpdateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  v314 = "DEVICE_DETAIL_FIND_BUTTON";
  LODWORD(v321) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v157 = *(v315 + 104);
  v315 += 104;
  v323 = v157;
  v158 = v286;
  (v157)(v286);
  static DispatchQoS.unspecified.getter();
  *&v339 = _swiftEmptyArrayStorage;
  v319 = sub_10021E650(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  v317 = sub_10007EBC0(&unk_1006AEDD0);
  v320 = sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v97 + v322) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v159 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v160 = objc_allocWithZone(type metadata accessor for FMDeviceNotificationsView());
  *(v97 + v159) = sub_100240BE4();
  v161 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView;
  v162 = objc_allocWithZone(type metadata accessor for FMDeviceShowContactDetailsView());
  *(v97 + v161) = sub_10044B9AC();
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController) = 0;
  v163 = (v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber);
  *v163 = 0;
  v163[1] = 0xE000000000000000;
  v164 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
  v165 = type metadata accessor for FMExtendedPlatterInfoView();
  v166 = objc_allocWithZone(v165);
  *(v97 + v164) = sub_10032B2F8(1, 0);
  v322 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_markAsLostHostingController;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_markAsLostHostingController) = 0;
  v167 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention;
  v168 = objc_allocWithZone(v165);
  *(v97 + v167) = sub_10032B2F8(1, 0);
  v169 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention;
  v170 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView());
  v171 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v170[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v170[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v170[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v170[v171] = 1;
  v172 = sub_1002AEC90(1);
  sub_1003F0AB4();

  *(v97 + v169) = v172;
  v173 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention;
  v174 = objc_allocWithZone(v165);
  *(v97 + v173) = sub_10032B2F8(1, 0);
  v175 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention;
  v176 = objc_allocWithZone(v165);
  *(v97 + v175) = sub_10032B2F8(1, 0);
  v177 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingStatusDebugView;
  v178 = objc_allocWithZone(v165);
  *(v97 + v177) = sub_10032B2F8(0, 0);
  v179 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention;
  v180 = objc_allocWithZone(v165);
  *(v97 + v179) = sub_10032B2F8(1, 1);
  v181 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_repairModeAttention;
  v182 = objc_allocWithZone(v165);
  *(v97 + v181) = sub_10032B2F8(0, 0);
  v183 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
  *(v97 + v183) = [objc_allocWithZone(UIStackView) init];
  v184 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView;
  *(v97 + v184) = [objc_allocWithZone(UIStackView) init];
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint) = 0;
  v185 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  v186 = type metadata accessor for Date();
  v187 = *(*(v186 - 8) + 56);
  v187(v97 + v185, 1, 1, v186);
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v187(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_canShowQueueAlert, 1, 1, v186);
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction) = &_swiftEmptyDictionarySingleton;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem) = 0;
  v188 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_actionQueue;
  (v323)(v158, v321, v312);
  static DispatchQoS.unspecified.getter();
  *&v339 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v97 + v188) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v189 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics;
  v190 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
  (*(*(v190 - 8) + 56))(v97 + v189, 1, 1, v190);
  v191 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  v192 = type metadata accessor for FMIPSafeLocation();
  (*(*(v192 - 8) + 56))(v97 + v191, 1, 1, v192);
  v193 = (v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress);
  *v193 = 0;
  v193[1] = 0;
  *(v97 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded) = 0;
  v194 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent;
  v195 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v195 - 8) + 56))(v97 + v194, 1, 1, v195);
  v196 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_geocodingCache;
  v197 = v289;
  static Locale.autoupdatingCurrent.getter();
  v198 = type metadata accessor for Locale();
  (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v156 + v196) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  *(v156 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention) = 0;
  *(v156 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 0;
  *(v156 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) = 1;
  *(v156 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer) = 0;
  v199 = v156;
  type metadata accessor for FMDeviceDetailDataSource();
  swift_allocObject();

  v201 = sub_1004E1F1C(v200);
  *(v199 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) = v201;
  v202 = objc_allocWithZone(type metadata accessor for FMFindingExperiencePresenter(0));

  v203 = v201;
  v323 = v201;

  *(v199 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperiencePresenter) = sub_100160AB0(v200);
  v204 = type metadata accessor for FMFindingExperienceCoordinator();
  v205 = objc_allocWithZone(v204);
  *&v205[OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession] = 0;
  v206 = OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mode;
  v207 = type metadata accessor for FindingMode(0);
  (*(*(v207 - 8) + 56))(&v205[v206], 1, 1, v207);
  *&v205[OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_mediator] = v200;
  v326.receiver = v205;
  v326.super_class = v204;
  swift_retain_n();
  v208 = objc_msgSendSuper2(&v326, "init");
  sub_100458E70();

  *(v199 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperienceCoordinator) = v208;
  v209 = objc_allocWithZone(type metadata accessor for FMErrorConditionsAttentionModule());

  *(v199 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule) = sub_1004F28B0(v210);
  v211 = *(v203 + 5);
  v212 = *(*v211 + class metadata base offset for ManagedBuffer + 16);
  v213 = (*(*v211 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v211 + v213));
  v214 = v316;
  v321 = *(v316 + 16);
  v215 = v290;
  v216 = v313;
  (v321)(v290, v211 + v212, v313);
  os_unfair_lock_unlock((v211 + v213));

  v217 = FMIPDevice.baIdentifier.getter();
  v219 = v218;
  v320 = *(v214 + 8);
  (v320)(v215, v216);
  v316 = v214 + 8;
  v220 = objc_allocWithZone(type metadata accessor for FMTrustedLocationDetailViewController());

  v222 = sub_1004A811C(v221, v217, v219);
  *(v318 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController) = v222;
  v223 = v323;
  v224 = *(v323 + 5);
  v225 = *(*v224 + class metadata base offset for ManagedBuffer + 16);
  v226 = (*(*v224 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v224 + v226));
  v227 = v224 + v225;
  v228 = v313;
  v229 = v321;
  (v321)(v215, v227, v313);
  os_unfair_lock_unlock((v224 + v226));

  v319 = FMIPDevice.modelDisplayName.getter();
  v317 = v230;
  v231 = v215;
  v232 = v320;
  (v320)(v231, v228);
  static LostDevice.Capabilities.isLostModeEnabled.getter();
  v233 = *(v223 + 5);
  v234 = *(*v233 + class metadata base offset for ManagedBuffer + 16);
  v235 = (*(*v233 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v233 + v235));
  v236 = v233 + v234;
  v237 = v291;
  v229(v291, v236, v228);
  os_unfair_lock_unlock((v233 + v235));

  FMIPDevice.isConsideredAccessory.getter();
  (v232)(v237, v228);
  v238 = v304;
  v239 = v318;
  LostDevice.init(name:capabilities:isConsideredAccessory:)();
  type metadata accessor for LostModeStatusCoordinator(0);
  v240 = swift_allocObject();
  v241 = OBJC_IVAR____TtC6FindMyP33_FDB0C6A0A8911E0A6244ECE6337EF12425LostModeStatusCoordinator_continuation;
  v242 = sub_10007EBC0(&unk_1006B6800);
  (*(*(v242 - 8) + 56))(&v240[v241], 1, 1, v242);
  *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lostModeStatusCoordinator) = v240;
  type metadata accessor for DeviceLostModeReportingState();
  (*(v296 + 104))(v294, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v297);

  v243 = v307;
  v321 = v240;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v305 + 16))(v293, v238, v306);
  (*(v308 + 16))(v295, v243, v309);
  DeviceLostModeStatusProvider.init(stream:)();
  DeviceLostModeManagementViewModel.Dependencies.init(lostModeStatusProvider:)();
  type metadata accessor for DeviceLostModeManagementViewModel();
  swift_allocObject();
  *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lostModeViewModel) = DeviceLostModeManagementViewModel.init(lostDevice:dependencies:)();
  v320 = swift_retain_n();
  DeviceLostModeManagementSectionView.init(viewModel:)();
  v244 = objc_allocWithZone(sub_10007EBC0(&qword_1006B68B8));
  v245 = UIHostingController.init(rootView:)();
  v246 = v322;
  v247 = *(v239 + v322);
  *(v239 + v322) = v245;

  v248 = *(v239 + v246);
  if (v248)
  {
    v249 = v246;
    sub_10007EBC0(&qword_1006B3280);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_100552220;
    v251 = v248;
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    *&v339 = v250;
    sub_10021E650(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
    sub_10007EBC0(&qword_1006B3288);
    sub_100004044(&qword_1006C1320, &qword_1006B3288);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    v252 = *(v239 + v249);
    if (v252)
    {
      v253 = v252;
      UIHostingController.safeAreaRegions.setter();

      v254 = *(v239 + v249);
      if (v254)
      {
        result = [v254 view];
        if (!result)
        {
LABEL_13:
          __break(1u);
          return result;
        }

        v256 = result;
        v257 = [v324 clearColor];
        [v256 setBackgroundColor:v257];
      }
    }
  }

  *&v339 = 0;
  sub_10021E650(&qword_1006B68C0, &type metadata accessor for ManagedDevice.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  ManagedDevice.init(properties:)();
  type metadata accessor for DeviceManagementSectionViewModel();
  swift_allocObject();
  *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_deviceManagementViewModel) = DeviceManagementSectionViewModel.init(managedDevice:isCancelling:isRemoveButtonEnabled:)();

  DeviceManagementSectionView.init(viewModel:)();
  v258 = objc_allocWithZone(sub_10007EBC0(&qword_1006B68C8));
  v259 = UIHostingController.init(rootView:)();
  v260 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_deviceManagementHostingController;
  *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_deviceManagementHostingController) = v259;
  sub_10007EBC0(&qword_1006B3280);
  v261 = swift_allocObject();
  *(v261 + 16) = xmmword_100552220;
  v262 = v259;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v339 = v261;
  sub_10021E650(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_10007EBC0(&qword_1006B3288);
  sub_100004044(&qword_1006C1320, &qword_1006B3288);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v263 = *(v239 + v260);
  UIHostingController.safeAreaRegions.setter();

  result = [*(v239 + v260) view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v264 = result;
  v265 = [v324 clearColor];
  [v264 setBackgroundColor:v265];

  v325 = 0;
  v339 = xmmword_100554AC0;
  v340 = xmmword_100554AD0;
  v341 = xmmword_100552170;
  v342 = xmmword_100552180;
  v343 = xmmword_100552190;
  v344 = xmmword_1005521A0;
  v345 = xmmword_1005521B0;
  v346 = xmmword_1005521C0;
  v347 = xmmword_1005521D0;
  v348 = xmmword_1005521E0;
  v349 = 0;
  v350 = 0x403A000000000000;
  v351 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v352 = _Q0;
  v353 = 0x4046000000000000;
  v354 = 0;

  v272 = sub_100278C9C(v271, &v339);
  *(v323 + 4) = &off_10062D270;
  swift_unknownObjectWeakAssign();
  *(*&v272[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView] + OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_delegate + 8) = &off_10062D248;
  swift_unknownObjectWeakAssign();
  *(*&v272[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController] + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8) = &off_10062D238;
  swift_unknownObjectWeakAssign();
  v273 = qword_1006AEBE0;
  v274 = v272;
  if (v273 != -1)
  {
    swift_once();
  }

  v275 = type metadata accessor for Logger();
  sub_100005B14(v275, qword_1006D4630);
  v276 = Logger.logObject.getter();
  v277 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v276, v277))
  {
    v278 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    *v278 = 138412290;
    *(v278 + 4) = v274;
    *v279 = v272;
    v280 = v274;
    _os_log_impl(&_mh_execute_header, v276, v277, "FMDeviceDetailContentViewController%@: init", v278, 0xCu);
    sub_100012DF0(v279, &unk_1006AF760);
  }

  (*(v308 + 8))(v307, v309);
  (*(v305 + 8))(v304, v306);
  *(*&v274[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperiencePresenter] + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8) = &off_10062D158;
  swift_unknownObjectWeakAssign();
  *(*&v274[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView] + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_delegate + 8) = &off_10062D218;
  swift_unknownObjectWeakAssign();

  return v274;
}

uint64_t sub_1001DB15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B68D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10007EBC0(&unk_1006B6800);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMyP33_FDB0C6A0A8911E0A6244ECE6337EF12425LostModeStatusCoordinator_continuation;
  swift_beginAccess();
  sub_1000BBF40(v6, a2 + v9, &qword_1006B68D0);
  return swift_endAccess();
}

void sub_1001DB2D4()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_delegate);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundDelegate);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight, &unk_1006B0000);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_canShowQueueAlert, &unk_1006B0000);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics, &qword_1006B68D8);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation, &unk_1006BB1B0);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent, &qword_1006B68E0);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer);
}

id sub_1001DB68C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDeviceDetailContentViewController%@: deinit", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMDeviceDetailContentViewController(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_1001DBC88(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMDeviceDetailContentViewController(0);
  v19.receiver = v2;
  v19.super_class = v7;
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  *(*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 104) = 1;

  sub_1004E156C();

  v9 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v10 = sub_1003CCEA0(v2, v9);

  *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription] = v10;

  v11 = v2;
  sub_1001DBEA0();
  sub_1001DC624();
  v12 = *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession];
  if (v12)
  {
    aBlock[4] = sub_10021162C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A44B4;
    aBlock[3] = &unk_10062F988;
    v13 = _Block_copy(aBlock);
    v14 = v12;
    [v14 startLocalFindableConnectionMaterialMonitoringWithCompletion:v13];
    _Block_release(v13);
  }

  v15 = *&v11[v8];
  v16 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v15 + v16, v6, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002015AC(v6);
  return sub_1002201E4(v6, type metadata accessor for FMDeviceDetailViewModel);
}

uint64_t sub_1001DBEA0()
{
  v1 = v0;
  v45 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v45);
  v44 = (&v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v3 - 8);
  v46 = &v42 - v4;
  v5 = type metadata accessor for UUID();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: Finding action START function called", v17, 2u);
  }

  v43 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v19 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v18 + v19, v13, type metadata accessor for FMDeviceDetailViewModel);
  v20 = *(v18 + 40);
  v21 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  (*(v8 + 16))(v10, v20 + v21, v7);
  os_unfair_lock_unlock((v20 + v22));

  LOBYTE(v18) = FMIPDevice.isLocalFindable.getter();
  (*(v8 + 8))(v10, v7);
  if (v18 & 1) == 0 || (v13[*(v11 + 148)])
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_10:

      return sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "FMDeviceDetailContentViewController: Finding action START Selected device is not local findable, returning";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

    goto LABEL_10;
  }

  if (v13[*(v11 + 156)] != 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_10;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "FMDeviceDetailContentViewController: Finding action START ranging not allowed, returning";
    goto LABEL_9;
  }

  v28 = *(v13 + 3);
  if (!v28)
  {
    return sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
  }

  v29 = *(v13 + 2);

  v30 = v46;
  UUID.init(uuidString:)();
  v31 = v48;
  v32 = v49;
  if ((*(v48 + 48))(v30, 1, v49) != 1)
  {
    (*(v31 + 32))(v47, v30, v32);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100005B4C(v29, v28, &v50);
      _os_log_impl(&_mh_execute_header, v33, v34, "FMDeviceDetailContentViewController: Finding action START for identifier: %s", v35, 0xCu);
      sub_100006060(v36);
    }

    v46 = *(v43 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperienceCoordinator);
    v37 = swift_allocObject();
    *(v37 + 16) = v29;
    *(v37 + 24) = v28;
    v38 = v47;
    sub_1001A4520(v47, sub_10021E618, v37);

    v39 = *(v31 + 16);
    v40 = v31;
    v41 = v44;
    v39(v44, v38, v32);
    swift_storeEnumTagMultiPayload();
    sub_100162FAC(v41);
    sub_1002201E4(v41, type metadata accessor for FindingMode);
    v39(v41, v38, v32);
    swift_storeEnumTagMultiPayload();
    sub_100458B70(v41);
    sub_1002201E4(v41, type metadata accessor for FindingMode);
    (*(v40 + 8))(v38, v32);
    return sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
  }

  sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);

  return sub_100012DF0(v30, &unk_1006B20C0);
}

void sub_1001DC624()
{
  v1 = [objc_allocWithZone(SPLocalFindableConnectionMaterialMonitoringSession) init];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_100220254;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100211414;
  v10 = &unk_10062F9B0;
  v3 = _Block_copy(&v7);

  [v1 setPeripheralConnectionMaterialCallback:v3];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10022025C;
  v12 = v4;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100004AE4;
  v10 = &unk_10062F9D8;
  v5 = _Block_copy(&v7);

  [v1 setSessionInvalidatedCallback:v5];
  _Block_release(v5);
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = v1;
}

void sub_1001DC82C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    if ((*(v2 + *(type metadata accessor for FMDeviceDetailViewModel() + 92)) & 4) != 0)
    {
      sub_100202644();
    }

    else
    {
      sub_1002021D0();
    }
  }
}

void sub_1001DC9A0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v49);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for FMIPSeparationEvent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMDeviceDetailContentViewController(0);
  v63.receiver = v2;
  v63.super_class = v15;
  objc_msgSendSuper2(&v63, "viewWillDisappear:", a1 & 1);
  *(*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 104) = 0;

  sub_1004E156C();

  v16 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription;
  v17 = *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription];
  if (v17)
  {
    v47 = v8;
    v18 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
    v19 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();

    v20 = v18;
    v21 = sub_1003CD738(&v18[v19], v17);
    v22 = *&v18[v19];
    if (v22 >> 62)
    {
      v46 = v21;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v46;
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 < v21)
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_14;
    }

    sub_1003CDB08(v21, v23);
    swift_endAccess();

    *&v2[v16] = 0;

    v8 = v47;
  }

  sub_1001FB114();
  v24 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent;
  swift_beginAccess();
  sub_100007204(&v2[v24], v11, &qword_1006B68E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006B68E0);
  }

  else
  {
    v25 = v48;
    (*(v13 + 32))(v48, v11, v12);

    FMIPManager.enqueue(separationEvent:)();
    (*(v13 + 8))(v25, v12);
  }

  v26 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v27 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v27[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
  v28 = v27;
  sub_10041E45C();

  v29 = v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending];
  v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending] = 0;
  if ((v29 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D810();
    swift_unknownObjectRelease();
  }

  v30 = *(*&v2[v26] + 56);
  v31 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10022017C(v30 + v31, v8, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1001DD208();
    sub_1002201E4(v8, type metadata accessor for FMSelectedSection);
    goto LABEL_18;
  }

  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_23;
  }

LABEL_14:
  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4630);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "FMDeviceDetailContentViewController: Not stopping nearby discovery cuz current selection is ranging", v35, 2u);
  }

LABEL_18:
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  v61 = sub_100220244;
  v62 = v36;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100004AE4;
  v60 = &unk_10062F938;
  v37 = _Block_copy(&aBlock);
  v38 = v2;
  v39 = v50;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v40 = v52;
  v41 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v54 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);

  v42 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession;
  v43 = *&v38[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession];
  if (v43)
  {
    v61 = State.rawValue.getter;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_1001A44B4;
    v60 = &unk_10062F960;
    v44 = _Block_copy(&aBlock);
    [v43 stopLocalFindableConnectionMaterialMonitoringWithCompletion:v44];
    _Block_release(v44);
    v45 = *&v38[v42];
    *&v38[v42] = 0;
  }
}

uint64_t sub_1001DD208()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v38 = v37 - v3;
  v4 = type metadata accessor for UUID();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMDeviceDetailContentViewController: Finding action STOP function called", v16, 2u);
  }

  v37[1] = v1;
  v17 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v18 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v17 + v18, v12, type metadata accessor for FMDeviceDetailViewModel);
  v19 = *(v17 + 40);
  v20 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v21));
  (*(v7 + 16))(v9, v19 + v20, v6);
  os_unfair_lock_unlock((v19 + v21));

  LOBYTE(v17) = FMIPDevice.isLocalFindable.getter();
  (*(v7 + 8))(v9, v6);
  if (v17 & 1) == 0 || (v12[*(v10 + 148)])
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceDetailContentViewController: Finding action STOP Selected device is not local findable, returning", v24, 2u);
    }

    return sub_1002201E4(v12, type metadata accessor for FMDeviceDetailViewModel);
  }

  v26 = *(v12 + 3);
  if (!v26)
  {
    return sub_1002201E4(v12, type metadata accessor for FMDeviceDetailViewModel);
  }

  v27 = *(v12 + 2);

  v28 = v38;
  UUID.init(uuidString:)();
  v30 = v40;
  v29 = v41;
  if ((*(v40 + 48))(v28, 1, v41) != 1)
  {
    (*(v30 + 32))(v39, v28, v29);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100005B4C(v27, v26, &v42);
      _os_log_impl(&_mh_execute_header, v31, v32, "FMDeviceDetailContentViewController: Finding action STOP for identifier: %s", v33, 0xCu);
      sub_100006060(v34);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = v27;
    *(v35 + 24) = v26;
    v36 = v39;
    sub_1001A48DC(v39, sub_10021E5EC, v35);

    (*(v30 + 8))(v36, v29);
    return sub_1002201E4(v12, type metadata accessor for FMDeviceDetailViewModel);
  }

  sub_1002201E4(v12, type metadata accessor for FMDeviceDetailViewModel);

  return sub_100012DF0(v28, &unk_1006B20C0);
}

uint64_t sub_1001DD82C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask;
  if (*(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask))
  {

    sub_10007EBC0(&unk_1006AF7B0);
    Task.cancel()();
  }

  *(a1 + v2) = 0;
}

void sub_1001DD91C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for FMDeviceDetailContentViewController(0);
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 layoutMargins];
  v5 = v4;

  [v1 setSpacing:v5];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 layoutMargins];
  v10 = v9;

  [v6 setSpacing:v10];
  v11 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 layoutMargins];
  v16 = v15;

  [v12 setConstant:-v16];
}

void sub_1001DDAD8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v2 - 8);
  v4 = &v185 - v3;
  sub_1002791F0();
  v197 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView) setAxis:1];
  v5 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView) setAxis:0];
  v196 = v5;
  [*(v0 + v5) setDistribution:1];
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention);
  v7 = type metadata accessor for FMPlatterIcon();
  swift_storeEnumTagMultiPayload();
  v8 = *(v7 - 8);
  v201 = *(v8 + 56);
  v202 = v7;
  v200 = v8 + 56;
  v201(v4, 0, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v4, v6 + v9, &qword_1006B3298);
  swift_endAccess();
  sub_1002B23D8();
  v195 = v4;
  v10 = v6;
  sub_100012DF0(v4, &qword_1006B3298);
  v11 = *(v6 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label);
  v205 = &type metadata for SolariumFeatureFlag;
  v193 = sub_10000BD04();
  v206 = v193;
  v12 = v11;
  v13 = isFeatureEnabled(_:)();
  sub_100006060(&v203);
  if (v13)
  {
    v14 = 0xD000000000000028;
  }

  else
  {
    v14 = 0xD000000000000021;
  }

  if (v13)
  {
    v15 = "L_CONNECTION_TIME";
  }

  else
  {
    v15 = "ontentViewController";
  }

  v203 = 0;
  v204 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v203 = 0xD000000000000012;
  v204 = 0x800000010057A180;
  v16._object = (v15 | 0x8000000000000000);
  v16._countAndFlagsBits = v14;
  String.append(_:)(v16);
  v17 = v203;
  v18 = v204;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v207._object = v18;
  v21._object = (v15 | 0x8000000000000000);
  v21._countAndFlagsBits = v14;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v207._countAndFlagsBits = v17;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v207);

  v23 = String._bridgeToObjectiveC()();

  [v12 setText:v23];

  v24 = *(v10 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle);
  v25 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v198 = v1;
  v26 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v27 = type metadata accessor for FMDeviceDetailViewModel();
  v28 = *(v26 + *(v27 + 52));
  v199 = v19;
  if (v28 == 1)
  {
    v29 = v193;
    v30 = v24;
    v31 = [v19 mainBundle];
    v208._object = 0x80000001005868B0;
    v32._countAndFlagsBits = 0xD00000000000003FLL;
    v32._object = 0x8000000100586870;
    v208._countAndFlagsBits = 0xD000000000000051;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v208);
  }

  else
  {
    v29 = v193;
    v205 = &type metadata for SolariumFeatureFlag;
    v206 = v193;
    v34 = v24;
    v35 = isFeatureEnabled(_:)();
    sub_100006060(&v203);
    v31 = [v19 mainBundle];
    if (v35)
    {
      v184 = 0x8000000100586830;
      v36 = 0xD00000000000002BLL;
      v37 = 0x8000000100586800;
      v38 = 0xD00000000000003DLL;
    }

    else
    {
      v184 = 0x8000000100586570;
      v36 = 0xD000000000000024;
      v37 = 0x8000000100586540;
      v38 = 0xD000000000000036;
    }

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, 0, v31, v39, *&v38);
    v19 = v199;
  }

  v40 = String._bridgeToObjectiveC()();

  [v24 setText:v40];

  v41 = [v19 mainBundle];
  v190 = 0x800000010057B940;
  v209._object = 0x800000010057B940;
  v42._countAndFlagsBits = 0xD000000000000017;
  v191 = "g CANCEL_BUTTON_TITLE";
  v42._object = 0x800000010057B920;
  v209._countAndFlagsBits = 0xD000000000000029;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v209);

  *(v10 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionTitle) = v44;

  v45 = *(v10 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel);

  v46 = String._bridgeToObjectiveC()();

  [v45 setText:v46];

  v47 = *(v198 + v25) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  *(v10 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction) = *(v47 + *(v27 + 52));
  v205 = &type metadata for SolariumFeatureFlag;
  v206 = v29;
  v48 = isFeatureEnabled(_:)();
  sub_100006060(&v203);
  v194 = v10;
  if (v48)
  {
    sub_1002AF9D8();
  }

  else
  {
    sub_1002B0CB4();
  }

  v49 = v198;
  sub_1001F9550();
  v50 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention;
  v51 = *(*(v49 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);
  v52 = [v199 mainBundle];
  v210._object = 0x800000010057FC90;
  v53._countAndFlagsBits = 0xD000000000000023;
  v53._object = 0x800000010057FC60;
  v210._countAndFlagsBits = 0xD000000000000035;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v210);

  v55 = String._bridgeToObjectiveC()();

  [v51 setText:v55];

  v56 = v50;
  v193 = v50;
  v57 = *(v49 + v50);
  v58 = v195;
  v59 = v202;
  swift_storeEnumTagMultiPayload();
  v60 = v201;
  v201(v58, 0, 1, v59);
  v61 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v62 = v57;
  sub_1000BBE44(v58, v57 + v61, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v58, &qword_1006B3298);
  v63 = *(v49 + v56);
  v63[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  v64 = v63;
  sub_10032ADBC();

  v65 = *(v49 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention);
  swift_storeEnumTagMultiPayload();
  v60(v58, 0, 1, v59);
  v66 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v58, v65 + v66, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v58, &qword_1006B3298);
  v67 = v199;
  v68 = [v199 mainBundle];
  v211._object = 0x80000001005865D0;
  v69._object = 0x80000001005865B0;
  v211._countAndFlagsBits = 0xD000000000000028;
  v69._countAndFlagsBits = 0xD000000000000016;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v211);

  *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v71;

  v72 = *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v73 = String._bridgeToObjectiveC()();

  [v72 setText:v73];

  v74 = [v67 mainBundle];
  v212._object = v190;
  v75._countAndFlagsBits = 0xD000000000000017;
  v75._object = (v191 | 0x8000000000000000);
  v212._countAndFlagsBits = 0xD000000000000029;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v212);

  *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v77;

  v78 = *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v79 = String._bridgeToObjectiveC()();

  [v78 setText:v79];

  v80 = [v67 mainBundle];
  v81.value._countAndFlagsBits = 0xD000000000000010;
  v213._countAndFlagsBits = 0xD000000000000015;
  v189 = 0xD000000000000015;
  v213._object = 0x8000000100582060;
  v82._countAndFlagsBits = 0xD000000000000019;
  v82._object = 0x8000000100586600;
  v81.value._object = 0x8000000100582040;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v81, v80, v83, v213);

  *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v84;

  v85 = *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v86 = String._bridgeToObjectiveC()();

  [v85 setText:v86];

  v192 = v65;
  *(v65 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v87 = *(v49 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention);
  v88 = v202;
  swift_storeEnumTagMultiPayload();
  v201(v58, 0, 1, v88);
  v89 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v58, &v87[v89], &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v58, &qword_1006B3298);
  v90 = [v67 mainBundle];
  v214._object = 0x8000000100586640;
  v91._countAndFlagsBits = 0xD00000000000001ELL;
  v91._object = 0x8000000100586620;
  v214._countAndFlagsBits = 0xD000000000000030;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v214);

  *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = v93;

  v94 = *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];

  v95 = String._bridgeToObjectiveC()();

  [v94 setText:v95];

  v96 = [v67 mainBundle];
  v215._object = 0x80000001005866A0;
  v97._countAndFlagsBits = 0xD00000000000001FLL;
  v97._object = 0x8000000100586680;
  v215._countAndFlagsBits = 0xD000000000000031;
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v215);

  *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v99;

  v100 = *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v101 = String._bridgeToObjectiveC()();

  [v100 setText:v101];

  v186 = "_SUBTITLE_PEOPLE_GENERIC";
  v187 = 0x800000010057FDC0;
  v102 = [v67 mainBundle];
  v216._object = 0x800000010057FDC0;
  v103._countAndFlagsBits = 0xD000000000000030;
  v103._object = 0x800000010057FD80;
  v216._countAndFlagsBits = 0xD000000000000042;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v216);

  *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v105;

  v106 = *&v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v107 = String._bridgeToObjectiveC()();

  [v106 setText:v107];

  v191 = v87;
  v87[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  sub_10032ADBC();
  v108 = v198;
  v109 = *(v198 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingStatusDebugView);
  v110 = v202;
  swift_storeEnumTagMultiPayload();
  v111 = v201;
  v201(v58, 0, 1, v110);
  v112 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v58, &v109[v112], &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v58, &qword_1006B3298);
  *&v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = xmmword_1005587A0;

  v113 = *&v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
  v114 = String._bridgeToObjectiveC()();
  [v113 setText:v114];

  v115 = &v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle];
  *v115 = 0;
  *(v115 + 1) = 0;

  [*&v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel] setText:0];
  *&v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = xmmword_1005587B0;

  v116 = *&v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];
  v117 = String._bridgeToObjectiveC()();
  [v116 setText:v117];

  v190 = v109;
  v109[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  sub_10032ADBC();
  v118 = *(v108 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention);
  swift_storeEnumTagMultiPayload();
  v111(v58, 0, 1, v110);
  v119 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v58, v118 + v119, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v58, &qword_1006B3298);
  v120 = v199;
  v121 = [v199 mainBundle];
  v217._object = 0x800000010057BEA0;
  v122._object = 0x800000010057BE80;
  v217._countAndFlagsBits = 0xD000000000000027;
  v122._countAndFlagsBits = v189;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v124 = NSLocalizedString(_:tableName:bundle:value:comment:)(v122, 0, v121, v123, v217);

  *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v124;

  v125 = *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v126 = String._bridgeToObjectiveC()();

  [v125 setText:v126];

  v127 = [v120 mainBundle];
  v218._object = v187;
  v128._countAndFlagsBits = 0xD000000000000030;
  v128._object = (v186 | 0x8000000000000000);
  v218._countAndFlagsBits = 0xD000000000000042;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  v130 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v218);

  *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v130;

  v131 = *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v132 = String._bridgeToObjectiveC()();

  [v131 setText:v132];

  v133 = [v120 mainBundle];
  v219._object = 0x800000010057BF60;
  v134._countAndFlagsBits = 0x45535F4F545F4F47;
  v134._object = 0xEE0053474E495454;
  v219._countAndFlagsBits = 0xD000000000000020;
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  v136 = NSLocalizedString(_:tableName:bundle:value:comment:)(v134, 0, v133, v135, v219);

  *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v136;

  v137 = *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v138 = String._bridgeToObjectiveC()();

  [v137 setText:v138];

  *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8) = &off_10062D228;
  v139 = v198;
  swift_unknownObjectWeakAssign();
  v188 = v118;
  *(v118 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v140 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
  v141 = *(v139 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention);
  v142 = v202;
  swift_storeEnumTagMultiPayload();
  v201(v58, 0, 1, v142);
  v143 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v144 = v141;
  sub_1000BBE44(v58, v141 + v143, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v58, &qword_1006B3298);
  v145 = *(v139 + v140);
  v146 = [v120 mainBundle];
  v220._object = 0x800000010057D660;
  v147._countAndFlagsBits = 0xD000000000000024;
  v147._object = 0x80000001005866E0;
  v148.value._object = 0x800000010057D640;
  v220._countAndFlagsBits = 0xD00000000000001BLL;
  v148.value._countAndFlagsBits = 0xD000000000000016;
  v149._countAndFlagsBits = 0;
  v149._object = 0xE000000000000000;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v147, v148, v146, v149, v220);

  *&v145[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v150;

  v151 = *&v145[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v152 = String._bridgeToObjectiveC()();

  [v151 setText:v152];

  v153 = *(v139 + v140);
  v154 = [v120 mainBundle];
  v221._object = 0x800000010057D660;
  v155._countAndFlagsBits = 0xD000000000000020;
  v155._object = 0x8000000100586710;
  v156.value._object = 0x800000010057D640;
  v221._countAndFlagsBits = 0xD00000000000001BLL;
  v156.value._countAndFlagsBits = 0xD000000000000016;
  v157._countAndFlagsBits = 0;
  v157._object = 0xE000000000000000;
  v158 = NSLocalizedString(_:tableName:bundle:value:comment:)(v155, v156, v154, v157, v221);

  *&v153[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v158;

  v159 = *&v153[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v160 = String._bridgeToObjectiveC()();

  [v159 setText:v160];

  v161 = *(v139 + v140);
  v161[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  v162 = v161;
  sub_10032ADBC();

  v163 = *(v139 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_repairModeAttention);
  v164 = v202;
  swift_storeEnumTagMultiPayload();
  v201(v58, 0, 1, v164);
  v165 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_1000BBE44(v58, v163 + v165, &qword_1006B3298);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v58, &qword_1006B3298);
  v166 = v199;
  v167 = [v199 mainBundle];
  v222._object = 0x8000000100586760;
  v168._countAndFlagsBits = 0xD00000000000001DLL;
  v168._object = 0x8000000100586740;
  v222._countAndFlagsBits = 0xD00000000000002FLL;
  v169._countAndFlagsBits = 0;
  v169._object = 0xE000000000000000;
  v170 = NSLocalizedString(_:tableName:bundle:value:comment:)(v168, 0, v167, v169, v222);

  *(v163 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v170;

  v171 = *(v163 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v172 = String._bridgeToObjectiveC()();

  [v171 setText:v172];

  v173 = [v166 mainBundle];
  v223._object = 0x80000001005867C0;
  v174._countAndFlagsBits = 0xD000000000000020;
  v174._object = 0x8000000100586790;
  v223._countAndFlagsBits = 0xD000000000000032;
  v175._countAndFlagsBits = 0;
  v175._object = 0xE000000000000000;
  v176 = NSLocalizedString(_:tableName:bundle:value:comment:)(v174, 0, v173, v175, v223);

  *(v163 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v176;

  v177 = *(v163 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v178 = String._bridgeToObjectiveC()();

  [v177 setText:v178];

  *(v163 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  [*(v139 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel) setHidden:1];
  v179 = v197;
  [*(*(v139 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) + OBJC_IVAR____TtC6FindMy12FMScrollView_content) addSubview:*(v139 + v197)];
  [*(v139 + v179) addArrangedSubview:v188];
  [*(v139 + v179) addArrangedSubview:*(v139 + v193)];
  [*(v139 + v179) addArrangedSubview:v194];
  [*(v139 + v179) addArrangedSubview:v192];
  [*(v139 + v179) insertArrangedSubview:*(v139 + v140) atIndex:0];
  [*(v139 + v179) insertArrangedSubview:v190 atIndex:0];
  [*(v139 + v179) insertArrangedSubview:v191 atIndex:0];
  [*(v139 + v179) insertArrangedSubview:v163 atIndex:0];
  [*(v139 + v179) addArrangedSubview:*(v139 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule)];
  [*(v139 + v179) addArrangedSubview:*(v139 + v196)];
  v180 = *(v139 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_deviceManagementHostingController);
  v181 = *(v139 + v179);
  v182 = [v180 view];
  if (v182)
  {
    v183 = v182;
    [v181 addArrangedSubview:v182];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001DF57C()
{
  sub_10027A200();
  v1 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*&v0[v1] bottomAnchor];
  v3 = [*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] + OBJC_IVAR____TtC6FindMy12FMScrollView_content) bottomAnchor];
  v4 = [v2 constraintLessThanOrEqualToAnchor:v3];

  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [*&v0[v1] topAnchor];
  v7 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView] bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:19.0];

  *(v5 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:16.0];
  *(v5 + 40) = v13;
  v14 = [*&v0[v1] trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 trailingAnchor];

  v19 = [v14 constraintEqualToAnchor:v18 constant:-16.0];
  *(v5 + 48) = v19;
  *(v5 + 56) = v4;
  sub_10000905C(0, &qword_1006B3A70);
  v20 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint] = v20;
}

void sub_1001DF898()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handlePlaySound"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleStopSound"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleMuteLeft"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] addGestureRecognizer:v5];
  v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleMuteRight"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton] addGestureRecognizer:?];
  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleDirections"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton] addGestureRecognizer:?];
  v15 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleFind"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton] addGestureRecognizer:?];
  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleSeparation"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention] addGestureRecognizer:?];
  v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleInnaccurateLocationAttentionTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention] addGestureRecognizer:?];
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"showMismatchLearnMore"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention] addGestureRecognizer:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"showPairingIncompleteLearnMore"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention] addGestureRecognizer:v7];
  v8 = *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention];
  if (*(v8 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction) == 1)
  {
    v9 = v5;
    v10 = v4;
    v11 = v3;
    v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"showSoundPendingLearnMore"];
    [v8 addGestureRecognizer:v12];

    v3 = v11;
    v4 = v10;
    v5 = v9;
  }

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleNotificationsOffAttentionTap"];

  [*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention] addGestureRecognizer:v18];
}

uint64_t sub_1001DFC5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v4 - 8);
  v256 = &v239 - v5;
  v255 = type metadata accessor for UUID();
  v6 = *(v255 - 8);
  __chkstk_darwin(v255);
  v254 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for FMIPItemPairingState();
  v240 = *(v242 - 8);
  v8 = __chkstk_darwin(v242 - 8);
  v257 = &v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v267 = &v239 - v10;
  v11 = sub_10007EBC0(&qword_1006B6968);
  v12 = __chkstk_darwin(v11 - 8);
  v269 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v239 - v14);
  v16 = type metadata accessor for FMIPItemGroup();
  v249 = *(v16 - 8);
  __chkstk_darwin(v16);
  v258 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007EBC0(&unk_1006BB1C0);
  v19 = __chkstk_darwin(v18 - 8);
  v261 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v244 = &v239 - v21;
  v270 = type metadata accessor for FMIPDevice();
  v265 = *(v270 - 8);
  __chkstk_darwin(v270);
  v259 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007EBC0(&unk_1006BBCE0);
  v24 = __chkstk_darwin(v23 - 8);
  i = &v239 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v243 = &v239 - v27;
  v28 = __chkstk_darwin(v26);
  v245 = &v239 - v29;
  v30 = __chkstk_darwin(v28);
  countAndFlagsBits = &v239 - v31;
  __chkstk_darwin(v30);
  v266 = &v239 - v32;
  v264 = type metadata accessor for FMIPBatteryStatus();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v262 = &v239 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v274 = My;
  v275 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v35 = sub_100008FC0(&aBlock._countAndFlagsBits);
  (*(*(My - 8) + 104))(v35, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
  LODWORD(v247) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v36 = type metadata accessor for FMDeviceDetailViewModel();
  v37 = (a1 + v36[19]);
  v39 = *v37;
  v38 = v37[1];
  v40 = (v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText);
  *v40 = v39;
  v40[1] = v38;

  sub_10027D190();
  v41 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
  v42 = (a1 + v36[18]);
  v43 = *v42;
  v44 = v42[1];
  v45 = String._bridgeToObjectiveC()();
  [v41 setText:v45];

  v46 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  v248 = v41;
  [v41 setHidden:v46 == 0];
  v274 = &type metadata for SolariumFeatureFlag;
  v275 = sub_10000BD04();
  v47 = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v252 = v2;
  v253 = a1;
  v271 = v36;
  v250 = v16;
  v268 = v15;
  v241 = v6;
  if (v47)
  {
    v48 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel);
    v49 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed;
    if ((*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed) & 1) != 0 || (v63 = (a1 + v36[16]), (v64 = v63[1]) == 0))
    {
      v67 = 1;
    }

    else
    {
      v65 = *v63 & 0xFFFFFFFFFFFFLL;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v66 = HIBYTE(v64) & 0xF;
      }

      else
      {
        v66 = v65;
      }

      v67 = v66 == 0;
    }

    [v48 setHidden:v67];
    [*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel) setHidden:*(v2 + v49)];
    v62 = v271;
  }

  else
  {
    v50 = (a1 + v36[16]);
    v51 = v50[1];
    if (v51)
    {
      v52 = *v50;
      v53 = objc_opt_self();

      v54 = [v53 mainBundle];
      v281._object = 0x800000010057DBA0;
      v55._countAndFlagsBits = 0xD000000000000027;
      v55._object = 0x800000010057DB70;
      v281._countAndFlagsBits = 0xD000000000000039;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v281);

      sub_10007EBC0(&unk_1006B20B0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100552210;
      *(v57 + 56) = &type metadata for String;
      v58 = sub_10008EE84();
      *(v57 + 64) = v58;
      *(v57 + 32) = v52;
      *(v57 + 40) = v51;
      v59 = (v253 + v271[17]);
      v61 = *v59;
      v60 = v59[1];
      *(v57 + 96) = &type metadata for String;
      *(v57 + 104) = v58;
      v62 = v271;
      *(v57 + 72) = v61;
      *(v57 + 80) = v60;

      String.init(format:_:)();
      a1 = v253;
      v2 = v252;
    }

    else
    {
      v62 = v36;
    }

    v48 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel);
    [v48 setHidden:1];
  }

  v68 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel);
  v69 = String._bridgeToObjectiveC()();

  v246 = v68;
  [v68 setText:v69];

  if (*(a1 + v62[16] + 8))
  {
    v70 = String._bridgeToObjectiveC()();
  }

  else
  {
    v70 = 0;
  }

  [v48 setText:v70];

  if (*(a1 + v62[37]) == 1)
  {
    v71 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
    v72 = &v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v73 = *&v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
    v74 = *&v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
    v76 = *&v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
    v75 = *&v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
    v77 = *&v71[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
    *v72 = 0xD000000000000028;
    *(v72 + 1) = 0x80000001005872A0;
    *(v72 + 2) = 0;
    *(v72 + 3) = 0;
    *(v72 + 4) = 0;
    v78 = v72[40];
    v72[40] = 0;
    v79 = v71;
    v80 = v76;
    a1 = v253;
    v2 = v252;
    sub_1000D5A54(v73, v74, v80, v75, v77, v78);
    sub_1000D3C9C();
    v81 = objc_opt_self();
    v82 = swift_allocObject();
    *(v82 + 16) = v79;
    *(v82 + 24) = 1;
    v275 = sub_100141408;
    v276 = v82;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v273 = sub_100004AE4;
    v274 = &unk_10062F7A8;
    v83 = _Block_copy(&aBlock);
    v84 = v79;

    [v81 animateWithDuration:v83 animations:0.35];
    _Block_release(v83);
  }

  v85 = *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel);
  v86 = String._bridgeToObjectiveC()();
  [v85 setText:v86];

  if (!(v247 & 1 | ((*(a1 + v271[36]) & 1) == 0)))
  {
    v87 = *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel);
    v88 = objc_opt_self();
    v89 = v87;
    v90 = [v88 mainBundle];
    v282._object = 0x8000000100587260;
    v91._countAndFlagsBits = 0xD00000000000001FLL;
    v91._object = 0x8000000100587240;
    v282._countAndFlagsBits = 0xD000000000000031;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v282);

    v93 = String._bridgeToObjectiveC()();

    [v89 setText:v93];
  }

  v94 = v271;
  [v246 setTextColor:*(a1 + v271[26])];
  [v248 setTextColor:*(a1 + v94[27])];
  v95 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView);
  v96 = *(a1 + v94[21]);
  v97 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
  *(*&v95[OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView] + OBJC_IVAR____TtC6FindMy13FMBatteryView_level) = v96;
  sub_10004802C();
  v263[13](v262, enum case for FMIPBatteryStatus.charging(_:), v264);
  sub_10021E650(&unk_1006C1DB0, &type metadata accessor for FMIPBatteryStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock._countAndFlagsBits == v279 && aBlock._object == v280)
  {
    v98 = 1;
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (v263[1])(v262, v264);

  v99 = *&v95[v97];
  *(v99 + OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging) = v98 & 1;
  [*(v99 + OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView) setHidden:(v98 & 1) == 0];
  if (*(a1 + v271[30]))
  {
    v100 = 0.1;
  }

  else
  {
    v100 = 0.2;
  }

  v101 = v267;
  if (v96 >= v100)
  {
    v102 = 0;
  }

  else
  {
    v102 = 2;
  }

  *(*&v95[v97] + OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode) = v102;
  sub_100048358();
  v103 = v271;
  v104 = *(a1 + v271[29]);
  [v95 setHidden:(v104 & 1) == 0];
  [*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel) setHidden:(v104 & 1) == 0];
  v262 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention;
  v105 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention);
  v105[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = (*(a1 + v103[34]) & 1) == 0;
  v106 = v105;
  sub_10032ADBC();

  v107 = (*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v109 = *v107;
  v108 = v107[1];

  v110 = v266;
  sub_1000E512C(v109, v108, v266);

  v111 = v110;
  v112 = countAndFlagsBits;
  sub_100007204(v111, countAndFlagsBits, &unk_1006BBCE0);
  v113 = v265;
  v114 = *(v265 + 48);
  v115 = v270;
  v264 = v265 + 48;
  v263 = v114;
  if ((v114)(v112, 1, v270) == 1)
  {
    sub_100012DF0(v112, &unk_1006BBCE0);
  }

  else
  {
    v116 = v259;
    (*(v113 + 32))(v259, v112, v115);
    v248 = *(v113 + 16);
    v117 = v245;
    (v248)(v245, v116, v115);
    v118 = *(v113 + 56);
    v118(v117, 0, 1, v115);
    v119 = sub_10022F104(0xD00000000000002DLL, 0x80000001005871D0, v117);
    v120 = v115;
    v122 = v121;
    v124 = v123;
    v126 = v125;

    countAndFlagsBits = sub_10022E0A8(v119, v122, v124, v126, 0, 0);
    v128 = v127;

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v117, &unk_1006BBCE0);
    (v248)(v117, v116, v120);
    v118(v117, 0, 1, v120);
    v129 = sub_10022F104(0xD000000000000034, 0x8000000100587200, v117);
    v131 = v130;
    v133 = v132;
    v135 = v134;

    v136 = sub_10022E0A8(v129, v131, v133, v135, 0, 0);
    v138 = v137;

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v117, &unk_1006BBCE0);
    v139 = FMIPDevice.ownerIdentifier.getter();
    v141 = v140;
    if (v139 == FMIPDefaultOwnerIdentifier.getter() && v141 == v142)
    {

      v143 = countAndFlagsBits;
    }

    else
    {
      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v143 = countAndFlagsBits;
      if ((v144 & 1) == 0)
      {
        v143 = v136;
        v128 = v138;
      }
    }

    v2 = v252;
    v145 = v262;
    v146 = *&v262[v252];
    v147 = &v146[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
    *v147 = v143;
    v147[1] = v128;
    v148 = v146;

    v149 = *&v148[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

    v150 = String._bridgeToObjectiveC()();

    [v149 setText:v150];

    v151 = *&v145[v2];
    v152 = objc_opt_self();
    v153 = v151;
    v154 = [v152 mainBundle];
    v283._object = 0x800000010057B940;
    v155._object = 0x800000010057B920;
    v283._countAndFlagsBits = 0xD000000000000029;
    v155._countAndFlagsBits = 0xD000000000000017;
    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    v157 = NSLocalizedString(_:tableName:bundle:value:comment:)(v155, 0, v154, v156, v283);

    *&v153[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v157;

    v158 = *&v153[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

    v159 = String._bridgeToObjectiveC()();

    [v158 setText:v159];

    v115 = v270;
    (*(v265 + 8))(v259, v270);

    a1 = v253;
    v101 = v267;
  }

  v160 = v271;
  v245 = *(a1 + v271[23]);
  if ((v245 & 0x20000) != 0)
  {
    v161 = *(a1 + v271[24]);
    v162 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView);
    sub_10044C7B8(BYTE2(v161) & 1);

    v163 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController);
    if (v163)
    {
      v164 = v163;
      sub_10022778C((v161 & 0x20000) != 0, BYTE2(v161) & 1);

      v115 = v270;
    }
  }

  v165 = *(a1 + v160[24]);
  *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (v165 & 0x40000) == 0;
  sub_10032ADBC();
  *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (v165 & 0x80000) == 0;
  sub_10032ADBC();
  *(*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_repairModeAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = (v165 & 0x100000) == 0;
  sub_10032ADBC();
  v166 = [objc_opt_self() sharedInstance];
  v167 = [v166 isInternalBuild];

  if (v167)
  {
    v168 = [objc_opt_self() standardUserDefaults];
    v169 = String._bridgeToObjectiveC()();
    v170 = [v168 BOOLForKey:v169];

    if (v170)
    {
      v171 = v243;
      sub_100007204(v266, v243, &unk_1006BBCE0);
      v115 = v270;
      v172 = (v263)(v171, 1, v270);
      v173 = v250;
      if (v172 == 1)
      {
        sub_100012DF0(v171, &unk_1006BBCE0);
        v174 = v249;
        v175 = v244;
        (*(v249 + 56))(v244, 1, 1, v173);
        v176 = 0;
      }

      else
      {
        v177 = v244;
        FMIPDevice.itemGroup.getter();
        v175 = v177;
        (*(v265 + 8))(v171, v115);
        v174 = v249;
        v176 = (*(v249 + 48))(v177, 1, v173) != 1;
      }

      sub_100012DF0(v175, &unk_1006BB1C0);
    }

    else
    {
      v176 = 0;
      v173 = v250;
      v174 = v249;
      v115 = v270;
    }
  }

  else
  {
    v176 = 0;
    v173 = v250;
    v174 = v249;
  }

  v178 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingStatusDebugView);
  v178[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = !v176;
  v244 = v178;
  sub_10032ADBC();
  v179 = i;
  sub_100007204(v266, i, &unk_1006BBCE0);
  if ((v263)(v179, 1, v115) == 1)
  {
    sub_100012DF0(v179, &unk_1006BBCE0);
    v180 = v261;
    (*(v174 + 56))(v261, 1, 1, v173);
LABEL_56:
    sub_100012DF0(v180, &unk_1006BB1C0);
LABEL_57:
    v182 = v271;
    sub_10027C468(*(a1 + v271[28]));
    sub_1001E1EC0(a1);
    sub_1002053C8(a1);
    sub_1001E9144(*(a1 + v182[25]), *a1, *(a1 + 8));
    sub_1002015AC(a1);
    sub_1001F995C();
    sub_1001E3A7C(a1, (v245 & 0x1400) != 0);
    sub_1001E655C();
    sub_1001EF478(a1);
    return sub_100012DF0(v266, &unk_1006BBCE0);
  }

  v181 = v115;
  v180 = v261;
  FMIPDevice.itemGroup.getter();
  (*(v265 + 8))(v179, v181);
  if ((*(v174 + 48))(v180, 1, v173) == 1)
  {
    goto LABEL_56;
  }

  v184 = v258;
  (*(v174 + 32))(v258, v180, v173);
  if (!v176)
  {
    (*(v174 + 8))(v184, v173);
    goto LABEL_57;
  }

  v277 = 0;
  v278 = 0xE000000000000000;
  v185 = FMIPItemGroup.itemPairingStateMap.getter();
  v186 = v185;
  v187 = *(v185 + 16);
  if (v187)
  {
    v188 = sub_10008C904(*(v185 + 16), 0);
    v189 = *(sub_10007EBC0(&qword_1006AF940) - 8);
    v190 = sub_1004A2348(&aBlock, v188 + ((*(v189 + 80) + 32) & ~*(v189 + 80)), v187, v186);

    sub_10000BEC8();
    v191 = v190 == v187;
    v192 = v242;
    if (!v191)
    {
      goto LABEL_86;
    }

    v101 = v267;
  }

  else
  {

    v188 = _swiftEmptyArrayStorage;
    v192 = v242;
  }

  v193 = v269;
  aBlock._countAndFlagsBits = v188;
  sub_100211DE8(&aBlock);
  v194 = v257;
  v264 = 0;
  v195 = 0;
  v263 = (v240 + 32);
  v262 = (v240 + 16);
  v261 = (v240 + 88);
  v196 = (v240 + 8);
  countAndFlagsBits = aBlock._countAndFlagsBits;
  v197 = *(aBlock._countAndFlagsBits + 16);
  v248 = (v240 + 96);
  v247 = (v241 + 32);
  LODWORD(v259) = enum case for FMIPItemPairingState.paired(_:);
  v246 = (v241 + 8);
  v265 = v240 + 8;
  for (i = v197; ; v197 = i)
  {
    if (v195 == v197)
    {
      v201 = v101;
      v202 = sub_10007EBC0(&qword_1006AF940);
      (*(*(v202 - 8) + 56))(v193, 1, 1, v202);
      v270 = v197;
      goto LABEL_74;
    }

    v203 = countAndFlagsBits;
    if ((v195 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v195 >= *(countAndFlagsBits + 16))
    {
      goto LABEL_85;
    }

    v201 = v101;
    v204 = v194;
    v205 = v195;
    v206 = sub_10007EBC0(&qword_1006AF940);
    v207 = *(v206 - 8);
    v208 = v203 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
    v196 = v265;
    sub_100007204(v208 + *(v207 + 72) * v205, v193, &qword_1006AF940);
    v270 = v205 + 1;
    v194 = v204;
    (*(v207 + 56))(v193, 0, 1, v206);
LABEL_74:
    v209 = v268;
    sub_100035318(v193, v268, &qword_1006B6968);
    v210 = sub_10007EBC0(&qword_1006AF940);
    if ((*(*(v210 - 8) + 48))(v209, 1, v210) == 1)
    {

      v234 = v278;
      v235 = v244;
      v236 = &v244[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
      *v236 = v277;
      *(v236 + 1) = v234;

      v237 = *&v235[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

      v238 = String._bridgeToObjectiveC()();

      [v237 setText:v238];

      (*(v249 + 8))(v258, v250);
      a1 = v253;
      goto LABEL_57;
    }

    v211 = v209;
    v213 = *v209;
    v212 = v209[1];
    v101 = v201;
    (*v263)(v201, v211 + *(v210 + 48), v192);
    v214 = v277 & 0xFFFFFFFFFFFFLL;
    if ((v278 & 0x2000000000000000) != 0)
    {
      v214 = HIBYTE(v278) & 0xF;
    }

    if (v214)
    {
      v215._countAndFlagsBits = 10;
      v215._object = 0xE100000000000000;
      String.append(_:)(v215);
    }

    (*v262)(v194, v201, v192);
    v216 = (*v261)(v194, v192);
    if (v216 != v259)
    {
      (*v196)(v194, v192);
LABEL_67:
      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      aBlock._countAndFlagsBits = 0x23206C6169726553;
      aBlock._object = 0xEA0000000000203ALL;
      v198._countAndFlagsBits = v213;
      v198._object = v212;
      String.append(_:)(v198);

      v199._countAndFlagsBits = 8250;
      v199._object = 0xE200000000000000;
      String.append(_:)(v199);
      sub_10021E650(&qword_1006B6970, &type metadata accessor for FMIPItemPairingState);
      v200._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v200);

      String.append(_:)(aBlock);

      (*v196)(v101, v192);
      goto LABEL_68;
    }

    (*v248)(v194, v192);
    v217 = v254;
    v218 = v255;
    (*v247)(v254, v194, v255);
    v219 = FMIPItemGroup.items.getter();
    __chkstk_darwin(v219);
    v220 = v192;
    v221 = v218;
    v222 = v256;
    v223 = v264;
    sub_10011FB64(sub_10021FF48, v219, v256);
    v264 = v223;
    v224 = v222;

    v225 = type metadata accessor for FMIPItem();
    v226 = *(v225 - 8);
    if ((*(v226 + 48))(v224, 1, v225) == 1)
    {
      sub_100012DF0(v224, &qword_1006B07D0);
      (*v246)(v217, v221);
      v192 = v220;
      v194 = v257;
      v101 = v267;
      v196 = v265;
      goto LABEL_67;
    }

    v227 = v224;
    v228 = FMIPItem.name.getter();
    v230 = v229;
    (*(v226 + 8))(v227, v225);
    aBlock._countAndFlagsBits = v228;
    aBlock._object = v230;
    v231._countAndFlagsBits = 8250;
    v231._object = 0xE200000000000000;
    String.append(_:)(v231);
    sub_10021E650(&qword_1006B6970, &type metadata accessor for FMIPItemPairingState);
    v232 = v267;
    v233._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v233);

    String.append(_:)(aBlock);

    v196 = v265;
    (*v265)(v232, v220);
    (*v246)(v217, v221);
    v101 = v232;
    v192 = v220;
    v194 = v257;
LABEL_68:
    v193 = v269;
    v195 = v270;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1001E1E24()
{
  v0 = FMIPItem.identifier.getter();
  v2 = v1;
  if (v0 == UUID.uuidString.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

void sub_1001E1EC0(unsigned __int8 *a1)
{
  v187 = type metadata accessor for DispatchWorkItemFlags();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v170 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for DispatchQoS();
  v183 = *(v185 - 1);
  __chkstk_darwin(v185);
  v182 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for FMDeviceDetailViewModel();
  v179 = *(v204 - 1);
  __chkstk_darwin(v204);
  v180 = v4;
  v181 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for FMFindingType();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v178 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v10 - 8);
  v174 = &v170 - v11;
  v12 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v12 - 8);
  v173 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for FMFindableObject();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v191 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for FindingExperienceType();
  v190 = *(v192 - 8);
  v15 = __chkstk_darwin(v192);
  v175 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v189 = &v170 - v17;
  v18 = sub_10007EBC0(&unk_1006B20C0);
  v19 = __chkstk_darwin(v18 - 8);
  v171 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v200 = &v170 - v21;
  v22 = type metadata accessor for UUID();
  v201 = *(v22 - 8);
  v202 = v22;
  v23 = __chkstk_darwin(v22);
  v172 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v195 = &v170 - v25;
  v26 = type metadata accessor for FMItemCapabilities();
  v198 = *(v26 - 8);
  v199 = v26;
  v27 = __chkstk_darwin(v26);
  v197 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = &v170 - v29;
  v30 = type metadata accessor for FMExperienceType();
  v188 = *(v30 - 8);
  v31 = __chkstk_darwin(v30);
  v33 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v170 - v34;
  v36 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v36 - 8);
  v38 = &v170 - v37;
  v39 = type metadata accessor for FMIPItem();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v203 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = a1;
  LODWORD(v41) = a1[40];
  v42 = v206;
  if (v41 != 1)
  {
LABEL_4:
    v43 = *(*&v42[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
    v44 = *(*v43 + class metadata base offset for ManagedBuffer + 16);
    v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v43 + v45));
    (*(v6 + 16))(v8, v43 + v44, v5);
    os_unfair_lock_unlock((v43 + v45));

    v46 = FMIPDevice.isLocalFindable.getter();
    (*(v6 + 8))(v8, v5);
    if ((v46 & 1) != 0 && (v205[v204[37]] & 1) == 0 && v205[v204[39]] == 1)
    {
      v47 = v42;
      v48 = v181;
      sub_10022017C(v205, v181, type metadata accessor for FMDeviceDetailViewModel);
      v49 = (*(v179 + 80) + 24) & ~*(v179 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v47;
      sub_10021FB38(v48, v50 + v49, type metadata accessor for FMDeviceDetailViewModel);
      v212 = sub_10021FF68;
      v213 = v50;
      aBlock = _NSConcreteStackBlock;
      v209 = 1107296256;
      v210 = sub_100004AE4;
      v211 = &unk_10062F7F8;
      v51 = _Block_copy(&aBlock);
      v52 = v47;
      v53 = v182;
      static DispatchQoS.unspecified.getter();
      v207 = _swiftEmptyArrayStorage;
      sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      v54 = v184;
      v55 = v187;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);
      (*(v186 + 8))(v54, v55);
      (v183[1])(v53, v185);
    }

    return;
  }

  sub_100007204(&v205[v204[9]], v38, &qword_1006B07D0);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_100012DF0(v38, &qword_1006B07D0);
    v42 = v206;
    goto LABEL_4;
  }

  v187 = v40;
  v56 = v203;
  (*(v40 + 32))(v203, v38, v39);
  v57 = v206;
  v58 = *&v206[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager];
  v170 = v39;
  v186 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager;
  if (v58)
  {
    v59 = v58;
    v183 = FMIPItem.identifier.getter();
    v184 = v60;
    v61 = FMConnectionManager.identifiers.getter();
    v62 = dispatch thunk of FMConnectionManager.type.getter();
    if (v57[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable] == 1)
    {
      __chkstk_darwin(v62);
      *(&v170 - 2) = v63;
      v64 = v63;
      OS_dispatch_queue.sync<A>(execute:)();

      v56 = v203;
      v65 = aBlock;
    }

    else
    {
      v65 = 1;
    }

    v185 = v59;
    type metadata accessor for FMConnectionManager();
    v66 = static FMConnectionManager.hostSupportsRanging.getter();
    v67 = &v205[v204[10]];
    v68 = &enum case for FMExperienceType.bt(_:);
    if ((v67[8] & 1) == 0 && !(((*v67 & 0x400) == 0 || (v66 & 1) == 0) | v65 & 1))
    {
      v68 = &enum case for FMExperienceType.r1(_:);
    }

    v69 = v188;
    (*(v188 + 104))(v33, *v68, v30);
    v70 = static FMExperienceType.== infix(_:_:)();
    v71 = *(v69 + 8);
    v71(v33, v30);
    v72 = (v71)(v35, v30);
    aBlock = v183;
    v209 = v184;
    __chkstk_darwin(v72);
    *(&v170 - 2) = &aBlock;
    v73 = sub_10008A40C(sub_10011F7D4, (&v170 - 4), v61);

    if (v73 & 1) != 0 && (v70)
    {
      (*(v187 + 8))(v56, v39);

      return;
    }

    v74 = v185;
    dispatch thunk of FMConnectionManager.disconnect()();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100005B14(v75, qword_1006D4630);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "FMDeviceDetailContentViewController: Existing item connection manager was discarded due to item or state change", v78, 2u);
    }

    v184 = 0;
  }

  else
  {
    v184 = 0;
  }

  My = type metadata accessor for Feature.FindMy();
  v211 = My;
  v80 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v212 = v80;
  v81 = sub_100008FC0(&aBlock);
  v185 = *(*(My - 8) + 104);
  (v185)(v81, enum case for Feature.FindMy.modernRose(_:), My);
  LODWORD(v188) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v82 = v196;
  FMIPItem.capabilities.getter();
  v83 = v197;
  static FMItemCapabilities.canR2.getter();
  sub_10021E650(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v84 = v199;
  v85 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v86 = *(v198 + 8);
  v86(v83, v84);
  v86(v82, v84);
  if (v85)
  {
    type metadata accessor for FMConnectionManager();
    LODWORD(v199) = static FMConnectionManager.hostSupportsRanging.getter();
  }

  else
  {
    LODWORD(v199) = 0;
  }

  v87 = v200;
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  v89 = v201;
  v88 = v202;
  v200 = v201[6];
  if ((v200)(v87, 1, v202) == 1)
  {
    __break(1u);
    goto LABEL_68;
  }

  v90 = objc_opt_self();
  v91 = v195;
  v198 = v89[4];
  (v198)(v195, v87, v88);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (v89[1])(v91, v88);
  v93 = [v90 generateDiscoveryTokenFromBeaconIdentifier:isa];

  v211 = My;
  v212 = v80;
  v94 = sub_100008FC0(&aBlock);
  (v185)(v94, enum case for Feature.FindMy.robustBird(_:), My);
  v95 = isFeatureEnabled(_:)();
  v96 = sub_100006060(&aBlock);
  if (v199)
  {
    v97 = v206;
    v98 = v170;
    if ((v188 & (v93 != 0)) == 1)
    {
      if (v206[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable] == 1)
      {
        v99 = *&v206[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];
        v201 = v93;
        v100 = *(v99 + 16);
        __chkstk_darwin(v96);
        *(&v170 - 2) = v100;
        v101 = v201;
        v102 = v100;
        OS_dispatch_queue.sync<A>(execute:)();
        v93 = v201;

        if ((aBlock & 1) == 0)
        {
          v103 = &enum case for FindingExperienceType.precision(_:);
          goto LABEL_37;
        }

LABEL_36:
        v201 = v93;
        v103 = &enum case for FindingExperienceType.proximity(_:);
LABEL_37:
        v105 = v194;
        v106 = *(sub_10007EBC0(&unk_1006B4210) + 48);
        v107 = enum case for FindingModel.nearbyInteraction(_:);
        v108 = type metadata accessor for FindingModel();
        v109 = v189;
        (*(*(v108 - 8) + 104))(v189, v107, v108);
        v110 = &v109[v106];
        v111 = v109;
        (*(v193 + 104))(v110, enum case for FMFindingType.owner(_:), v105);
        v112 = v190;
        v113 = v192;
        (*(v190 + 104))(v111, *v103, v192);
        v114 = FMIPItem.name.getter();
        v204 = v115;
        v205 = v114;
        FMIPItem.identifier.getter();
        v116 = v171;
        UUID.init(uuidString:)();

        v117 = v202;
        if ((v200)(v116, 1, v202) != 1)
        {
          (v198)(v172, v116, v117);
          v118 = *(v112 + 16);
          v119 = v175;
          v118(v175, v111, v113);
          FMIPItem.findingProductType.getter(v173);
          v120 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
          (*(*(v120 - 8) + 56))(v174, 1, 1, v120);
          v121 = v201;
          v122 = v111;
          v123 = v191;
          v205 = v121;
          FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
          sub_10007EBC0(&qword_1006B32C8);
          v124 = swift_allocObject();
          *(v124 + 16) = xmmword_100552220;
          v125 = v177;
          *(v124 + 56) = v177;
          *(v124 + 64) = &protocol witness table for FMFindableObject;
          v126 = sub_100008FC0((v124 + 32));
          v127 = v176;
          (*(v176 + 16))(v126, v123, v125);
          v118(v119, v122, v113);
          [objc_allocWithZone(ARSession) init];
          v128 = objc_allocWithZone(type metadata accessor for FMItemNIConnectionManager());
          v129 = FMItemNIConnectionManager.init(findables:findingType:arSession:)();
          sub_10021E650(&qword_1006B6980, type metadata accessor for FMDeviceDetailContentViewController);
          v130 = v206;
          swift_unknownObjectRetain();
          dispatch thunk of FMItemNIConnectionManager.delegate.setter();
          v131 = v186;
          v132 = *&v130[v186];
          *&v130[v186] = v129;
          v133 = v129;

          v134 = v203;
          if (*(*&v130[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 104) == 1)
          {
            v135 = v205;
            v136 = *&v130[v131];
            v137 = v170;
            if (v136)
            {
              v138 = v136;
              dispatch thunk of FMConnectionManager.connect()();
              v139 = v135;

              v135 = v133;
              v133 = v138;
            }

            else
            {
              v139 = v205;
            }

            v157 = v192;
          }

          else
          {
            v139 = v205;
            v135 = v205;
            v157 = v192;
            v137 = v170;
          }

          (*(v127 + 8))(v191, v125);
          (*(v190 + 8))(v189, v157);
          (*(v187 + 8))(v134, v137);
          return;
        }

LABEL_68:
        __break(1u);
        return;
      }

LABEL_35:
      v104 = v93;
      goto LABEL_36;
    }
  }

  else
  {
    v97 = v206;
    v96 = sub_1001D7AEC();
    v98 = v170;
    if (((v96 | v95) & v188 & 1) != 0 && v93)
    {
      goto LABEL_35;
    }
  }

  v140 = v93;
  if (v97[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable] == 1)
  {
    __chkstk_darwin(v96);
    *(&v170 - 2) = v141;
    v142 = v141;
    OS_dispatch_queue.sync<A>(execute:)();

    v143 = aBlock;
  }

  else
  {
    v143 = 1;
  }

  v144 = v187;
  v145 = v203;
  v146 = v186;
  type metadata accessor for FMConnectionManager();
  v147 = static FMConnectionManager.hostSupportsRanging.getter();
  v148 = &v205[v204[10]];
  if ((v148[8] & 1) != 0 || ((*v148 & 0x400) == 0 || (v147 & 1) == 0) | v143 & 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    sub_100005B14(v149, qword_1006D4630);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "FMDeviceDetailContentViewController: Creating new instance of item connection manager for BT connections.", v152, 2u);
      v144 = v187;
    }

    sub_10007EBC0(&qword_1006B32C8);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_100552220;
    *(v153 + 56) = v98;
    *(v153 + 64) = sub_10021E650(&qword_1006B6908, &type metadata accessor for FMIPItem);
    v154 = sub_100008FC0((v153 + 32));
    (*(v144 + 16))(v154, v145, v98);
    (*(v193 + 104))(v178, enum case for FMFindingType.owner(_:), v194);
    v155 = objc_allocWithZone(type metadata accessor for FMItemBTConnectionManager());
    v156 = FMItemBTConnectionManager.init(findables:connectionContext:)();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v158 = type metadata accessor for Logger();
    sub_100005B14(v158, qword_1006D4630);
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&_mh_execute_header, v159, v160, "FMDeviceDetailContentViewController: Creating new instance of item connection manager for R1 connections.", v161, 2u);
      v144 = v187;
    }

    sub_10007EBC0(&qword_1006B32C8);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_100552220;
    *(v162 + 56) = v98;
    *(v162 + 64) = sub_10021E650(&qword_1006B6908, &type metadata accessor for FMIPItem);
    v163 = sub_100008FC0((v162 + 32));
    (*(v144 + 16))(v163, v145, v98);
    (*(v193 + 104))(v178, enum case for FMFindingType.owner(_:), v194);
    v164 = objc_allocWithZone(type metadata accessor for FMItemR1ConnectionManager());
    v156 = FMItemR1ConnectionManager.init(findables:connectionContext:)();
    sub_10021E650(&qword_1006B6978, type metadata accessor for FMDeviceDetailContentViewController);
    swift_unknownObjectRetain();
    dispatch thunk of FMItemR1ConnectionManager.delegate.setter();
  }

  v165 = *&v97[v146];
  *&v97[v146] = v156;
  v166 = v156;

  if (*(*&v97[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 104) == 1)
  {
    v167 = *&v97[v146];
    v168 = v187;
    if (v167)
    {
      v169 = v167;
      dispatch thunk of FMConnectionManager.connect()();
    }

    else
    {
    }

    (*(v168 + 8))(v145, v98);
  }

  else
  {
    (*(v187 + 8))(v145, v98);
  }
}

void sub_1001E3A7C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v117) = a2;
  v5 = sub_10007EBC0(&qword_1006B3B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v110 - v6;
  v8 = type metadata accessor for FMIPPerson();
  v118 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPPlaySoundChannels();
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v112 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMDeviceDetailViewModel();
  v13 = __chkstk_darwin(v12);
  v15 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = (&v110 - v17);
  v19 = __chkstk_darwin(v16);
  v21 = (&v110 - v20);
  v22 = __chkstk_darwin(v19);
  v24 = (&v110 - v23);
  v119 = a1;
  v120 = v22;
  v25 = *(a1 + *(v22 + 92));
  v26 = &qword_1006B6000;
  v116 = v8;
  if ((v25 & 0x20) != 0)
  {
    v38 = *(a1 + v120[25]);
    if (v38 - 4 >= 7)
    {
      v111 = v7;
      v50 = &qword_1006B6000;
      if (v38 >= 3)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_100005B14(v62, qword_1006D4630);
        sub_10022017C(a1, v21, type metadata accessor for FMDeviceDetailViewModel);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v121 = v66;
          *v65 = 141558275;
          *(v65 + 4) = 1752392040;
          *(v65 + 12) = 2081;
          v110 = *v21;
          v67 = v25;
          v25 = a1;
          v68 = v21[1];

          sub_1002201E4(v21, type metadata accessor for FMDeviceDetailViewModel);
          v69 = sub_100005B4C(v110, v68, &v121);
          a1 = v25;
          LODWORD(v25) = v67;

          *(v65 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "FMDeviceDetailContentViewController: updateViews: showing single stop sound id: %{private,mask.hash}s.", v65, 0x16u);
          sub_100006060(v66);

          v50 = &qword_1006B6000;
        }

        else
        {

          sub_1002201E4(v21, type metadata accessor for FMDeviceDetailViewModel);
        }

        v49 = &selRef__enter3DMode;
        [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] removeFromSuperview];
        [*&v3[v50[187]] removeFromSuperview];
        if (v117)
        {
          v70 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
        }

        else
        {
          v70 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton;
        }

        if (v117)
        {
          v71 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton;
        }

        else
        {
          v71 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
        }

        [*&v3[*v70] removeFromSuperview];
        [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v3[*v71]];
        v61 = 0;
        LODWORD(v117) = 0;
        v59 = &v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView];
      }

      else
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100005B14(v51, qword_1006D4630);
        sub_10022017C(a1, v24, type metadata accessor for FMDeviceDetailViewModel);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v121 = v55;
          *v54 = 141558275;
          *(v54 + 4) = 1752392040;
          *(v54 + 12) = 2081;
          v117 = *v24;
          v56 = v25;
          v25 = a1;
          v57 = v24[1];

          sub_1002201E4(v24, type metadata accessor for FMDeviceDetailViewModel);
          v58 = sub_100005B4C(v117, v57, &v121);
          a1 = v25;
          LODWORD(v25) = v56;

          *(v54 + 14) = v58;
          _os_log_impl(&_mh_execute_header, v52, v53, "FMDeviceDetailContentViewController: updateViews: showing play sound id: %{private,mask.hash}s.", v54, 0x16u);
          sub_100006060(v55);

          v50 = &qword_1006B6000;
        }

        else
        {

          sub_1002201E4(v24, type metadata accessor for FMDeviceDetailViewModel);
        }

        v49 = &selRef__enter3DMode;
        [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] removeFromSuperview];
        [*&v3[v50[187]] removeFromSuperview];
        [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton] removeFromSuperview];
        v59 = &v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView];
        [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton]];
        v61 = 0;
        LODWORD(v117) = 0;
      }

      v60 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton;
      v7 = v111;
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100005B14(v39, qword_1006D4630);
      sub_10022017C(a1, v18, type metadata accessor for FMDeviceDetailViewModel);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v121 = v43;
        *v42 = 141558275;
        *(v42 + 4) = 1752392040;
        *(v42 + 12) = 2081;
        v44 = v25;
        v25 = a1;
        v111 = v7;
        v45 = *v18;
        v46 = v18[1];

        sub_1002201E4(v18, type metadata accessor for FMDeviceDetailViewModel);
        v47 = v45;
        a1 = v25;
        LODWORD(v25) = v44;
        v26 = &qword_1006B6000;
        v48 = sub_100005B4C(v47, v46, &v121);
        v7 = v111;

        *(v42 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "FMDeviceDetailContentViewController: updateViews: showing multi channel audio id: %{private,mask.hash}s.", v42, 0x16u);
        sub_100006060(v43);
      }

      else
      {

        sub_1002201E4(v18, type metadata accessor for FMDeviceDetailViewModel);
      }

      v49 = &selRef__enter3DMode;
      [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton] removeFromSuperview];
      [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton] removeFromSuperview];
      v59 = &v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView];
      [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v3[v26[186]]];
      [*v59 addArrangedSubview:*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton]];
      LODWORD(v117) = 1;
      v60 = &OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
      v61 = 3;
    }

    [*v59 addArrangedSubview:*&v3[*v60]];
    [*v59 setSemanticContentAttribute:v61];
    v72 = *(a1 + v120[12]);
    if (v72)
    {
      v74 = v112;
      v73 = v113;
      v75 = v114;
      (*(v113 + 104))(v112, enum case for FMIPPlaySoundChannels.case(_:), v114);
      v76 = sub_1004A7FCC(v74, v72);
      (*(v73 + 8))(v74, v75);
      if (v76)
      {
        v77 = *(*&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
        v78 = sub_10041E648();

        if (v78)
        {
          [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule] setHidden:0];
          sub_1004F37A4();
        }
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    sub_10022017C(a1, v15, type metadata accessor for FMDeviceDetailViewModel);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v117 = v25;
      v32 = v31;
      v121 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = v7;
      v34 = *v15;
      v35 = v15[1];

      sub_1002201E4(v15, type metadata accessor for FMDeviceDetailViewModel);
      v36 = v34;
      v7 = v33;
      v37 = sub_100005B4C(v36, v35, &v121);

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMDeviceDetailContentViewController: updateViews: showing no sound support for id: %{private,mask.hash}s.", v30, 0x16u);
      sub_100006060(v32);
      a1 = v119;
      LODWORD(v25) = v117;
    }

    else
    {

      sub_1002201E4(v15, type metadata accessor for FMDeviceDetailViewModel);
    }

    v49 = &selRef__enter3DMode;
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton]];
    LODWORD(v117) = 0;
  }

  v79 = *(a1 + v120[24]);
  v80 = *&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_markAsLostHostingController];
  v81 = &qword_1006B6000;
  if ((v25 & 0xC) == 0 || (v79 & 0x100) != 0)
  {
    if (!v80)
    {
      goto LABEL_48;
    }

    v83 = v80;
    [v83 willMoveToParentViewController:0];
    v86 = [v83 view];
    if (!v86)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v87 = v86;
    [v86 removeFromSuperview];

    [v83 removeFromParentViewController];
  }

  else
  {
    if (!v80)
    {
      goto LABEL_48;
    }

    v82 = *&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView];
    v83 = v80;
    v84 = [v83 view];
    if (!v84)
    {
LABEL_71:
      __break(1u);
      return;
    }

    v85 = v84;
    [v82 addArrangedSubview:v84];

    [v3 addChildViewController:v83];
    [v83 didMoveToParentViewController:v3];
    v81 = &qword_1006B6000;
  }

LABEL_48:
  if ((v25 & 0x1C000) != 0)
  {
    [*&v3[v81[219]] addArrangedSubview:*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView]];
    if ((v25 & 0x20000) == 0)
    {
LABEL_50:
      [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView] removeFromSuperview];
      goto LABEL_57;
    }
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView] removeFromSuperview];
    if ((v25 & 0x20000) == 0)
    {
      goto LABEL_50;
    }
  }

  v120 = v79;

  FMIPManager.owner.getter();
  v88 = v116;
  if ((*(v118 + 48))(v7, 1, v116) == 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v89 = v118;
  v90 = v115;
  (*(v118 + 32))(v115, v7, v88);
  v91 = v88;
  v92 = FMIPPerson.phoneNumber.getter();
  v94 = v93;
  (*(v89 + 8))(v90, v91);
  if (v94)
  {
    v95 = &v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber];
    *v95 = v92;
    v95[1] = v94;

    v96 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView;
    v97 = *&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView];
    sub_10044C428(v92);

    v98 = *&v3[v96];
    v49 = &selRef__enter3DMode;
    [*&v3[v81[219]] addArrangedSubview:v98];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView] removeFromSuperview];
  }

  LOWORD(v79) = v120;
LABEL_57:
  v99 = *&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_deviceManagementHostingController];
  v100 = [v99 view];
  if (!v100)
  {
    __break(1u);
    goto LABEL_68;
  }

  v101 = v100;
  [v100 v49[295]];

  v102 = *&v3[v81[219]];
  v103 = [v99 view];
  if (!v103)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v104 = v103;
  [v102 addArrangedSubview:v103];

  v105 = v119;
  if ((v79 & 0x100) != 0)
  {
    [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView] v49[295]];
  }

  sub_1001E4A78(v105);
  v106 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
  v107 = [*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView] arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v108 >> 62)
  {
    v109 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v109)
  {
    [*&v3[v106] v49[295]];
  }

  sub_1001E4F58(v105, v117);
}