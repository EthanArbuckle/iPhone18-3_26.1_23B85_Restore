uint64_t sub_1CA0FE6C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA0FE708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.URLTemplate.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Artwork.URLTemplate.Key(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA0FE8B0()
{
  result = qword_1EE03E9C8[0];
  if (!qword_1EE03E9C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03E9C8);
  }

  return result;
}

unint64_t sub_1CA0FE904()
{
  result = qword_1EC4331A0;
  if (!qword_1EC4331A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331A0);
  }

  return result;
}

unint64_t sub_1CA0FE958()
{
  result = qword_1EC4331A8;
  if (!qword_1EC4331A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331A8);
  }

  return result;
}

unint64_t sub_1CA0FE9AC()
{
  result = qword_1EC4331B0;
  if (!qword_1EC4331B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331B0);
  }

  return result;
}

unint64_t sub_1CA0FEA00()
{
  result = qword_1EE03D7F0[0];
  if (!qword_1EE03D7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03D7F0);
  }

  return result;
}

unint64_t sub_1CA0FEA54()
{
  result = qword_1EE03D0A0;
  if (!qword_1EE03D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03D0A0);
  }

  return result;
}

unint64_t sub_1CA0FEAA8()
{
  result = qword_1EC4331B8;
  if (!qword_1EC4331B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331B8);
  }

  return result;
}

unint64_t sub_1CA0FEAFC()
{
  result = qword_1EE03E898;
  if (!qword_1EE03E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E898);
  }

  return result;
}

unint64_t sub_1CA0FEB50()
{
  result = qword_1EE03E8A0;
  if (!qword_1EE03E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E8A0);
  }

  return result;
}

unint64_t sub_1CA0FEBA4()
{
  result = qword_1EE03E798;
  if (!qword_1EE03E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E798);
  }

  return result;
}

unint64_t sub_1CA0FEBF8()
{
  result = qword_1EE03E7A0;
  if (!qword_1EE03E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E7A0);
  }

  return result;
}

unint64_t sub_1CA0FEC4C()
{
  result = qword_1EE03E790;
  if (!qword_1EE03E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E790);
  }

  return result;
}

uint64_t sub_1CA0FECA0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_35(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4_6();
  (*(v4 + 8))(v2);
  return v2;
}

uint64_t sub_1CA0FECF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CA0FDEBC(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

unint64_t sub_1CA0FED3C()
{
  result = qword_1EE03C498;
  if (!qword_1EE03C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C498);
  }

  return result;
}

unint64_t sub_1CA0FED90()
{
  result = qword_1EE03C488;
  if (!qword_1EE03C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C488);
  }

  return result;
}

unint64_t sub_1CA0FEDE4()
{
  result = qword_1EE03C490;
  if (!qword_1EE03C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C490);
  }

  return result;
}

void *OUTLINED_FUNCTION_6_3(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

void *OUTLINED_FUNCTION_7_2(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_1CA19B4D8();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a3;

  return sub_1CA19B4D8();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_1CA19CAF8();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_1CA19B438();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return sub_1CA19B4D8();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_1CA19ADD8();
}

uint64_t OUTLINED_FUNCTION_29()
{
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_1CA19B438();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return sub_1CA19ADF8();
}

uint64_t OUTLINED_FUNCTION_43()
{
}

uint64_t sub_1CA0FF238(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = result;
  if ((a3 != 0.0 || a4 != 0.0) && (a5 != 0.0 || a6 != 0.0))
  {
    if (result == 25443 && a2 == 0xE200000000000000)
    {
      if (a3 == a4)
      {
        return result;
      }
    }

    else
    {
      result = OUTLINED_FUNCTION_19();
      v12 = v7 == 29299 && a2 == 0xE200000000000000;
      if ((result & (a3 == a4)) != 0 || v12)
      {
        return result;
      }
    }

    result = OUTLINED_FUNCTION_19();
    if ((result & 1) == 0 && (v7 != 25186 || a2 != 0xE200000000000000))
    {
      return OUTLINED_FUNCTION_19();
    }
  }

  return result;
}

id sub_1CA0FF378()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4331C8);
  sub_1CA19B288();
  v0 = objc_allocWithZone(type metadata accessor for ArtworkImageView());
  return ArtworkImageView.init(artworkSize:frame:)();
}

uint64_t sub_1CA0FF404(uint64_t a1)
{
  v2 = v1;
  v4 = (a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4331C8);
  sub_1CA19B288();
  if (v5 != v20 || v6 != v21)
  {
    goto LABEL_13;
  }

  v8 = *v1;
  v9 = *(*v1 + 24);
  v10 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!v11)
  {
    goto LABEL_13;
  }

  type metadata accessor for Artwork();

  v12 = static Artwork.== infix(_:_:)(v9, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = *(v8 + 16);
  v14 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  result = swift_beginAccess();
  v16 = *(a1 + v14);
  if (!v13)
  {
    if (!v16)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!v16 || (, v17 = , v18 = static Artwork.== infix(_:_:)(v17, v16), , result = , (v18 & 1) == 0))
  {
LABEL_13:
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      sub_1CA19B288();
      *v4 = v22;
      ArtworkImageView.apply(dynamicArtwork:asPartOf:)(*v2, v19);
    }
  }

  return result;
}

uint64_t sub_1CA0FF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA0FF9EC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CA0FF6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA0FF9EC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CA0FF710()
{
  sub_1CA0FF9EC();
  sub_1CA19B1F8();
  __break(1u);
}

uint64_t property wrapper backing initializer of ArtworkImage.preferredSize()
{
  type metadata accessor for CGSize(0);
  sub_1CA19B278();
  return v1;
}

__n128 ArtworkImage.init(dynamicArtwork:objectGraph:preferredSize:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1CA19B278();
  result = v7;
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = a2;
  a3[1] = v7;
  a3[2].n128_u64[0] = v8;
  return result;
}

double ArtworkImage.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v6 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4331C8);
  sub_1CA19B288();
  swift_weakInit();
  *a1 = v3;
  swift_weakAssign();
  type metadata accessor for CGSize(0);

  sub_1CA19B278();
  result = *&v5;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
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

unint64_t sub_1CA0FF8F0()
{
  result = qword_1EC4331D0;
  if (!qword_1EC4331D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331D0);
  }

  return result;
}

uint64_t sub_1CA0FF944(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA0FF984(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1CA0FF9EC()
{
  result = qword_1EC4331D8;
  if (!qword_1EC4331D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4331D8);
  }

  return result;
}

unint64_t sub_1CA0FFA5C(uint64_t a1)
{
  result = sub_1CA0FFA84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA0FFA84()
{
  result = qword_1EE03DBD0;
  if (!qword_1EE03DBD0)
  {
    type metadata accessor for ArtworkImageView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03DBD0);
  }

  return result;
}

void sub_1CA0FFADC(void *a1, double a2, double a3)
{
  if ([v3 amsuid_wantsArtworkStyle])
  {
    Artwork.Style.iconCornerRadius(for:)(a1, a2, a3);
    v7 = a1;
    sub_1CA17EC58(v8);
    sub_1CA192DE8(((a1 - 2) & 0xFB) != 0);
    v9 = [v3 layer];
    [v9 cornerRadius];
    v11 = v10;

    [v3 setClipsToBounds_];
    if (v7 == 1)
    {
      v12 = [v3 layer];
      v13 = [objc_opt_self() ams_mediaBorder];
      v14 = [v13 CGColor];

      [v12 setBorderColor_];
      v15 = [v3 layer];
      [v15 setBorderWidth_];
    }
  }
}

uint64_t sub_1CA0FFC88(void *a1, uint64_t a2, char a3)
{
  if ([v3 amsuid_wantsArtworkStyle])
  {
    v7 = *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView];
    [v7 setImage_];
    if ((a2 - 1) <= 1)
    {
      [a1 size];
      v9 = v8;
      v11 = v10;
      [v3 bounds];
      if (sub_1CA11678C(v12, v13, v9, v11))
      {
        a2 = 0;
      }
    }

    [v7 setContentMode_];
  }

  v14 = *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView];
  v15 = ArtworkImageView.currentArtwork.getter();
  if (v15 && (v16 = *(v15 + 112), , , v16))
  {
    v17 = sub_1CA19C0E8();
  }

  else
  {
    v17 = 0;
  }

  [v14 setAccessibilityIdentifier_];

  [v14 setImage_];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CA101BA0((a3 & 1) == 0, sub_1CA100058, v18, 1.0);
}

void sub_1CA0FFE4C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CA101BA0(0, sub_1CA100074, v1, 0.0);

  [*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView] setImage_];
  if ([v0 amsuid_wantsArtworkStyle])
  {
    [v0 setContentMode_];
    sub_1CA17EC58(0.0);
    sub_1CA192DE8(0);
    [v0 setClipsToBounds_];
    v2 = [v0 layer];
    [v2 setBorderColor_];

    v3 = [v0 layer];
    [v3 setBorderWidth_];
  }
}

void sub_1CA0FFFCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() ams_clear];
    [v1 setBackgroundColor_];
  }
}

id ArtworkImageView.__allocating_init(artworkSize:frame:)()
{
  OUTLINED_FUNCTION_1_7();
  v1 = objc_allocWithZone(v0);
  return ArtworkImageView.init(artworkSize:frame:)();
}

id ArtworkImageView.init(artworkSize:frame:)()
{
  OUTLINED_FUNCTION_1_7();
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph) = 0;
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E698CCA8]) init];
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E698CC90]) init];
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_iapArtworkBorderView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for IAPArtworkBorderView()) init];
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundAndImageConstraints) = MEMORY[0x1E69E7CC0];
  v6 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
  *v6 = v2;
  v6[1] = v1;
  v12 = type metadata accessor for ArtworkImageView();
  v7 = OUTLINED_FUNCTION_10_1();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, v12);
  sub_1CA100B14();
  sub_1CA100BA0();
  sub_1CA100BFC();
  sub_1CA100C58();

  return v10;
}

void sub_1CA10020C()
{
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph) = 0;
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E698CCA8]) init];
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E698CC90]) init];
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_iapArtworkBorderView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for IAPArtworkBorderView()) init];
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundAndImageConstraints) = MEMORY[0x1E69E7CC0];
  sub_1CA19C9F8();
  __break(1u);
}

double ArtworkImageView.artworkSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize;
  OUTLINED_FUNCTION_4_5();
  return *v1;
}

uint64_t ArtworkImageView.artworkSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

BOOL ArtworkImageView.didApplyArtwork.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  OUTLINED_FUNCTION_4_5();
  if (*(v0 + v1))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v3) != 0;
}

id ArtworkImageView.image.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView) image];

  return v1;
}

uint64_t ArtworkImageView.currentArtwork.getter()
{
  if (!sub_1CA0F04F0() || (v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork, OUTLINED_FUNCTION_4_5(), !*(v0 + v1)))
  {
    OUTLINED_FUNCTION_4_5();
  }
}

uint64_t sub_1CA1005F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

Swift::Void __swiftcall ArtworkImageView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ArtworkImageView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = ArtworkImageView.currentArtwork.getter();
  if (v1)
  {
    v2 = *(v1 + 56);

    [v0 bounds];
    Artwork.Style.iconCornerRadius(for:)(v2, v3, v4);
    sub_1CA17EC58(v5);
    if (Artwork.Style.rawValue.getter(v2) == 7364969 && v6 == 0xE300000000000000)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_8_3();

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    sub_1CA101A68();
  }
}

Swift::Void __swiftcall ArtworkImageView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ArtworkImageView();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!isa || v4 != [(objc_class *)isa userInterfaceStyle])
  {
    sub_1CA101004();
  }
}

uint64_t ArtworkImageView.apply(artwork:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  OUTLINED_FUNCTION_3_5();
  *(v2 + v5) = 0;

  *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph) = a2;

  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  OUTLINED_FUNCTION_2_6();
  *(v2 + v6) = a1;

  return sub_1CA101004();
}

uint64_t ArtworkImageView.apply(lightArtwork:darkArtwork:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  OUTLINED_FUNCTION_3_5();
  *(v3 + v7) = a2;

  *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph) = a3;

  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  OUTLINED_FUNCTION_2_6();
  *(v3 + v8) = a1;

  return sub_1CA101004();
}

uint64_t ArtworkImageView.apply(dynamicArtwork:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  OUTLINED_FUNCTION_3_5();
  *(v2 + v6) = v5;

  *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph) = a2;

  v7 = *(a1 + 24);
  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  OUTLINED_FUNCTION_2_6();
  *(v2 + v8) = v7;

  return sub_1CA101004();
}

Swift::Void __swiftcall ArtworkImageView.removeArtwork()()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_darkArtwork;
  OUTLINED_FUNCTION_3_5();
  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_lightArtwork;
  OUTLINED_FUNCTION_2_6();
  *(v0 + v2) = 0;

  sub_1CA1016DC();
}

id sub_1CA100B14()
{
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor_];

  return [v0 addSubview_];
}

id sub_1CA100BA0()
{
  [*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView] setAlpha_];
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView];

  return [v0 addSubview_];
}

id sub_1CA100BFC()
{
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_iapArtworkBorderView];
  [v1 setHidden_];

  return [v0 addSubview_];
}

void sub_1CA100C58()
{
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA1A19B0;
  v4 = [v1 topAnchor];
  v5 = [v0 property descriptor for VisualAreaImageView.artworkImageView];
  v6 = OUTLINED_FUNCTION_5_6();

  *(v3 + 32) = v6;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = OUTLINED_FUNCTION_5_6();

  *(v3 + 40) = v9;
  v10 = [v0 bottomAnchor];
  v11 = [v1 bottomAnchor];
  v12 = OUTLINED_FUNCTION_5_6();

  *(v3 + 48) = v12;
  v13 = [v0 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  v16 = [v2 topAnchor];
  v17 = OUTLINED_FUNCTION_0_8([v0 topAnchor]);

  *(v3 + 64) = v17;
  v18 = [v2 leadingAnchor];
  v19 = OUTLINED_FUNCTION_0_8([v0 leadingAnchor]);

  *(v3 + 72) = v19;
  v20 = [v0 bottomAnchor];
  v21 = OUTLINED_FUNCTION_0_8([v2 bottomAnchor]);

  *(v3 + 80) = v21;
  v22 = [v0 trailingAnchor];
  v23 = [v2 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v3 + 88) = v24;
  *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundAndImageConstraints] = v3;

  sub_1CA103264();

  v25 = sub_1CA19C2A8();

  [v0 addConstraints_];

  sub_1CA19280C(0, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
}

uint64_t sub_1CA101004()
{
  sub_1CA1016DC();
  result = ArtworkImageView.currentArtwork.getter();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph];
  if (v3)
  {
    if (Artwork.Style.rawValue.getter(*(result + 56)) == 7364969 && v4 == 0xE300000000000000)
    {
    }

    else
    {
      v6 = OUTLINED_FUNCTION_8_3();

      if ((v6 & 1) == 0)
      {
LABEL_14:
        v7 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView];
        v8 = *(v2 + 48);
        if (v8)
        {
          v9 = *(v2 + 48);
        }

        else
        {
          v9 = [objc_opt_self() ams_clear];
          v8 = 0;
        }

        v10 = v8;
        [v7 setBackgroundColor_];

        v11 = &v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize];
        OUTLINED_FUNCTION_4_5();
        v12 = *v11;
        if (*v11 <= 0.0 || (v13 = v11[1], v13 <= 0.0))
        {
          if (qword_1EE03B230 != -1)
          {
            swift_once();
          }

          v15 = sub_1CA19AFF8();
          __swift_project_value_buffer(v15, qword_1EE040B90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
          sub_1CA19AF88();
          *(swift_allocObject() + 16) = xmmword_1CA1A0930;
          v23 = type metadata accessor for ArtworkImageView();
          v22[0] = v0;
          v16 = v0;
          v17 = AMSLogKey();
          if (v17)
          {
            v18 = v17;
            sub_1CA19C118();
          }

          sub_1CA19AF58();

          __swift_destroy_boxed_opaque_existential_2(v22);
          sub_1CA19AF18();
          v19 = *v11;
          v20 = *(v11 + 1);
          type metadata accessor for CGSize(0);
          v23 = v21;
          *v22 = v19;
          v22[1] = v20;
          sub_1CA19AF38();
          sub_1CA0F54A0(v22, &qword_1EC433830);
          sub_1CA19AFB8();
        }

        else
        {

          ArtworkRequest.init(artwork:exactSize:)(v14, v22, v12, v13);
          type metadata accessor for ArtworkLoader();
          sub_1CA19B7D8();
          sub_1CA19BE18();
          sub_1CA1013D4(v22, v0, v3);

          sub_1CA1030E8(v22);
        }
      }
    }

    sub_1CA101A68();
    goto LABEL_14;
  }
}

