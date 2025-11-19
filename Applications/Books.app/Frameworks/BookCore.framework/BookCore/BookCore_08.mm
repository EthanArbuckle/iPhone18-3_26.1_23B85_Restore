uint64_t sub_1D41D0()
{
  sub_1EEF74();
}

uint64_t sub_1D4380()
{
  sub_1928F4(0, &qword_341A60);
  result = sub_1EF3F4();
  qword_341AA0 = result;
  return result;
}

uint64_t sub_1D43E8()
{
  v0 = sub_1EEAF4();
  sub_19C688(v0, qword_341AA8);
  sub_19C418(v0, qword_341AA8);
  if (qword_33F968 != -1)
  {
    swift_once();
  }

  v1 = qword_341AA0;
  return sub_1EEB04();
}

uint64_t static Logger.ppt.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_33F970 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEAF4();
  v3 = sub_19C418(v2, qword_341AA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1D451C()
{
  result = sub_1AC3B8(&off_2CF3A8);
  qword_348A58 = result;
  return result;
}

uint64_t PPTExtendedLaunchType.Destination.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701670760;
  }

  if (a1 == 1)
  {
    return 1802465122;
  }

  return 0x6F6F626F69647561;
}

uint64_t sub_1D4594(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701670760;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1802465122;
  if (*a2 != 1)
  {
    v8 = 0x6F6F626F69647561;
    v3 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701670760;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1EF6D4();
  }

  return v11 & 1;
}

Swift::Int sub_1D4684()
{
  sub_1EF784();
  sub_1EEF74();

  return sub_1EF7B4();
}

uint64_t sub_1D471C()
{
  sub_1EEF74();
}

Swift::Int sub_1D47A0()
{
  sub_1EF784();
  sub_1EEF74();

  return sub_1EF7B4();
}

uint64_t sub_1D4834@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8BookCore21PPTExtendedLaunchTypeO11DestinationO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1D4864(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xE90000000000006BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701670760;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BookCore::PPTExtendedLaunchType_optional __swiftcall PPTExtendedLaunchType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2CF470;
  v8._object = object;
  v5 = sub_1EF684(v4, v8);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t PPTExtendedLaunchType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0x6F6F626F69647561;
    v6 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000017;
    if (v1 != 5)
    {
      v7 = 0xD000000000000018;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x556169566B6F6F62;
    if (v1 == 3)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (v1 == 2)
    {
      v2 = 0xD000000000000021;
    }

    v3 = 0xD000000000000014;
    if (*v0)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1D4A94()
{
  sub_1EF784();
  sub_1D41D0();
  return sub_1EF7B4();
}

Swift::Int sub_1D4AE4()
{
  sub_1EF784();
  sub_1D41D0();
  return sub_1EF7B4();
}

uint64_t sub_1D4B34@<X0>(uint64_t *a1@<X8>)
{
  result = PPTExtendedLaunchType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char sub_1D4B5C@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_1EEED4();
  v4 = [v1 stringForKey:v3];

  if (!v4 || (v5 = sub_1EEF04(), v7 = v6, v4, v8._countAndFlagsBits = v5, v8._object = v7, LOBYTE(v9) = PPTExtendedLaunchType.init(rawValue:)(v8), LOBYTE(v10) = v19[0], LOBYTE(v19[0]) == 10))
  {
    v11 = sub_1EEED4();
    v12 = [v1 objectForKey:v11];

    if (v12)
    {
      sub_1EF444();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (!*(&v18 + 1))
    {
      LOBYTE(v9) = sub_18FF14(v19);
      goto LABEL_14;
    }

    LOBYTE(v9) = swift_dynamicCast();
    if ((v9 & 1) == 0)
    {
LABEL_14:
      LOBYTE(v10) = 0;
      goto LABEL_15;
    }

    v9 = v16;
    if (qword_33F978 != -1)
    {
      swift_once();
      v9 = v16;
    }

    v13 = qword_348A58;
    v10 = *(qword_348A58 + 16);
    if (v10)
    {
      v9 = sub_1B0894(v9);
      if (v14)
      {
        LOBYTE(v10) = *(*(v13 + 56) + v9);
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  *a1 = v10;
  return v9;
}

void sub_1D4D14()
{
  sub_1928F4(0, &qword_341308);
  v0 = sub_1EF324();
  v1 = sub_1EEED4();
  v2 = [v0 stringByAppendingPathComponent:v1];

  v3 = sub_1EEF04();
  v5 = v4;

  qword_341AC0 = v3;
  *algn_341AC8 = v5;
}

id sub_1D4E18()
{
  if (qword_33F968 != -1)
  {
    swift_once();
  }

  v1 = qword_341AA0;
  qword_341AD0 = qword_341AA0;

  return v1;
}

id static PPTConfig.os_log.getter()
{
  if (qword_33F988 != -1)
  {
    swift_once();
  }

  v1 = qword_341AD0;

  return v1;
}

uint64_t sub_1D4F34()
{
  sub_1EEB34();
  v0 = sub_1EEB14();
  sub_1EEB24();

  v1 = sub_1EEB44();
  v2 = 1;
  result = sub_1EEB44();
  if (v1 != result)
  {
    sub_1EEB64();
    result = sub_1EEB54();
    v2 = result;
  }

  byte_341AD8 = v2 & 1;
  return result;
}

uint64_t static PPTConfig.usePPTLaunchContent.getter()
{
  if (qword_33F990 != -1)
  {
    swift_once();
  }

  if (byte_341AD8)
  {
    return 1;
  }

  if (qword_33F998 != -1)
  {
    swift_once();
  }

  return byte_341AD9;
}

uint64_t sub_1D5120()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1EEED4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_1EF444();
    swift_unknownObjectRelease();
  }

  else
  {

    memset(v4, 0, sizeof(v4));
  }

  result = sub_18FF14(v4);
  byte_341AD9 = v2 != 0;
  return result;
}

void sub_1D5240()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1D4B5C(&byte_341ADA);
}

uint64_t static PPTConfig.extendedLaunchTestType.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_33F9A0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_341ADA;
  return result;
}

uint64_t static PPTConfig.extendedLaunchTestDestination.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1D4B5C(&v2);

  return byte_2A6E52[v2];
}

uint64_t sub_1D53F0()
{
  if (qword_33F9A0 != -1)
  {
    swift_once();
  }

  if (byte_341ADA == 2)
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_1EF6D4();
  }

  byte_341ADB = v0 & 1;
  return result;
}

uint64_t sub_1D5604()
{
  if (qword_33F9A0 != -1)
  {
    swift_once();
  }

  if (byte_341ADA >= 2u || byte_341ADA)
  {
    v0 = sub_1EF6D4();

    v2 = v0 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  byte_341ADC = v2 & 1;
  return result;
}

uint64_t sub_1D5800(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1D586C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

BOOL static PPTConfig.shouldUseCachedTopPicksCards.getter()
{
  if (qword_33F9A0 != -1)
  {
    swift_once();
  }

  return byte_341ADA - 1 < 2;
}

id sub_1D5988(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1EEED4();

  return v3;
}

id PPTConfig.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTConfig();
  return objc_msgSendSuper2(&v2, "init");
}

id PPTConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTConfig();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s8BookCore21PPTExtendedLaunchTypeO11DestinationO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_2CF408;
  v6._object = a2;
  v4 = sub_1EF684(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s8BookCore9PPTConfigC32extendedLaunchTestTypeForLoggingSSvgZ_0()
{
  if (qword_33F9A0 != -1)
  {
    swift_once();
  }

  if (byte_341ADA > 4u)
  {
    v3 = 0x6F6F626F69647561;
    v4 = 0xD00000000000001DLL;
    if (byte_341ADA == 8)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (byte_341ADA != 7)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (byte_341ADA != 5)
    {
      v5 = 0xD000000000000018;
    }

    if (byte_341ADA <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v0 = 0x556169566B6F6F62;
    if (byte_341ADA == 3)
    {
      v0 = 0xD00000000000001CLL;
    }

    if (byte_341ADA == 2)
    {
      v0 = 0xD000000000000021;
    }

    v1 = 0xD000000000000014;
    if (byte_341ADA)
    {
      v1 = 0xD000000000000017;
    }

    if (byte_341ADA <= 1u)
    {
      return v1;
    }

    else
    {
      return v0;
    }
  }
}

uint64_t _s8BookCore9PPTConfigC35extendedLaunchTestDestinationIsHomeSbvgZ_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1D4B5C(&v3);

  if (((1 << v3) & 0xF) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1EF6D4();
  }

  return v1 & 1;
}

uint64_t _s8BookCore9PPTConfigC031extendedLaunchTestDestinationIsA0SbvgZ_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1D4B5C(&v3);

  if (((1 << v3) & 0xF) != 0 || ((1 << v3) & 0x70) == 0)
  {
    v1 = sub_1EF6D4();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t _s8BookCore9PPTConfigC40extendedLaunchTestDestinationIsAudiobookSbvgZ_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1D4B5C(&v3);

  if (((1 << v3) & 0xF) != 0 || ((1 << v3) & 0x70) != 0)
  {
    v1 = sub_1EF6D4();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t _s8BookCore9PPTConfigC28cachedTopPickCardsJSONStringSSvgZ_0()
{
  v0 = sub_1EEF34();
  __chkstk_darwin(v0 - 8);
  if (qword_33F980 != -1)
  {
    swift_once();
  }

  v1 = sub_1EEED4();
  v2 = sub_1EEED4();
  v3 = [v1 stringByAppendingPathComponent:v2];

  sub_1EEF04();
  sub_1EEF24();
  v4 = sub_1EEEC4();

  return v4;
}

unint64_t sub_1D61F4()
{
  result = qword_341AE0;
  if (!qword_341AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341AE0);
  }

  return result;
}

unint64_t sub_1D624C()
{
  result = qword_341AE8;
  if (!qword_341AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341AE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PPTExtendedLaunchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PPTExtendedLaunchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6450()
{
  v1 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D6504(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_1D7B1C();
  }
}

void sub_1D6568(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    sub_1D7B1C();
  }
}

void (*sub_1D65CC(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1D6660;
}

void sub_1D6660(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_1D7B1C();
  }

  free(v1);
}

uint64_t sub_1D66FC()
{
  v1 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D67A4(char a1)
{
  v3 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1D67F8();
}

void sub_1D67F8()
{
  v1 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR___BCTurnPageButton_hovering;
  if (v2 == 1)
  {
    swift_beginAccess();
    if (*(v0 + v3))
    {
      v4 = 8;
    }

    else
    {
      v4 = 6;
    }

    v5 = OBJC_IVAR___BCTurnPageButton_materialFill;
    swift_beginAccess();
    v6 = *(v0 + v5);
    *(v0 + v5) = v4;
    if (v6 != v4)
    {
      sub_1D7B1C();
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v0 + v3);
    v8 = objc_opt_self();
    v9 = &selRef_quaternaryLabelColor;
    if (!v7)
    {
      v9 = &selRef_clearColor;
    }

    sub_1D6F84([v8 *v9]);
  }
}

void (*sub_1D68F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D695C;
}

void sub_1D695C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D67F8();
  }
}

uint64_t sub_1D69D8()
{
  v1 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D6A9C(char a1)
{
  v3 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = *(v1 + OBJC_IVAR___BCTurnPageButton_pressedLayer);
  if (result)
  {
    v5 = 0.0;
    if (a1)
    {
      *&v5 = 1.0;
    }

    return [result setOpacity:v5];
  }

  return result;
}

id sub_1D6B18(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  *(v3 + v4) = v2;
  result = *(v3 + OBJC_IVAR___BCTurnPageButton_pressedLayer);
  if (result)
  {
    v6 = 0.0;
    if (v2)
    {
      *&v6 = 1.0;
    }

    return [result setOpacity:v6];
  }

  return result;
}

void (*sub_1D6B98(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___BCTurnPageButton_pressed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D6C20;
}

void sub_1D6C20(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___BCTurnPageButton_pressedLayer);
    if (v5)
    {
      v6 = 0.0;
      if (*(v4 + v3[4]))
      {
        *&v6 = 1.0;
      }

      [v5 setOpacity:v6];
    }
  }

  free(v3);
}

void sub_1D6C9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCTurnPageButton_materialFill;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v5 != v2)
  {
    sub_1D7B1C();
  }
}

uint64_t sub_1D6D00()
{
  v1 = OBJC_IVAR___BCTurnPageButton_materialFill;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D6D44(uint64_t a1)
{
  v3 = OBJC_IVAR___BCTurnPageButton_materialFill;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_1D7B1C();
  }
}

void (*sub_1D6DA4(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCTurnPageButton_materialFill;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1D6E38;
}

void sub_1D6E38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    sub_1D7B1C();
  }

  free(v1);
}

