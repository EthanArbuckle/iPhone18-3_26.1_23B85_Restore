void sub_1E13E13BC()
{
  v1 = *(v0 + qword_1EE1D4CD0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_1E137A684;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E1367148;
    v9[3] = &block_descriptor_4;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
    _Block_release(v5);

    v8 = [objc_opt_self() mainRunLoop];
    [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1E13E168C()
{

  sub_1E13DED78(*(v0 + qword_1EE1D4CC8), *(v0 + qword_1EE1D4CC8 + 8), *(v0 + qword_1EE1D4CC8 + 16), *(v0 + qword_1EE1D4CC8 + 24), *(v0 + qword_1EE1D4CC8 + 32), *(v0 + qword_1EE1D4CC8 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t SearchResultsDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DA3CC();

  sub_1E13DED78(*(v0 + qword_1EE1D4CC8), *(v0 + qword_1EE1D4CC8 + 8), *(v0 + qword_1EE1D4CC8 + 16), *(v0 + qword_1EE1D4CC8 + 24), *(v0 + qword_1EE1D4CC8 + 32), *(v0 + qword_1EE1D4CC8 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsDiffablePagePresenter.__deallocating_deinit()
{
  SearchResultsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E13E1A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchResultsDiffablePagePresenter()
{
  result = qword_1EE1D4CA8;
  if (!qword_1EE1D4CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_set_8Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1E13E210C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FCC14(v3);
}

uint64_t sub_1E13E2150(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1E13E21B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FD3E8(v3);
}

uint64_t sub_1E13E2240(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FB498(v3);
}

uint64_t sub_1E13E22D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19F85A0(v3);
}

uint64_t sub_1E13E231C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1E13E2380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 != 1)
  {

    sub_1E13E23E4(a5, a6);
  }
}

uint64_t sub_1E13E23E4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E13E23F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E13E24C8()
{
  result = qword_1EE1E8D08;
  if (!qword_1EE1E8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E8D08);
  }

  return result;
}

uint64_t sub_1E13E2564(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FBC6C(v3);
}

uint64_t sub_1E13E265C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19F9D1C(v3);
}

uint64_t sub_1E13E26F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FACC4(v3);
}

uint64_t sub_1E13E2790(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FA4F0(v3);
}

uint64_t sub_1E13E282C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19F8D74(v3);
}

uint64_t sub_1E13E28A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19F9548(v3);
}

uint64_t sub_1E13E2934(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1E19FC440(v3);
}

uint64_t objectdestroy_56Tm()
{

  sub_1E1360914(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E13E2B30()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t ProductMediaItem.__allocating_init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E13E2E98(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t ProductMediaItem.init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E13E2E98(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t sub_1E13E2E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductMediaItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_1E1AEFEAC();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v43 = v6;
  v12 = *(v6 + 16);
  v12(v8, a2, v5);
  sub_1E13E3840(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v13 = v46[0];
  type metadata accessor for Video();
  sub_1E1AF381C();
  v12(v8, a2, v5);
  sub_1E13E3840(&qword_1EE1E52D0, 255, type metadata accessor for Video);
  sub_1E1AF464C();
  v14 = v46[0];
  v38 = v13;
  if (v13 | v46[0])
  {
    v18 = v41;
    v17 = v42;
    v40 = v5;
    v19 = a2;
    v20 = v39;
    v21 = v47;
    sub_1E1AF381C();
    v22 = sub_1E1AF37CC();
    if (v23)
    {
      v44 = v22;
      v45 = v23;
    }

    else
    {
      v24 = v21;
      v25 = v35;
      sub_1E1AEFE9C();
      v26 = sub_1E1AEFE7C();
      v28 = v27;
      v29 = v25;
      v21 = v24;
      (*(v36 + 8))(v29, v37);
      v44 = v26;
      v45 = v28;
    }

    sub_1E1AF6F6C();
    v30 = *(v18 + 8);
    v31 = v17;
    v30(v20, v17);
    v32 = v40;
    type metadata accessor for ProductMediaItem();
    v15 = swift_allocObject();
    ProductMediaItem.init(id:screenshot:video:)(v46, v38, v14);
    (*(v43 + 8))(v19, v32);
    v30(v21, v31);
  }

  else
  {
    v15 = sub_1E1AF5A7C();
    sub_1E13E3840(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v16 = 0x68736E6565726373;
    v16[1] = 0xEA0000000000746FLL;
    v16[2] = v40;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x1E69AB690], v15);
    swift_willThrow();
    (*(v43 + 8))(a2, v5);
    (*(v41 + 8))(v47, v42);
  }

  return v15;
}

uint64_t ProductMediaItem.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t ProductMediaItem.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E13E350C()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E3570@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductMediaItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E13E359C()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    v2 = *(*v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1E13E3600()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E3670()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit16ProductMediaItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {

      v6 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  v9 = (v7 | v8) == 0;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {

    if (sub_1E1AEFC4C())
    {
      v9 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v7 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), *(v8 + OBJC_IVAR____TtC11AppStoreKit5Video_preview));
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1E13E3840(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String __swiftcall String.removingNQML(configuration:)(AppStoreKit::NqmlConfiguration *configuration)
{
  v1 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v25 = v1;
  v26 = *&configuration->orderedListItemBulletFormat._object;
  v2 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v23 = v2;
  v3 = type metadata accessor for RemovingNQMLStringGenerator();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_didParseEverything] = 1;
  v6 = objc_allocWithZone(ASKNQMLParser);

  sub_1E13E3AC8(&newline, v21);
  v7 = sub_1E1AF5DBC();

  v8 = [v6 initWithString_];

  *&v4[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] = v8;
  v9 = &v4[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
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
  [*(&v13->newline._countAndFlagsBits + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser) setDelegate_];
  v14 = sub_1E13E3C6C();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_1E13E3B24()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB3440);
  __swift_project_value_buffer(v4, qword_1ECEB3440);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E13E3C6C()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v0 + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser) parse];
  v5 = (v0 + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator);
  swift_beginAccess();
  v6 = v5[1];
  v11[1] = *v5;
  v11[2] = v6;

  sub_1E1AEF46C();
  sub_1E13B8AA4();
  v7 = sub_1E1AF6E0C();
  v9 = v8;
  (*(v2 + 8))(v4, v1);

  *v5 = v7;
  v5[1] = v9;

  return v7;
}

id sub_1E13E3FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemovingNQMLStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E13E40A8()
{
  if (qword_1ECEB0D88 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEB3440);
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

  *(v0 + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_didParseEverything) = 0;
  return result;
}

unint64_t sub_1E13E4278(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator);
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

unint64_t sub_1E13E44A4()
{
  result = qword_1EE1D26F0;
  if (!qword_1EE1D26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D26F0);
  }

  return result;
}

uint64_t sub_1E13E44F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static TextMeasurable.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22[3] = a1;
  v14 = sub_1E1AF157C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0.0;
  }

  v22[2] = a6;
  sub_1E13E472C();
  v22[0] = a4;
  v22[1] = a7;

  v18 = [a9 traitCollection];
  MEMORY[0x1E68FF8C0](a3, v18);

  sub_1E1AF156C();
  sub_1E1AF155C();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  return v20;
}

unint64_t sub_1E13E472C()
{
  result = qword_1EE1E32B0;
  if (!qword_1EE1E32B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E32B0);
  }

  return result;
}

double static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v33 = a7;
  v34 = a6;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1E1AF12AC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF157C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  sub_1E13E4A9C(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = a1;
    sub_1E13E4B0C(v13);
    v23 = v22;
    sub_1E1AF153C();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1E13E472C();
    v25 = a1;
    v26 = [a8 traitCollection];
    MEMORY[0x1E68FF8C0](v17, v26);

    sub_1E1AF154C();
    (*(v15 + 8))(v17, v14);
  }

  sub_1E1AF155C();
  v24 = v27;

  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_1E13E4A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13E4B0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnotationItem.TextPair.leadingText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AnnotationItem.TextPair.trailingText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AnnotationItem.TextPair.__allocating_init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *AnnotationItem.TextPair.init(leadingText:trailingText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t AnnotationItem.TextPair.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.TextPair.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AnnotationItem.TextPair.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v43 = a2;
  v6 = *v2;
  v41 = v3;
  v42 = v6;
  v44 = sub_1E1AF380C();
  v7 = *(v44 - 8);
  v8 = MEMORY[0x1EEE9AC00](v44);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  sub_1E1AF374C();
  v16 = sub_1E1AF5A6C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90);
LABEL_5:
    v19 = v44;
LABEL_6:
    v20 = sub_1E1AF5A7C();
    sub_1E13E6188(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v21 = MEMORY[0x1E69E7CC0];
    *v22 = v42;
    v22[1] = v21;
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69AB698], v20);
    swift_willThrow();
    v23 = sub_1E1AF39DC();
    (*(*(v23 - 8) + 8))(v43, v23);
    (*(v7 + 8))(a1, v19);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v40 = a1;
  v18 = sub_1E1AF5A4C();
  (*(v17 + 8))(v15, v16);
  if (*(v18 + 16) < 2uLL)
  {

    a1 = v40;
    goto LABEL_5;
  }

  v25 = *(v7 + 16);
  v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v38 = v25;
  v26 = v44;
  (v25)(v12);
  v27 = sub_1E1AF37CC();
  v28 = v12;
  v19 = v26;
  v30 = v29;
  v39 = *(v7 + 8);
  result = v39(v28, v19);
  if (!v30)
  {
LABEL_12:

    a1 = v40;
    goto LABEL_6;
  }

  v36 = v27;
  if (*(v18 + 16) >= 2uLL)
  {
    v38(v10, v37 + *(v7 + 72), v19);

    v31 = sub_1E1AF37CC();
    v33 = v32;
    v34 = v39;
    v39(v10, v19);
    if (v33)
    {
      v35 = sub_1E1AF39DC();
      (*(*(v35 - 8) + 8))(v43, v35);
      v34(v40, v19);
      v4[2] = v36;
      v4[3] = v30;
      v4[4] = v31;
      v4[5] = v33;
      return v4;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static AnnotationItem.TextPair.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1E1AF74AC(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t AnnotationItem.TextPair.hash(into:)()
{
  sub_1E1AF5F0C();

  return sub_1E1AF5F0C();
}

uint64_t AnnotationItem.TextPair.deinit()
{

  return v0;
}

uint64_t AnnotationItem.TextPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.TextPair.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E529C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E1AF700C();
  *a1 = result;
  return result;
}

uint64_t sub_1E13E52F8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E534C()
{
  sub_1E1AF5F0C();

  return sub_1E1AF5F0C();
}

uint64_t sub_1E13E5390()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E53E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_1E1AF74AC(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t AnnotationItem.heading.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AnnotationItem.text.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AnnotationItem.listText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AnnotationItem.__allocating_init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  sub_1E138853C(a1, &v37);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 80) = v37;
    *(v19 + 96) = v20;
    *(v19 + 112) = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = a8;
  *(v19 + 72) = v14;
  return v19;
}

uint64_t AnnotationItem.init(id:headingArtworkItems:heading:text:listText:textPairs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v42;
  *(v10 + 80) = v41;
  *(v10 + 96) = v28;
  *(v10 + 112) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = a8;
  *(v10 + 72) = v16;
  return v10;
}

uint64_t AnnotationItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnotationItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AnnotationItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_1E1AF39DC();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E1AF380C();
  v11 = *(v56 - 8);
  v12 = MEMORY[0x1EEE9AC00](v56);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v10, v7);
    v51 = v20;
    v52 = v23;
  }

  sub_1E1AF6F6C();
  v24 = *(v11 + 8);
  v24(v16, v56);
  v46 = v24;
  v25 = v54;
  *(v3 + 80) = v53;
  *(v3 + 96) = v25;
  *(v3 + 112) = v55;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v28 = v27;
  v29 = v56;
  (v24)(v14);
  *(v3 + 40) = v26;
  *(v3 + 48) = v28;
  sub_1E1AF381C();
  v45 = *(v48 + 16);
  v45(v47, v50, v49);
  type metadata accessor for Artwork();
  sub_1E13E6188(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  *(v3 + 16) = sub_1E1AF630C();
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v33 = v29;
  v34 = v29;
  v35 = v3;
  v36 = v46;
  v46(v14, v34);
  v35[3] = v30;
  v35[4] = v32;
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v39 = v38;
  v36(v14, v33);
  v35[7] = v37;
  v35[8] = v39;
  sub_1E1AF381C();
  v41 = v49;
  v40 = v50;
  v45(v47, v50, v49);
  type metadata accessor for AnnotationItem.TextPair();
  sub_1E13E6188(qword_1EE1F4480, v42, type metadata accessor for AnnotationItem.TextPair);
  v43 = sub_1E1AF630C();
  (*(v48 + 8))(v40, v41);
  v46(v17, v56);
  v35[9] = v43;
  return v35;
}

uint64_t AnnotationItem.deinit()
{

  sub_1E134B88C(v0 + 80);
  return v0;
}

uint64_t AnnotationItem.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t AnnotationItem.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E5F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  result = a3(a1, a2);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_1E13E5FCC()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E603C()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E13E6188(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E13E61D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF46DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11AppStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3500);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = a1 + qword_1EE215748;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_1E13E653C(v6, v7, v8, v9, v10, v5);

  *(v2 + 16) = v6;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  *(v2 + 48) = v10;
  *(v2 + 56) = v5;
  return v2;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.init(presenter:)(uint64_t a1)
{
  *(v1 + 72) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11AppStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3500);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = a1 + qword_1EE215748;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  sub_1E13E653C(v6, v7, v8, v9, v10, v5);

  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = v10;
  *(v1 + 56) = v5;
  return v1;
}

id sub_1E13E653C(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = result;
  if (a6 == 2 || a6 == 1)
  {

    v8 = v7;
    v7 = a2;
    v10 = a3;
  }

  else
  {
    if (a6)
    {
      return result;
    }

    v10 = a2;
  }

  v9 = v7;

  return v10;
}

void *sub_1E13E6610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v24 = *(a1 + 41);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v20 = *a1;
  v21 = *(a1 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  *(a2 + 16) = *a1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v13 = *(a2 + 56);
  *(a2 + 56) = v7;
  v18 = v4;
  v19 = v3;
  sub_1E13E653C(v20, v3, v4, v5, v6, v7);
  sub_1E13E6F8C(v8, v9, v10, v11, v12, v13);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    v25 = v20;
    v26 = v19;
    v27 = v18;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v17 = *(v15 + 8);
    sub_1E13E653C(v20, v19, v18, v5, v6, v7);
    v17(&v25, v24, v23, v22, v21, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_1E13E6F8C(v25, v26, v27, v28, v29, v30);
  }

  return result;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.reconfigureArcadeHeaderView(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  return swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall ArcadeTitleEffectCollectionElementsObserver.prepareForReuse()()
{
  swift_beginAccess();
  *(v0 + 72) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.deinit()
{
  sub_1E13E6F8C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_1E1337DEC(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_1ECEB3508);
  return v0;
}

uint64_t ArcadeTitleEffectCollectionElementsObserver.__deallocating_deinit()
{
  sub_1E13E6F8C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_1E1337DEC(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription, &qword_1ECEB3508);

  return swift_deallocClassInstance();
}

uint64_t _s11AppStoreKit43ArcadeTitleEffectCollectionElementsObserverC15willDisplayCell_2in14collectionView8asPartOfySo012UICollectionoL0C_AA17ItemLayoutContextVSo0sO0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3508);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3500);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v48 = a1;
  sub_1E13E71B4();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3510);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(&v44, v49);
    v15 = OBJC_IVAR____TtC11AppStoreKit43ArcadeTitleEffectCollectionElementsObserver_arcadeTitleEffectUpdateSubscription;
    swift_beginAccess();
    sub_1E13E7200(v2 + v15, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1E1308058(v9, &qword_1ECEB3508);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v17 = v50;
      v18 = v51;
      __swift_project_boxed_opaque_existential_1Tm(v49, v50);
      (*(v18 + 16))(v17, v18);
      sub_1E1AF5BBC();

      (*(v11 + 8))(v13, v10);
    }

    v19 = v50;
    v20 = v51;
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    (*(v20 + 16))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3520);
    sub_1E13E7270();
    sub_1E1AF3CDC();
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(&v44);
    (*(v11 + 56))(v7, 0, 1, v10);
    swift_beginAccess();
    sub_1E13E72D4(v7, v2 + v15);
    swift_endAccess();
    v21 = v50;
    v22 = v51;
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    (*(v22 + 8))(&v44, v21, v22);
    v23 = v47;
    if (v47 == 255)
    {
      v27 = *(v2 + 16);
      v42 = *(v2 + 32);
      v43 = v27;
      v26 = *(v2 + 48);
      v23 = *(v2 + 56);
      sub_1E13E653C(v27, *(&v27 + 1), v42, *(&v42 + 1), v26, v23);
      v25 = v43;
      v24 = v42;
    }

    else
    {
      v25 = v44;
      v24 = v45;
      v26 = v46;
    }

    v28 = *(v2 + 16);
    v29 = *(v2 + 24);
    v30 = *(v2 + 32);
    v31 = *(v2 + 40);
    v32 = *(v2 + 48);
    *(v2 + 16) = v25;
    *(v2 + 32) = v24;
    *(v2 + 48) = v26;
    v33 = *(v2 + 56);
    *(v2 + 56) = v23;
    sub_1E13E6F8C(v28, v29, v30, v31, v32, v33);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      v36 = *(v2 + 24);
      v37 = *(v2 + 32);
      v38 = *(v2 + 40);
      v39 = *(v2 + 48);
      v40 = *(v2 + 56);
      *&v44 = *(v2 + 16);
      *(&v44 + 1) = v36;
      *&v45 = v37;
      *(&v45 + 1) = v38;
      v46 = v39;
      v47 = v40;
      v41 = *(v34 + 8);
      sub_1E13E653C(v44, v36, v37, v38, v39, v40);
      v41(&v44, 0, 0, 1, 0, ObjectType, v34);
      swift_unknownObjectRelease();
      sub_1E13E6F8C(v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47);
    }

    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    return sub_1E1308058(&v44, &qword_1ECEB3518);
  }
}