uint64_t sub_1CA1013D4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CA19B2D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CA19B318();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = a3;

  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);

  sub_1CA0FFADC(v17, v15, v16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a2;
  memcpy(v18 + 4, a1, 0x58uLL);
  aBlock[4] = sub_1CA103258;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  sub_1CA10308C(a1, v24);
  sub_1CA19B2F8();
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1CA1028E8(&qword_1EE03C350, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v14, v11, v19);
  _Block_release(v19);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v23);
}

void sub_1CA1016DC()
{
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundView];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor_];

  if (*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_objectGraph])
  {
    type metadata accessor for ArtworkLoader();
    sub_1CA19B7D8();

    sub_1CA19BE18();
    sub_1CA1017B8(v0);
  }
}

uint64_t sub_1CA1017B8(void *a1)
{
  v2 = v1;
  v4 = sub_1CA19B2D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA19B318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA0FFE4C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1CA1028A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  v14 = a1;
  sub_1CA19B2F8();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1CA1028E8(&qword_1EE03C350, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void sub_1CA101A68()
{
  [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_iapArtworkBorderView) setHidden_];
  v1 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
  OUTLINED_FUNCTION_4_5();
  v10.size.width = *v1;
  v10.size.height = v1[1];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  Width = CGRectGetWidth(v10);
  sub_1CA160014(Width);
  v4 = v3 * 4.0;
  v5 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_backgroundAndImageConstraints);
  v6 = sub_1CA0F04EC(v5);

  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA99FB0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v8 setConstant_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1CA101BA0(char a1, void (*a2)(), uint64_t a3, double a4)
{
  if (a1)
  {
    sub_1CA17ECFC(a2, a3, a4, 0.1);
  }

  else
  {
    [*(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_underlyingImageView) setAlpha_];
    if (a2)
    {
      (a2)(1);
    }
  }
}

id ArtworkImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkImageView.__allocating_init(frame:)()
{
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_10_1();

  return [v2 v3];
}

id ArtworkImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA101E60(void *a1)
{
  v2 = v1;
  v32 = *v2;
  v4 = sub_1CA19B388();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[3];
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1CA19B3C8();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = v2[6];
    v33[0] = a1;
    type metadata accessor for ArtworkImageView();
    sub_1CA1028E8(&qword_1EE03DBD0, v12, type metadata accessor for ArtworkImageView);
    v31 = a1;
    sub_1CA19C898();
    MEMORY[0x1EEE9AC00](v11[1].Kind);
    *(&v23 - 2) = v11;
    *(&v23 - 1) = __dst;
    v13 = sub_1CA102630();
    sub_1CA103038(__dst);
    v24 = v13;
    v14 = v13[2];
    if (v14)
    {
      v15 = (v24 + 4);
      v16 = v2[4];
      v25 = "orkImageView.swift";
      v27 = "ending operation for";
      v29 = xmmword_1CA1A19C0;
      v30 = v2;
      v28 = v16;
      do
      {
        memcpy(__dst, v15, sizeof(__dst));
        sub_1CA10308C(__dst, v33);
        v17 = sub_1CA101DF8(__dst);
        if (v17)
        {
          v18 = v17;
          if ([v17 isExecuting])
          {
            if (qword_1EE03B230 != -1)
            {
              swift_once();
            }

            v19 = sub_1CA19AFF8();
            __swift_project_value_buffer(v19, qword_1EE040B90);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
            sub_1CA19AF88();
            *(swift_allocObject() + 16) = v29;
            v34 = v32;
            v33[0] = v2;

            v20 = AMSLogKey();
            if (v20)
            {
              goto LABEL_14;
            }

            goto LABEL_17;
          }

          if ([v18 queuePriority] >= -3)
          {
            if (qword_1EE03B230 != -1)
            {
              swift_once();
            }

            v21 = sub_1CA19AFF8();
            v26 = __swift_project_value_buffer(v21, qword_1EE040B90);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
            sub_1CA19AF88();
            *(swift_allocObject() + 16) = v29;
            v34 = v32;
            v33[0] = v2;

            v20 = AMSLogKey();
            if (v20)
            {
LABEL_14:
              v22 = v20;
              sub_1CA19C118();
            }

LABEL_17:
            sub_1CA19AF58();

            __swift_destroy_boxed_opaque_existential_2(v33);
            sub_1CA19AF18();
            v34 = &type metadata for ArtworkRequest;
            v33[0] = swift_allocObject();
            memcpy((v33[0] + 16), __dst, 0x58uLL);
            sub_1CA19AF38();
            sub_1CA0F54A0(v33, &qword_1EC433830);
            sub_1CA19AF18();
            sub_1CA19AF68();
            sub_1CA19AFA8();

            [v18 setQueuePriority_];

            v2 = v30;
            goto LABEL_18;
          }
        }

        sub_1CA1030E8(__dst);
LABEL_18:
        v15 += 88;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA1025BC(void *a1, void *a2, void *a3)
{
  sub_1CA101E60(a2);
  sub_1CA10308C(a3, v8);

  v6 = a2;
  return sub_1CA106BA4(a3, v6, a1, a3, a1, v6);
}

id sub_1CA102630()
{
  OUTLINED_FUNCTION_6_4();
  v1(&v4, [v2 lock]);
  if (v0)
  {
    return OUTLINED_FUNCTION_9_3(0x1FAA2A000);
  }

  OUTLINED_FUNCTION_9_3(0x1FAA2A000);
  return v4;
}

uint64_t sub_1CA1026B4(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = a2;
  v7[3] = &v8;
  swift_beginAccess();
  v4 = sub_1CA102930(sub_1CA103158, v7);
  if (!v2)
  {
    v5 = *(*(a1 + 24) + 16);
    if (v5 >= v4)
    {
      sub_1CA102B48(v4, v5);
      swift_endAccess();
      return v8;
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1CA102774(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = MEMORY[0x1CCA99EE0](a1 + 88);
  if (v5)
  {
    memcpy(__dst, a1, sizeof(__dst));
    sub_1CA10308C(__dst, &v9);
    sub_1CA16AC9C();
    v6 = *(*a3 + 16);
    sub_1CA16AD40(v6);
    v7 = *a3;
    *(v7 + 16) = v6 + 1;
    memcpy((v7 + 88 * v6 + 32), __dst, 0x58uLL);
  }

  return v5 & 1;
}

void *sub_1CA102820(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (*(v2 + 16) && (v3 = sub_1CA184264(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA1028E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1CA102930(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = *v2;
  result = sub_1CA102AC8(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 144 * result + 176; ; i += 144)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1CA103178(v6 + i, v16);
      v12 = a1(v16);
      result = sub_1CA0F54A0(v16, &qword_1EC434000);
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          result = sub_1CA103178(v6 + 32 + 144 * v4, v16);
          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          sub_1CA103178(v6 + i, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA16B79C();
            v6 = v14;
          }

          result = sub_1CA1031E8(v15, v6 + 144 * v4 + 32);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          result = sub_1CA1031E8(v16, v6 + i);
          *v2 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1CA102AC8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 144)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_1CA102B48(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1CA102DC0(result, 1, sub_1CA16ADFC);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 144 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434000);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1CA16B6E4((v9 + 144 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CA102C50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(*v5 + 16);
  if (v7 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1CA102DC0(result, 1, sub_1CA16B00C);

  return sub_1CA102E38(v8, a2, 1, a3, a4, a5);
}

uint64_t sub_1CA102D18(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((result & 1) == 0 || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1CA19C818();
    }

    result = sub_1CA19C968();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1CA102DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1CA102E38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *v6;
  v13 = (v12 + 32 + 24 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434020);
  result = swift_arrayDestroy();
  v14 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1CA16B70C((v12 + 32 + 24 * a2), v15 - a2, &v13[3 * a3]);
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v13 = a4;
    v13[1] = a5;
    v13[2] = a6;
    if (v13 + 3 < &v13[3 * a3])
    {

      result = a6;
      __break(1u);
    }
  }

  return result;
}

void *sub_1CA102F94@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1CA102820(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA102FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CA1026B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA103178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA1031E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA103264()
{
  result = qword_1EE03C228;
  if (!qword_1EE03C228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C228);
  }

  return result;
}

id OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_5_6()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_1CA19CAF8();
}

id OUTLINED_FUNCTION_9_3@<X0>(uint64_t a1@<X8>)
{

  return [v1 (a1 + 376)];
}

uint64_t sub_1CA10338C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1CA19AE18();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1CA0F7694(v6, v10);
}

uint64_t sub_1CA103454()
{
  result = sub_1CA19C0E8();
  qword_1EE040BD8 = result;
  return result;
}

void sub_1CA10348C()
{
  OUTLINED_FUNCTION_19_0();
  v10 = sub_1CA19C588();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_9_4();
  sub_1CA19C558();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  v6 = sub_1CA19B318();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1_3();
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 80) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1EE03C288 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE040BF8;
  *(v0 + 16) = qword_1EE040BF8;
  sub_1CA0F2110(0, &qword_1EE03C230);
  v8 = v7;
  sub_1CA19B2F8();
  sub_1CA10B814(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  OUTLINED_FUNCTION_0_9();
  sub_1CA10B7BC(v9, &unk_1EC4345A0);
  sub_1CA19C788();
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8090], v10);
  *(v0 + 24) = sub_1CA19C5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433220);
  swift_allocObject();
  *(v0 + 32) = sub_1CA108150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433228);
  OUTLINED_FUNCTION_8_4();
  swift_allocObject();
  *(v0 + 40) = sub_1CA10A3EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433230);
  OUTLINED_FUNCTION_8_4();
  swift_allocObject();
  *(v0 + 48) = sub_1CA107DD0();
  sub_1CA10378C();
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA10378C()
{
  v1 = *(v0 + 32);
  sub_1CA10380C(0xD00000000000003ELL, 0x80000001CA1A96C0);
  [*(v1 + 16) setMaxConcurrentOperationCount_];
  [*(v1 + 16) setQualityOfService_];

  return swift_weakAssign();
}

void sub_1CA10380C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = sub_1CA19C0E8();
  }

  else
  {
    v4 = 0;
  }

  [v3 setName_];
}

void sub_1CA103884()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_9_4();
  v20 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_16_0();
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = v4;
  v14[4] = v0;
  v21[4] = sub_1CA10B110;
  v21[5] = v14;
  OUTLINED_FUNCTION_3_2();
  v21[1] = 1107296256;
  v21[2] = sub_1CA0F4068;
  v21[3] = &block_descriptor_21;
  v15 = _Block_copy(v21);

  sub_1CA19B2F8();
  OUTLINED_FUNCTION_1_8();
  sub_1CA10B814(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  OUTLINED_FUNCTION_0_9();
  sub_1CA10B7BC(v18, &unk_1EC433C70);
  sub_1CA19C788();
  v19 = OUTLINED_FUNCTION_13_1();
  MEMORY[0x1CCA99C20](v19);
  _Block_release(v15);
  (*(v9 + 8))(v1, v7);
  (*(v12 + 8))(v2, v20);

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA103B1C()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v5 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_9_4();
  v9 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v24 = v7;
      v15 = *(v0 + 80);
      sub_1CA0F2110(0, &qword_1EE03C230);
      v23 = sub_1CA19C598();
      OUTLINED_FUNCTION_8_4();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      v25[4] = sub_1CA10B100;
      v25[5] = v16;
      OUTLINED_FUNCTION_3_2();
      v25[1] = 1107296256;
      OUTLINED_FUNCTION_3_6();
      v25[2] = v17;
      v25[3] = &block_descriptor_9;
      v22 = _Block_copy(v25);
      swift_unknownObjectRetain();

      sub_1CA19B2F8();
      v25[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_8();
      sub_1CA10B814(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
      OUTLINED_FUNCTION_0_9();
      sub_1CA10B7BC(v20, &unk_1EC433C70);
      sub_1CA19C788();
      v21 = OUTLINED_FUNCTION_13_1();
      MEMORY[0x1CCA99C20](v21);
      _Block_release(v22);
      swift_unknownObjectRelease();

      (*(v24 + 8))(v1, v5);
      (*(v11 + 8))(v2, v9);
    }
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA103DE4()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_9_4();
  v11 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v26 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v25 = v11;
    v16 = *(v0 + 80);
    sub_1CA0F2110(0, &qword_1EE03C230);
    v24 = sub_1CA19C598();
    OUTLINED_FUNCTION_8_4();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v27[4] = v6;
    v27[5] = v17;
    OUTLINED_FUNCTION_3_2();
    v27[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    v27[2] = v18;
    v27[3] = v4;
    v19 = _Block_copy(v27);
    swift_unknownObjectRetain();

    sub_1CA19B2F8();
    v27[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_8();
    sub_1CA10B814(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    OUTLINED_FUNCTION_0_9();
    sub_1CA10B7BC(v22, &unk_1EC433C70);
    sub_1CA19C788();
    v23 = OUTLINED_FUNCTION_13_1();
    MEMORY[0x1CCA99C20](v23);
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v9 + 8))(v1, v7);
    (*(v26 + 8))(v2, v25);
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA104090()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v84 = v6;
  v85 = *v0;
  v83 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v81 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v79 = v13;
  v80 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  v17 = sub_1CA19B388();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_3();
  v23 = v22 - v21;
  v24 = v1[3];
  *(v22 - v21) = v24;
  (*(v19 + 104))(v22 - v21, *MEMORY[0x1E69E8020], v17);
  v25 = v24;
  v26 = sub_1CA19B3C8();
  (*(v19 + 8))(v23, v17);
  if ((v26 & 1) == 0)
  {
    goto LABEL_39;
  }

  v27 = sub_1CA104EE4(v5);
  v86 = v27;
  v26 = v5;
  if ((v3 & 1) == 0)
  {
    v32 = v27;
    if ([*(v1[4] + 16) isSuspended])
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v33 = sub_1CA19AFF8();
      __swift_project_value_buffer(v33, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v34 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v34);
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      *(&v111[0] + 1) = v85;
      *&v110 = v1;

      v35 = AMSLogKey();
      if (v35)
      {
        v36 = v35;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&v110);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      v32 = v86;
      v37 = v84;
    }

    else
    {
      v37 = v84;
      sub_1CA10AA14(v84, *v5, v5[1]);
    }

    if (v32[2])
    {
      sub_1CA0F2110(0, &qword_1EE03C230);
      v62 = v32;
      v63 = sub_1CA19C598();
      OUTLINED_FUNCTION_8_4();
      v64 = swift_allocObject();
      *(v64 + 16) = v62;
      *(v64 + 24) = v37;
      *&v111[1] = sub_1CA10BB3C;
      *(&v111[1] + 1) = v64;
      *&v110 = MEMORY[0x1E69E9820];
      *(&v110 + 1) = 1107296256;
      OUTLINED_FUNCTION_3_6();
      *&v111[0] = v65;
      *(&v111[0] + 1) = &block_descriptor_84;
      v66 = _Block_copy(&v110);
      v67 = v37;

      sub_1CA19B2F8();
      *&v110 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_8();
      sub_1CA10B814(v68, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
      OUTLINED_FUNCTION_0_9();
      sub_1CA10B7BC(v70, &unk_1EC433C70);
      sub_1CA19C788();
      MEMORY[0x1CCA99C20](0, v16, v11, v66);
      _Block_release(v66);

      (*(v81 + 8))(v11, v83);
      (*(v79 + 8))(v16, v80);
      goto LABEL_36;
    }

LABEL_29:

    goto LABEL_36;
  }

  if (qword_1EE03B230 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v28 = sub_1CA19AFF8();
    __swift_project_value_buffer(v28, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v29 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v29);
    *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
    OUTLINED_FUNCTION_23_0();
    v30 = AMSLogKey();
    v82 = v1;
    if (v30)
    {
      v31 = v30;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v110);
    sub_1CA19AF18();
    *(&v105[0] + 1) = &type metadata for ArtworkRequest;
    *&v104 = swift_allocObject();
    memcpy((v104 + 16), v26, 0x58uLL);
    sub_1CA10308C(v26, &v110);
    sub_1CA19AF28();
    sub_1CA10BDC8(&v104, &qword_1EC433830);
    sub_1CA19AF18();
    swift_getErrorValue();
    v39 = v99;
    v38 = v100;
    *(&v111[0] + 1) = v100;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v110);
    (*(*(v38 - 8) + 16))(boxed_opaque_existential_2Tm, v39, v38);
    sub_1CA19AF28();
    sub_1CA10BDC8(&v110, &qword_1EC433830);
    sub_1CA19AFB8();

    v41 = [objc_opt_self() defaultCenter];
    v42 = v26;
    if (qword_1EE03C010 != -1)
    {
      swift_once();
    }

    v43 = qword_1EE040BD8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433280);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CA1A0C20;
    *&v110 = 0xD000000000000044;
    *(&v110 + 1) = 0x80000001CA1A9900;
    sub_1CA19C898();
    swift_getErrorValue();
    v45 = v97;
    v46 = v98;
    *(v44 + 96) = v98;
    v47 = __swift_allocate_boxed_opaque_existential_2Tm((v44 + 72));
    (*(*(v46 - 8) + 16))(v47, v45, v46);
    v48 = sub_1CA19C038();
    sub_1CA191E5C(v43, v82, v48, v41);

    ArtworkRequest.fallback.getter(&v101);
    v49 = *(&v101 + 1);
    if (!*(&v101 + 1))
    {
      break;
    }

    v50 = v101;
    v110 = v101;
    memcpy(v111, v102, 0x48uLL);
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v105[0] + 1) = v85;
    *&v104 = v82;

    v51 = AMSLogKey();
    if (v51)
    {
      v52 = v51;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v104);
    sub_1CA19AF18();
    *(&v105[0] + 1) = &type metadata for Artwork.URLTemplate;
    *&v104 = v50;
    *(&v104 + 1) = v49;

    sub_1CA19AF38();
    sub_1CA10BDC8(&v104, &qword_1EC433830);
    sub_1CA19AFC8();

    v26 = 0;
    v55 = v86;
    v56 = (v86 + 4);
    v57 = v86[2];
    v1 = &qword_1EC433290;
    while (1)
    {
      if (v57 == v26)
      {
LABEL_25:

        sub_1CA105198(&v110, 0);
        sub_1CA10BDC8(&v101, &qword_1EC433298);
        goto LABEL_36;
      }

      if (v26 >= v55[2])
      {
        break;
      }

      OUTLINED_FUNCTION_24_0(v56, &v104);
      v58 = v104;
      if (!v104)
      {
        goto LABEL_25;
      }

      ++v26;
      v59 = *(&v104 + 1);
      OUTLINED_FUNCTION_8_4();
      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      *(v60 + 24) = v59;
      *&v104 = sub_1CA10BE80;
      *(&v104 + 1) = v60;
      OUTLINED_FUNCTION_24_0(&v104, v87);
      OUTLINED_FUNCTION_8_4();
      v61 = swift_allocObject();
      OUTLINED_FUNCTION_17_0(v61);
      sub_1CA10508C(sub_1CA10BEC0, v59, v105, &v110);
      v55 = v86;

      sub_1CA10BDC8(&v104, &qword_1EC433290);
      v56 += 56;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_2();
  }

  v103 = *(v42 + 56);
  if (!*(&v103 + 1))
  {
    goto LABEL_29;
  }

  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  OUTLINED_FUNCTION_23_0();
  v53 = AMSLogKey();
  if (v53)
  {
    v54 = v53;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v110);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  sub_1CA10308C(v42, &v110);
  sub_1CA10BDC8(&v103, &qword_1EC433288);
  v71 = 0;
  v72 = *(v42 + 16);
  v93 = *v42;
  v94 = v72;
  v95 = *(v42 + 32);
  v96 = *(v42 + 48);
  v92 = *(v42 + 72);
  v73 = v86;
  v74 = (v86 + 4);
  v1 = &qword_1EC433290;
  v26 = v86[2];
  while (v26 != v71)
  {
    if (v71 >= v73[2])
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_24_0(v74, &v110);
    v75 = v110;
    if (!v110)
    {
      break;
    }

    ++v71;
    v76 = *(&v110 + 1);
    OUTLINED_FUNCTION_8_4();
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    *(v77 + 24) = v76;
    *&v110 = sub_1CA10BB04;
    *(&v110 + 1) = v77;
    OUTLINED_FUNCTION_24_0(&v110, v87);
    OUTLINED_FUNCTION_8_4();
    v78 = swift_allocObject();
    OUTLINED_FUNCTION_17_0(v78);
    v104 = v93;
    v105[0] = v94;
    v105[1] = v95;
    v106 = v96;
    v107 = 0;
    v108 = 0;
    v109 = v92;
    sub_1CA10508C(sub_1CA10BAD8, v76, v111, &v104);
    v73 = v86;

    sub_1CA10BDC8(&v110, &qword_1EC433290);
    v74 += 56;
  }

  v110 = v93;
  v111[0] = v94;
  v111[1] = v95;
  *&v111[3] = 0;
  v111[2] = v96;
  *(&v111[3] + 8) = v92;
  sub_1CA105198(&v110, 0);
  v87[0] = v93;
  v87[1] = v94;
  v87[2] = v95;
  v89 = 0;
  v90 = 0;
  v88 = v96;
  v91 = v92;
  sub_1CA1030E8(v87);
LABEL_36:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA104F4C(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    result = sub_1CA10BC7C(v5, &v11, &qword_1EC433290);
    if (__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

    v6 = v11;
    if (!v11)
    {
      return result;
    }

    v7 = v12;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v11 = sub_1CA10BE80;
    v12 = v8;
    sub_1CA10BC7C(&v11, &v9, &qword_1EC433290);
    v9(a2);

    sub_1CA10BDC8(&v11, &qword_1EC433290);
    result = sub_1CA103038(&v10);
    ++v3;
    v5 += 56;
  }

  return result;
}

id sub_1CA10508C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  [v10 lock];
  sub_1CA10BCDC(a3, &__dst[11]);
  memcpy(__dst, a4, 0x58uLL);
  __dst[16] = a1;
  __dst[17] = a2;
  swift_beginAccess();
  sub_1CA10308C(a4, &v14);

  sub_1CA16ACB4();
  v11 = *(*(v5 + 24) + 16);
  sub_1CA16AD58(v11);
  v12 = *(v5 + 24);
  *(v12 + 16) = v11 + 1;
  memcpy((v12 + 144 * v11 + 32), __dst, 0x90uLL);
  *(v5 + 24) = v12;
  swift_endAccess();
  return [v10 unlock];
}

void sub_1CA105198(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1CA19B388();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[3];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1CA19B3C8();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v13 = sub_1CA101DF8(a1);
  if (!v13)
  {
    v18 = sub_1CA1055BC(a1);
    if ((*((*MEMORY[0x1E69E7D40] & *v18) + 0x80))())
    {
      sub_1CA106894(v18, a1);
    }

    else
    {
      [v18 setQueuePriority_];
      sub_1CA1077FC(v18, a1);
    }

    return;
  }

  v7 = v13;
  if (qword_1EE03B230 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = sub_1CA19AFF8();
  __swift_project_value_buffer(v14, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v21 = v6;
  v20[0] = v3;

  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v20);
  sub_1CA19AF18();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433250);
  v20[0] = v7;
  v17 = v7;
  sub_1CA19AF38();
  sub_1CA10BDC8(v20, &qword_1EC433830);
  sub_1CA19AFA8();

  if ([v17 queuePriority] < a2)
  {
    [v17 setQueuePriority_];
  }
}

uint64_t sub_1CA1055BC(double *a1)
{
  i = v1;
  v147 = *v1;
  v142 = sub_1CA19BDA8();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1CA19AC68();
  v154 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v135 - v7;
  v144 = sub_1CA19ACB8();
  v146 = *(v144 - 1);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v135 - v11;
  v13 = sub_1CA19ADF8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v135 - v18;
  ArtworkRequest.makeURL()();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v19, v12, v13);
    v12 = *(a1 + 8);
    v145 = v19;
    v139 = v14;
    v138 = v13;
    v137 = a1;
    if (v12)
    {
      v154 = *(a1 + 7);
      v21 = qword_1EE03B230;

      if (v21 == -1)
      {
LABEL_5:
        v22 = sub_1CA19AFF8();
        __swift_project_value_buffer(v22, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        sub_1CA19AF88();
        *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
        v152 = v147;
        v150 = i;

        v23 = AMSLogKey();
        if (v23)
        {
          v24 = v23;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(&v150);
        sub_1CA19AF18();
        v51 = v145;
        v52 = sub_1CA19AD78();
        v53 = MEMORY[0x1E69E6158];
        v152 = MEMORY[0x1E69E6158];
        v150 = v52;
        v151 = v54;
        sub_1CA19AF38();
        sub_1CA10BDC8(&v150, &qword_1EC433830);
        sub_1CA19AF18();
        v152 = v53;
        v55 = v154;
        v150 = v154;
        v151 = v12;

        sub_1CA19AF38();
        sub_1CA10BDC8(&v150, &qword_1EC433830);
        sub_1CA19AFC8();

        v56 = v137[2];
        v57 = v137[3];
        v58 = *(v137 + 5);
        v59 = *(v137 + 6);
        objc_allocWithZone(type metadata accessor for FileImageFetchOperation());

        v12 = sub_1CA157BFC(v55, v12, v58, v59, v56, v57);
        (*(v139 + 8))(v51, v138);
        return v12;
      }

LABEL_99:
      swift_once();
      goto LABEL_5;
    }

    v25 = v19;
    v26 = sub_1CA19ADC8();
    v28 = v146;
    if (!v27)
    {
      goto LABEL_13;
    }

    if (v26 == 1668509025 && v27 == 0xE400000000000000)
    {
    }

    else
    {
      v30 = sub_1CA19CAF8();

      if ((v30 & 1) == 0)
      {
LABEL_13:
        v31 = sub_1CA19ADC8();
        if (!v32)
        {
LABEL_19:
          v35 = sub_1CA19ADC8();
          if (!v36)
          {
            goto LABEL_25;
          }

          v12 = v36;
          if (v35 == 0x6D696D6574737973 && v36 == 0xEB00000000656761)
          {
          }

          else
          {
            v38 = sub_1CA19CAF8();

            if ((v38 & 1) == 0)
            {
LABEL_25:
              v39 = sub_1CA19ADC8();
              if (v40)
              {
                v12 = v40;
                if (v39 == 1886680168 && v40 == 0xE400000000000000)
                {
                  goto LABEL_83;
                }

                v42 = sub_1CA19CAF8();

                if (v42)
                {
                  goto LABEL_84;
                }
              }

              v43 = sub_1CA19ADC8();
              if (!v44)
              {
LABEL_37:
                v12 = sub_1CA19ADC8();
                v48 = v47;
                sub_1CA10BD74();
                swift_allocError();
                *v49 = v12;
                *(v49 + 8) = v48;
                v50 = 1;
LABEL_79:
                *(v49 + 16) = v50;
LABEL_80:
                swift_willThrow();
                (*(v139 + 8))(v19, v138);
                return v12;
              }

              v12 = v44;
              if (v43 != 0x7370747468 || v44 != 0xE500000000000000)
              {
                v46 = sub_1CA19CAF8();

                if ((v46 & 1) == 0)
                {
                  goto LABEL_37;
                }

LABEL_84:
                v108 = v137[2];
                v109 = v137[3];
                if (v108 > 0.0 && v109 > 0.0)
                {
                  v110 = v139;
                  if (*(i + 56))
                  {
                    sub_1CA19B7D8();

                    v111 = v140;
                    v112 = v142;
                    sub_1CA19BE18();

                    (*(v141 + 8))(v111, v112);
                  }

                  v113 = v19;
                  v114 = v138;
                  (*(v110 + 16))(v17, v113, v138);
                  v115 = *(i + 16);
                  v116 = *(i + 56);
                  v117 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332B8));

                  v12 = sub_1CA109C1C(1, v17, v115, v116);
                  (*(v110 + 8))(v25, v114);
                  return v12;
                }

                sub_1CA10BD74();
                swift_allocError();
                *v133 = v108;
                *(v133 + 8) = v109;
                *(v133 + 16) = 0;
                goto LABEL_80;
              }

LABEL_83:

              goto LABEL_84;
            }
          }

          v96 = sub_1CA19ADB8();
          if (v97)
          {
            v12 = v97;
            v150 = v96;
            v151 = v97;
            sub_1CA0FB77C();
            v98 = sub_1CA19C748();
            v100 = v99;

            if (v100)
            {
              Operation = type metadata accessor for SystemImageFetchOperation();
              v102 = objc_allocWithZone(Operation);
              v103 = &v102[qword_1EC4342D8];
              *v103 = v98;
              v103[1] = v100;
              v153.receiver = v102;
              v153.super_class = Operation;
              v12 = objc_msgSendSuper2(&v153, sel_init);
              (*(v139 + 8))(v19, v138);
              return v12;
            }
          }

LABEL_78:
          sub_1CA10BD74();
          swift_allocError();
          *v49 = xmmword_1CA1A1A30;
          v50 = 3;
          goto LABEL_79;
        }

        v12 = v32;
        if (v31 == 0x656372756F736572 && v32 == 0xE800000000000000)
        {
        }

        else
        {
          v34 = sub_1CA19CAF8();

          if ((v34 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v84 = sub_1CA19ADB8();
        if (!v85)
        {
          goto LABEL_78;
        }

        v150 = v84;
        v151 = v85;
        sub_1CA0FB77C();
        v12 = sub_1CA19C748();
        v65 = v86;

        if (!v65)
        {
          goto LABEL_78;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CA1A0930;
        *(inited + 32) = [objc_opt_self() mainBundle];
        if (qword_1EE03ADD8 != -1)
        {
LABEL_101:
          swift_once();
        }

        v87 = qword_1EE040B00;
        *(inited + 40) = qword_1EE040B00;
        v88 = qword_1EE03ADE0;
        v89 = v87;
        if (v88 != -1)
        {
          swift_once();
        }

        v90 = qword_1EE040B08;
        *(inited + 48) = qword_1EE040B08;
        v91 = MEMORY[0x1E69E7CC0];
        v150 = MEMORY[0x1E69E7CC0];
        v92 = v90;
        for (i = 0; ; ++i)
        {
          if (i == 3)
          {
            swift_setDeallocating();
            sub_1CA1703F4();
            v95 = objc_allocWithZone(type metadata accessor for BundleImageFetchOperation());
            v12 = sub_1CA1157EC(v12, v65, v91);
            (*(v139 + 8))(v145, v138);
            return v12;
          }

          if (i > 2)
          {
            break;
          }

          v93 = *(inited + 8 * i + 32);
          if (v93)
          {
            v94 = v93;
            MEMORY[0x1CCA998F0]();
            if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CA19C2F8();
            }

            sub_1CA19C318();
            v91 = v150;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    sub_1CA19AC88();
    v12 = v144;
    if (__swift_getEnumTagSinglePayload(v8, 1, v144) == 1)
    {
      sub_1CA10BDC8(v8, &unk_1EC4339D0);
    }

    else
    {
      v61 = v143;
      (*(v28 + 32))();
      v62 = sub_1CA19AC78();
      if (v62)
      {
        v63 = v62;
        v142 = *(v62 + 16);
        if (!v142)
        {
          v65 = MEMORY[0x1E69E7CC8];
LABEL_90:

          v118 = sub_1CA181D98(7368801, 0xE300000000000000, v65);
          if (v119)
          {
            v120 = v118;
            v12 = v119;
            v121 = sub_1CA181D98(0x79654B6568636163, 0xE800000000000000, v65);
            if (v122)
            {
              v123 = v121;
              v124 = v122;
              v125 = *(v137 + 5);
              v126 = *(v137 + 6);
              v127 = v137[2];
              v128 = v137[3];

              v129 = sub_1CA181D98(0x6E6F6973726576, 0xE700000000000000, v65);
              v131 = v130;
              v132 = objc_allocWithZone(type metadata accessor for ContentImageFetchOperation());
              v12 = sub_1CA12FF64(v120, v12, v123, v124, v125, v126, v129, v131, v127, v128);
              (*(v146 + 8))(v143, v144);
              (*(v139 + 8))(v145, v138);

              return v12;
            }

            v25 = v145;
          }

          sub_1CA10BD74();
          swift_allocError();
          *v134 = xmmword_1CA1A1A30;
          *(v134 + 16) = 3;
          swift_willThrow();
          (*(v146 + 8))(v143, v144);
          (*(v139 + 8))(v25, v138);

          return v12;
        }

        inited = 0;
        v141 = v62 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
        v140 = (v154 + 16);
        v65 = MEMORY[0x1E69E7CC8];
        v136 = (v154 + 8);
        v66 = v148;
        v12 = v149;
        v135 = v62;
        while (inited < *(v63 + 16))
        {
          (*(v154 + 16))(v66, v141 + *(v154 + 72) * inited, v12);
          v67 = sub_1CA19AC58();
          if (v68)
          {
            i = v68;
            v147 = v67;
            v69 = sub_1CA19AC48();
            v71 = v70;
            swift_isUniquelyReferenced_nonNull_native();
            v150 = v65;
            v72 = sub_1CA184158(v69, v71);
            if (__OFADD__(v65[2], (v73 & 1) == 0))
            {
              goto LABEL_98;
            }

            v74 = v72;
            v75 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C8);
            if (sub_1CA19C9A8())
            {
              v76 = sub_1CA184158(v69, v71);
              if ((v75 & 1) != (v77 & 1))
              {
                result = sub_1CA19CB58();
                __break(1u);
                return result;
              }

              v74 = v76;
            }

            if (v75)
            {

              v65 = v150;
              v78 = (*(v150 + 56) + 16 * v74);
              *v78 = v147;
              v78[1] = i;

              v66 = v148;
              v12 = v149;
              (*v136)(v148, v149);
            }

            else
            {
              v65 = v150;
              *(v150 + 8 * (v74 >> 6) + 64) |= 1 << v74;
              v79 = (v65[6] + 16 * v74);
              *v79 = v69;
              v79[1] = v71;
              v80 = (v65[7] + 16 * v74);
              v66 = v148;
              *v80 = v147;
              v80[1] = i;
              v12 = v149;
              (*v136)(v66, v149);
              v81 = v65[2];
              v82 = __OFADD__(v81, 1);
              v83 = v81 + 1;
              if (v82)
              {
                __break(1u);
                goto LABEL_101;
              }

              v65[2] = v83;
            }

            v25 = v145;
            v63 = v135;
          }

          else
          {
            (*v136)(v66, v12);
          }

          if (v142 == ++inited)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_97;
      }

      (*(v28 + 8))(v61, v12);
    }

    v104 = v139;
    v105 = v138;
    sub_1CA10BD74();
    swift_allocError();
    *v106 = xmmword_1CA1A1A30;
    *(v106 + 16) = 3;
    swift_willThrow();
    v107 = *(v104 + 8);
    v12 = (v104 + 8);
    v107(v19, v105);
    return v12;
  }

  sub_1CA10BDC8(v12, &qword_1EC433170);
  sub_1CA10BD74();
  swift_allocError();
  *v20 = xmmword_1CA1A1A30;
  *(v20 + 16) = 3;
  swift_willThrow();
  return v12;
}

uint64_t sub_1CA1067B8(uint64_t a1, uint64_t a2)
{
  v7[0] = a1;
  v7[1] = a2;
  if (sub_1CA10A6EC())
  {
    v2 = sub_1CA10A7C4();

    return v2;
  }

  else
  {
    v4 = sub_1CA10A844();
    MEMORY[0x1EEE9AC00](v4);
    v6[2] = v7;
    v5 = sub_1CA109B20(MEMORY[0x1E69E7CC0], sub_1CA10B750, v6, v4);

    return v5;
  }
}

id sub_1CA106894(void *a1, const void *a2)
{
  v5 = sub_1CA19B388();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1CA19B3C8();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    memcpy((v13 + 24), a2, 0x58uLL);
    sub_1CA10308C(a2, v15);
    sub_1CA17D660(sub_1CA10B85C, v13);
    return [a1 main];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA106A3C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    memcpy((v8 + 24), a3, 0x58uLL);
    *(v8 + 112) = v5;
    *(v8 + 120) = v6;

    sub_1CA10308C(a3, &v9);
    sub_1CA10B888(v5);
    sub_1CA103884();
  }

  return result;
}

uint64_t sub_1CA106B28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA104090();
  }

  return result;
}

uint64_t sub_1CA106BA4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v91 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v88 = (v15 - v14);
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v89 = v17;
  v90 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  v87 = v19 - v18;
  v20 = sub_1CA19B388();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_3();
  v26 = v25 - v24;
  v27 = a3[3];
  *(v25 - v24) = v27;
  (*(v22 + 104))(v25 - v24, *MEMORY[0x1E69E8020], v20);
  v28 = v27;
  LOBYTE(v27) = sub_1CA19B3C8();
  (*(v22 + 8))(v26, v20);
  if ((v27 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_0_2();
LABEL_32:
    v62 = sub_1CA19AFF8();
    __swift_project_value_buffer(v62, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v63 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v63);
    OUTLINED_FUNCTION_14_0();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v96 = type metadata accessor for ArtworkLoader();
    aBlock = v85;

    v64 = AMSLogKey();
    if (v64)
    {
      v65 = v64;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&aBlock);
    sub_1CA19AF18();
    v96 = &type metadata for Artwork.URLTemplate;
    aBlock = v83;
    v94 = v84;
    sub_1CA19AF38();
    sub_1CA10BDC8(&aBlock, &qword_1EC433830);
    sub_1CA19AFA8();

    v66 = Artwork.Crop.preferredContentMode.getter(*(a1 + 40), *(a1 + 48));
    sub_1CA0F2110(0, &qword_1EE03C230);
    v67 = sub_1CA19C598();
    OUTLINED_FUNCTION_16_0();
    v68 = swift_allocObject();
    v68[2] = a2;
    v68[3] = a4;
    v68[4] = v66;
    v97 = sub_1CA10B2F4;
    v98 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = sub_1CA0F4068;
    v96 = &block_descriptor_27;
    v69 = _Block_copy(&aBlock);
    v70 = a2;
    v71 = a4;

    sub_1CA19B2F8();
    aBlock = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_8();
    sub_1CA10B814(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    OUTLINED_FUNCTION_0_9();
    sub_1CA10B7BC(v74, &unk_1EC433C70);
    a6 = v88;
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v87, v88, v69);
    _Block_release(v69);

    (*(v91 + 8))(v88, v82);
    (*(v89 + 8))(v87, v90);
    OUTLINED_FUNCTION_21_0();
LABEL_41:
    v45 = v92;
    goto LABEL_42;
  }

  v92 = a4;
  v85 = a3;
  v30 = *a1;
  v29 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  v31 = sub_1CA1067B8(v30, v29);
  v32 = v31;
  v33 = *(a1 + 16);
  if (v33 > 0.0)
  {
    v34 = *(a1 + 24);
    if (v34 > 0.0)
    {
      v82 = v11;
      v83 = v30;
      v84 = v29;
      v35 = sub_1CA0F04EC(v31);
      v36 = 0;
      a6 = 0;
      v37 = 1.79769313e308;
      while (v35 != a6)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1CCA99FB0](a6, v32);
        }

        else
        {
          if (a6 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v38 = *(v32 + 8 * a6 + 32);
        }

        a4 = v38;
        if (__OFADD__(a6, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        [v38 size];
        if (v39 == v33 && v40 == v34)
        {
          swift_bridgeObjectRelease_n();

          if (qword_1EE03B230 != -1)
          {
            goto LABEL_47;
          }

          goto LABEL_32;
        }

        v42 = vabdd_f64(v39, v33);
        if (vabdd_f64(v39 / v40, v33 / v34) < 0.01 && v42 < v37)
        {

          v36 = a4;
          v37 = v42;
        }

        else
        {
        }

        ++a6;
      }

      v44 = a5;
      OUTLINED_FUNCTION_21_0();
      if (!v36)
      {
        goto LABEL_23;
      }

      v46 = Artwork.Crop.preferredContentMode.getter(*(a1 + 40), *(a1 + 48));
      sub_1CA0F2110(0, &qword_1EE03C230);
      v81 = sub_1CA19C598();
      OUTLINED_FUNCTION_16_0();
      v47 = swift_allocObject();
      v47[2] = a2;
      v47[3] = v36;
      v47[4] = v46;
      v97 = sub_1CA10BEBC;
      v98 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v94 = 1107296256;
      OUTLINED_FUNCTION_3_6();
      v95 = v48;
      v96 = &block_descriptor_33;
      v49 = _Block_copy(&aBlock);
      v50 = a2;
      v51 = v36;

      sub_1CA19B2F8();
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_8();
      sub_1CA10B814(v52, v53);
      a6 = &unk_1CA1A0D40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
      OUTLINED_FUNCTION_0_9();
      sub_1CA10B7BC(v54, &unk_1EC433C70);
      sub_1CA19C788();
      MEMORY[0x1CCA99C20](0, v87, v88, v49);
      _Block_release(v49);

      (*(v91 + 8))(v88, v82);
      (*(v89 + 8))(v87, v90);
      [v51 size];
      if (v33 <= v55)
      {

        v58 = v85;
      }

      else
      {
        [v51 size];
        v57 = v56;

        v58 = v85;
        if (v34 > v57)
        {
          if (qword_1EE03B230 != -1)
          {
            OUTLINED_FUNCTION_0_2();
          }

          v59 = sub_1CA19AFF8();
          __swift_project_value_buffer(v59, qword_1EE040B90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
          v60 = sub_1CA19AF88();
          OUTLINED_FUNCTION_7_3(v60);
          OUTLINED_FUNCTION_14_0();
          *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
          v96 = type metadata accessor for ArtworkLoader();
          aBlock = v85;

          v61 = AMSLogKey();
          if (v61)
          {
            a6 = v61;
            sub_1CA19C118();
          }

          OUTLINED_FUNCTION_12_2();

          __swift_destroy_boxed_opaque_existential_2(&aBlock);
          OUTLINED_FUNCTION_11_2();
          OUTLINED_FUNCTION_18_0(&type metadata for Artwork.URLTemplate);
          sub_1CA10BDC8(&aBlock, &qword_1EC433830);
          sub_1CA19AF18();
          sub_1CA19AFA8();

          v45 = v92;
          OUTLINED_FUNCTION_21_0();
          sub_1CA107AE4(v79, v80, a6);

          goto LABEL_42;
        }
      }

      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v75 = sub_1CA19AFF8();
      __swift_project_value_buffer(v75, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v76 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v76);
      OUTLINED_FUNCTION_14_0();
      *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
      v96 = type metadata accessor for ArtworkLoader();
      aBlock = v58;

      v77 = AMSLogKey();
      if (v77)
      {
        a6 = v77;
        sub_1CA19C118();
      }

      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_12_2();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_18_0(&type metadata for Artwork.URLTemplate);
      sub_1CA10BDC8(&aBlock, &qword_1EC433830);
      sub_1CA19AF18();
      sub_1CA19AFA8();

      goto LABEL_41;
    }
  }

  swift_bridgeObjectRelease_n();
  v44 = a5;
LABEL_23:

  v45 = v92;
  sub_1CA107AE4(v92, v44, a6);
LABEL_42:
  sub_1CA1030E8(v45);
}

uint64_t sub_1CA1077FC(void *a1, const void *a2)
{
  v5 = *v2;
  sub_1CA108C04(a1, a2);
  v6 = v2[2];
  [v6 addOperation_];
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v7 = sub_1CA19AFF8();
  __swift_project_value_buffer(v7, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A50;
  v13 = v5;
  v12[0] = v2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v12);
  sub_1CA19AF68();
  sub_1CA19AF18();
  v14[3] = &type metadata for ArtworkRequest;
  v14[0] = swift_allocObject();
  memcpy((v14[0] + 16), a2, 0x58uLL);
  sub_1CA10308C(a2, v12);
  sub_1CA19AF38();
  sub_1CA10BDC8(v14, &qword_1EC433830);
  v10 = [v6 operationCount];
  v13 = MEMORY[0x1E69E6530];
  v12[0] = v10;
  sub_1CA19AF38();
  sub_1CA10BDC8(v12, &qword_1EC433830);
  sub_1CA19AF18();
  sub_1CA19AFA8();
}

void sub_1CA107AE4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = Artwork.Crop.preferredContentMode.getter(a1[5], a1[6]);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  type metadata accessor for ArtworkImageView();
  sub_1CA10B814(&qword_1EE03DBD0, type metadata accessor for ArtworkImageView);
  v7 = a3;
  sub_1CA19C898();
  sub_1CA10508C(sub_1CA10B80C, v6, v8, a1);

  sub_1CA103038(v8);
  sub_1CA105198(a1, 0);
}

uint64_t sub_1CA107C30()
{

  sub_1CA0EBEAC(v0 + 72);
  return v0;
}

uint64_t sub_1CA107C80()
{
  sub_1CA107C30();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

unint64_t sub_1CA107CDC()
{
  result = qword_1EE03C008;
  if (!qword_1EE03C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C008);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA107DD0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1CA107E0C(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v10 = MEMORY[0x1E69E7CC0];
  v8[2] = __dst;
  v8[3] = &v10;
  swift_beginAccess();
  v4 = sub_1CA102930(sub_1CA10BC5C, v8);
  if (!v2)
  {
    v5 = *(*(a1 + 24) + 16);
    if (v5 >= v4)
    {
      sub_1CA102B48(v4, v5);
      swift_endAccess();
      v6 = sub_1CA107FFC(v10);

      return v6;
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

BOOL sub_1CA107EF4(void *__src, uint64_t a2, uint64_t *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = static ArtworkRequest.__derived_struct_equals(_:_:)(__dst, a2);
  if (v6)
  {
    v8 = *(__src + 16);
    v7 = *(__src + 17);
    sub_1CA10BCDC(__src + 88, v15);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v17 = v15[0];
    v18 = v15[1];
    v19 = v16;

    sub_1CA16ACCC();
    v10 = *(*a3 + 16);
    sub_1CA16AD9C(v10);
    v11 = *a3;
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 56 * v10;
    *(v12 + 32) = sub_1CA10BD38;
    *(v12 + 40) = v9;
    v13 = v18;
    *(v12 + 48) = v17;
    *(v12 + 64) = v13;
    *(v12 + 80) = v19;
  }

  return v6;
}

uint64_t sub_1CA107FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1CA17C7E4(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_1CA10BC7C(v4, v12, &unk_1EC434030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332B0);
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CA17C7E4(v5 > 1, v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1CA108150()
{
  swift_weakInit();
  v0[2] = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v0[3] = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433250);
  sub_1CA107CDC();
  v0[4] = sub_1CA19C038();
  type metadata accessor for QueuePriority(0);
  sub_1CA10B814(&qword_1EE03BD58, type metadata accessor for QueuePriority);
  v0[5] = sub_1CA19C038();
  return v0;
}

uint64_t sub_1CA108254(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  result = sub_1CA181DE0(a1, v3);
  if (v6)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 40);
    v7 = 1;
  }

  else
  {
    v8 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 40);
    v7 = v8;
  }

  sub_1CA17AE60(v7);
  *(v1 + 40) = v9;
  result = swift_endAccess();
  if (!v4)
  {
    return sub_1CA10834C();
  }

  return result;
}

uint64_t sub_1CA10834C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA103884();
  }

  return result;
}

uint64_t sub_1CA1083B4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16))
  {
    return swift_endAccess();
  }

  v5 = sub_1CA1842C0();
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  result = swift_endAccess();
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    return result;
  }

  if (v7 != 1)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 40);
    sub_1CA17AE60(v7 - 1);
    *(v2 + 40) = v9;
    return swift_endAccess();
  }

  swift_beginAccess();
  sub_1CA17A5A4();
  swift_endAccess();
  result = sub_1CA1084B8(a1);
  if (!*(*(v2 + 40) + 16))
  {
    return sub_1CA108734();
  }

  return result;
}

uint64_t sub_1CA1084B8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
  v9 = v3;
  v8[0] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF68();
  sub_1CA19AF18();
  v9 = MEMORY[0x1E69E6530];
  v8[0] = a1;
  sub_1CA19AF38();
  sub_1CA10BDC8(v8, &qword_1EC433830);
  sub_1CA19AFC8();

  result = swift_weakLoadStrong();
  if (result)
  {
    *(swift_allocObject() + 16) = a1;
    sub_1CA103884();
  }

  return result;
}

