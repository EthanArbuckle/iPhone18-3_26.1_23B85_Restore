uint64_t sub_10001AD24(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100021E24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001ADE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100021E24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001AE88()
{
  sub_10001AF0C();
  if (v0 <= 0x3F)
  {
    sub_100021E24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001AF0C()
{
  if (!qword_1000308C8)
  {
    type metadata accessor for ComposeRecipientEntityProvider();
    v0 = sub_100021754();
    if (!v1)
    {
      atomic_store(v0, &qword_1000308C8);
    }
  }
}

unint64_t sub_10001AF88()
{
  result = qword_100030990;
  if (!qword_100030990)
  {
    sub_10000512C(&qword_100030998, &unk_100026250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030990);
  }

  return result;
}

uint64_t sub_10001AFEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AutocompleteComposeRecipientQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x636972656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656D695465636166;
    }

    else
    {
      v4 = 0x7261646E656C6163;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x736567617373656DLL;
    }

    else
    {
      v4 = 0x636972656E6567;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x656D695465636166;
  if (a2 != 2)
  {
    v7 = 0x7261646E656C6163;
  }

  if (a2)
  {
    v2 = 0x736567617373656DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100021FE4();
  }

  return v10 & 1;
}

uint64_t sub_10001B178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F65646956;
    }

    else
    {
      v5 = 0xED00006F69647541;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F65646956;
  if (a2 != 2)
  {
    v7 = 0xED00006F69647541;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100021FE4();
  }

  return v10 & 1;
}

uint64_t sub_10001B2DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373654D69;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x656D695465636166;
    if (v3 == 2)
    {
      v5 = 0xED00006F69647541;
    }

    else
    {
      v5 = 0xED00006F65646956;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5456722;
    }

    else
    {
      v4 = 0x6567617373654D69;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xED00006F69647541;
  if (a2 != 2)
  {
    v7 = 0xED00006F65646956;
  }

  if (a2)
  {
    v2 = 5456722;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x656D695465636166;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100021FE4();
  }

  return v10 & 1;
}

uint64_t ClientAppEnum.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x636972656E6567;
  v2 = 0x656D695465636166;
  if (a1 != 2)
  {
    v2 = 0x7261646E656C6163;
  }

  if (a1)
  {
    v1 = 0x736567617373656DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10001B4C8()
{
  v1 = *v0;
  sub_100021FF4();
  sub_100021EA4();

  return sub_100022024();
}

uint64_t sub_10001B588()
{
  *v0;
  *v0;
  *v0;
  sub_100021EA4();
}

Swift::Int sub_10001B634()
{
  v1 = *v0;
  sub_100021FF4();
  sub_100021EA4();

  return sub_100022024();
}

uint64_t sub_10001B6F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s31AutocompleteAppIntentsExtension06ClientB4EnumO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001B720(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x636972656E6567;
  v4 = 0x656D695465636166;
  if (*v1 != 2)
  {
    v4 = 0x7261646E656C6163;
  }

  if (*v1)
  {
    v3 = 0x736567617373656DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_10001B7B0(uint64_t a1)
{
  v2 = sub_10000437C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001B800(uint64_t a1)
{
  v2 = sub_10001BE50();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ClientAppEnum.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE700000000000000;
  v3 = 0x636972656E6567;
  v4 = 0x656D695465636166;
  if (a1 != 2)
  {
    v4 = 0x7261646E656C6163;
  }

  if (a1)
  {
    v3 = 0x736567617373656DLL;
    v2 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v5._countAndFlagsBits = v3;
  }

  else
  {
    v5._countAndFlagsBits = v4;
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v5._object = v6;
  sub_100021EB4(v5);

  return 46;
}

uint64_t sub_10001B924()
{
  v1 = 0xE700000000000000;
  v2 = 0x636972656E6567;
  v3 = 0x656D695465636166;
  if (*v0 != 2)
  {
    v3 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = 0x736567617373656DLL;
    v1 = 0xE800000000000000;
  }

  if (*v0 <= 1u)
  {
    v4._countAndFlagsBits = v2;
  }

  else
  {
    v4._countAndFlagsBits = v3;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v4._object = v5;
  sub_100021EB4(v4);

  return 46;
}

uint64_t _s31AutocompleteAppIntentsExtension06ClientB4EnumO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D388;
  v6._object = a2;
  v4 = sub_100021FC4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t _s31AutocompleteAppIntentsExtension06ClientB4EnumO26caseDisplayRepresentationsSDyAC0bC00H14RepresentationVGvgZ_0()
{
  sub_100001358(&qword_100030A08, &qword_100026540);
  v0 = sub_100001358(&qword_100030A10, &qword_100026548);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100024800;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_100021A64();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_100021A64();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_100021A64();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_100021A64();
  v9 = sub_10001DE68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_10001BBE8()
{
  result = qword_1000309A0;
  if (!qword_1000309A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309A0);
  }

  return result;
}

unint64_t sub_10001BC40()
{
  result = qword_1000309A8;
  if (!qword_1000309A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309A8);
  }

  return result;
}

unint64_t sub_10001BC98()
{
  result = qword_1000309B0;
  if (!qword_1000309B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309B0);
  }

  return result;
}

unint64_t sub_10001BCF0()
{
  result = qword_1000309B8;
  if (!qword_1000309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309B8);
  }

  return result;
}

unint64_t sub_10001BD48()
{
  result = qword_1000309C0;
  if (!qword_1000309C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309C0);
  }

  return result;
}

unint64_t sub_10001BDA0()
{
  result = qword_1000309C8;
  if (!qword_1000309C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309C8);
  }

  return result;
}

unint64_t sub_10001BDF8()
{
  result = qword_1000309D0;
  if (!qword_1000309D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309D0);
  }

  return result;
}

unint64_t sub_10001BE50()
{
  result = qword_1000309D8;
  if (!qword_1000309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309D8);
  }

  return result;
}