void _s11AppStoreKit43ArcadeTitleEffectCollectionElementsObserverC30willDisplayGlobalSupplementary_14registeredWith14collectionView8asPartOfySo020UICollectionReusableQ0C_AA03AnyvM12Registration_pSo0uQ0C9JetEngine15BaseObjectGraphCtF_0(void *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ObjectType = swift_getObjectType();
    v7 = a1;
    if (!Strong || (swift_unknownObjectRelease(), Strong != v7))
    {
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = *(v1 + 40);
      v11 = *(v1 + 48);
      v12 = *(v1 + 56);
      v14 = *(v1 + 16);
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v13 = *(v4 + 8);
      sub_1E13E653C(v14, v8, v9, v10, v11, v12);
      v13(&v14, 0, 0, 1, 0, ObjectType, v4);
      sub_1E13E6F8C(v14, v15, v16, v17, v18, v19);
      *(v1 + 72) = v4;
      swift_unknownObjectWeakAssign();
    }
  }
}

void *sub_1E13E6F8C(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return result;
    }
  }

  else
  {

    result = a2;
    a2 = a3;
  }
}

uint64_t type metadata accessor for ArcadeTitleEffectCollectionElementsObserver()
{
  result = qword_1EE1D3118;
  if (!qword_1EE1D3118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E13E7080()
{
  sub_1E13E7150();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E13E7150()
{
  if (!qword_1EE1D29B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3500);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D29B0);
    }
  }
}

unint64_t sub_1E13E71B4()
{
  result = qword_1EE1E33E0;
  if (!qword_1EE1E33E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E33E0);
  }

  return result;
}

uint64_t sub_1E13E7200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E13E7270()
{
  result = qword_1ECEB3528;
  if (!qword_1ECEB3528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3528);
  }

  return result;
}

uint64_t sub_1E13E72D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void ShelfLayoutSpacingProvider.topPadding(in:)(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69ABBA8];
  a1[3] = MEMORY[0x1E69E63B0];
  a1[4] = v1;
  *a1 = 0;
}

double ShelfLayoutSpacingProvider.topPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v14, a1, a2, a3);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

double ShelfLayoutSpacingProvider.bottomPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(v14, a1, a2, a3);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

double ShelfLayoutSpacingProvider.topContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(v14, a1, a2, a3);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

double ShelfLayoutSpacingProvider.bottomContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 32))(v14, a1, a2, a3);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  type metadata accessor for ShelfLayoutContext();
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t ActionWrapper.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for Action();
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_1E1AF39DC();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_1E1AF380C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_1E1AF39DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_1E1AF380C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_1E13E7AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for Action();
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_1E1AF39DC();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_1E1AF380C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_1E1AF39DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_1E1AF380C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

__n128 ActionIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  strcpy(a4, "ActionIntent");
  *(a4 + 13) = 0;
  *(a4 + 14) = -5120;
  v10 = type metadata accessor for ActionIntent();
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(a4 + v11, a1, v12);
  *(a4 + v10[6]) = a2;
  v13 = a4 + v10[7];
  result = v16;
  *v13 = v16;
  *(v13 + 16) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for ActionIntent()
{
  result = qword_1EE1E06C8;
  if (!qword_1EE1E06C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionIntent() + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ActionIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionIntent() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_1E13E2380(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ActionIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ActionIntent();
  v8 = isa;
  sub_1E1AEFBDC();
  v9 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_1E194C2F4();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v12 = sub_1E1AF748C();
    sub_1E13E80B0(&v15);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1E1AF6C5C();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E13E80B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E13E8180(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActionIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E13E81C8()
{
  result = qword_1ECEB3538;
  if (!qword_1ECEB3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3538);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_1E13E8300()
{
  sub_1E1AEFCCC();
  if (v0 <= 0x3F)
  {
    sub_1E13E839C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E13E839C()
{
  if (!qword_1EE1E0448[0])
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1E0448);
    }
  }
}

id sub_1E13E83EC(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1E1AF6C1C();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {
    v10 = MEMORY[0x1E69E7CC0];
    v36 = a3;
    v37 = a1;
    if (!i)
    {
      break;
    }

    v42[0] = MEMORY[0x1E69E7CC0];
    result = sub_1E135C088(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v12 = 0;
    a3 = v42[0];
    v43 = v8 & 0xC000000000000001;
    v38 = i;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43)
      {
        v14 = MEMORY[0x1E68FFD80](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_1E1AF5FFC();
      if (v4)
      {

        return a1;
      }

      v18 = v16;
      a1 = v17;

      v42[0] = a3;
      v20 = a3[2];
      v19 = a3[3];
      v21 = a3;
      if (v20 >= v19 >> 1)
      {
        sub_1E135C088((v19 > 1), v20 + 1, 1);
        v21 = v42[0];
      }

      v21[2] = v20 + 1;
      v22 = &v21[2 * v20];
      v22[4] = v18;
      v22[5] = a1;
      ++v12;
      v4 = 0;
      a3 = v21;
      if (v13 == v38)
      {

        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v43 = v4;
  v23 = a3[2];
  if (v23)
  {
    v42[0] = v10;
    sub_1E135C028(0, v23, 0);
    v24 = v10;
    v25 = a3 + 5;
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v42[0] = v24;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);

      if (v28 >= v29 >> 1)
      {
        sub_1E135C028((v29 > 1), v28 + 1, 1);
        v24 = v42[0];
      }

      *(v24 + 16) = v28 + 1;
      v30 = v24 + 16 * v28;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v36 + OBJC_IVAR____TtC11AppStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_1E13EB38C(v31 + 24, v42);
  if (v42[3])
  {
    sub_1E1300B24(v42, v39);
    sub_1E1308058(v42, &qword_1ECEB3540);
    v32 = v40;
    v33 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v34 = (*(v33 + 8))(v24, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v42[0] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3568);
    v35 = sub_1E1AF755C();
    a1 = [objc_opt_self() valueWithObject:v35 inContext:v37];
    result = swift_unknownObjectRelease();
    if (!a1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    sub_1E1308058(v42, &qword_1ECEB3540);
    result = [objc_opt_self() valueWithNullInContext_];
    if (!result)
    {
      goto LABEL_37;
    }

    a1 = result;
  }

  return a1;
}

uint64_t sub_1E13E8894(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v34 = a8;
  v17 = sub_1E1AF5AAC();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a2;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v21 = sub_1E1AF490C();
  v22 = a3;
  v23 = a4;
  v24 = a2;

  v26 = v21;
  v27 = MEMORY[0x1E68FD610](v25);
  if (!v27)
  {
    sub_1E13EB930();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v26 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a9;
  *(v28 + 24) = 0;
  *(v28 + 32) = v26;
  *(v28 + 40) = sub_1E13EBBE4;
  *(v28 + 48) = v20;
  v29 = a1;

  v30 = v37;
  sub_1E1AF5A8C();

  if (v30)
  {
LABEL_5:

    return v26;
  }

  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v31 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v26 = sub_1E1AF5A9C();

  (*(v35 + 8))(v19, v36);
  return v26;
}

char *sub_1E13E8B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  LOBYTE(v7) = a7;
  v10 = sub_1E1AF6C1C();
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {
    v13 = MEMORY[0x1E69E7CC0];
    v46 = a1;
    v45 = v7;
    if (!i)
    {
      break;
    }

    v67 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C480(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v53 = a3;
    v15 = 0;
    v7 = v67;
    v68 = v11 & 0xFFFFFFFFFFFFFF8;
    a3 = i - 1;
    v16 = v50;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E68FFD80](v15, v11);
      }

      else
      {
        if (v15 >= *(v68 + 16))
        {
          goto LABEL_39;
        }

        v17 = *(v11 + 8 * v15 + 32);
      }

      SponsoredSearchAdvert.init(_:)(v17, &v61);
      if (v16)
      {

        return v11;
      }

      v59 = v65;
      v60 = v66;
      v57 = v63;
      v58 = v64;
      v55 = v61;
      v56 = v62;
      v67 = v7;
      a1 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (a1 >= v18 >> 1)
      {
        sub_1E135C480((v18 > 1), a1 + 1, 1);
        v16 = 0;
        v7 = v67;
      }

      *(v7 + 16) = a1 + 1;
      v19 = (v7 + 96 * a1);
      v19[2] = v55;
      v19[3] = v56;
      v19[6] = v59;
      v19[7] = v60;
      v19[4] = v57;
      v19[5] = v58;
      if (a3 == v15)
      {
        v50 = v16;

        a3 = v53;
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }

      ++v15;
    }

    while (!__OFADD__(v15, 1));
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v20 = sub_1E1AF6C1C();
  v11 = v20;
  if (v20 >> 62)
  {
    a1 = sub_1E1AF71CC();
    if (a1)
    {
LABEL_22:
      *&v61 = v13;
      result = sub_1E135C460(0, a1 & ~(a1 >> 63), 0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v22 = v61;
        v68 = v11 & 0xC000000000000001;
        v51 = v11 & 0xFFFFFFFFFFFFFF8;
        v52 = a1;
        v54 = v11;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_38;
          }

          if (v68)
          {
            v24 = v22;
            v25 = MEMORY[0x1E68FFD80](v21, v11);
          }

          else
          {
            if (v21 >= *(v51 + 16))
            {
              goto LABEL_40;
            }

            v24 = v22;
            v25 = *(v11 + 8 * v21 + 32);
          }

          v26 = v25;
          v27 = sub_1E1AF6C4C();
          a3 = sub_1E1AF6C2C();
          v29 = v28;

          if (!v29)
          {
            break;
          }

          v30 = sub_1E1AF6C4C();
          v31 = [v30 toDictionary];

          if (!v31)
          {

            sub_1E1AF6C4C();
            v11 = sub_1E1AF56FC();
            sub_1E13EB868();
            swift_allocError();
            goto LABEL_37;
          }

          v32 = sub_1E1AF5C7C();

          v22 = v24;
          *&v61 = v24;
          a1 = *(v24 + 16);
          v33 = *(v22 + 24);
          if (a1 >= v33 >> 1)
          {
            sub_1E135C460((v33 > 1), a1 + 1, 1);
            v22 = v61;
          }

          *(v22 + 16) = a1 + 1;
          v34 = (v22 + 24 * a1);
          v34[4] = a3;
          v34[5] = v29;
          v34[6] = v32;
          ++v21;
          v11 = v54;
          if (v23 == v52)
          {

            goto LABEL_44;
          }
        }

        sub_1E1AF6C4C();
        v11 = sub_1E1AF56FC();
        sub_1E13EB868();
        swift_allocError();
LABEL_37:
        sub_1E1AF56BC();
        swift_willThrow();

        return v11;
      }

      goto LABEL_51;
    }
  }

  else
  {
    a1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_22;
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v35 = *(*(a4 + OBJC_IVAR____TtC11AppStoreKit11JSAdsObject_backingService) + 16);
  v11 = *(v35 + 16);
  if (v11)
  {
    v36 = *(v35 + 24);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 8);
    swift_unknownObjectRetain();
    v39 = v38(a5, a6, ObjectType, v36);
    if (v39)
    {
      v40 = v39[15];
      v41 = v39[16];
      __swift_project_boxed_opaque_existential_1Tm(v39 + 12, v40);
      (*(v41 + 8))(v7, v22, v45 & 1, v40, v41);

      swift_unknownObjectRelease();

      *(swift_allocObject() + 16) = v46;
      *(&v62 + 1) = sub_1E1AF470C();
      *&v63 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(&v61);
      v42 = v46;
      sub_1E1AF46FC();
      sub_1E13006E4(0, &qword_1EE1E32A8);
      v11 = sub_1E1AF57DC();

      __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else
    {

      sub_1E13EBC74();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_1E13EBC74();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1E13E9428(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v57 = a4;
  v58 = a5;
  v55 = a3;
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v59 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v18 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v18, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v19 = sub_1E1AF0F8C();
  v20 = sub_1E1AF6A1C();

  v21 = sub_1E1AF6D6C();
  v54 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = v13;
    v23 = a2;
    v24 = v22;
    v25 = swift_slowAlloc();
    v53 = v10;
    v26 = v25;
    v60 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1E1972EA0(a1, v23, &v60);
    v27 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v19, v20, v27, "OnDeviceAd", "placementType=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v28 = v26;
    v10 = v53;
    MEMORY[0x1E6901640](v28, -1, -1);
    v29 = v24;
    a2 = v23;
    v13 = v52;
    MEMORY[0x1E6901640](v29, -1, -1);
  }

  v51 = *(v10 + 16);
  v51(v59, v17, v9);
  sub_1E1AF0FEC();
  swift_allocObject();
  v52 = sub_1E1AF0FDC();
  v31 = *(v10 + 8);
  v30 = v10 + 8;
  v50 = v31;
  v31(v17, v9);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v32 = sub_1E1AF0F8C();
  v33 = sub_1E1AF6A1C();

  if (sub_1E1AF6D6C())
  {
    v34 = swift_slowAlloc();
    v49 = v9;
    v35 = a2;
    v36 = v34;
    v37 = swift_slowAlloc();
    v53 = v30;
    v38 = v37;
    v60 = v37;
    *v36 = 136315138;
    v39 = v54;
    *(v36 + 4) = sub_1E1972EA0(v54, v35, &v60);
    v40 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v32, v33, v40, "OnDeviceAdPromise", "placementType=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E6901640](v38, -1, -1);
    v41 = v36;
    a2 = v35;
    v9 = v49;
    MEMORY[0x1E6901640](v41, -1, -1);
  }

  else
  {

    v39 = v54;
  }

  v51(v59, v13, v9);
  swift_allocObject();
  v42 = sub_1E1AF0FDC();
  v50(v13, v9);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v43 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v43);
  *(&v49 - 10) = v42;
  *(&v49 - 9) = v39;
  v44 = v52;
  *(&v49 - 8) = a2;
  *(&v49 - 7) = v44;
  *(&v49 - 6) = a6;
  v45 = v55;
  *(&v49 - 5) = v56;
  *(&v49 - 4) = v45;
  v46 = v58;
  *(&v49 - 3) = v57;
  *(&v49 - 2) = v46;
  v47 = sub_1E1AF6D5C();

  return v47;
}

uint64_t sub_1E13E990C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v47 = a1;
  v50 = a7;
  v51 = a8;
  v53 = a5;
  v54 = a2;
  v14 = sub_1E1AF0FBC();
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF0F7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E1AF5AAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v52 = a3;
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  AdPlacementType.init(rawValue:)(v23);
  v24 = v57;
  if (v57 == 5)
  {
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v25 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v25, qword_1EE1F7BE8);
    v26 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    LODWORD(v51) = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      v27 = v49;
      if ((*(v49 + 88))(v16, v14) == *MEMORY[0x1E69E93E8])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v16, v14);
        v28 = "success=false";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v26, v51, v42, "OnDeviceAd", v28, v41, 2u);
      MEMORY[0x1E6901640](v41, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v57 = 0xD00000000000004ALL;
    v58 = 0x80000001E1B5C980;
    MEMORY[0x1E68FECA0](v52, a4);
    v29 = v58;
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    goto LABEL_18;
  }

  v29 = *(a6 + OBJC_IVAR____TtC11AppStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_1E13EB38C(v29 + 24, &v55);
  if (!v56)
  {
    sub_1E1308058(&v55, &qword_1ECEB3540);
    sub_1E13EB8C0();
    swift_allocError();
LABEL_18:
    swift_willThrow();
    goto LABEL_21;
  }

  if (a9 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = a9;
  }

  sub_1E1308EC0(&v55, &v57);
  v31 = v59;
  v32 = v60;
  __swift_project_boxed_opaque_existential_1Tm(&v57, v59);
  LOBYTE(v55) = v24;
  v33 = (*(v32 + 16))(&v55, COERCE_DOUBLE(*&v30), a9 == 0.0, v50, v51, a10, v31, v32);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  v29 = sub_1E1AF490C();

  v37 = MEMORY[0x1E68FD610](v36);
  if (v37)
  {
    v29 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    *(v38 + 32) = v29;
    *(v38 + 40) = sub_1E13EB914;
    *(v38 + 48) = v34;
    v39 = v47;

    v40 = v48;
    sub_1E1AF5A8C();
    if (!v40)
    {

      v29 = sub_1E1AF5A9C();

      (*(v45 + 8))(v22, v46);
      sub_1E13E9F80();
      return v29;
    }
  }

  else
  {
    sub_1E13EB930();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

LABEL_21:
  sub_1E13E9F80();
  return v29;
}

uint64_t sub_1E13E9F80()
{
  v0 = sub_1E1AF0FBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v8, qword_1EE1F7BE8);
  v9 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v10 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v9, v10, v13, "OnDeviceAdPromise", v11, v12, 2u);
    MEMORY[0x1E6901640](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E13EA20C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v9[3] = sub_1E1AF470C();
  v9[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v9);

  v6 = a1;
  sub_1E1AF46FC();
  sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

JSValue sub_1E13EA2F8@<X0>(__int128 *a1@<X0>, objc_class *a2@<X2>, JSValue *a3@<X8>)
{
  v25.super.isa = a2;
  v26 = a3;
  v4 = sub_1E1AF0FBC();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF0F7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v33 = a1[6];
  v34 = v11;
  v35[0] = a1[8];
  *(v35 + 9) = *(a1 + 137);
  v12 = a1[3];
  v29 = a1[2];
  v30 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v15 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v15, qword_1EE1F7BE8);
  v16 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v17 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    v18 = v24;
    if ((*(v24 + 88))(v6, v4) == *MEMORY[0x1E69E93E8])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v6, v4);
      v19 = "success=true";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v16, v17, v21, "OnDeviceAd", v19, v20, 2u);
    MEMORY[0x1E6901640](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  result.super.isa = OnDeviceAdvertFetchResponse.makeValue(in:)(v25).super.isa;
  v26->super.isa = result.super.isa;
  return result;
}

uint64_t sub_1E13EA6E8(uint64_t a1, void *a2, double a3)
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v11 = MEMORY[0x1E69E6158];
  v9 = *&a1;
  v10 = a2;

  sub_1E1AF38DC();
  sub_1E1308058(&v9, &qword_1ECEB2DF0);
  v11 = MEMORY[0x1E69E63B0];
  v9 = a3;
  sub_1E1AF38DC();
  sub_1E1308058(&v9, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  AdPlacementType.init(rawValue:)(v6);
  if (LOBYTE(v9) != 5)
  {
    return sub_1E13EB46C(&v9, a3);
  }

  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF382C();
  v11 = MEMORY[0x1E69E6158];
  v9 = *&a1;
  v10 = a2;

  sub_1E1AF38DC();
  sub_1E1308058(&v9, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

id sub_1E13EAA8C(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E13ECF18();

  result = [objc_opt_self() valueWithBool:v3 & 1 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1E13EAC1C(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E1AF5DBC();
  v4 = [v2 stringArrayForKey_];

  if (v4)
  {
    sub_1E1AF621C();

    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v5 = sub_1E1AF755C();
    v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      swift_bridgeObjectRelease_n();
      return v6;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() valueWithNullInContext_];
    v6 = result;
    if (result)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

id sub_1E13EAE10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  AdPlacementType.init(rawValue:)(v8);
  v9 = v21;
  if (v21 == 5)
  {
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF382C();
    v23 = MEMORY[0x1E69E6158];
    v21 = a2;
    v22 = a3;

    sub_1E1AF38DC();
    sub_1E1308058(&v21, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v21 = 0xD00000000000004DLL;
    v22 = 0x80000001E1B5CA40;
    MEMORY[0x1E68FECA0](a2, a3);
    v11 = v21;
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    goto LABEL_9;
  }

  v11 = *(a4 + OBJC_IVAR____TtC11AppStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_1E13EB38C(v11 + 24, &v19);
  if (!v20)
  {
LABEL_8:
    sub_1E1308058(&v19, &qword_1ECEB3540);
    sub_1E13EB8C0();
    swift_allocError();
LABEL_9:
    swift_willThrow();
    return v11;
  }

  sub_1E1308EC0(&v19, &v21);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1Tm(&v21, v23);
  LOBYTE(v19) = v9;
  v14 = (*(v13 + 32))(&v19, v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v21 = v14;
  v22 = v16;
  v17 = sub_1E1AF755C();
  v11 = [objc_opt_self() valueWithObject:v17 inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v11;
}

id sub_1E13EB2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAdsObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E13EB30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(v3 + 16);
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  sub_1E13EB38C(a3, v7);
  swift_beginAccess();
  sub_1E13EB3FC(v7, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_1E13EB38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13EB3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13EB46C(char *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  sub_1E13EB38C(v2 + 24, &v9);
  if (v10)
  {
    sub_1E1308EC0(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    LOBYTE(v9) = v4;
    (*(v6 + 24))(&v9, v5, v6, a2);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_1E1308058(&v9, &qword_1ECEB3540);
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E13EB6A0()
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](0);
  return sub_1E1AF767C();
}

uint64_t sub_1E13EB6E4()
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](0);
  return sub_1E1AF767C();
}

uint64_t AdsService.deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB3540);
  return v0;
}

uint64_t AdsService.__deallocating_deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB3540);

  return swift_deallocClassInstance();
}

unint64_t sub_1E13EB868()
{
  result = qword_1EE1D2810;
  if (!qword_1EE1D2810)
  {
    sub_1E1AF56FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2810);
  }

  return result;
}

unint64_t sub_1E13EB8C0()
{
  result = qword_1ECEB3550;
  if (!qword_1ECEB3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3550);
  }

  return result;
}

unint64_t sub_1E13EB930()
{
  result = qword_1ECEB3558;
  if (!qword_1ECEB3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3558);
  }

  return result;
}

void sub_1E13EB9D8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1E13ECF18();

  if (v5)
  {
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    v7[3] = MEMORY[0x1E69E6158];
    v7[0] = a1;
    v7[1] = a2;

    sub_1E1AF38DC();
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    sub_1E1AF549C();
  }
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1E13EBC74()
{
  result = qword_1ECEB3560;
  if (!qword_1ECEB3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3560);
  }

  return result;
}

JSValue sub_1E13EBCC8@<X0>(JSValue *a1@<X8>)
{
  result.super.isa = SponsoredSearchNativeAdvertData.makeValue(in:)(v1[2]).super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

uint64_t getEnumTagSinglePayload for ShelfMarker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ShelfMarker(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E13EBE2C()
{
  result = qword_1ECEB3570;
  if (!qword_1ECEB3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3570);
  }

  return result;
}

AppStoreKit::ChartOrCategoryBrickStyle_optional __swiftcall ChartOrCategoryBrickStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E13EBF28(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000033;
  if (*a1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  else
  {
    v3 = 0xE900000000000033;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000031;
  }

  if (*a2 == 1)
  {
    v2 = 0xE900000000000032;
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE900000000000031;
  }

  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1E1AF74AC();
  }

  return v6 & 1;
}

unint64_t sub_1E13EBFD0()
{
  result = qword_1ECEB3578;
  if (!qword_1ECEB3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3578);
  }

  return result;
}

uint64_t sub_1E13EC024()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E13EC0A0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E13EC108()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E13EC18C(void *a1@<X8>)
{
  v2 = 0xE900000000000031;
  v3 = 0xE900000000000033;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0x5F797469736E6564;
  a1[1] = v2;
}

uint64_t MSOProviderData.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MSOProviderData.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MSOProviderData.__allocating_init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 32))(v10 + v11, a3, v12);
  *(v10 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_artwork) = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber) = a5;
  return v10;
}

uint64_t MSOProviderData.init(name:url:artwork:roomUber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v10 = sub_1E1AEFCCC();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_artwork) = a4;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber) = a5;
  return v5;
}