uint64_t sub_1CA108734()
{
  v1 = *v0;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v6[3] = v1;
  v6[0] = v0;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v6);
  sub_1CA19AF68();
  sub_1CA19AF18();
  sub_1CA19AFC8();

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA103884();
  }

  return result;
}

void sub_1CA1089E4(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  if (qword_1EE03C208 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 addObserver:v1 selector:sel_operationDidChangePriority_ name:qword_1EE040BE8 object:a1];
  if (qword_1EE03C210 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v1 selector:sel_operationDidCancel_ name:qword_1EE040BF0 object:a1];
}

void sub_1CA108B00(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  if (qword_1EE03C208 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 removeObserver:v1 name:qword_1EE040BE8 object:a1];
  if (qword_1EE03C210 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v1 name:qword_1EE040BF0 object:a1];
}

void sub_1CA108C04(void *a1, const void *a2)
{
  v4 = *v2;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v2[3];
  v6 = sub_1CA102630();
  if (v6)
  {
    v7 = v6;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v8 = sub_1CA19AFF8();
    __swift_project_value_buffer(v8, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
    v14[3] = v4;
    v14[0] = v2;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    sub_1CA19AF68();
    sub_1CA19AF18();
    v13[3] = &type metadata for ArtworkRequest;
    v13[0] = swift_allocObject();
    memcpy(v16, __dst, 0x58uLL);
    memcpy((v13[0] + 16), __dst, 0x58uLL);
    sub_1CA10308C(v16, v15);
    sub_1CA19AF28();
    sub_1CA10BDC8(v13, &qword_1EC433830);
    sub_1CA19AFC8();

    [v7 cancel];
  }

  v11 = swift_allocObject();
  swift_weakInit();
  memcpy(v16, __dst, 0x58uLL);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  memcpy((v12 + 24), __dst, 0x58uLL);

  sub_1CA10308C(v16, v15);
  sub_1CA17D660(sub_1CA10BA48, v12);

  [v5 lock];
  sub_1CA108254([a1 queuePriority]);
  [v5 unlock];
  sub_1CA1089E4(a1);
}

uint64_t sub_1CA108FA8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_1CA10B140(a2, a3);
  swift_endAccess();
  return v5;
}