void *sub_1D6EDC()
{
  v1 = OBJC_IVAR___BCTurnPageButton_fillColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D6F84(id a1)
{
  v3 = OBJC_IVAR___BCTurnPageButton_fillColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1D8208(), a1 = a1, v5 = v4, v6 = sub_1EF314(), v5, (v6 & 1) == 0))
  {
LABEL_7:
    sub_1D7B1C();

    goto LABEL_8;
  }

  v4 = v5;
LABEL_8:
}

void (*sub_1D7048(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCTurnPageButton_fillColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1D70E4;
}

void sub_1D70E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v3;
    if (v7)
    {
      if (v3)
      {
        sub_1D8208();
        v3 = v3;
        v8 = v7;
        v9 = sub_1EF314();

        if (v9)
        {

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v3 = v3;
    }

    sub_1D7B1C();

    v3 = v7;
    goto LABEL_10;
  }

  v4 = v3;
  sub_1D6F84(v3);
  v3 = v2[3];
LABEL_10:

LABEL_11:

  free(v2);
}

uint64_t sub_1D72B8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7318(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BCTurnPageButton_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18E770;
}

char *sub_1D73C8(uint64_t a1)
{
  type metadata accessor for TurnPageButton();
  v2 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  *&v2[OBJC_IVAR___BCTurnPageButton_direction] = a1;
  sub_1D7490();
  return v2;
}

char *sub_1D7428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TurnPageButton();
  v4 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  *&v4[OBJC_IVAR___BCTurnPageButton_direction] = a3;
  sub_1D7490();

  return v4;
}

uint64_t sub_1D7490()
{
  v1 = *&v0[OBJC_IVAR___BCTurnPageButton_direction];
  if (v1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = -0.5;
  }

  if (v1 == 1)
  {
    v3 = -0.5;
  }

  else
  {
    v3 = 0.0;
  }

  [v0 setImageEdgeInsets:{0.0, v2, 0.0, v3}];
  CGRectMakeWithSize();
  [v0 setFrame:?];
  v4 = [v0 layer];
  [v4 setCornerRadius:6.0];

  [v0 setClipsToBounds:1];
  v5 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:26.0];
  v6 = sub_1EEED4();

  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  [v0 setImage:v7 forState:0];
  v8 = [v0 imageView];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() bc_booksSecondaryLabelColor];
    [v9 setTintColor:v10];
  }

  sub_1D76CC();
  sub_1D7808();
  sub_1D7B1C();
  sub_1D7988();
  sub_1AED14();
  sub_1EF2B4();

  swift_unknownObjectRelease();
}

void sub_1D76CC()
{
  v1 = OBJC_IVAR___BCTurnPageButton_materialFill;
  swift_beginAccess();
  v2 = [objc_opt_self() effectWithStyle:*&v0[v1]];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];
  [v0 bounds];
  [v3 setFrame:?];
  [v3 setUserInteractionEnabled:0];

  [v0 insertSubview:v3 atIndex:0];
  v4 = [v0 imageView];
  if (v4)
  {
    v5 = v4;
    [v0 bringSubviewToFront:v4];
  }

  v6 = *&v0[OBJC_IVAR___BCTurnPageButton_blurView];
  *&v0[OBJC_IVAR___BCTurnPageButton_blurView] = v3;
}

void sub_1D7808()
{
  v1 = [objc_allocWithZone(CALayer) init];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [v0 layer];
  [v2 addSublayer:v1];

  v3 = *&v0[OBJC_IVAR___BCTurnPageButton_pressedLayer];
  *&v0[OBJC_IVAR___BCTurnPageButton_pressedLayer] = v1;
  v4 = v1;

  v5 = OBJC_IVAR___BCTurnPageButton_pressed;
  swift_beginAccess();
  v6 = 0.0;
  if (v0[v5])
  {
    *&v6 = 1.0;
  }

  [v4 setOpacity:v6];
}

void sub_1D7988()
{
  v1 = *&v0[OBJC_IVAR___BCTurnPageButton_pressedLayer];
  if (v1)
  {
    v12 = v1;
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v4 = 1.0;
    if (v3 == &dword_0 + 1)
    {
      v4 = 0.0;
    }

    GenericGray = CGColorCreateGenericGray(v4, 0.05);
    [v12 setBackgroundColor:GenericGray];

    v6 = [v0 imageView];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 layer];

      if (v8)
      {
        v9 = objc_allocWithZone(CAFilter);
        v10 = sub_1EEED4();

        v11 = [v9 initWithType:v10];

        [v8 setCompositingFilter:v11];
      }
    }
  }
}

void sub_1D7B1C()
{
  v1 = OBJC_IVAR___BCTurnPageButton_fillColor;
  swift_beginAccess();
  [v0 setBackgroundColor:*&v0[v1]];
  v2 = OBJC_IVAR___BCTurnPageButton_materialFill;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = OBJC_IVAR___BCTurnPageButton_useMaterialFill;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = *&v0[OBJC_IVAR___BCTurnPageButton_blurView];
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 effectWithStyle:v3];
      [v8 setEffect:v9];

      [v8 setHidden:0];
    }
  }

  else if (v6)
  {
    [v6 setHidden:1];
  }
}

id TurnPageButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR___BCTurnPageButton_useMaterialFill] = 0;
  v4[OBJC_IVAR___BCTurnPageButton_hovering] = 0;
  v4[OBJC_IVAR___BCTurnPageButton_pressed] = 0;
  *&v4[OBJC_IVAR___BCTurnPageButton_materialFill] = 7;
  v9 = OBJC_IVAR___BCTurnPageButton_fillColor;
  *&v4[v9] = [objc_opt_self() clearColor];
  *&v4[OBJC_IVAR___BCTurnPageButton_direction] = 0;
  *&v4[OBJC_IVAR___BCTurnPageButton_blurView] = 0;
  *&v4[OBJC_IVAR___BCTurnPageButton_pressedLayer] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = v4;
  v11.super_class = type metadata accessor for TurnPageButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id TurnPageButton.init(coder:)(void *a1)
{
  v1[OBJC_IVAR___BCTurnPageButton_useMaterialFill] = 0;
  v1[OBJC_IVAR___BCTurnPageButton_hovering] = 0;
  v1[OBJC_IVAR___BCTurnPageButton_pressed] = 0;
  *&v1[OBJC_IVAR___BCTurnPageButton_materialFill] = 7;
  v3 = OBJC_IVAR___BCTurnPageButton_fillColor;
  *&v1[v3] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR___BCTurnPageButton_direction] = 0;
  *&v1[OBJC_IVAR___BCTurnPageButton_blurView] = 0;
  *&v1[OBJC_IVAR___BCTurnPageButton_pressedLayer] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TurnPageButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id TurnPageButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TurnPageButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1D8084(SEL *a1, char a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TurnPageButton();
  objc_msgSendSuper2(&v7, *a1);
  v5 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  *(v2 + v5) = a2;
  sub_1D67F8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result updateTurnPageButtonsForFocusChange];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D8140(void *a1, uint64_t a2, const char **a3, char a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TurnPageButton();
  v6 = *a3;
  v7 = v10.receiver;
  objc_msgSendSuper2(&v10, v6);
  v8 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  v7[v8] = a4;
  sub_1D67F8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateTurnPageButtonsForFocusChange];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1D8208()
{
  result = qword_341A90;
  if (!qword_341A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_341A90);
  }

  return result;
}

unint64_t sub_1D827C()
{
  result = qword_341B60;
  if (!qword_341B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341B60);
  }

  return result;
}

void sub_1D82EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCTurnPageButton_hovering;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1D67F8();
}

uint64_t sub_1D8350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1D83A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCTurnPageButton_materialFill;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1D8404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCTurnPageButton_fillColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D846C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D6F84(v1);
}

uint64_t sub_1D849C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D894C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t FrontmostApplicationTracker.isFrontmost.getter()
{
  v1 = 0;
  v2 = (v0 + OBJC_IVAR___BCFrontmostApplicationTracker_state);
  if (*(v0 + OBJC_IVAR___BCFrontmostApplicationTracker_state))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___BCFrontmostApplicationTracker_state + 8) == 0;
  }

  if (!v3 && (v2[9] & 1) == 0)
  {
    v1 = (v2[10] | v2[11]) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D8AA4()
{
  v0 = sub_1EEAF4();
  sub_19C688(v0, qword_341B90);
  sub_19C418(v0, qword_341B90);
  return sub_1EEAE4();
}

uint64_t sub_1D8B28(uint64_t result, int a2)
{
  v3 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  if (*&v2[OBJC_IVAR___BCFrontmostApplicationTracker_state])
  {
    v4 = 1;
  }

  else
  {
    v4 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8] == 0;
  }

  if (v4 || (v3[9] & 1) != 0 || v3[10])
  {
    if (result || (a2 & 0x100) != 0 || (a2 & 1) == 0 || (a2 & 0x1010000) != 0)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v5 = v3[11];
    if (result || (a2 & 0x100) != 0 || (a2 & 1) == 0 || (a2 & 0x10000) != 0)
    {
      if (v5)
      {
        return result;
      }

      v6 = 1;
    }

    else
    {
      v6 = v5 ^ 1u;
      if (v6 != (a2 & 0x1000000u) >> 24)
      {
        return result;
      }
    }
  }

  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v7 = sub_1EEAF4();
  sub_19C418(v7, qword_341B90);
  v8 = v2;
  v9 = sub_1EEAD4();
  v10 = sub_1EF0B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "%@: is frontmost => %{BOOL}d", v11, 0x12u);
    sub_1DA6C0(v12);
  }

  v14 = &v8[OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged];
  result = swift_beginAccess();
  v15 = *v14;
  if (*v14)
  {

    v15(v6);
    return sub_19C408(v15);
  }

  return result;
}

uint64_t FrontmostApplicationTracker.onFrontmostChanged.getter()
{
  v1 = (v0 + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  v2 = *v1;
  sub_19C3F8(*v1);
  return v2;
}

uint64_t FrontmostApplicationTracker.onFrontmostChanged.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_19C408(v6);
}

uint64_t sub_1D8F8C@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DA914;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_19C3F8(v4);
}

uint64_t sub_1D902C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DA8A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_19C3F8(v3);
  return sub_19C408(v8);
}

