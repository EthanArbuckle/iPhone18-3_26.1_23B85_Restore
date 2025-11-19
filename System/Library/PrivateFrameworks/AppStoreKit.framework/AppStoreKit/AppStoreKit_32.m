unint64_t sub_1E161D5A0()
{
  result = qword_1EE1F2C98[0];
  if (!qword_1EE1F2C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F2C98);
  }

  return result;
}

uint64_t AlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_message);

  return v1;
}

uint64_t AlertAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_cancelTitle);

  return v1;
}

uint64_t AlertAction.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11AlertAction_imageName);

  return v1;
}

uint64_t sub_1E161D744()
{
}

uint64_t AlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t AlertAction.__deallocating_deinit()
{
  AlertAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E161D948()
{
  result = qword_1ECEB6EB8;
  if (!qword_1ECEB6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6EB8);
  }

  return result;
}

uint64_t type metadata accessor for AlertAction()
{
  result = qword_1EE1F7A88;
  if (!qword_1EE1F7A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E161DB38(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1E1AF5F3C();
  return sub_1E1AF607C();
}

uint64_t sub_1E161DBB8()
{
  v0 = sub_1E1AEF8BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  sub_1E1AEF7EC();
  sub_1E161EDD0(&qword_1ECEB62B8);
  v7 = 0;
  if ((sub_1E1AF667C() & 1) == 0)
  {
    sub_1E1AF668C();
    sub_1E161EDD0(&qword_1ECEB62C0);
    sub_1E1AF5D5C();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v9 = sub_1E1AF66FC();
    v7 = *v10;

    v9(v12, 0);
    v8(v6, v0);
  }

  return v7;
}

Swift::String __swiftcall String.asMarkdown(configuration:)(AppStoreKit::NqmlConfiguration *configuration)
{
  v1 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v25 = v1;
  v26 = *&configuration->orderedListItemBulletFormat._object;
  v2 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v23 = v2;
  v3 = type metadata accessor for MarkdownStringGenerator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_accumulator];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_didParseEverything] = 1;
  v6 = objc_allocWithZone(ASKNQMLParser);

  sub_1E13E3AC8(&newline, v21);
  v7 = sub_1E1AF5DBC();

  v8 = [v6 initWithString_];

  *&v4[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser] = v8;
  v9 = &v4[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_configuration];
  *v9 = newline;
  v10 = v26;
  v12 = v23;
  v11 = listItemBullet;
  v9[3] = v25;
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  v20.receiver = v4;
  v20.super_class = v3;
  v13 = [(AppStoreKit::NqmlConfiguration *)&v20 init];
  [*(&v13->newline._countAndFlagsBits + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser) setDelegate_];
  v14 = sub_1E161E058();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_1E161DF10()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB6EC0);
  __swift_project_value_buffer(v4, qword_1ECEB6EC0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E161E058()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser) parse];
  v6 = (v0 + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v7 = v6[1];
  v12[1] = *v6;
  v12[2] = v7;

  sub_1E1AEF46C();
  sub_1E13B8AA4();
  v8 = sub_1E1AF6E0C();
  v10 = v9;
  (*(v2 + 8))(v5, v1);

  *v6 = v8;
  v6[1] = v10;

  return v8;
}

id sub_1E161E4F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkdownStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E161E5D8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1E161E728(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1E1AF6FDC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1E1AF709C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1E161E728(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1E161E7C0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E161E834(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E161E7C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1E161E958(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E161E834(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1E1AF709C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1E161E958(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E1AF601C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E68FECF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E161E9D4()
{
  if (qword_1ECEB0F00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEB6EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v5);
  sub_1E1AF54AC();

  *(v0 + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_didParseEverything) = 0;
  return result;
}

unint64_t sub_1E161EBA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_accumulator);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1E161DB38(v4, v5);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_10;
  }

  if (sub_1E1AF5D2C())
  {

LABEL_9:
    sub_1E13E44A4();
    sub_1E1AF670C();
    goto LABEL_10;
  }

  result = sub_1E161E5D8(v6, v8);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
    return result;
  }

  v10 = result;

  v11 = (v10 - 14) <= 0xFFFFFFFB && (v10 - 8232) >= 2;
  if (!v11 || v10 == 133)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (qword_1EE1E3410 != -1)
  {
    swift_once();
  }

  v13 = a1;
  v12 = a2;
  if (qword_1EE2160E8)
  {
    v14 = qword_1EE2160E8;
    v15 = sub_1E1AF5DBC();
    v16 = sub_1E1AF5F1C();

    v17 = sub_1E1AF5DBC();
    v18 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v16, v17}];

    v13 = sub_1E1AF5DFC();
    v12 = v19;
  }

  swift_beginAccess();
  MEMORY[0x1E68FECA0](v13, v12);
  swift_endAccess();
}

uint64_t sub_1E161EDD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E1AEF7EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HeroCarouselItem.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarouselItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HeroCarouselItem.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a2;
  v104 = sub_1E1AF39DC();
  v93 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v80 - v12;
  v13 = sub_1E1AEFEAC();
  v95 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  *(v3 + 112) = 0u;
  *(v3 + 144) = 0;
  v87 = v3 + 112;
  *(v3 + 128) = 0u;
  v96 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v89 = v16;
  v82 = v10;
  if (v26)
  {
    v102 = v25;
    v103 = v26;
    sub_1E1AF6F6C();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v16;
  }

  else
  {
    sub_1E1AEFE9C();
    v30 = sub_1E1AEFE7C();
    v31 = v16;
    v33 = v32;
    (*(v95 + 1))(v15, v13);
    v102 = v30;
    v103 = v33;
    sub_1E1AF6F6C();
    v27 = *(v17 + 8);
    v91 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v24;
    v29 = v31;
    v10 = v82;
  }

  v94 = v27;
  v27(v28, v29);
  v34 = v99;
  *(v3 + 152) = v98;
  *(v3 + 168) = v34;
  *(v3 + 184) = v100;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v35 = v92;
  v90 = v3;
  v36 = v21;
  v38 = (v93 + 16);
  v37 = *(v93 + 16);
  v39 = v10;
  v37(v10, v92, v104);
  v40 = v83;
  sub_1E1AF464C();
  v81 = OBJC_IVAR____TtC11AppStoreKit16HeroCarouselItem_impressionMetrics;
  sub_1E134B7C8(v40, v3 + OBJC_IVAR____TtC11AppStoreKit16HeroCarouselItem_impressionMetrics);
  v41 = v97;
  v42 = v104;
  v37(v97, v35, v104);
  v95 = v38;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v37(v39, v41, v42);
  v43 = v39;
  sub_1E16201E0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v44 = v90;
  *(v90 + 16) = v98;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v45 = v39;
  v46 = v97;
  v47 = v104;
  v37(v45, v97, v104);
  sub_1E16201E0(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  *(v44 + 24) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8);
  v48 = v96;
  sub_1E1AF381C();
  v37(v43, v46, v47);
  v88 = v37;
  sub_1E1460648();
  sub_1E1AF464C();
  *(v44 + 32) = v98;
  type metadata accessor for HeroCarouselItemOverlay();
  sub_1E1AF381C();
  v49 = v97;
  v37(v43, v97, v47);
  sub_1E16201E0(&qword_1ECEB6EF8, type metadata accessor for HeroCarouselItemOverlay);
  v50 = v48;
  v51 = v47;
  v52 = v49;
  sub_1E1AF464C();
  v53 = v90;
  *(v90 + 40) = v98;
  sub_1E1AF381C();
  v54 = JSONObject.appStoreColor.getter();
  v55 = v89;
  v94(v36, v89);
  v56 = v53;
  *(v53 + 48) = v54;
  v57 = v84;
  sub_1E1AF381C();
  v58 = v85;
  v88(v85, v52, v51);
  v59 = v86;
  sub_1E1620444(v57, v58, &v98);
  if (v59)
  {
    v60 = *(v93 + 8);
    v61 = v104;
    v60(v92, v104);
    v94(v50, v55);
    v60(v52, v61);

    sub_1E1308058(v87 + 8, &qword_1ECEB2DF0);
    sub_1E134B88C(v53 + 152);
    sub_1E1308058(v53 + v81, &unk_1ECEB1770);
    type metadata accessor for HeroCarouselItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v86 = 0;
    v62 = v100;
    v63 = v101;
    v64 = v99;
    *(v53 + 56) = v98;
    *(v53 + 72) = v64;
    *(v53 + 88) = v62;
    *(v53 + 96) = v63;
    sub_1E1AF381C();
    v88(v82, v52, v104);
    sub_1E14601F4();
    sub_1E1AF464C();
    v65 = v98 | ((WORD2(v98) | (BYTE6(v98) << 16)) << 32);
    if (v98 == 2)
    {
      v66 = v94;
      if (qword_1ECEB1190 != -1)
      {
        swift_once();
      }

      LOBYTE(v65) = dword_1ECEB9550;
      LOBYTE(v67) = BYTE1(dword_1ECEB9550);
      LOBYTE(v68) = BYTE2(dword_1ECEB9550);
      LOBYTE(v69) = HIBYTE(dword_1ECEB9550);
      LOBYTE(v70) = byte_1ECEB9554;
      LOBYTE(v71) = byte_1ECEB9555;
      LOBYTE(v72) = byte_1ECEB9556;
    }

    else
    {
      v67 = (v65 >> 8) & 1;
      v68 = (v65 >> 16) & 1;
      v69 = (v65 >> 24) & 1;
      v70 = HIDWORD(v65) & 1;
      v71 = (v65 >> 40) & 1;
      v72 = HIWORD(v65) & 1;
      v66 = v94;
    }

    v94 = v66;
    *(v53 + 97) = v65 & 1;
    *(v53 + 98) = v67;
    *(v53 + 99) = v68;
    *(v53 + 100) = v69;
    *(v53 + 101) = v70;
    *(v53 + 102) = v71;
    *(v53 + 103) = v72;
    sub_1E1AF381C();
    v73 = sub_1E1AF370C();
    v74 = v89;
    v66(v36, v89);
    *(v56 + 104) = v73;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v75 = v97;
    v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v36, v97);
    v76 = *(v93 + 8);
    v77 = v104;
    v76(v92, v104);
    v78 = v94;
    v94(v50, v74);
    v78(v36, v74);
    v76(v75, v77);
    swift_beginAccess();
    *(v56 + 112) = v95;
  }

  return v56;
}

uint64_t type metadata accessor for HeroCarouselItem()
{
  result = qword_1ECEB6F08;
  if (!qword_1ECEB6F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *HeroCarouselItem.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1E161FA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 96);
  *(a2 + 40) = v9;
  return sub_1E13E653C(v4, v5, v6, v7, v8, v9);
}

void *sub_1E161FAB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v14 = *(v7 + 64);
  v15 = *(v7 + 56);
  v9 = *(v7 + 72);
  v10 = *(v7 + 80);
  v13 = *(v7 + 88);
  *(v7 + 56) = v2;
  *(v7 + 64) = v3;
  *(v7 + 72) = v4;
  *(v7 + 80) = v5;
  *(v7 + 88) = v6;
  v11 = *(v7 + 96);
  *(v7 + 96) = v8;
  sub_1E13E653C(v2, v3, v4, v5, v6, v8);
  return sub_1E13E6F8C(v15, v14, v9, v10, v13, v11);
}

id sub_1E161FB80@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v1 + 96);
  *(a1 + 40) = v8;
  return sub_1E13E653C(v3, v4, v5, v6, v7, v8);
}

void HeroCarouselItem.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[98];
  v3 = v1[99];
  v4 = v1[100];
  v5 = v1[101];
  v6 = v1[102];
  v7 = v1[103];
  *a1 = v1[97];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_1E161FC24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t sub_1E161FCBC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1E161FD54(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2DF0);
  v3 = *a2;
  swift_beginAccess();
  sub_1E137F818(v5, v3 + 120);
  return swift_endAccess();
}

uint64_t sub_1E161FE18(uint64_t a1)
{
  swift_beginAccess();
  sub_1E137F818(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t HeroCarouselItem.deinit()
{

  sub_1E13E6F8C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  sub_1E1308058(v0 + 120, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 152);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16HeroCarouselItem_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t HeroCarouselItem.__deallocating_deinit()
{
  HeroCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1620010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HeroCarouselItem();
  v7 = swift_allocObject();
  result = HeroCarouselItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E16200C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 120, a1, &qword_1ECEB2DF0);
}

void sub_1E162011C(_BYTE *a1@<X8>)
{
  v2 = *(*v1 + 98);
  v3 = *(*v1 + 99);
  v4 = *(*v1 + 100);
  v5 = *(*v1 + 101);
  v6 = *(*v1 + 102);
  v7 = *(*v1 + 103);
  *a1 = *(*v1 + 97);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t sub_1E16201E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1620230()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1620444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E1AF37AC())
  {
    v37 = v6;
    v38 = a1;
    v10 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 3;
LABEL_3:
    v17 = sub_1E1AF39DC();
    (*(*(v17 - 8) + 8))(v39, v17);
    result = (*(v10 + 8))(v38, v37);
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    return result;
  }

  v35 = v3;
  sub_1E1AF381C();
  sub_1E162161C();
  sub_1E1AF369C();
  v19 = *(v7 + 8);
  v19(v9, v6);
  v20 = v41;
  sub_1E1AF381C();
  sub_1E1621670();
  sub_1E1AF36DC();
  v19(v9, v6);
  if (v40 == 2)
  {
    v34 = 0;
    v36 = 0;
  }

  else
  {
    v34 = sub_1E1AF5DFC();
    v36 = v21;
  }

  sub_1E1AF381C();
  v22 = JSONObject.appStoreColor.getter();
  v19(v9, v6);
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      v37 = v6;
      v38 = a1;
      v10 = v7;

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 3;
      goto LABEL_3;
    }

    v33 = v22;
    v25 = v35;
    v26 = sub_1E16216C4(0xD000000000000012, 0x80000001E1B672F0);
    if (!v25)
    {
      v27 = a1;
      v11 = v26;
      v38 = v27;
      v12 = sub_1E16216C4(0xD000000000000010, 0x80000001E1B67310);
      v37 = v6;
      v10 = v7;
      v16 = 2;
      v15 = v36;
      v13 = v33;
      v14 = v34;
      goto LABEL_3;
    }
  }

  else
  {
    v33 = v22;
    v13 = v34;
    if (v20)
    {
      v28 = v35;
      v29 = sub_1E16216C4(0xD000000000000012, 0x80000001E1B672F0);
      if (!v28)
      {
        v30 = a1;
        v11 = v29;
        v38 = v30;
        v12 = sub_1E16216C4(0xD000000000000010, 0x80000001E1B67310);
        v37 = v6;
        v10 = v7;
        v16 = 1;
        v15 = v36;
        v14 = v13;
        v13 = v33;
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v35;
      v24 = sub_1E16216C4(0x726F6C6F63, 0xE500000000000000);
      if (!v23)
      {
        v37 = v6;
        v38 = a1;
        v10 = v7;
        v16 = 0;
        v14 = v36;
        v12 = v33;
        v15 = 0;
        v11 = v24;
        goto LABEL_3;
      }
    }
  }

  v31 = sub_1E1AF39DC();
  (*(*(v31 - 8) + 8))(v39, v31);
  return (v19)(a1, v6);
}

uint64_t sub_1E1620980()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1620A44()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1620AF4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1620BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1621964();
  *a1 = result;
  return result;
}

void sub_1E1620BE4(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726F6C6F63;
  v4 = 0x80000001E1B56D00;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B56CE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t TitleEffectFilterType.compositingFilter.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF5DFC();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppStoreKit::TitleEffectFilterType_optional __swiftcall TitleEffectFilterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TitleEffectFilterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B72614473756C70;
  }

  else
  {
    return 0x6867694C73756C70;
  }
}