uint64_t MSOProviderData.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MSOProviderData.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *MSOProviderData.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = v2;
  v66 = *v3;
  v73 = sub_1E1AF39DC();
  v68 = *(v73 - 8);
  v5 = MEMORY[0x1EEE9AC00](v73);
  v61 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v57 - v9;
  v11 = sub_1E1AEFCCC();
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v65 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v62 = v57 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v57 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v57 - v22;
  v24 = 0xE400000000000000;
  v25 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v28 = v27;
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v31 = v23;
  v32 = v13;
  v33 = v30;
  v30(v31, v32);
  v67 = v30;
  if (!v28)
  {
    v35 = 1701667182;
    v34 = v25;
    goto LABEL_5;
  }

  v59 = v26;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v33(v21, v32);
  v34 = v25;
  if ((*(v71 + 48))(v10, 1, v72) == 1)
  {
    v35 = 7107189;

    sub_1E13ECBA0(v10);
    v24 = 0xE300000000000000;
LABEL_5:
    v36 = sub_1E1AF5A7C();
    sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v37 = v35;
    v37[1] = v24;
    v37[2] = v66;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v68 + 8))(v69, v73);
    v67(v34, v32);
    v38 = v70;
    goto LABEL_8;
  }

  v57[1] = v29;
  v58 = v32;
  v40 = v71;
  v39 = v72;
  v41 = v65;
  (*(v71 + 32))(v65, v10, v72);
  v38 = v70;
  v70[2] = v59;
  v38[3] = v28;
  v42 = v40;
  v43 = v41;
  v44 = *(v42 + 16);
  v59 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v44(v38 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url, v41, v39);
  v45 = type metadata accessor for Artwork();
  v46 = v62;
  v66 = v34;
  sub_1E1AF381C();
  v48 = v68;
  v47 = v69;
  v49 = *(v68 + 16);
  v50 = v63;
  v49(v63, v69, v73);
  v63 = v45;
  v51 = v64;
  v52 = Artwork.__allocating_init(deserializing:using:)(v46, v50);
  if (!v51)
  {
    *(v38 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_artwork) = v52;
    sub_1E1AF381C();
    v56 = v73;
    v49(v61, v47, v73);
    sub_1E13ECC08(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    (*(v48 + 8))(v47, v56);
    v67(v66, v58);
    (*(v71 + 8))(v65, v72);
    *(v38 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_roomUber) = v74;
    return v38;
  }

  (*(v48 + 8))(v47, v73);
  v67(v66, v58);
  v53 = v72;
  v54 = *(v71 + 8);
  v54(v43, v72);

  v54(v38 + v59, v53);
LABEL_8:
  type metadata accessor for MSOProviderData();
  swift_deallocPartialClassInstance();
  return v38;
}

uint64_t type metadata accessor for MSOProviderData()
{
  result = qword_1ECEB3580;
  if (!qword_1ECEB3580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13ECBA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E13ECC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MSOProviderData.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MSOProviderData.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t *sub_1E13ECD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MSOProviderData();
  v7 = swift_allocObject();
  result = MSOProviderData.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E13ECE10()
{
  result = sub_1E1AEFCCC();
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

id sub_1E13ECF18()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_1E13E44F8(v8);
  }

  return 0;
}

uint64_t NSUserDefaults.arcadeUpsellAutoPresentationCount.getter()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
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
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1E13E44F8(v7);
  }

  return 0;
}

void NSUserDefaults.arcadeUpsellAutoPresentationCount.setter(uint64_t a1)
{
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.arcadeUpsellAutoPresentationCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  return sub_1E13ED1D0;
}

void sub_1E13ED1D0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:v2 forKey:v3];
}

uint64_t NSUserDefaults.shelfOrthogonalScrollingBehavior.getter()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
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
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1E13E44F8(v7);
  }

  return 4;
}

void NSUserDefaults.shelfOrthogonalScrollingBehavior.setter(uint64_t a1)
{
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.shelfOrthogonalScrollingBehavior.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  return sub_1E13ED3E0;
}

void sub_1E13ED3E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_1E1AF5DBC();
  [v1 setInteger:v2 forKey:v3];
}

AppStoreKit::MixedMediaLockup::LockupPosition_optional __swiftcall MixedMediaLockup.LockupPosition.init(rawValue:)(Swift::String rawValue)
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

uint64_t MixedMediaLockup.LockupPosition.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_1E13ED558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1E13ED5F4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E13ED66C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E13ED6D0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E13ED744@<X0>(char *a1@<X8>)
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

void sub_1E13ED7A4(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MixedMediaLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_1E1AF39DC();
  v71 = *(v73 - 8);
  v3 = MEMORY[0x1EEE9AC00](v73);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v60 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  v22 = sub_1E1AF5A6C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v60 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v60 - v26;
  v72 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v65 = v10;
  v28 = *(v10 + 8);
  v68 = v10 + 8;
  v69 = v9;
  v67 = v28;
  v28(v21, v9);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_1E1308058(v8, &qword_1ECEB1F90);
    type metadata accessor for Trailers();
    sub_1E1AF381C();
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v75(v61, v74);
    sub_1E13EE3FC(qword_1EE1D2E00, type metadata accessor for Trailers);
    sub_1E1AF464C();
    v31 = v77;
    if (v77)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E1B06D70;
      *(v32 + 32) = v31;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v33 = v74;
  }

  else
  {
    (*(v23 + 32))(v27, v8, v22);
    (*(v23 + 16))(v60, v27, v22);
    v75 = *(v71 + 16);
    v76 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = v61;
    v30 = v73;
    v33 = v74;
    (v75)(v61, v74, v73);
    type metadata accessor for Trailers();
    sub_1E13EE3FC(qword_1EE1D2E00, type metadata accessor for Trailers);
    v34 = sub_1E1AF631C();
    v35 = v27;
    v32 = v34;
    (*(v23 + 8))(v35, v22);
  }

  *(v70 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_trailers) = v32;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v36 = v75;
  (v75)(v29, v33, v30);
  v37 = v33;
  sub_1E13EE3FC(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v38 = v70;
  *(v70 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionArtwork) = v77;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v36(v29, v37, v30);
  v75 = v36;
  sub_1E13EE3FC(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionVideo) = v77;
  sub_1E1AF381C();
  v39 = v74;
  v36(v29, v74, v30);
  type metadata accessor for Screenshots();
  sub_1E13EE3FC(&qword_1EE1F66F8, type metadata accessor for Screenshots);
  v40 = v38;
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshots) = sub_1E1AF630C();
  sub_1E1AF381C();
  sub_1E13EE2A0();
  sub_1E1AF36DC();
  v41 = v69;
  v42 = v67;
  v67(v19, v69);
  *(v40 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_overrideLockupPosition) = v77;
  sub_1E1AF381C();
  sub_1E13EE2F4();
  sub_1E1AF369C();
  v42(v19, v41);
  *(v40 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v77;
  v43 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3590);
  sub_1E1AF381C();
  v44 = v73;
  v45 = v75;
  (v75)(v29, v39, v73);
  v61 = sub_1E13EE348();
  sub_1E1AF464C();
  *(v43 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_metadataRibbonItems) = v77;
  sub_1E1AF381C();
  v45(v29, v39, v44);
  v46 = v69;
  v47 = v72;
  sub_1E1AF464C();
  v48 = v43;
  v49 = v67;
  *(v48 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_searchTagRibbonItems) = v77;
  v50 = v62;
  sub_1E1AF381C();
  v51 = sub_1E1AF370C();
  v49(v50, v46);
  *(v48 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = (v51 == 2) | v51 & 1;
  v52 = v63;
  sub_1E1AF381C();
  v53 = sub_1E1AF370C();
  v49(v52, v46);
  *(v48 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v53 & 1;
  v54 = v64;
  (*(v65 + 16))(v64, v47, v46);
  v55 = v66;
  v57 = v73;
  v56 = v74;
  (v75)(v66, v74, v73);
  v58 = Lockup.init(deserializing:using:)(v54, v55);
  (*(v71 + 8))(v56, v57);
  v49(v47, v46);
  return v58;
}

unint64_t sub_1E13EE2A0()
{
  result = qword_1EE1DF180;
  if (!qword_1EE1DF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF180);
  }

  return result;
}