char *FrontmostApplicationTracker.init(uiApplication:appKitBundle:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  *v6 = 2;
  *(v6 + 2) = 0;
  v7 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_onFrontmostChanged];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR___BCFrontmostApplicationTracker_appKitBundle] = a2;
  *&v2[OBJC_IVAR___BCFrontmostApplicationTracker_uiApplication] = a1;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v24, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"uiKitWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:v8];
  [v12 addObserver:v11 selector:"uiKitDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:v8];
  [v12 addObserver:v11 selector:"uiKitDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:v8];
  [v12 addObserver:v11 selector:"uiKitWillResignActive:" name:UIApplicationWillResignActiveNotification object:v8];

  v13 = [v8 applicationState];
  v14 = &v11[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  *&v11[OBJC_IVAR___BCFrontmostApplicationTracker_state] = v13;
  if (a2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [ObjCClassFromMetadata addActiveApplicationObserver:v11 didBecomeSelector:"appKitDidBecomeActive:" willResignSelector:"appKitWillResignActive:"];
    [ObjCClassFromMetadata addScreenSaverObserver:v11 didStartSelector:"screenSaverDidStart:" didStopSelector:"screenSaverDidStop:"];
    [ObjCClassFromMetadata addScreenLockObserver:v11 didLockSelector:"screenDidLock:" didUnlockSelector:"screenDidUnlock:"];
    [ObjCClassFromMetadata addPowerChangeObserver:v11 willSleepSelector:"workspaceWillSleep:" didWakeSelector:"workspaceDidWake:"];
    v16 = [ObjCClassFromMetadata isActiveApplication];
  }

  else
  {
    v16 = 1;
  }

  v14[8] = v16;
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1EEAF4();
  sub_19C418(v17, qword_341B90);
  v18 = v11;
  v19 = sub_1EEAD4();
  v20 = sub_1EF0B4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 1024;
    *(v21 + 14) = ((*v14 != 0) | (v14[8] ^ 1 | v14[9]) & 1 | (v14[10] | v14[11]) & 1) == 0;

    _os_log_impl(&dword_0, v19, v20, "%@: initial is frontmost: %{BOOL}d", v21, 0x12u);
    sub_1DA6C0(v22);
  }

  else
  {

    v8 = v18;
    v12 = v18;
  }

  return v18;
}

id FrontmostApplicationTracker.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR___BCFrontmostApplicationTracker_appKitBundle])
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [ObjCClassFromMetadata removeActiveApplicationObserver:v0];
    [ObjCClassFromMetadata removeScreenSaverObserver:v0];
    [ObjCClassFromMetadata removePowerChangeObserver:v0];
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v0];

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1D9700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = sub_1EDD64();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();
  v12 = a1;
  a5(v11, a4);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D9800(uint64_t a1, const char *a2)
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEAF4();
  sub_19C418(v4, qword_341B90);
  v5 = v2;
  v6 = sub_1EEAD4();
  v7 = sub_1EF0B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, a2, v8, 0xCu);
    sub_1DA6C0(v9);
  }

  v11 = &v5[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v12 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v13 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v14 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v15 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v16 = *&v5[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  *v11 = 1;
  v11[8] = v12;
  v11[9] = v13;
  v11[10] = v14;
  v11[11] = v15;
  if (v13)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v12;
  if (v14)
  {
    v19 = 0x10000;
  }

  else
  {
    v19 = 0;
  }

  if (v15)
  {
    v20 = 0x1000000;
  }

  else
  {
    v20 = 0;
  }

  return sub_1D8B28(v16, v18 | v19 | v20);
}

uint64_t sub_1D99BC(uint64_t a1, const char *a2)
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1EEAF4();
  sub_19C418(v4, qword_341B90);
  v5 = v2;
  v6 = sub_1EEAD4();
  v7 = sub_1EF0B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, a2, v8, 0xCu);
    sub_1DA6C0(v9);
  }

  v11 = [*&v5[OBJC_IVAR___BCFrontmostApplicationTracker_uiApplication] applicationState];
  v12 = &v5[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v13 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v14 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v15 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v16 = v5[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v17 = *&v5[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  *v12 = v11;
  v12[8] = v13;
  v12[9] = v14;
  v12[10] = v15;
  v12[11] = v16;
  if (v14)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v13;
  if (v15)
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if (v16)
  {
    v21 = 0x1000000;
  }

  else
  {
    v21 = 0;
  }

  return sub_1D8B28(v17, v19 | v20 | v21);
}

uint64_t sub_1D9B90()
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1EEAF4();
  sub_19C418(v1, qword_341B90);
  v2 = v0;
  v3 = sub_1EEAD4();
  v4 = sub_1EF0B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "%@: NSApplication did become active", v5, 0xCu);
    sub_1DA6C0(v6);
  }

  result = *&v2[OBJC_IVAR___BCFrontmostApplicationTracker_appKitBundle];
  if (result)
  {
    v9 = [swift_getObjCClassFromMetadata() isActiveApplication];
    v10 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
    v11 = *&v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
    v12 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
    v13 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
    v14 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
    v15 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
    v10[8] = v9;
    v10[9] = v12;
    v10[10] = v13;
    v10[11] = v14;
    if (v12)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    if (v14)
    {
      v18 = 0x1000000;
    }

    else
    {
      v18 = 0;
    }

    return sub_1D8B28(v11, v17 | v16 | v18 | v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9D64(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1EDD64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9E54()
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1EEAF4();
  sub_19C418(v1, qword_341B90);
  v2 = v0;
  v3 = sub_1EEAD4();
  v4 = sub_1EF0B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "%@: NSApplication will resign active", v5, 0xCu);
    sub_1DA6C0(v6);
  }

  v8 = &v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v9 = *&v2[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v10 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v11 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v12 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v13 = v2[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v8[8] = 0;
  v8[9] = v10;
  v8[10] = v11;
  v8[11] = v12;
  if (v10)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 0x1000000;
  }

  else
  {
    v16 = 0;
  }

  return sub_1D8B28(v9, v15 | v14 | v16 | v13);
}

uint64_t sub_1DA024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t))
{
  v10 = sub_1EDD64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDD24();
  v14 = a1;
  a6(v13, a4, a5);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1DA12C(uint64_t a1, const char *a2, char a3)
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEAF4();
  sub_19C418(v6, qword_341B90);
  v7 = v3;
  v8 = sub_1EEAD4();
  v9 = sub_1EF0B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, a2, v10, 0xCu);
    sub_1DA6C0(v11);
  }

  v13 = &v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v14 = *&v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v15 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v16 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v17 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v18 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v13[8] = v15;
  v13[9] = a3;
  v13[10] = v16;
  v13[11] = v17;
  if (v18)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 0x1000000;
  }

  else
  {
    v21 = 0;
  }

  return sub_1D8B28(v14, v20 | v15 | v21 | v19);
}

uint64_t sub_1DA314(uint64_t a1, const char *a2, char a3)
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEAF4();
  sub_19C418(v6, qword_341B90);
  v7 = v3;
  v8 = sub_1EEAD4();
  v9 = sub_1EF0B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, a2, v10, 0xCu);
    sub_1DA6C0(v11);
  }

  v13 = &v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v14 = *&v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v15 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v16 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v17 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v18 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v13[8] = v15;
  v13[9] = v16;
  v13[10] = a3;
  v13[11] = v17;
  if (v16)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v15;
  if (v18)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  if (v17)
  {
    v22 = 0x1000000;
  }

  else
  {
    v22 = 0;
  }

  return sub_1D8B28(v14, v20 | v22 | v21);
}

uint64_t sub_1DA4FC(uint64_t a1, const char *a2, char a3)
{
  if (qword_33F9B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1EEAF4();
  sub_19C418(v6, qword_341B90);
  v7 = v3;
  v8 = sub_1EEAD4();
  v9 = sub_1EF0B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, a2, v10, 0xCu);
    sub_1DA6C0(v11);
  }

  v13 = &v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v14 = *&v7[OBJC_IVAR___BCFrontmostApplicationTracker_state];
  v15 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 8];
  v16 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 9];
  v17 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 10];
  v18 = v7[OBJC_IVAR___BCFrontmostApplicationTracker_state + 11];
  v13[8] = v15;
  v13[9] = v16;
  v13[10] = v17;
  v13[11] = a3;
  if (v16)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v15;
  if (v17)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 0x1000000;
  }

  else
  {
    v22 = 0;
  }

  return sub_1D8B28(v14, v20 | v21 | v22);
}