uint64_t sub_1CA10901C(void *a1, char a2, uint64_t a3, const void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA109098(a4, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1CA109098(const void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(v4 + 24);
  [v9 lock];
  sub_1CA109454(v4, a1);
  [v9 unlock];
  if (swift_weakLoadStrong())
  {
    LOBYTE(v16[0]) = a3 & 1;
    v10 = swift_allocObject();
    memcpy((v10 + 16), a1, 0x58uLL);
    *(v10 + 104) = a2;
    *(v10 + 112) = v16[0];
    sub_1CA10308C(a1, v17);
    sub_1CA10B888(a2);
    sub_1CA103884();
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v11 = sub_1CA19AFF8();
  __swift_project_value_buffer(v11, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A50;
  v18 = v8;
  v17[0] = v4;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v17);
  sub_1CA19AF68();
  sub_1CA19AF18();
  v16[3] = &type metadata for ArtworkRequest;
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), a1, 0x58uLL);
  sub_1CA10308C(a1, v17);
  sub_1CA19AF38();
  sub_1CA10BDC8(v16, &qword_1EC433830);
  v14 = [*(v4 + 16) operationCount];
  v18 = MEMORY[0x1E69E6530];
  v17[0] = v14;
  sub_1CA19AF38();
  sub_1CA10BDC8(v17, &qword_1EC433830);
  sub_1CA19AF18();
  sub_1CA19AFA8();
}

void sub_1CA109454(uint64_t a1, const void *a2)
{
  swift_beginAccess();
  v4 = sub_1CA17A6A0();
  swift_endAccess();
  if (v4)
  {
    sub_1CA1083B4([v4 queuePriority]);
    sub_1CA108B00(v4);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v5 = sub_1CA19AFF8();
    v9[5] = __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433220);
    v8[0] = a1;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v8);
    sub_1CA19AF68();
    sub_1CA19AF18();
    v9[3] = &type metadata for ArtworkRequest;
    v9[0] = swift_allocObject();
    memcpy((v9[0] + 16), a2, 0x58uLL);
    sub_1CA10308C(a2, v8);
    sub_1CA19AF28();
    sub_1CA10BDC8(v9, &qword_1EC433830);
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }
}