unint64_t sub_1E13EE2F4()
{
  result = qword_1EE1D97D8[0];
  if (!qword_1EE1D97D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D97D8);
  }

  return result;
}

unint64_t sub_1E13EE348()
{
  result = qword_1EE1D2668;
  if (!qword_1EE1D2668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3590);
    sub_1E13EE3FC(&qword_1EE1DDEC0, type metadata accessor for MetadataRibbonItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2668);
  }

  return result;
}

uint64_t sub_1E13EE3FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MixedMediaLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v74 = a28;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v97 = a27;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v73 = a38;
  v72 = a37;
  v71 = a36;
  v70 = a35;
  v69 = sub_1E1AEFEAC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v68 - v42;
  v44 = swift_allocObject();
  v45 = *a1;
  v46 = a1[1];
  v75 = v45;
  LOBYTE(v45) = *a29;
  v47 = *a34;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_trailers) = a32;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshots) = a33;
  v48 = v74;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_overrideLockupPosition) = v45;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v47;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_searchTagRibbonItems) = v71;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v72;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v73;
  v108 = 0;
  memset(v107, 0, sizeof(v107));
  sub_1E134FD1C(v48, v43, &unk_1ECEB1770);
  *(v44 + 424) = 4;
  sub_1E134FD1C(v107, &v104, &unk_1ECEB5670);
  if (*(&v105 + 1))
  {
    v49 = v105;
    *(v44 + 448) = v104;
    *(v44 + 464) = v49;
    *(v44 + 480) = v106;
  }

  else
  {

    sub_1E1AEFE9C();
    v50 = v46;
    v51 = sub_1E1AEFE7C();
    v53 = v52;
    (*(v68 + 8))(v40, v69);
    v102 = v51;
    v103 = v53;
    v46 = v50;
    sub_1E1AF6F6C();
    sub_1E1308058(&v104, &unk_1ECEB5670);
  }

  sub_1E134FD1C(v43, v44 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);

  *(v44 + 16) = v75;
  *(v44 + 24) = v46;
  v54 = v85;
  *(v44 + 32) = v83;
  *(v44 + 40) = v54;
  *(v44 + 48) = v87;
  *(v44 + 56) = 0;
  v55 = v79;
  *(v44 + 64) = v78;
  *(v44 + 72) = v55;
  v56 = v90;
  *(v44 + 80) = v89;
  *(v44 + 88) = v56;
  v57 = v93;
  *(v44 + 96) = v91;
  *(v44 + 104) = v57;
  v58 = v77;
  *(v44 + 112) = v76;
  *(v44 + 120) = v58;
  *(v44 + 128) = 0;
  *(v44 + 136) = 2;
  v59 = v81;
  *(v44 + 144) = v80;
  *(v44 + 152) = v59;
  v60 = v84;
  *(v44 + 192) = v82;
  *(v44 + 200) = v60;
  v61 = v88;
  *(v44 + 208) = v86;
  *(v44 + 216) = v61;
  *(v44 + 376) = 0u;
  *(v44 + 392) = 0u;
  *(v44 + 408) = 0x8000;
  *(v44 + 360) = v97;
  *(v44 + 416) = 0;
  *(v44 + 432) = MEMORY[0x1E69E7CD0];
  v62 = v96;
  *(v44 + 160) = v94;
  *(v44 + 168) = v62;
  v63 = v92;
  *(v44 + 176) = v98;
  *(v44 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v44 + 224) = v95;
  *(v44 + 232) = v65;
  *(v44 + 240) = v64;
  *(v44 + 248) = 0;
  v66 = v101;
  *(v44 + 256) = 0;
  *(v44 + 264) = v66;
  *(v44 + 272) = 0u;
  *(v44 + 288) = 0u;
  *(v44 + 304) = 0u;
  *(v44 + 320) = 0u;
  *(v44 + 336) = 0;
  sub_1E1308058(v48, &unk_1ECEB1770);
  sub_1E1308058(v43, &unk_1ECEB1770);
  sub_1E1308058(v107, &unk_1ECEB5670);
  *(v44 + 344) = MEMORY[0x1E69E7CC0];
  *(v44 + 352) = 0;
  *(v44 + 440) = 0;
  *(v44 + 368) = 0;
  return v44;
}

uint64_t MixedMediaLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, unsigned __int8 a37, unsigned __int8 a38)
{
  v39 = v38;
  v93 = a8;
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v71 = a28;
  v97 = a27;
  v100 = a25;
  v101 = a26;
  v99 = a24;
  v98 = a23;
  v96 = a22;
  v94 = a21;
  v79 = a20;
  v78 = a19;
  v95 = a18;
  v88 = a17;
  v86 = a16;
  v84 = a15;
  v82 = a14;
  v92 = a13;
  v81 = a12;
  v80 = a11;
  v77 = a10;
  v76 = a9;
  v74 = a38;
  v73 = a37;
  v72 = a36;
  v70 = a35;
  v69 = sub_1E1AEFEAC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v42 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v68 - v44;
  v46 = *a1;
  v47 = a1[1];
  v75 = v46;
  LOBYTE(v46) = *a29;
  v48 = v71;
  v49 = *a34;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionArtwork) = a30;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_alignedRegionVideo) = a31;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_trailers) = a32;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshots) = a33;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_overrideLockupPosition) = v46;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshotsDisplayStyle) = v49;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_metadataRibbonItems) = v70;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_searchTagRibbonItems) = v72;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_shouldEvenlyDistributeRibbonItems) = v73;
  *(v39 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_showMetadataInformationInLockup) = v74;
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  sub_1E134FD1C(v48, v45, &unk_1ECEB1770);
  *(v39 + 424) = 4;
  sub_1E134FD1C(v110, &v104, &unk_1ECEB5670);
  if (*(&v105 + 1))
  {
    v107 = v104;
    v108 = v105;
    v109 = v106;
  }

  else
  {

    sub_1E1AEFE9C();
    v50 = sub_1E1AEFE7C();
    v52 = v51;
    (*(v68 + 8))(v42, v69);
    v102 = v50;
    v103 = v52;
    sub_1E1AF6F6C();
    sub_1E1308058(&v104, &unk_1ECEB5670);
  }

  v53 = v108;
  *(v39 + 448) = v107;
  *(v39 + 464) = v53;
  *(v39 + 480) = v109;
  sub_1E134FD1C(v45, v39 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  *(v39 + 16) = v75;
  *(v39 + 24) = v47;
  v54 = v85;
  *(v39 + 32) = v83;
  *(v39 + 40) = v54;
  *(v39 + 48) = v87;
  *(v39 + 56) = 0;
  v55 = v79;
  *(v39 + 64) = v78;
  *(v39 + 72) = v55;
  v56 = v90;
  *(v39 + 80) = v89;
  *(v39 + 88) = v56;
  v57 = v93;
  *(v39 + 96) = v91;
  *(v39 + 104) = v57;
  v58 = v77;
  *(v39 + 112) = v76;
  *(v39 + 120) = v58;
  *(v39 + 128) = 0;
  *(v39 + 136) = 2;
  v59 = v81;
  *(v39 + 144) = v80;
  *(v39 + 152) = v59;
  v60 = v84;
  *(v39 + 192) = v82;
  *(v39 + 200) = v60;
  v61 = v88;
  *(v39 + 208) = v86;
  *(v39 + 216) = v61;
  *(v39 + 376) = 0u;
  *(v39 + 392) = 0u;
  *(v39 + 408) = 0x8000;
  *(v39 + 360) = v97;
  *(v39 + 416) = 0;
  *(v39 + 432) = MEMORY[0x1E69E7CD0];
  v62 = v96;
  *(v39 + 160) = v94;
  *(v39 + 168) = v62;
  v63 = v92;
  *(v39 + 176) = v98;
  *(v39 + 184) = v63;
  v65 = v99;
  v64 = v100;
  *(v39 + 224) = v95;
  *(v39 + 232) = v65;
  *(v39 + 240) = v64;
  *(v39 + 248) = 0;
  v66 = v101;
  *(v39 + 256) = 0;
  *(v39 + 264) = v66;
  *(v39 + 272) = 0u;
  *(v39 + 288) = 0u;
  *(v39 + 304) = 0u;
  *(v39 + 320) = 0u;
  *(v39 + 336) = 0;

  sub_1E1308058(v48, &unk_1ECEB1770);
  sub_1E1308058(v45, &unk_1ECEB1770);
  sub_1E1308058(v110, &unk_1ECEB5670);
  *(v39 + 344) = MEMORY[0x1E69E7CC0];
  *(v39 + 352) = 0;
  *(v39 + 440) = 0;
  *(v39 + 368) = 0;
  return v39;
}

uint64_t sub_1E13EF0F4()
{
}