uint64_t sub_1DA6C0(uint64_t a1)
{
  v2 = sub_18AFC0(&qword_340320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for FrontmostApplicationTracker.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FrontmostApplicationTracker.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FrontmostApplicationTracker.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DA83C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1DA88C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DA8A4(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1DA8DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1DAA1C()
{
  v1 = (v0 + OBJC_IVAR___BCReadingTimeToday_kind);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DAAE0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BCReadingTimeToday_kind);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DAB40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BCReadingTimeToday_kind);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1DAC58()
{
  v1 = OBJC_IVAR___BCReadingTimeToday_instance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DACB0(uint64_t a1)
{
  v3 = OBJC_IVAR___BCReadingTimeToday_instance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1DADB4()
{
  v1 = OBJC_IVAR___BCReadingTimeToday_parameters;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAE0C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1DAE68(uint64_t a1)
{
  v3 = OBJC_IVAR___BCReadingTimeToday_parameters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1DAEC0(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_1DAFC8()
{
  v1 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1DB07C(uint64_t a1)
{
  v3 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1DB0D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1DB220()
{
  v1 = (v0 + OBJC_IVAR___BCReadingTimeToday_formattedProgress);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DB2F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BCReadingTimeToday_formattedProgress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DB354(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BCReadingTimeToday_formattedProgress);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id ReadingTimeToday.init(progress:onObserverCountChanged:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v5 = sub_1EF134();
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  __chkstk_darwin(v5);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EF104();
  __chkstk_darwin(v8);
  v9 = sub_1EEDE4();
  __chkstk_darwin(v9 - 8);
  *&v3[OBJC_IVAR___BCReadingTimeToday_instance] = 0;
  *&v3[OBJC_IVAR___BCReadingTimeToday_parameters] = 0;
  v10 = &v3[OBJC_IVAR___BCReadingTimeToday_formattedProgress];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR___BCReadingTimeToday_observers;
  *&v4[v11] = [objc_opt_self() weakObjectsHashTable];
  v23 = OBJC_IVAR___BCReadingTimeToday_accessQueue;
  v21[0] = sub_1928F4(0, &qword_340388);
  v21[3] = "readingTimeToday";
  sub_1EEDA4();
  v30 = _swiftEmptyArrayStorage;
  v21[2] = sub_1E3CA4(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  v21[1] = sub_18AFC0(&qword_340658);
  sub_1B2998(&qword_340660, &qword_340658);
  sub_1EF454();
  v12 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v13 = *(v28 + 104);
  v28 += 104;
  v14 = v22;
  v13(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v4[v23] = sub_1EF174();
  v23 = OBJC_IVAR___BCReadingTimeToday_progressQueue;
  sub_1EEDA4();
  v30 = _swiftEmptyArrayStorage;
  sub_1EF454();
  v13(v14, v12, v27);
  *&v4[v23] = sub_1EF174();
  v15 = &v4[OBJC_IVAR___BCReadingTimeToday_kind];
  *v15 = 0xD000000000000010;
  *(v15 + 1) = 0x8000000000250EE0;
  v16 = v25;
  *&v4[OBJC_IVAR___BCReadingTimeToday_progress] = v24;
  v17 = &v4[OBJC_IVAR___BCReadingTimeToday_onObserverCountChanged];
  v18 = v26;
  *v17 = v16;
  *(v17 + 1) = v18;
  v19 = type metadata accessor for ReadingTimeToday();
  v29.receiver = v4;
  v29.super_class = v19;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_1DB894(uint64_t a1)
{
  v11 = 0;
  v3 = *&v1[OBJC_IVAR___BCReadingTimeToday_accessQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DBA34;
  *(v5 + 24) = v4;
  aBlock[4] = sub_19CCC4;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D2030;
  v6 = _Block_copy(aBlock);
  v7 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v9 = *&v7[OBJC_IVAR___BCReadingTimeToday_onObserverCountChanged];
    if (v9)
    {
      v9(v11);
    }
  }

  return result;
}

uint64_t sub_1DBA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DBA70(uint64_t a1)
{
  v11 = 0;
  v3 = *&v1[OBJC_IVAR___BCReadingTimeToday_accessQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DBC4C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1ADC78;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  aBlock[3] = &unk_2D20A8;
  v6 = _Block_copy(aBlock);
  v7 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v9 = *&v7[OBJC_IVAR___BCReadingTimeToday_onObserverCountChanged];
    if (v9)
    {
      v9(v11);
    }
  }

  return result;
}

uint64_t sub_1DBC0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1DBC58(SEL *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = OBJC_IVAR___BCReadingTimeToday_observers;
  [*(v3 + OBJC_IVAR___BCReadingTimeToday_observers) *a1];
  result = [*(v3 + v5) count];
  *v4 = result;
  return result;
}

void sub_1DBCC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1DBD40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1EED84();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1EEDE4();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_18AFC0(&unk_341C38);
  sub_1EF154();
  v10 = aBlock[0];
  v11 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v12 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v13 = *&v2[v12];
  *&v2[v12] = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v2;
  aBlock[4] = sub_1DC25C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D20F8;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_1EEDA4();
  v21 = _swiftEmptyArrayStorage;
  sub_1E3CA4(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1B2998(&qword_3403A0, &qword_340398);
  sub_1EF454();
  sub_1EF164();
  _Block_release(v15);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

void sub_1DC0B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR___BCReadingTimeToday_observers) allObjects];
  sub_18AFC0(&unk_341FE0);
  v4 = sub_1EEFE4();

  *a2 = v4;
}

unint64_t sub_1DC14C(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1EF634();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1EF584();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v6 dynamicProgressChanged:a2];
      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1DC21C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1DC53C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1DC5B0()
{
  v1 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeToday;
  v2 = *(v0 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeToday);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeToday);
  }

  else
  {
    v4 = v0;
    sub_1928F4(0, &qword_341430);
    isa = sub_1EF2F4(0).super.super.isa;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = objc_allocWithZone(type metadata accessor for ReadingTimeToday());
    v8 = ReadingTimeToday.init(progress:onObserverCountChanged:)(isa, sub_1E3CEC, v6);
    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1DC68C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 88);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1E3D2C;
    *(v6 + 24) = v5;
    v15 = sub_1ADC78;
    v16 = v6;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_199688;
    v14 = &unk_2D26F8;
    v7 = _Block_copy(&aBlock);

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v3 + 88);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1E3DBC;
      *(v9 + 24) = v3;
      v15 = sub_1ADC78;
      v16 = v9;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_199688;
      v14 = &unk_2D2748;
      v10 = _Block_copy(&aBlock);

      dispatch_sync(v8, v10);
      _Block_release(v10);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1DC90C()
{
  v1 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider;
  v2 = *(v0 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider);
  }

  else
  {
    v4 = sub_1DC5B0();
    v5 = type metadata accessor for ReadingTimeTodayProvider();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC8BookCore24ReadingTimeTodayProvider_dynamicProgress] = v4;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = objc_msgSendSuper2(&v11, "init");
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void (*sub_1DC9B8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DC90C();
  return sub_1DCA00;
}

void sub_1DCA00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider);
  *(v1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider) = v2;
}

char *ReadingHistoryController.__allocating_init(dataSource:userDefaults:currentTimeProvider:)(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E243C(a1, a2, a3, a4);

  return v8;
}

char *ReadingHistoryController.init(dataSource:userDefaults:currentTimeProvider:)(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = sub_1E243C(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1DCAD4(char *a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  v44 = sub_18AFC0(&qword_341C98);
  v4 = __chkstk_darwin(v44);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v38 - v6;
  v7 = sub_1EDF74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1EDF84();
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_1EDEF4();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v41 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v39 = &v38 - v22;
  __chkstk_darwin(v21);
  v24 = &v38 - v23;
  sub_1EDF24();
  (*(v8 + 104))(v10, enum case for Calendar.Component.day(_:), v7);
  sub_1EDF54();
  (*(v8 + 8))(v10, v7);
  v25 = *(v11 + 8);
  v25(v13, v47);
  v26 = *(v18 + 48);
  v27 = v26(v16, 1, v17);
  v40 = a3;
  if (v27 == 1)
  {
    (*(v18 + 16))(v24, a3, v17);
    if (v26(v16, 1, v17) != 1)
    {
      sub_1927B4(v16, &qword_3405B0);
    }
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
  }

  sub_1EDF24();
  v28 = v39;
  sub_1EDF34();
  v29 = v47;
  v25(v13, v47);
  sub_1EDF24();
  v30 = v41;
  sub_1EDF34();
  v25(v13, v29);
  (*(v18 + 8))(v24, v17);
  v31 = v44;
  v32 = *(v44 + 48);
  v33 = *(v18 + 32);
  v34 = v42;
  v33(v42, v28, v17);
  v33((v34 + v32), v30, v17);
  v35 = v43;
  sub_1E31F0(v34, v43);
  v36 = *(v31 + 48);
  v33(v45, v35, v17);
  return (v33)(v46, v35 + v36, v17);
}

uint64_t sub_1DCFB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 88);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1E3DC4;
    *(v3 + 24) = v2;
    aBlock[4] = sub_1ADC78;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199688;
    aBlock[3] = &unk_2D2680;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);
    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DD114()
{

  sub_1EE7F4();
}

uint64_t sub_1DD170(uint64_t a1, uint64_t a2)
{
  v25[4] = a1;
  v4 = sub_18AFC0(&qword_341C98);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v25 - v6;
  v8 = sub_1EDEF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v25 - v14;
  __chkstk_darwin(v13);
  v17 = v25 - v16;
  v18 = sub_1EE5C4();
  (*(*(v18 - 8) + 8))(a1, v18);
  sub_19F5E0(a2 + 24, v26);
  v25[2] = v28;
  v25[3] = v27;
  v25[1] = sub_18E35C(v26, v27);
  v19 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange;
  swift_beginAccess();
  sub_19A4B0(a2 + v19, v7, &qword_341C98);
  v20 = *(v5 + 56);
  v21 = *(v9 + 32);
  v21(v17, v7, v8);
  v21(v15, &v7[v20], v8);
  v22 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime;
  swift_beginAccess();
  (*(v9 + 16))(v12, a2 + v22, v8);
  sub_1EE374();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v23(v15, v8);
  v23(v17, v8);
  return sub_18E310(v26);
}

void sub_1DD61C()
{
  v0 = sub_1EE584();
  v48 = *(v0 - 8);
  v49 = v0;
  __chkstk_darwin(v0);
  v46 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1EE5C4();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFC0(&qword_341C98) - 8;
  v3 = __chkstk_darwin(v41);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = v37 - v5;
  v6 = sub_1EDEF4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v39 = v37 - v12;
  __chkstk_darwin(v11);
  v14 = v37 - v13;
  v37[1] = sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v15 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2A5AF0;
  sub_1EDEE4();
  v17 = sub_1EDE84();
  v19 = v18;
  v20 = v7[1];
  v20(v14, v6);
  v38 = v20;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1ACF5C();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_1EEAA4();

  type metadata accessor for ReadingHistoryController();
  sub_1EDEE4();
  v21 = v39;
  sub_1DCAD4(v14, v39, v10);
  v20(v10, v6);
  v22 = v7[4];
  v23 = v40;
  v22(v40, v14, v6);
  v24 = v41;
  v22((v23 + *(v41 + 56)), v21, v6);
  v25 = v42;
  sub_1E31F0(v23, v42);
  v26 = *(v24 + 56);
  v27 = v24;
  v28 = v43;
  v29 = v43 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange;
  swift_beginAccess();
  v30 = v7[5];
  v30(v29, v25, v6);
  v30(v29 + *(v27 + 56), v25 + v26, v6);
  swift_endAccess();
  v31 = *(v28 + 72);

  v31(v32);

  ReadingHistoryController.flushSessions(until:)(v14);
  v38(v14, v6);
  v33 = sub_1DC5B0();

  v34 = v44;
  sub_1EE7E4();

  v35 = v46;
  sub_1EE5B4();
  (*(v45 + 8))(v34, v47);
  v36 = sub_1EE564();
  (*(v48 + 8))(v35, v49);
  sub_1DBD40(v36);
}

uint64_t ReadingHistoryController.flushSessions(until:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1EDEF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFC0(&qword_3405B0);
  v9 = __chkstk_darwin(v8 - 8);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  (*(v5 + 56))(&v27 - v11, 1, 1, v4);
  v38 = 0;
  v13 = *(v2 + 88);
  v14 = *(v5 + 16);
  v29 = a1;
  v14(v7, a1, v4);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v2;
  (*(v5 + 32))(v17 + v15, v7, v4);
  *(v17 + v16) = &v38;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E2DD0;
  *(v18 + 24) = v17;
  v36 = sub_1ADC78;
  v37 = v18;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_199688;
  v35 = &unk_2D2170;
  v19 = _Block_copy(&aBlock);

  v31 = v13;
  dispatch_sync(v13, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v38)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!*(v38 + 16))
  {
LABEL_7:
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1E2E60;
    *(v25 + 24) = v2;
    v36 = sub_1ADC78;
    v37 = v25;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_199688;
    v35 = &unk_2D21C0;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v31, v26);
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {

      sub_1927B4(v12, &qword_3405B0);
    }

    goto LABEL_10;
  }

  v28 = v12;
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v21 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  result = swift_allocObject();
  *(result + 16) = xmmword_2A5AF0;
  v22 = v38;
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = result;
  *(result + 56) = sub_18AFC0(&qword_341C60);
  *(v23 + 64) = sub_1B2998(&qword_341C68, &qword_341C60);
  *(v23 + 32) = v22;

  sub_1EEAA4();

  v12 = v28;
  v24 = v30;
  sub_19A4B0(v28, v30, &qword_3405B0);
  result = (*(v5 + 48))(v24, 1, v4);
  if (result != 1)
  {
    sub_1DEC5C();
    (*(v5 + 8))(v24, v4);
    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1DE1A4(uint64_t a1)
{
  v2 = sub_1EE584();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1EE5C4();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EDEF4();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1EDD64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFC0(&qword_341FA8);
  __chkstk_darwin(v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_1EE4A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  sub_1E3CA4(&unk_341FB0, &type metadata accessor for ReadingHistory.Notification.AddFakeSession);
  sub_1EE954();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1927B4(v16, &qword_341FA8);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = v37;
  sub_19F5E0(v37 + 24, aBlock);
  sub_18E35C(aBlock, v39);
  sub_1EE484();
  result = sub_1EE494();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1EE3A4();
  (*(v30 + 8))(v9, v31);
  sub_18E310(aBlock);
  v24 = sub_1DC5B0();

  sub_1EE7E4();

  v25 = v34;
  sub_1EE5B4();
  (*(v32 + 8))(v6, v33);
  v26 = sub_1EE564();
  (*(v35 + 8))(v25, v36);
  sub_1DBD40(v26);

  v27 = *(v22 + 88);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1E3DC4;
  *(v28 + 24) = v22;
  v40 = sub_1ADC78;
  v41 = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199688;
  v39 = &unk_2D2540;
  v29 = _Block_copy(aBlock);

  dispatch_sync(v27, v29);
  _Block_release(v29);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1DE890()
{
  v1 = v0;
  sub_19F5E0(v0 + 24, &v10);
  sub_18E35C(&v10, v13);
  sub_1EE394();
  sub_18E310(&v10);
  v2 = sub_1DC5B0();
  sub_1DBD40(0);

  v3 = *(v1 + 88);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1E3DC4;
  *(v4 + 24) = v1;
  v14 = sub_1ADC78;
  v15 = v4;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_199688;
  v13 = &unk_2D24A0;
  v5 = _Block_copy(&v10);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E3BDC;
  *(v7 + 24) = v1;
  v14 = sub_1ADC78;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_199688;
  v13 = &unk_2D24F0;
  v8 = _Block_copy(&v10);

  dispatch_sync(v3, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEB10(uint64_t a1)
{
  v2 = sub_1EDEF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);

  v6(v7);

  v8 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v8, v5, v2);
  return swift_endAccess();
}

uint64_t sub_1DEC5C()
{
  v0 = sub_1EDEF4();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = __chkstk_darwin(v0);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v41 = &v33 - v3;
  v39 = sub_1EDF84();
  v42 = *(v39 - 8);
  v4 = __chkstk_darwin(v39);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v8 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2A5D70;
  v10 = sub_1EDE84();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_1ACF5C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1EDE84();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1EEAA4();

  result = sub_1EDEC4();
  if (result)
  {
    sub_1EDF24();
    result = sub_1EDEA4();
    v18 = ceil(v17);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = v41;
        sub_1EDF34();
        result = sub_1EDEA4();
        v21 = ceil(v20);
        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v21 > -9.22337204e18)
          {
            if (v21 < 9.22337204e18)
            {
              v22 = v21;
              v34 = v7;
              if (v21 >= v18)
              {
                v26 = v40;
                sub_19F5E0(v40 + 24, aBlock);
                sub_18E35C(aBlock, v44);
                sub_1EE3A4();
                sub_18E310(aBlock);
                v29 = v37;
                v28 = v38;
                v25 = v39;
              }

              else
              {
                v23 = v35;
                sub_1EDF24();
                v24 = v36;
                sub_1EDE54();
                v25 = v39;
                (*(v42 + 8))(v23, v39);
                v26 = v40;
                sub_19F5E0(v40 + 24, aBlock);
                result = sub_18E35C(aBlock, v44);
                if (__OFSUB__(v18, v22))
                {
LABEL_22:
                  __break(1u);
                  return result;
                }

                sub_1EE3A4();
                sub_18E310(aBlock);
                sub_19F5E0(v26 + 24, aBlock);
                sub_18E35C(aBlock, v44);
                sub_1EE3A4();
                v27 = v24;
                v29 = v37;
                v28 = v38;
                (*(v37 + 8))(v27, v38);
                sub_18E310(aBlock);
              }

              v30 = *(v26 + 88);
              v31 = swift_allocObject();
              *(v31 + 16) = sub_1E3DC4;
              *(v31 + 24) = v26;
              v45 = sub_1ADC78;
              v46 = v31;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_199688;
              v44 = &unk_2D2630;
              v32 = _Block_copy(aBlock);

              dispatch_sync(v30, v32);
              _Block_release(v32);
              LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

              if ((v30 & 1) == 0)
              {
                (*(v29 + 8))(v19, v28);
                return (*(v42 + 8))(v34, v25);
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

void sub_1DF208(uint64_t a1)
{
  v2 = sub_1EE584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EE5C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_readingTimeTodayObserverCount;
  v11 = *(a1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_readingTimeTodayObserverCount);
  if (v11 >= 1)
  {
    v12 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16) && !*(a1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_clockTickTimer))
    {
      v30 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_clockTickTimer;
      v13 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1E3C1C;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18F0D8;
      aBlock[3] = &unk_2D25E0;
      v14 = _Block_copy(aBlock);
      v31 = v3;
      v15 = v14;
      v16 = objc_opt_self();

      v17 = [v16 timerWithTimeInterval:1 repeats:v15 block:1.0];
      _Block_release(v15);

      v3 = v31;

      v18 = [objc_opt_self() mainRunLoop];
      [v18 addTimer:v17 forMode:NSRunLoopCommonModes];

      v19 = *(a1 + v30);
      *(a1 + v30) = v17;
    }

    v11 = *(a1 + v10);
  }

  if (!v11 || (v20 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions, swift_beginAccess(), !*(*(a1 + v20) + 16)))
  {
    v21 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_clockTickTimer;
    v22 = *(a1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_clockTickTimer);
    if (v22)
    {
      [v22 invalidate];
      v23 = *(a1 + v21);
      *(a1 + v21) = 0;

      sub_1EE654();

      sub_1EE5B4();
      (*(v7 + 8))(v9, v6);
      v24 = sub_1EE564();
      (*(v3 + 8))(v5, v2);
      v25 = sub_1DC5B0();
      v26 = OBJC_IVAR___BCReadingTimeToday_progress;
      swift_beginAccess();
      v27 = *&v25[v26];

      v28 = [v27 integerValue];
      if (v28 != v24)
      {
        v29 = *(a1 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeToday);
        sub_1DBD40(v24);
      }
    }
  }
}

uint64_t sub_1DF604()
{
  v0 = sub_1EE584();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1EE5C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EDEF4();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v21 = v8;
    v13 = *(result + 72);

    v13(v14);

    sub_1EE654();

    sub_1EE5B4();
    (*(v5 + 8))(v7, v4);
    v15 = sub_1EE564();
    v16 = (*(v1 + 8))(v3, v0);
    __chkstk_darwin(v16);
    *(&v20 - 2) = v12;
    *(&v20 - 1) = v10;
    result = sub_1EF154();
    v17 = ceil(v23);
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        v18 = v15 + v17;
        if (!__OFADD__(v15, v17))
        {
          v19 = sub_1DC5B0();
          sub_1DBD40(v18);

          return (*(v22 + 8))(v10, v21);
        }

LABEL_11:
        __break(1u);
        return result;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t ReadingHistoryController.deinit()
{

  sub_18E310(v0 + 24);

  v1 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime;
  v2 = sub_1EDEF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1927B4(v0 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange, &qword_341C98);
  return v0;
}

uint64_t ReadingHistoryController.__deallocating_deinit()
{
  ReadingHistoryController.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReadingHistoryController.sessionStarted(sessionID:delay:)(char *a1, double a2)
{
  v3 = v2;
  v6 = sub_1EDF14();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = v7;
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1EDF74();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v9 - 8);
  v67 = (&v54 - v10);
  v69 = sub_1EDEF4();
  v11 = *(v69 - 8);
  v12 = __chkstk_darwin(v69);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_1EDF84();
  v58 = *(v17 - 8);
  v59 = v17;
  __chkstk_darwin(v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v20 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2A5D70;
  v62 = a1;
  v22 = sub_1EDF04();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1ACF5C();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  *(v21 + 96) = &type metadata for Double;
  *(v21 + 104) = &protocol witness table for Double;
  *(v21 + 72) = a2;
  sub_1EEAA4();

  v68 = v19;
  sub_1EDF24();
  v25 = *(v3 + 72);

  v25(v26);

  sub_1EDEB4();
  v27 = *(v11 + 8);
  v60 = v14;
  v28 = v69;
  v27(v14, v69);
  v70 = v3;
  v29 = *(v3 + 64);
  sub_1EE4C4();
  v30 = sub_1EEED4();

  v31 = [v29 integerForKey:v30];

  if (v31 >= 1)
  {
    v32 = v56;
    v33 = v55;
    v34 = v57;
    (*(v56 + 13))(v55, enum case for Calendar.Component.second(_:), v57);
    v35 = v67;
    sub_1EDF54();
    (*(v32 + 1))(v33, v34);
    result = (*(v11 + 48))(v35, 1, v28);
    if (result == 1)
    {
      goto LABEL_9;
    }

    v37 = v67;
    sub_1DEC5C();
    v27(v37, v28);
  }

  v56 = v27;
  v57 = v11 + 8;
  v38 = v70;
  ReadingHistoryController.flushSessions(until:)(v16);
  v67 = *(v38 + 88);
  v40 = v64;
  v39 = v65;
  v41 = v66;
  (*(v65 + 16))(v64, v62, v66);
  v42 = *(v11 + 16);
  v43 = v60;
  v62 = v16;
  v42(v60, v16, v28);
  v44 = v28;
  v45 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v46 = (v63 + *(v11 + 80) + v45) & ~*(v11 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v38;
  (*(v39 + 32))(v47 + v45, v40, v41);
  v48 = v67;
  (*(v11 + 32))(v47 + v46, v43, v44);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1E2FD4;
  *(v49 + 24) = v47;
  v75 = sub_1ADC78;
  v76 = v49;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_199688;
  v74 = &unk_2D2238;
  v50 = _Block_copy(&aBlock);

  dispatch_sync(v48, v50);
  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    __break(1u);
  }

  else
  {
    v51 = swift_allocObject();
    v52 = v70;
    *(v51 + 16) = sub_1E30A4;
    *(v51 + 24) = v52;
    v75 = sub_1ADC78;
    v76 = v51;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_199688;
    v74 = &unk_2D2288;
    v53 = _Block_copy(&aBlock);

    dispatch_sync(v48, v53);
    _Block_release(v53);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      v56(v62, v69);
      (*(v58 + 8))(v68, v59);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E0384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1EDF14();
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = sub_1EDEF4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1AF4F0(v7, v10);
  return swift_endAccess();
}

uint64_t ReadingHistoryController.sessionEnded(sessionID:)(uint64_t a1)
{
  v2 = v1;
  v31 = sub_1EDF14();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1EDEF4();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v9 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2A5AF0;
  v11 = sub_1EDF04();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1ACF5C();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1EEAA4();

  v14 = *(v2 + 88);
  v32 = v2;
  v33 = a1;
  result = sub_1EF154();
  if (aBlock == 1)
  {
    v16 = *(v2 + 72);

    v16(v17);

    ReadingHistoryController.flushSessions(until:)(v8);
    (*(v28 + 8))(v8, v29);
    v18 = v30;
    v19 = a1;
    v20 = v31;
    (*(v4 + 16))(v30, v19, v31);
    v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    (*(v4 + 32))(v22 + v21, v18, v20);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1E318C;
    *(v23 + 24) = v22;
    v38 = sub_1ADC78;
    v39 = v23;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_199688;
    v37 = &unk_2D2300;
    v24 = _Block_copy(&aBlock);

    dispatch_sync(v14, v24);
    _Block_release(v24);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      __break(1u);
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1E3DBC;
      *(v25 + 24) = v2;
      v38 = sub_1ADC78;
      v39 = v25;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_199688;
      v37 = &unk_2D2350;
      v26 = _Block_copy(&aBlock);

      dispatch_sync(v14, v26);
      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E0A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions;
  swift_beginAccess();
  v10 = *(a1 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_1B08D8(a2);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v18 = sub_1EDEF4();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v17 = 0;
    goto LABEL_6;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = sub_1EDEF4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v8, v14 + *(v16 + 72) * v13, v15);

  v17 = 1;
  (*(v16 + 56))(v8, 0, 1, v15);
LABEL_6:
  result = sub_1927B4(v8, &qword_3405B0);
  *a3 = v17;
  return result;
}

uint64_t sub_1E0C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions;
  swift_beginAccess();
  v8 = sub_1B08D8(a2);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v7);
    v20 = v12;
    *(a1 + v7) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BCA14();
      v12 = v20;
    }

    v13 = *(v12 + 48);
    v14 = sub_1EDF14();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v15 = *(v12 + 56);
    v16 = sub_1EDEF4();
    v17 = *(v16 - 8);
    (*(v17 + 32))(v6, v15 + *(v17 + 72) * v10, v16);
    sub_1B1204(v10, v12);
    *(a1 + v7) = v12;

    (*(v17 + 56))(v6, 0, 1, v16);
  }

  else
  {
    v18 = sub_1EDEF4();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  sub_1927B4(v6, &qword_3405B0);
  return swift_endAccess();
}

uint64_t ReadingHistoryController.handleAchievement(_:)()
{
  v1 = v0;
  v2 = sub_1EDEF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EF0B4();
  sub_1928F4(0, &qword_341A60);
  v6 = sub_1EF404();
  sub_18AFC0(&qword_340AF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2A5AF0;
  v8 = Achievement.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1ACF5C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1EEAA4();

  v11 = *(v1 + 72);

  v11(v12);

  ReadingHistoryController.flushSessions(until:)(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReadingHistoryController.setReadingHistoryForWeek(ending:)(char *a1)
{
  v18 = a1;
  v1 = sub_1EDF74();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1EDF84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1EDEF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EDF24();
  (*(v2 + 104))(v4, enum case for Calendar.Component.day(_:), v1);
  sub_1EDF54();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1927B4(v11, &qword_3405B0);
  }

  (*(v13 + 32))(v15, v11, v12);
  ReadingHistoryController.setReadingHistory(beginning:ending:)(v15, v18);
  return (*(v13 + 8))(v15, v12);
}

uint64_t ReadingHistoryController.setReadingHistory(beginning:ending:)(uint64_t a1, char *a2)
{
  v77 = a2;
  v79 = sub_18AFC0(&qword_341CA8) - 8;
  v2 = __chkstk_darwin(v79);
  v78 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = &v67 - v4;
  v5 = sub_18AFC0(&qword_341C98);
  v6 = __chkstk_darwin(v5);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v70 = &v67 - v9;
  v10 = __chkstk_darwin(v8);
  v75 = &v67 - v11;
  v12 = __chkstk_darwin(v10);
  v80 = &v67 - v13;
  __chkstk_darwin(v12);
  v84 = &v67 - v14;
  v15 = sub_1EDF84();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1EDEF4();
  v83 = *(v19 - 8);
  v20 = v83;
  v21 = __chkstk_darwin(v19);
  v82 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v67 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v67 - v27;
  __chkstk_darwin(v26);
  v30 = &v67 - v29;
  sub_1EDF24();
  sub_1EDF34();
  v31 = *(v16 + 8);
  v31(v18, v15);
  sub_1EDF24();
  sub_1EDF34();
  v31(v18, v15);
  v32 = v5;
  v33 = *(v5 + 48);
  v34 = *(v20 + 16);
  v35 = v84;
  v73 = v30;
  v34(v84, v30, v19);
  v74 = v28;
  v34(v35 + v33, v28, v19);
  v36 = v81 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange;
  swift_beginAccess();
  v69 = v36;
  v37 = v80;
  sub_19A4B0(v36, v80, &qword_341C98);
  v38 = *(v32 + 48);
  v39 = v76;
  v40 = *(v83 + 32);
  v40(v25, v37, v19);
  v41 = v37 + v38;
  v42 = v75;
  v43 = v82;
  v68 = v40;
  v40(v82, v41, v19);
  sub_19A4B0(v84, v42, &qword_341C98);
  v72 = v32;
  v44 = *(v32 + 48);
  v77 = v25;
  v34(v39, v25, v19);
  v45 = v79;
  v46 = v43;
  v47 = v44;
  v34(v39 + *(v79 + 56), v46, v19);
  v48 = v78;
  v34(v78, v42, v19);
  v34(v48 + *(v45 + 56), (v42 + v47), v19);
  sub_1E3CA4(&qword_341CB0, &type metadata accessor for Date);
  if (sub_1EEEB4())
  {
    v49 = sub_1EEEB4() ^ 1;
  }

  else
  {
    v49 = 1;
  }

  sub_1927B4(v48, &qword_341CA8);
  sub_1927B4(v39, &qword_341CA8);
  v50 = v83;
  v51 = *(v83 + 8);
  v51(v82, v19);
  v51(v77, v19);
  v51((v42 + v47), v19);
  v51(v42, v19);
  result = v84;
  if (v49 & 1) != 0 && (v53 = v80, sub_19A4B0(v84, v80, &qword_341C98), v54 = v72, v55 = *(v72 + 48), v56 = v50, v57 = v70, v58 = v68, v68(v70, v53, v19), v58(v57 + *(v54 + 48), v53 + v55, v19), v59 = v71, sub_1E31F0(v57, v71), v60 = *(v54 + 48), v61 = v69, swift_beginAccess(), v62 = *(v56 + 40), v62(v61, v59, v19), v62(v61 + *(v54 + 48), v59 + v60, v19), swift_endAccess(), v63 = v81, v64 = *(v81 + 88), v65 = swift_allocObject(), *(v65 + 16) = sub_1E3DC4, *(v65 + 24) = v63, aBlock[4] = sub_1ADC78, aBlock[5] = v65, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_199688, aBlock[3] = &unk_2D23A0, v66 = _Block_copy(aBlock), , , , dispatch_sync(v64, v66), _Block_release(v66), LOBYTE(v64) = swift_isEscapingClosureAtFileLocation(), , , result = v84, (v64))
  {
    __break(1u);
  }

  else
  {
    sub_1927B4(result, &qword_341C98);
    v51(v74, v19);
    return (v51)(v73, v19);
  }

  return result;
}

uint64_t sub_1E1B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1EDEF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions;
  result = swift_beginAccess();
  if (*(*(a1 + v8) + 16))
  {
    v10 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime;
    swift_beginAccess();
    (*(v5 + 16))(v7, a1 + v10, v4);
    sub_1EDEA4();
    v12 = v11;
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1E1CA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a3;
  v7 = sub_1EDEF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v15(v13, a2 + v14, v7);
  (*(v8 + 56))(v13, 0, 1, v7);
  sub_1E3C2C(v13, a1);
  v15(v10, v19, v7);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v14, v10, v7);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions;
  swift_beginAccess();
  *a4 = *(a2 + v16);
}

Swift::Void __swiftcall ReadingHistoryController.clearData()()
{
  sub_19F5E0(v0 + 24, v2);
  sub_18E35C(v2, v2[3]);
  sub_1EE384();
  sub_18E310(v2);
  v1 = sub_1DC5B0();
  sub_1DBD40(0);
}

void sub_1E1FDC()
{
  sub_19F5E0(*v0 + 24, v2);
  sub_18E35C(v2, v2[3]);
  sub_1EE384();
  sub_18E310(v2);
  v1 = sub_1DC5B0();
  sub_1DBD40(0);
}

uint64_t sub_1E2058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B0610(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BC4CC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1EDEF4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1EE624();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1B09AC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1EE624();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1E21F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B0598(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BC870();
      v10 = v12;
    }

    sub_19DE70((*(v10 + 56) + 32 * v8), a3);
    sub_1B1054(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E229C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B08D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BCA14();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1EDF14();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1EDEF4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1B1204(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1EDEF4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

char *sub_1E243C(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a4;
  v48 = a2;
  v55 = a1;
  v6 = sub_1EE5C4();
  __chkstk_darwin(v6 - 8);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_18AFC0(&qword_341C98) - 8;
  v8 = __chkstk_darwin(v47);
  v49 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = v45 - v10;
  v53 = sub_1EDEF4();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v57 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1EF134();
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1EF104();
  __chkstk_darwin(v15);
  v16 = sub_1EEDE4();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1928F4(0, &qword_340388);
  v45[1] = "lic}@, to: %{public}@)";
  v45[2] = v17;
  sub_1EEDA4();
  v58 = _swiftEmptyArrayStorage;
  sub_1E3CA4(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_18AFC0(&qword_340658);
  sub_1B2998(&qword_340660, &qword_340658);
  sub_1EF454();
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  *(v4 + 11) = sub_1EF174();
  *&v4[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_sessions] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeToday] = 0;
  *&v4[OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider] = 0;
  *&v4[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_readingTimeTodayObserverCount] = 0;
  *&v4[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_clockTickTimer] = 0;
  sub_19F5E0(v55, (v4 + 24));
  v18 = v48;
  v20 = v50;
  v19 = v51;
  *(v5 + 8) = v48;
  *(v5 + 9) = v20;
  *(v5 + 10) = v19;
  v21 = v18;

  v23 = v57;
  v20(v22);
  v24 = v56;
  v25 = v53;
  (*(v56 + 16))(&v5[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_lastFlushTime], v23, v53);
  v26 = v47;
  v27 = *(v47 + 56);
  type metadata accessor for ReadingHistoryController();
  v28 = v54;
  sub_1DCAD4(v54, &v54[v27], v23);
  v29 = v49;
  sub_19A4B0(v28, v49, &qword_341C98);
  v30 = *(v26 + 56);
  v31 = &v5[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange];
  v32 = *(v24 + 32);
  v32(&v5[OBJC_IVAR____TtC8BookCore24ReadingHistoryController_weekRange], v29, v25);
  v32(&v31[*(v26 + 56)], v29 + v30, v25);
  sub_18E35C(v55, v55[3]);
  sub_19A4B0(v28, v29, &qword_341C98);
  v33 = *(v26 + 56);
  sub_1EE374();
  v34 = *(v24 + 8);
  v56 = v24 + 8;
  v34(v29 + v33, v25);
  v34(v29, v25);
  sub_18AFC0(&qword_341FC0);
  swift_allocObject();
  *(v5 + 2) = sub_1EE7D4();
  v35 = v55;
  sub_18E35C(v55, v55[3]);
  swift_allocObject();
  swift_weakInit();

  sub_1EE3B4();

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  sub_1EE4B4();
  sub_1E3CA4(&qword_341FC8, &type metadata accessor for ReadingHistory.Notification.PlaceholderStreakDayGoalNeedsUpdate);

  v38 = sub_1EE964();
  [v37 addObserver:v5 selector:"handlePlaceholderStreakDayGoalNeedsUpdate:" name:v38 object:0];

  v39 = [v36 defaultCenter];
  [v39 addObserver:v5 selector:"handleSignificantDateChange:" name:UIApplicationSignificantTimeChangeNotification object:0];

  v40 = [v36 defaultCenter];
  sub_1EE4A4();
  sub_1E3CA4(&unk_341FB0, &type metadata accessor for ReadingHistory.Notification.AddFakeSession);

  v41 = sub_1EE964();
  [v40 addObserver:v5 selector:"createFakeSession:" name:v41 object:0];

  v42 = [v36 defaultCenter];
  sub_1EE474();
  sub_1E3CA4(&unk_341FD0, &type metadata accessor for ReadingHistory.Notification.ClearToday);

  v43 = sub_1EE964();
  [v42 addObserver:v5 selector:"clearTodaysReadingTime" name:v43 object:0];

  sub_1927B4(v54, &qword_341C98);
  v34(v57, v53);
  sub_18E310(v35);
  return v5;
}

uint64_t sub_1E2D00()
{
  v1 = sub_1EDEF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1E2DD0()
{
  v1 = *(sub_1EDEF4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1CA4(v3, v4, v0 + v2, v5);
}

uint64_t sub_1E2E84()
{
  v1 = sub_1EDF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1EDEF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1E2FD4()
{
  v1 = *(sub_1EDF14() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1EDEF4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E0384(v5, v0 + v2, v6);
}

uint64_t sub_1E30C8()
{
  v1 = sub_1EDF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E318C()
{
  v1 = *(sub_1EDF14() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E0C20(v2, v3);
}

uint64_t sub_1E31F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_341C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3260@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BCReadingTimeToday_kind);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1E32F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

id sub_1E3378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCReadingTimeToday_progress;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1E33E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BCReadingTimeToday_formattedProgress);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1E3440@<X0>(void *a1@<X8>)
{
  result = sub_1DC90C();
  *a1 = result;
  return result;
}

void sub_1E346C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider);
  *(*a2 + OBJC_IVAR____TtC8BookCore24ReadingHistoryController____lazy_storage___readingTimeTodayProvider) = *a1;
  v3 = v2;
}

uint64_t type metadata accessor for ReadingHistoryController()
{
  result = qword_341D98;
  if (!qword_341D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E39F8()
{
  v2[4] = &value witness table for Builtin.NativeObject + 64;
  v2[5] = &unk_2A7130;
  v2[6] = &value witness table for Builtin.UnknownObject + 64;
  v2[7] = &value witness table for () + 64;
  v2[8] = &value witness table for Builtin.UnknownObject + 64;
  result = sub_1EDEF4();
  if (v1 <= 0x3F)
  {
    v2[9] = *(result - 8) + 64;
    v2[10] = &value witness table for Builtin.BridgeObject + 64;
    v2[11] = &unk_2A7148;
    v2[12] = &unk_2A7148;
    v2[13] = &value witness table for Builtin.Int64 + 64;
    v2[14] = &unk_2A7148;
    swift_getTupleTypeLayout2();
    v2[15] = v2;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E3BE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E3C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_3405B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3CF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id BCAssetToPurge.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id BCAssetToPurge.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BCAssetToPurge();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id BCAssetToPurge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BCAssetToPurge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static BCAssetToPurge.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1EEED4();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1E4024(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 assetID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1EEF04();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E408C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1EEED4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAssetID:?];
}

uint64_t sub_1E40FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BCAssetToPurge();
  result = sub_1EF574();
  *a1 = result;
  return result;
}

id sub_1E4160@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 launches];
  *a2 = result;
  return result;
}

void sub_1E4238()
{
  sub_4A5C(__stack_chk_guard);
  sub_4A24();
  sub_4A3C(&dword_0, v0, v1, "BCCacheProductProfiles: Error fetching product profiles from AEUserPublishing: %@  error: %@");
}

void sub_1E42A0()
{
  sub_4A5C(__stack_chk_guard);
  sub_4A24();
  sub_4A3C(&dword_0, v0, v1, "BCCacheProductProfiles: Error fetching product profiles from BLJaliscoDAAPClient: %@  error: %@");
}

void sub_1E431C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    obj = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 176));

    v5 = obj;
    if (WeakRetained != obj)
    {
      *(a1 + 8) = 0;
      v7 = sub_DDCC();
      v8 = objc_loadWeakRetained(v7);
      [v8 removeObserver:a1 forKeyPath:@"contentSize" context:off_33B7D0];

      v9 = sub_DDCC();
      v10 = objc_loadWeakRetained(v9);
      [v10 _removeScrollViewScrollObserver:a1];

      v11 = sub_DDCC();
      v12 = objc_loadWeakRetained(v11);
      v13 = [a1 scrollView];
      v14 = [v13 panGestureRecognizer];
      [v12 removeGestureRecognizer:v14];

      v15 = sub_DDCC();
      objc_storeWeak(v15, obj);
      [obj setScrollEnabled:0];
      [*(a1 + 48) setContentScrollView:obj];
      v16 = sub_DDCC();
      v17 = objc_loadWeakRetained(v16);
      v18 = [a1 scrollView];
      v19 = [v18 panGestureRecognizer];
      [v17 addGestureRecognizer:v19];

      v20 = [a1 cardNavigationController];
      v21 = [v20 viewControllers];
      if ([v21 count] < 2)
      {
        [a1 contentInset];
      }

      else
      {
        [a1 contentInsetForContent];
      }

      v26 = v22;
      v27 = v23;
      v28 = v24;
      v29 = v25;

      v30 = [a1 cardNavigationController];
      v31 = [v30 viewControllers];
      v32 = [v31 lastObject];
      [a1 _updateViewController:v32 withContentInset:v26 unalteredContentInset:{v27, v28, v29, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40)}];

      v33 = [a1 configuration];
      [obj setShowsVerticalScrollIndicator:{objc_msgSend(v33, "cardsCanExpand") ^ 1}];

      [obj addObserver:a1 forKeyPath:@"contentSize" options:7 context:off_33B7D0];
      [obj _addScrollViewScrollObserver:a1];
      v5 = obj;
      if (a3)
      {
        *(a1 + 8) = 1;
        v34 = [a1 currentState];
        [v34 cardViewController:a1 contentScrollViewDidChange:obj cardData:a1];

        v5 = obj;
      }
    }
  }
}

void sub_1E4734(void *a1, uint64_t a2)
{
  v9 = [a1 _preferredTargetState];
  [v9 cardViewControllerAuxiliaryNavigationBarAlpha:a1 cardData:a1];
  [a1 _setAuxiliaryNavigationBarViewAlpha:?];
  objc_opt_class();
  v4 = BUClassAndProtocolCast();
  v5 = [a1 view];
  v6 = [v5 window];
  v7 = v6 == 0;

  v8 = [v4 scrollView];
  sub_1E431C(a1, v8, v7);

  [a1 _adjustContentMarginsForViewController:a2 isExpanded:{objc_msgSend(a1, "expanded")}];
}

id sub_1E483C(id result)
{
  if (result)
  {
    v5 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
    v2 = 0;
    result = [result getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
    if (result)
    {
      if (vabdd_f64(v5, v4) >= fabs(v4 * 0.00100000005))
      {
        return 0;
      }

      v1 = fabs(v3 * 0.00100000005);
      if (vabdd_f64(v5, v3) >= v1)
      {
        return 0;
      }

      else
      {
        return (vabdd_f64(v4, v3) < v1);
      }
    }
  }

  return result;
}

void sub_1E49B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Emitter:bookPositionChanged %@", &v2, 0xCu);
}

void sub_1E4A98(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Emitter:bookMilestoneReached %@", &v4, 0xCu);
}

void sub_1E4B3C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Emitter:bookSectionChanged %@", &v2, 0xCu);
}

void sub_1E4C78(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "BICCacheLevel: RAM hit for best match: %@", &v3, 0xCu);
}

void sub_1E4D60()
{
  sub_2322C();
  v2 = [sub_23244(v1) persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  [v3 firstObject];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_23238() description];
  sub_231B8();
  sub_231D0(&dword_0, v5, v6, "Error saving BCReadingStatisticsController MOC on PS %@: %@", v7, v8, v9, v10, v11);
}

void sub_1E4EA0(void *a1)
{
  v1 = [a1 cfi];
  sub_231F0();
  sub_231D0(&dword_0, v2, v3, "Error constructing BCCFI from string recovered from a BCReadingStatsHeatMapEntry: %@ error=%@", v4, v5, v6, v7, v8);
}

void sub_1E5008()
{
  sub_2322C();
  v1 = [v0 objectForKeyedSubscript:@"cfiStart"];
  sub_231F0();
  sub_231D0(&dword_0, v2, v3, "_TOCEntryCFIs error forming BCCFI from string: %@ error=%@", v4, v5, v6, v7, v8);
}

void sub_1E50A0()
{
  sub_2322C();
  v1 = [v0 objectForKeyedSubscript:@"cfiEnd"];
  sub_231F0();
  sub_231D0(&dword_0, v2, v3, "_TOCEntryCFIs error forming BCCFI from string: %@ error=%@", v4, v5, v6, v7, v8);
}

void sub_1E5208(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_4A3C(&dword_0, a2, a3, "_connectOrdinalsWithCompletion Unable to fetch text nodes for ordinal %lu.  Error=%@", *v3, *&v3[8], *&v3[16]);
}

void sub_1E5440(uint64_t a1, uint64_t a2)
{
  v4 = [sub_28BC8(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_28BDC(&dword_0, v5, v6, "stopping activity for context: %@");
}

void sub_1E549C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_28BC8(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_28BDC(&dword_0, v5, v6, "starting activity for context: %@");
}

void sub_1E5568(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "buildContextTree timeout", buf, 2u);
}

void sub_1E55DC()
{
  sub_28B98();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "didOpenBookWithAssetID: creating context for book %@ (%@)", v2, 0x16u);
}

void sub_1E5A20(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to rotate to portrait prior to pushing cards - %{public}@", &v2, 0xCu);
}

void sub_1E5B74(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "finishing layout cardIndex=%lu", &v3, 0xCu);
}

void sub_1E5C80(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "An error occurred while trying to get the bag key: %{public}@", &v2, 0xCu);
}

void sub_1E5D0C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%@ Did not receive the same coordinator", &v3, 0xCu);
}

void sub_1E5D88(uint64_t a1, void *a2)
{
  v8 = [a2 result];
  sub_41308(&dword_0, v2, v3, "fetchHistoryAfterToken:%@ result:%@", v4, v5, v6, v7, 2u);
}

void sub_1E5E2C()
{
  sub_231F0();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%@ Error when fetching persistent history %@. Will retry", v2, 0x16u);
}

void sub_1E5EA8(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 changedObjectID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "bc_getManagedObjectsWith something has gone terribly wrong changeID:(%@) ", a1, 0xCu);
}

void sub_1E5F20(void *a1)
{
  [a1 transactionNumber];
  sub_231F0();
  sub_41308(&dword_0, v1, v2, "*transaction #:(%lld) changes:%@", v3, v4, v5, v6, v7);
}

void sub_1E60CC(uint64_t a1, NSObject *a2)
{
  v2 = @"YES";
  if (!a1)
  {
    v2 = @"NO";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "BCUbiquityStatusMonitor: p_ubiquityIdentityDidChange - iCloud identity changed. {iCloudEnabled: %@}", &v3, 0xCu);
}

void sub_1E61A0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 16);
  v3 = 141558274;
  v4 = 1752392040;
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Container URL set to: %{mask.hash}@", &v3, 0x16u);
}

void sub_1E6248(void *a1)
{
  if (a1)
  {
    v2 = [a1 scrollStartCardIndex];
    if (v2 || ([a1 lastKnownScrollEndCardIndex], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v2;
      v3 = [a1 currentIndex];
      if ([v8 integerValue] != v3)
      {
        v4 = [a1 displayedCardViewControllers];
        v5 = [v4 objectForKeyedSubscript:v8];

        if (v5)
        {
          [v5 bc_analyticsVisibilitySubtreeWillDisappear];
          [v5 bc_analyticsVisibilitySubtreeDidDisappear];
        }

        v6 = [a1 currentCardViewController];
        [v6 bc_analyticsVisibilityUpdateSubtree];
      }

      v7 = [NSNumber numberWithInteger:v3];
      [a1 setLastKnownScrollEndCardIndex:v7];
    }
  }
}

void sub_1E6460()
{
  v1 = "[IMUbiquitousDataProvider newManagedObjectContextWithClass:concurrencyType:]";
  v2 = 2080;
  v0 = 136315650;
  v3 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCUbiquitousDataProvider.m";
  v4 = 1024;
  v5 = 170;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%s %s:%d", &v0, 0x1Cu);
}

void sub_1E65CC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to create redaction regular expression: %{public}@", &v2, 0xCu);
}

void sub_1E6704(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Semantic layout options error decoding: %@", &v2, 0xCu);
}

void sub_1E6790(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "BCCacheImageTransformer: Invalid blank source image Transforming: %@ into:%@", &v3, 0x16u);
}

void sub_1E68E0(void *a1)
{
  v6 = [a1 firstObject];
  sub_73918();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1E6970(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_73928();
  sub_73918();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1E6A08(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  sub_73928();
  sub_73918();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1E6F78(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "BICWorkQueue: Timing out %{public}@ on queue %@", buf, 0x16u);
}

void sub_1E70E4()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E715C()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E71E0()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E7264()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E72DC(void *a1)
{
  v1 = [a1 propertyProvider];
  v2 = [v1 bookURL];
  sub_23204();
  sub_80378();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E737C()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E7598()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden invalidation window of %@", v2, v3, v4, v5, v6);
}

void sub_1E7600()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden finished window of %@", v2, v3, v4, v5, v6);
}

void sub_1E7668()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden upgrade window of %@", v2, v3, v4, v5, v6);
}

void sub_1E76D0()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden time threshold of %@", v2, v3, v4, v5, v6);
}

void sub_1E7738()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden collection period of %@", v2, v3, v4, v5, v6);
}

void sub_1E77A0()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden time threshold for book open event of %@", v2, v3, v4, v5, v6);
}

void sub_1E7808()
{
  sub_83E3C(__stack_chk_guard);
  sub_83E4C();
  sub_28BAC(&dword_0, v0, v1, "Using overridden number of books allowed in recents list of %@", v2, v3, v4, v5, v6);
}

void sub_1E7A60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Can't fetch quota: %@.", &v2, 0xCu);
}