unint64_t sub_10001BEF8()
{
  result = qword_1000309E0;
  if (!qword_1000309E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309E0);
  }

  return result;
}

unint64_t sub_10001BF50()
{
  result = qword_1000309E8;
  if (!qword_1000309E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309E8);
  }

  return result;
}

unint64_t sub_10001BFA8()
{
  result = qword_1000309F0;
  if (!qword_1000309F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309F0);
  }

  return result;
}

unint64_t sub_10001C000()
{
  result = qword_1000309F8;
  if (!qword_1000309F8)
  {
    sub_10000512C(&qword_100030A00, &qword_1000264B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000309F8);
  }

  return result;
}

uint64_t sub_10001C080(uint64_t a1)
{
  v2 = sub_10001C1D0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C128();
  sub_100021C24();
  return 0;
}

unint64_t sub_10001C128()
{
  result = qword_100030A18;
  if (!qword_100030A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A18);
  }

  return result;
}

unint64_t sub_10001C1D0()
{
  result = qword_100030A20;
  if (!qword_100030A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A20);
  }

  return result;
}

uint64_t sub_10001C238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t static ComposeRecipientHandleAvailabilityAppEnum.typeDisplayRepresentation.getter()
{
  v0 = sub_100001358(&qword_100030180, &qword_100024810);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_100021B44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100021BB4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100021E64();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100021B54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100021E54();
  sub_100021BA4();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_100021B64();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_100021AF4();
}

uint64_t sub_10001C544(uint64_t a1)
{
  v2 = sub_100001BDC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001C590(uint64_t a1)
{
  v2 = sub_10001E630();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ComposeRecipientHandleAvailabilityAppEnum.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x616C696176616E75;
    }

    else
    {
      v2._countAndFlagsBits = 0x6E776F6E6B6E75;
    }

    if (v1 == 1)
    {
      v3 = 0xEB00000000656C62;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE900000000000065;
    v2._countAndFlagsBits = 0x6C62616C69617661;
  }

  v2._object = v3;
  sub_100021EB4(v2);

  return 46;
}

uint64_t sub_10001C694()
{
  v1 = 0xEB00000000656C62;
  v2 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v1 = 0xE700000000000000;
  }

  if (*v0)
  {
    v3._countAndFlagsBits = v2;
  }

  else
  {
    v3._countAndFlagsBits = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  v3._object = v4;
  sub_100021EB4(v3);

  return 46;
}

unint64_t sub_10001C740(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100021EA4();

  v4 = sub_100022024();

  return sub_10001CC38(a1, v4);
}

unint64_t sub_10001C81C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100021EA4();

  v4 = sub_100022024();

  return sub_10001CDF0(a1, v4);
}