uint64_t sub_1E1620D5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B72614473756C70;
  }

  else
  {
    v3 = 0x6867694C73756C70;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B72614473756C70;
  }

  else
  {
    v5 = 0x6867694C73756C70;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1620E08()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1620E90()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1620F04()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1620F88@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E1620FE8(uint64_t *a1@<X8>)
{
  v2 = 0x6867694C73756C70;
  if (*v1)
  {
    v2 = 0x6B72614473756C70;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s11AppStoreKit11TitleEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v36[0] = *a1;
  v36[1] = v3;
  v36[2] = v5;
  v36[3] = v4;
  v36[4] = v6;
  v37 = v7;
  v38 = v9;
  v39 = v8;
  v40 = v11;
  v41 = v10;
  v42 = v12;
  v43 = v13;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v13 == 3 && !(v8 | v9 | v11 | v10 | v12))
      {
        goto LABEL_44;
      }

      goto LABEL_26;
    }

    if (v13 != 2)
    {
LABEL_26:
      sub_1E13E653C(v9, v8, v11, v10, v12, v13);
      sub_1E13E653C(v2, v3, v5, v4, v6, v7);
      goto LABEL_27;
    }

    v34 = v6;
    v18 = v10;
    sub_1E13006E4(0, &qword_1EE1E31E0);
    v33 = v18;
    v19 = v18;
    v20 = v34;
    sub_1E13E653C(v9, v8, v11, v19, v12, 2);
    v31 = v4;
    sub_1E13E653C(v2, v3, v5, v4, v34, 2);
    if ((sub_1E1AF6D0C() & 1) == 0 || (sub_1E1AF6D0C() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v5)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      sub_1E13006E4(0, &qword_1EE1E3208);
      v21 = v11;
      v22 = v5;
      v23 = sub_1E1AF6D0C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v11)
    {
      goto LABEL_27;
    }

    if (v34)
    {
LABEL_41:
      if (v12)
      {
        if (v31 != v33 || v20 != v12)
        {
          goto LABEL_47;
        }

LABEL_44:
        sub_1E16215B4(v36);
        return 1;
      }

      goto LABEL_27;
    }

LABEL_37:

    sub_1E16215B4(v36);
    if (!v12)
    {
      return 1;
    }

LABEL_38:

    return 0;
  }

  if (v7)
  {
    if (v13 != 1)
    {
      goto LABEL_26;
    }

    v35 = v6;
    v24 = v10;
    sub_1E13006E4(0, &qword_1EE1E31E0);
    v33 = v24;
    v25 = v24;
    v20 = v35;
    sub_1E13E653C(v9, v8, v11, v25, v12, 1);
    v31 = v4;
    sub_1E13E653C(v2, v3, v5, v4, v35, 1);
    if ((sub_1E1AF6D0C() & 1) == 0 || (sub_1E1AF6D0C() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v5)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      sub_1E13006E4(0, &qword_1EE1E3208);
      v26 = v11;
      v27 = v5;
      v28 = sub_1E1AF6D0C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v11)
    {
      goto LABEL_27;
    }

    if (v35)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (v13)
  {
    goto LABEL_26;
  }

  v32 = v10;
  sub_1E13006E4(0, &qword_1EE1E31E0);
  sub_1E13E653C(v9, v8, v11, v32, v12, 0);
  v14 = v4;
  sub_1E13E653C(v2, v3, v5, v4, v6, 0);
  if ((sub_1E1AF6D0C() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

LABEL_27:
    sub_1E16215B4(v36);
    return 0;
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  sub_1E13006E4(0, &qword_1EE1E3208);
  v15 = v8;
  v16 = v3;
  v17 = sub_1E1AF6D0C();

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (!v14)
  {

    sub_1E16215B4(v36);
    if (!v32)
    {
      return 1;
    }

    goto LABEL_38;
  }

  if (!v32)
  {
    goto LABEL_27;
  }

  if (v5 == v11 && v14 == v32)
  {
    goto LABEL_44;
  }

LABEL_47:
  v30 = sub_1E1AF74AC();
  sub_1E16215B4(v36);
  return v30 & 1;
}

unint64_t sub_1E1621484()
{
  result = qword_1ECEB6F18;
  if (!qword_1ECEB6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6F18);
  }

  return result;
}

uint64_t sub_1E16214D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E1621520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1E1621570(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1E16215B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E162161C()
{
  result = qword_1EE1DF540;
  if (!qword_1EE1DF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF540);
  }

  return result;
}

unint64_t sub_1E1621670()
{
  result = qword_1EE1ECA70;
  if (!qword_1EE1ECA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ECA70);
  }

  return result;
}

uint64_t sub_1E16216C4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  sub_1E1AF381C();
  v10 = sub_1E1AF375C();
  v11 = *(v4 + 8);
  v12 = v9;
  v13 = v22;
  v11(v12, v3);
  sub_1E1AF381C();
  v14 = JSONObject.appStoreColor.getter();
  v11(v7, v3);
  if (v14)
  {
    v15 = *&v10;
    if ((v10 & 0x100000000) != 0)
    {
      v15 = 1.0;
    }

    v16 = [v14 colorWithAlphaComponent_];

    return v16;
  }

  else
  {
    v18 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v19 = MEMORY[0x1E69E7CC0];
    *v20 = a1;
    v20[1] = v13;
    v20[2] = &type metadata for TitleEffect;
    v20[3] = v19;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69AB6A0], v18);
    swift_willThrow();
  }
}

unint64_t sub_1E1621910()
{
  result = qword_1ECEB6F28;
  if (!qword_1ECEB6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6F28);
  }

  return result;
}

uint64_t sub_1E1621964()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E16219B0()
{
  result = sub_1E1AF5DBC();
  qword_1ECEB6F30 = result;
  return result;
}

id static NSNotificationName.searchActionImplementationDidRun.getter()
{
  if (qword_1ECEB0F08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEB6F30;

  return v1;
}

unint64_t sub_1E1621A60()
{
  result = qword_1ECEB6FB8;
  if (!qword_1ECEB6FB8)
  {
    type metadata accessor for SearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6FB8);
  }

  return result;
}

uint64_t sub_1E1621AC4(uint64_t a1)
{
  v2 = sub_1E1AF3E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1ECEB0F08 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_1ECEB6F30 object:a1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB010], v2);
  return sub_1E1AF582C();
}

uint64_t MetricsPagePresenter.sendEventsFor(invocationPoint:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a1;
  v109 = sub_1E1AF320C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E1AF324C();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E1AF321C();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF436C();
  v112 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v92 - v12;
  v14 = sub_1E1AF3C1C();
  v116 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v92 - v18;
  v118 = sub_1E1AF3C3C();
  v20 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 32);
  v121 = v3;
  v122 = a2;
  v120 = a3;
  v114 = a3 + 32;
  v113 = v23;
  (v23)(&aBlock, a2, a3);
  if (!v128)
  {
    return sub_1E1308058(&aBlock, &qword_1ECEB2588);
  }

  v119 = v13;
  v100 = v9;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v128);
  sub_1E1AF5B8C();
  v99 = sub_1E1AF3B8C();
  v24 = v118;
  v94 = *(v20 + 8);
  v94(v22, v118);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v25 = v116;
  v26 = *(v116 + 16);
  v98 = v116 + 16;
  v97 = v26;
  v26(v19, v115, v14);
  sub_1E1AF3C0C();
  sub_1E1625BC0(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
  v96 = v19;
  v27 = v14;
  v28 = sub_1E1AF5DAC();
  v29 = *(v25 + 8);
  v29(v17, v14);
  v93 = v22;
  v92 = v20 + 8;
  if (v28)
  {
    v30 = v24;
    v31 = v22;
    v32 = v96;
    v96 = v27;
    v29(v32, v27);
    if (qword_1EE1F3430 != -1)
    {
      swift_once();
      v31 = v93;
      v30 = v118;
    }

    v33 = off_1EE1F3438;
    v113(&aBlock);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1Tm(&aBlock, v128);
      sub_1E1AF5B8C();
      v34 = sub_1E1AF3AEC();
      v94(v31, v30);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_1E1308058(&aBlock, &qword_1ECEB2588);
      v34 = 0;
    }

    v38 = &unk_1EE1F3000;
    v14 = v96;
    sub_1E16CEE88(v34);
    swift_beginAccess();
    v46 = v33[19];
    if (v46 != 2 && (v46 != 1 || v33[25] != 1))
    {
      v48 = sub_1E16CF2DC();
      if (*(v47 + 8) != 2)
      {
        *(v47 + 90) = 1;
      }

      (v48)(v123, 0);
    }

LABEL_31:
    v40 = v120;
    goto LABEL_32;
  }

  sub_1E1AF3BEC();
  v36 = v96;
  v37 = sub_1E1AF5DAC();
  v29(v17, v14);
  if (v37)
  {
    v29(v36, v14);
    v38 = &unk_1EE1F3000;
    if (qword_1EE1F3430 != -1)
    {
      swift_once();
    }

    sub_1E16D0AB4();
    goto LABEL_31;
  }

  v38 = &unk_1EE1F3000;
  if (qword_1EE1D2A08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EE1D2A10);
  v39 = sub_1E1AF5DAC();
  v29(v36, v14);
  v40 = v120;
  if ((v39 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(*((*(v120 + 80))(v122, v120) + 16) + 16))
  {

    v41 = sub_1E1AF4B9C();

    v40 = v120;

    if (v41)
    {
      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      (v113)(&aBlock, v122, v120);
      v42 = v118;
      if (v128)
      {
        __swift_project_boxed_opaque_existential_1Tm(&aBlock, v128);
        v43 = v93;
        sub_1E1AF5B8C();
        v44 = sub_1E1AF3AEC();
        v45 = v43;
        v38 = &unk_1EE1F3000;
        v94(v45, v42);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_1E1308058(&aBlock, &qword_1ECEB2588);
        v44 = 0;
      }

      sub_1E16CEE88(v44);
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_32:
  v49 = v14;
  v50 = v115;
  if (v38[134] != -1)
  {
    swift_once();
  }

  v51 = off_1EE1F3438;
  swift_beginAccess();
  v52 = *(v51 + 234);
  v53 = v51[19] != 2;
  v54 = v122;
  (*(v40 + 88))(v122, v40);
  v55 = *(v40 + 64);
  v56 = v55(v54, v40);
  swift_getObjectType();
  v57 = swift_conformsToProtocol2();
  if (v57 && v56)
  {
    v58 = v57;
    ObjectType = swift_getObjectType();
    v60 = (*(v58 + 16))(ObjectType, v58);
    v96 = v61;
    swift_unknownObjectRelease();
    v62 = v120;
    v63 = v122;
  }

  else
  {
    swift_unknownObjectRelease();
    v63 = v122;
    v62 = v120;
    v60 = v55(v122, v120);
    v96 = v64;
  }

  v65 = v118;
  v95 = v53 & v52;
  swift_unknownObjectRetain();
  (v113)(&aBlock, v63, v62);
  v118 = v60;
  if (v128)
  {
    __swift_project_boxed_opaque_existential_1Tm(&aBlock, v128);
    v66 = v93;
    sub_1E1AF5B8C();
    v114 = sub_1E1AF3AEC();
    v94(v66, v65);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1E1308058(&aBlock, &qword_1ECEB2588);
    v114 = 0;
  }

  v67 = v49;
  v97(v17, v50, v49);
  v68 = v112;
  v69 = v100;
  (*(v112 + 16))(v117, v119, v100);
  v70 = v116;
  v71 = (*(v116 + 80) + 40) & ~*(v116 + 80);
  v72 = (v110 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 39) & 0xFFFFFFFFFFFFFFF8;
  v74 = (*(v68 + 80) + v73 + 8) & ~*(v68 + 80);
  v75 = swift_allocObject();
  v76 = v120;
  *(v75 + 2) = v122;
  *(v75 + 3) = v76;
  *(v75 + 4) = v99;
  (*(v70 + 32))(&v75[v71], v17, v67);
  *&v75[v72] = v121;
  v77 = &v75[v115];
  v78 = v117;
  v79 = v96;
  *v77 = v118;
  *(v77 + 1) = v79;
  v77[16] = v95;
  *&v75[v73] = v114;
  (*(v68 + 32))(&v75[v74], v78, v69);
  swift_unknownObjectRetain();
  if (ASKBuildTypeIsUnitTesting())
  {
    sub_1E1361A80();
    v80 = v102;
    v81 = v101;
    v82 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E69E7F98], v103);
    v122 = sub_1E1AF693C();
    (*(v80 + 8))(v81, v82);
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1E16256F4;
    *(v83 + 24) = v75;
    v129 = sub_1E1625814;
    v130 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v126 = 1107296256;
    v127 = sub_1E1302D64;
    v128 = &block_descriptor_6_0;
    v84 = _Block_copy(&aBlock);

    v85 = v104;
    sub_1E1AF322C();
    v124 = MEMORY[0x1E69E7CC0];
    sub_1E1625BC0(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v86 = v106;
    v87 = v109;
    sub_1E1AF6EEC();
    v88 = v122;
    MEMORY[0x1E68FF640](0, v85, v86, v84);
    _Block_release(v84);

    swift_unknownObjectRelease();

    (*(v108 + 8))(v86, v87);
    (*(v105 + 8))(v85, v107);
    (*(v68 + 8))(v119, v69);
  }

  else
  {
    v89 = [objc_opt_self() processInfo];
    v90 = sub_1E1AF5DBC();
    v129 = sub_1E16256F4;
    v130 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v126 = 1107296256;
    v127 = sub_1E1623918;
    v128 = &block_descriptor_37;
    v91 = _Block_copy(&aBlock);

    [v89 performExpiringActivityWithReason:v90 usingBlock:v91];
    swift_unknownObjectRelease();
    _Block_release(v91);

    return (*(v68 + 8))(v119, v69);
  }
}

void MetricsPagePresenter.observe(lifecycleEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v55 - v6;
  v60 = sub_1E1AF3C1C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF4FBC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AEFE6C();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for StoreViewControllerLifecycleEvent();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1625840(a1, v21);
  v58 = v10;
  v22 = (*(v10 + 48))(v21, 11, v9);
  if (v22 > 6)
  {
    if (v22 <= 8)
    {
      v25 = v61;
      if (v22 == 7)
      {
        sub_1E1AF3BBC();
        (*(*(v25 + 8) + 8))(v8, a2);
        goto LABEL_50;
      }

      (*(v61 + 80))(a2, v61);
      ImpressionsCalculator.isVisible.setter();

      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v24 = off_1EE1F3438;
      v24[8] = (*(v25 + 40))(a2, v25);
      v24[9] = v26;
    }

    else
    {
      v23 = v61;
      if (v22 == 9)
      {
        sub_1E1623A24(a2, v61);
        if (!(*(v23 + 136))(a2, v23))
        {
          return;
        }

        MetricsPageEnterGate.hasAppeared.setter(1);
        goto LABEL_46;
      }

      if (v22 == 10)
      {
        v53 = (*(v61 + 136))(a2, v61);
        if (v53)
        {
          v54 = v53;
          swift_beginAccess();
          *(v54 + 32) = 0;
        }

        sub_1E1AF3BEC();
        (*(*(v23 + 8) + 8))(v8, a2);
        (*(v59 + 8))(v8, v60);
        if (qword_1EE1F3430 != -1)
        {
          swift_once();
        }

        sub_1E16CEE88(0);
        return;
      }

      if (v22 != 11)
      {
LABEL_56:
        sub_1E16258A4(v21);
        return;
      }

      (*(v61 + 80))(a2, v61);
      ImpressionsCalculator.isVisible.setter();

      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v24 = off_1EE1F3438;
      *(off_1EE1F3438 + 8) = 0;
      v24[9] = 0;
    }

    swift_beginAccess();
    *(v24 + 80) = 2;
    return;
  }

  if (v22 <= 2)
  {
    if (!v22)
    {
      v27 = v12;
      (*(v58 + 32))(v12, v21, v9);
      v28 = v61;
      v29 = (*(v61 + 136))(a2, v61);
      if (v29)
      {
        v30 = v29;
        swift_beginAccess();
        *(v30 + 32) = 0;
      }

      sub_1E1AF3BEC();
      (*(*(v28 + 8) + 8))(v8, a2);
      (*(v59 + 8))(v8, v60);
      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v31 = off_1EE1F3438;
      sub_1E16CEE88(0);
      v32 = (*(v28 + 96))(a2, v28);
      if (v32)
      {
        v33 = v32;
        v34 = v56;
        (*(v58 + 16))(v56, v27, v9);
        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v36 = v35;
        (*(v57 + 8))(v15, v13);
        v37 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
        *(v34 + *(v37 + 20)) = v36;
        (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
        v38 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
        swift_beginAccess();
        sub_1E1360934(v34, v33 + v38);
        swift_endAccess();
        sub_1E172AF90();

        sub_1E1308058(v34, &qword_1ECEB24D8);
      }

      v39 = v61;
      if ((*(v61 + 104))(a2, v61))
      {
        sub_1E1AF507C();
      }

      (*(v39 + 80))(a2, v39);
      ImpressionsCalculator.isVisible.setter();

      v31[8] = 0;
      v31[9] = 0;

      swift_beginAccess();
      *(v31 + 80) = 2;
      (*(v58 + 8))(v27, v9);
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      swift_beginAccess();
      sub_1E1533994(v62, (v31 + 12));
      swift_endAccess();
      return;
    }

    if (v22 == 1)
    {
      sub_1E1623A24(a2, v61);
      return;
    }

    goto LABEL_56;
  }

  if (v22 != 3)
  {
    if (v22 != 5)
    {
      if (v22 == 6)
      {
        if (!(*(v61 + 136))(a2))
        {
          return;
        }

        MetricsPageEnterGate.hasExitedWhileAppeared.setter(0);
LABEL_46:

        return;
      }

      goto LABEL_56;
    }

    v50 = v61;
    v51 = (*(v61 + 136))(a2, v61);
    if (v51)
    {
      v52 = v51;
      swift_beginAccess();
      *(v52 + 33) = 1;
    }

    sub_1E1AF3BCC();
    (*(*(v50 + 8) + 8))(v8, a2);
LABEL_50:
    (*(v59 + 8))(v8, v60);
    return;
  }

  v40 = v61;
  sub_1E1623A24(a2, v61);
  if ((*(v40 + 136))(a2, v40))
  {
    MetricsPageEnterGate.hasAppeared.setter(1);
  }

  v41 = (*(v61 + 96))(a2);
  if (v41)
  {
    v42 = v41;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v44 = v43;
    (*(v57 + 8))(v18, v13);
    v45 = v42 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v45 = v44;
    *(v45 + 8) = 0;
    v46 = *(v42 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v46 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v47 = v61;
  if ((*(v61 + 104))(a2, v61))
  {
    sub_1E1AF506C();
  }

  (*(v47 + 80))(a2, v47);
  ImpressionsCalculator.isVisible.setter();

  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v48 = off_1EE1F3438;
  v48[8] = (*(v47 + 40))(a2, v47);
  v48[9] = v49;

  (*(v47 + 160))(v62, a2, v47);
  swift_beginAccess();
  sub_1E1533994(v62, (v48 + 12));
  swift_endAccess();
}

uint64_t sub_1E16238B8(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

uint64_t sub_1E1623918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1E16239C4(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

uint64_t sub_1E1623A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF4A9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 112);
  v9(a1, a2, v6);
  if (v10)
  {
LABEL_2:
  }

  v21 = v5;
  v22 = v4;
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v12 = *(off_1EE1F3438 + 2);
  v13 = *(off_1EE1F3438 + 3);
  v14 = *(a2 + 120);

  v14(v12, v13, a1, a2);
  result = (v9)(a1, a2);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    v18 = (*(a2 + 104))(a1, a2);
    v19 = v22;
    if (!v18)
    {
      goto LABEL_2;
    }

    if (qword_1EE1E3990 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_1EE1E3998);
    v23 = v16;
    v24 = v17;
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v20, qword_1EE1E39C0);
    sub_1E1AF4A3C();

    sub_1E1AF505C();

    return (*(v21 + 8))(v8, v19);
  }

  return result;
}

void sub_1E1623CE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v81 = a8;
  LODWORD(v97) = a7;
  v80 = a6;
  v79 = a5;
  v93 = a4;
  v100 = a3;
  v78 = sub_1E1AF320C();
  v13 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E1AF324C();
  v96 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E1AF436C();
  v82 = *(v92 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF3C1C();
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF3B5C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v90 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  if ((a1 & 1) == 0)
  {
    v89 = dispatch_group_create();
    v88 = *(a2 + 16);
    if (v88)
    {
      v26 = 0;
      v29 = *(v21 + 16);
      v27 = v21 + 16;
      v28 = v29;
      v30 = *(v27 + 64);
      v73 = ~v30;
      v87 = a2 + ((v30 + 32) & ~v30);
      v98 = (v59 + 8);
      v99 = v59 + 16;
      v86 = (v27 - 8);
      v72 = a11;
      v71 = a11 + 160;
      v70 = a10;
      v69 = a9;
      v68 = v82 + 16;
      v74 = v30;
      v67 = v16 + v30;
      v66 = v22 + 7;
      v65 = v97 & 1;
      v64 = v82 + 32;
      v63 = (v27 + 16);
      v62 = v102;
      v61 = (v13 + 8);
      v60 = (v96 + 8);
      v85 = *(v27 + 56);
      v96 = v27;
      v95 = v25;
      v94 = v29;
      v84 = v20;
      while (1)
      {
        v97 = v26;
        v28(v25, v87 + v85 * v26, v20);
        v31 = *(sub_1E1AF3AFC() + 16);

        if (!v31)
        {
          goto LABEL_14;
        }

        v32 = sub_1E1AF3AFC();
        if (*(v32 + 16))
        {
          sub_1E1625BC0(&qword_1EE1E3B28, MEMORY[0x1E69AAF70]);
          v33 = sub_1E1AF5D0C();
          v34 = -1 << *(v32 + 32);
          v35 = v33 & ~v34;
          if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            break;
          }
        }

LABEL_4:

        v25 = v95;
        (*v86)(v95, v20);
LABEL_5:
        v26 = v97 + 1;
        v28 = v94;
        if (v97 + 1 == v88)
        {
          goto LABEL_15;
        }
      }

      v36 = ~v34;
      v37 = *(v59 + 72);
      v38 = *(v59 + 16);
      while (1)
      {
        v38(v19, *(v32 + 48) + v37 * v35, v17);
        sub_1E1625BC0(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
        v39 = sub_1E1AF5DAC();
        (*v98)(v19, v17);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v25 = v95;
      v28 = v94;
LABEL_14:
      dispatch_group_enter(v89);
      v40 = v72;
      v41 = v70;
      (*(v72 + 160))(&v105, v70, v72);
      sub_1E1361A80();
      v83 = sub_1E1AF68EC();
      sub_1E134FD1C(&v105, v103, &unk_1ECEB7230);
      v42 = v82;
      (*(v82 + 16))(v91, v69, v92);
      v28(v90, v25, v84);
      v43 = (*(v42 + 80) + 112) & ~*(v42 + 80);
      v44 = (v67 + v43) & v73;
      v45 = (v66 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      v47 = v103[1];
      *(v46 + 72) = v103[0];
      *(v46 + 16) = v41;
      *(v46 + 24) = v40;
      v48 = v80;
      *(v46 + 32) = v79;
      *(v46 + 40) = v48;
      *(v46 + 48) = v93;
      *(v46 + 56) = v65;
      *(v46 + 64) = v81;
      *(v46 + 88) = v47;
      *(v46 + 104) = v104;
      v49 = *(v42 + 32);
      v20 = v84;
      v49(v46 + v43, v91, v92);
      (*v63)(v46 + v44, v90, v20);
      v50 = v89;
      *(v46 + v45) = v89;
      v102[2] = sub_1E1625AA4;
      v102[3] = v46;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v102[0] = sub_1E1302D64;
      v102[1] = &block_descriptor_12_0;
      v51 = _Block_copy(aBlock);
      v25 = v95;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v52 = v50;

      v53 = v75;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1625BC0(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      v54 = v77;
      v55 = v78;
      sub_1E1AF6EEC();
      v56 = v83;
      MEMORY[0x1E68FF640](0, v53, v54, v51);
      _Block_release(v51);

      (*v61)(v54, v55);
      (*v60)(v53, v76);
      sub_1E1308058(&v105, &unk_1ECEB7230);
      (*v86)(v25, v20);
      goto LABEL_5;
    }

LABEL_15:
    v57 = v89;
    sub_1E1AF687C();
  }
}

uint64_t sub_1E162473C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v72 = a8;
  v73 = a7;
  v67 = a5;
  v65 = a4;
  v63 = a2;
  v71 = sub_1E1AF3ABC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v56 - v15;
  v16 = sub_1E1AF4A9C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v56 - v24;
  v56 = (*(a11 + 112))(a10, a11);
  v77 = v25;
  v57 = (*(a11 + 40))(a10, a11);
  v76 = v26;
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v27 = off_1EE1F3438;
  swift_beginAccess();
  v64 = *(v27 + 80);
  sub_1E134FD1C(a6, &v82, &unk_1ECEB7230);
  if (v83)
  {
    sub_1E1308EC0(&v82, v84);
  }

  else
  {
    (*(a11 + 160))(v84, a10, a11);
    if (v83)
    {
      sub_1E1308058(&v82, &unk_1ECEB7230);
    }
  }

  (*(a11 + 168))(&v82, a10, a11);
  swift_beginAccess();
  v28 = v27[17];
  v29 = *(a11 + 184);
  v75 = v28;

  v66 = v29(a10, a11);
  v62 = v30;
  v74 = (*(a11 + 176))(a10, a11);
  v61 = v31;
  sub_1E1AF4A8C();
  v32 = qword_1EE1E3948;
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v33, qword_1EE1E3950);
  v80 = a1;
  v81 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4A3C();
  v34 = *(v17 + 8);
  v34(v23, v16);
  swift_unknownObjectRelease();
  v35 = *(v17 + 32);
  v35(v23, v20, v16);
  if (v77)
  {
    v80 = v56;
    v81 = v77;
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v36, qword_1EE1E39C0);
    sub_1E1AF4A3C();
    v34(v23, v16);
    v35(v23, v20, v16);
  }

  if (v76)
  {
    v80 = v57;
    v81 = v76;
    if (qword_1EE1E3970 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v37, qword_1EE1E3978);
    sub_1E1AF4A3C();
    v34(v23, v16);
    v35(v23, v20, v16);
  }

  LOBYTE(v80) = v65 & 1;
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v38, qword_1EE1E3930);
  sub_1E1AF4A3C();
  v34(v23, v16);
  v35(v23, v20, v16);
  if (v67)
  {
    v80 = v67;
    v39 = v58;
    sub_1E1AF4A5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    sub_1E1AF4A3C();
    (*(v59 + 8))(v39, v60);
    v34(v23, v16);
    v35(v23, v20, v16);
  }

  if (v64 != 2)
  {
    LOBYTE(v80) = v64 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v38, qword_1EE1D2960);
    sub_1E1AF4A3C();
    v34(v23, v16);
    v35(v23, v20, v16);
  }

  sub_1E134FD1C(v84, &v78, &unk_1ECEB7230);
  if (v79)
  {
    sub_1E1308EC0(&v78, &v80);
    v40 = v66;
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v41, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v80);
    v34(v23, v16);
    v35(v23, v20, v16);
  }

  else
  {
    sub_1E1308058(&v78, &unk_1ECEB7230);
    v40 = v66;
  }

  v42 = v75;
  sub_1E134FD1C(&v82, &v78, &qword_1ECEB2B70);
  if (!v79)
  {
    sub_1E1308058(&v78, &qword_1ECEB2B70);
    if (!v42)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_1E1308EC0(&v78, &v80);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v43, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v80);
  v34(v23, v16);
  v35(v23, v20, v16);
  if (v42)
  {
LABEL_36:
    v80 = v42;
    v44 = qword_1ECEB0E78;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v45, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    v34(v23, v16);

    v35(v23, v20, v16);
  }