void sub_1E7BD8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_4A3C(&dword_0, a2, a3, "BCCacheManager: Invalid image size fetching a layer for assetID=%@, error=%@", *v3, *&v3[8], *&v3[16]);
}

void sub_1E7C50(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 56);
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  sub_4A3C(&dword_0, a2, a3, "BCCacheManager: We had a best image but could not fetch it for image=%@ for request=%@", *v3, *&v3[8], *&v3[16]);
}

void sub_1E7CD0(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = 138412290;
  v5 = WeakRetained;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BCCacheManager: Timed out in _fetchImagesMatchingDescription for image=%@", &v4, 0xCu);
}

void sub_1E7F3C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "BCCacheManager: Not accepting generic since we are downloading a cover image=%@", &v3, 0xCu);
}

void sub_1E7FB8(uint64_t a1)
{
  v1 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  sub_23204();
  sub_73918();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E8050(uint64_t a1)
{
  [*(*(a1 + 32) + 56) count];
  v2 = [*(*(a1 + 32) + 56) allObjects];
  v8 = [v2 componentsJoinedByString:{@", "}];
  sub_73918();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1E8364(uint64_t a1)
{
  [*(a1 + 40) count];
  [*(a1 + 48) count];
  sub_73918();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_1E84BC(void *a1, NSObject *a2)
{
  v3 = [a1 componentsJoinedByString:{@", "}];
  sub_23204();
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Encountered adamID from cloud sync that contains UUID: %@", v4, 0xCu);
}

void sub_1E8558()
{
  sub_28B98();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "<BKSeriesManagerUpdater: %p> Error fetching asset info: %@", v2, 0x16u);
}

void sub_1E86C4()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E8700(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 assetID];
  v7 = [a1 debugDescription];
  v8 = [a2 assetID];
  v9 = 138543874;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "BCReadingStatistics configured: %{public}@ %@ from assetDetail:%{public}@", &v9, 0x20u);
}