void sub_1CA109758(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = a3 + 32;
  v9 = *(a3 + 16);
  do
  {
    while (1)
    {
      v10 = v7 + v9;
      if (__OFADD__(v7, v9))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v11 = v10 / 2;
      if (v10 < -1 || v11 >= v3)
      {
        goto LABEL_40;
      }

      v13 = (v8 + 24 * v11);
      if (*v13 == a1 && v13[1] == a2)
      {
        goto LABEL_16;
      }

      if (sub_1CA19CAF8())
      {
        break;
      }

      if (sub_1CA19CAF8() & 1) != 0 || (v6)
      {
LABEL_16:
        v6 = 1;
        v9 = v11;
        if (v7 >= v11)
        {
          v15 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v6 = 0;
        v9 = v11;
        if (v7 >= v11)
        {
          return;
        }
      }
    }

    v7 = v11 + 1;
  }

  while (v11 + 1 < v9);
  if ((v6 & 1) == 0)
  {
    return;
  }

  v15 = 1;
LABEL_23:
  v30 = MEMORY[0x1E69E7CC0];
  if (v3 < v11 + v15)
  {
LABEL_42:
    __break(1u);
    return;
  }

  sub_1CA10B394(v11 + v15, v3, a3);
  v17 = v16;
  v19 = v18 >> 1;
  v21 = (v20 + 24 * v16 + 16);
  while (v19 != v17)
  {
    if (v17 >= v19)
    {
      goto LABEL_41;
    }

    v22 = *v21;
    if (*(v21 - 2) == a1 && *(v21 - 1) == a2)
    {
      v26 = v22;
    }

    else
    {
      v24 = sub_1CA19CAF8();
      v25 = v22;
      if ((v24 & 1) == 0)
      {
        v28 = v25;
        swift_unknownObjectRelease();

        return;
      }
    }

    v27 = v22;
    MEMORY[0x1CCA998F0]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA19C2F8();
    }

    sub_1CA19C318();

    v21 += 3;
    ++v17;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1CA1099B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = *(*v3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v3 + 32;
    v10 = *(*v3 + 16);
    while (1)
    {
      v11 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      v12 = v11 / 2;
      if (v11 < -1 || v12 >= v7)
      {
        goto LABEL_35;
      }

      v14 = (v9 + 24 * v12);
      if (*v14 == a2 && v14[1] == a3)
      {
        v16 = 0;
      }

      else
      {
        result = sub_1CA19CAF8();
        if (result)
        {
          v16 = -1;
        }

        else
        {
          result = sub_1CA19CAF8();
          if ((result & 1) == 0)
          {
            v10 = v12;
            v16 = 1;
            goto LABEL_19;
          }

          v16 = 0;
        }
      }

      v8 = v12 + 1;
LABEL_19:
      if (v10 <= v8)
      {
        v17 = v16 + 1;
        if (v10 - v8 <= 1)
        {
          v18 = v8;
        }

        else
        {
          v18 = v8 + 1;
        }

        if (v17 <= 1)
        {
          v19 = v18;
        }

        else
        {
          v19 = v8;
        }

        v6 = v21;
        if (v7 < v19)
        {
          __break(1u);
          break;
        }

        goto LABEL_31;
      }
    }
  }

  v19 = 0;
LABEL_31:

  v20 = v6;

  return sub_1CA102C50(v19, v19, a2, a3, v20);
}

uint64_t sub_1CA109B20(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  result = sub_1CA0F04EC(a4);
  v8 = result;
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      return v12;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA99FB0](i, a4);
      v10 = result;
    }

    else
    {
      if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v10;
    a2(&v12, &v11);

    if (v4)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_1CA109C1C(char a1, void *a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1CA19BDA8();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xA0)) = 0;
  *(v4 + *((*v13 & *v4) + 0xA8)) = 0;
  *(v4 + *((*v13 & *v4) + 0x98)) = a1;
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v46, sel_init);
  v38 = a2;
  v15 = sub_1CA19AD88();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = sub_1CA10BE20;
  v45 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CA10338C;
  v43 = &block_descriptor_97;
  v17 = _Block_copy(&aBlock);

  v18 = a3;
  v19 = [a3 dataTaskWithURL:v15 completionHandler:v17];
  _Block_release(v17);

  v20 = *((*v13 & *v14) + 0xA8);
  v21 = *(v14 + v20);
  *(v14 + v20) = v19;

  v39.receiver = v14;
  v39.super_class = ObjectType;
  v22 = v19;
  v23 = __ROR8__(objc_msgSendSuper2(&v39, sel_queuePriority) + 8, 2);
  LODWORD(v24) = 1.0;
  if (v23 <= 4)
  {
    LODWORD(v24) = dword_1CA1A1BEC[v23];
  }

  [v22 setPriority_];

  if (a4)
  {
    sub_1CA19B7D8();

    sub_1CA19BE18();
    type metadata accessor for DynamicViewController();

    static DynamicViewController.setupPageRenderPresenterWrapper(with:bag:)(v25, v12, v26, v27, v28, v29, v30, v31, v37, v38, v39.receiver, v39.super_class, aBlock, v41, v42, v43, v44, v45, v46.receiver, v46.super_class, v47, v48, v49, v50, v51, v52);
    v33 = v32;

    v34 = sub_1CA19ADF8();
    (*(*(v34 - 8) + 8))(v38, v34);
    (*(v37 + 8))(v12, v10);
    *(v14 + *((*v13 & *v14) + 0xA0)) = v33;
  }

  else
  {
    v35 = sub_1CA19ADF8();
    (*(*(v35 - 8) + 8))(v38, v35);
  }

  return v14;
}

void sub_1CA109FF4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  sub_1CA10BE28(a1, a2);
  v5 = a4;
  sub_1CA19BDE8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1CA10A0B4(v8, v9, v10);
    sub_1CA10BE3C(v8, v9, v10);
  }

  else
  {
    sub_1CA10BE3C(v8, v9, v10);
  }
}

void sub_1CA10A0B4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1CA19BC38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7D40];
  if (*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0)))
  {
    *v10 = 1;
    (*(v8 + 104))(v10, *MEMORY[0x1E69AB438], v7);

    PageRenderMetricsPresenterWrapper.end(_:)(v10, v12, v13, v14, v15, v16, v17, v18, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);

    (*(v8 + 8))(v10, v7);
  }

  v19 = [v3 isCancelled];
  if ((v19 & 1) == 0)
  {
    v26 = v3;
    MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 2) = &type metadata for ImageAssetDecoder;
    *(&v25 - 1) = &off_1EE03BFC0;
    swift_getKeyPath();
    v20 = sub_1CA19AD38();
    v26 = v3;
    MEMORY[0x1EEE9AC00](v20);
    *(&v25 - 2) = &type metadata for ImageAssetDecoder;
    *(&v25 - 1) = &off_1EE03BFC0;
    swift_getKeyPath();
    sub_1CA19AD48();
    v26 = a1;
    v27 = a2;
    LOBYTE(v28) = a3 & 1;
    v21 = *(v3 + *((*v11 & *v3) + 0x98));
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = MEMORY[0x1EEE9AC00](v22);
    *(&v25 - 2) = sub_1CA10BE48;
    *(&v25 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332D0);
    sub_1CA0F2110(0, &qword_1EE03C168);
    sub_1CA19BDD8();

    v24 = v29;
    sub_1CA17D778(v29, v30);
    sub_1CA10B868(v24);
  }
}

uint64_t sub_1CA10A3EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433238);
  swift_allocObject();
  *(v0 + 16) = sub_1CA10B03C();

  v1 = sub_1CA10A460();

  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1CA10A460()
{
  v1 = *v0;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v9[3] = v1;
  v9[0] = v0;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  sub_1CA19AF18();
  sub_1CA19AF68();
  sub_1CA19AFA8();

  v5 = v0[2];
  [v5 lock];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433240);
  swift_allocObject();
  v6 = sub_1CA10AC44();
  swift_beginAccess();

  MEMORY[0x1CCA998F0](v7);
  sub_1CA16AD70(*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1CA19C318();
  swift_endAccess();
  [v5 unlock];
  return v6;
}

uint64_t sub_1CA10A6EC()
{
  v1 = *(v0 + 16);
  [v1 lock];
  swift_beginAccess();
  if (sub_1CA0F04EC(*(v0 + 24)) == 1 && (v2 = *(v0 + 24), sub_1CA0F04EC(v2)))
  {
    sub_1CA17EBD4(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {

      v3 = MEMORY[0x1CCA99FB0](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }
  }

  else
  {
    v3 = 0;
  }

  [v1 unlock];
  return v3;
}

uint64_t sub_1CA10A7C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433258);
  sub_1CA19C5B8();
  return v1;
}