unint64_t sub_10001C918(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100021EA4();

  v4 = sub_100022024();

  return sub_10001CF94(a1, v4);
}

unint64_t sub_10001CA14(char a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100022004(a1 & 1);
  v4 = sub_100022024();

  return sub_10001D138(a1 & 1, v4);
}

unint64_t sub_10001CA80(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100021EA4();

  v4 = sub_100022024();

  return sub_10001D1A8(a1, v4);
}

unint64_t sub_10001CB68(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100021FF4();
  sub_100021EA4();

  v4 = sub_100022024();
  return sub_10001D344(a1, v4);
}

unint64_t sub_10001CC38(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001000223D0;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x736552796C6C7566;
          v8 = 0xED00006465766C6FLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEA00000000006465;
            if (v7 != 0x766C6F7365726E75)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x766C6F7365726E75;
        v8 = 0xEA00000000006465;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000011;
      }

      else
      {
        v10 = 0x736552796C6C7566;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001000223D0;
      }

      else
      {
        v11 = 0xED00006465766C6FLL;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100021FE4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001CDF0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4) == 2 ? 0xED00006F65646956 : 0xED00006F69647541;
      v7 = *(*(v2 + 48) + v4) ? 5456722 : 0x6567617373654D69;
      v8 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE800000000000000;
      v9 = *(*(v2 + 48) + v4) <= 1u ? v7 : 0x656D695465636166;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : v6;
      v11 = v5 == 2 ? 0xED00006F65646956 : 0xED00006F69647541;
      v12 = v5 ? 5456722 : 0x6567617373654D69;
      v13 = v5 ? 0xE300000000000000 : 0xE800000000000000;
      v14 = v5 <= 1 ? v12 : 0x656D695465636166;
      v15 = v5 <= 1 ? v13 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001CF94(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4) == 2 ? 0xED00006F69647541 : 0xED00006F65646956;
      v7 = *(*(v2 + 48) + v4) ? 5456722 : 0x6567617373654D69;
      v8 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE800000000000000;
      v9 = *(*(v2 + 48) + v4) <= 1u ? v7 : 0x656D695465636166;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : v6;
      v11 = v5 == 2 ? 0xED00006F69647541 : 0xED00006F65646956;
      v12 = v5 ? 5456722 : 0x6567617373654D69;
      v13 = v5 ? 0xE300000000000000 : 0xE800000000000000;
      v14 = v5 <= 1 ? v12 : 0x656D695465636166;
      v15 = v5 <= 1 ? v13 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001D138(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001D1A8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x656D695465636166 : 0x7261646E656C6163;
      v7 = *(*(v20 + 48) + v4) ? 0x736567617373656DLL : 0x636972656E6567;
      v8 = *(*(v20 + 48) + v4) ? 0xE800000000000000 : 0xE700000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE800000000000000;
      v11 = v5 == 2 ? 0x656D695465636166 : 0x7261646E656C6163;
      v12 = v5 ? 0x736567617373656DLL : 0x636972656E6567;
      v13 = v5 ? 0xE800000000000000 : 0xE700000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE800000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_100021FE4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001D344(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x616C696176616E75;
          v8 = 0xEB00000000656C62;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x6E776F6E6B6E75;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v7 != 0x6C62616C69617661)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6C62616C69617661;
        v8 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x616C696176616E75;
      }

      else
      {
        v10 = 0x6E776F6E6B6E75;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000656C62;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100021FE4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001D4EC(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030298, qword_1000241B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AD0, &qword_100026950);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_100030298, qword_1000241B8);
      v12 = *v6;
      result = sub_10001C740(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001D6D4(uint64_t a1)
{
  v2 = sub_100001358(&qword_1000303F0, &unk_100024B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AC8, &unk_100026940);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_1000303F0, &unk_100024B10);
      v12 = *v6;
      result = sub_10001C81C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001D8BC(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030598, &unk_100025060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AC0, &unk_100026930);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_100030598, &unk_100025060);
      v12 = *v6;
      result = sub_10001C918(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001DAA4(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030798, &qword_100025C48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AB8, &unk_100026920);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_100030798, &qword_100025C48);
      v12 = *v6;
      result = sub_10001CB68(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001DC8C(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030810, &qword_100025F28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AB0, &unk_100026910);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100016860(v10, v6, &qword_100030810, &qword_100025F28);
      v12 = *v6;
      result = sub_10001CA14(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_10001DE68(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030A10, &qword_100026548);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AA8, &unk_100026900);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_100030A10, &qword_100026548);
      v12 = *v6;
      result = sub_10001CA80(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10001E050(uint64_t a1)
{
  v2 = sub_100001358(&qword_100030A98, &qword_1000268E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001358(&qword_100030AA0, &unk_1000268F0);
    v8 = sub_100021FB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100016860(v10, v6, &qword_100030A98, &qword_1000268E8);
      v12 = *v6;
      result = sub_10001CB68(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100021A84();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10002D458;
  v6._object = a2;
  v4 = sub_100021FC4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s31AutocompleteAppIntentsExtension034ComposeRecipientHandleAvailabilityB4EnumO26caseDisplayRepresentationsSDyAC0bC00K14RepresentationVGvgZ_0()
{
  sub_100001358(&qword_100030A90, &qword_1000268E0);
  v0 = sub_100001358(&qword_100030A98, &qword_1000268E8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100023EC0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_100021A64();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_100021A64();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_100021A64();
  v8 = sub_10001E050(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v8;
}

unint64_t sub_10001E420()
{
  result = qword_100030A28;
  if (!qword_100030A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A28);
  }

  return result;
}

unint64_t sub_10001E478()
{
  result = qword_100030A30;
  if (!qword_100030A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A30);
  }

  return result;
}

unint64_t sub_10001E4D0()
{
  result = qword_100030A38;
  if (!qword_100030A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A38);
  }

  return result;
}

unint64_t sub_10001E528()
{
  result = qword_100030A40;
  if (!qword_100030A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A40);
  }

  return result;
}

unint64_t sub_10001E580()
{
  result = qword_100030A48;
  if (!qword_100030A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A48);
  }

  return result;
}

unint64_t sub_10001E5D8()
{
  result = qword_100030A50;
  if (!qword_100030A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A50);
  }

  return result;
}