void sub_1E87E8(void *a1)
{
  v1 = [a1 assetID];
  sub_23204();
  sub_A16CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E8874(void *a1)
{
  v1 = [a1 assetID];
  sub_23204();
  sub_A16CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1E8918(void *a1)
{
  v1 = [a1 assetID];
  sub_23204();
  sub_A16CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E89A4(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_A16DC();
  sub_A16FC(&dword_0, v8, v9, "BCReadingStatisticsSync %@ Resolving: Identical properties from record: %@ %@", v10, v11, v12, v13, v14);
}

void sub_1E8A78(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_A16DC();
  sub_A16FC(&dword_0, v8, v9, "BCReadingStatisticsSync %@ Resolving: Adopted properties from record: %@ %@", v10, v11, v12, v13, v14);
}

void sub_1E8B4C(void *a1)
{
  v1 = [a1 assetID];
  sub_23204();
  sub_A16CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E8BD8(void *a1)
{
  v1 = [a1 assetID];
  sub_23204();
  sub_A16CC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E8C64()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E8CA0()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E8D54()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E8D90()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E8E50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Invalid CFI. {%@}", &v2, 0xCu);
}

void sub_1E90F8(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unable to create CKAsset local cache at %@ error=%@", &v4, 0x16u);
}

void sub_1E9184(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unexpected error setting up reading statistics controller: %@", &v2, 0xCu);
}

void sub_1E9688(void *a1, NSObject *a2)
{
  v4 = [a1 annotationAssetID];
  v5 = [a1 annotationType];
  v6 = [a1 annotationLocation];
  v7 = [a1 plUserData];
  v8 = 138413314;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 1024;
  v17 = [a1 isAnnotationDeleted];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Inconsistent AEAnnotation for assetID=%@ type %d: self.annotationLocation=%@ self.plUserData=%@ self.annotationDeleted=%d", &v8, 0x2Cu);
}

void sub_1E97FC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "playerErrorDidOccur %{public}@", &v2, 0xCu);
}

void sub_1E9874(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "IMAVPlayer::stillFrameAt error: %@", &v4, 0xCu);
}

void sub_1E990C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2[0] = 67109120;
  v2[1] = v1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "playbackWasPaused: _wasPlaying=%d", v2, 8u);
}