uint64_t MixedMediaLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t MixedMediaLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E13EF2D8()
{
  result = qword_1ECEB3598;
  if (!qword_1ECEB3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3598);
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaLockup()
{
  result = qword_1EE1F29B8;
  if (!qword_1EE1F29B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13EF558()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D43C8 = result;
  return result;
}

id static ArcadePageScrollToShelfNotification.notificationName.getter()
{
  if (qword_1EE1D43C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D43C8;

  return v1;
}

uint64_t sub_1E13EF614()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit032DiffableSnapshotPresenterContentE6UpdateOyxG(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E13EF684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 9))
  {
    return (*a1 + 120);
  }

  v3 = ((*(a1 + 8) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 8) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E13EF6D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *(result + 8) = 0;
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1E13EF73C(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 8) = *(result + 8) & 1 | (16 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0x80;
  }

  return result;
}

void sub_1E13EF78C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1937334628;
  v4 = 0xE600000000000000;
  v5 = 0x7368746E6F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x7372616579;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x736B656577;
    v2 = 0xE500000000000000;
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

id sub_1E13EF7F4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = sub_1E13EF858();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E13EF858()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setDoesRelativeDateFormatting_];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  Locale.normalizedLocale.getter(v3);
  v5 = sub_1E1AEFF2C();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

id sub_1E13EF9AC()
{
  v1 = v0;
  v2 = sub_1E1AEFF8C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - v5;
  v6 = sub_1E1AF49CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_dateFormatters;
  v14 = MEMORY[0x1E69E7CC0];
  *&v0[v13] = sub_1E159F428(MEMORY[0x1E69E7CC0]);
  v15 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_dynamicDateFormatters;
  *&v0[v15] = sub_1E159F428(v14);
  *&v0[OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter] = 0;
  v16 = [objc_opt_self() mainBundle];

  v17 = v12;
  sub_1E1AF49AC();
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_1EE1E3200;
  sub_1E1AF49AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35A8);
  v19 = *(v7 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E1B02CD0;
  v22 = v21 + v20;
  v23 = *(v7 + 16);
  v35 = v17;
  v23(v22, v17, v6);
  v23(v22 + v19, v9, v6);
  *&v1[OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_localizedStringTables] = v21;
  v24 = v36;
  sub_1E1AF49BC();
  v25 = v38;
  v26 = v39;
  v27 = *(v38 + 32);
  v33 = v6;
  v34 = v27;
  v27(&v1[OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_locale], v24, v39);
  v28 = type metadata accessor for LegacyLocalizer();
  v29 = v37;
  sub_1E1AF49BC();
  sub_1E13EFD84();
  (*(v25 + 8))(v29, v26);
  v30 = *(v7 + 8);
  v31 = v33;
  v30(v9, v33);
  v30(v35, v31);
  v34(&v1[OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_extendedLocale], v24, v26);
  v40.receiver = v1;
  v40.super_class = v28;
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_1E13EFD84()
{
  v0 = sub_1E1AEFF9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF005C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEFC();
  v9 = MEMORY[0x1E68F8BF0](v8);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1E1AF003C();
  sub_1E1AEFFBC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF714C();
  (*(v1 + 8))(v3, v0);
  v10 = v14;
  v11 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_1E1598D2C(v10, v11, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1E68F8C00](v14);

  return sub_1E1AEFEEC();
}

uint64_t sub_1E13EFFFC(void *a1, uint64_t a2)
{
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
    v9 = a1;
    v10 = [v8 init];
    [v10 setNumberStyle_];
    [v10 setFormatterBehavior_];
    Locale.normalizedLocale.getter(v7);
    v11 = sub_1E1AEFF2C();
    (*(v5 + 8))(v7, v4);
    [v10 setLocale_];

    [v10 setMinimumFractionDigits_];
    v12 = [v10 stringFromNumber_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1E1AF5DFC();

      return v14;
    }
  }

  return 0;
}

uint64_t sub_1E13F0258(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v3 = sub_1E1AF49CC();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_localizedStringTables);
  v10 = *(v9 + 16);
  v14[1] = v4 + 16;
  while (1)
  {
    if (v10 == v8)
    {

      return v15;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v3);
    v11 = sub_1E1AF499C();
    v13 = v12;
    result = (*(v4 + 8))(v7, v3);
    if (v13)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1E13F0528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v7 = sub_1E1AF49CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v41 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v37 = v13;
    v38 = v4;
    v16 = objc_opt_self();

    v17 = [v16 mainBundle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
    v18 = swift_allocObject();
    v36 = xmmword_1E1B02CC0;
    *(v18 + 16) = xmmword_1E1B02CC0;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;

    sub_1E1AF49AC();
    v19 = a3;
    if (qword_1EE1E31F8 != -1)
    {
LABEL_11:
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_1EE1E3200;
    v21 = swift_allocObject();
    *(v21 + 16) = v36;
    *(v21 + 32) = v19;
    *(v21 + 40) = a4;
    v22 = v20;
    v23 = v37;
    sub_1E1AF49AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35A8);
    v24 = *(v8 + 72);
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E1B02CD0;
    v27 = v26 + v25;
    v28 = *(v8 + 16);
    v28(v27, v15, v7);
    v28(v27 + v24, v23, v7);
    sub_1E1728348(v26);
    v29 = *(v8 + 8);
    v29(v23, v7);
    v29(v15, v7);
  }

  v19 = &v41;
  sub_1E1728348(v30);
  v15 = 0;
  v31 = v41;
  v32 = *(v41 + 16);
  a4 = v8 + 16;
  while (v32 != v15)
  {
    if (v15 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    (*(v8 + 16))(v11, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15++, v7);
    v19 = sub_1E1AF499C();
    v34 = v33;
    (*(v8 + 8))(v11, v7);
    if (v34)
    {

      return v19;
    }
  }

  return v39;
}

uint64_t sub_1E13F09A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v26 = a1;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - v5;
  v6 = sub_1E1AF49CC();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v22 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v25 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v24;
      Locale.normalizedLocale.getter(v24);
      v17 = sub_1E1AEFF8C();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E6530];
      *(v18 + 16) = xmmword_1E1B02CC0;
      v20 = MEMORY[0x1E69E65A8];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = v23;
      v21 = sub_1E1AF5E2C();

      sub_1E1308058(v16, &qword_1ECEB2FC8);
      return v21;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6);
    sub_1E1AF499C();
    v15 = v14;
    result = (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E13F0CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v23 = a1;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v19 - v5;
  v6 = sub_1E1AF49CC();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v19 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v22 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v21;
      Locale.normalizedLocale.getter(v21);
      v17 = sub_1E1AEFF8C();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      sub_1E14D6974(v20);
      v18 = sub_1E1AF5E2C();

      sub_1E1308058(v16, &qword_1ECEB2FC8);
      return v18;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6);
    sub_1E1AF499C();
    v15 = v14;
    result = (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E13F1034(uint64_t a1)
{
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    [v6 doubleValue];
    v10 = qword_1F5C21140;
    if (*&qword_1F5C21140 <= v9)
    {
      v22 = 0;
    }

    else
    {
      v10 = qword_1F5C21148;
      if (*&qword_1F5C21148 <= v9)
      {
        v22 = 1;
      }

      else
      {
        v10 = qword_1F5C21150;
        if (*&qword_1F5C21150 <= v9)
        {
          v22 = 2;
        }

        else
        {
          v10 = qword_1F5C21158;
          if (*&qword_1F5C21158 > v9)
          {
            v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
            if (v11)
            {
              v12 = v11;
              v13 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
              v1 = v12;
              v2 = [v13 init];
              [v2 setNumberStyle_];
              [v2 setFormatterBehavior_];
              Locale.normalizedLocale.getter(v8);
              v14 = sub_1E1AEFF2C();
              (*(v5 + 8))(v8, v4);
              [v2 setLocale_];

              [v2 setMinimumFractionDigits_];
              v15 = [v2 stringFromNumber_];
              if (v15)
              {
                v16 = v15;
                v17 = sub_1E1AF5DFC();
                v19 = v18;

                v20._object = 0x80000001E1B5D2E0;
                v20._countAndFlagsBits = 0xD000000000000012;
                v21._countAndFlagsBits = 0;
                v21._object = 0xE000000000000000;
                localizedString(_:comment:)(v20, v21);
LABEL_17:
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
                v37 = swift_allocObject();
                *(v37 + 16) = xmmword_1E1B02CC0;
                *(v37 + 56) = MEMORY[0x1E69E6158];
                *(v37 + 64) = sub_1E13C2F48();
                *(v37 + 32) = v17;
                *(v37 + 40) = v19;
                sub_1E1AF5E3C();

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:

            __break(1u);
            return;
          }

          v22 = 3;
        }
      }
    }

    v23 = &unk_1F5C21160 + 16 * v22;
    v2 = *(v23 + 4);
    v1 = *(v23 + 5);
    v24 = round(v9 / *&v10 * 10.0) / 10.0;
    v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v26 = [v25 initWithDouble_];
    if (v26)
    {
      v27 = v26;
      v28 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
      v29 = v27;
      v30 = [v28 init];
      [v30 setNumberStyle_];
      [v30 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v8);
      v31 = sub_1E1AEFF2C();
      (*(v5 + 8))(v8, v4);
      [v30 setLocale_];

      [v30 setMinimumFractionDigits_];
      v32 = [v30 stringFromNumber_];
      if (v32)
      {
        v33 = v32;
        v17 = sub_1E1AF5DFC();
        v19 = v34;

        v35._countAndFlagsBits = v2;
        v35._object = v1;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        localizedString(_:comment:)(v35, v36);

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_1E13F16B0(uint64_t a1)
{
  v2 = sub_1E1AEFF8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = [v4 longLongValue];
    sub_1E1AF5EBC();
    v8 = ASKFormattedCountCreate();

    if (v8)
    {
      sub_1E1AF5F8C();
      free(v8);
      return;
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    if (v9)
    {
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
      v12 = v10;
      v13 = [v11 init];
      [v13 setNumberStyle_];
      [v13 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v6);
      v14 = sub_1E1AEFF2C();
      (*(v3 + 8))(v6, v2);
      [v13 setLocale_];

      [v13 setMinimumFractionDigits_];
      v15 = [v13 stringFromNumber_];
      if (v15)
      {
        v16 = v15;
        sub_1E1AF5DFC();

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E13F19C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = sub_1E1AEFE6C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1E1380BEC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E1308058(v7, &unk_1ECEBB780);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_1E1AEFE5C();
    (*(v9 + 16))(v5, v14, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v16 = sub_1E13F1C54(v5, 0xD000000000000013, 0x80000001E1B55D80);
    sub_1E1308058(v5, &unk_1ECEBB780);
    v17 = *(v9 + 8);
    v17(v12, v8);
    v17(v14, v8);
    return v16;
  }
}

uint64_t sub_1E13F1C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1E1AEFE6C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  sub_1E1AEFE5C();
  sub_1E1380BEC(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_1E1308058(v11, &unk_1ECEBB780);
    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  result = sub_1E1AEFD9C();
  v21 = floor(v20 / 31536000.0);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 >= 1)
  {
    v22 = sub_1E13F09A8(0xD000000000000012, 0x80000001E1B5D2C0, v21);
    v23 = *(v13 + 8);
    v23(v16, v12);
    v23(v18, v12);
    return v22;
  }

  v24 = floor(v20 / 86400.0);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v24 >= 7)
  {
    (*(v13 + 16))(v9, v16, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v25 = 0x64204D4D4DLL;
    v26 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v24 < 1)
  {
    v28 = floor(v20 / 3600.0);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v28 > -9.22337204e18)
      {
        if (v28 < 9.22337204e18)
        {
          v29 = (v13 + 8);
          if (v28 < 1)
          {
            v31._countAndFlagsBits = 0xD000000000000011;
            v31._object = 0x80000001E1B5D220;
            v32._countAndFlagsBits = 0;
            v32._object = 0xE000000000000000;
            countAndFlagsBits = localizedString(_:comment:)(v31, v32)._countAndFlagsBits;
          }

          else
          {
            countAndFlagsBits = sub_1E13F09A8(0xD000000000000012, 0x80000001E1B5D240, v28);
          }

          v22 = countAndFlagsBits;
          v33 = *v29;
          (*v29)(v16, v12);
          v33(v18, v12);
          return v22;
        }

LABEL_34:
        __break(1u);
        return result;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  (*(v13 + 16))(v9, v16, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v25 = 69;
  v26 = 0xE100000000000000;
LABEL_16:
  v22 = sub_1E13F2BB8(v25, v26, v9, a2, a3);
  sub_1E1308058(v9, &unk_1ECEBB780);
  v27 = *(v13 + 8);
  v27(v16, v12);
  v27(v18, v12);
  return v22;
}

uint64_t sub_1E13F2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a4;
  v54 = a1;
  v55 = a3;
  v9 = sub_1E1AEFF8C();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF005C();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a5;
  v23 = v22;
  sub_1E1380BEC(v21, v17);
  if ((*(v23 + 48))(v17, 1, v18) == 1)
  {
    sub_1E1308058(v17, &unk_1ECEBB780);
    return 0;
  }

  v48 = v20;
  v49 = a2;
  v47 = v23;
  (*(v23 + 32))(v20, v17, v18);
  v25 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_dynamicDateFormatters;
  swift_beginAccess();
  v26 = *(v6 + v25);
  v27 = v18;
  v28 = v53;
  if (!*(v26 + 16))
  {
    goto LABEL_7;
  }

  v29 = sub_1E13018F8(v55, v28);
  if ((v30 & 1) == 0)
  {

LABEL_7:
    v32 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v32 setFormattingContext_];
    sub_1E1AEFF7C();
    v33 = sub_1E1AEFFFC();
    (*(v50 + 8))(v14, v12);
    [v32 setCalendar_];

    Locale.normalizedLocale.getter(v11);
    v34 = sub_1E1AEFF2C();
    (*(v51 + 8))(v11, v52);
    [v32 setLocale_];

    v35 = v55;
    v36 = sub_1E1AF5DBC();
    [v32 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();

    v31 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v6 + v25);
    *(v6 + v25) = 0x8000000000000000;
    sub_1E1599430(v31, v35, v28, isUniquelyReferenced_nonNull_native);

    *(v6 + v25) = v56;
    swift_endAccess();
    goto LABEL_8;
  }

  v31 = *(*(v26 + 56) + 8 * v29);

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1E1B02CC0;
  v39 = v31;
  v40 = v48;
  v41 = sub_1E1AEFDBC();
  v42 = [v39 stringFromDate_];

  v43 = sub_1E1AF5DFC();
  v45 = v44;

  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1E13C2F48();
  *(v38 + 32) = v43;
  *(v38 + 40) = v45;
  v46 = sub_1E1AF5E3C();

  (*(v47 + 8))(v40, v27);
  return v46;
}

uint64_t sub_1E13F2BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_1E1AEFF8C();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF005C();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v46 - v18;
  v20 = sub_1E1AEFE6C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v26 = v25;
  sub_1E1380BEC(v24, v19);
  if ((*(v21 + 48))(v19, 1, v26) == 1)
  {
    sub_1E1308058(v19, &unk_1ECEBB780);
    return 0;
  }

  v28 = *(v21 + 32);
  v47 = v26;
  v48 = v23;
  v28(v23, v19, v26);
  v46[1] = a4;
  v46[2] = a5;
  v57 = a4;
  v58 = a5;
  v46[3] = a1;
  v55 = a1;
  v56 = v53;

  v55 = sub_1E1AF608C();
  v56 = v29;
  sub_1E1AF5F5C();
  v31 = v55;
  v30 = v56;
  v32 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_dateFormatters;
  swift_beginAccess();
  v33 = *(v6 + v32);
  if (!*(v33 + 16))
  {
    goto LABEL_7;
  }

  v34 = sub_1E13018F8(v31, v30);
  if ((v35 & 1) == 0)
  {

LABEL_7:
    v37 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];

    [v37 setFormattingContext_];
    sub_1E1AEFF7C();
    v38 = sub_1E1AEFFFC();
    (*(v49 + 8))(v16, v50);
    [v37 setCalendar_];

    Locale.normalizedLocale.getter(v13);
    v39 = sub_1E1AEFF2C();
    (*(v51 + 8))(v13, v52);
    [v37 setLocale_];

    v40 = sub_1E1AF5DBC();
    [v37 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();
    v36 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v6 + v32);
    *(v6 + v32) = 0x8000000000000000;
    sub_1E1599430(v36, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v6 + v32) = v54;
    swift_endAccess();
    goto LABEL_8;
  }

  v36 = *(*(v33 + 56) + 8 * v34);

LABEL_8:
  v42 = v48;
  v43 = sub_1E1AEFDBC();
  v44 = [v36 stringFromDate_];

  v45 = sub_1E1AF5DFC();
  (*(v21 + 8))(v42, v47);
  return v45;
}

uint64_t sub_1E13F32B4(uint64_t a1)
{
  v3 = sub_1E1AF005C();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFF8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEF75C();
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_1E1AEFE6C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  v23 = a1;
  v25 = v24;
  sub_1E1380BEC(v23, v15);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_1E1308058(v15, &unk_1ECEBB780);
    return 0;
  }

  v65 = v25;
  v66 = v17;
  (*(v17 + 32))(v22, v15, v25);
  sub_1E1AEFE5C();
  v64 = v1;
  Locale.normalizedLocale.getter(v8);
  sub_1E1AEFF7C();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35A0);
  v27 = sub_1E1AF004C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E1B070F0;
  v32 = *(v28 + 104);
  v32(v31 + v30, *MEMORY[0x1E6969A68], v27);
  v32(v31 + v30 + v29, *MEMORY[0x1E6969A78], v27);
  v32(v31 + v30 + 2 * v29, *MEMORY[0x1E6969A10], v27);
  v32(v31 + v30 + 3 * v29, *MEMORY[0x1E6969A48], v27);
  v32(v31 + v30 + 4 * v29, *MEMORY[0x1E6969A58], v27);
  v32(v31 + v30 + 5 * v29, *MEMORY[0x1E6969A98], v27);
  sub_1E1497560(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = v71;
  sub_1E1AEFFCC();

  (*(v67 + 8))(v33, v68);
  v34 = sub_1E1AEF72C();
  if ((v35 & 1) != 0 || (v36 = v34, v34 < 1))
  {
    v39 = sub_1E1AEF73C();
    if ((v40 & 1) == 0)
    {
      v36 = v39;
      if (v39 >= 1)
      {
        v38 = 0xD000000000000013;
        v37 = 0x80000001E1B5D2A0;
        goto LABEL_9;
      }
    }

    v43 = sub_1E1AEF6FC();
    v42 = v66;
    if ((v44 & 1) != 0 || (v45 = v43, v43 < 1))
    {
      v49 = sub_1E1AEF70C();
      if ((v50 & 1) == 0)
      {
        v45 = v49;
        if (v49 >= 1)
        {
          v48 = 0xD000000000000011;
          v47 = 0x80000001E1B5D260;
          goto LABEL_17;
        }
      }

      v55 = sub_1E1AEF71C();
      if ((v56 & 1) != 0 || (v45 = v55, v55 < 1))
      {
        v57 = sub_1E1AEF74C();
        if ((v58 & 1) != 0 || v57 < 1)
        {
          v61 = sub_1E13EF7F4();
          v62 = sub_1E1AEFDBC();
          v63 = [v61 stringFromDate_];

          v41 = sub_1E1AF5DFC();
          goto LABEL_19;
        }

        v59._countAndFlagsBits = 0xD000000000000011;
        v59._object = 0x80000001E1B5D220;
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v59, v60)._countAndFlagsBits;
LABEL_18:
        v41 = countAndFlagsBits;
LABEL_19:
        (*(v70 + 8))(v12, v69);
        goto LABEL_20;
      }

      v46 = "TIME_AGO_HOURS_AGO";
    }

    else
    {
      v46 = "TIME_AGO_WEEKS_AGO";
    }

    v47 = (v46 - 32) | 0x8000000000000000;
    v48 = 0xD000000000000012;
LABEL_17:
    countAndFlagsBits = sub_1E13F09A8(v48, v47, v45);
    goto LABEL_18;
  }

  v37 = 0x80000001E1B5D2C0;
  v38 = 0xD000000000000012;
LABEL_9:
  v41 = sub_1E13F09A8(v38, v37, v36);
  (*(v70 + 8))(v12, v69);
  v42 = v66;
LABEL_20:
  v52 = *(v42 + 8);
  v53 = v20;
  v54 = v65;
  v52(v53, v65);
  v52(v22, v54);
  return v41;
}

id sub_1E13F3A24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  if (a3)
  {
    sub_1E1AEFE3C();
    v10 = sub_1E1AEFE6C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1E1AEFE6C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
  v14 = v13;

  sub_1E1308058(v9, &unk_1ECEBB780);
  if (v14)
  {
    v15 = sub_1E1AF5DBC();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_1E13F3B9C(uint64_t a1)
{
  v2 = 0xD000000000000011;

  v3 = sub_1E13F41D4();
  v4 = "IAP_DURATION_MONTH";
  if (v3 > 2u)
  {
    if (v3 != 3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v6 = sub_1E1AF74AC();

  if ((v6 & 1) == 0)
  {
    v4 = "IAP_DURATION_WEEK";
    if (v3 > 1u)
    {
      v2 = 0xD000000000000012;
      goto LABEL_14;
    }

    v7 = sub_1E1AF74AC();

    if (v7)
    {
      v2 = 0xD000000000000012;
      return sub_1E13F09A8(v2, v4 | 0x8000000000000000, a1);
    }

    v4 = "IAP_DURATION_DAY";
    if (v3 == 1)
    {
      goto LABEL_14;
    }

    v8 = sub_1E1AF74AC();

    if (v8)
    {
      return sub_1E13F09A8(v2, v4 | 0x8000000000000000, a1);
    }

    v2 = 0xD000000000000010;
    v4 = "$_relativeDateFormatter";
    if (!v3)
    {
LABEL_14:

      return sub_1E13F09A8(v2, v4 | 0x8000000000000000, a1);
    }

    v9 = sub_1E1AF74AC();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1E13F09A8(v2, v4 | 0x8000000000000000, a1);
}

id LegacyLocalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyLocalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyLocalizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LegacyLocalizer()
{
  result = qword_1EE1F34B8;
  if (!qword_1EE1F34B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13F40C4()
{
  result = sub_1E1AEFF8C();
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

uint64_t sub_1E13F4188()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E13F41D4()
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

char *AdInteractionAction.__allocating_init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *(a3 + 48);
  v14 = *(a3 + 50);
  v15 = &v12[OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 1) = v16;
  *(v15 + 2) = *(a3 + 32);
  v15[50] = v14;
  *(v15 + 24) = v13;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a4, v18);
  v20 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
  v22 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v39, &v36);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *v23 = v36;
    *(v23 + 1) = v24;
    *(v23 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v26 = v8;
    v27 = a4;
    v28 = a1;
    v29 = a2;
    v30 = v25;
    v31 = v9;
    v33 = v32;
    (*(v31 + 8))(v11, v26);
    v35[1] = v30;
    v35[2] = v33;
    a2 = v29;
    a1 = v28;
    a4 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  (*(v19 + 8))(a4, v18);
  sub_1E1308058(v39, &unk_1ECEB5670);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *AdInteractionAction.init(title:adActionMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  v32 = sub_1E1AEFEAC();
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v15) = *(a3 + 48);
  v17 = *(a3 + 50);
  v18 = v4 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics;
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  v18[50] = v17;
  *(v18 + 24) = v15;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  (*(v14 + 16))(v16, a4, v13);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v43, &v37);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v31 = v12;
    v23 = a4;
    v25 = v24;
    (*(v7 + 8))(v9, v32);
    v35 = v22;
    v36 = v25;
    a4 = v23;
    v12 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a4, v13);
  sub_1E1308058(v43, &unk_1ECEB5670);
  v26 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v42;
  v27 = v41;
  *v26 = v40;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v12, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v28 = v34;
  v4[2] = v33;
  v4[3] = v28;
  v4[4] = 0;
  v4[5] = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v4;
}

uint64_t AdInteractionAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = v3;
  v40 = *v3;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v42 = sub_1E1AF380C();
  v45 = *(v42 - 8);
  v14 = MEMORY[0x1EEE9AC00](v42);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v44 = a1;
  sub_1E1AF381C();
  v19 = *(v7 + 16);
  v55 = a2;
  v19(v13, a2, v6);
  v20 = v41;
  AdvertActionMetrics.init(deserializing:using:)(v18, v13, v53);
  if (v20)
  {

    v21 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v22 = 0x6E6F697463416461;
    v22[1] = 0xEF7363697274654DLL;
    v22[2] = v40;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    (*(v7 + 8))(v55, v6);
    (*(v45 + 8))(v44, v42);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v51[0] = v53[0];
    v51[1] = v53[1];
    *v52 = v54[0];
    *&v52[15] = *(v54 + 15);
    v40 = 0;
    sub_1E13F5148(v51);
    v23 = v44;
    sub_1E1AF381C();
    v24 = v6;
    v25 = v55;
    v19(v37, v55, v24);
    sub_1E13F519C();
    sub_1E1AF464C();
    v26 = v49;
    v27 = v50;
    v21 = v43;
    v28 = v43 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics;
    v29 = v47;
    *v28 = v46;
    *(v28 + 1) = v29;
    *(v28 + 2) = v48;
    v28[50] = v27;
    *(v28 + 24) = v26;
    v30 = v38;
    v31 = v42;
    (*(v45 + 16))(v38, v23, v42);
    v32 = v39;
    v19(v39, v25, v24);
    v33 = v40;
    v34 = Action.init(deserializing:using:)(v30, v32);
    if (!v33)
    {
      v21 = v34;
    }

    v41[1](v55, v24);
    (*(v45 + 8))(v23, v31);
  }

  return v21;
}

uint64_t AdInteractionAction.adActionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 8);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 16);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 24);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 32);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 40);
  v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 50);
  v9 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_1E13F51F0(v2, v3);
}