unint64_t sub_10001E630()
{
  result = qword_100030A58;
  if (!qword_100030A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A58);
  }

  return result;
}

unint64_t sub_10001E6D8()
{
  result = qword_100030A60;
  if (!qword_100030A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A60);
  }

  return result;
}

unint64_t sub_10001E730()
{
  result = qword_100030A68;
  if (!qword_100030A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A68);
  }

  return result;
}

unint64_t sub_10001E788()
{
  result = qword_100030A70;
  if (!qword_100030A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A70);
  }

  return result;
}

unint64_t sub_10001E7E0()
{
  result = qword_100030A78;
  if (!qword_100030A78)
  {
    sub_10000512C(&qword_100030A80, &qword_1000267D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A78);
  }

  return result;
}

unint64_t sub_10001E848()
{
  result = qword_100030A88;
  if (!qword_100030A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A88);
  }

  return result;
}

uint64_t ComposeRecipientHandleAppEntity.value.setter()
{

  sub_100021934();
}

uint64_t (*ComposeRecipientHandleAppEntity.value.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_100006344;
}

uint64_t (*ComposeRecipientHandleAppEntity.label.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_100006344;
}

uint64_t (*ComposeRecipientHandleAppEntity.availability.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100021914();
  return sub_1000054CC;
}