void sub_1E9990(uint64_t a1)
{
  v1 = *(a1 + 182);
  v2[0] = 67109120;
  v2[1] = v1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "AVAudioSession: Playback was interrupted with playback state %d", v2, 8u);
}

void sub_1E9A14(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Can't generate a CFI for string %@.  error=%@", &v3, 0x16u);
}

void sub_1E9B24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 141558530;
  v4 = 1752392040;
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Audiobook directory enumeration failed. url: %{mask.hash}@ error: %@", &v3, 0x20u);
}

void sub_1E9DC0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BCSyncUserDefaults: syncIsLiverpoolAndUbiquityEnabledWithReply - Encountered error, %{public}@", &v2, 0xCu);
}

void sub_1E9E4C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AECore/Annotations/AEMarginNotesController.m", 191, "[AEMarginNotesController p_updateLayerLayout]", "nearbyLayer", 0, a6, a7, a8, v10);
}

void sub_1EA264(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BICProductProfileDataStore: No product profile for: %@", &v3, 0xCu);
}

void sub_1EA44C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 entryLocation];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "BICImageSetPersistence: Replacing an entry marked for deletion: %@", a1, 0xCu);
}

void sub_1EA4C4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "BICImageSetPersistence: For new results, no images found", buf, 2u);
}