uint64_t AdInteractionAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E13F5240(*(v0 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 8));
  return v0;
}

uint64_t AdInteractionAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E13F5240(*(v0 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics), *(v0 + OBJC_IVAR____TtC11AppStoreKit19AdInteractionAction_adActionMetrics + 8));

  return swift_deallocClassInstance();
}

unint64_t sub_1E13F519C()
{
  result = qword_1EE1DD770;
  if (!qword_1EE1DD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DD770);
  }

  return result;
}

uint64_t sub_1E13F51F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E13F5240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for AdInteractionAction()
{
  result = qword_1EE1EF528;
  if (!qword_1EE1EF528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13F53DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF12AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E13F5444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1E1AF12AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E13F54B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E1AF12AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E13F552C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1E1AF12AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E13F55A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1E1AF12AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E13F5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1E1AF12AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles()
{
  result = qword_1EE1D3960;
  if (!qword_1EE1D3960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13F56FC()
{
  result = sub_1E1AF12AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TodayCardMediaList.init(deserializing:using:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v85 = a2;
  v77 = v3;
  v68 = *v3;
  v78 = sub_1E1AF39DC();
  v82 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v73 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v81 = v65 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v72 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v65 - v13;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v70 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v69 = v65 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v65 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v65 - v24;
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v67 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = v65 - v30;
  v86 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v71 = v16;
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v83 = v32;
  v84 = v15;
  v32(v25, v15);
  v75 = v27;
  v33 = *(v27 + 48);
  v80 = v26;
  if (v33(v14, 1, v26) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB1F90);
    v34 = sub_1E1AF5A7C();
    sub_1E13F62D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v35 = 0x7370756B636F6CLL;
    v35[1] = 0xE700000000000000;
    v35[2] = v68;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    (*(v82 + 8))(v85, v78);
    v83(v86, v84);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v75;
    v37 = *(v75 + 32);
    v68 = v31;
    v37(v79, v14, v80);
    sub_1E1AF46DC();
    v38 = v78;
    sub_1E1AF381C();
    v39 = v82 + 16;
    v40 = *(v82 + 16);
    v41 = v72;
    v42 = v85;
    v40(v72, v85, v38);
    sub_1E1AF464C();
    v43 = v81;
    v66 = v40;
    v40(v81, v42, v38);
    (*(v36 + 16))(v67, v79, v80);
    v44 = v43;
    v40(v41, v43, v38);
    type metadata accessor for Lockup();
    sub_1E13F62D4(&qword_1EE1E4F60, type metadata accessor for Lockup);
    v45 = sub_1E1AF631C();
    v46 = v77;
    *(v77 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_lockups) = v45;
    v47 = v86;
    sub_1E1AF381C();
    v48 = sub_1E1AF37CC();
    v50 = v49;
    v83(v23, v84);
    v51 = (v46 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_marketingText);
    *v51 = v48;
    v51[1] = v50;
    sub_1E1AF381C();
    v52 = v44;
    v53 = v44;
    v54 = v78;
    v55 = v66;
    v66(v41, v53, v78);
    type metadata accessor for Artwork();
    sub_1E13F62D4(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    *(v46 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworks) = sub_1E1AF630C();
    sub_1E1AF381C();
    v55(v41, v52, v54);
    v65[1] = v39;
    type metadata accessor for Video();
    sub_1E13F62D4(&qword_1EE1E52D0, type metadata accessor for Video);
    *(v46 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_videos) = sub_1E1AF630C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
    sub_1E1AF381C();
    v55(v41, v81, v54);
    sub_1E13F6220();
    sub_1E1AF464C();
    *(v46 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = v87;
    v56 = v69;
    sub_1E1AF381C();
    LOBYTE(v48) = sub_1E1AF370C();
    v57 = v84;
    v83(v56, v84);
    *(v46 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_isMediaDark) = v48 & 1;
    v58 = v70;
    (*(v71 + 16))(v70, v47, v57);
    v59 = v73;
    v55(v73, v85, v54);
    v60 = v74;
    v61 = TodayCardMedia.init(deserializing:using:)(v58, v59);
    if (v60)
    {
      v26 = v82 + 8;
      v62 = *(v82 + 8);
      v62(v85, v54);
      v83(v86, v84);
      v62(v81, v54);
      sub_1E1308058(v76, &unk_1ECEB1770);
      (*(v75 + 8))(v79, v80);
    }

    else
    {
      v26 = v61;
      v64 = *(v82 + 8);
      v64(v85, v54);
      v83(v86, v84);
      v64(v81, v54);
      sub_1E1308058(v76, &unk_1ECEB1770);
      (*(v75 + 8))(v79, v80);
    }
  }

  return v26;
}

unint64_t sub_1E13F6220()
{
  result = qword_1EE1D2660;
  if (!qword_1EE1D2660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB35B0);
    sub_1E13F62D4(&qword_1EE1D44D0, type metadata accessor for TodayCardArtworkSizedLayoutMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2660);
  }

  return result;
}

uint64_t sub_1E13F62D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TodayCardMediaList.__allocating_init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = sub_1E1AEFEAC();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_lockups) = a1;
  v20 = (v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_marketingText);
  *v20 = a2;
  v20[1] = a3;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworks) = a4;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_videos) = a5;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_isMediaDark) = a7;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_1E134FD1C(a8, v19 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v34, &v31, &unk_1ECEB5670);
  if (*(&v32 + 1))
  {
    v21 = v32;
    *(v19 + 32) = v31;
    *(v19 + 48) = v21;
    *(v19 + 64) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v27 + 8))(v18, v28);
    v29 = v22;
    v30 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  sub_1E1308058(a8, &unk_1ECEB1770);
  sub_1E1308058(v34, &unk_1ECEB5670);
  *(v19 + 16) = 2;
  *(v19 + 24) = 1;
  return v19;
}

uint64_t TodayCardMediaList.init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v17 = sub_1E1AEFEAC();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v29 - v21;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_lockups) = a1;
  v23 = (v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_marketingText);
  *v23 = a2;
  v23[1] = a3;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworks) = a4;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_videos) = a5;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_isMediaDark) = v31;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1E134FD1C(a8, v22, &unk_1ECEB1770);
  sub_1E134FD1C(v40, &v34, &unk_1ECEB5670);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v32 = v24;
    v33 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670);
  }

  sub_1E1308058(a8, &unk_1ECEB1770);
  sub_1E1308058(v40, &unk_1ECEB5670);
  v27 = v38;
  *(v9 + 32) = v37;
  *(v9 + 48) = v27;
  *(v9 + 64) = v39;
  sub_1E134B7C8(v22, v9 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v9 + 16) = 2;
  *(v9 + 24) = 1;
  return v9;
}

uint64_t TodayCardMediaList.marketingText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_marketingText);

  return v1;
}

uint64_t TodayCardMediaList.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL TodayCardMediaList.hasMedia.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      return 1;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_videos);
  if (v4 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

char *TodayCardMediaList.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18TodayCardMediaList_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E68FFD80](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E172DC1C(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1E172DC1C((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E13F6BF0()
{
}

uint64_t TodayCardMediaList.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaList.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaList()
{
  result = qword_1EE1DD8D8;
  if (!qword_1EE1DD8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.__allocating_init(adamId:)(uint64_t *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  *(result + 16) = 3;
  *(result + 40) = 1;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

uint64_t NewToMajorOSVersionCardTrigger.init(adamId:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 16) = 3;
  *(v1 + 40) = 1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return v1;
}

id sub_1E13F6FFC()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_1E13E44F8(v8);
  }

  return 0;
}

uint64_t NewToMajorOSVersionCardTrigger.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

void sub_1E13F711C(void (*a1)(uint64_t))
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E13F6FFC();
  v5 = v4;

  if (v5)
  {
    v6 = 1;
LABEL_5:
    a1(v6);
    return;
  }

  v7 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v8 = [objc_opt_self() processInfo];
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = v7;
    v9 = [v8 isOperatingSystemAtLeastVersion_];

    v6 = v9;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1E13F71FC()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1E1AF5DBC();
  [v1 setInteger:v3 forKey:v2];
}

void sub_1E13F72D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E1AF5DBC();
  [v0 removeObjectForKey_];
}

uint64_t sub_1E13F7398(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void sub_1E13F7428()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E13F6FFC();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = [objc_opt_self() processInfo];
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = v4;
      [v5 isOperatingSystemAtLeastVersion_];
    }
  }
}

uint64_t NewToMajorOSVersionCardTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E13F7550@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
}

uint64_t sub_1E13F7560()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t ArcadePageUrls.nonSubscriberUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArcadePageUrls() + 20);

  return sub_1E1307FE8(v3, a1);
}

uint64_t type metadata accessor for ArcadePageUrls()
{
  result = qword_1EE1F42E8;
  if (!qword_1EE1F42E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadePageUrls.init(subscriberUrl:nonSubscriberUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E13E23F8(a1, a3);
  v5 = a3 + *(type metadata accessor for ArcadePageUrls() + 20);

  return sub_1E13E23F8(a2, v5);
}

void sub_1E13F7800()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_1E13F78BC()
{
  v3[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = 0.0;
  v3[0] = 0.0;
  if ([v1 getWhite:v3 alpha:&v2])
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWhite:v3[0] alpha:v2 * 0.8];
  }

  return v1;
}

AppStoreKit::BreakoutDetailsDisplayProperties::DetailPosition_optional __swiftcall BreakoutDetailsDisplayProperties.DetailPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BreakoutDetailsDisplayProperties.DetailPosition.rawValue.getter()
{
  v1 = 0x676E696C69617274;
  if (*v0 != 1)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E13F7A68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (*a2 != 1)
  {
    v8 = 0x7265746E6563;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E13F7B64()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E13F7C04()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E13F7C90()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E13F7D38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v5 = 0x7265746E6563;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *BreakoutDetailsDisplayProperties.init(position:wantsBlur:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t BreakoutDetailsDisplayProperties.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  sub_1E1AF381C();
  sub_1E13F7FB4();
  sub_1E1AF369C();
  v13 = *(v7 + 8);
  v13(v12, v6);
  LOBYTE(v12) = v17[31];
  sub_1E1AF381C();
  v14 = sub_1E1AF370C();
  v15 = sub_1E1AF39DC();
  (*(*(v15 - 8) + 8))(a2, v15);
  v13(a1, v6);
  result = (v13)(v10, v6);
  *a3 = v12;
  a3[1] = v14 & 1;
  return result;
}

unint64_t sub_1E13F7FB4()
{
  result = qword_1EE1D5DB0;
  if (!qword_1EE1D5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D5DB0);
  }

  return result;
}

unint64_t sub_1E13F800C()
{
  result = qword_1ECEB35B8;
  if (!qword_1ECEB35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB35B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreakoutDetailsDisplayProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BreakoutDetailsDisplayProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id EmptyLayoutSectionProvider.layoutSection(for:with:in:shelfLayoutSpacingProvider:shelfSupplementaryProvider:itemSupplementaryProvider:asPartOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1E13926F0(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_1E13F85BC(v4);
  return v6;
}

id sub_1E13F84E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1E13926F0(a1, &v8 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = _sSo25NSCollectionLayoutSectionC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v4);
  sub_1E13F85BC(v4);
  return v6;
}

uint64_t sub_1E13F85BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VideoPlayerState.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E13F86C0()
{
  result = qword_1ECEB35C8;
  if (!qword_1ECEB35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB35C8);
  }

  return result;
}

void __swiftcall NqmlConfiguration.init(font:)(AppStoreKit::NqmlConfiguration *__return_ptr retstr, UIFont font)
{
  retstr->newline._countAndFlagsBits = 10;
  retstr->newline._object = 0xE100000000000000;
  retstr->font = font;
  v3 = font.super.isa;
  retstr->paragraphStyle.super.isa = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
  retstr->listItemBullet._countAndFlagsBits = 161644770;
  retstr->listItemBullet._object = 0xA400000000000000;
  retstr->listItemStyle.super.isa = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  retstr->orderedListItemStyle.super.isa = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  retstr->orderedListItemBulletFormat._countAndFlagsBits = 606245;
  retstr->orderedListItemBulletFormat._object = 0xE300000000000000;
}

uint64_t NqmlConfiguration.newline.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NqmlConfiguration.newline.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NqmlConfiguration.listItemBullet.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NqmlConfiguration.listItemBullet.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NqmlConfiguration.orderedListItemBulletFormat.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NqmlConfiguration.orderedListItemBulletFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E13F8A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E13F8AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E13F8B48()
{
  result = sub_1E1AF5DFC();
  qword_1ECEB35D0 = result;
  *algn_1ECEB35D8 = v1;
  return result;
}

uint64_t sub_1E13F8B78()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215DD0);
  __swift_project_value_buffer(v4, qword_1EE215DD0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E13F8CD0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_1E13F8D34(&v7);
}

uint64_t sub_1E13F8D34(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v12 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  result = swift_beginAccess();
  v14 = v2[v12];
  if (a1 != v14)
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v15 = sub_1E1AF68EC();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v14;
    aBlock[4] = sub_1E13FEF00;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_94;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v11, v7, v17);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1E13F902C(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = a2;
    (*(v6 + 8))(&v8, a1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E13F90CC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E13F9120()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  return (*(v0 + v1) > 7uLL) | (0x43u >> *(v0 + v1)) & 1;
}

uint64_t sub_1E13F917C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1E134FD1C(a1, &v10 - v5, &unk_1ECEB4B60);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  sub_1E13F931C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1E13F9254@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB4B60);
}

uint64_t sub_1E13F92BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  sub_1E13F931C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E13F931C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1E13F93EC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E13F9438()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1E1AF591C();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for VideoPlaybackFailure();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v14, v9, &qword_1ECEB35E8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E1308058(v9, &qword_1ECEB35E8);
  }

  sub_1E13FED5C(v9, v13);
  if (qword_1EE1E0700 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EE215DD0);
  (*(v32 + 16))(v31, v16, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  *(&v34 + 1) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  sub_1E13FEDC0(v13, boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(&v33, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v18 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v18, v4, &unk_1ECEB4B60);
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v4, 1, v19) == 1)
  {
    sub_1E1308058(v4, &unk_1ECEB4B60);
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    *(&v34 + 1) = v19;
    v21 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(v20 + 32))(v21, v4, v19);
  }

  sub_1E1AF383C();
  sub_1E1308058(&v33, &qword_1ECEB2DF0);
  v22 = v31;
  sub_1E1AF54AC();

  (*(v32 + 8))(v22, v5);
  v23 = v1 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 56))(v13, ObjectType, v24);
    result = swift_unknownObjectRelease();
  }

  v26 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failureCount);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failureCount) = v28;
    if ((v28 - 3) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v29 = sub_1E13FC808();
      sub_1E13FA87C(v29);
    }

    return sub_1E13FEE24(v13);
  }

  return result;
}