LABEL_39:
  if (v74)
  {
    v80 = v74;
    v81 = v61;
    v46 = qword_1EE1D28D0;
    swift_unknownObjectRetain();
    if (v46 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
    __swift_project_value_buffer(v47, qword_1EE1D28D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
    sub_1E1AF4A3C();
    v34(v23, v16);
    swift_unknownObjectRelease();
    v35(v23, v20, v16);
  }

  if (v40)
  {
    v80 = v40;
    v81 = v62;
    v48 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
    __swift_project_value_buffer(v49, qword_1EE1D2920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
    sub_1E1AF4A3C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v34(v23, v16);
    sub_1E1308058(&v82, &qword_1ECEB2B70);
    sub_1E1308058(v84, &unk_1ECEB7230);
    swift_unknownObjectRelease();
    v35(v23, v20, v16);
  }

  else
  {

    swift_unknownObjectRelease();

    sub_1E1308058(&v82, &qword_1ECEB2B70);
    sub_1E1308058(v84, &unk_1ECEB7230);
  }

  v50 = v68;
  v35(v68, v23, v16);
  v51 = v69;
  sub_1E1AF3B3C();
  sub_1E1AF434C();
  (*(v70 + 8))(v51, v71);
  *(swift_allocObject() + 16) = a9;
  v52 = sub_1E1361A80();
  v53 = a9;
  v54 = sub_1E1AF68EC();
  v84[3] = v52;
  v84[4] = MEMORY[0x1E69AB720];
  v84[0] = v54;
  sub_1E1AF583C();

  v34(v50, v16);
  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t MetricsPagePresenter.prepareToObserveAssets(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 96))(a3, a4))
  {
    PendingPageRender.observeAssets(_:)(a1, a2);
  }

  ObjectType = swift_getObjectType();
  v9 = (*(a4 + 104))(a3, a4);
  (*(a2 + 56))(v9, ObjectType, a2);
  return (*(a2 + 72))(ObjectType, a2);
}

void sub_1E16256F4(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1E1AF3C1C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E1AF436C() - 8);
  sub_1E1623CE0(a1, v1[4], v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), v1 + ((((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80)), v3, v4);
}

uint64_t sub_1E1625840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16258A4(uint64_t a1)
{
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1625AA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_1E1AF436C() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E1AF3B5C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_1E162473C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + 72, v0 + v4, v0 + v7, *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t sub_1E1625BC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PurchaseIntent.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t PurchaseIntent.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t PurchaseIntent.overrideBuyParameters.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PurchaseIntent.presentingSceneIdentifier.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PurchaseIntent.lineItem.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

__n128 PurchaseIntent.init(installationType:purchaseToken:adamId:parentAdamId:overrideBuyParameters:isRedownload:lineItem:metricsDictionary:systemInformation:additionalHeaders:presentingSceneIdentifier:isAppInstalled:requiresExceptionRequest:forceAskToBuyReason:)@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __n128 a12, uint64_t a13, char a14, char a15, char *a16)
{
  v19 = *a3;
  v18 = a3[1];
  v21 = *a4;
  v20 = a4[1];
  v22 = *a16;
  *a9 = *a1;
  sub_1E1301CF0(a2, (a9 + 8));
  *(a9 + 40) = v19;
  *(a9 + 48) = v18;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  result = a12;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  *(a9 + 56) = v21;
  *(a9 + 64) = v20;
  *(a9 + 137) = a15;
  *(a9 + 138) = v22;
  return result;
}

double PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  ObjectType = swift_getObjectType();
  v39 = *(a2 + 16);
  v39(&v49, ObjectType, a2);
  v12 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
  v13 = v55 >> 60;
  if ((v55 >> 60) <= 2)
  {
    if (v13 == 1)
    {
      if ((v49 & 1) == 0)
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      v37 = a5;
      v38 = a3;
      v33 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem + 8);
      v34 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);

      v35 = 0;
      v36 = 0;
      goto LABEL_23;
    }

    if (v13 == 2)
    {
      v37 = a5;
      v38 = a3;
      if (*(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        v35 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
        v36 = v50;

        v33 = 0;
        v34 = 0;
        v31 = 0;
        v32 = 2;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_32:

    sub_1E139CEA8(&v49);
    swift_unknownObjectRelease();
LABEL_39:
    result = 0.0;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  if (v13 != 3)
  {
    if (v13 != 7)
    {
      if (v13 == 8 && (v55 == 0x8000000000000000 && !(v12 | v50 | v56 | v54 | v53 | v52 | v51) || v55 == 0x8000000000000000 && v12 == 4 && !(v56 | v50 | v54 | v53 | v52 | v51)))
      {
        v37 = a5;
        v38 = a3;
        if (OfferAction.isRedownload.getter())
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        v32 = v14;
        v31 = OfferAction.isRedownload.getter();
        v33 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem + 8);
        v34 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);

        v35 = 0;
        v36 = 0;
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    if (*(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) == 1)
    {
      v37 = a5;
      v38 = a3;
LABEL_21:
      v35 = (*(a2 + 32))(ObjectType, a2);
      v36 = v16;
      v33 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem + 8);
      v34 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v35 = (*(&v49 + 1) << 8) | ((*(&v49 + 5) | (HIBYTE(v49) << 16)) << 40) | v49;
  v36 = v50;
  v37 = a5;
  v38 = a3;
  v15 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem + 8);
  v34 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  sub_1E141CF5C(&v49, &v48);
  v33 = v15;
LABEL_22:

LABEL_23:
  v31 = 1;
  v32 = 3;
LABEL_24:
  v17 = OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_1E137A5C4(a1 + v17, v42);
  v18 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v28 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v29 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  v30 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId + 8);

  v39(v43, ObjectType, a2);
  v19 = v46 >> 60;
  v20 = 1;
  if (v46 >> 60 != 2 && v19 != 7)
  {
    if (v19 != 8 || v47 || v46 != 0x8000000000000000 || v43[0] != 1 || (v21 = vorrq_s8(v44, v45), *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v43[1]))
    {
      v20 = 0;
    }
  }

  sub_1E139CEA8(v43);
  v22 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest);
  v23 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason);
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v24 = sub_1E16D0204();
  MetricsSystemInfo.init()(&v41);
  v25 = MetricsSystemInfo.dictionaryRepresentation.getter();
  v48 = v41;
  sub_1E1626978(&v48);
  v26 = sub_1E14C6330(v25);

  swift_unknownObjectRelease();
  sub_1E139CEA8(&v49);

  *a6 = v32;
  sub_1E1301CF0(v42, (a6 + 8));
  *(a6 + 40) = v28;
  *(a6 + 48) = v18;
  *(a6 + 72) = v35;
  *(a6 + 80) = v36;
  *(a6 + 88) = v31 & 1;
  *(a6 + 144) = v34;
  *(a6 + 152) = v33;
  *(a6 + 96) = v24;
  *(a6 + 104) = v26;
  *(a6 + 112) = v38;
  *(a6 + 120) = a4;
  *(a6 + 128) = v37;
  *(a6 + 136) = v20;
  *(a6 + 56) = v29;
  *(a6 + 64) = v30;
  *(a6 + 137) = v22;
  *(a6 + 138) = v23;
  return result;
}

uint64_t sub_1E1626328()
{
  v1 = v0;
  v2 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x657461647075;
    }

    else
    {
      v3 = 0xEA00000000006461;
      v4 = 0x6F6C6E776F646572;
    }
  }

  else if (*v1)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6573616863727570;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69E6158];
  *&v42 = v4;
  *(&v42 + 1) = v3;
  sub_1E1301CF0(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x74616C6174736E69, 0xEF657079546E6F69, isUniquelyReferenced_nonNull_native);
  sub_1E137A5C4((v1 + 8), &v42);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *&v41[0] = v2;
  sub_1E159827C(&v42, 0x6E656B6F74, 0xE500000000000000, v7);
  v8 = *&v41[0];
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v43 = v5;
  *&v42 = v9;
  *(&v42 + 1) = v10;
  sub_1E1301CF0(&v42, v41);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x64496D616461, 0xE600000000000000, v11);
  v12 = v1[88];
  v13 = MEMORY[0x1E69E6370];
  v43 = MEMORY[0x1E69E6370];
  LOBYTE(v42) = v12;
  sub_1E1301CF0(&v42, v41);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x6E776F6465527369, 0xEC00000064616F6CLL, v14);
  v15 = v1[137];
  v43 = v13;
  LOBYTE(v42) = v15;
  sub_1E1301CF0(&v42, v41);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0xD000000000000018, 0x80000001E1B65540, v16);
  v17 = *(v1 + 10);
  if (v17)
  {
    v18 = *(v1 + 9);
    v43 = v5;
    *&v42 = v18;
    *(&v42 + 1) = v17;
    sub_1E1301CF0(&v42, v41);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0xD000000000000011, 0x80000001E1B6AFF0, v19);
  }

  v20 = *(v1 + 19);
  if (v20)
  {
    v21 = *(v1 + 18);
    v43 = v5;
    *&v42 = v21;
    *(&v42 + 1) = v20;
    sub_1E1301CF0(&v42, v41);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0x6D657449656E696CLL, 0xE800000000000000, v22);
  }

  v23 = *(v1 + 12);
  if (v23)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    *&v42 = v23;
    sub_1E1301CF0(&v42, v41);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0x7363697274656DLL, 0xE700000000000000, v24);
  }

  v25 = *(v1 + 13);
  if (v25)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    *&v42 = v25;
    sub_1E1301CF0(&v42, v41);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0xD000000000000011, 0x80000001E1B6AFD0, v26);
  }

  v27 = *(v1 + 14);
  if (v27)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
    *&v42 = v27;
    sub_1E1301CF0(&v42, v41);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0xD000000000000011, 0x80000001E1B6AFB0, v28);
  }

  v29 = *(v1 + 16);
  if (v29)
  {
    v30 = *(v1 + 15);
    v43 = v5;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    sub_1E1301CF0(&v42, v41);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0xD000000000000019, 0x80000001E1B6AF90, v31);
  }

  v32 = *(v1 + 8);
  if (v32)
  {
    v33 = *(v1 + 7);
    v43 = v5;
    *&v42 = v33;
    *(&v42 + 1) = v32;
    sub_1E1301CF0(&v42, v41);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0x6441746E65726170, 0xEC00000064496D61, v34);
  }

  v35 = v1[138];
  if (v35 != 2)
  {
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37 = 0xD000000000000019;
    }

    else
    {
      v37 = 0xD000000000000010;
    }

    if (v36)
    {
      v38 = "showcaseFriendsPlaying";
    }

    else
    {
      v38 = "exceptionDeleted";
    }

    v43 = v5;
    *&v42 = v37;
    *(&v42 + 1) = v38 | 0x8000000000000000;
    sub_1E1301CF0(&v42, v41);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v41, 0xD000000000000013, 0x80000001E1B65560, v39);
  }

  return v8;
}