uint64_t sub_1CA10A844()
{
  v1 = *(v0 + 16);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v5 = sub_1CA19C818();
    if (v5)
    {
      v6 = v5;
      v3 = sub_1CA16B66C(v5, 0);

      sub_1CA10B598(v3 + 32, v6, v2);
      v8 = v7;

      if (v8 == v6)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  [v1 unlock];
  return v3;
}

uint64_t sub_1CA10A968(unint64_t a1)
{
  v3 = sub_1CA0F04EC(a1);
  v4 = sub_1CA0F04EC(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1CA102D18(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1CA10B400(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1CA10AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CA19B2D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[1] = a3;
  v20 = a1;
  v19[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA1A0C20;
  sub_1CA19B2C8();
  v18 = v12;
  sub_1CA10B814(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA10B7BC(&qword_1EE03C2A0, &unk_1EC433C70);
  sub_1CA19C788();
  v15 = v4;
  v16 = &v20;
  v17 = v19;
  sub_1CA19C5A8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1CA10AC44()
{
  v12 = sub_1CA19C588();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CA19B318();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CA19C558();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1CA0F2110(0, &qword_1EE03C230);
  v11[0] = "Creating segment in arena";
  v11[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433248);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CA1A0C20;
  sub_1CA19C548();
  v13 = v7;
  sub_1CA10B814(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  sub_1CA10B7BC(&qword_1EE03C298, &unk_1EC4345A0);
  sub_1CA19C788();
  sub_1CA19B2F8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v12);
  v8 = sub_1CA19C5D8();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  return v0;
}

uint64_t sub_1CA10AF40(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);

  sub_1CA109758(a2, a3, v6);
  v8 = v7;

  return v8;
}

uint64_t sub_1CA10AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1CA1099B0(a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1CA10B03C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v0 selector:sel_reduceMemoryUsage name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 addObserver:v0 selector:sel_reduceMemoryUsage name:*MEMORY[0x1E69DDAD8] object:0];

  return v0;
}

uint64_t sub_1CA10B140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v6 = sub_1CA184264();
  if (__OFADD__(*(v16 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433278);
  if (sub_1CA19C9A8())
  {
    v10 = sub_1CA184264();
    if ((v9 & 1) == (v11 & 1))
    {
      v8 = v10;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1CA19CB58();
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v16;
  if (v9)
  {
    v13 = *(v16 + 56);
    result = *(v13 + 8 * v8);
    *(v13 + 8 * v8) = a1;
  }

  else
  {
    sub_1CA17B180(v8, a2, a1, v16);
    sub_1CA10308C(a2, &v15);
    result = 0;
  }

  *v3 = v12;
  return result;
}

void (*sub_1CA10B260(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1CA0E8158(a3);
  sub_1CA17EBD4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA99FB0](a2, a3);
  }

  *a1 = v7;
  return sub_1CA10B2EC;
}

uint64_t (*sub_1CA10B300(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1CA0E8158(a3);
  sub_1CA17EBD4(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1CCA99FB0](a2, a3);
  }

  *a1 = v7;
  return sub_1CA10B38C;
}

unint64_t sub_1CA10B394(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CA10B400(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1CA19C818();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1CA0F04EC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1CA0F2110(0, &qword_1EE03C168);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1CA10B7BC(&qword_1EC433260, &qword_1EC433258);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433258);
          v9 = sub_1CA10B260(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA10B598(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1CA19C818();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1CA0F04EC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433240);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1CA10B7BC(&qword_1EC433270, &qword_1EC433268);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433268);
          v9 = sub_1CA10B300(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA10B76C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CA10AF40(a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA10B7BC(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1CA10B814(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1CA10B894@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void, void)@<X1>, void *a3@<X8>)
{
  result = a2(&v6, *a1, a1[1]);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

UIImage *sub_1CA10B8E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, UIImage **a4@<X8>)
{
  result = sub_1CA10A3D4(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CA10B914@<X0>(void *__src@<X2>, uint64_t a2@<X0>, void *a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1CA108FA8(a2, a3, __dst);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CA10B99C(uint64_t a1, uint64_t a2, void *__src)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_1CA10901C(v4, v5, a2, __dst);
}

uint64_t objectdestroy_41Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1CA10BB04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1CA10BB88@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1CA107E0C(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1CA10BC7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1CA10BD38(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

unint64_t sub_1CA10BD74()
{
  result = qword_1EE03C000;
  if (!qword_1EE03C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C000);
  }

  return result;
}

uint64_t sub_1CA10BDC8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA10BE28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA0F763C(a1, a2);
  }

  return a1;
}

void sub_1CA10BE3C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1CA0F76A8(a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return sub_1CA19AF18();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 96);

  return sub_1CA103038(v1 + 112);
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 160) = a1;
  v4 = *(v2 - 256);
  *(v2 - 184) = v1;
  *(v2 - 176) = v4;

  return sub_1CA19AF38();
}

uint64_t OUTLINED_FUNCTION_23_0()
{
  *(v2 - 152) = *(v0 + 72);
  *(v2 - 176) = v1;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2)
{

  return sub_1CA10BC7C(a1, a2, v2);
}

void *ArtworkRequest.init(artwork:exactSize:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = Artwork.bestVariant(prefersLayeredImage:)(0);
  v8 = v7;
  v9 = *(&v7 + 1);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 56);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);

  __src[0] = v11;
  __src[1] = v10;
  *&__src[2] = a3;
  *&__src[3] = a4;
  LOBYTE(__src[4]) = v12;
  __src[5] = v14;
  __src[6] = v13;
  __src[7] = v15;
  __src[8] = v16;
  LOBYTE(__src[9]) = v8;
  __src[10] = v9;
  v21[0] = v11;
  v21[1] = v10;
  *&v21[2] = a3;
  *&v21[3] = a4;
  v22 = v12;
  v23 = v14;
  v24 = v13;
  v25 = v15;
  v26 = v16;
  v27 = v8;
  v28 = v9;
  sub_1CA10308C(__src, v19);
  sub_1CA1030E8(v21);
  return memcpy(a2, __src, 0x58uLL);
}

void ArtworkRequest.fallback.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CA19AC68();
  OUTLINED_FUNCTION_1_0();
  v76 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v67 - v11;
  sub_1CA19ACB8();
  OUTLINED_FUNCTION_1_0();
  v72 = v14;
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v75 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - v18;
  v20 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_3();
  v26 = v25 - v24;
  sub_1CA19ADD8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v27 = &qword_1EC433170;
    v28 = v19;
LABEL_3:
    sub_1CA0F54A0(v28, v27);
    goto LABEL_26;
  }

  v74 = v4;
  v71 = v22;
  (*(v22 + 32))(v26, v19, v20);
  v29 = sub_1CA19ADC8();
  v31 = v75;
  if (!v30)
  {
LABEL_25:
    v46 = OUTLINED_FUNCTION_0_10();
    v47(v46);
LABEL_26:
    *&v49 = OUTLINED_FUNCTION_2_7();
LABEL_27:
    *a1 = v49;
    *(a1 + 16) = v50;
    *(a1 + 32) = v51;
    *(a1 + 48) = v52;
    *(a1 + 64) = v53;
    *(a1 + 80) = v48;
    return;
  }

  if (v29 == 1668509025 && v30 == 0xE400000000000000)
  {
  }

  else
  {
    v33 = sub_1CA19CAF8();

    if ((v33 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_1CA19AC88();
  v34 = v73;
  if (__swift_getEnumTagSinglePayload(v12, 1, v73) == 1)
  {
    v35 = OUTLINED_FUNCTION_0_10();
    v36(v35);
    v27 = &unk_1EC4339D0;
    v28 = v12;
    goto LABEL_3;
  }

  (*(v72 + 32))(v31, v12, v34);
  v37 = sub_1CA19AC78();
  if (!v37)
  {
    (*(v72 + 8))(v31, v34);
    goto LABEL_25;
  }

  v38 = v37;
  v67 = v2;
  v68 = a1;
  v39 = 0;
  v40 = *(v37 + 16);
  v69 = v76 + 16;
  v70 = v40;
  v41 = (v76 + 8);
  v42 = v74;
  while (1)
  {
    if (v70 == v39)
    {

      (*(v72 + 8))(v75, v73);
      v54 = OUTLINED_FUNCTION_0_10();
      v55(v54);
      goto LABEL_36;
    }

    if (v39 >= *(v38 + 16))
    {
      break;
    }

    (*(v76 + 16))(v9, v38 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v39, v42);
    if (sub_1CA19AC48() == 0x6B6361626C6C6166 && v43 == 0xEB000000004C5255)
    {

      goto LABEL_31;
    }

    v45 = sub_1CA19CAF8();

    if (v45)
    {
      v42 = v74;
LABEL_31:

      v56 = sub_1CA19AC58();
      v59 = v71;
      v58 = v72;
      if (v57)
      {
        v92 = v56;
        v93 = v57;
        sub_1CA0FB77C();
        v60 = sub_1CA19C748();
        v61 = v42;
        v63 = v62;
        (*v41)(v9, v61);
        (*(v58 + 8))(v75, v73);
        (*(v59 + 8))(v26, v20);
        if (v63)
        {

          v85 = *(v67 + 16);
          v94 = *(v67 + 40);
          *&v78[7] = *(v67 + 40);
          v80 = *(v67 + 16);
          *(v81 + 1) = *v78;
          v64 = *(v67 + 32);
          v65 = *(v67 + 72);
          v66 = *(v67 + 80);
          *&v79 = v60;
          *(&v79 + 1) = v63;
          LOBYTE(v81[0]) = v64;
          *&v82 = 0;
          v81[1] = *&v78[15];
          BYTE8(v82) = v65;
          v83 = v66;
          v84[0] = v60;
          v84[1] = v63;
          v86 = v64;
          *&v87[15] = *&v78[15];
          v88 = 0;
          *v87 = *v78;
          v89 = 0;
          v90 = v65;
          v91 = v66;
          sub_1CA10C7F4(&v94, v77);
          sub_1CA10308C(&v79, v77);
          sub_1CA1030E8(v84);
          v49 = v79;
          v50 = v80;
          v51 = v81[0];
          v52 = v81[1];
          v53 = v82;
          v48 = v83;
LABEL_37:
          a1 = v68;
          goto LABEL_27;
        }
      }

      else
      {
        (*v41)(v9, v42);
        (*(v58 + 8))(v75, v73);
        (*(v59 + 8))(v26, v20);
      }

LABEL_36:
      *&v49 = OUTLINED_FUNCTION_2_7();
      goto LABEL_37;
    }

    v42 = v74;
    (*v41)(v9, v74);
    ++v39;
  }

  __break(1u);
}

void ArtworkRequest.makeURL()()
{
  v1 = v0;
  if (qword_1EE03E288 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4332D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A19C0;
    *(inited + 32) = 0;
    OUTLINED_FUNCTION_4_7();
    if (!(v6 ^ v7 | v5))
    {
      break;
    }

    if (v4 <= -9.22337204e18)
    {
      goto LABEL_27;
    }

    if (v4 >= 9.22337204e18)
    {
      goto LABEL_28;
    }

    v8 = v3;
    *&v27 = v4;
    *(v3 + 40) = sub_1CA19CAB8();
    *(v8 + 48) = v9;
    *(v8 + 56) = 1;
    OUTLINED_FUNCTION_4_7();
    if (!(v6 ^ v7 | v5))
    {
      goto LABEL_29;
    }

    if (v10 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v10 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    *&v27 = v10;
    *(v8 + 64) = sub_1CA19CAB8();
    *(v8 + 72) = v11;
    *(v8 + 80) = 2;
    v12 = *(v1 + 48);
    *(v8 + 88) = *(v1 + 40);
    *(v8 + 96) = v12;
    *(v8 + 104) = 3;
    v13 = 0xE300000000000000;
    v14 = 6778480;
    switch(*(v1 + 72))
    {
      case 1:
        v13 = 0xE400000000000000;
        v14 = 1734701162;
        break;
      case 2:
        v13 = 0xE400000000000000;
        v14 = 1667851624;
        break;
      case 3:
        v14 = 7496556;
        break;
      default:
        break;
    }

    v27 = *v1;
    *(v8 + 112) = v14;
    *(v8 + 120) = v13;
    *(v8 + 128) = 4;
    v26[0] = *(v1 + 80);

    *(v8 + 136) = sub_1CA19CAB8();
    *(v8 + 144) = v15;
    sub_1CA10CC2C();
    v1 = sub_1CA19C038();
    v17 = *(&v27 + 1);
    v16 = v27;
    v18 = 1 << *(v1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v1 + 64);
    sub_1CA10CC80(&v27, v26);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        sub_1CA19ADD8();

        return;
      }

      v20 = *(v1 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        do
        {
LABEL_22:
          v20 &= v20 - 1;
          v26[0] = v16;
          v26[1] = v17;
          sub_1CA0FB77C();

          v16 = sub_1CA19C738();
          v25 = v24;

          v17 = v25;
        }

        while (v20);
        continue;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_1CA10CBF8()
{
  result = [objc_opt_self() scale];
  qword_1EE03E290 = v1;
  return result;
}

unint64_t sub_1CA10CC2C()
{
  result = qword_1EE03BD88[0];
  if (!qword_1EE03BD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03BD88);
  }

  return result;
}

void *ArtworkRequest.init(artwork:preferredSize:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1CA0FF238(*(a1 + 64), *(a1 + 72), a3, a4, *(a1 + 32), *(a1 + 40));
  ArtworkRequest.init(artwork:exactSize:)(a1, __src, v6, v7);
  return memcpy(a2, __src, 0x58uLL);
}

uint64_t ArtworkRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1CA19C198();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1CCA9A260](*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x1CCA9A260](*&v6);
  Artwork.Style.rawValue.getter(*(v2 + 32));
  sub_1CA19C198();

  sub_1CA19C198();
  v7 = *(v2 + 72);

  return sub_1CA0FEE60(a1, v7);
}

uint64_t ArtworkRequest.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  ArtworkRequest.makeURL()();
  v3 = sub_1CA19ADF8();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1CA19AD68();
    (*(*(v3 - 8) + 8))(v2, v3);
    return v5;
  }

  return result;
}

BOOL static ArtworkRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1CA19CAF8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  v6 = Artwork.Style.rawValue.getter(*(a1 + 32));
  v8 = v7;
  if (v6 == Artwork.Style.rawValue.getter(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1CA19CAF8();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v12 && (sub_1CA19CAF8() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 64);
  v14 = *(a2 + 64);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(a1 + 56) == *(a2 + 56) && v13 == v14;
    if (!v15 && (sub_1CA19CAF8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (sub_1CA0F9A34(*(a1 + 72), *(a2 + 72)))
  {
    return *(a1 + 80) == *(a2 + 80);
  }

  return 0;
}

uint64_t ArtworkRequest.hashValue.getter()
{
  sub_1CA19CBD8();
  ArtworkRequest.hash(into:)(v1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA10D080()
{
  sub_1CA19CBD8();
  ArtworkRequest.hash(into:)(v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA10D0C0()
{
  result = qword_1EE03E278;
  if (!qword_1EE03E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E278);
  }

  return result;
}

uint64_t sub_1CA10D124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA10D164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Artwork.URLTemplate.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return sub_1CA19CAF8();
  }
}

uint64_t sub_1CA10D278()
{
  v1 = v0;
  v2 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EE040B90);
  (*(v4 + 16))(v8, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v10 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_10_4();
  v11 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_13_2(v11, xmmword_1CA1A0930);
  v16[0] = v1;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_6_5();

  __swift_destroy_boxed_opaque_existential_2(v16);
  sub_1CA19AF18();
  if (*(v1 + 20))
  {
    v14 = 0;
    memset(v16, 0, sizeof(v16));
  }

  else
  {
    LODWORD(v16[0]) = *(v1 + 16);
    v14 = MEMORY[0x1E69E72F0];
  }

  v17 = v14;
  sub_1CA19AF38();
  sub_1CA0F0440(v16);
  sub_1CA19AFC8();

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1CA10D4CC()
{
  type metadata accessor for AssertionController();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  qword_1EE040CC8 = result;
  return result;
}

uint64_t sub_1CA10D508()
{
  v1 = v0;
  v2 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  if (*(v1 + 20))
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    __swift_project_value_buffer(v2, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v9 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v9);
    OUTLINED_FUNCTION_4_8();
    v10 = OUTLINED_FUNCTION_11_3();
    v11 = OUTLINED_FUNCTION_16_1(v10, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_7_4(v11);
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_5_7();
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v40);
    sub_1CA19AF18();
    goto LABEL_27;
  }

  if (!*(v1 + 24))
  {
    v20 = *(v1 + 16);
    v21 = objc_allocWithZone(MEMORY[0x1E698D038]);
    v22 = sub_1CA10E3A8(v20, 11, 13, 0xD000000000000039, 0x80000001CA1A9C60);
    v23 = *(v1 + 24);
    *(v1 + 24) = v22;
    v24 = v22;

    if (v22)
    {
      v25 = [v24 acquire];

      if (v25)
      {
        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        __swift_project_value_buffer(v2, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v26 = OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_7_3(v26);
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_10_4();
        v27 = swift_allocObject();
        v28 = OUTLINED_FUNCTION_13_2(v27, xmmword_1CA1A0930);
        OUTLINED_FUNCTION_7_4(v28);
        v29 = AMSLogKey();
        if (v29)
        {
          v30 = v29;
          sub_1CA19C118();
        }

        OUTLINED_FUNCTION_14_1();

        __swift_destroy_boxed_opaque_existential_2(v40);
        sub_1CA19AF18();
        OUTLINED_FUNCTION_15_0();
        sub_1CA0F0440(v40);
        sub_1CA19AFC8();
      }
    }

    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    __swift_project_value_buffer(v2, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v31 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_7_3(v31);
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_10_4();
    v32 = swift_allocObject();
    v33 = OUTLINED_FUNCTION_13_2(v32, xmmword_1CA1A0930);
    OUTLINED_FUNCTION_7_4(v33);
    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_14_1();

    __swift_destroy_boxed_opaque_existential_2(v40);
    sub_1CA19AF18();
    OUTLINED_FUNCTION_15_0();
    sub_1CA0F0440(v40);
LABEL_27:
    sub_1CA19AFB8();
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v14 = __swift_project_value_buffer(v2, qword_1EE040B90);
  (*(v4 + 16))(v8, v14, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v15 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v15);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_10_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_13_2(v16, xmmword_1CA1A0930);
  OUTLINED_FUNCTION_7_4(v17);
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_6_5();

  __swift_destroy_boxed_opaque_existential_2(v40);
  sub_1CA19AF18();
  v36 = *(v1 + 24);
  if (v36)
  {
    v37 = sub_1CA10E434();
  }

  else
  {
    v37 = 0;
    v40[1] = 0;
    v40[2] = 0;
  }

  v40[0] = v36;
  v40[3] = v37;
  v38 = v36;
  sub_1CA19AF38();
  sub_1CA0F0440(v40);
  sub_1CA19AFB8();

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1CA10DB54()
{
  v1 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  if (([objc_opt_self() devMode] & 1) == 0)
  {
    if (*(v0 + 20))
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      __swift_project_value_buffer(v1, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v14 = OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_7_3(v14);
      OUTLINED_FUNCTION_4_8();
      v15 = OUTLINED_FUNCTION_11_3();
      v16 = OUTLINED_FUNCTION_16_1(v15, xmmword_1CA1A0B80);
      OUTLINED_FUNCTION_8_5(v16);
      v17 = AMSLogKey();
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *(v0 + 24);
      if (v18)
      {
        v19 = *(v0 + 16);
        [v18 invalidate];
        v20 = *(v0 + 24);
        *(v0 + 24) = 0;

        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        __swift_project_value_buffer(v1, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v21 = OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_7_3(v21);
        OUTLINED_FUNCTION_4_8();
        v22 = OUTLINED_FUNCTION_11_3();
        v23 = OUTLINED_FUNCTION_16_1(v22, xmmword_1CA1A0930);
        OUTLINED_FUNCTION_8_5(v23);
        v24 = AMSLogKey();
        if (v24)
        {
          v25 = v24;
          sub_1CA19C118();
        }

        OUTLINED_FUNCTION_5_7();
        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(v32);
        sub_1CA19AF18();
        v33 = MEMORY[0x1E69E72F0];
        LODWORD(v32[0]) = v19;
        sub_1CA19AF38();
        sub_1CA0F0440(v32);
        sub_1CA19AFC8();
      }

      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      __swift_project_value_buffer(v1, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      v28 = OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_7_3(v28);
      OUTLINED_FUNCTION_4_8();
      v29 = OUTLINED_FUNCTION_11_3();
      v30 = OUTLINED_FUNCTION_16_1(v29, xmmword_1CA1A0B80);
      OUTLINED_FUNCTION_8_5(v30);
      v17 = AMSLogKey();
      if (!v17)
      {
LABEL_26:
        OUTLINED_FUNCTION_5_7();
        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(v32);
        sub_1CA19AF18();
        sub_1CA19AFB8();
      }
    }

    v31 = v17;
    sub_1CA19C118();

    goto LABEL_26;
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v8 = __swift_project_value_buffer(v1, qword_1EE040B90);
  (*(v3 + 16))(v7, v8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v9 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v9);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_10_4();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_13_2(v10, xmmword_1CA1A0930);
  OUTLINED_FUNCTION_8_5(v11);
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_6_5();

  __swift_destroy_boxed_opaque_existential_2(v32);
  sub_1CA19AF18();
  if (*(v0 + 20))
  {
    v26 = 0;
    memset(v32, 0, sizeof(v32));
  }

  else
  {
    LODWORD(v32[0]) = *(v0 + 16);
    v26 = MEMORY[0x1E69E72F0];
  }

  v33 = v26;
  sub_1CA19AF38();
  sub_1CA0F0440(v32);
  sub_1CA19AFC8();

  return (*(v3 + 8))(v7, v1);
}

void sub_1CA10E168()
{
  sub_1CA10E2CC();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1CA10E388;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1CA12460C;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:15.0];
  _Block_release(v3);
  v5 = *(v0 + 32);
  *(v0 + 32) = v4;
}

uint64_t sub_1CA10E274()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA10DB54();
  }

  return result;
}

void sub_1CA10E2CC()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t sub_1CA10E330()
{
  sub_1CA10E308();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA10E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = sub_1CA19C0E8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithPID:a1 flags:a2 reason:a3 name:v9];

  return v10;
}

unint64_t sub_1CA10E434()
{
  result = qword_1EE03BD68;
  if (!qword_1EE03BD68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03BD68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1CA19AF88();
}

uint64_t OUTLINED_FUNCTION_13_2(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for AssertionController();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_15_0()
{
  *(v2 - 88) = v0;
  *(v2 - 112) = v1;

  return sub_1CA19AF38();
}

uint64_t OUTLINED_FUNCTION_16_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for AssertionController();
}

uint64_t sub_1CA10E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v49 = a1;
  v50 = a2;
  OUTLINED_FUNCTION_0_11();
  v48 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v47 = v10;
  v11 = type metadata accessor for AssetSearchOutcome();
  OUTLINED_FUNCTION_0_11();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_11();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v27 = *(v24 + 48);
  v46 = v13;
  v28 = *(v13 + 16);
  v28(&v43 - v25, v49, v11);
  v28(&v26[v27], v50, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28(v19, v26, v11);
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = v48;
      v37 = &v26[v27];
      v38 = v9;
      v39 = v9;
      v40 = v47;
      (*(v48 + 32))(v39, v37, v47);
      v34 = sub_1CA19C0D8();
      v41 = *(v36 + 8);
      v41(v38, v40);
      v41(v19, v40);
      goto LABEL_12;
    }

    v17 = v19;
LABEL_7:
    (*(v48 + 8))(v17, v47);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28(v17, v26, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v47;
      v31 = v48;
      v32 = &v26[v27];
      v33 = v44;
      (*(v48 + 32))(v44, v32, v47);
      v34 = sub_1CA19C0D8();
      v35 = *(v31 + 8);
      v35(v33, v30);
      v35(v17, v30);
LABEL_12:
      v22 = v46;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v34 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v34 = 0;
  v11 = TupleTypeMetadata2;
LABEL_13:
  (*(v22 + 8))(v26, v11);
  return v34 & 1;
}

uint64_t sub_1CA10E9AC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA10EA10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1CA10EB28(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1CA10ED9C()
{
  sub_1CA10ED74();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA10EDF0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1CA10F1C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA10EE80(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1CA10EFC4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1CA10F1C8()
{
  result = qword_1EE03B478;
  if (!qword_1EE03B478)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE03B478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic15AssetFetchErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1CA10F22C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA10F26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1CA10F2B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1CA10F2D8()
{
  [OUTLINED_FUNCTION_1_9() lock];
  v0 = OUTLINED_FUNCTION_0_12();
  sub_1CA10FCD4(v0);
  v1 = OUTLINED_FUNCTION_0_12();
  AssetFetchOperation.unlockedOutputBlock.setter(v1, v2);
  [OUTLINED_FUNCTION_1_9() unlock];
  v3 = OUTLINED_FUNCTION_0_12();

  return sub_1CA0EBE84(v3);
}

uint64_t sub_1CA10F34C()
{
  result = sub_1CA19C0E8();
  qword_1EE040BE8 = result;
  return result;
}

uint64_t sub_1CA10F384()
{
  result = sub_1CA19C0E8();
  qword_1EE040BF0 = result;
  return result;
}

uint64_t AssetFetchOperation.unlockedOutputBlock.getter()
{
  v1 = *(v0 + qword_1EE03D348);
  sub_1CA10FCD4(v1);
  return v1;
}

uint64_t AssetFetchOperation.unlockedOutputBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EE03D348);
  v4 = *(v2 + qword_1EE03D348);
  *v3 = a1;
  v3[1] = a2;
  return sub_1CA0EBE84(v4);
}

uint64_t sub_1CA10F424()
{
  [OUTLINED_FUNCTION_1_9() lock];
  v0 = AssetFetchOperation.unlockedOutputBlock.getter();
  [OUTLINED_FUNCTION_1_9() unlock];
  return v0;
}

id sub_1CA10F480(void *a1)
{
  v1 = a1;
  v2 = AssetFetchOperation.queuePriority.getter();

  return v2;
}

id AssetFetchOperation.queuePriority.getter()
{
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  return objc_msgSendSuper2(&v1, sel_queuePriority);
}

void sub_1CA10F51C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  AssetFetchOperation.queuePriority.setter(a3);
}

void AssetFetchOperation.queuePriority.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9();
  Operation = type metadata accessor for AssetFetchOperation();
  v6.receiver = v1;
  v6.super_class = Operation;
  v4 = objc_msgSendSuper2(&v6, sel_queuePriority);
  v5.receiver = v1;
  v5.super_class = Operation;
  objc_msgSendSuper2(&v5, sel_setQueuePriority_, a1);
  sub_1CA10F604(v4);
}

void sub_1CA10F604(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EE03C208 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE040BE8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0B80;
  sub_1CA19C898();
  type metadata accessor for QueuePriority(0);
  v7 = v6;
  *(inited + 96) = v6;
  *(inited + 72) = a1;
  sub_1CA19C898();
  v8 = [v1 queuePriority];
  *(inited + 168) = v7;
  *(inited + 144) = v8;
  sub_1CA19C038();
  v9 = sub_1CA19C008();

  [v3 postNotificationName:v4 object:v1 userInfo:v9];
}

uint64_t sub_1CA10F7DC(uint64_t a1)
{
  result = [v1 isCancelled];
  if ((result & 1) == 0)
  {
    result = sub_1CA10F424();
    if (result)
    {
      v4 = result;
      sub_1CA10F2D8();
      v4(a1);

      return sub_1CA0EBE84(v4);
    }
  }

  return result;
}

Swift::Void __swiftcall AssetFetchOperation.main()()
{
  OUTLINED_FUNCTION_2_9();
  v0 = sub_1CA19BDF8();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v7 - v1);
  sub_1CA10BD74();
  v3 = swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 3;
  *v2 = v3;
  OUTLINED_FUNCTION_0_12();
  swift_storeEnumTagMultiPayload();
  sub_1CA10F7DC(v2);
  v5 = OUTLINED_FUNCTION_0_12();
  v6(v5);
}

void sub_1CA10F97C(void *a1)
{
  v1 = a1;
  AssetFetchOperation.main()();
}

Swift::Void __swiftcall AssetFetchOperation.cancel()()
{
  sub_1CA10F2D8();
  OUTLINED_FUNCTION_3_7();
  objc_msgSendSuper2(&v2, sel_cancel);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EE03C210 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1EE040BF0 object:v0];
}

void sub_1CA10FAA8(void *a1)
{
  v1 = a1;
  AssetFetchOperation.cancel()();
}

id AssetFetchOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetFetchOperation.init()()
{
  v1 = qword_1EE03D340;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  v2 = (v0 + qword_1EE03D348);
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_3_7();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AssetFetchOperation.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_7();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t sub_1CA10FC84(uint64_t a1)
{
  v2 = *(a1 + qword_1EE03D348);

  return sub_1CA0EBE84(v2);
}

uint64_t sub_1CA10FCD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA10FD88()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  [*(v0 + 16) cancelAllOperations];

  MEMORY[0x1CCA9AE80](v0 + 48);
  return v0;
}

uint64_t sub_1CA10FE18()
{
  sub_1CA10FD88();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1CA10FE4C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  result = sub_1CA181DE0(a1, v3);
  if (v6)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 40);
    v7 = 1;
  }

  else
  {
    v8 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 40);
    v7 = v8;
  }

  sub_1CA17AE60(v7);
  *(v1 + 40) = v9;
  result = swift_endAccess();
  if (!v4)
  {
    return sub_1CA10FF44();
  }

  return result;
}

uint64_t sub_1CA10FF44()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_2_10(v2);
    v3(sub_1CA111A70, v0);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CA110008(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16))
  {
    return swift_endAccess();
  }

  v5 = sub_1CA1842C0();
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  result = swift_endAccess();
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    return result;
  }

  if (v7 != 1)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 40);
    sub_1CA17AE60(v7 - 1);
    *(v2 + 40) = v9;
    return swift_endAccess();
  }

  swift_beginAccess();
  sub_1CA17A5A4();
  swift_endAccess();
  result = sub_1CA11010C(a1);
  if (!*(*(v2 + 40) + 16))
  {
    return sub_1CA110384();
  }

  return result;
}

uint64_t sub_1CA11010C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
  v11 = v3;
  v10[0] = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF68();
  sub_1CA19AF18();
  v11 = MEMORY[0x1E69E6530];
  v10[0] = a1;
  sub_1CA19AF38();
  sub_1CA0F0440(v10);
  sub_1CA19AFC8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = swift_allocObject();
    v8[2] = *(v3 + 80);
    v9 = *(v3 + 88);
    v8[3] = v9;
    v8[4] = a1;
    (*(v9 + 32))(sub_1CA111A30, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CA110384()
{
  v1 = *v0;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = sub_1CA19AFF8();
  __swift_project_value_buffer(v2, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v8[3] = v1;
  v8[0] = v0;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF68();
  sub_1CA19AF18();
  sub_1CA19AFC8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_2_10(v6);
    v7(sub_1CA1119F4, v0);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1CA1105BC()
{
  v1 = v0;
  v2 = *v0;
  sub_1CA19AC18();
  if (!v21)
  {
    sub_1CA0F0440(&v19);
    goto LABEL_13;
  }

  swift_getAssociatedTypeWitness();
  Operation = type metadata accessor for AssetFetchOperation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v10 = sub_1CA19AFF8();
    __swift_project_value_buffer(v10, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v21 = v2;
    v19 = v0;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v19);
    v21 = MEMORY[0x1E69E6158];
    v19 = 0xD00000000000001ELL;
    v20 = 0x80000001CA1A9F00;
    sub_1CA19AF38();
    sub_1CA0F0440(&v19);
    sub_1CA19AF18();
    sub_1CA19AFB8();
    goto LABEL_26;
  }

  v4 = v22;
  v5 = sub_1CA19AC28();
  if (!v5)
  {
LABEL_21:
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v13 = MEMORY[0x1E69E6158];
    v14 = sub_1CA19AFF8();
    __swift_project_value_buffer(v14, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v21 = v2;
    v19 = v1;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v19);
    v21 = v13;
    v19 = 0xD00000000000001ELL;
    v20 = 0x80000001CA1A9F00;
    sub_1CA19AF38();
    sub_1CA0F0440(&v19);
    sub_1CA19AF18();
    sub_1CA19AFB8();

LABEL_26:

    return;
  }

  v6 = v5;
  sub_1CA19C898();
  sub_1CA181E38(&v19, v6);
  sub_1CA103038(&v19);
  if (!v23)
  {

LABEL_19:
    sub_1CA0F0440(&v22);
    goto LABEL_21;
  }

  type metadata accessor for QueuePriority(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_1CA19C898();
  sub_1CA181E38(&v19, v6);

  sub_1CA103038(&v19);
  if (!v23)
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v7 = sub_1CA19AFF8();
  __swift_project_value_buffer(v7, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A50;
  v21 = v2;
  v19 = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v19);
  sub_1CA19AF68();
  sub_1CA19AF18();
  v21 = Operation;
  v19 = v4;
  v17 = v4;
  sub_1CA19AF38();
  sub_1CA0F0440(&v19);
  sub_1CA19AF18();
  v21 = MEMORY[0x1E69E6530];
  v19 = 0x726F69725077656ELL;
  sub_1CA19AF38();
  sub_1CA0F0440(&v19);
  sub_1CA19AFA8();

  v18 = *(v1 + 24);
  [v18 lock];
  sub_1CA110D68(v1, 0x726F697250646C6FLL, 0x726F69725077656ELL);
  [v18 unlock];
}

void sub_1CA110DC4()
{
  v1 = v0;
  v2 = *v0;
  sub_1CA19AC18();
  if (v14)
  {
    swift_getAssociatedTypeWitness();
    Operation = type metadata accessor for AssetFetchOperation();
    if (swift_dynamicCast())
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v4 = sub_1CA19AFF8();
      __swift_project_value_buffer(v4, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
      v14 = v2;
      v13[0] = v1;

      v5 = AMSLogKey();
      if (v5)
      {
        v6 = v5;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v13);
      sub_1CA19AF68();
      sub_1CA19AF18();
      v14 = Operation;
      v13[0] = v12;
      v10 = v12;
      sub_1CA19AF38();
      sub_1CA0F0440(v13);
      sub_1CA19AF18();
      sub_1CA19AFA8();

      v11 = v1[3];
      [v11 lock];
      sub_1CA111280(v1, v10);
      [v11 unlock];
      sub_1CA108B00(v10);

      return;
    }
  }

  else
  {
    sub_1CA0F0440(v13);
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v7 = sub_1CA19AFF8();
  __swift_project_value_buffer(v7, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v14 = v2;
  v13[0] = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v13);
  v14 = MEMORY[0x1E69E6158];
  v13[0] = 0xD000000000000016;
  v13[1] = 0x80000001CA1A9EA0;
  sub_1CA19AF38();
  sub_1CA0F0440(v13);
  sub_1CA19AF18();
  sub_1CA19AFB8();
}

uint64_t sub_1CA111280(void *a1, void *a2)
{
  v4 = *(*a1 + 80);
  v50[3] = *(*a1 + 88);
  v50[2] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v50 - v8;
  v60 = a2;
  Operation = type metadata accessor for AssetFetchOperation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = sub_1CA19C6F8();
  v10 = *(v63 - 8);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v62 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = v50 - v13;
  swift_beginAccess();
  v50[4] = a1;
  v14 = a1[4];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_1CA19C9D8();
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v15 | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v17 = ~v20;
    v16 = v14 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v14 + 64);
    v19 = v14;
  }

  v66 = (v53 + 32);
  v50[0] = v17;
  v23 = (v17 + 64) >> 6;
  v52 = v53 + 16;
  v24 = (v10 + 32);
  v58 = (v53 + 8);

  v26 = 0;
  v57 = AssociatedTypeWitness;
  v64 = v19;
  v65 = TupleTypeMetadata2;
  v51 = v23;
  while (1)
  {
    v59 = v26;
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    v55 = v18;
    if (sub_1CA19C9E8())
    {
      v40 = v56;
      sub_1CA19CAD8();
      swift_unknownObjectRelease();
      sub_1CA19CAD8();
      swift_unknownObjectRelease();
      v41 = *(v65 + 48);
      v37 = v62;
      v42 = v40;
      TupleTypeMetadata2 = v65;
      (*v66)(v62, v42, AssociatedTypeWitness);
      *(v37 + v41) = v69;
      v43 = v37;
      v44 = 0;
    }

    else
    {
      v37 = v62;
      v43 = v62;
      v44 = 1;
    }

    __swift_storeEnumTagSinglePayload(v43, v44, 1, TupleTypeMetadata2);
    v68 = v55;
LABEL_19:
    v45 = v61;
    (*v24)(v61, v37, v63);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, TupleTypeMetadata2);
    v47 = v67;
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA0F11F8();
      return sub_1CA110008([v60 queuePriority]);
    }

    v48 = *(v45 + *(TupleTypeMetadata2 + 48));
    v49 = v45;
    AssociatedTypeWitness = v57;
    (*v66)(v67, v49, v57);
    if (v48 == v60)
    {
      swift_beginAccess();
      swift_getAssociatedConformanceWitness();
      sub_1CA19C058();
      sub_1CA19C028();
      swift_endAccess();

      result = (*v58)(v67, AssociatedTypeWitness);
    }

    else
    {

      result = (*v58)(v47, AssociatedTypeWitness);
    }

    v18 = v68;
    v19 = v64;
  }

  v27 = v18;
  v28 = v26;
  if (v18)
  {
LABEL_13:
    v68 = (v27 - 1) & v27;
    v29 = __clz(__rbit64(v27)) | (v28 << 6);
    v30 = v53;
    v31 = v56;
    v32 = v16;
    v33 = v24;
    (*(v53 + 16))(v56, *(v19 + 48) + *(v53 + 72) * v29, AssociatedTypeWitness);
    v34 = *(*(v19 + 56) + 8 * v29);
    v35 = *(v65 + 48);
    v36 = *(v30 + 32);
    v37 = v62;
    v38 = v31;
    TupleTypeMetadata2 = v65;
    v36(v62, v38, AssociatedTypeWitness);
    *(v37 + v35) = v34;
    v24 = v33;
    v16 = v32;
    v23 = v51;
    __swift_storeEnumTagSinglePayload(v37, 0, 1, TupleTypeMetadata2);
    v39 = v34;
    v26 = v28;
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v37 = v62;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, TupleTypeMetadata2);
      v68 = 0;
      goto LABEL_19;
    }

    v27 = *(v16 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA1118E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1CA19AC38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19AC08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t OUTLINED_FUNCTION_2_10(uint64_t result)
{
  *(result + 16) = *(v1 + 80);
  *(result + 24) = *(v1 + 88);
  return result;
}

uint64_t sub_1CA111ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21[0] = a1;
  v11 = sub_1CA19C6F8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    (*(v12 + 8))(v15, v11);
    a6[3] = a3;
    a6[4] = a5;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a6);
    return (*(*(a3 - 8) + 16))(boxed_opaque_existential_2Tm, v21[1], a3);
  }

  else
  {
    (*(v16 + 32))(v18, v15, a4);
    sub_1CA19BAF8();
    return (*(v16 + 8))(v18, a4);
  }
}

uint64_t getEnumTagSinglePayload for AutoPlayVideoSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoPlayVideoSettings(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA111EB8()
{
  v8 = sub_1CA19C588();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CA19C558();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1CA19B318();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1CA0F2110(0, &qword_1EE03C230);
  sub_1CA19B308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433248);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CA1A0C20;
  sub_1CA19C548();
  v9 = v5;
  sub_1CA112774(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  sub_1CA1127BC(&qword_1EE03C298, &unk_1EC4345A0);
  sub_1CA19C788();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1CA19C5D8();
  qword_1EC433360 = result;
  return result;
}

uint64_t sub_1CA112194(uint64_t a1)
{
  v2 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v25 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v23 = v8;
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433368);
  v17 = sub_1CA19BF08();
  if (qword_1EC432C28 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1EC433360;
  (*(v13 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1CA112658;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_4;
  v20 = _Block_copy(aBlock);

  sub_1CA19B2F8();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CA112774(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA1127BC(&qword_1EE03C2A0, &unk_1EC433C70);
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v10, v6, v20);
  _Block_release(v20);
  (*(v25 + 8))(v6, v2);
  (*(v23 + 8))(v10, v24);

  return v17;
}

void sub_1CA112548(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA19ADF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA0F2110(0, qword_1EC433370);
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_1CA1126D4(v6);
  v8[1] = v7;
  sub_1CA19BEC8();
}

void sub_1CA112658()
{
  v1 = *(sub_1CA19ADF8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1CA112548(v2, v3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA1126D4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CA19AD88();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_1CA19ADF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1CA112774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA1127BC(unint64_t *a1, uint64_t *a2)
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

id sub_1CA112810()
{
  if (*v0)
  {
    v1 = *v0;
    result = [v1 accountStore];
    if (result)
    {
      sub_1CA19BF58();
      swift_allocObject();
      v3 = sub_1CA19BF68();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 ams:*(v0 + *(type metadata accessor for BaseBootstrap() + 24)) sharedAccountStoreForClient:?];
    sub_1CA19BF58();
    swift_allocObject();
    return sub_1CA19BF68();
  }

  return result;
}

uint64_t sub_1CA1128EC()
{
  v1 = v0;
  v2 = type metadata accessor for BaseBootstrap();
  v3 = v2 - 8;
  v23 = *(v2 - 8);
  v22 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B7D8();
  sub_1CA19B7B8();
  v5 = v33;
  v6 = v34;
  __swift_project_boxed_opaque_existential_2(v32, v33);
  v7 = sub_1CA0F2110(0, &qword_1EE03C130);
  v30[0] = *v1;
  v8 = v30[0];
  v9 = v30[0];
  sub_1CA111ACC(v7, v30, v5, v7, v6, v31);
  __swift_project_boxed_opaque_existential_2(v31, v31[3]);
  sub_1CA19BF58();
  v29[0] = sub_1CA112810();
  sub_1CA19BAF8();

  __swift_project_boxed_opaque_existential_2(v30, v30[3]);
  type metadata accessor for DynamicAccountsStore();
  v10 = sub_1CA112810();
  swift_allocObject();
  v28[0] = DynamicAccountsStore.init(accountStore:account:)(v10, v8);
  sub_1CA19BAF8();

  __swift_project_boxed_opaque_existential_2(v29, v29[3]);
  sub_1CA19BDA8();
  sub_1CA19BAF8();
  __swift_project_boxed_opaque_existential_2(v28, v28[3]);
  sub_1CA0F2110(0, &qword_1EE03C268);
  v26[0] = *(v1 + *(v3 + 32));
  v11 = v26[0];
  sub_1CA19BAF8();
  __swift_project_boxed_opaque_existential_2(v27, v27[3]);
  v12 = (v1 + *(v3 + 36));
  v14 = *v12;
  v13 = v12[1];
  v25[0] = v14;
  v25[1] = v13;
  sub_1CA19BAF8();
  __swift_project_boxed_opaque_existential_2(v26, v26[3]);
  sub_1CA19BB08();
  __swift_project_boxed_opaque_existential_2(v25, v25[3]);
  sub_1CA0F2110(0, &qword_1EE03C278);
  v15 = v21;
  sub_1CA11331C(v1, v21);
  v16 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  sub_1CA113380(v15, v17 + v16);
  sub_1CA19BAE8();

  __swift_project_boxed_opaque_existential_2(v24, v24[3]);
  v18 = sub_1CA19BAC8();
  __swift_destroy_boxed_opaque_existential_2(v24);
  __swift_destroy_boxed_opaque_existential_2(v25);
  __swift_destroy_boxed_opaque_existential_2(v26);
  __swift_destroy_boxed_opaque_existential_2(v27);
  __swift_destroy_boxed_opaque_existential_2(v28);
  __swift_destroy_boxed_opaque_existential_2(v29);
  __swift_destroy_boxed_opaque_existential_2(v30);
  __swift_destroy_boxed_opaque_existential_2(v31);
  __swift_destroy_boxed_opaque_existential_2(v32);
  return v18;
}

uint64_t sub_1CA112D40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  v4 = sub_1CA19B3D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1CA19BDA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA0F2110(0, &qword_1EE03C278);
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v12 = (a2 + *(type metadata accessor for BaseBootstrap() + 28));
  v13 = v12[1];
  *v7 = *v12;
  v7[1] = v13;
  v7[2] = 0;
  v7[3] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69AAEC0], v4);

  v14 = sub_1CA19C4B8();
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v17 = v14;
  return result;
}

void *AccountsWrapper.account.getter()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = *(v0 + 24);
  v3 = v2;
  [v1 unlock];
  return v2;
}

void AccountsWrapper.account.setter(void *a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  v4 = *(v1 + 24);
  *(v1 + 24) = a1;
  v5 = a1;

  [v3 unlock];
}

void (*AccountsWrapper.account.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = AccountsWrapper.account.getter();
  return sub_1CA113070;
}

void sub_1CA113070(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    AccountsWrapper.account.setter(v2);
  }

  else
  {
    AccountsWrapper.account.setter(*a1);
  }
}

uint64_t AccountsWrapper.accountStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t AccountsWrapper.__allocating_init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountsWrapper.init(accountStore:account:)(a1, a2);
  return v4;
}

void *AccountsWrapper.init(accountStore:account:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t AccountsWrapper.__deallocating_deinit()
{
  AccountsWrapper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t type metadata accessor for BaseBootstrap()
{
  result = qword_1EE03E390;
  if (!qword_1EE03E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA11331C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA113380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseBootstrap();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CA11348C()
{
  sub_1CA113540();
  if (v0 <= 0x3F)
  {
    sub_1CA19BDA8();
    if (v1 <= 0x3F)
    {
      sub_1CA0F2110(319, &qword_1EE03C268);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA113540()
{
  if (!qword_1EE03B480)
  {
    sub_1CA0F2110(255, &qword_1EE03C130);
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B480);
    }
  }
}

uint64_t sub_1CA1135A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA113648()
{
  swift_getTupleTypeMetadata2();
  sub_1CA19C378();
  swift_getWitnessTable();
  sub_1CA19C278();

  swift_getTupleTypeMetadata2();
  v0 = sub_1CA19C988();

  return v0;
}

uint64_t sub_1CA113748()
{
  OUTLINED_FUNCTION_1_10();

  return sub_1CA19C2C8();
}

uint64_t sub_1CA11378C()
{
  OUTLINED_FUNCTION_1_10();

  return sub_1CA19C328();
}

uint64_t sub_1CA1137D0(uint64_t a1, uint64_t a2)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x1EEE694B0](a1, a2, TupleTypeMetadata2);
}

uint64_t sub_1CA113830()
{
  swift_getTupleTypeMetadata2();
  sub_1CA19C378();
  swift_getWitnessTable();
  return sub_1CA19C458() & 1;
}

uint64_t sub_1CA1138AC()
{
  OUTLINED_FUNCTION_1_10();

  return sub_1CA19C328();
}

uint64_t sub_1CA1138F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v15 - v11;
  sub_1CA19C398();
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a5 - 8) + 32))(a1, v12, a5);
  return (*(*(a6 - 8) + 32))(a2, &v12[v13], a6);
}

uint64_t sub_1CA113A1C()
{
  OUTLINED_FUNCTION_1_10();
  v0 = sub_1CA19C378();

  return MEMORY[0x1EEE69500](0, v0);
}

uint64_t sub_1CA113A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA113748();
  *a1 = result;
  return result;
}