void sub_1EA504(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "-cachedCFI: error forming BCCFI from string: %{public}@ error=%{public}@", &v3, 0x16u);
}

void sub_1EA680(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 lastPathComponent];
  sub_23204();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "RemoteConfig: %@ is malformed: %@", v6, 0x16u);
}

void sub_1EADEC()
{
  sub_23204();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Failed to create storeContainerURL: %@ error: %@", v2, 0x16u);
}

void sub_1EAEAC(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Timeout waiting for completion on transaction: %{public}@", buf, 0xCu);
}

void sub_1EB164(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 assetID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "Error decoding annotations for assetID %@", a1, 0xCu);
}

void sub_1EB1DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to fetch cloudSyncVersions error: %@", &v2, 0xCu);
}

void sub_1EB254(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 count];
  v6 = *(a2 + 32);
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "BCStackRenderer: Not enough source covers (%lu) to build stack %@", &v7, 0x16u);
}

void sub_1EB2F4(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = 138412290;
  v5 = WeakRetained;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BCStackRenderer: Timeout fetching covers to build stack %@", &v4, 0xCu);
}

void sub_1EB4B4(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationSerializationManager.m", 255, "[AEAnnotationSerializationManager protected_takeAssetOfflineWithProvider:assetID:copyData:]", "!isAssetAlreadyOffline", @"expected the asset was not yet offline", a6, a7, a8, *v11);
  v10 = BKMobileCloudSyncAnnotationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 138412290;
    *&v11[4] = a1;
    _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "trying to take asset offline but it's already offline: assetID: %@", v11, 0xCu);
  }

  *a2 = v10;
}

void sub_1EB614(void *a1)
{
  [a1 assetID];
  objc_claimAutoreleasedReturnValue();
  sub_146A78();
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationSerializationManager.m", 339, "[AESingleBookMetadataProvider assetURLForAssetID:]", "[inAssetID isEqualToString:self.assetID]", @"expected asset ID '%@', asked for unmanaged asset ID '%@' ", v2, v3, v4, v1);
}

void sub_1EB688(void *a1)
{
  [a1 assetID];
  objc_claimAutoreleasedReturnValue();
  sub_146A78();
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationSerializationManager.m", 345, "[AESingleBookMetadataProvider bookVersionStringForAssetID:]", "[inAssetID isEqualToString:self.assetID]", @"expected asset ID '%@', asked for unmanaged asset ID '%@' ", v2, v3, v4, v1);
}

void sub_1EB6FC(void *a1)
{
  [a1 assetID];
  objc_claimAutoreleasedReturnValue();
  sub_146A78();
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationSerializationManager.m", 351, "[AESingleBookMetadataProvider pathToContextDirectoryForAssetID:]", "[inAssetID isEqualToString:self.assetID]", @"expected asset ID '%@', asked for unmanaged asset ID '%@' ", v2, v3, v4, v1);
}

void sub_1EB770(void *a1)
{
  [a1 assetID];
  objc_claimAutoreleasedReturnValue();
  sub_146A78();
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationSerializationManager.m", 357, "[AESingleBookMetadataProvider isManagedWithAssetID:]", "[inAssetID isEqualToString:self.assetID]", @"expected asset ID '%@', asked for unmanaged asset ID '%@' ", v2, v3, v4, v1);
}

void sub_1EB7E4(uint64_t a1, NSObject *a2)
{
  v2 = 141558274;
  v3 = 1752392040;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "generateBestRepresentationForRequest: %{mask.hash}@ took more than 0.5s.", &v2, 0x16u);
}

void sub_1EB870(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "generateBestRepresentationForRequest error: %@", &v2, 0xCu);
}

void sub_1EB8FC()
{
  sub_14BF14();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "[iCloudSync] Failed to write datafile and metadata via a coordinated write to %{mask.hash}@, ERROR: %@", v4, 0x20u);
}

void sub_1EB990()
{
  sub_14BF14();
  v3 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "[iCloudSync] writing file did not complete %{mask.hash}@", v2, 0x16u);
}

void sub_1EBAD4(void *a1, double a2)
{
  [a1 contentInset];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "attempting to scroll to invalid offset: totalPastTop=%f, contentInset.top=%f", &v4, 0x16u);
}

void sub_1EBF28()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1EC034()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1EC070()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1EC0AC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_4A3C(&dword_0, a2, a3, "Purge Tracking: Error fetching assets with launches > %lu. Error: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1EC3B8()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1EC4E0()
{
  sub_15F878(__stack_chk_guard);
  sub_28B98();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "Notifying observers of session ending asset %@, session %@", v2, 0x16u);
}

void sub_1EC560()
{
  sub_15F878(__stack_chk_guard);
  sub_28B98();
  sub_4A3C(&dword_0, v0, v1, "No reading session at session ended: asset %@, session %@");
}

void sub_1EC950()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1ECAC4()
{
  sub_15F878(__stack_chk_guard);
  sub_28B98();
  sub_4A3C(&dword_0, v0, v1, "Error saving the local tracked asset: %@, error: %@");
}

void sub_1ECB98()
{
  sub_15F878(__stack_chk_guard);
  sub_83E4C();
  sub_23210(&dword_0, v0, v1, "Error purging old reading times for candidate book with assetID: %@.", v2, v3, v4, v5, v6);
}

void sub_1ECC00()
{
  sub_15F878(__stack_chk_guard);
  sub_83E4C();
  sub_23210(&dword_0, v0, v1, "Error: we should have some candidate entries for assetID %@", v2, v3, v4, v5, v6);
}

void sub_1ECD38()
{
  sub_15F878(__stack_chk_guard);
  sub_83E4C();
  sub_23210(&dword_0, v0, v1, "Error saving new reading session: %@", v2, v3, v4, v5, v6);
}

void sub_1ECDA0()
{
  sub_28B8C();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1ED0A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "BCDesribedImage: Invalid image size creating a described image for identifier: %@  error: %@", &v3, 0x16u);
}

void sub_1ED128(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [objc_opt_class() annotationAssetIDFromDictionaryRepresentation:a2];
  v6 = [objc_opt_class() annotationUuidFromDictionaryRepresentation:a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "MZBookKeeper annotation merge assetID=%@ [%@] annotationLocation==nil && plUserData == nil && deleted == NO, ignoring", &v7, 0x16u);
}

void sub_1ED200(NSObject *a1, double a2, double a3, double a4, double a5)
{
  v6 = NSStringFromCGRect(*&a2);
  v7 = 138412290;
  v8 = v6;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "invalid from rect used to normalize insets, rect: %@", &v7, 0xCu);
}

void sub_1ED990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  v7 = 2112;
  v8 = a3;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Expecting value to be in the range [%@, %@], got %@", &v3, 0x20u);
}

void sub_1EDA24(float a1, float a2, float a3)
{
  v3 = 134218496;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = a3;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Expecting value to be in the range [%lf, %lf], got %lf", &v3, 0x20u);
}

void sub_1EDAEC()
{
  sub_23204();
  sub_80378();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}