uint64_t sub_1E16268CC()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E6DB8 = result;
  return result;
}

id static PurchaseCompleteNotificationDetails.notificationName.getter()
{
  if (qword_1EE1E6DB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1E6DB8;

  return v1;
}

uint64_t sub_1E16269CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1626A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit14PurchaseResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PageGrid.HorizontalMargins(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PageGrid.HorizontalMargins(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1E1626B34(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ReferrerType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1626C2C()
{
  result = qword_1ECEB6FC0;
  if (!qword_1ECEB6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6FC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit12ReferrerDataV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit12ReferrerDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E1626CF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 91))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1E1626D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t linearInterpolate<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF754C();
  sub_1E1AF747C();
  sub_1E1AF722C();
  v16 = *(v6 + 8);
  v16(v12, a3);
  sub_1E1AF65EC();
  sub_1E1AF65EC();
  sub_1E1AF721C();
  v16(v9, a3);
  v16(v12, a3);
  return (v16)(v15, a3);
}

double sub_1E1627084@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  result = (1.0 - a4) * *a1 + *a2 * a4;
  *a3 = result;
  return result;
}

float sub_1E16270DC@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>, double a4@<D0>)
{
  v4 = a4;
  result = ((1.0 - v4) * *a1) + (*a2 * v4);
  *a3 = result;
  return result;
}

void sub_1E1627134(CGFloat *a1@<X0>, CGFloat *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_1E1627180(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], a4);
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double sub_1E1627180(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v24 = (1.0 - a9) * MinX + CGRectGetMinX(v29) * a9;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMinY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  CGRectGetMinY(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetWidth(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  CGRectGetHeight(v35);
  return v24;
}

double BoundsBasedPlaceable.measure(toFit:with:)(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_1E1AF1A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B06D70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_1E1AF1A9C();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

Swift::Void __swiftcall BoundsBasedPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = *v2;
  [*v2 bounds];
  [v7 setBounds_];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);

  [v7 setCenter_];
}

double sub_1E16274B8(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_1E1AF1A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B06D70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_1E1AF1A9C();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

id sub_1E162758C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  [*v4 bounds];
  [v9 setBounds_];
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  MidY = CGRectGetMidY(v15);

  return [v9 setCenter_];
}

uint64_t TopChartDiffableSegmentPresenter.__allocating_init(objectGraph:segment:parentPendingPageRender:parentPageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E1627ACC(a1, a2, a3, a4);

  return v8;
}

uint64_t TopChartDiffableSegmentPresenter.init(objectGraph:segment:parentPendingPageRender:parentPageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E1627ACC(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1E1627774()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + qword_1ECEB6FD8);
  v3 = *(v0 + qword_1ECEB6FC8);
  v4 = *(v0 + qword_1ECEB6FD0);

  return _s11AppStoreKit39TopChartDiffableSegmentContentPresenterC11objectGraph7segment17pendingPageRender04pageO7MetricsAC9JetEngine010BaseObjectK0C_AA0deG0CAA07PendingnO0CSgAH0noqI0CSgtcfC_0(v1, v2, v3, v4);
}

uint64_t sub_1E1627800(uint64_t a1, char a2)
{
  sub_1E1A80AC8(a1, a2);
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName + 8);
  v6 = (v2 + qword_1ECEF4570);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName + 8);
  v9 = (v2 + qword_1ECEF4578);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;
}

uint64_t sub_1E1627904()
{
}

uint64_t TopChartDiffableSegmentPresenter.deinit()
{
  v0 = sub_1E13DAEAC();

  return v0;
}

uint64_t TopChartDiffableSegmentPresenter.__deallocating_deinit()
{
  sub_1E13DAEAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1627ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v62 = a1;
  v53 = sub_1E1AF361C();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF68DC();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v54 = &v51 - v16;
  v18 = (v5 + qword_1ECEF4570);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + qword_1ECEF4578);
  *v19 = 0;
  v19[1] = 0;
  *(v5 + qword_1ECEB6FD8) = a2;
  v20 = *(a2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName);
  v21 = *(a2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shortName + 8);
  swift_beginAccess();
  *v18 = v20;
  v18[1] = v21;
  v22 = *(a2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName);
  v23 = *(a2 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_longName + 8);
  swift_beginAccess();
  *v19 = v22;
  v19[1] = v23;
  *(v5 + qword_1ECEB6FC8) = a3;
  *(v5 + qword_1ECEB6FD0) = a4;
  v24 = sub_1E1AEFCCC();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  *(v5 + qword_1EE2169B8) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE1ED400) = 0;
  v26 = *(*v5 + 640);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3180);
  v28 = *(*(v27 - 8) + 56);
  v28(v5 + v26, 1, 1, v27);
  v29 = *(*v5 + 648);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v30 - 8) + 56))(v5 + v29, 1, 1, v30);
  v31 = *(*v5 + 656);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3170);
  (*(*(v32 - 8) + 56))(v5 + v31, 1, 1, v32);
  v28(v5 + *(*v5 + 664), 1, 1, v27);
  v33 = *(*v5 + 672);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v34 - 8) + 56))(v5 + v33, 1, 1, v34);
  v35 = *(*v5 + 680);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v36 - 8) + 56))(v5 + v35, 1, 1, v36);
  v37 = *(*v5 + 688);
  sub_1E1361A80();

  v63 = a2;
  swift_retain_n();

  sub_1E1AF322C();
  v64 = v25;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1429210();
  sub_1E1AF6EEC();
  (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
  *(v5 + v37) = sub_1E1AF692C();
  sub_1E13C6184(v5 + *(*v5 + 696));
  v38 = (v5 + *(*v5 + 704));
  *v38 = 0u;
  v38[1] = 0u;
  *(v38 + 25) = 0u;
  v39 = *(*v5 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v5 + v39) = sub_1E1AF5BEC();
  v40 = *(*v5 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v5 + v40) = sub_1E1AF5BEC();
  v41 = *(*v5 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v5 + v41) = sub_1E1AF5BEC();
  v42 = v62;
  *(v5 + *(*v5 + 736)) = 0;
  v43 = (v5 + *(*v5 + 752));
  *v43 = 0;
  v43[1] = 0;
  v44 = v54;
  sub_1E134FD1C(v54, v5 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v65, v5 + *(*v5 + 744), &qword_1ECEB24F8);
  v45 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v5 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v46);
  if (a4)
  {
    sub_1E1AF50BC();
    v64 = a4;

    v47 = v51;
    sub_1E1AF35FC();
    v42 = sub_1E1AF41CC();
    (*(v52 + 8))(v47, v53);
  }

  else
  {
  }

  v48 = sub_1E13C5298(v42, 0, 0, 0);
  v49 = *(*v48 + 1112);

  *(v48 + qword_1EE2169B8) = v49(v63);

  sub_1E13CE020(0);

  sub_1E1308058(v65, &qword_1ECEB24F8);
  sub_1E1308058(v44, &unk_1ECEB4B60);
  return v48;
}

uint64_t type metadata accessor for TopChartDiffableSegmentPresenter()
{
  result = qword_1ECEB6FE0;
  if (!qword_1ECEB6FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggerIdsSeen(_:)(Swift::OpaquePointer a1)
{
  v4 = v2;
  v5 = v1;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE5C();
  (*(v4 + 32))(v5, v4);
  sub_1E1628664(a1._rawValue, v3, v10, v5, v4);
  (*(v4 + 40))(v5, v4);
  (*(v8 + 8))(v10, v7);
}

void sub_1E1628664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a5 + 16);
    v14 = (a1 + 32);
    v19[1] = a5 + 8;
    do
    {
      v16 = *v14++;
      v15 = v16;
      v22 = v16;
      v13(&v22, a4, a5, v9);
      v17 = sub_1E1AEFE6C();
      v18 = (*(*(v17 - 8) + 48))(v11, 1, v17);
      sub_1E153DF88(v11);
      if (v18 == 1)
      {
        v21 = v15;
        (*(a5 + 8))(&v21, v20, a4, a5);
      }

      --v12;
    }

    while (v12);
  }
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggersSeen(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  v2._rawValue = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1E135C944(0, v1, 0);
    v2._rawValue = rawValue;
    v4 = a1._rawValue + 32;
    do
    {
      sub_1E1300B24(v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      (*(v6 + 8))(&v13, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v7 = v13;
      rawValue = v2._rawValue;
      v9 = *(v2._rawValue + 2);
      v8 = *(v2._rawValue + 3);
      if (v9 >= v8 >> 1)
      {
        sub_1E135C944((v8 > 1), v9 + 1, 1);
        v2._rawValue = rawValue;
      }

      *(v2._rawValue + 2) = v9 + 1;
      *(v2._rawValue + v9 + 32) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  TriggerPersistantStore.markTriggerIdsSeen(_:)(v2);
}

Swift::Void __swiftcall TriggerPersistantStore.removeAllTriggers()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 32))();
  sub_1E1628980(v2, v4, v3);
  v5 = *(v3 + 40);

  v5(v4, v3);
}

uint64_t sub_1E1628980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v10 = 0;
  v5(&v10);
  v9 = 1;
  (v5)(&v9, a2, a3);
  v8 = 2;
  (v5)(&v8, a2, a3);
  v7 = 3;
  return (v5)(&v7, a2, a3);
}

uint64_t TriggerPersistantStore.migrate(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E1628B48(a2, a3);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  (*(v9 + 32))(v8, v9);
  sub_1E1628F08(v7, a1);
  (*(v9 + 40))(v8, v9);

  (*(a3 + 32))(a2, a3);
  sub_1E1628980(v3, a2, a3);
  v10 = *(a3 + 40);

  return v10(a2, a3);
}

uint64_t sub_1E1628B48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v38 - v6;
  v8 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v47 = v38 - v13;
  v14 = 0;
  v15 = *(a2 + 16);
  v48 = (v16 + 48);
  v49 = v15;
  v45 = (v16 + 16);
  v46 = (v16 + 32);
  v42 = v16 + 8;
  v44 = v16;
  v38[1] = v16 + 40;
  v17 = MEMORY[0x1E69E7CC8];
  v40 = a2;
  v41 = a1;
  v38[2] = a2 + 16;
  v39 = v2;
  v43 = v10;
  while (1)
  {
    v18 = byte_1F5C2D768[v14 + 32];
    v51 = v18;
    v49(&v51, a1, a2, v12);
    if ((*v48)(v7, 1, v8) == 1)
    {
      sub_1E153DF88(v7);
      goto LABEL_3;
    }

    v19 = v47;
    v20 = *v46;
    v21 = v8;
    v22 = v7;
    (*v46)(v47, v7, v21);
    (*v45)(v10, v19, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v17;
    v25 = sub_1E1595CEC(v18);
    v26 = v17[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v17[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E1419604();
      }
    }

    else
    {
      sub_1E168F3CC(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_1E1595CEC(v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    v7 = v22;
    v17 = v50;
    v8 = v21;
    if (v29)
    {
      v10 = v43;
      v32 = v44;
      (*(v44 + 40))(v50[7] + *(v44 + 72) * v25, v43, v21);
      (*(v32 + 8))(v47, v21);
    }

    else
    {
      v50[(v25 >> 6) + 8] |= 1 << v25;
      *(v17[6] + v25) = v18;
      v10 = v43;
      v33 = v44;
      v20((v17[7] + *(v44 + 72) * v25), v43, v21);
      (*(v33 + 8))(v47, v21);
      v34 = v17[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v17[2] = v36;
    }

    a2 = v40;
    a1 = v41;
LABEL_3:
    if (++v14 == 4)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1628F08(uint64_t a1, void *a2)
{
  v43 = a2;
  v47 = sub_1E1AEFE6C();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6FF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = *(a1 + 64);
  v37 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v39 = v3 + 16;
  v40 = v3;
  v46 = (v3 + 32);
  v41 = a1;
  v42 = (v3 + 8);

  v16 = 0;
  v38 = v9;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v17 << 6);
      v23 = v40;
      v24 = *(*(v41 + 48) + v22);
      v25 = v45;
      v26 = v47;
      (*(v40 + 16))(v45, *(v41 + 56) + *(v40 + 72) * v22, v47);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6FF8);
      v28 = *(v27 + 48);
      v29 = v44;
      *v44 = v24;
      v20 = v29;
      (*(v23 + 32))(&v29[v28], v25, v26);
      (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
      v19 = v17;
      v9 = v38;
LABEL_13:
      sub_1E162937C(v20, v9);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6FF8);
      if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
      {
      }

      v31 = *v9;
      v32 = v45;
      v33 = v47;
      (*v46)(v45, &v9[*(v30 + 48)], v47);
      v34 = v43[3];
      v35 = v43[4];
      __swift_project_boxed_opaque_existential_1Tm(v43, v34);
      v48 = v31;
      (*(v35 + 8))(&v48, v32, v34, v35);
      result = (*v42)(v32, v33);
      v16 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    v20 = v44;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6FF8);
        (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v37 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E162937C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArticlePageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ArticlePageIntent() + 20);
  v7 = sub_1E1AEFCCC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t type metadata accessor for ArticlePageIntent()
{
  result = qword_1EE1F17A0;
  if (!qword_1EE1F17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticlePageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v40 - v6;
  v43 = sub_1E1AEFCCC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF380C();
  v12 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v46 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v47 = v20;
    v48 = v22;
  }

  sub_1E1AF6F6C();
  v23 = *(v12 + 8);
  v24 = v44;
  v23(v17, v44);
  v25 = v46;
  sub_1E1AF381C();
  v26 = v42;
  sub_1E1AF36FC();
  v23(v14, v24);
  v27 = v41;
  v28 = v43;
  if ((*(v41 + 48))(v26, 1, v43) == 1)
  {
    sub_1E13ECBA0(v26);
    v29 = v24;
    v30 = sub_1E1AF5A7C();
    sub_1E1629CB4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ArticlePageIntent();
    *v32 = 7107189;
    v32[1] = 0xE300000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v45, v34);
    v23(v25, v29);
    return sub_1E134B88C(v49);
  }

  else
  {
    v36 = sub_1E1AF39DC();
    (*(*(v36 - 8) + 8))(v45, v36);
    v23(v25, v24);
    v37 = *(v27 + 32);
    v38 = v40;
    v37(v40, v26, v28);
    v39 = type metadata accessor for ArticlePageIntent();
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t ArticlePageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticlePageIntent() + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ArticlePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_1E134E724(v1, v9);
  v6 = [v3 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  type metadata accessor for ArticlePageIntent();
  v9[0] = sub_1E1AEFBDC();
  v9[1] = v7;
  v8 = [v3 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v8)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E1629CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1629D28()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NonconcurrentBox.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t NonconcurrentBox.read<A>(with:)(void (*a1)(char *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  a1(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t NonconcurrentBox.write(with:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t NonconcurrentBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1E162A1D0(uint64_t *a1, uint64_t *a2)
{
  v20 = MEMORY[0x1E69E7CD0];
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  v8 = *a2;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = 0;
  do
  {
    v10 = v5 + 32 + 40 * v9;
    v11 = v9;
    while (1)
    {
      if (v11 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1E134E724(v10, v18);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v11;
      sub_1E134B88C(v18);
      v10 += 40;
      if (v7 == v11)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v18);
    if ((v12 & 1) == 0)
    {

      goto LABEL_5;
    }

    v13 = sub_1E134B88C(v18);
    MEMORY[0x1E68FEF20](v13);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v9 = v11 + 1;
    sub_1E1AF62AC();
    v6 = v19;
  }

  while (v7 - 1 != v11);
LABEL_12:

  if (v6 >> 62)
  {
LABEL_21:
    result = sub_1E1AF71CC();
    v15 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E68FFD80](i, v6);
        }

        else
        {
          v17 = *(v6 + 8 * i + 32);
        }

        sub_1E1894228(v18, *(v17 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v20;
  }

  return result;
}

unint64_t sub_1E162A424()
{
  v6 = MEMORY[0x1E69E7CD0];
  result = sub_1E16356A4();
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CD0];
  }

  result = sub_1E1AF71CC();
  v2 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E68FFD80](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_1E1894228(&v5, *(v4 + 16));
    }

    return v6;
  }

  return result;
}

uint64_t sub_1E162A56C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E162A5D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E162A6D8()
{
  result = sub_1E1771E40();
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment))
  {
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      swift_getObjectType();

      sub_1E162A1D0(&OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering, &OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping);
      (*(*(v3 + 16) + 32))();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E162A7B8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E162A7FC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(ObjectType);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v10 = *(v7 + 8);
      v11 = swift_getObjectType();
      (*(*(v10 + 8) + 16))(v11);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_1E162A8F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1E162A984;
}

void sub_1E162A984(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    sub_1E162A7FC(v3);
    goto LABEL_10;
  }

  v5 = v2[9];
  v4 = v2[10];
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    v7 = v2[9] + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
    if (v3)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v11 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v11 + 8) + 16);
    }

    (*v10)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_10:

  free(v2);
}

BOOL sub_1E162AA88()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return 0;
  }

  sub_1E13BFF54(v1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, v4);
  v2 = v4[3] != 0;
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  return v2;
}