void sub_1E13F99D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong play];
  }
}

uint64_t sub_1E13F9A2C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  if (*(v0 + v1) != 7)
  {
    [v0 rate];
    if (v2 > 0.0)
    {
      v3 = [v0 error];
      if (!v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E13F9ABC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13F9B00(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E13F9BB0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldLoopPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E13F9BF4(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldLoopPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E13F9CF4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E13F9D60(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
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

char *VideoPlayer.init(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state] = 0;
  v6 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(&v1[v6], 1, 1, v7);
  v10 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for VideoObserver()) init];
  *&v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem] = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
  v12 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  *&v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failureCount] = 0;
  v13 = &v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks];
  *v13 = 0;
  v13[2] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldLoopPlayback] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_seekingToZeroForLoop] = 0;
  v14 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeGuard;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v15 = &v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v15[24] = 1;
  *&v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v5, a1, v7);
  v9(v5, 0, 1, v7);
  swift_beginAccess();
  sub_1E13F931C(v5, &v1[v6]);
  swift_endAccess();
  v16 = type metadata accessor for VideoPlayer();
  v26.receiver = v1;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  [v17 setPreventsDisplaySleepDuringVideoPlayback_];
  [v17 setMuted_];
  [v17 setActionAtItemEnd_];
  v18 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver;
  *(*&v17[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver] + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_delegate + 8) = &off_1F5C33218;
  swift_unknownObjectWeakAssign();
  v19 = *&v17[v18];
  v20 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded;
  if (*(v19 + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded) == 1)
  {

    (*(v8 + 8))(a1, v7);
  }

  else
  {
    v21 = v19;
    v22 = sub_1E1AF5DBC();
    [v17 addObserver:v21 forKeyPath:v22 options:1 context:&unk_1ECEB3608];

    v23 = sub_1E1AF5DBC();
    [v17 addObserver:v21 forKeyPath:v23 options:1 context:&unk_1ECEB3608];

    (*(v8 + 8))(a1, v7);
    *(v19 + v20) = 1;
  }

  return v17;
}

uint64_t type metadata accessor for VideoPlayer()
{
  result = qword_1EE1E06E0;
  if (!qword_1EE1E06E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id VideoPlayer.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver;
  v3 = *&v0[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver];
  v4 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = v5;
  v7 = v3;
  sub_1E1402328(v5);

  v8 = *&v1[v2];
  v9 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded;
  if (*(v8 + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded) == 1)
  {
    v10 = v8;
    v11 = v1;
    v12 = sub_1E1AF5DBC();
    [v11 removeObserver:v10 forKeyPath:v12 context:&unk_1ECEB3608];

    v13 = sub_1E1AF5DBC();
    [v11 removeObserver:v10 forKeyPath:v13 context:&unk_1ECEB3608];

    *(v8 + v9) = 0;
    v8 = *&v1[v2];
  }

  else
  {
    v14 = v1;
  }

  v15 = v8;
  sub_1E1402C04(v1);

  v17.receiver = v1;
  v17.super_class = type metadata accessor for VideoPlayer();
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_1E13FA4B0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  if (v0[v2] == 7)
  {
    goto LABEL_6;
  }

  [v0 rate];
  if (v3 > 0.0)
  {
    v4 = [v0 error];
    if (!v4)
    {
      return;
    }
  }

  if (v0[v2])
  {
LABEL_6:
    v5 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
    swift_beginAccess();
    v6 = *&v0[v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v0 currentItem];
      if (v8)
      {
      }

      else
      {
        v9 = *&v0[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoObserver];
        v10 = OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded;
        if (*(v9 + OBJC_IVAR____TtC11AppStoreKit13VideoObserver_playerObserversAdded) != 1)
        {
          v11 = sub_1E1AF5DBC();
          [v0 addObserver:v9 forKeyPath:v11 options:1 context:&unk_1ECEB3608];

          v12 = sub_1E1AF5DBC();
          [v0 addObserver:v9 forKeyPath:v12 options:1 context:&unk_1ECEB3608];

          *(v9 + v10) = 1;
        }

        [v0 replaceCurrentItemWithPlayerItem_];
      }

      v13 = &v0[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks];
      if (v0[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks] == 1 && (v13[1] & 1) != 0 && (v13[2] & 1) != 0)
      {
        v14.receiver = v0;
        v14.super_class = type metadata accessor for VideoPlayer();
        objc_msgSendSuper2(&v14, sel_play);
      }
    }
  }

  else
  {
    sub_1E13FA87C();
  }
}

uint64_t sub_1E13FA714()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VideoPlayer();
  objc_msgSendSuper2(&v3, sel_pause);
  v1 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  result = swift_beginAccess();
  *(v0 + v1) = 0;
  return result;
}

void sub_1E13FA7E8()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks) == 1 && *(v0 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks + 1) != 0 && *(v0 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks + 2) != 0)
  {
    v3 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    v5 = *(MEMORY[0x1E6960CC0] + 16);
    v7.receiver = v0;
    v7.super_class = type metadata accessor for VideoPlayer();
    v6[0] = v4;
    v6[1] = *(v3 + 8);
    v6[2] = v5;
    objc_msgSendSuper2(&v7, sel_seekToTime_, v6);
  }
}

uint64_t sub_1E13FA87C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v8, v3, &unk_1ECEB4B60);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1E1308058(v3, &unk_1ECEB4B60);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  if (*(v0 + v10))
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12)
  {
    v13 = [v12 asset];
    [v13 cancelLoading];
  }

  v14 = *(v0 + v10);
  *(v0 + v10) = 1;
  LOBYTE(v21[0]) = v14;
  sub_1E13F8D34(v21);
  v15 = v0 + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 32))(v0, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  sub_1E13FF2BC(v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_1E13006E4(0, &qword_1EE1E3430);

  v19 = sub_1E1AF68EC();
  v21[3] = v18;
  v21[4] = MEMORY[0x1E69AB720];
  v21[0] = v19;
  sub_1E1AF57FC();

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1E13FAC30(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E1AF620C();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v1;
    aBlock[4] = sub_1E13FEE80;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_61;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v8 loadValuesAsynchronouslyForKeys:v4 completionHandler:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1E13FAD84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    *v2 = sub_1E1AEFB1C();
    v5 = type metadata accessor for VideoPlaybackFailure();
    swift_storeEnumTagMultiPayload();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    sub_1E13FE5D8(v2, v4 + v6);
    swift_endAccess();
    sub_1E13F9438();

    return sub_1E1308058(v2, &qword_1ECEB35E8);
  }

  return result;
}

void sub_1E13FAED8(uint64_t a1, void *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v114 = sub_1E1AF320C();
  v3 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v113 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E1AF591C();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v100 - v9;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35F0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v106 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  v103 = v5;
  v104 = v3;
  v105 = a2;
  v26 = [a2 URL];
  sub_1E1AEFC5C();

  (*(v11 + 56))(v23, 0, 1, v10);
  v27 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
  swift_beginAccess();
  v28 = v25;
  v29 = *(v13 + 48);
  sub_1E134FD1C(v23, v15, &unk_1ECEB4B60);
  v115 = v28;
  v102 = v27;
  sub_1E134FD1C(&v28[v27], &v15[v29], &unk_1ECEB4B60);
  v30 = *(v11 + 48);
  v31 = v11;
  v32 = v10;
  if (v30(v15, 1, v10) == 1)
  {
    sub_1E1308058(v23, &unk_1ECEB4B60);
    if (v30(&v15[v29], 1, v10) == 1)
    {
      v101 = v30;
      v108 = v10;
      v100 = v31;
      sub_1E1308058(v15, &unk_1ECEB4B60);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  sub_1E134FD1C(v15, v20, &unk_1ECEB4B60);
  if (v30(&v15[v29], 1, v10) == 1)
  {
    sub_1E1308058(v23, &unk_1ECEB4B60);
    (*(v31 + 8))(v20, v10);
LABEL_7:
    sub_1E1308058(v15, &qword_1ECEB35F0);
LABEL_8:

    return;
  }

  v101 = v30;
  v33 = v108;
  (*(v31 + 32))(v108, &v15[v29], v32);
  sub_1E13028E4(&qword_1EE1E2328, MEMORY[0x1E6968FB0]);
  v34 = sub_1E1AF5DAC();
  v100 = v31;
  v35 = *(v31 + 8);
  v35(v33, v32);
  sub_1E1308058(v23, &unk_1ECEB4B60);
  v108 = v32;
  v35(v20, v32);
  sub_1E1308058(v15, &unk_1ECEB4B60);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v37 = aDuration_4[0];
  v36 = aDuration_4[1];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;

  v39 = sub_1E1AF5DBC();
  aBlock.n128_u64[0] = 0;
  v40 = v105;
  v41 = [v105 statusOfValueForKey:v39 error:&aBlock];

  v42 = aBlock.n128_u64[0];
  *(v38 + 16) = aBlock.n128_u64[0];
  v43 = v42;
  if (v41 == 3)
  {
    v44 = v110;
LABEL_13:
    v50 = v103;
    v51 = v109;
    if (qword_1EE1E0700 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v44, qword_1EE215DD0);
    (*(v51 + 16))(v116, v52, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    *(&v118 + 1) = MEMORY[0x1E69E6158];
    aBlock.n128_u64[0] = v37;
    aBlock.n128_u64[1] = v36;

    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    v53 = *(v38 + 16);
    if (v53)
    {
      v54 = sub_1E13006E4(0, &qword_1EE1D23C0);
    }

    else
    {
      v54 = 0;
      aBlock.n128_u64[1] = 0;
      *&v118 = 0;
    }

    aBlock.n128_u64[0] = v53;
    *(&v118 + 1) = v54;
    v55 = v53;
    sub_1E1AF38DC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    v56 = v116;
    sub_1E1AF54AC();

    (*(v51 + 8))(v56, v44);
    sub_1E13006E4(0, &qword_1EE1E3430);
    v57 = sub_1E1AF68EC();
    v58 = swift_allocObject();
    v59 = v115;
    v58[2] = v115;
    v58[3] = v37;
    v58[4] = v36;
    v58[5] = v38;
    v119 = sub_1E13FEE88;
    v120 = v58;
    aBlock.n128_u64[0] = MEMORY[0x1E69E9820];
    aBlock.n128_u64[1] = 1107296256;
    *&v118 = sub_1E1302D64;
    *(&v118 + 1) = &block_descriptor_70;
    v60 = _Block_copy(&aBlock);
    v61 = v59;

    v62 = v111;
    sub_1E1AF322C();
    aBlock.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v63 = v112;
    v64 = v114;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v62, v63, v60);
    _Block_release(v60);

    (*(v104 + 8))(v63, v64);
    (*(v113 + 8))(v62, v50);

    return;
  }

  v37 = aPlayable[0];
  v36 = aPlayable[1];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;

  v45 = sub_1E1AF5DBC();
  aBlock.n128_u64[0] = *(v38 + 16);
  v46 = [v40 statusOfValueForKey:v45 error:&aBlock];

  v47 = aBlock.n128_u64[0];
  v48 = *(v38 + 16);
  *(v38 + 16) = aBlock.n128_u64[0];
  v49 = v47;

  v44 = v110;
  if (v46 == 3)
  {
    goto LABEL_13;
  }

  v65 = [v40 isPlayable];
  v66 = v115;
  if (v65)
  {
    v67 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
    [v67 setPreferredForwardBufferDuration_];
    [v67 setAllowProgressiveSwitchUp_];
    [v67 setAllowProgressiveStartup_];
    [v67 setWillNeverSeekBackwardsHint_];
    v68 = [v67 setPlaybackLikelyToKeepUpTrigger_];
    v69 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeGuard;
    v70 = *&v66[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeGuard];
    v71 = MEMORY[0x1EEE9AC00](v68);
    *(&v100 - 2) = v66;
    [v70 lock];
    [v70 unlock];
    if ((BYTE8(v118) & 1) == 0)
    {
      v72 = [v67 seekToTime:&aBlock completionHandler:0];
      v73 = *&v66[v69];
      v74 = MEMORY[0x1EEE9AC00](v72);
      *(&v100 - 6) = v66;
      *(&v100 - 5) = 0;
      *(&v100 - 4) = 0;
      *(&v100 - 3) = 0;
      *(&v100 - 16) = 1;
      [v73 lock];
      [v73 unlock];
    }

    sub_1E13006E4(0, &qword_1EE1E3430);
    v75 = sub_1E1AF68EC();
    v76 = swift_allocObject();
    v76[2] = v66;
    v76[3] = v67;
    v77 = v105;
    v76[4] = v105;
    v119 = sub_1E13FEEC8;
    v120 = v76;
    aBlock.n128_u64[0] = MEMORY[0x1E69E9820];
    aBlock.n128_u64[1] = 1107296256;
    *&v118 = sub_1E1302D64;
    *(&v118 + 1) = &block_descriptor_82;
    v78 = _Block_copy(&aBlock);
    v79 = v66;
    v80 = v67;
    v81 = v77;

    v82 = v111;
    sub_1E1AF322C();
    aBlock.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v83 = v112;
    v84 = v114;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v82, v83, v78);
    _Block_release(v78);

    (*(v104 + 8))(v83, v84);
    (*(v113 + 8))(v82, v103);
  }

  else
  {
    if (qword_1EE1E0700 != -1)
    {
      swift_once();
    }

    v85 = __swift_project_value_buffer(v44, qword_1EE215DD0);
    v86 = v107;
    (*(v109 + 16))(v107, v85, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v87 = &v66[v102];
    v88 = v106;
    sub_1E134FD1C(v87, v106, &unk_1ECEB4B60);
    v89 = v108;
    if (v101(v88, 1, v108) == 1)
    {
      sub_1E1308058(v88, &unk_1ECEB4B60);
      aBlock = 0u;
      v118 = 0u;
    }

    else
    {
      *(&v118 + 1) = v89;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v100 + 32))(boxed_opaque_existential_0, v88, v89);
    }

    v91 = v103;
    sub_1E1AF38DC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v109 + 8))(v86, v44);
    sub_1E13006E4(0, &qword_1EE1E3430);
    v92 = sub_1E1AF68EC();
    v93 = swift_allocObject();
    v94 = v115;
    *(v93 + 16) = v115;
    v119 = sub_1E13FEE94;
    v120 = v93;
    aBlock.n128_u64[0] = MEMORY[0x1E69E9820];
    aBlock.n128_u64[1] = 1107296256;
    *&v118 = sub_1E1302D64;
    *(&v118 + 1) = &block_descriptor_76;
    v95 = _Block_copy(&aBlock);
    v96 = v94;

    v97 = v111;
    sub_1E1AF322C();
    aBlock.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v98 = v112;
    v99 = v114;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v97, v98, v95);
    _Block_release(v95);

    (*(v104 + 8))(v98, v99);
    (*(v113 + 8))(v97, v91);
  }
}