uint64_t sub_10001EB2C(uint64_t a1)
{
  v2 = sub_100021658();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t static ComposeRecipientHandleAppEntity.typeDisplayRepresentation.getter()
{
  v0 = sub_100001358(&qword_100030180, &qword_100024810);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_100021B44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100021BB4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100021E64();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100021B54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100021E54();
  sub_100021BA4();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_100021B64();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_100021AF4();
}

uint64_t ComposeRecipientHandleAppEntity.displayRepresentation.getter()
{
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.description.getter();

  v2._countAndFlagsBits = 10272;
  v2._object = 0xE200000000000000;
  sub_100021EB4(v2);
  sub_100021924();
  sub_100021EB4(v1);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_100021EB4(v3);
  return sub_100021A64();
}

uint64_t sub_10001EF1C@<X0>(uint64_t *a1@<X8>)
{
  result = _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10001EF48(uint64_t a1)
{
  v2 = sub_100021658();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10001EF98(uint64_t a1)
{
  v2 = sub_100003758();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001EFE4()
{
  v1 = *v0;
  v2 = v0[1];
  return ComposeRecipientHandleAppEntity.displayRepresentation.getter();
}

uint64_t sub_10001EFEC(uint64_t a1)
{
  v2 = sub_100021500();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001F03C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_100021924();
      sub_100021924();
      if (v25 > 1u)
      {
        v13 = 0xED00006F65646956;
        if (v25 == 2)
        {
          v12 = 0xED00006F65646956;
        }

        else
        {
          v12 = 0xED00006F69647541;
        }

        v11 = 0x656D695465636166;
        v10 = 0x6567617373654D69;
      }

      else
      {
        v10 = 0x6567617373654D69;
        if (v25)
        {
          v11 = 5456722;
        }

        else
        {
          v11 = 0x6567617373654D69;
        }

        if (v25)
        {
          v12 = 0xE300000000000000;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        v13 = 0xED00006F65646956;
      }

      if (v24 != 2)
      {
        v13 = 0xED00006F69647541;
      }

      if (v24)
      {
        v10 = 5456722;
        v14 = 0xE300000000000000;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      if (v24 <= 1u)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0x656D695465636166;
      }

      if (v24 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v13;
      }

      if (v11 == v15 && v12 == v16)
      {
      }

      else
      {
        v17 = sub_100021FE4();

        if ((v17 & 1) == 0)
        {

          return 0;
        }
      }

      sub_100021924();
      sub_100021924();
      if (v23)
      {
        if (v23 == 1)
        {
          v18 = 0x616C696176616E75;
        }

        else
        {
          v18 = 0x6E776F6E6B6E75;
        }

        if (v23 == 1)
        {
          v19 = 0xEB00000000656C62;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        if (v22)
        {
LABEL_42:
          if (v22 == 1)
          {
            v20 = 0xEB00000000656C62;
            if (v18 != 0x616C696176616E75)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v20 = 0xE700000000000000;
            if (v18 != 0x6E776F6E6B6E75)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v18 = 0x6C62616C69617661;
        v19 = 0xE900000000000065;
        if (v22)
        {
          goto LABEL_42;
        }
      }

      v20 = 0xE900000000000065;
      if (v18 != 0x6C62616C69617661)
      {
        goto LABEL_5;
      }

LABEL_49:
      if (v19 != v20)
      {
LABEL_5:
        v5 = sub_100021FE4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10001F3D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  return _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityV2eeoiySbAC_ACtFZ_0();
}

uint64_t ComposeRecipientHandleAppEntity.hash(into:)()
{
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)();
}

Swift::Int ComposeRecipientHandleAppEntity.hashValue.getter()
{
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)();

  return sub_100022024();
}

Swift::Int sub_10001F4E4()
{
  v1 = *v0;
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)();

  return sub_100022024();
}

uint64_t sub_10001F564()
{
  v1 = *v0;
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)();
}

Swift::Int sub_10001F5D4()
{
  v1 = *v0;
  sub_100021FF4();
  sub_100021924();
  ComposeRecipientHandleValueAppEntity.hash(into:)();

  return sub_100022024();
}

uint64_t sub_10001F650()
{
  v0 = sub_100021E24();
  sub_10000636C(v0, qword_100030AD8);
  sub_1000043D0(v0, qword_100030AD8);
  return sub_100021E14();
}

uint64_t ComposeRecipientHandleAppEntity.description.getter()
{
  sub_100021924();
  v0 = ComposeRecipientHandleValueAppEntity.description.getter();
  v2 = v1;

  v3 = sub_10000F3C0(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_10000F3C0((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v0;
  *(v6 + 5) = v2;
  sub_100021924();
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  if (v8 >= v7 >> 1)
  {
    v3 = sub_10000F3C0((v7 > 1), v8 + 1, 1, v3);
  }

  *(v3 + 2) = v8 + 1;
  v9 = &v3[16 * v8];
  *(v9 + 4) = v18;
  *(v9 + 5) = v19;
  sub_100021924();
  v10 = sub_100021ED4();
  v12 = v11;

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_10000F3C0((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 4) = v10;
  *(v15 + 5) = v12;
  sub_100001358(&qword_100030AF0, &qword_100026958);
  sub_100005F1C(&qword_100030AF8, &qword_100030AF0, &qword_100026958);
  v16 = sub_100021E34();

  return v16;
}

uint64_t sub_10001F8DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return ComposeRecipientHandleAppEntity.description.getter();
}

uint64_t _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityV2eeoiySbAC_ACtFZ_0()
{
  sub_100021924();
  sub_100021924();
  v0 = _s31AutocompleteAppIntentsExtension027ComposeRecipientHandleValueB6EntityV2eeoiySbAC_ACtFZ_0();

  if (v0)
  {
    sub_100021924();
    sub_100021924();

    sub_100021924();
    sub_100021924();
    v1 = sub_10001F03C(v3, v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10001FA74(uint64_t a1)
{
  v2 = sub_100021CC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100001358(&qword_100030120, &unk_1000241D0);
  v7 = sub_1000219B4();

  sub_1000219B4();

  sub_1000219B4();
  v29 = xmmword_1000244B0;
  v30 = xmmword_1000244B0;

  sub_100021934();

  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == enum case for ComposeRecipient.Handle.Value.phoneNumber(_:))
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = v6[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v11 = sub_100021E24();
    sub_1000043D0(v11, qword_100030AD8);
    v12 = sub_100021F24();

    v13 = sub_100021E04();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v30 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10000F7B0(v9, v10, &v30);
      _os_log_impl(&_mh_execute_header, v13, v12, "Value is phone number: %s", v14, 0xCu);
      sub_100010E14(v15);
    }

LABEL_18:

    *&v30 = v9;
    *(&v30 + 1) = v10;
    sub_100021934();
    return v7;
  }

  if (v8 == enum case for ComposeRecipient.Handle.Value.emailAddress(_:))
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = v6[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v16 = sub_100021E24();
    sub_1000043D0(v16, qword_100030AD8);
    v17 = sub_100021F24();

    v13 = sub_100021E04();

    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v30 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000F7B0(v9, v10, &v30);
      _os_log_impl(&_mh_execute_header, v13, v17, "Value is email address: %s", v18, 0xCu);
      sub_100010E14(v19);
    }

    goto LABEL_18;
  }

  if (v8 == enum case for ComposeRecipient.Handle.Value.applicationDefined(_:))
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = v6[1];
    if (qword_100030118 != -1)
    {
      swift_once();
    }

    v20 = sub_100021E24();
    sub_1000043D0(v20, qword_100030AD8);
    v21 = sub_100021F24();

    v13 = sub_100021E04();

    if (os_log_type_enabled(v13, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000F7B0(v9, v10, &v30);
      _os_log_impl(&_mh_execute_header, v13, v21, "Value is application defined: %s", v22, 0xCu);
      sub_100010E14(v23);
    }

    goto LABEL_18;
  }

  if (qword_100030118 != -1)
  {
    swift_once();
  }

  v24 = sub_100021E24();
  sub_1000043D0(v24, qword_100030AD8);
  v25 = sub_100021F24();
  v26 = sub_100021E04();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v26, v25, "Value is unknown", v27, 2u);
  }

  v30 = v29;
  sub_100021934();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1000200B4(uint64_t a1)
{
  v2 = sub_100021CB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ComposeRecipient.Handle.Label.custom(_:))
  {
    (*(v3 + 96))(v6, v2);
    result = *v6;
    v9 = v6[1];
    return result;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.home(_:))
  {
    return 1701670760;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.work(_:))
  {
    return 1802661751;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.iPhone(_:))
  {
    return 0x656E6F685069;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.appleWatch(_:))
  {
    return 0x615720656C707041;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.iCloud(_:))
  {
    return 0x64756F6C4369;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.mobile(_:))
  {
    return 0x656C69626F6DLL;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.main(_:))
  {
    return 1852399981;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.homeFax(_:))
  {
    v10 = 1701670760;
    return v10 | 0x7861662000000000;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.workFax(_:))
  {
    v10 = 1802661751;
    return v10 | 0x7861662000000000;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.otherFax(_:))
  {
    return 0x616620726568746FLL;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.pager(_:))
  {
    return 0x7265676170;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.other(_:))
  {
    return 0x726568746FLL;
  }

  if (v7 == enum case for ComposeRecipient.Handle.Label.school(_:))
  {
    return 0x6C6F6F686373;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_100021F74(43);
  v12._object = 0x8000000100023000;
  v12._countAndFlagsBits = 0xD000000000000029;
  sub_100021EB4(v12);
  sub_100021F94();
  result = sub_100021FA4();
  __break(1u);
  return result;
}

char *sub_100020470(uint64_t a1)
{
  v89 = sub_100021DB4();
  v2 = *(v89 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v89);
  v82 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v87 = &v58[-v7];
  __chkstk_darwin(v6);
  v70 = &v58[-v8];
  v9 = sub_100021DC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v80 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v58[-v15];
  __chkstk_darwin(v14);
  v67 = &v58[-v17];
  v18 = sub_100001358(&qword_100030B70, &qword_100026CB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v58[-v23];
  v25 = *(a1 + 64);
  v78 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v62 = (v26 + 63) >> 6;
  v85 = (v2 + 16);
  v86 = (v10 + 16);
  v83 = (v2 + 32);
  v84 = (v10 + 32);
  v76 = (v10 + 88);
  v75 = enum case for HandleAvailability.Service.iMessage(_:);
  v64 = enum case for HandleAvailability.Service.RCS(_:);
  v61 = enum case for HandleAvailability.Service.faceTimeVideo(_:);
  v59 = enum case for HandleAvailability.Service.faceTimeAudio(_:);
  v69 = v10;
  v79 = (v10 + 8);
  v74 = (v2 + 88);
  v73 = enum case for HandleAvailability.Status.available(_:);
  v63 = enum case for HandleAvailability.Status.unavailable(_:);
  v60 = enum case for HandleAvailability.Status.unknown(_:);
  v71 = v2;
  v72 = a1;
  v81 = (v2 + 8);

  v30 = 0;
  v88 = _swiftEmptyArrayStorage;
  v77 = v9;
  v68 = v16;
  v66 = v22;
  v65 = v24;
  v31 = v78;
  if (v28)
  {
    while (1)
    {
      v32 = v30;
LABEL_13:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v72;
      v38 = v69;
      (*(v69 + 16))(v67, *(v72 + 48) + *(v69 + 72) * v36, v9);
      v39 = v71;
      v40 = v70;
      v41 = v89;
      (*(v71 + 16))(v70, *(v37 + 56) + *(v71 + 72) * v36, v89);
      v42 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      v43 = *(v42 + 48);
      v22 = v66;
      (*(v38 + 32))();
      (*(v39 + 32))(&v22[v43], v40, v41);
      (*(*(v42 - 8) + 56))(v22, 0, 1, v42);
      v16 = v68;
      v24 = v65;
LABEL_14:
      sub_1000216AC(v22, v24);
      v44 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      if ((*(*(v44 - 8) + 48))(v24, 1, v44) == 1)
      {

        return v88;
      }

      v45 = *(v44 + 48);
      v9 = v77;
      (*v84)(v16, v24, v77);
      (*v83)(v87, &v24[v45], v89);
      sub_100001358(&qword_100030150, &qword_100025070);
      sub_100001B4C();
      v46 = sub_100021964();
      sub_100001358(&qword_100030160, &qword_100023E90);
      sub_100001BDC();
      v47 = sub_100021964();
      v100 = 0;
      sub_100021934();
      v99 = 2;
      sub_100021934();
      v48 = v80;
      (*v86)(v80, v16, v9);
      v49 = (*v76)(v48, v9);
      if (v49 == v75)
      {
        break;
      }

      if (v49 == v64)
      {
        v91 = 1;

        goto LABEL_24;
      }

      if (v49 == v61)
      {
        v93 = 2;

        goto LABEL_24;
      }

      if (v49 == v59)
      {
        v92 = 3;

        goto LABEL_24;
      }

      v98 = 0;

      sub_100021934();
      (*v79)(v80, v9);
LABEL_25:
      v51 = v82;
      v52 = v89;
      (*v85)(v82, v87, v89);
      v53 = (*v74)(v51, v52);
      if (v53 == v73)
      {
        v94 = 0;
      }

      else if (v53 == v63)
      {
        v95 = 1;
      }

      else
      {
        if (v53 != v60)
        {
          v97 = 2;
          sub_100021934();
          (*v81)(v82, v89);
          goto LABEL_32;
        }

        v96 = 2;
      }

      sub_100021934();
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_10000F6A4(0, *(v88 + 2) + 1, 1, v88);
      }

      v55 = *(v88 + 2);
      v54 = *(v88 + 3);
      if (v55 >= v54 >> 1)
      {
        v88 = sub_10000F6A4((v54 > 1), v55 + 1, 1, v88);
      }

      (*v81)(v87, v89);
      (*v79)(v16, v9);
      v56 = v88;
      *(v88 + 2) = v55 + 1;
      v57 = &v56[16 * v55];
      *(v57 + 4) = v46;
      *(v57 + 5) = v47;

      v31 = v78;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    v90 = 0;

LABEL_24:
    sub_100021934();
    goto LABEL_25;
  }

LABEL_5:
  if (v62 <= v30 + 1)
  {
    v33 = v30 + 1;
  }

  else
  {
    v33 = v62;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v62)
    {
      v50 = sub_100001358(&qword_100030B78, &qword_100026CB8);
      (*(*(v50 - 8) + 56))(v22, 1, 1, v50);
      v28 = 0;
      v30 = v34;
      goto LABEL_14;
    }

    v28 = *(v31 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100020DC4(uint64_t a1)
{
  v2 = sub_100021CB4();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100021CC4();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001358(&qword_100030208, &unk_100026C90);
  sub_100004444();
  v24 = sub_100021984();
  sub_100001358(&qword_100030128, &unk_100025430);

  sub_1000219B4();
  sub_100001358(&qword_100030218, &unk_100026CA0);
  sub_100004554();

  sub_100021984();

  sub_100021CE4();
  v10 = sub_10001FA74(v9);
  v12 = v11;
  v14 = v13;
  (*(v6 + 8))(v9, v25);
  v28 = v10;
  v29 = v12;
  v30 = v14;

  v15 = v24;
  sub_100021934();

  sub_100021CD4();
  v16 = sub_1000200B4(v5);
  v18 = v17;
  (*(v26 + 8))(v5, v27);
  v28 = v16;
  v29 = v18;
  sub_100021934();
  v19 = sub_100021CA4();
  v20 = sub_100020470(v19);

  v28 = v20;
  sub_100021934();
  v21 = sub_100021CF4();
  (*(*(v21 - 8) + 8))(a1, v21);

  return v15;
}

uint64_t _s31AutocompleteAppIntentsExtension022ComposeRecipientHandleB6EntityVACycfC_0()
{
  sub_100001358(&qword_100030208, &unk_100026C90);
  sub_100004444();
  v0 = sub_100021984();
  sub_100001358(&qword_100030128, &unk_100025430);

  sub_1000219B4();
  sub_100001358(&qword_100030218, &unk_100026CA0);
  sub_100004554();

  sub_100021984();
  sub_100001358(&qword_100030120, &unk_1000241D0);

  sub_1000219B4();
  sub_1000219B4();
  sub_1000219B4();
  sub_100021934();

  sub_100021934();

  sub_100021924();
  sub_100021934();

  sub_100021934();
  sub_100021934();

  return v0;
}

unint64_t sub_1000212AC()
{
  result = qword_100030B00;
  if (!qword_100030B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B00);
  }

  return result;
}

unint64_t sub_100021304()
{
  result = qword_100030B08;
  if (!qword_100030B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B08);
  }

  return result;
}

unint64_t sub_10002135C()
{
  result = qword_100030B10;
  if (!qword_100030B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B10);
  }

  return result;
}

unint64_t sub_1000213F8()
{
  result = qword_100030B28;
  if (!qword_100030B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B28);
  }

  return result;
}

unint64_t sub_100021450()
{
  result = qword_100030B30;
  if (!qword_100030B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B30);
  }

  return result;
}

unint64_t sub_1000214A8()
{
  result = qword_100030B38;
  if (!qword_100030B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B38);
  }

  return result;
}

unint64_t sub_100021500()
{
  result = qword_100030B40;
  if (!qword_100030B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B40);
  }

  return result;
}

unint64_t sub_10002159C()
{
  result = qword_100030B58;
  if (!qword_100030B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B58);
  }

  return result;
}

unint64_t sub_1000215F4()
{
  result = qword_100030B60;
  if (!qword_100030B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B60);
  }

  return result;
}

unint64_t sub_100021658()
{
  result = qword_100030B68;
  if (!qword_100030B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030B68);
  }

  return result;
}

uint64_t sub_1000216AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100030B70, &qword_100026CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}