void sub_1E162AB04()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (v1)
  {
    sub_1E13BFF54(v1 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, v16);
    if (v17)
    {
      sub_1E1301CF0(v16, v20);
      v2 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
      swift_beginAccess();
      v3 = *(v0 + v2);
      *(v0 + v2) = 1;
      if (v3 == 1 || (v4 = v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);

        v8(ObjectType, v7);
        swift_unknownObjectRelease();
      }

      type metadata accessor for JSIntentDispatcher();
      v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
      sub_1E1AF421C();
      sub_1E1AF55EC();
      sub_1E137A5C4(v20, v19);
      v10 = v9;
      v11 = v0;
      sub_1E1369714(v19, v10, "AppStoreKit/TopChartSegmentPresenter.swift", 42, 2);
      v17 = sub_1E1AF470C();
      v18 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(v16);
      sub_1E1AF46FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7090);
      sub_1E1AF57DC();

      __swift_destroy_boxed_opaque_existential_1(v16);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1E162C38C;
      *(v13 + 24) = v12;
      v14 = sub_1E1361A80();
      swift_retain_n();

      v15 = sub_1E1AF68EC();
      v17 = v14;
      v18 = MEMORY[0x1E69AB720];
      v16[0] = v15;
      sub_1E1AF57FC();

      sub_1E15E0198(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_1E1308058(v16, &qword_1ECEB2DF0);
    }
  }
}

uint64_t sub_1E162AE28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_1E162A1D0(&OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering, &OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping);
  a2[1] = result;
  return result;
}

uint64_t sub_1E162AE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 16) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  v9 = TopChartSegment.mergingWith(_:)(a1);
  v10 = *(a3 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  *(a3 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment) = v9;

  sub_1E162B0EC(v10);

  v11 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v13 = *(a3 + v11);
  *(a3 + v11) = 0;
  if (v13)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v6 + 8);
      v15 = swift_getObjectType();
      (*(*(v14 + 8) + 16))(v15);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E162AFD4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;
  if (v5)
  {
    v6 = a2 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v9 = a2 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 24))(a1, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E162B0EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFE6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 88;
  v8 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment;
  v9 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (v9)
  {
    v10 = type metadata accessor for TopChartSegment();
    v11 = sub_1E162C670(&qword_1ECEB70B0, type metadata accessor for TopChartSegment);
    v12 = &protocol witness table for BasePage;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v9;
  v26 = v10;
  v27 = v12;
  v28 = v11;
  swift_beginAccess();

  sub_1E13891EC(v25, v2 + 40);
  swift_endAccess();
  sub_1E138B568();
  result = sub_1E1308058(v25, &qword_1ECEB2588);
  v14 = *(v2 + v8);
  if (v14)
  {
    if (a1)
    {
    }

    else
    {
      v15 = v2 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        swift_getObjectType();
        v24 = v5;

        sub_1E162A1D0(&OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering, &OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping);
        v5 = v24;
        (*(*(v16 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v17 + 16) + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (*(v2 + 16))
    {
      v26 = type metadata accessor for TopChartSegment();
      v27 = &protocol witness table for BasePage;
      v28 = sub_1E162C670(&qword_1ECEB70B0, type metadata accessor for TopChartSegment);
      v25[0] = v14;

      PendingPageRender.use(pageRenderEventFrom:)(v25);

      sub_1E1308058(v25, &qword_1ECEB2588);
      v19 = *(v2 + 16);
      if (v19)
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v21 = v20;
        (*(v5 + 8))(v7, v4);
        v22 = v19 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v22 = v21;
        *(v22 + 8) = 0;
        v23 = *(v19 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
        swift_beginAccess();
        *(v23 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E162B508(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + *a1);

  return v3;
}

uint64_t sub_1E162B55C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return v1;
  }

  v2 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  v6 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = 0;
  do
  {
    v8 = v3 + 32 + 40 * v7;
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_1E134E724(v8, v13);
      if (*(*(v1 + v6) + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      sub_1E134B88C(v13);
      v8 += 40;
      if (v5 == v9)
      {
        goto LABEL_13;
      }
    }

    sub_1E135FCF4(v13);
    if ((v10 & 1) == 0)
    {

      goto LABEL_5;
    }

    v11 = sub_1E134B88C(v13);
    MEMORY[0x1E68FEF20](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v7 = v9 + 1;
    sub_1E1AF62AC();
    v4 = v14;
  }

  while (v5 - 1 != v9);
LABEL_13:

  if (v4 >> 62)
  {
LABEL_18:
    v1 = sub_1E1AF71CC();
  }

  else
  {
    v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

uint64_t sub_1E162B768(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = result;
  v4 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_1E134E724(v11, v16);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_1E134B88C(v16);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_1E135FCF4(v16);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_1E134B88C(v16);
    MEMORY[0x1E68FEF20](v14);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v9 = v12 + 1;
    sub_1E1AF62AC();
    v6 = v17;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v15 = MEMORY[0x1E68FFD80](v3, v6);
LABEL_17:

    return v15;
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v3)
    {
      v15 = *(v6 + 8 * v3 + 32);

      goto LABEL_17;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

BOOL sub_1E162B998(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_1E134E724(v11, v17);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_1E134B88C(v17);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_1E135FCF4(v17);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_1E134B88C(v17);
    MEMORY[0x1E68FEF20](v14);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v9 = v12 + 1;
    sub_1E1AF62AC();
    v6 = v18;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if (v6 >> 62)
  {
LABEL_18:
    v15 = sub_1E1AF71CC();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 > a1;
}

uint64_t sub_1E162BBB0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment;
  if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment))
  {
    return 0;
  }

  v2 = sub_1E1AF019C();
  v3 = *(v0 + v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v31 = v0;
  v5 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v6 = *(v3 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v8)
  {
    v10 = 0;
    v11 = v6 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v32 = v4;
    while (1)
    {
      v4 = v11 + 40 * v10;
      v7 = v10;
      while (1)
      {
        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        sub_1E134E724(v4, v35);
        if (!*(*(v3 + v9) + 16))
        {
          goto LABEL_6;
        }

        sub_1E135FCF4(v35);
        if (v13)
        {
          break;
        }

LABEL_6:
        ++v7;
        sub_1E134B88C(v35);
        v4 += 40;
        if (v8 == v7)
        {
          v7 = MEMORY[0x1E69E7CC0];
          v4 = v32;
          goto LABEL_18;
        }
      }

      v14 = sub_1E134B88C(v35);
      MEMORY[0x1E68FEF20](v14);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v10 = v7 + 1;
      sub_1E1AF62AC();
      v12 = v34;
      v11 = v6 + 32;
      v15 = v8 - 1 == v7;
      v7 = MEMORY[0x1E69E7CC0];
      v4 = v32;
      if (v15)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = v7;
LABEL_18:

  if (v12 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {

    if (v4 >= i)
    {
      return 0;
    }

    result = sub_1E1AF019C();
    v18 = *(v31 + v1);
    if (!v18)
    {
      goto LABEL_46;
    }

    v19 = result;
    v20 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
    swift_beginAccess();
    v21 = *(v18 + v20);
    v33 = v7;
    v22 = *(v21 + 16);
    v23 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

    swift_beginAccess();
    if (!v22)
    {
      break;
    }

    v4 = 0;
    v24 = v21 + 32;
    v31 = v22 - 1;
LABEL_24:
    v25 = v24 + 40 * v4;
    v1 = v4;
    while (v1 < *(v21 + 16))
    {
      sub_1E134E724(v25, v35);
      if (*(*(v18 + v23) + 16))
      {

        sub_1E135FCF4(v35);
        if (v26)
        {

          v27 = sub_1E134B88C(v35);
          MEMORY[0x1E68FEF20](v27);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v4 = v1 + 1;
          sub_1E1AF62AC();
          v7 = v33;
          v24 = v21 + 32;
          if (v31 != v1)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

      ++v1;
      sub_1E134B88C(v35);
      v25 += 40;
      if (v22 == v1)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_35:

  if ((v7 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1E68FFD80](v19, v7);
    goto LABEL_39;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v7 + 8 * v19 + 32);

LABEL_39:

    v29 = *(v28 + 24);

    v30 = *(v29 + 16);

    return sub_1E1AF018C() < v30;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t TopChartSegmentPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];
  v9 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t TopChartSegmentPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];
  v9 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1E162C200()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view);
}

uint64_t TopChartSegmentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view);

  return v0;
}

uint64_t TopChartSegmentPresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;

  sub_1E1337DEC(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1E162C39C(uint64_t a1)
{
  result = sub_1E162C670(&qword_1ECEB7098, type metadata accessor for TopChartSegmentPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for TopChartSegmentPresenter()
{
  result = qword_1ECEB70A0;
  if (!qword_1ECEB70A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E162C670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E162C6B8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE216AF0 = sub_1E1AF591C();
  unk_1EE216AF8 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE216AD8);
  return sub_1E1AF590C();
}

uint64_t sub_1E162C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1E130B5DC;

  return v14(a1, a2, a3, "", 0, 2, a4, a5);
}

uint64_t sub_1E162C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = a8;
  *(v9 + 200) = v8;
  *(v9 + 280) = a6;
  *(v9 + 176) = a5;
  *(v9 + 184) = a7;
  *(v9 + 160) = a3;
  *(v9 + 168) = a4;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  sub_1E1AF389C();
  *(v9 + 208) = swift_task_alloc();
  v10 = sub_1E1AF39DC();
  *(v9 + 216) = v10;
  v11 = *(v10 - 8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 + 64);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E162CA70, 0, 0);
}

uint64_t sub_1E162CA70()
{
  static JSONContext.makeDefaultContext(with:)(*(v0 + 160), *(v0 + 248));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = AssociatedTypeWitness == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v12 = v2;
    v35 = sub_1E162E5C4;
LABEL_16:
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 216);
    v33 = *(v0 + 184);
    (*(v14 + 16))(v13, *(v0 + 248), v15);
    v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v0 + 256) = v17;
    *(v17 + 16) = v33;
    *(v17 + 32) = AssociatedTypeWitness;
    *(v17 + 40) = v12;
    (*(v14 + 32))(v17 + v16, v13, v15);

    sub_1E1AF701C();
    v18 = sub_1E1AF5F1C();

    if (v18)
    {
      if (qword_1EE1EFA28 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 280);
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v19 = sub_1E1AF390C();
      *(v0 + 72) = MEMORY[0x1E69E6158];
      *(v0 + 48) = v19;
      *(v0 + 56) = v20;
      sub_1E1AF385C();
      sub_1E13E44F8(v0 + 48);
      sub_1E1AF387C();
      *(v0 + 104) = MEMORY[0x1E69E6A70];
      *(v0 + 80) = v31;
      *(v0 + 88) = v32;
      *(v0 + 96) = v34;
      sub_1E1AF386C();
      v21 = v0 + 80;
    }

    else
    {
      if (qword_1EE1EFA28 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v22 = sub_1E1AF390C();
      *(v0 + 136) = MEMORY[0x1E69E6158];
      *(v0 + 112) = v22;
      *(v0 + 120) = v23;
      sub_1E1AF385C();
      v21 = v0 + 112;
    }

    sub_1E13E44F8(v21);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
    v24 = *(v0 + 200);

    __swift_project_boxed_opaque_existential_1Tm((v24 + 16), *(v24 + 40));
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_1E162D244;
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 144);

    return sub_1E170F19C(v30, v28, v35, v17, v29, v26, v27);
  }

  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = AssociatedTypeWitness == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v12 = v4;
    v35 = sub_1E162D844;
    goto LABEL_16;
  }

  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v6 = sub_1E1AF390C();
  *(v0 + 40) = MEMORY[0x1E69E6158];
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  sub_1E1AF385C();
  sub_1E13E44F8(v0 + 16);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v8 = sub_1E1AF4C3C();
  sub_1E162D4CC();
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E69AB2F0], v8);
  swift_willThrow();
  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E162D244()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E162D428;
  }

  else
  {
    v2 = sub_1E162D378;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E162D378()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E162D428()
{

  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1E162D4CC()
{
  result = qword_1ECEB70B8;
  if (!qword_1ECEB70B8)
  {
    sub_1E1AF4C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB70B8);
  }

  return result;
}

uint64_t sub_1E162D524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a5;
  v23[6] = a7;
  v12 = sub_1E1AF39DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  (*(v13 + 16))(v15, a4, v12);
  v23[3] = a2;
  v23[4] = a3;
  __swift_allocate_boxed_opaque_existential_0(v23);
  sub_1E1AF463C();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v23);
  }

  sub_1E1300B24(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB70C0);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1E162D744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = a2;
  v6[4] = a3;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_1E1AF378C();
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v6);
  }

  sub_1E1300B24(v6, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB70C8);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1E162D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v30 = *v7;
  v31 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v28 = &v27 - v14;
  swift_getAssociatedTypeWitness();
  sub_1E1AF589C();
  v27 = sub_1E1AF588C();
  v16 = sub_1E1AF649C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v17, a1, a6);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a6;
  *(v21 + 5) = a7;
  *(v21 + 6) = v29;
  (*(v11 + 32))(&v21[v18], v17, a6);
  v22 = v32;
  *&v21[v19] = v31;
  v23 = &v21[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v33;
  *v23 = v22;
  *(v23 + 1) = v24;
  v23[16] = v34;
  v25 = v27;
  *&v21[v20] = v27;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v30;

  sub_1E154AF74(0, 0, v28, &unk_1E1B20A60, v21);

  return v25;
}

uint64_t sub_1E162DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v23;
  v8[17] = v24;
  v8[14] = a5;
  v8[15] = v22;
  v14 = *v22;
  sub_1E1AF389C();
  v8[18] = swift_task_alloc();
  v15 = *(v14 + *MEMORY[0x1E69AB650]);
  v8[19] = v15;
  v8[20] = *(v15 - 8);
  v16 = swift_task_alloc();
  v8[21] = v16;
  v19 = (*(*a4 + 112) + **(*a4 + 112));
  v17 = swift_task_alloc();
  v8[22] = v17;
  *v17 = v8;
  v17[1] = sub_1E162DD6C;

  return v19(v16, a5, a6, a7, a8, v21);
}

uint64_t sub_1E162DD6C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E162DF20;
  }

  else
  {
    v2 = sub_1E162DE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E162DE80()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_1E1AF586C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E162DF20()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v2 = sub_1E1AF390C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v2;
  v0[3] = v3;
  sub_1E1AF385C();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38DC();
  sub_1E13E44F8((v0 + 6));
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v7 = v0[1];

  return v7();
}

uint64_t JSIntentDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E162E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1E130B5D8;

  return MEMORY[0x1EEE16998](a1, a2, a3, a7, a4, a5, a8, a6);
}

uint64_t sub_1E162E2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E130B5D8;

  return sub_1E162C7FC(a1, a2, a3, a4, a5);
}

uint64_t sub_1E162E3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1E130B5D8;

  return MEMORY[0x1EEE169B0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_1E162E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1E130B5D8;

  return MEMORY[0x1EEE169B8](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_1E162E5F0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, uint64_t, uint64_t))
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(sub_1E1AF39DC() - 8);
  return a2(a1, *(v2 + 4), *(v2 + 5), &v2[(*(v7 + 80) + 48) & ~*(v7 + 80)], v5, v6);
}

uint64_t sub_1E162E68C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v13 = v1[6];
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E130B5DC;

  return sub_1E162DB34(a1, v15, v14, v13, v1 + v5, v8, v9, v10);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 104) + **(*v5 + 104));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1E130B5DC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:fileID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 112) + **(*v8 + 112));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1E130B5D8;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1E162EB3C(uint64_t a1)
{
  v1 = *(a1 + 176);
  v36 = *(a1 + 160);
  v37 = v1;
  v38 = *(a1 + 192);
  v39 = *(a1 + 208);
  v2 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v2;
  v3 = *(a1 + 144);
  v34 = *(a1 + 128);
  v35 = v3;
  v4 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v4;
  v5 = *(a1 + 80);
  v30[4] = *(a1 + 64);
  v31 = v5;
  v6 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v6;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AdamId.numberValue.getter();
  if (v8)
  {
    v9 = v8;
    [v7 setItemID_];

    v10 = sub_1E1AF5DBC();
    [v7 setBuyParameters_];

    v11 = sub_1E1AF5DBC();
    [v7 setVendorName_];

    v12 = sub_1E1AF5DBC();
    [v7 setItemName_];

    if (*(&v32 + 1))
    {

      v13 = sub_1E1AF5DBC();
    }

    else
    {
      v13 = 0;
    }

    [v7 setBundleID_];

    v14 = v33;
    if (v33)
    {

      sub_1E1301A28(v15);

      v14 = sub_1E1AF5C6C();
    }

    [v7 setAdditionalHeaders_];

    sub_1E14C65A8(v38);
    v16 = sub_1E1AF5C6C();

    [v7 setMetricsOverlay_];

    if (LOBYTE(v30[0]) > 1u)
    {
      v17 = &selRef_setIsPreorder_;
      if (LOBYTE(v30[0]) == 2)
      {
        v17 = &selRef_setIsUpdate_;
      }
    }

    else
    {
      if (!LOBYTE(v30[0]))
      {
        goto LABEL_13;
      }

      v17 = &selRef_setIsRedownload_;
    }

    [v7 *v17];
LABEL_13:
    if (BYTE8(v31) == 1)
    {
      [v7 setExtensionsToEnable_];
    }

    [v7 setCreatesJobs_];
    [v7 setForceWatchInstall_];
    if (v36)
    {

      v18 = sub_1E1AF620C();
    }

    else
    {
      v18 = 0;
    }

    [v7 setAppCapabilities_];

    [v7 setIsDefaultBrowser_];
    [v7 setShouldAskForRatingException_];
    if ((BYTE8(v37) & 1) == 0)
    {
      [v7 setAgeRatingValue_];
    }

    if (BYTE10(v36) != 2)
    {
      v19 = [v7 buyParameters];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1E1AF5DFC();
        v23 = v22;

        v29 = v21;
        sub_1E1AF6FEC();

        if (BYTE10(v36))
        {
          v24 = 0xD000000000000019;
        }

        else
        {
          v24 = 0xD000000000000010;
        }

        if (BYTE10(v36))
        {
          v25 = "exceptionDeleted";
        }

        else
        {
          v25 = "showcaseFriendsPlaying";
        }

        MEMORY[0x1E68FECA0](v24, v25 | 0x8000000000000000);

        MEMORY[0x1E68FECA0](0xD000000000000015, 0x80000001E1B6B1E0);

        if (v23)
        {
          v26 = sub_1E1AF5DBC();
        }

        else
        {
          v26 = 0;
        }

        [v7 setBuyParameters_];

        if (!v39)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      [v7 setBuyParameters_];
    }

    if (!v39)
    {
LABEL_35:
      v27 = 0;
      goto LABEL_36;
    }

LABEL_32:

    v27 = sub_1E1AF620C();

LABEL_36:
    [v7 setRemoteDownloadIdentifiers_];

    sub_1E14C65A8(*(&v38 + 1));
    v28 = sub_1E1AF5C6C();

    sub_1E137D75C(v30);
    [v7 setPerformanceMetricsOverlay_];

    return;
  }

  __break(1u);
}