uint64_t sub_1E13FC184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  swift_beginAccess();
  v11 = *(a4 + 16);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = v11;
  v12 = type metadata accessor for VideoPlaybackFailure();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  v14 = v11;

  sub_1E13FE5D8(v10, a1 + v13);
  swift_endAccess();
  sub_1E13F9438();
  return sub_1E1308058(v10, &qword_1ECEB35E8);
}

uint64_t sub_1E13FC2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for VideoPlaybackFailure();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_1E13FE5D8(v4, a1 + v6);
  swift_endAccess();
  sub_1E13F9438();
  return sub_1E1308058(v4, &qword_1ECEB35E8);
}

uint64_t sub_1E13FC40C(char *a1, void *a2, void *a3)
{
  v6 = sub_1E1AF320C();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v13 = *&a1[v12];
  v14 = v13;
  sub_1E1402328(v13);

  [a1 replaceCurrentItemWithPlayerItem_];
  v15 = type metadata accessor for VideoPlayer();
  v31.receiver = a1;
  v31.super_class = v15;
  objc_msgSendSuper2(&v31, sel_pause);
  v16 = *&a1[v12];
  *&a1[v12] = a2;
  v17 = a2;

  sub_1E14020AC(a2);
  sub_1E1402574(a3, a1);
  a1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks] = 1;
  v18 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  if (a1[v18] == 1)
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v19 = sub_1E1AF68EC();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E13FEF30;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_88;
    v21 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v11, v8, v21);
    _Block_release(v21);

    (*(v29 + 8))(v8, v6);
    (*(v27 + 8))(v11, v28);
  }

  v22 = &a1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(v22 + 1);
    ObjectType = swift_getObjectType();
    (*(v24 + 40))(a1, ObjectType, v24);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E13FC808()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1E1AF320C();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v11 timebase];
  if (v12)
  {
    v13 = v12;
    Time = CMTimebaseGetTime(&aBlock, v12);
    v41 = v4;
    v15 = v7;
    v16 = v9;
    v17 = *&v0[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeGuard];
    *&v18 = MEMORY[0x1EEE9AC00](Time);
    *(&v40 - 6) = v0;
    *(&v40 - 5) = v18;
    *(&v40 - 3) = v19;
    *(&v40 - 16) = 0;
    [v17 lock];
    v20 = sub_1E13FE6B4();
    v21 = v17;
    v9 = v16;
    [v21 unlock];

    v7 = v15;
    v4 = v41;
  }

  v22 = *&v0[v10];
  if (v22)
  {
    v23 = [v22 asset];
  }

  else
  {
LABEL_6:
    v23 = 0;
  }

  [v23 cancelLoading];

  v24 = *&v1[v10];
  v25 = v24;
  sub_1E1402328(v24);

  [v1 replaceCurrentItemWithPlayerItem_];
  v26 = type metadata accessor for VideoPlayer();
  v50.receiver = v1;
  v50.super_class = v26;
  objc_msgSendSuper2(&v50, sel_pause);
  v27 = *&v1[v10];
  *&v1[v10] = 0;

  v28 = &v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks];
  *v28 = 0;
  v28[2] = 0;
  v29 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  if (v1[v29] == 1)
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v30 = sub_1E1AF68EC();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_1E13FE648;
    v48 = v31;
    aBlock.value = MEMORY[0x1E69E9820];
    *&aBlock.timescale = 1107296256;
    aBlock.epoch = sub_1E1302D64;
    v46 = &block_descriptor_5;
    v32 = _Block_copy(&aBlock);

    sub_1E1AF322C();
    aBlock.value = MEMORY[0x1E69E7CC0];
    sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v33 = v44;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v9, v33, v32);
    _Block_release(v32);

    (*(v42 + 8))(v33, v5);
    (*(v43 + 8))(v9, v7);
  }

  v34 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
  v35 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_1E13FE5D8(v4, &v1[v35]);
  v36 = swift_endAccess();
  sub_1E13F9438(v36);
  sub_1E1308058(v4, &qword_1ECEB35E8);
  *&v1[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failureCount] = 0;
  v37 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
  swift_beginAccess();
  v38 = v1[v37];
  v1[v37] = 0;
  v49 = v38;
  return sub_1E13F8D34(&v49);
}

void sub_1E13FCDB8(uint64_t a1)
{
  v126 = *(a1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v120 - v6;
  v8 = sub_1E1AF591C();
  v124 = *(v8 - 8);
  v125 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v120 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (&v120 - v15);
  v16 = sub_1E1AF320C();
  v122 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF324C();
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v30 = *(a1 + 48);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v48 = &v127[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v49 = *(v48 + 1);
      ObjectType = swift_getObjectType();
      (*(v49 + 16))(ObjectType, v49, v25);
    }

    else
    {
      v37 = v127;
      if (v30 == 4)
      {
        if (*&v25 == 0.0 && (v38 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state, swift_beginAccess(), v37[v38] == 5) && (v37[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_seekingToZeroForLoop] & 1) == 0)
        {
          v37[v38] = 4;
          LOBYTE(aBlock) = 5;
          sub_1E13F8D34(&aBlock);
          v102 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
          swift_beginAccess();
          v37[v102] = 0;
        }

        else if (*&v25 > 0.0)
        {
          v39 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
          swift_beginAccess();
          v40 = v37[v39];
          v37[v39] = 5;
          LOBYTE(time.value) = v40;
          sub_1E13F8D34(&time);
          v41 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
          swift_beginAccess();
          v37[v41] = 1;
        }

        return;
      }

      if (v126 | v26 | *&v25 | v27 | v28 | v29)
      {
        v59 = v126 | v26 | v27 | v28 | v29;
        if (*&v25 != 1 || v59)
        {
          if (*&v25 == 2 && !v59)
          {
            if (qword_1EE1E0700 != -1)
            {
              swift_once();
            }

            v91 = v125;
            v92 = __swift_project_value_buffer(v125, qword_1EE215DD0);
            (*(v124 + 16))(v13, v92, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
            sub_1E1AF382C();
            v93 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
            swift_beginAccess();
            sub_1E134FD1C(&v37[v93], v7, &unk_1ECEB4B60);
            v94 = sub_1E1AEFCCC();
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v7, 1, v94) == 1)
            {
              sub_1E1308058(v7, &unk_1ECEB4B60);
              aBlock = 0u;
              v129 = 0u;
            }

            else
            {
              *(&v129 + 1) = v94;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
              (*(v95 + 32))(boxed_opaque_existential_0, v7, v94);
            }

            sub_1E1AF383C();
            sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
            v119 = v125;
            sub_1E1AF549C();

            (*(v124 + 8))(v13, v119);
            return;
          }

          v99 = &v127[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          v100 = *(v99 + 1);
          v101 = swift_getObjectType();
          (*(v100 + 64))(v37, v101, v100);
        }

        else
        {
          v60 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldLoopPlayback;
          swift_beginAccess();
          if (v37[v60] == 1)
          {
            v37[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_seekingToZeroForLoop] = 1;
            v61 = MEMORY[0x1E6960CC0];
            v62 = *MEMORY[0x1E6960CC0];
            v63 = *(MEMORY[0x1E6960CC0] + 16);
            v64 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v130 = sub_1E13FED00;
            v131 = v64;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v129 = sub_1E1623918;
            *(&v129 + 1) = &block_descriptor_44;
            v65 = _Block_copy(&aBlock);

            *&aBlock = v62;
            *(&aBlock + 1) = *(v61 + 8);
            *&v129 = v63;
            [v37 seekToTime:&aBlock completionHandler:v65];
            _Block_release(v65);
          }

          else
          {
            v103 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
            swift_beginAccess();
            v104 = v37[v103];
            v37[v103] = 7;
            LOBYTE(v132[0]) = v104;
            sub_1E13F8D34(v132);
            [v37 pause];
            v105 = *(MEMORY[0x1E6960CC0] + 16);
            v132[0] = *MEMORY[0x1E6960CC0];
            v132[1] = *(MEMORY[0x1E6960CC0] + 8);
            v132[2] = v105;
            [v37 seekToTime_];
          }

          v106 = &v37[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          v107 = *(v106 + 1);
          v108 = swift_getObjectType();
          (*(v107 + 24))(v37, v108, v107);
        }
      }

      else
      {
        v70 = [v127 currentItem];
        if (!v70)
        {
          return;
        }

        v71 = v70;
        v72 = &v37[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_delegate];
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {

          return;
        }

        v73 = *(v72 + 1);
        v74 = swift_getObjectType();
        [v71 currentTime];
        Seconds = CMTimeGetSeconds(&time);
        (*(v73 + 48))(v37, v74, v73, Seconds);
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (*(a1 + 48))
  {
    if (v30 == 1)
    {
      v31 = v21;
      v32 = v20;
      v33 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
      v34 = v127;
      swift_beginAccess();
      v35 = v34[v33];
      if (v35 == 5)
      {
        goto LABEL_59;
      }

      if (LOBYTE(v25))
      {
        if (v35 == 7)
        {
          goto LABEL_59;
        }

        v36 = 3;
      }

      else
      {
        v36 = 6;
      }

      v34[v33] = v36;
      LOBYTE(aBlock) = v35;
      sub_1E13F8D34(&aBlock);
LABEL_59:
      v34[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks + 1] = LOBYTE(v25);
      v96 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if (v34[v96] == 1)
      {
        sub_1E13006E4(0, &qword_1EE1E3430);
        v45 = sub_1E1AF68EC();
        v97 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v130 = sub_1E13FEF30;
        v131 = v97;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v47 = &block_descriptor_49;
        goto LABEL_61;
      }

      return;
    }

    v120 = *(a1 + 16);
    v121 = v28;
    v51 = qword_1EE1E0700;
    v52 = v29;

    v122 = v52;

    if (v51 != -1)
    {
      swift_once();
    }

    v53 = v125;
    v54 = __swift_project_value_buffer(v125, qword_1EE215DD0);
    (*(v124 + 16))(v10, v54, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B07790;
    sub_1E1AF382C();
    v55 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_videoUrl;
    v56 = v127;
    swift_beginAccess();
    sub_1E134FD1C(&v56[v55], v4, &unk_1ECEB4B60);
    v57 = sub_1E1AEFCCC();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v4, 1, v57) == 1)
    {
      sub_1E1308058(v4, &unk_1ECEB4B60);
      aBlock = 0u;
      v129 = 0u;
    }

    else
    {
      *(&v129 + 1) = v57;
      v66 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
      (*(v58 + 32))(v66, v4, v57);
    }

    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    if (v126)
    {
      v25 = 0.0;
      v67 = 0;
      *(&aBlock + 1) = 0;
      *&v129 = 0;
    }

    else
    {
      v67 = MEMORY[0x1E69E6530];
    }

    *&aBlock = v25;
    *(&v129 + 1) = v67;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    if (v27)
    {
      v68 = MEMORY[0x1E69E6158];
      v69 = v120;
    }

    else
    {
      v69 = 0;
      v68 = 0;
      *&v129 = 0;
    }

    *&aBlock = v69;
    *(&aBlock + 1) = v27;
    *(&v129 + 1) = v68;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v76 = v127;
    if (v122)
    {
      v77 = MEMORY[0x1E69E6158];
      v78 = v121;
    }

    else
    {
      v78 = 0;
      v77 = 0;
      *&v129 = 0;
    }

    *&aBlock = v78;
    *(&aBlock + 1) = v122;
    *(&v129 + 1) = v77;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    v79 = v125;
    sub_1E1AF54AC();

    (*(v124 + 8))(v10, v79);
    v80 = v76;
    v81 = &v76[v55];
    v82 = v123;
    sub_1E134FD1C(v81, v123, &unk_1ECEB4B60);
    v83 = type metadata accessor for VideoPlaybackFailure();
    swift_storeEnumTagMultiPayload();
    (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    v84 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    goto LABEL_74;
  }

  if (*&v25 == 2)
  {
    v85 = v126;
    if (!v126)
    {
LABEL_73:
      v82 = v123;
      *v123 = v85;
      v116 = type metadata accessor for VideoPlaybackFailure();
      swift_storeEnumTagMultiPayload();
      (*(*(v116 - 8) + 56))(v82, 0, 1, v116);
      v84 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
      v80 = v127;
      swift_beginAccess();
      v117 = v85;
LABEL_74:
      sub_1E13FE5D8(v82, &v80[v84]);
      swift_endAccess();
      sub_1E13F9438();
      v115 = v82;
      goto LABEL_75;
    }

    v86 = v126;
    v87 = [v86 domain];
    v88 = sub_1E1AF5DFC();
    v90 = v89;

    if (qword_1ECEB0D98 != -1)
    {
      swift_once();
    }

    if (v88 == qword_1ECEB35D0 && v90 == *algn_1ECEB35D8)
    {
    }

    else
    {
      v109 = sub_1E1AF74AC();

      if ((v109 & 1) == 0)
      {
LABEL_72:
        sub_1E13FED08(a1);
        goto LABEL_73;
      }
    }

    if ([v86 code] == -11839)
    {
      v110 = v123;
      *v123 = v85;
      v111 = type metadata accessor for VideoPlaybackFailure();
      swift_storeEnumTagMultiPayload();
      (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
      v112 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_failure;
      v113 = v127;
      swift_beginAccess();
      v114 = v86;
      sub_1E13FE5D8(v110, &v113[v112]);
      swift_endAccess();
      sub_1E13F9438();
      sub_1E13FED08(a1);
      v115 = v110;
LABEL_75:
      sub_1E1308058(v115, &qword_1ECEB35E8);
      return;
    }

    goto LABEL_72;
  }

  v42 = *&v25 == 1;
  v43 = v127;
  if (v42)
  {
    v31 = v21;
    v32 = v20;
    v127[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playbackChecks + 2] = 1;
    v44 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (v43[v44] == 1)
    {
      sub_1E13006E4(0, &qword_1EE1E3430);
      v45 = sub_1E1AF68EC();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v130 = sub_1E13FEF30;
      v131 = v46;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v47 = &block_descriptor_54;
LABEL_61:
      *&v129 = sub_1E1302D64;
      *(&v129 + 1) = v47;
      v98 = _Block_copy(&aBlock);

      sub_1E1AF322C();
      *&aBlock = MEMORY[0x1E69E7CC0];
      sub_1E13028E4(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      sub_1E1AF6EEC();
      MEMORY[0x1E68FF640](0, v24, v18, v98);
      _Block_release(v98);

      (*(v122 + 8))(v18, v16);
      (*(v31 + 8))(v24, v32);
    }
  }
}

void sub_1E13FE148(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_seekingToZeroForLoop] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    if ((a1 & 1) != 0 && (v5 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), *(v4 + v5) == 1))
    {
      [v4 play];
    }

    else
    {
      v6 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_state;
      swift_beginAccess();
      v7 = *(v4 + v6);
      *(v4 + v6) = 7;
      v8 = v7;
      sub_1E13F8D34(&v8);
    }
  }
}

Float64 CMTime.seconds.getter(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  time.value = a1;
  *&time.timescale = a2;
  time.epoch = a3;
  return CMTimeGetSeconds(&time);
}

id VideoPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1E1AEFBEC();
  v5 = [v3 initWithURL_];

  v6 = sub_1E1AEFCCC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id VideoPlayer.__allocating_init(playerItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPlayerItem_];

  return v3;
}

void sub_1E13FE504(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_playerItem;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = v4;
  sub_1E1402328(v4);

  [v1 replaceCurrentItemWithPlayerItem_];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for VideoPlayer();
  objc_msgSendSuper2(&v8, sel_pause);
  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = a1;

  sub_1E14020AC(a1);
}

uint64_t sub_1E13FE5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E13FE650()
{
  result = qword_1EE1E3500;
  if (!qword_1EE1E3500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3500);
  }

  return result;
}

void sub_1E13FE6D4()
{
  sub_1E13FECAC(319, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1E13FECAC(319, qword_1EE1DB228, type metadata accessor for VideoPlaybackFailure);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E13FECAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E13FED5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13FEDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13FEE24(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlaybackFailure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1E13FEE9C@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized);
  v3 = v2[1].n128_u64[0];
  v4 = v2[1].n128_u8[8];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  return result;
}

__n128 sub_1E13FEED4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized);
  result = *(v0 + 24);
  *v3 = result;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u8[8] = v2;
  return result;
}