uint64_t sub_1CA113A98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA11378C();
  *a1 = result;
  return result;
}

void (*sub_1CA113ACC(uint64_t **a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v7[6] = v12;
  v13 = sub_1CA113CC4(v7, *a2, *v3, v9, v8);
  v15 = v14;
  v7[7] = v13;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v15, v8);
  return sub_1CA113C4C;
}

void sub_1CA113C4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1CA113CC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  a1[1] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  a1[2] = v12;
  sub_1CA1138F0(v12, v12 + *(TupleTypeMetadata2 + 48), a2, a3, a4, a5);
  return sub_1CA113DC0;
}

void sub_1CA113DC0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1CA113E4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA1137D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA113E84(uint64_t *a1)
{
  result = sub_1CA1137D0(*a1, *v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CA113EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA113648();
  *a1 = result;
  return result;
}

uint64_t sub_1CA113EF0@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  v3 = sub_1CA113748();

  a1[1] = v3;
  return result;
}

uint64_t sub_1CA113F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1CA113FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1CA1140AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v44 - v15;
  v56 = v16;
  v17 = swift_getTupleTypeMetadata2();
  v18 = sub_1CA19C6F8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v44 - v19;
  v21 = sub_1CA1138AC();
  v63 = a4;
  if (v21 != sub_1CA1138AC())
  {
    return 0;
  }

  v64 = a1;
  *&v68 = a2;
  v22 = v63;
  v23 = type metadata accessor for BinaryMultiMap();
  WitnessTable = swift_getWitnessTable();
  sub_1CA19CB38();
  v68 = v69;
  v64 = v23;
  v65 = v23;
  v52 = v23;
  v66 = WitnessTable;
  v67 = WitnessTable;
  v51 = WitnessTable;
  sub_1CA19C938();
  sub_1CA19C908();
  v48 = a3 - 8;
  v47 = v22 - 8;
  v46 = (v11 + 16);
  v45 = (v11 + 8);
  v62 = a3;
  v50 = v17;
  v49 = v20;
  while (1)
  {
    v64 = v52;
    v65 = v52;
    v66 = v51;
    v67 = v51;
    sub_1CA19C928();
    sub_1CA19C918();
    if (__swift_getEnumTagSinglePayload(v20, 1, v17) == 1)
    {
      break;
    }

    v25 = v56;
    v26 = *(v56 + 48);
    v27 = &v20[*(v17 + 48)];
    v60 = *(a3 - 8);
    v59 = *(v60 + 32);
    v28 = v61;
    v59(v61, v20, a3);
    v29 = *(v63 - 8);
    v30 = *(v29 + 32);
    v30(&v28[v26], &v20[v26]);
    v31 = *(v25 + 48);
    v32 = v53;
    v59(v53, v27, v62);
    (v30)(&v32[v31], &v27[v26], v63);
    v33 = *v46;
    v34 = v54;
    v35 = v61;
    (*v46)(v54, v61, v25);
    v36 = *(v25 + 48);
    v37 = v55;
    v33(v55, v32, v25);
    v38 = *(v25 + 48);
    LODWORD(v59) = sub_1CA19CB08();
    v39 = *v45;
    v40 = v32;
    v20 = v49;
    (*v45)(v40, v25);
    v39(v35, v25);
    v41 = *(v29 + 8);
    v41(v37 + v38, v63);
    v42 = *(v60 + 8);
    v42(v37, v62);
    v41(v34 + v36, v63);
    v17 = v50;
    a3 = v62;
    v42(v34, v62);
    if (v59)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CA114660()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t BoxedLayoutCollectionSpacingModel.init(base:interItem:itemLeading:itemTrailing:sectionBottom:sectionLeading:sectionTop:sectionTrailing:shelfMap:verticalLayoutMap:)@<X0>(void *a1@<X0>, double a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, double *a9@<X8>, char a10, double a11, char a12, double a13, char a14, double a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a3)
  {
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_2(a1, v27);
    v29 = (*(v28 + 8))(v27, v28);
    if ((a5 & 1) == 0)
    {
LABEL_3:
      v30 = a4;
      goto LABEL_6;
    }
  }

  else
  {
    v29 = a2;
    if ((a5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_2(a1, v31);
  v30 = (*(v32 + 16))(v31, v32);
LABEL_6:
  if (a7)
  {
    v33 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_2(a1, v33);
    v35 = (*(v34 + 24))(v33, v34);
  }

  else
  {
    v35 = a6;
  }

  if (a14)
  {
    v36 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_2(a1, v36);
    v38 = (*(v37 + 40))(v36, v37);
  }

  else
  {
    v38 = a13;
  }

  if (a10)
  {
    OUTLINED_FUNCTION_1_11();
    v39 = OUTLINED_FUNCTION_0_13();
    v41 = v40(v39);
  }

  else
  {
    v41 = a8;
  }

  if (a12)
  {
    OUTLINED_FUNCTION_1_11();
    v42 = OUTLINED_FUNCTION_0_13();
    v44 = v43(v42);
  }

  else
  {
    v44 = a11;
  }

  if (a16)
  {
    OUTLINED_FUNCTION_1_11();
    v45 = OUTLINED_FUNCTION_0_13();
    v47 = v46(v45);
  }

  else
  {
    v47 = a15;
  }

  result = __swift_destroy_boxed_opaque_existential_2(a1);
  *a9 = v29;
  a9[1] = v30;
  a9[2] = v35;
  a9[3] = v41;
  a9[4] = v44;
  a9[5] = v38;
  a9[6] = v47;
  *(a9 + 7) = a19;
  *(a9 + 8) = a20;
  *(a9 + 9) = a17;
  *(a9 + 10) = a18;
  return result;
}

uint64_t BoxedLayoutCollectionSpacingModel.sectionSpacingProvider(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  if (v3)
  {
    v3(v6);
    return sub_1CA0EBE94(v6, a1);
  }

  else
  {
    a1[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
    a1[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v5 = swift_allocObject();
    *a1 = v5;
    memcpy((v5 + 16), v1, 0x58uLL);
    return sub_1CA1149D4(v1, v6);
  }
}

uint64_t BoxedLayoutCollectionSpacingModel.verticalLayoutSize(for:in:)()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA114ADC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA114B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t BoxedLayoutSpacingModel.init(base:body:footer:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1CA114DB8(a2, __src);
  if (*&__src[24])
  {
    sub_1CA0EBE94(__src, v19);
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    v10 = OUTLINED_FUNCTION_0_14();
    v11(v10);
    if (*&__src[24])
    {
      sub_1CA114E28(__src);
    }
  }

  sub_1CA0EBE94(v19, __src);
  sub_1CA114DB8(a3, &v17);
  if (v18)
  {
    sub_1CA0EBE94(&v17, v19);
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    v12 = OUTLINED_FUNCTION_0_14();
    v13(v12);
    if (v18)
    {
      sub_1CA114E28(&v17);
    }
  }

  sub_1CA0EBE94(v19, &__src[40]);
  sub_1CA114DB8(a4, &v17);
  if (v18)
  {
    sub_1CA114E28(a4);
    sub_1CA114E28(a3);
    sub_1CA114E28(a2);
    sub_1CA0EBE94(&v17, v19);
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    v14 = OUTLINED_FUNCTION_0_14();
    v15(v14);
    sub_1CA114E28(a4);
    sub_1CA114E28(a3);
    sub_1CA114E28(a2);
    if (v18)
    {
      sub_1CA114E28(&v17);
    }
  }

  sub_1CA0EBE94(v19, &__src[80]);
  memcpy(a5, __src, 0x78uLL);
  return __swift_destroy_boxed_opaque_existential_2(a1);
}

uint64_t sub_1CA114DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4333F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA114E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4333F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA114EBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA114EFC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ViewProviderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA11501C()
{
  sub_1CA19CBD8();
  ViewProviderError.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t BridgedDestinationViewProvider.swiftUIViewProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1CA10FCD4(v1);
  return v1;
}

uint64_t BridgedDestinationViewProvider.swiftUIViewProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1CA0EBE84(v5);
}