__n128 PurchaseDecorationIntent.init(purchaseIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x80000001E1B20B20;
  v2 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v2;
  v3 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v3;
  v4 = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = v4;
  v5 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v7;
  return result;
}

uint64_t PurchaseDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchaseDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_1E1626328();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v5 = [v2 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E162F1C4()
{
  result = qword_1ECEB70D0;
  if (!qword_1ECEB70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB70D0);
  }

  return result;
}

unint64_t sub_1E162F220()
{
  result = qword_1ECEB70D8;
  if (!qword_1ECEB70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB70D8);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1E162F2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E162F2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t InAppPurchaseInstallPage.preInstallOfferDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

BOOL sub_1E162F3B0()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete))
  {
    return 1;
  }

  if (*(v0 + 16))
  {
    return *(v0 + 24) != 0;
  }

  return 0;
}

uint64_t InAppPurchaseInstallPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *InAppPurchaseInstallPage.__allocating_init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v15 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v16 = sub_1E1AF3C3C();
  (*(*(v16 - 8) + 32))(v14 + v15, a6, v16);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v14;
}

void *InAppPurchaseInstallPage.init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v10 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v11 = sub_1E1AF3C3C();
  (*(*(v11 - 8) + 32))(v7 + v10, a6, v11);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v7;
}

uint64_t InAppPurchaseInstallPage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *InAppPurchaseInstallPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v46 = *v2;
  v5 = sub_1E1AF3C3C();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E1AF39DC();
  v7 = *(v61 - 8);
  v8 = MEMORY[0x1EEE9AC00](v61);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v44 - v10;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v59 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF370C();
  v21 = *(v12 + 8);
  v54 = v11;
  v57 = v21;
  v58 = v12 + 8;
  v21(v19, v11);
  v53 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete) = v20 & 1;
  type metadata accessor for InAppPurchaseLockup();
  sub_1E1AF381C();
  v55 = v7;
  v22 = *(v7 + 16);
  v23 = v56;
  v24 = v60;
  v22(v56, v60, v61);
  v52 = &protocol conformance descriptor for Lockup;
  sub_1E162FE64(&qword_1EE1FAB00, type metadata accessor for InAppPurchaseLockup);
  sub_1E1AF464C();
  v3[2] = v62;
  v25 = v3;
  v26 = v22;
  type metadata accessor for Lockup();
  sub_1E1AF381C();
  v51 = v7 + 16;
  v22(v23, v24, v61);
  sub_1E162FE64(&qword_1EE1E4F60, type metadata accessor for Lockup);
  sub_1E1AF464C();
  v27 = v62;
  v25[3] = v62;
  if (*(v53 + v25) != 1)
  {
    goto LABEL_4;
  }

  if (!v25[2])
  {
    v39 = sub_1E1AF5A7C();
    sub_1E162FE64(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v41 = v40;
    v42 = 0xE600000000000000;
    *v40 = 0x70756B636F6CLL;
LABEL_9:
    v40[1] = v42;
    v40[2] = v46;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v39);
    swift_willThrow();
    v36 = 0;
    v28 = v59;
    v37 = v60;
    v33 = v61;
    v32 = v54;
    goto LABEL_10;
  }

  if (!v27)
  {
    v39 = sub_1E1AF5A7C();
    sub_1E162FE64(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v41 = v40;
    *v40 = 0x6F4C746E65726170;
    v42 = 0xEC00000070756B63;
    goto LABEL_9;
  }

LABEL_4:
  v28 = v59;
  sub_1E1AF381C();
  v29 = sub_1E1AF37CC();
  v31 = v30;
  v32 = v54;
  v57(v17, v54);
  v25[4] = v29;
  v25[5] = v31;
  sub_1E1AF381C();
  v33 = v61;
  v53 = v26;
  v26(v48, v60, v61);
  v34 = v49;
  v35 = v50;
  sub_1E1AF3BAC();
  if (!v35)
  {
    (*(v44 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics, v34, v45);
    type metadata accessor for PageRenderMetricsEvent();
    sub_1E1AF381C();
    v38 = v60;
    v53(v56, v60, v33);
    sub_1E162FE64(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    (*(v55 + 8))(v38, v33);
    v57(v28, v32);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = v62;
    return v25;
  }

  v36 = 1;
  v37 = v60;
LABEL_10:
  (*(v55 + 8))(v37, v33);
  v57(v28, v32);

  if (v36)
  {
  }

  type metadata accessor for InAppPurchaseInstallPage();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for InAppPurchaseInstallPage()
{
  result = qword_1EE1E1CE0;
  if (!qword_1EE1E1CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E162FE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InAppPurchaseInstallPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InAppPurchaseInstallPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E162FFF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InAppPurchaseInstallPage();
  v7 = swift_allocObject();
  result = InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1630078@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E16300FC()
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

uint64_t InlineTodayCards.__allocating_init(id:cards:impressionMetrics:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1E1630EB8(a1, a2, a3);

  return v6;
}

uint64_t InlineTodayCards.init(id:cards:impressionMetrics:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_1E1630EB8(a1, a2, a3);

  return v3;
}

uint64_t InlineTodayCards.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v87 = a2;
  v68 = sub_1E1AEFEAC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v66 - v5;
  v6 = sub_1E1AF5A6C();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v66 - v9;
  v10 = sub_1E1AF39DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  v85 = v18;
  v86 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v70 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v81 = v11;
  v29 = *(v11 + 16);
  v30 = v17;
  v31 = v87;
  v29(v30, v87, v10);
  v80 = v28;
  v32 = v83;
  sub_1E1AF464C();
  v79 = v10;
  v71 = v29;
  v29(v91, v31, v10);
  v33 = v77;
  v82 = a1;
  sub_1E1AF381C();
  v34 = v78;
  sub_1E1AF374C();
  v35 = v86 + 8;
  v36 = *(v86 + 8);
  v37 = v33;
  v38 = v84;
  v39 = v85;
  v36(v37, v85);
  if ((*(v32 + 48))(v34, 1, v38) == 1)
  {
    sub_1E1308058(v34, &qword_1ECEB1F90);
    v40 = sub_1E1AF5A7C();
    sub_1E163123C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v41 = 0x7364726163;
    v41[1] = 0xE500000000000000;
    v41[2] = v74;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    v42 = *(v81 + 8);
    v43 = v79;
    v42(v87, v79);
    v36(v82, v39);
    v42(v91, v43);
LABEL_5:
    sub_1E1308058(v80, &unk_1ECEB1770);
    return v38;
  }

  v77 = v36;
  v86 = v35;
  v44 = v76;
  (*(v32 + 32))(v76, v34, v38);
  (*(v32 + 16))(v73, v44, v38);
  v45 = v91;
  v46 = v79;
  v71(v72, v91, v79);
  type metadata accessor for TodayCard();
  v47 = v38;
  sub_1E163123C(&qword_1EE1E3F58, type metadata accessor for TodayCard);
  v48 = v75;
  v49 = sub_1E1AF62FC();
  v38 = v45;
  v50 = v46;
  if (v48)
  {
    v51 = *(v81 + 8);
    v51(v87, v50);
    (v77)(v82, v85);
    (*(v32 + 8))(v44, v47);
    v51(v45, v50);
    goto LABEL_5;
  }

  v78 = v49;
  v53 = v69;
  sub_1E1AF381C();
  v54 = sub_1E1AF37CC();
  v56 = v77;
  v57 = v46;
  if (v55)
  {
    v88 = v54;
    v89 = v55;
  }

  else
  {
    v58 = v66;
    sub_1E1AEFE9C();
    v59 = sub_1E1AEFE7C();
    v61 = v60;
    (*(v67 + 8))(v58, v68);
    v88 = v59;
    v89 = v61;
  }

  sub_1E1AF6F6C();
  v62 = v85;
  v56(v53, v85);
  v63 = v80;
  v64 = v70;
  sub_1E134FD1C(v80, v70, &unk_1ECEB1770);
  type metadata accessor for InlineTodayCards();
  swift_allocObject();
  v38 = sub_1E1630EB8(v90, v78, v64);

  v65 = *(v81 + 8);
  v65(v87, v57);
  v56(v82, v62);
  (*(v83 + 8))(v76, v84);
  v65(v91, v57);
  sub_1E1308058(v63, &unk_1ECEB1770);
  return v38;
}

uint64_t sub_1E1630C18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      goto LABEL_3;
    }

LABEL_15:
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
    goto LABEL_15;
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
  v6 = *(v5 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_clickAction);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 32) = type metadata accessor for TodayCard();
    *(a2 + 8) = v5;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t InlineTodayCards.deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16InlineTodayCards_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t InlineTodayCards.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16InlineTodayCards_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1630E2C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InlineTodayCards.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1630EB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v30, &unk_1ECEB5670);
  if (*(&v31 + 1))
  {
    v33 = v30;
    v34 = v31;
    v35 = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v28 = v12;
    v29 = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  v15 = v34;
  *(v4 + 24) = v33;
  *(v4 + 40) = v15;
  *(v4 + 56) = v35;
  sub_1E134FD1C(a3, v4 + OBJC_IVAR____TtC11AppStoreKit16InlineTodayCards_impressionMetrics, &unk_1ECEB1770);
  *&v33 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_22:
    v16 = sub_1E1AF71CC();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_6:
      v25 = a3;
      v26 = a1;
      v27 = v4;
      v17 = 0;
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E68FFD80](v17, a2);
          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v23 = v33;
            a1 = v26;
            v4 = v27;
            a3 = v25;
            goto LABEL_24;
          }
        }

        else
        {
          if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v18 = *(a2 + 8 * v17 + 32);

          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_19;
          }
        }

        v19 = *(*(v18 + 64) + 16);
        v20 = v19 > 8;
        v21 = (1 << v19) & 0x183;
        if (v20 || v21 == 0)
        {
        }

        else
        {
          sub_1E1AF70BC();
          a3 = *(v33 + 16);
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        ++v17;
        if (a1 == v16)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_24:
  sub_1E1308058(a3, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v4 + 16) = v23;
  return v4;
}

uint64_t type metadata accessor for InlineTodayCards()
{
  result = qword_1ECEB70E8;
  if (!qword_1ECEB70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E163123C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E163128C()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1E16313FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E1631490;
  *(v0 + 24) = 0;
  qword_1ECEB7138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  qword_1ECEB7140 = sub_1E140CE44();
  qword_1ECEB7118 = 0;
  unk_1ECEB7120 = v0;
  *&result = 5;
  xmmword_1ECEB7100 = xmmword_1E1B20F00;
  qword_1ECEB7110 = 4;
  return result;
}

void sub_1E1631490(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 != sub_1E1AF5DFC() || v7 != v8)
  {
    v10 = sub_1E1AF74AC();

    if (v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

LABEL_8:
  v11 = sub_1E1AF6AFC();

  v12 = 1.0;
  if (v11)
  {
    v12 = 2.0;
  }

  *a2 = v12;
}

uint64_t static MetadataRibbonStarRatingViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECEB0F10 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1E1631608(&xmmword_1ECEB7100, v2);
}

uint64_t MetadataRibbonStarRatingViewLayout.Metrics.withStarSize(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = sub_1E1631608(v2, a1);
  *(a1 + 24) = a2;
  return result;
}

__n128 MetadataRibbonStarRatingViewLayout.init(starsView:ratingLabelView:metrics:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);
  v7 = *(a3 + 48);
  *(a4 + 112) = *(a3 + 32);
  *(a4 + 128) = v7;
  *(a4 + 144) = *(a3 + 64);
  result = *(a3 + 16);
  *(a4 + 80) = *a3;
  *(a4 + 96) = result;
  return result;
}

double MetadataRibbonStarRatingViewLayout.measurements(fitting:in:)()
{
  v1 = sub_1E1AF745C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF11CC();
  v6 = v5;
  sub_1E1631608((v0 + 10), v12);
  __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  sub_1E1AF11CC();
  return v6 + v8 + v9;
}

uint64_t MetadataRibbonStarRatingViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v23 = a2;
  v9 = sub_1E1AF745C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  v14 = v13;
  *&v22[2] = v13;
  v22[3] = v15;
  sub_1E1631608((v4 + 10), v25);
  __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF11CC();
  v24 = v18;
  v19 = a1;
  v27.origin.x = a1;
  v20 = v23;
  v27.origin.y = v23;
  v27.size.width = a3;
  v27.size.height = a4;
  v22[0] = CGRectGetMinX(v27);
  v28.origin.x = v19;
  v28.origin.y = v20;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMidY(v28);
  v29.origin.x = v19;
  v29.origin.y = v20;
  v29.size.width = a3;
  v29.size.height = a4;
  *&v22[1] = v14 + v17 + CGRectGetMinX(v29);
  v30.origin.x = v19;
  v30.origin.y = v20;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMidY(v30);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

__n128 MetadataRibbonStarRatingViewLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1E1631BEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1E1631C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1631C60(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t MSODiffablePagePresenter.__allocating_init(objectGraph:personalizationProvider:pageUrl:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  swift_allocObject();
  v8 = sub_1E1632718(a1, a2, a3, a4);

  return v8;
}

uint64_t MSODiffablePagePresenter.init(objectGraph:personalizationProvider:pageUrl:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = sub_1E1632718(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1E1631D84(uint64_t a1)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v71 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v66 - v6, &unk_1ECEB4B60);
  swift_beginAccess();
  v8 = v1[3];
  swift_beginAccess();
  v9 = v1[4];
  v10 = *(v1 + qword_1ECEB7158);
  v11 = *(v1 + qword_1ECEB7158 + 8);
  v12 = *(v1 + qword_1ECEB7158 + 16);
  v13 = *(v1 + qword_1ECEB7158 + 24);
  v14 = *(v1 + qword_1ECEB7160);
  type metadata accessor for MSODiffablePageContentPresenter();
  v15 = swift_allocObject();
  v16 = (v15 + qword_1ECEB9560);
  *v16 = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  *(v15 + qword_1ECEB9568) = v14;
  v70 = v7;
  sub_1E134FD1C(v7, v4, &unk_1ECEB4B60);
  *(v15 + qword_1EE1E9D48) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v18 = qword_1EE2166A0;
  v68 = v9;
  swift_retain_n();
  v69 = v8;
  swift_retain_n();

  sub_1E13BBA90(v10, v11);

  *(v15 + v18) = sub_1E159D6F0(v17);
  v19 = (v15 + qword_1EE1E9E00);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v15 + qword_1EE1E9EA0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_1EE1E9E08);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_1EE1E9DF0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_1EE1E9E98);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_1EE216698);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v15 + qword_1EE2166D0) = 0;
  *(v15 + qword_1EE1E9D50) = 0;
  *(v15 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v15 + qword_1EE2166C8) = 0;
  v25 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33F0);
  swift_allocObject();
  *(v15 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v15 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3400);
  swift_allocObject();
  *(v15 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE2166B0;
  swift_allocObject();
  *(v15 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v15 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v15 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE1E9DD8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v33 = *(*(v32 - 8) + 56);
  v33(v15 + v31, 1, 1, v32);
  v33(v15 + qword_1EE1E9DE0, 1, 1, v32);
  *(v15 + 16) = v71;
  sub_1E13E23F8(v66, v15 + qword_1EE216678);
  v34 = *v19;
  *v19 = 0;
  v19[1] = 0;
  sub_1E1300EA8(v34);
  v35 = *v21;
  *v21 = 0;
  v21[1] = 0;
  v36 = v67;
  sub_1E1300EA8(v35);
  if (v36)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v38 = sub_1E1445E6C;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  v39 = *v20;
  *v20 = v38;
  v20[1] = v37;

  sub_1E1300EA8(v39);
  v40 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v40);
  v41 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_1E1300EA8(v41);
  v42 = v68;
  *(v15 + qword_1EE1E9E90) = v69;
  *(v15 + qword_1EE216690) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v36;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1E1632FF4;
  *(v45 + 24) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1E13E2498;
  *(v46 + 24) = v45;
  v47 = (v15 + qword_1EE1E9E00);
  v48 = *(v15 + qword_1EE1E9E00);
  *v47 = sub_1E13E24A0;
  v47[1] = v46;

  sub_1E1300EA8(v48);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1E1632FEC;
  *(v49 + 24) = v43;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E13E24B8;
  *(v50 + 24) = v49;
  v51 = (v15 + qword_1EE1E9EA0);
  v52 = *(v15 + qword_1EE1E9EA0);
  *v51 = sub_1E13E24C0;
  v51[1] = v50;

  sub_1E1300EA8(v52);
  v53 = (v15 + qword_1EE1E9E08);
  v54 = *(v15 + qword_1EE1E9E08);
  v55 = *(v15 + qword_1EE1E9E08 + 8);
  if (v54)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v55;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1E13E24A8;
    *(v57 + 24) = v56;
    v58 = sub_1E13E24B0;
  }

  else
  {
    v58 = 0;
    v57 = *(v15 + qword_1EE1E9E08 + 8);
  }

  *v53 = v58;
  v53[1] = v57;
  sub_1E1300E34(v54);
  sub_1E1300EA8(v54);
  v59 = (v15 + qword_1EE1E9E98);
  v60 = *(v15 + qword_1EE1E9E98);
  v61 = *(v15 + qword_1EE1E9E98 + 8);
  if (v60)
  {
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E13E2498;
    *(v63 + 24) = v62;
    v64 = sub_1E13E24A0;
  }

  else
  {
    v64 = 0;
    v63 = *(v15 + qword_1EE1E9E98 + 8);
  }

  *v59 = v64;
  v59[1] = v63;
  sub_1E1300E34(v60);
  sub_1E1300EA8(v60);

  sub_1E1308058(v70, &unk_1ECEB4B60);
  return v15;
}

uint64_t sub_1E16325C4()
{
  sub_1E13BBAE0(*(v0 + qword_1ECEB7158), *(v0 + qword_1ECEB7158 + 8));
}

uint64_t MSODiffablePagePresenter.deinit()
{
  v0 = sub_1E13DA93C();
  sub_1E13BBAE0(*(v0 + qword_1ECEB7158), *(v0 + qword_1ECEB7158 + 8));

  return v0;
}

uint64_t MSODiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_1E13DA93C();
  v1 = *(v0 + qword_1ECEB7158);
  v2 = *(v0 + qword_1ECEB7158 + 8);

  sub_1E13BBAE0(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1632718(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a1;
  v44[1] = a2;
  v9 = sub_1E1AF68DC();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v44 - v14;
  v48 = v44 - v14;
  v16 = (v4 + qword_1ECEB7158);
  v17 = a4[1];
  *v16 = *a4;
  v16[1] = v17;
  *(v4 + qword_1ECEB7160) = a2;
  v18 = sub_1E1AEFCCC();
  v49 = v18;
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15, a3, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  *(v4 + qword_1EE2169B8) = 0;
  *(v4 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1EE1ED400) = 0;
  v20 = *(*v4 + 640);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E8);
  v22 = *(*(v21 - 8) + 56);
  v22(v4 + v20, 1, 1, v21);
  v23 = *(*v4 + 648);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v24 - 8) + 56))(v4 + v23, 1, 1, v24);
  v25 = *(*v4 + 656);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33E0);
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  v22(v5 + *(*v5 + 664), 1, 1, v21);
  v27 = *(*v4 + 672);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v28 - 8) + 56))(v4 + v27, 1, 1, v28);
  v29 = *(*v4 + 680);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v30 - 8) + 56))(v4 + v29, 1, 1, v30);
  v31 = *(*v4 + 688);
  sub_1E1361A80();

  sub_1E1AF322C();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1429210();
  sub_1E1AF6EEC();
  (*(v46 + 104))(v45, *MEMORY[0x1E69E8090], v47);
  *(v4 + v31) = sub_1E1AF692C();
  sub_1E13C6184(v5 + *(*v5 + 696));
  v32 = (v5 + *(*v5 + 704));
  *v32 = 0u;
  v32[1] = 0u;
  *(v32 + 25) = 0u;
  v33 = *(*v4 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v4 + v33) = sub_1E1AF5BEC();
  v34 = *(*v4 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v4 + v34) = sub_1E1AF5BEC();
  v35 = *(*v4 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v4 + v35) = sub_1E1AF5BEC();
  *(v4 + *(*v4 + 736)) = 0;
  v36 = (v5 + *(*v5 + 752));
  *v36 = 0;
  v36[1] = 0;
  v37 = v48;
  sub_1E134FD1C(v48, v4 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v53, v5 + *(*v5 + 744), &qword_1ECEB24F8);
  v38 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v4 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v39);

  v41 = sub_1E13C5248(v40, 0, 0, 0);
  v42 = *(*v41 + 1112);

  *(v41 + qword_1EE2169B8) = v42(0);

  sub_1E13C8D3C(0);

  (*(v19 + 8))(v50, v49);
  sub_1E1308058(v53, &qword_1ECEB24F8);
  sub_1E1308058(v37, &unk_1ECEB4B60);
  return v41;
}

uint64_t type metadata accessor for MSODiffablePagePresenter()
{
  result = qword_1ECEB7168;
  if (!qword_1ECEB7168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E163300C(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_1E1AF39DC();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v72 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = &v72 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v72 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v72 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - v24;
  v26 = sub_1E1AF40DC();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v73 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v72 - v33;
  v83 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v80 = v13;
  v36 = *(v13 + 8);
  v35 = v13 + 8;
  v87 = v12;
  v36(v25, v12);
  v74 = *(v27 + 48);
  v37 = v74(v11, 1, v26);
  v92 = v36;
  if (v37 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2B28);
    v38 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v27 + 32))(v34, v11, v26);
    (*(v27 + 16))(v32, v34, v26);
    (*(v84 + 16))(v72, v86, v85);
    type metadata accessor for Shelf();
    sub_1E1634F84(&qword_1EE1E5488, type metadata accessor for Shelf);
    v39 = sub_1E1AF5C9C();
    v38 = sub_1E14FB44C(v39);

    (*(v27 + 8))(v34, v26);
  }

  *(v89 + qword_1EE217318) = v38;
  v40 = v75;
  v41 = v83;
  sub_1E1AF381C();
  v42 = v76;
  sub_1E1AF368C();
  v43 = v40;
  v44 = v35;
  v92(v43, v87);
  if (v74(v42, 1, v26) == 1)
  {
    sub_1E1308058(v42, &qword_1ECEB2B28);
    v45 = sub_1E159FBD8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v46 = v73;
    (*(v27 + 32))(v73, v42, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
    sub_1E1634F30();
    v47 = v88;
    v45 = sub_1E1AF40AC();
    v88 = v47;
    (*(v27 + 8))(v46, v26);
  }

  v48 = v86;
  v49 = v84;
  *(v89 + qword_1EE217310) = v45;
  v50 = v77;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v54 = v87;
  v92(v50, v87);
  if (!v53 || (v55._countAndFlagsBits = v51, v55._object = v53, ProductShelfOrderingId.init(rawValue:)(v55), v56 = v90, v90 == 12))
  {
    swift_beginAccess();
    v56 = byte_1ECEB71A8;
  }

  v57 = v89;
  *(v89 + *(*v89 + 184)) = v56;
  v58 = v78;
  sub_1E1AF381C();
  v59 = sub_1E1AF370C();
  v60 = v58;
  v61 = v92;
  v92(v60, v54);
  *(v57 + *(*v57 + 200)) = v59 & 1;
  v62 = v79;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v86 = v44;
  v61(v62, v54);
  v63 = (v57 + *(*v57 + 192));
  v64 = v91;
  *v63 = v90;
  v63[1] = v64;
  sub_1E1AF381C();
  *(v57 + *(*v57 + 208)) = _sSo26ASKPagePresentationOptionsV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v62);
  v65 = v81;
  (*(v80 + 16))(v81, v41, v54);
  v66 = v49;
  v67 = *(v49 + 16);
  v68 = v82;
  v69 = v85;
  v67(v82, v48, v85);
  v70 = BasePage.init(deserializing:using:)(v65, v68);
  (*(v66 + 8))(v48, v69);
  v61(v41, v54);
  return v70;
}

uint64_t sub_1E16338F8(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v94 = sub_1E1AF39DC();
  v87 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  v13 = sub_1E1AF380C();
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = sub_1E1AF40DC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v76 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v73 - v33;
  v85 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v35 = v27;
  v36 = *(v89 + 8);
  v90 = v13;
  v37 = v13;
  v38 = v36;
  v88 = v89 + 8;
  v36(v25, v37);
  v39 = *(v27 + 48);
  v40 = v39(v12, 1, v26);
  v77 = v35;
  if (v40 == 1)
  {
    sub_1E1308058(v12, &qword_1ECEB2B28);
    v41 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v35 + 32))(v34, v12, v26);
    (*(v35 + 16))(v31, v34, v26);
    v42 = *(v87 + 16);
    v74 = v39;
    v42(v75, v86, v94);
    type metadata accessor for Shelf();
    v43 = v35;
    sub_1E1634F84(&qword_1EE1E5488, type metadata accessor for Shelf);
    v39 = v74;
    v44 = sub_1E1AF5C9C();
    v41 = sub_1E14FB44C(v44);

    (*(v43 + 8))(v34, v26);
  }

  *(v3 + qword_1EE217318) = v41;
  v45 = v78;
  v46 = v85;
  sub_1E1AF381C();
  v47 = v79;
  sub_1E1AF368C();
  v48 = v45;
  v49 = v38;
  v38(v48, v90);
  if (v39(v47, 1, v26) == 1)
  {
    sub_1E1308058(v47, &qword_1ECEB2B28);
    v50 = sub_1E159FCF4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v51 = v76;
    v52 = v77;
    (*(v77 + 32))(v76, v47, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
    sub_1E1634DC4();
    v53 = v91;
    v50 = sub_1E1AF40AC();
    v91 = v53;
    (*(v52 + 8))(v51, v26);
  }

  v54 = v87;
  *(v3 + qword_1EE217310) = v50;
  v55 = v80;
  sub_1E1AF381C();
  v56 = sub_1E1AF37CC();
  v58 = v57;
  v59 = v90;
  v49(v55, v90);
  v60 = 0x4F746C7561666564;
  if (v58)
  {
    v60 = v56;
  }

  v61 = 0xEF676E6972656472;
  if (v58)
  {
    v61 = v58;
  }

  v62 = (v3 + *(*v3 + 184));
  *v62 = v60;
  v62[1] = v61;
  v63 = v81;
  sub_1E1AF381C();
  v64 = sub_1E1AF370C();
  v49(v63, v59);
  *(v3 + *(*v3 + 200)) = v64 & 1;
  v65 = v82;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v49(v65, v59);
  v66 = (v3 + *(*v3 + 192));
  v67 = v93;
  *v66 = v92;
  v66[1] = v67;
  sub_1E1AF381C();
  *(v3 + *(*v3 + 208)) = _sSo26ASKPagePresentationOptionsV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v65);
  v68 = v83;
  (*(v89 + 16))(v83, v46, v59);
  v69 = v84;
  v70 = v86;
  (*(v54 + 16))(v84, v86, v94);
  v71 = BasePage.init(deserializing:using:)(v68, v69);
  (*(v54 + 8))(v70, v94);
  v49(v46, v59);
  return v71;
}

AppStoreKit::ProductShelfOrderingId_optional sub_1E16341AC@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  result.value = ProductShelfOrderingId.init(rawValue:)(v9).value;
  if (v16 == 12)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = v16;
    sub_1E1AF374C();
    v11 = sub_1E1AF5A6C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_1E1308058(v8, &qword_1ECEB1F90);
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v13 = sub_1E1AF59FC();
      (*(v12 + 8))(v8, v11);
    }

    v14 = sub_1E14D6BA0(v13);

    a3[1] = v14;
  }

  return result;
}

uint64_t sub_1E1634360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  *a3 = a1;
  a3[1] = a2;

  sub_1E1AF374C();
  v9 = sub_1E1AF5A6C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E1308058(v8, &qword_1ECEB1F90);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = sub_1E1AF59FC();
    (*(v10 + 8))(v8, v9);
  }

  v12 = sub_1E14D6BA0(v11);

  a3[2] = v12;
  return result;
}

uint64_t StringBasedShelfOrderingId.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

AppStoreKit::StringBasedShelfOrderingId_optional __swiftcall StringBasedShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t SearchChartsAndCategoriesPage.title.getter()
{
  v1 = *(v0 + qword_1EE215650);

  return v1;
}

uint64_t *SearchChartsAndCategoriesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = *v3;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v40 - v10;
  v52 = sub_1E1AF380C();
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v45 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  type metadata accessor for PageTabs();
  v49 = a1;
  sub_1E1AF381C();
  v17 = v7 + 16;
  v16 = *(v7 + 16);
  v50 = v6;
  v51 = a2;
  v44 = v16;
  v16(v11, a2, v6);
  sub_1E1634F84(&qword_1EE1E44E0, type metadata accessor for PageTabs);
  sub_1E1AF464C();
  if (v53)
  {
    v43 = v7;
    v41 = v53;
    v18 = v49;
    sub_1E1AF381C();
    v19 = sub_1E1AF37CC();
    v21 = v20;
    v22 = v48;
    v40[1] = v17;
    v23 = v48 + 8;
    v24 = *(v48 + 8);
    v25 = v52;
    v24(v15, v52);
    v26 = (v3 + qword_1EE215650);
    *v26 = v19;
    v26[1] = v21;
    sub_1E1AF381C();
    v27 = sub_1E1AF36EC();
    LOBYTE(v21) = v28;
    v42 = v23;
    v24(v15, v25);
    v29 = v3 + qword_1EE215658;
    *v29 = v27;
    v29[8] = v21 & 1;
    *(v3 + qword_1EE215648) = v41;
    v30 = v45;
    v31 = v18;
    (*(v22 + 16))(v45, v18, v25);
    v32 = v46;
    v34 = v50;
    v33 = v51;
    v44(v46, v51, v50);
    v35 = v47;
    v36 = sub_1E16338F8(v30, v32);
    if (!v35)
    {
      v3 = v36;
    }

    (*(v43 + 8))(v33, v34);
    v24(v31, v52);
  }

  else
  {
    v37 = sub_1E1AF5A7C();
    sub_1E1634F84(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v38 = 0xD000000000000011;
    v38[1] = 0x80000001E1B6B300;
    v38[2] = v43;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v7 + 8))(v51, v50);
    (*(v48 + 8))(v49, v52);
    type metadata accessor for SearchChartsAndCategoriesPage();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesPage()
{
  result = qword_1EE1D6218;
  if (!qword_1EE1D6218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1634BE0()
{
}

uint64_t SearchChartsAndCategoriesPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + *(*v0 + 192), &qword_1ECEB2DF0);

  return v0;
}

uint64_t SearchChartsAndCategoriesPage.__deallocating_deinit()
{
  SearchChartsAndCategoriesPage.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1634D94(uint64_t a1)
{
  *(a1 + 8) = sub_1E1634DC4();
  result = sub_1E1634E18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1634DC4()
{
  result = qword_1EE1D84B8;
  if (!qword_1EE1D84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D84B8);
  }

  return result;
}

unint64_t sub_1E1634E18()
{
  result = qword_1EE1D84A8;
  if (!qword_1EE1D84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D84A8);
  }

  return result;
}

unint64_t sub_1E1634E70()
{
  result = qword_1EE1D84B0;
  if (!qword_1EE1D84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D84B0);
  }

  return result;
}

unint64_t sub_1E1634F30()
{
  result = qword_1EE1EC058;
  if (!qword_1EE1EC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC058);
  }

  return result;
}

uint64_t sub_1E1634F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1634FCC()
{
  v1 = v0;
  v2 = *(sub_1E1638E88(&qword_1ECEB7188, type metadata accessor for ShelfBasedProductPage) + 56);
  type metadata accessor for ShelfBasedProductPage();
  v3 = v2();
  v4 = *(*v1 + 184);
  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    v6 = sub_1E159549C(*(v1 + v4));
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v18 = v5;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    do
    {
      v13 = v12 + 40 * v11;
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E134E724(v13, v17);
        if (*(off_1F5C38F58[0]() + 16))
        {
          sub_1E135FCF4(v17);
          if (v15)
          {
            break;
          }
        }

        ++v14;

        result = sub_1E134B88C(v17);
        v13 += 40;
        if (v10 == v14)
        {
          goto LABEL_16;
        }
      }

      v16 = sub_1E134B88C(v17);
      MEMORY[0x1E68FEF20](v16);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v11 = v14 + 1;
      result = sub_1E1AF62AC();
      v5 = v18;
      v12 = v8 + 32;
    }

    while (v10 - 1 != v14);
  }

LABEL_16:

  return v5;
}

uint64_t sub_1E1635254(void (*a1)(void))
{
  v1 = off_1F5C3AD20[0];
  a1(0);
  result = v1();
  v3 = result;
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 32;
    v12 = result + 32;
    do
    {
      v8 = v7 + 40 * v6;
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E134E724(v8, v13);
        if (*(off_1F5C3AD28[0]() + 16))
        {
          sub_1E135FCF4(v13);
          if (v10)
          {
            break;
          }
        }

        ++v9;

        result = sub_1E134B88C(v13);
        v8 += 40;
        if (v5 == v9)
        {
          goto LABEL_11;
        }
      }

      v11 = sub_1E134B88C(v13);
      MEMORY[0x1E68FEF20](v11);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v6 = v9 + 1;
      result = sub_1E1AF62AC();
      v4 = v14;
      v7 = v12;
    }

    while (v5 - 1 != v9);
  }

LABEL_11:

  return v4;
}

uint64_t sub_1E1635428()
{
  v1 = v0;
  v2 = *(sub_1E1638E88(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage) + 56);
  type metadata accessor for SearchChartsAndCategoriesPage();
  v3 = v2();
  v4 = (v1 + *(*v1 + 184));
  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    v8 = v4;
    v6 = *v4;
    v7 = v8[1];

    v9 = sub_1E15A47D8(v6, v7);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v3 + 56) + 8 * v9);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v22 = v5;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v12 + 32;
    do
    {
      v17 = v16 + 40 * v15;
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E134E724(v17, v21);
        if (*(off_1F5C38F58[0]() + 16))
        {
          sub_1E135FCF4(v21);
          if (v19)
          {
            break;
          }
        }

        ++v18;

        result = sub_1E134B88C(v21);
        v17 += 40;
        if (v14 == v18)
        {
          goto LABEL_16;
        }
      }

      v20 = sub_1E134B88C(v21);
      MEMORY[0x1E68FEF20](v20);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v15 = v18 + 1;
      result = sub_1E1AF62AC();
      v5 = v22;
      v16 = v12 + 32;
    }

    while (v14 - 1 != v18);
  }

LABEL_16:

  return v5;
}

uint64_t ReviewsPage.SortOption.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReviewsPage.SortOption.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReviewsPage.SortOption.selectedActionTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ReviewsPage.SortOption.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ReviewsPage.SortOption.__allocating_init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = a5;
  *(v14 + 7) = a6;
  v15 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
  v16 = sub_1E1AEFCCC();
  (*(*(v16 - 8) + 32))(&v14[v15], a7, v16);
  return v14;
}

char *ReviewsPage.SortOption.init(id:title:selectedActionTitle:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  *(v7 + 6) = a5;
  *(v7 + 7) = a6;
  v9 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
  v10 = sub_1E1AEFCCC();
  (*(*(v10 - 8) + 32))(&v7[v9], a7, v10);
  return v7;
}

uint64_t ReviewsPage.SortOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  return v4;
}

char *ReviewsPage.SortOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v58 = *v2;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v47 - v5;
  v6 = sub_1E1AEFCCC();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = 0xE200000000000000;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v19, v8);
  if (v22)
  {
    v57 = v22;
    v24 = 0x656C746974;
    sub_1E1AF381C();
    v25 = sub_1E1AF37CC();
    v27 = v26;
    v23(v16, v8);
    v28 = a1;
    if (v27)
    {
      v49 = v25;
      v50 = v27;
      v24 = 0xD000000000000013;
      v20 = 0x80000001E1B6B370;
      sub_1E1AF381C();
      v48 = sub_1E1AF37CC();
      v30 = v29;
      v23(v13, v8);
      v31 = v60;
      if (v30)
      {
        v47 = v30;
        v32 = v53;
        sub_1E1AF381C();
        v33 = v56;
        sub_1E1AF36FC();
        v23(v32, v8);
        v34 = v8;
        v36 = v54;
        v35 = v55;
        if ((*(v54 + 48))(v33, 1, v55) != 1)
        {
          v41 = sub_1E1AF39DC();
          (*(*(v41 - 8) + 8))(v59, v41);
          v23(v28, v34);
          v42 = *(v36 + 32);
          v43 = v52;
          v42(v52, v33, v35);
          v44 = v57;
          *(v31 + 2) = v51;
          *(v31 + 3) = v44;
          v45 = v50;
          *(v31 + 4) = v49;
          *(v31 + 5) = v45;
          v46 = v47;
          *(v31 + 6) = v48;
          *(v31 + 7) = v46;
          v42(&v31[OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url], v43, v35);
          return v31;
        }

        sub_1E1308058(v33, &unk_1ECEB4B60);
        v20 = 0xE300000000000000;
        v24 = 7107189;
        v8 = v34;
      }

      else
      {
      }
    }

    else
    {

      v20 = 0xE500000000000000;
      v31 = v60;
    }
  }

  else
  {
    v28 = a1;
    v31 = v60;
    v24 = 25705;
  }

  v37 = sub_1E1AF5A7C();
  sub_1E1638E88(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
  swift_allocError();
  *v38 = v24;
  v38[1] = v20;
  v38[2] = v58;
  (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
  swift_willThrow();
  v39 = sub_1E1AF39DC();
  (*(*(v39 - 8) + 8))(v59, v39);
  v23(v28, v8);
  type metadata accessor for ReviewsPage.SortOption(0);
  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t ReviewsPage.SortOption.deinit()
{

  v1 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ReviewsPage.SortOption.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_1E163609C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ReviewsPage.SortOption(0);
  v7 = swift_allocObject();
  result = ReviewsPage.SortOption.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ReviewsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v145 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v153 = &v136 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v154 = &v136 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v136 - v10;
  v159 = sub_1E1AF3C3C();
  v158 = *(v159 - 8);
  v11 = MEMORY[0x1EEE9AC00](v159);
  v155 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v166 = &v136 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v136 - v17;
  v18 = sub_1E1AF39DC();
  v19 = *(v18 - 8);
  v174 = v18;
  v175 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v162 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v165 = &v136 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v136 - v24;
  v26 = sub_1E1AF5A6C();
  v171 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v161 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v136 - v29;
  v30 = sub_1E1AF380C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v152 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v151 = &v136 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v149 = &v136 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v148 = &v136 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v147 = &v136 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v146 = &v136 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v160 = &v136 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v163 = &v136 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v136 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v136 - v51;
  v53 = a1;
  sub_1E1AF381C();
  v150 = sub_1E1AF37CC();
  v55 = v54;
  v58 = *(v31 + 8);
  v57 = v31 + 8;
  v56 = v58;
  v58(v52, v30);
  v168 = v55;
  if (v55)
  {
    v59 = v172;
    v170 = v53;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v60 = v50;
    v61 = v56;
    v56(v60, v30);
    v62 = v171;
    if ((*(v171 + 48))(v25, 1, v26) == 1)
    {

      sub_1E1308058(v25, &qword_1ECEB1F90);
      v63 = sub_1E1AF5A7C();
      sub_1E1638E88(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v64 = 0x7365766C656873;
      v64[1] = 0xE700000000000000;
      v64[2] = v59;
      (*(*(v63 - 8) + 104))(v64, *MEMORY[0x1E69AB690], v63);
      swift_willThrow();
      v65 = v175 + 8;
      (*(v175 + 8))(v173, v174);
      v61(v170, v30);
    }

    else
    {
      v68 = v26;
      v142 = v61;
      v143 = v57;
      v144 = v30;
      v69 = v169;
      (*(v62 + 32))(v169, v25, v26);
      (*(v62 + 16))(v161, v69, v26);
      v70 = v174;
      v71 = *(v175 + 16);
      v72 = v165;
      v73 = v173;
      v71(v165, v173, v174);
      type metadata accessor for Shelf();
      sub_1E1638E88(&qword_1EE1E5488, type metadata accessor for Shelf);
      v161 = sub_1E1AF631C();
      v65 = 0xEB00000000736369;
      v172 = v68;
      sub_1E1AF381C();
      v71(v72, v73, v70);
      type metadata accessor for ReviewsPage.SortOption(0);
      sub_1E1638E88(qword_1EE1F69C0, type metadata accessor for ReviewsPage.SortOption);
      v141 = sub_1E1AF630C();
      sub_1E1AF381C();
      v140 = v71;
      v71(v162, v73, v70);
      v74 = v164;
      sub_1E1AF3BAC();
      if (v74)
      {

        (*(v175 + 8))(v73, v70);
        v142(v170, v144);
        (*(v171 + 8))(v169, v172);
      }

      else
      {
        v139 = 0;
        type metadata accessor for PageRenderMetricsEvent();
        sub_1E1AF381C();
        v75 = v140;
        v140(v72, v73, v70);
        sub_1E1638E88(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
        sub_1E1AF464C();
        v160 = v177;
        type metadata accessor for Ratings();
        sub_1E1AF381C();
        v75(v72, v73, v70);
        v164 = &protocol conformance descriptor for ProductRatingsAndReviewsComponent;
        sub_1E1638E88(&qword_1EE1E4A00, type metadata accessor for Ratings);
        sub_1E1AF464C();
        v162 = v177;
        type metadata accessor for ProductReviewActions();
        sub_1E1AF381C();
        v75(v72, v73, v70);
        sub_1E1638E88(&qword_1ECEB7178, type metadata accessor for ProductReviewActions);
        sub_1E1AF464C();
        v164 = v177;
        type metadata accessor for FlowAction();
        sub_1E1AF381C();
        v75(v72, v73, v70);
        sub_1E1638E88(&qword_1EE1E0CA0, type metadata accessor for FlowAction);
        sub_1E1AF464C();
        v165 = v177;
        v76 = v146;
        sub_1E1AF381C();
        v163 = sub_1E1AF37CC();
        v140 = v77;
        v78 = v144;
        v79 = v142;
        v142(v76, v144);
        v80 = v147;
        sub_1E1AF381C();
        v146 = sub_1E1AF37CC();
        v138 = v81;
        v79(v80, v78);
        v82 = v148;
        sub_1E1AF381C();
        v83 = sub_1E1AF37CC();
        v147 = v84;
        v79(v82, v78);
        v85 = v149;
        sub_1E1AF381C();
        v148 = sub_1E1AF37CC();
        v137 = v86;
        v79(v85, v78);
        v87 = v151;
        sub_1E1AF381C();
        v88 = sub_1E1AF370C();
        v79(v87, v78);
        v89 = v152;
        sub_1E1AF381C();
        sub_1E1AF37EC();
        v79(v89, v78);
        v90 = *(v158 + 16);
        v91 = v157;
        v92 = v159;
        v90(v157, v167, v159);
        v152 = v90;
        type metadata accessor for ReviewsPage(0);
        v65 = swift_allocObject();
        v93 = (v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
        v94 = v168;
        *v93 = v150;
        v93[1] = v94;
        v95 = (v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
        v96 = v138;
        *v95 = v146;
        v95[1] = v96;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v141;
        v97 = (v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
        v98 = v147;
        *v97 = v83;
        v97[1] = v98;
        v99 = (v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
        v100 = v137;
        *v99 = v148;
        v99[1] = v100;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = v162;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v164;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v88 & 1;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction) = v165;
        sub_1E134FD1C(&v177, v176, &qword_1ECEB2DF0);
        v90(v166, v91, v92);
        v101 = v156;
        (*(v175 + 56))(v156, 1, 1, v174);
        v102 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

        v103 = sub_1E175EC2C(v161);
        v105 = v104;

        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v103;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v105;
        v106 = (v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
        v107 = v140;
        *v106 = v163;
        v106[1] = v107;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
        sub_1E134FD1C(v176, v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
        swift_beginAccess();
        *(v65 + v102) = 0;
        v108 = v101;
        *(v65 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
        v109 = v155;
        v110 = v152;
        (v152)(v155, v166, v92);
        v111 = v154;
        sub_1E134FD1C(v108, v154, &qword_1ECEB3B28);
        *(v65 + 16) = 0;
        v110(v65 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v109, v92);
        *(v65 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v160;
        v112 = v153;
        sub_1E134FD1C(v111, v153, &qword_1ECEB3B28);
        v113 = v174;
        v114 = v175;
        v168 = *(v175 + 48);
        if (v168(v112, 1, v174) == 1)
        {

          (*(v114 + 8))(v173, v113);
          v142(v170, v144);
          sub_1E1308058(v111, &qword_1ECEB3B28);
          v115 = v108;
          v116 = *(v158 + 8);
          v117 = v109;
          v118 = v159;
          v116(v117, v159);
          sub_1E1308058(v115, &qword_1ECEB3B28);
          v116(v166, v118);
          sub_1E1308058(v176, &qword_1ECEB2DF0);
          v116(v157, v118);
          sub_1E1308058(&v177, &qword_1ECEB2DF0);
          v116(v167, v118);
          (*(v171 + 8))(v169, v172);
          v119 = v112;
        }

        else
        {
          v120 = v113;
          v121 = qword_1EE1E3BC8;

          if (v121 != -1)
          {
            swift_once();
          }

          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
          __swift_project_value_buffer(v122, qword_1EE1E3BD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
          sub_1E1AF39EC();
          v123 = v178;
          v124 = v158;
          v125 = v154;
          if (v178)
          {
          }

          v127 = v114 + 8;
          v126 = *(v114 + 8);
          v126(v153, v120);
          if (!v123)
          {

            v126(v173, v120);
            v142(v170, v144);
            sub_1E1308058(v125, &qword_1ECEB3B28);
            v131 = *(v124 + 8);
            v132 = v159;
            v131(v155, v159);
            sub_1E1308058(v156, &qword_1ECEB3B28);
            v131(v166, v132);
            sub_1E1308058(v176, &qword_1ECEB2DF0);
            v131(v157, v132);
            sub_1E1308058(&v177, &qword_1ECEB2DF0);
            v131(v167, v132);
            (*(v171 + 8))(v169, v172);
            return v65;
          }

          v128 = v145;
          sub_1E134FD1C(v125, v145, &qword_1ECEB3B28);
          if (v168(v128, 1, v120) != 1)
          {
            sub_1E15F0974();

            v175 = v127;
            v126(v173, v120);
            v142(v170, v144);
            sub_1E1308058(v125, &qword_1ECEB3B28);
            v133 = *(v124 + 8);
            v134 = v159;
            v133(v155, v159);
            sub_1E1308058(v156, &qword_1ECEB3B28);
            v133(v166, v134);
            sub_1E1308058(v176, &qword_1ECEB2DF0);
            v133(v157, v134);
            sub_1E1308058(&v177, &qword_1ECEB2DF0);
            v133(v167, v134);
            (*(v171 + 8))(v169, v172);
            v126(v145, v120);
            return v65;
          }

          v126(v173, v120);
          v142(v170, v144);
          sub_1E1308058(v125, &qword_1ECEB3B28);
          v129 = *(v124 + 8);
          v130 = v159;
          v129(v155, v159);
          sub_1E1308058(v156, &qword_1ECEB3B28);
          v129(v166, v130);
          sub_1E1308058(v176, &qword_1ECEB2DF0);
          v129(v157, v130);
          sub_1E1308058(&v177, &qword_1ECEB2DF0);
          v129(v167, v130);
          (*(v171 + 8))(v169, v172);
          v119 = v128;
        }

        sub_1E1308058(v119, &qword_1ECEB3B28);
      }
    }
  }

  else
  {
    v65 = sub_1E1AF5A7C();
    sub_1E1638E88(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v66 = 0x64496D616461;
    v67 = v172;
    v66[1] = 0xE600000000000000;
    v66[2] = v67;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x1E69AB690], v65);
    swift_willThrow();
    (*(v175 + 8))(v173, v174);
    v56(v53, v30);
  }

  return v65;
}

uint64_t ReviewsPage.__allocating_init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v87 = a8;
  v85 = a7;
  v79 = a6;
  v82 = a4;
  v83 = a5;
  v88 = a3;
  v80 = a2;
  v92 = a19;
  v89 = a18;
  v86 = a15;
  LODWORD(v84) = a14;
  v78 = a11;
  v77 = a10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v75 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v74 - v27;
  v28 = sub_1E1AF3C3C();
  v76 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v90 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - v32;
  v93 = &v74 - v32;
  v34 = swift_allocObject();
  v35 = a1[1];
  v36 = (v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  *v36 = *a1;
  v36[1] = v35;
  v37 = (v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v38 = v83;
  *v37 = v82;
  v37[1] = v38;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v85;
  v39 = (v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v39 = v87;
  v39[1] = a9;
  v40 = (v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v41 = v78;
  *v40 = v77;
  v40[1] = v41;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = a12;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = a13;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v84;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction) = v92;
  v87 = a16;
  sub_1E134FD1C(a16, v96, &qword_1ECEB2DF0);
  v82 = v29;
  v83 = a17;
  v42 = *(v29 + 16);
  v42(v33, a17, v28);
  v43 = sub_1E1AF39DC();
  v44 = *(v43 - 8);
  v45 = v94;
  (*(v44 + 56))(v94, 1, 1, v43);
  v46 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v84 = a12;

  v85 = a13;

  v47 = sub_1E175EC2C(v79);
  v49 = v48;

  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v47;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v49;
  v50 = v90;
  v51 = v91;
  v52 = (v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v53 = v88;
  *v52 = v80;
  v52[1] = v53;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
  sub_1E134FD1C(v96, v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v34 + v46) = 0;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v76;
  v42(v50, v93, v76);
  sub_1E134FD1C(v45, v51, &qword_1ECEB3B28);
  *(v34 + 16) = 0;
  v42((v34 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v50, v54);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v89;
  v55 = v81;
  sub_1E134FD1C(v51, v81, &qword_1ECEB3B28);
  v88 = v44;
  v56 = *(v44 + 48);
  if (v56(v55, 1, v43) == 1)
  {

    v57 = *(v82 + 8);
    v57(v83, v54);
    sub_1E1308058(v87, &qword_1ECEB2DF0);
    sub_1E1308058(v51, &qword_1ECEB3B28);
    v57(v50, v54);
    sub_1E1308058(v94, &qword_1ECEB3B28);
    v57(v93, v54);
    sub_1E1308058(v96, &qword_1ECEB2DF0);
    v58 = v55;
    v59 = &qword_1ECEB3B28;
  }

  else
  {
    v80 = v43;
    v60 = v54;
    v61 = v82;
    v62 = qword_1EE1E3BC8;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v63, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v64 = v95;
    v65 = v75;
    if (v95)
    {
    }

    v66 = *(v88 + 8);
    v67 = v80;
    v88 += 8;
    v81 = v66;
    (v66)(v55, v80);
    v68 = v83;
    if (v64)
    {
      v69 = v91;
      sub_1E134FD1C(v91, v65, &qword_1ECEB3B28);
      if (v56(v65, 1, v67) != 1)
      {
        sub_1E15F0974();

        v73 = *(v61 + 8);
        v73(v68, v60);
        sub_1E1308058(v87, &qword_1ECEB2DF0);
        sub_1E1308058(v69, &qword_1ECEB3B28);
        v73(v90, v60);
        sub_1E1308058(v94, &qword_1ECEB3B28);
        v73(v93, v60);
        sub_1E1308058(v96, &qword_1ECEB2DF0);
        (v81)(v65, v67);
        return v34;
      }

      v70 = *(v61 + 8);
      v70(v68, v60);
      sub_1E1308058(v87, &qword_1ECEB2DF0);
      sub_1E1308058(v69, &qword_1ECEB3B28);
      v70(v90, v60);
      sub_1E1308058(v94, &qword_1ECEB3B28);
      v70(v93, v60);
      sub_1E1308058(v96, &qword_1ECEB2DF0);
      v58 = v65;
      v59 = &qword_1ECEB3B28;
    }

    else
    {

      v71 = *(v61 + 8);
      v71(v68, v60);
      sub_1E1308058(v87, &qword_1ECEB2DF0);
      sub_1E1308058(v91, &qword_1ECEB3B28);
      v71(v90, v60);
      sub_1E1308058(v94, &qword_1ECEB3B28);
      v71(v93, v60);
      v58 = v96;
      v59 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v58, v59);
  return v34;
}