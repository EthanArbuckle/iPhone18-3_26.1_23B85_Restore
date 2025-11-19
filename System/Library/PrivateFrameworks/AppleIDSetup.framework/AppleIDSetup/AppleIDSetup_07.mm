unint64_t sub_24061AF24()
{
  result = qword_27E4B90C8;
  if (!qword_27E4B90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90C8);
  }

  return result;
}

unint64_t sub_24061AF78()
{
  result = qword_27E4B90D0;
  if (!qword_27E4B90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90D0);
  }

  return result;
}

unint64_t sub_24061AFCC()
{
  result = qword_27E4B90D8;
  if (!qword_27E4B90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90D8);
  }

  return result;
}

unint64_t sub_24061B024()
{
  result = qword_27E4B90E0;
  if (!qword_27E4B90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90E0);
  }

  return result;
}

void sub_24061B0A0()
{
  sub_2407595A4();
  if (v0 <= 0x3F)
  {
    sub_24061B16C();
    if (v1 <= 0x3F)
    {
      sub_24061B200();
      if (v2 <= 0x3F)
      {
        sub_24061B250();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24061B16C()
{
  if (!qword_27E4B90F8)
  {
    type metadata accessor for AIDAServiceType(255);
    sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType);
    v0 = sub_24075A574();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B90F8);
    }
  }
}

void sub_24061B200()
{
  if (!qword_27E4B9100)
  {
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9100);
    }
  }
}

void sub_24061B250()
{
  if (!qword_27E4B9108)
  {
    type metadata accessor for AKUserAgeRange(255);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9108);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11SetupReportV10LocaleInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10CredentialO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24061B308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24061B358(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 160) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      return result;
    }

    *(a1 + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B3DC(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 136) = *(result + 136) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 136) = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_24061B440(uint64_t a1, int a2)
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

uint64_t sub_24061B488(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24061B54C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24061B594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24061B644(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24061B6C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24061B708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B76C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24061B7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24061B85C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24061B8A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24061B918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24061B960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So9ACAccountC12AppleIDSetupE17ConversionFailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24061BA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24061BA84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_24061BAC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24061BBD4()
{
  result = qword_27E4B9110;
  if (!qword_27E4B9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9110);
  }

  return result;
}

unint64_t sub_24061BC2C()
{
  result = qword_27E4B9118;
  if (!qword_27E4B9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9118);
  }

  return result;
}

unint64_t sub_24061BC84()
{
  result = qword_27E4B9120;
  if (!qword_27E4B9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9120);
  }

  return result;
}

unint64_t sub_24061BCDC()
{
  result = qword_27E4B9128;
  if (!qword_27E4B9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9128);
  }

  return result;
}

unint64_t sub_24061BD34()
{
  result = qword_27E4B9130;
  if (!qword_27E4B9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9130);
  }

  return result;
}

unint64_t sub_24061BD8C()
{
  result = qword_27E4B9138;
  if (!qword_27E4B9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9138);
  }

  return result;
}

unint64_t sub_24061BDE4()
{
  result = qword_27E4B9140;
  if (!qword_27E4B9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9140);
  }

  return result;
}

unint64_t sub_24061BE3C()
{
  result = qword_27E4B9148;
  if (!qword_27E4B9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9148);
  }

  return result;
}

unint64_t sub_24061BE94()
{
  result = qword_27E4B9150;
  if (!qword_27E4B9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9150);
  }

  return result;
}

unint64_t sub_24061BEEC()
{
  result = qword_27E4B9158;
  if (!qword_27E4B9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9158);
  }

  return result;
}

unint64_t sub_24061BF44()
{
  result = qword_27E4B9160;
  if (!qword_27E4B9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9160);
  }

  return result;
}

unint64_t sub_24061BF9C()
{
  result = qword_27E4B9168;
  if (!qword_27E4B9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9168);
  }

  return result;
}

unint64_t sub_24061BFF4()
{
  result = qword_27E4B9170;
  if (!qword_27E4B9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9170);
  }

  return result;
}

unint64_t sub_24061C04C()
{
  result = qword_27E4B9178;
  if (!qword_27E4B9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9178);
  }

  return result;
}

unint64_t sub_24061C0A4()
{
  result = qword_27E4B9180;
  if (!qword_27E4B9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9180);
  }

  return result;
}

unint64_t sub_24061C0FC()
{
  result = qword_27E4B9188;
  if (!qword_27E4B9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9188);
  }

  return result;
}

unint64_t sub_24061C154()
{
  result = qword_27E4B9190;
  if (!qword_27E4B9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9190);
  }

  return result;
}

unint64_t sub_24061C1AC()
{
  result = qword_27E4B9198;
  if (!qword_27E4B9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9198);
  }

  return result;
}

unint64_t sub_24061C204()
{
  result = qword_27E4B91A0;
  if (!qword_27E4B91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91A0);
  }

  return result;
}

unint64_t sub_24061C25C()
{
  result = qword_27E4B91A8;
  if (!qword_27E4B91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91A8);
  }

  return result;
}

unint64_t sub_24061C2B4()
{
  result = qword_27E4B91B0;
  if (!qword_27E4B91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91B0);
  }

  return result;
}

unint64_t sub_24061C30C()
{
  result = qword_27E4B91B8;
  if (!qword_27E4B91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91B8);
  }

  return result;
}

unint64_t sub_24061C364()
{
  result = qword_27E4B91C0;
  if (!qword_27E4B91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91C0);
  }

  return result;
}

unint64_t sub_24061C3BC()
{
  result = qword_27E4B91C8;
  if (!qword_27E4B91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91C8);
  }

  return result;
}

unint64_t sub_24061C414()
{
  result = qword_27E4B91D0;
  if (!qword_27E4B91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91D0);
  }

  return result;
}

unint64_t sub_24061C46C()
{
  result = qword_27E4B91D8;
  if (!qword_27E4B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91D8);
  }

  return result;
}

unint64_t sub_24061C4C4()
{
  result = qword_27E4B91E0;
  if (!qword_27E4B91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91E0);
  }

  return result;
}

unint64_t sub_24061C51C()
{
  result = qword_27E4B91E8;
  if (!qword_27E4B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91E8);
  }

  return result;
}

unint64_t sub_24061C574()
{
  result = qword_27E4B91F0;
  if (!qword_27E4B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91F0);
  }

  return result;
}

unint64_t sub_24061C5CC()
{
  result = qword_27E4B91F8;
  if (!qword_27E4B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91F8);
  }

  return result;
}

unint64_t sub_24061C624()
{
  result = qword_27E4B9200;
  if (!qword_27E4B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9200);
  }

  return result;
}

unint64_t sub_24061C67C()
{
  result = qword_27E4B9208;
  if (!qword_27E4B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9208);
  }

  return result;
}

unint64_t sub_24061C6D4()
{
  result = qword_27E4B9210;
  if (!qword_27E4B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9210);
  }

  return result;
}

unint64_t sub_24061C72C()
{
  result = qword_27E4B9218;
  if (!qword_27E4B9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9218);
  }

  return result;
}

unint64_t sub_24061C784()
{
  result = qword_27E4B9220;
  if (!qword_27E4B9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9220);
  }

  return result;
}

unint64_t sub_24061C7DC()
{
  result = qword_27E4B9228;
  if (!qword_27E4B9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9228);
  }

  return result;
}

unint64_t sub_24061C834()
{
  result = qword_27E4B9230;
  if (!qword_27E4B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9230);
  }

  return result;
}

unint64_t sub_24061C88C()
{
  result = qword_27E4B9238;
  if (!qword_27E4B9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9238);
  }

  return result;
}

unint64_t sub_24061C8E4()
{
  result = qword_27E4B9240;
  if (!qword_27E4B9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9240);
  }

  return result;
}

unint64_t sub_24061C93C()
{
  result = qword_27E4B9248;
  if (!qword_27E4B9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9248);
  }

  return result;
}

unint64_t sub_24061C994()
{
  result = qword_27E4B9250;
  if (!qword_27E4B9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9250);
  }

  return result;
}

unint64_t sub_24061C9EC()
{
  result = qword_27E4B9258;
  if (!qword_27E4B9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9258);
  }

  return result;
}

unint64_t sub_24061CA44()
{
  result = qword_27E4B9260;
  if (!qword_27E4B9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9260);
  }

  return result;
}

unint64_t sub_24061CA9C()
{
  result = qword_27E4B9268;
  if (!qword_27E4B9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9268);
  }

  return result;
}

uint64_t sub_24061CAF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24061CD34();
  result = MEMORY[0x245CC6270](v2, &type metadata for Symptom, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v14[2] = v5[2];
      v14[3] = v6;
      v15[0] = v5[4];
      *(v15 + 9) = *(v5 + 73);
      v7 = *v5;
      v8 = v5[1];
      v5 += 6;
      v14[0] = v7;
      v14[1] = v8;
      sub_2405F1048(v14, v11);
      sub_2406664BC(v9, v14);
      v11[2] = v9[2];
      v11[3] = v9[3];
      v12[0] = v10[0];
      *(v12 + 9) = *(v10 + 9);
      v11[0] = v9[0];
      v11[1] = v9[1];
      sub_2405F10A4(v11);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_24061CBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24061CCEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24061CD34()
{
  result = qword_27E4B9278;
  if (!qword_27E4B9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9278);
  }

  return result;
}

uint64_t sub_24061CD88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t static AISBiome.shared.getter()
{
  type metadata accessor for AISBiome();

  return swift_initStaticObject();
}

uint64_t AISBiomeProtocol.biomeEvent(from:familyCircleProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_24061CE48, 0, 0);
}

uint64_t sub_24061CE48()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = v0[6];
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v6 = *(v5 + 8);
    v17 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_24061D094;

    return v17(v4, v5);
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_280FADA00);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_240579000, v11, v12, "AISBiomeEventProvider setup aborted not fetching family", v13, 2u);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }

    v14 = v0[5];
    v15 = sub_24061D4D0(0, 1);
    v16 = v0[1];

    return v16(v15);
  }
}

uint64_t sub_24061D094(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_24061D32C;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_24061D1BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24061D1BC()
{
  v1 = v0[9];
  v2 = [v1 me];

  if (v2)
  {
    v3 = [v2 age];
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_280FADA00);
    v5 = sub_240759AC4();
    v6 = sub_24075A5E4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_240579000, v5, v6, "AISBiomeEventProvider childMember == nil. This should not happen", v7, 2u);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }

    v3 = 0;
  }

  v8 = v0[5];
  v9 = sub_24061D4D0(v3, v2 == 0);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24061D32C()
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_240579000, v4, v5, "AISBiomeEventProvider error fetching family %@", v8, 0xCu);
    sub_24061DD28(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[5];
  v13 = sub_24061D4D0(0, 1);
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_24061D4D0(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  swift_beginAccess();
  v11 = 0;
  v12 = *(v3 + 16);
  if (v12 != 2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v55 = v11;
  v13 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  sub_24061DDE0(v3 + v13, v10);
  v14 = sub_240759744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = 0;
  if (v16(v10, 1, v14) != 1)
  {
    v17 = sub_2407596F4();
    (*(v15 + 8))(v10, v14);
  }

  v18 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate;
  swift_beginAccess();
  sub_24061DDE0(v3 + v18, v8);
  v19 = 0;
  if (v16(v8, 1, v14) != 1)
  {
    v19 = sub_2407596F4();
    (*(v15 + 8))(v8, v14);
  }

  v53 = v19;
  v20 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v21 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen;
  swift_beginAccess();
  v22 = *(v3 + v21);
  v23 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage;
  swift_beginAccess();
  v24 = 0;
  v25 = *(v3 + v23);
  if (v25 != 2)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v26 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy;
  swift_beginAccess();
  v27 = 0;
  v28 = *(v3 + v26);
  if (v28 != 2)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v29 = v17;
  v30 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety;
  swift_beginAccess();
  v31 = 0;
  v32 = *(v3 + v30);
  if (v32 != 2)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v32 & 1 setRequiresSecureCoding:? + 4];
  }

  v33 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance;
  swift_beginAccess();
  v34 = 0;
  v35 = *(v3 + v33);
  if (v35 != 2)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v35 & 1 setRequiresSecureCoding:? + 4];
  }

  if (v54)
  {
    v36 = 0;
  }

  else
  {
    v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v36 = [v37 initWithInteger_];
  }

  v38 = v3 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  swift_beginAccess();
  v39 = 0;
  if ((*(v38 + 8) & 1) == 0)
  {
    v39 = *v38;
    if (*v38 != 1)
    {
      if (v39)
      {
        v56 = *v38;
        result = sub_24075AD64();
        __break(1u);
        return result;
      }

      v39 = 2;
    }
  }

  if (v22 == 14)
  {
    v40 = 0;
  }

  else
  {
    v40 = v22 + 1;
  }

  v41 = objc_opt_self();
  v49 = v39;
  v42 = v55;
  v43 = v29;
  v44 = v29;
  v45 = v53;
  v46 = v52;
  v47 = [v41 biomeEventWithIsNewChildAccount:v55 startDate:v44 endDate:v53 completedSetup:v52 lastViewedScreen:v40 appUsage:v24 askToBuy:v27 commSafety:v31 screenDistance:v34 age:v36 flowType:v49];

  return v47;
}

uint64_t sub_24061D9D4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24061DA34(void *a1)
{
  v2 = [objc_opt_self() ais_appleIDChildSetupSource];
  if (v2)
  {
    v3 = v2;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      [v3 sendEvent_];
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v7 = sub_240759AE4();
      __swift_project_value_buffer(v7, qword_280FADA00);
      v8 = sub_240759AC4();
      v9 = sub_24075A5D4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_240579000, v8, v9, "AISBiomeController wrote biome event for child setup", v10, 2u);
        MEMORY[0x245CC76B0](v10, -1, -1);
      }
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v14 = sub_240759AE4();
      __swift_project_value_buffer(v14, qword_280FADA00);
      v15 = sub_240759AC4();
      v16 = sub_24075A5D4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_240579000, v15, v16, "AISBiomeController biomeEvent is not the correct type", v17, 2u);
        MEMORY[0x245CC76B0](v17, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_280FADA00);
    oslog = sub_240759AC4();
    v12 = sub_24075A5D4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_240579000, oslog, v12, "AISBiomeController failed to get biome source", v13, 2u);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }
  }
}

uint64_t sub_24061DD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24061DDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SignInCommand.Request.srpResults.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SignInCommand.Request(0) + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_240618F1C(v11, &v10);
}

__n128 SignInCommand.Request.srpResults.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SignInCommand.Request(0) + 20));
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  sub_240618F54(v11);
  v7 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v7;
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  return result;
}

uint64_t SignInCommand.Request.isFinal.setter(char a1)
{
  result = type metadata accessor for SignInCommand.Request(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SignInCommand.Request.isTerminal.setter(char a1)
{
  result = type metadata accessor for SignInCommand.Request(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

__n128 SignInCommand.Request.init(account:srpResults:isFinal:isTerminal:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24061E30C(a1, a5, type metadata accessor for IdMSAccount);
  v9 = type metadata accessor for SignInCommand.Request(0);
  v10 = (a5 + v9[5]);
  v11 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v11;
  v12 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v12;
  result = *a2;
  v14 = *(a2 + 16);
  *v10 = *a2;
  v10[1] = v14;
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t SignInCommand.Request.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = type metadata accessor for V1Command;
  }

  else
  {
    type metadata accessor for V1Command.Request(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a2, type metadata accessor for SignInCommand.Request);
      v5 = 0;
      goto LABEL_7;
    }

    v4 = type metadata accessor for V1Command.Request;
  }

  sub_24061E2AC(a1, v4);
  v5 = 1;
LABEL_7:
  v6 = type metadata accessor for SignInCommand.Request(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_24061E2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24061E30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static SignInCommand.Request.terminal.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IdMSAccount();
  v3 = a1 + v2[5];
  sub_240759594();
  sub_2405AF9F8(v15);
  v4 = (a1 + v2[8]);
  *v4 = xmmword_24075D8C0;
  v5 = a1 + v2[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v6 = (a1 + v2[6]);
  v7 = v15[7];
  v6[6] = v15[6];
  v6[7] = v7;
  v8 = v15[9];
  v6[8] = v15[8];
  v6[9] = v8;
  v9 = v15[3];
  v6[2] = v15[2];
  v6[3] = v9;
  v10 = v15[5];
  v6[4] = v15[4];
  v6[5] = v10;
  v11 = v15[1];
  *v6 = v15[0];
  v6[1] = v11;
  *(a1 + v2[7]) = MEMORY[0x277D84FA0];
  sub_2405AFA1C(*v4, v4[1]);
  *v4 = xmmword_24075D8C0;
  *v5 = 0;
  *(v5 + 8) = 0;
  sub_24058C9E4(0, 0xF000000000000000);
  v12 = type metadata accessor for SignInCommand.Request(0);
  v13 = a1 + v12[5];
  *v13 = 0;
  *(v13 + 8) = 0xE000000000000000;
  result = 0.0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0xF000000000000000;
  *(a1 + v12[6]) = 0;
  *(a1 + v12[7]) = 1;
  return result;
}

uint64_t sub_24061E4DC()
{
  v1 = 0x746E756F636361;
  v2 = 0x6C616E69467369;
  if (*v0 != 2)
  {
    v2 = 0x6E696D7265547369;
  }

  if (*v0)
  {
    v1 = 0x6C75736552707273;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24061E55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240621CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24061E584(uint64_t a1)
{
  v2 = sub_24062100C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061E5C0(uint64_t a1)
{
  v2 = sub_24062100C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9310, &qword_24076B5D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24062100C();
  sub_24075AF74();
  v38 = 0;
  type metadata accessor for IdMSAccount();
  sub_240621060(&qword_27E4B6438, type metadata accessor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v11 = type metadata accessor for SignInCommand.Request(0);
    v12 = (v3 + v11[5]);
    v13 = v12[2];
    v14 = v12[4];
    v35 = v12[3];
    v36 = v14;
    v15 = v12[4];
    v37 = v12[5];
    v16 = *v12;
    v17 = v12[2];
    v33 = v12[1];
    v34 = v17;
    v18 = *v12;
    v29 = v35;
    v30 = v15;
    v31 = v12[5];
    v32 = v18;
    v26 = v16;
    v27 = v33;
    v28 = v13;
    v25 = 1;
    sub_240618F1C(&v32, v24);
    sub_2406022B8();
    sub_24075ABE4();
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_240618F54(v24);
    v19 = *(v3 + v11[6]);
    v23 = 2;
    sub_24075ABC4();
    v20 = *(v3 + v11[7]);
    v23 = 3;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SignInCommand.Request.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  v2 = type metadata accessor for SignInCommand.Request(0);
  v3 = (v1 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[10];
  v7 = v3[11];
  sub_24075A114();
  sub_24075AE94();
  if (v7 >> 60 != 15)
  {
    sub_2407596D4();
  }

  v8 = *(v1 + v2[6]);
  sub_24075AE94();
  v9 = *(v1 + v2[7]);
  return sub_24075AE94();
}

uint64_t SignInCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v10);
  v1 = type metadata accessor for SignInCommand.Request(0);
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[10];
  v6 = v2[11];
  sub_24075A114();
  sub_24075AE94();
  if (v6 >> 60 != 15)
  {
    sub_2407596D4();
  }

  v7 = *(v0 + v1[6]);
  sub_24075AE94();
  v8 = *(v0 + v1[7]);
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t SignInCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9320, &qword_24076B5E0);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SignInCommand.Request(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24062100C();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v18 = v28;
  v19 = v15;
  LOBYTE(v31) = 0;
  sub_240621060(&qword_27E4B6480, type metadata accessor for IdMSAccount);
  v20 = v29;
  sub_24075AAF4();
  sub_24061E30C(v7, v19, type metadata accessor for IdMSAccount);
  v38 = 1;
  sub_240602498();
  sub_24075AAF4();
  v21 = (v19 + v12[5]);
  v22 = v34;
  v21[2] = v33;
  v21[3] = v22;
  v23 = v36;
  v21[4] = v35;
  v21[5] = v23;
  v24 = v32;
  *v21 = v31;
  v21[1] = v24;
  v37 = 2;
  *(v19 + v12[6]) = sub_24075AAD4() & 1;
  v37 = 3;
  v25 = sub_24075AAD4();
  (*(v18 + 8))(v11, v20);
  *(v19 + v12[7]) = v25 & 1;
  sub_2406210A8(v19, v27, type metadata accessor for SignInCommand.Request);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24061E2AC(v19, type metadata accessor for SignInCommand.Request);
}

uint64_t sub_24061EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = type metadata accessor for V1Command;
  }

  else
  {
    type metadata accessor for V1Command.Request(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a3, type metadata accessor for SignInCommand.Request);
      v7 = 0;
      goto LABEL_7;
    }

    v6 = type metadata accessor for V1Command.Request;
  }

  sub_24061E2AC(a1, v6);
  v7 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v7, 1, a2);
}

uint64_t sub_24061EFB8(uint64_t a1, int *a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v12);
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[10];
  v8 = v4[11];
  sub_24075A114();
  sub_24075AE94();
  if (v8 >> 60 != 15)
  {
    sub_2407596D4();
  }

  v9 = *(v2 + a2[6]);
  sub_24075AE94();
  v10 = *(v2 + a2[7]);
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t SignInCommand.Response.resultsByService.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignInCommand.Response(0) + 20));
}

uint64_t SignInCommand.Response.resultsByService.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInCommand.Response(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SignInCommand.Response.init(account:resultsByService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24061E30C(a1, a3, type metadata accessor for IdMSAccount);
  result = type metadata accessor for SignInCommand.Response(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t SignInCommand.Response.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a2, type metadata accessor for SignInCommand.Response);
      v4 = 0;
      goto LABEL_7;
    }

    v5 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v5 = type metadata accessor for V1Command;
  }

  sub_24061E2AC(a1, v5);
  v4 = 1;
LABEL_7:
  v6 = type metadata accessor for SignInCommand.Response(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v4, 1, v6);
}

uint64_t sub_24061F2D8@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_24061E30C(v3, a3, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static SignInCommand.Response.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SignInCommand.Response(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_24061F3B8(v5, v6);
}

uint64_t sub_24061F3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v49 - v14);
  v55 = v15;
  v53 = v8;
  v16 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v50 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v60 + 16;
  v57 = (v60 + 32);
  v52 = (v60 + 8);
  while (1)
  {
    v22 = v55;
    if (!v20)
    {
      break;
    }

    v58 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = *(*(v51 + 48) + 8 * v23);
    v30 = v59;
    v29 = v60;
    (*(v60 + 16))(v59, *(v51 + 56) + *(v60 + 72) * v23, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
    v32 = *(v31 + 48);
    *v22 = v28;
    (*(v29 + 32))(&v22[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
    v33 = v28;
LABEL_17:
    v34 = v54;
    sub_240621E60(v22, v54);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = a2;
    v39 = *v34;
    v40 = v53;
    (*v57)(v53, v34 + *(v35 + 48), v4);
    v41 = sub_2405BB2A4(v39);
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      (*v52)(v40, v4);
      return 0;
    }

    v45 = v59;
    v44 = v60;
    (*(v60 + 16))(v59, *(v38 + 56) + *(v60 + 72) * v41, v4);
    sub_240621ED0(&qword_27E4B9460, sub_2406021BC);
    v46 = sub_24075A054();
    v47 = *(v44 + 8);
    v47(v45, v4);
    result = (v47)(v40, v4);
    a2 = v38;
    v20 = v58;
    if ((v46 & 1) == 0)
    {
      return v37;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v58 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v50 + 8 * v26);
    ++v16;
    if (v27)
    {
      v58 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24061F8BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 80 * v12);
    v16 = v14[3];
    v15 = v14[4];
    v17 = v14[2];
    v33 = v14[1];
    v32 = *v14;
    v34 = v17;
    v35 = v16;
    v36 = v15;
    v29 = v16;
    v30 = v33;
    v27 = v17;
    v28 = v32;
    v19 = *(&v15 + 1);
    v18 = v15;
    v20 = v13;
    sub_2405AF99C(&v32, v31);
    if (!v20)
    {
      return 1;
    }

    v32 = v28;
    v33 = v30;
    v34 = v27;
    v35 = v29;
    v36 = __PAIR128__(v19, v18);
    v21 = sub_2405BB2A4(v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_240618468(&v32);
      return 0;
    }

    v24 = (*(a2 + 56) + 80 * v21);
    if (*v24 == v32 && v24[1] == *(&v32 + 1))
    {
      result = sub_240618468(&v32);
    }

    else
    {
      v26 = sub_24075ACF4();
      result = sub_240618468(&v32);
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24061FA88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_2405BB2A4(v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = sub_24075ACF4();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24061FC1C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_24061FC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787430 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24061FD40(uint64_t a1)
{
  v2 = sub_240621130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061FD7C(uint64_t a1)
{
  v2 = sub_240621130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Response.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9328, &qword_24076B5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240621130();
  sub_24075AF74();
  v14 = 0;
  type metadata accessor for IdMSAccount();
  sub_240621060(&qword_27E4B6438, type metadata accessor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SignInCommand.Response(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621184();
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SignInCommand.Response.hash(into:)(__int128 *a1)
{
  IdMSAccount.hash(into:)(a1);
  v3 = *(v1 + *(type metadata accessor for SignInCommand.Response(0) + 20));

  return sub_2406206AC(a1, v3);
}

uint64_t SignInCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v3);
  v1 = type metadata accessor for SignInCommand.Response(0);
  sub_2406206AC(v3, *(v0 + *(v1 + 20)));
  return sub_24075AED4();
}

uint64_t SignInCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9358, &qword_24076B600);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SignInCommand.Response(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240621130();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_240621060(&qword_27E4B6480, type metadata accessor for IdMSAccount);
  v18 = v23;
  sub_24075AAF4();
  sub_24061E30C(v24, v17, type metadata accessor for IdMSAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9338, &qword_24076B5F0);
  v26 = 1;
  sub_240621278();
  sub_24075AAF4();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_2406210A8(v17, v21, type metadata accessor for SignInCommand.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24061E2AC(v17, type metadata accessor for SignInCommand.Response);
}

uint64_t sub_2406203A4@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_24061E30C(v3, a3, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240620420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a3, type metadata accessor for SignInCommand.Response);
      v6 = 0;
      goto LABEL_7;
    }

    v7 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v7 = type metadata accessor for V1Command;
  }

  sub_24061E2AC(a1, v7);
  v6 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v6, 1, a2);
}

uint64_t sub_240620554(void *a1, void *a2, uint64_t a3)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_24061F3B8(v7, v8);
}

uint64_t sub_2406205BC(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v4);
  sub_2406206AC(v4, *(v1 + *(a1 + 20)));
  return sub_24075AED4();
}

uint64_t sub_240620610(__int128 *a1, uint64_t a2)
{
  IdMSAccount.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 20));

  return sub_2406206AC(a1, v5);
}

uint64_t sub_24062065C(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v5);
  sub_2406206AC(v5, *(v2 + *(a2 + 20)));
  return sub_24075AED4();
}

uint64_t sub_2406206AC(__int128 *a1, uint64_t a2)
{
  v47 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v41 - v11);
  v13 = *(a2 + 64);
  v41[0] = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v41[1] = v3 + 16;
  v49 = (v3 + 32);
  v44 = v3;
  v45 = a2;
  v46 = (v3 + 8);
  v18 = v12;

  v20 = 0;
  v42 = v18;
  v43 = v10;
  v51 = 0;
  if (v16)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v44;
      v27 = *(*(v45 + 48) + 8 * v25);
      v28 = v48;
      v29 = v50;
      (*(v44 + 16))(v48, *(v45 + 56) + *(v44 + 72) * v25, v50);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      v31 = *(v30 + 48);
      v10 = v43;
      *v43 = v27;
      (*(v26 + 32))(&v10[v31], v28, v29);
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      v32 = v27;
      v23 = v21;
      v18 = v42;
LABEL_13:
      sub_240621E60(v10, v18);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      if ((*(*(v33 - 8) + 48))(v18, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v33 + 48);
      v35 = *v18;
      v36 = v48;
      v37 = v50;
      (*v49)(v48, v18 + v34, v50);
      v38 = v47[3];
      v54 = v47[2];
      v55 = v38;
      v56 = *(v47 + 8);
      v39 = v47[1];
      v52 = *v47;
      v53 = v39;
      sub_24075A0B4();
      sub_24075A114();

      sub_240621ED0(&qword_27E4B9458, sub_2406023B4);
      sub_24075A004();
      (*v46)(v36, v37);
      result = sub_24075AED4();
      v20 = v23;
      v51 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x245CC6BA0](v51);
  }

  else
  {
LABEL_5:
    if (v17 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
        (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v41[0] + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240620B44(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 8 * v13);
      v15 = (*(a2 + 56) + 80 * v13);
      v17 = v15[3];
      v16 = v15[4];
      v18 = v15[2];
      v30 = v15[1];
      v29 = *v15;
      v31 = v18;
      v32 = v17;
      v33 = v16;
      v25 = v17;
      v26 = v30;
      v23 = v18;
      v24 = v29;
      v19 = v16;
      v20 = v14;
      sub_2405AF99C(&v29, v27);
      if (!v20)
      {
        break;
      }

      v7 &= v7 - 1;
      v29 = v24;
      v30 = v26;
      v31 = v23;
      v32 = v25;
      v33 = v19;
      v21 = *(a1 + 48);
      v27[2] = *(a1 + 32);
      v27[3] = v21;
      v28 = *(a1 + 64);
      v22 = *(a1 + 16);
      v27[0] = *a1;
      v27[1] = v22;
      sub_24075A0B4();
      sub_24075A114();

      sub_24075A114();
      sub_240618468(&v29);

      result = sub_24075AED4();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245CC6BA0](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240620D20(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 = result ^ v19)
  {
    v19 = v9;
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = *(*(a2 + 48) + 8 * v12);
    v14 = (*(a2 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v6 &= v6 - 1;
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];
    sub_24075A0B4();
    v17 = v13;

    sub_24075A114();

    sub_24075A114();

    result = sub_24075AED4();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x245CC6BA0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v19 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12AppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = type metadata accessor for SignInCommand.Request(0);
  v5 = (a1 + v4[5]);
  v6 = v5[3];
  v7 = v5[1];
  v36 = v5[2];
  v37 = v6;
  v8 = v5[3];
  v9 = v5[5];
  v38 = v5[4];
  v39 = v9;
  v10 = v5[1];
  v35[0] = *v5;
  v35[1] = v10;
  v31 = v36;
  v32 = v8;
  v11 = v5[5];
  v33 = v38;
  v34 = v11;
  v29 = v35[0];
  v30 = v7;
  v12 = (a2 + v4[5]);
  v13 = v12[3];
  v14 = v12[1];
  v41 = v12[2];
  v42 = v13;
  v15 = v12[3];
  v16 = v12[5];
  v43 = v12[4];
  v44 = v16;
  v17 = v12[1];
  v40[0] = *v12;
  v40[1] = v17;
  v25 = v41;
  v26 = v15;
  v18 = v12[5];
  v27 = v43;
  v28 = v18;
  v23 = v40[0];
  v24 = v14;
  sub_240618F1C(v35, v22);
  sub_240618F1C(v40, v22);
  v19 = _s12AppleIDSetup11IdMSAccountV10SRPResultsV2eeoiySbAE_AEtFZ_0(&v29, &v23);
  v45[2] = v25;
  v45[3] = v26;
  v45[4] = v27;
  v45[5] = v28;
  v45[0] = v23;
  v45[1] = v24;
  sub_240618F54(v45);
  v46[2] = v31;
  v46[3] = v32;
  v46[4] = v33;
  v46[5] = v34;
  v46[0] = v29;
  v46[1] = v30;
  sub_240618F54(v46);
  if (!v19)
  {
    goto LABEL_4;
  }

  if (*(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v20 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
LABEL_4:
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_24062100C()
{
  result = qword_27E4B9318;
  if (!qword_27E4B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9318);
  }

  return result;
}

uint64_t sub_240621060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2406210A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_240621130()
{
  result = qword_27E4B9330;
  if (!qword_27E4B9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9330);
  }

  return result;
}

unint64_t sub_240621184()
{
  result = qword_27E4B9340;
  if (!qword_27E4B9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621060(&qword_27E4B6470, type metadata accessor for AIDAServiceType);
    sub_240621ED0(&qword_27E4B9348, sub_24060230C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9340);
  }

  return result;
}

unint64_t sub_240621278()
{
  result = qword_27E4B9360;
  if (!qword_27E4B9360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621060(&qword_27E4B64A0, type metadata accessor for AIDAServiceType);
    sub_240621ED0(&qword_27E4B9368, sub_2406024EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9360);
  }

  return result;
}

unint64_t sub_24062136C()
{
  result = qword_27E4B9370;
  if (!qword_27E4B9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9370);
  }

  return result;
}

uint64_t sub_2406213C0(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B9378, type metadata accessor for SignInCommand.Request);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240621418()
{
  result = qword_27E4B9380;
  if (!qword_27E4B9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9380);
  }

  return result;
}

uint64_t sub_24062146C(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B9388, type metadata accessor for SignInCommand.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406214C4(void *a1)
{
  a1[1] = sub_240621060(&qword_27E4B9390, type metadata accessor for SignInCommand.Request);
  a1[2] = sub_240621060(&qword_27E4B9398, type metadata accessor for SignInCommand.Request);
  result = sub_240621060(&qword_27E4B93A0, type metadata accessor for SignInCommand.Request);
  a1[3] = result;
  return result;
}

uint64_t sub_2406215B8(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B93B0, type metadata accessor for SignInCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240621610(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B93B8, type metadata accessor for SignInCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240621668(void *a1)
{
  a1[1] = sub_240621060(&qword_27E4B93C0, type metadata accessor for SignInCommand.Response);
  a1[2] = sub_240621060(&qword_27E4B93C8, type metadata accessor for SignInCommand.Response);
  result = sub_240621060(&qword_27E4B93D0, type metadata accessor for SignInCommand.Response);
  a1[3] = result;
  return result;
}

unint64_t sub_2406217EC(uint64_t a1)
{
  result = sub_240621418();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406218DC()
{
  result = type metadata accessor for IdMSAccount();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_240621984()
{
  type metadata accessor for IdMSAccount();
  if (v0 <= 0x3F)
  {
    sub_240621A08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240621A08()
{
  if (!qword_27E4B9410)
  {
    type metadata accessor for AIDAServiceType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9350, &qword_24076B5F8);
    sub_240621060(&qword_280FAD720, type metadata accessor for AIDAServiceType);
    v0 = sub_240759FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9410);
    }
  }
}

unint64_t sub_240621AE4()
{
  result = qword_27E4B9418;
  if (!qword_27E4B9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9418);
  }

  return result;
}

unint64_t sub_240621B3C()
{
  result = qword_27E4B9420;
  if (!qword_27E4B9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9420);
  }

  return result;
}

unint64_t sub_240621B94()
{
  result = qword_27E4B9428;
  if (!qword_27E4B9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9428);
  }

  return result;
}

unint64_t sub_240621BEC()
{
  result = qword_27E4B9430;
  if (!qword_27E4B9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9430);
  }

  return result;
}

unint64_t sub_240621C44()
{
  result = qword_27E4B9438;
  if (!qword_27E4B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9438);
  }

  return result;
}

unint64_t sub_240621C9C()
{
  result = qword_27E4B9440;
  if (!qword_27E4B9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9440);
  }

  return result;
}

uint64_t sub_240621CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75736552707273 && a2 == 0xEA00000000007374 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E69467369 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696D7265547369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_240621E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240621ED0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9350, &qword_24076B5F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Building.then(if:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a1())
  {
    return a2(v4);
  }

  else
  {
    return (*(*(a3 - 8) + 32))(a4, v4, a3);
  }
}

uint64_t Building.then(if:_:or:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1())
  {
    return a3(v5);
  }

  else
  {
    return a5(v5);
  }
}

uint64_t CryptographicIdentity<>.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240622658(v16, v15);
  if (!v6)
  {
    v5 = (*(a4 + 16))(a1, a3, a5, v11, a4);
    (*(v12 + 8))(v15, v11);
  }

  return v5;
}

uint64_t CryptographicIdentity<>.isValidSignature<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = a7;
  v14 = *(*(a6 + 8) + 8);
  v15 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = v22 - v19;
  sub_240622818(a4, v22 - v19);
  LOBYTE(a8) = (*(a8 + 24))(a1, a2, a3, a5, v22[0], AssociatedTypeWitness, a8);
  (*(v17 + 8))(v20, AssociatedTypeWitness);
  return a8 & 1;
}

uint64_t sub_24062239C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t CryptographicIdentity.info.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_240622658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 36), v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  v12 = *(a1 + 24);
  type metadata accessor for CryptographicIdentity.MissingPrivateKey();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_240622818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_24075A714();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, v2 + *(a1 + 40), v7);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  }

  (*(v8 + 8))(v11, v7);
  type metadata accessor for CryptographicIdentity.MissingPublicKey();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_240622A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_240624EB4(v2 + *(a1 + 44), &v14 - v7);
  v9 = sub_240759E54();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  sub_2405B8A50(v8, &qword_27E4B9468, &qword_24076BB60);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  type metadata accessor for CryptographicIdentity.MissingSymmetricKey();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

BOOL CryptographicIdentity.isForSigning.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24075A714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v1 + *(a1 + 36), v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3) != 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

BOOL CryptographicIdentity.isForSignatureValidation.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = sub_24075A714();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v12 + 16))(&v18 - v14, v1 + *(a1 + 36), v11);
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v15, 1, v3);
  (*(v12 + 8))(v15, v11);
  if (v3 != 1)
  {
    return 0;
  }

  (*(v7 + 16))(v10, v1 + *(a1 + 40), v6);
  v16 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness) != 1;
  (*(v7 + 8))(v10, v6);
  return v16;
}

uint64_t sub_240622F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  v13 = type metadata accessor for CryptographicIdentity();
  v14 = v13[9];
  v15 = sub_24075A714();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  v16 = v13[10];
  v17 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v18 = sub_24075A714();
  (*(*(v18 - 8) + 32))(a6 + v16, a3, v18);
  v19 = a6 + v13[11];

  return sub_240623298(a4, v19);
}

uint64_t CryptographicIdentity.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v24 - v7;
  v8 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = sub_24075A714();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v19;
  v28 = v20;
  v21 = type metadata accessor for CryptographicIdentity();
  (*(v15 + 32))(v18, a1 + v21[9], v14);
  (*(v10 + 32))(v13, a1 + v21[10], v9);
  v22 = v25;
  sub_240623298(a1 + v21[11], v25);
  return sub_240622F04(v27, v18, v13, v22, a2, v26);
}

uint64_t sub_240623298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CryptographicIdentity.newIdentity(ofKind:withID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v35 = a3;
  v37 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v33 - v11;
  v12 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v13 = sub_24075A714();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = sub_24075A714();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v33 - v20;
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = v40;
  result = (*(a5 + 16))(a4, a5);
  if (!v27)
  {
    v38[0] = v34;
    v38[1] = v35;
    v39 = v26;
    v29 = *(v22 + 16);
    v40 = 0;
    v29(v21, v25, a4);
    (*(v22 + 56))(v21, 0, 1, a4);
    v30 = *(v12 + 32);

    v30(a4, v12);
    (*(v22 + 8))(v25, a4);
    v31 = sub_240759E54();
    v32 = v36;
    (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
    return sub_240622F04(v38, v21, v16, v32, a5, v37);
  }

  return result;
}

uint64_t CryptographicIdentity.Info.init(id:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t CryptographicIdentity.exportedPublicKeyMaterial()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = *(a1 + 16);
  v29 = *(a1 + 24);
  v9 = *(v29 + 8);
  swift_getAssociatedTypeWitness();
  v10 = sub_24075A714();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_24075A714();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v28 - v18;
  v20 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v24 = *(v2 + 16);
  v31[0] = *v2;
  v31[1] = v23;
  v32 = v24;
  (*(*(v8 - 8) + 56))(v19, 1, 1, v8);
  (*(v11 + 16))(v14, v2 + *(a1 + 40), v10);
  v25 = sub_240759E54();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_240622F04(v31, v19, v14, v7, v29, v22);
  v26 = type metadata accessor for CryptographicIdentity();
  (*(*(v26 - 8) + 32))(v30, v22, v26);
}

uint64_t sub_2406238D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CryptographicIdentity();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CryptographicIdentity.exportedFullKeyMaterial()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for CryptographicIdentity();
  return (*(*(v10 - 8) + 32))(a2, v6, v10);
}

uint64_t sub_240623A38()
{
  v0 = sub_24075AA34();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_240623A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240623AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_240623B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240623BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240623C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_240623A38();
  *a3 = result;
  return result;
}

uint64_t sub_240623C80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_24057DCB8(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_240623CB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_24057DCB8(*v1);
}

uint64_t sub_240623CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_240623A84(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_240623CEC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_2405D5658();
  *a2 = result;
  return result;
}

uint64_t sub_240623D18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240623D6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v11;
  v12 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_24075A714();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v54 - v17;
  v18 = sub_24075A714();
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v71 = a2;
  v72 = a3;
  type metadata accessor for CryptographicIdentity.CodingKeys();
  swift_getWitnessTable();
  v25 = sub_24075AB44();
  v70 = *(v25 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  v30 = a1[3];
  v29 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v73;
  sub_24075AF34();
  if (!v31)
  {
    v59 = v22;
    v73 = v24;
    v32 = v71;
    v33 = v72;
    type metadata accessor for CryptographicIdentity.Info();
    LOBYTE(v75) = 0;
    swift_getWitnessTable();
    v34 = v28;
    sub_24075AAF4();
    v35 = v76;
    v36 = v77;
    LOBYTE(v75) = 1;
    sub_240618EC8();
    v37 = sub_24075AAA4();
    v55 = v36;
    v56 = v35;
    v58 = v34;
    v57 = v25;
    v75 = v76;
    MEMORY[0x28223BE20](v37);
    v38 = v32;
    *(&v54 - 2) = v32;
    *(&v54 - 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9470, &qword_24076BB68);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24062239C(sub_2406246C0, (&v54 - 4), v39, v38, &v78, v73);
    v54 = v39;
    sub_24058C9E4(v75, *(&v75 + 1));
    LOBYTE(v75) = 2;
    v41 = sub_24075AAA4();
    v42 = *(&v56 + 1);
    v75 = v76;
    MEMORY[0x28223BE20](v41);
    *(&v54 - 2) = v38;
    *(&v54 - 1) = v33;
    sub_24062239C(sub_2406247C8, (&v54 - 4), v54, AssociatedTypeWitness, &v78, v67);
    sub_24058C9E4(v75, *(&v75 + 1));
    LOBYTE(v75) = 3;
    v43 = v57;
    sub_24075AAA4();
    v44 = v70;
    if (*(&v76 + 1) >> 60 == 15)
    {
      (*(v70 + 8))(v58, v43);
      v45 = 1;
      v46 = v33;
      v47 = v61;
      v48 = v62;
      v49 = v60;
    }

    else
    {
      v75 = v76;
      v49 = v60;
      sub_240759E44();
      (*(v44 + 8))(v58, v43);
      v45 = 0;
      v46 = v33;
      v47 = v61;
      v48 = v62;
    }

    v50 = v55;
    v51 = sub_240759E54();
    (*(*(v51 - 8) + 56))(v49, v45, 1, v51);
    *&v76 = v56;
    *(&v76 + 1) = v42;
    v77 = v50;
    v52 = v59;
    (*(v68 + 32))(v59, v73, v69);
    v53 = v63;
    (*(v64 + 32))(v63, v67, v65);
    sub_240623298(v49, v48);
    sub_240622F04(&v76, v52, v53, v48, v46, v47);
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_240624624(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(*(a3 + 8) + 8);
  v10 = *(v9 + 16);
  sub_2405BB9D4(*a1, v8);
  result = v10(v7, v8, a2, v9);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2406246E0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = *(v9 + 16);
  sub_2405BB9D4(v5, v6);
  result = v10(v5, v6, AssociatedTypeWitness, v9);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t CryptographicIdentity.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v63 = a2;
  v59 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_24075A714();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v52 - v11;
  v12 = sub_24075A714();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v12);
  v62 = &v52 - v14;
  type metadata accessor for CryptographicIdentity.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_24075AC24();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v66;
  v21 = v15;
  sub_24075AF74();
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v67 = *v20;
  v68 = v22;
  v69 = v23;
  v70 = 0;
  type metadata accessor for CryptographicIdentity.Info();

  swift_getWitnessTable();
  v24 = v64;
  sub_24075ABE4();
  if (v24)
  {
  }

  else
  {
    v64 = v18;
    v53 = v8;
    v25 = v15;

    v26 = v62;
    v27 = v60;
    v28 = v61;
    (*(v60 + 16))(v62, v20 + *(v63 + 36));
    v29 = *(v7 - 8);
    v30 = (*(v29 + 48))(v26, 1, v7);
    v52 = v7;
    if (v30 == 1)
    {
      v31 = 0;
      v32 = 0xF000000000000000;
      v33 = v28;
    }

    else
    {
      v31 = (*(*(v59 + 8) + 8))(v7);
      v32 = v34;
      v27 = v29;
      v33 = v7;
    }

    (*(v27 + 8))(v26, v33);
    v67 = v31;
    v68 = v32;
    v70 = 1;
    sub_240618E74();
    v21 = v25;
    v18 = v64;
    sub_24075AB94();
    sub_24058C9E4(v67, v68);
    v35 = v63;
    v36 = v56;
    (*(v57 + 16))(v56, v66 + *(v63 + 40), v58);
    v37 = AssociatedTypeWitness;
    v38 = *(AssociatedTypeWitness - 8);
    if ((*(v38 + 48))(v36, 1, AssociatedTypeWitness) == 1)
    {
      v39 = 0;
      v40 = 0xF000000000000000;
      v41 = v53;
      v43 = v57;
      v42 = v58;
    }

    else
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = (*(*(AssociatedConformanceWitness + 8) + 8))(v37);
      v45 = v37;
      v40 = v46;
      v43 = v38;
      v42 = v45;
      v41 = v53;
    }

    (*(v43 + 8))(v36, v42);
    v67 = v39;
    v68 = v40;
    v70 = 2;
    sub_24075AB94();
    sub_24058C9E4(v67, v68);
    v48 = v54;
    sub_240624EB4(v66 + *(v35 + 44), v54);
    v49 = sub_240759E54();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 48))(v48, 1, v49);
    if (v51 == 1)
    {
      sub_2405B8A50(v48, &qword_27E4B9468, &qword_24076BB60);
    }

    else
    {
      MEMORY[0x28223BE20](v51);
      *(&v52 - 4) = v52;
      *(&v52 - 3) = v41;
      *(&v52 - 2) = v18;
      sub_240759E34();
      (*(v50 + 8))(v48, v49);
    }
  }

  return (*(v65 + 8))(v18, v21);
}

uint64_t sub_240624EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240624F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_24062500C(a1, a2);
  v5 = v2;
  type metadata accessor for CryptographicIdentity.CodingKeys();
  swift_getWitnessTable();
  sub_24075AC24();
  sub_240618E74();
  sub_24075ABE4();
  return sub_2405BCD98(v4, v5);
}

uint64_t sub_240624FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_240624F24(a1, a2);
}

uint64_t sub_24062500C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_24062A45C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_24062A598(v3, v4);
    }

    else
    {
      v6 = sub_24062A514(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_2406250C8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9920, &qword_24076C7C0);
  if (swift_dynamicCast())
  {
    sub_24058C9C0(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_240759554();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2405B8A50(__src, qword_27E4B9928, &qword_24076C7C8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24075A8F4();
  }

  sub_240629518(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24062A614(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2406296B8(sub_24062BCF4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_240759674();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_240629EB8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24075A154();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24075A184();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24075A8F4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_240629EB8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24075A164();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_240759694();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_240759694();
    sub_24058C9E4(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_24058C9E4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2405BB9D4(*&__src[0], *(&__src[0] + 1));

  sub_2405BCD98(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t static CryptographicIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a2;
  v7 = sub_240759E54();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v73 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9478, &unk_24076BB78);
  v13 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v73 - v14;
  v88 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = sub_24075A714();
  v87 = *(v79 - 8);
  v15 = *(v87 + 64);
  v16 = MEMORY[0x28223BE20](v79);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v73 - v18;
  v19 = sub_24075A714();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  v90 = type metadata accessor for CryptographicIdentity();
  v27 = v90[9];
  v28 = *(v20 + 16);
  v84 = a1;
  v28(v26, a1 + v27, v19);
  v29 = *(a3 - 8);
  v30 = *(v29 + 48);
  if (v30(v26, 1, a3) == 1)
  {
    v85 = 0xF000000000000000;
    v86 = 0;
    v31 = v20;
    v32 = v19;
  }

  else
  {
    v33 = (*(*(v88 + 8) + 8))(a3);
    v85 = v34;
    v86 = v33;
    v31 = v29;
    v32 = a3;
  }

  (*(v31 + 8))(v26, v32);
  v28(v24, v89 + v90[9], v19);
  if (v30(v24, 1, a3) == 1)
  {
    (*(v20 + 8))(v24, v19);
    v35 = v85;
    v36 = v87;
    if (v85 >> 60 != 15)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v37 = (*(*(v88 + 8) + 8))(a3);
  v39 = v38;
  (*(v29 + 8))(v24, a3);
  v35 = v85;
  v36 = v87;
  if (v85 >> 60 == 15)
  {
    if (v39 >> 60 == 15)
    {
LABEL_9:
      sub_24058C9E4(v86, v35);
      v40 = v82;
      v41 = AssociatedTypeWitness;
      goto LABEL_10;
    }

LABEL_19:
    sub_24058C9E4(v86, v35);
    sub_24058C9E4(v37, v39);
    goto LABEL_20;
  }

  v40 = v82;
  v41 = AssociatedTypeWitness;
  if (v39 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v49 = v86;
  v50 = v85;
  sub_240618C78(v86, v85);
  sub_240618C78(v37, v39);
  v51 = sub_24062A208(v49, v50, v37, v39);
  sub_24058C9E4(v37, v39);
  sub_24058C9E4(v37, v39);
  sub_24058C9E4(v49, v50);
  sub_24058C9E4(v49, v50);
  if ((v51 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v42 = *(v36 + 16);
  v43 = v79;
  v42(v40, v84 + v90[10], v79);
  v44 = *(v41 - 8);
  v45 = *(v44 + 48);
  if (v45(v40, 1, v41) == 1)
  {
    v85 = 0xF000000000000000;
    v86 = 0;
    v46 = v36;
    v47 = v43;
    v48 = v43;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = v43;
    v53 = (*(*(AssociatedConformanceWitness + 8) + 8))(v41);
    v85 = v54;
    v86 = v53;
    v46 = v44;
    v47 = v41;
  }

  v55 = v80;
  (*(v46 + 8))(v40, v47);
  v42(v55, v89 + v90[10], v48);
  if (v45(v55, 1, v41) == 1)
  {
    (*(v87 + 8))(v55, v48);
    v35 = v85;
    v56 = v81;
    if (v85 >> 60 != 15)
    {
LABEL_18:
      v37 = 0;
      v39 = 0xF000000000000000;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v59 = swift_getAssociatedConformanceWitness();
  v60 = v55;
  v37 = (*(*(v59 + 8) + 8))(v41);
  v39 = v61;
  (*(v44 + 8))(v60, v41);
  v35 = v85;
  v56 = v81;
  if (v85 >> 60 == 15)
  {
    if (v39 >> 60 != 15)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_24058C9E4(v86, v35);
    v62 = v78;
    goto LABEL_25;
  }

  v62 = v78;
  if (v39 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v68 = v86;
  v69 = v85;
  sub_240618C78(v86, v85);
  sub_240618C78(v37, v39);
  v70 = sub_24062A208(v68, v69, v37, v39);
  sub_24058C9E4(v37, v39);
  sub_24058C9E4(v37, v39);
  sub_24058C9E4(v68, v69);
  sub_24058C9E4(v68, v69);
  if ((v70 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  v63 = v90[11];
  v64 = *(v75 + 48);
  sub_240624EB4(v84 + v63, v62);
  sub_240624EB4(v89 + v63, v62 + v64);
  v66 = v76;
  v65 = v77;
  v67 = *(v76 + 48);
  if (v67(v62, 1, v77) == 1)
  {
    if (v67(v62 + v64, 1, v65) == 1)
    {
      sub_2405B8A50(v62, &qword_27E4B9468, &qword_24076BB60);
      v57 = 1;
      return v57 & 1;
    }
  }

  else
  {
    sub_240624EB4(v62, v56);
    if (v67(v62 + v64, 1, v65) != 1)
    {
      v71 = v74;
      (*(v66 + 32))(v74, v62 + v64, v65);
      sub_24062BC50(&qword_27E4B9480, MEMORY[0x277CC5330]);
      v57 = sub_24075A054();
      v72 = *(v66 + 8);
      v72(v71, v65);
      v72(v56, v65);
      sub_2405B8A50(v62, &qword_27E4B9468, &qword_24076BB60);
      return v57 & 1;
    }

    (*(v66 + 8))(v56, v65);
  }

  sub_2405B8A50(v62, &qword_27E4B9478, &unk_24076BB78);
LABEL_20:
  v57 = 0;
  return v57 & 1;
}

uint64_t CryptographicIdentity.hash(into:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = v39 - v6;
  v7 = *(a2 + 16);
  v8 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_24075A714();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - v12;
  v14 = sub_24075A714();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - v17;
  v19 = *(a2 + 36);
  v20 = *(v15 + 16);
  v43 = v2;
  v20(v18, v2 + v19, v14);
  v21 = *(v7 - 8);
  v22 = (*(v21 + 48))(v18, 1, v7);
  v39[1] = v8;
  if (v22 == 1)
  {
    (*(v15 + 8))(v18, v14);
    sub_24075AE94();
  }

  else
  {
    v23 = (*(*(v8 + 8) + 8))(v7);
    v25 = v24;
    (*(v21 + 8))(v18, v7);
    sub_24075AE94();
    sub_2407596D4();
    sub_2405BCD98(v23, v25);
  }

  v27 = v40;
  v26 = v41;
  (*(v40 + 16))(v13, v43 + *(a2 + 40), v41);
  v28 = *(AssociatedTypeWitness - 8);
  if ((*(v28 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v13, v26);
    v29 = v44;
    sub_24075AE94();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    v33 = v32;
    (*(v28 + 8))(v13, AssociatedTypeWitness);
    v29 = v44;
    sub_24075AE94();
    sub_2407596D4();
    sub_2405BCD98(v31, v33);
  }

  v34 = v42;
  sub_240624EB4(v43 + *(a2 + 44), v42);
  v35 = sub_240759E54();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  if (v37 == 1)
  {
    return sub_2405B8A50(v34, &qword_27E4B9468, &qword_24076BB60);
  }

  MEMORY[0x28223BE20](v37);
  v39[-2] = v29;
  sub_240759E34();
  return (*(v36 + 8))(v34, v35);
}

uint64_t CryptographicIdentity.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  CryptographicIdentity.hash(into:)(v3, a1);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_240626520(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E756D6D6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F42706573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL sub_240626650(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_24057C4D4(*a1, *a2);
}

uint64_t sub_240626664(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2405C8FB0(*v1);
}

uint64_t sub_240626670(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_24057C4E4(a1, *v2);
}

uint64_t sub_24062667C(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_24057C4E4(v7, *v2);
  return sub_24075AED4();
}

uint64_t sub_2406266C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_240626638(*v1);
}

uint64_t sub_2406266D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_240626520(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_240626700@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_2405D5660();
  *a2 = result;
  return result;
}

uint64_t sub_24062672C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2406267EC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24059C1DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24062681C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2406268C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24062696C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_2406269B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.Info.Kind.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for CryptographicIdentity.Info.Kind.SepBoundCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v43 = v7;
  v8 = sub_24075AC24();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v30 - v10;
  v11 = type metadata accessor for CryptographicIdentity.Info.Kind.PersonalCodingKeys();
  v12 = swift_getWitnessTable();
  v38 = v11;
  v36 = v12;
  v37 = sub_24075AC24();
  v35 = *(v37 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - v14;
  type metadata accessor for CryptographicIdentity.Info.Kind.CommunalCodingKeys();
  v32 = swift_getWitnessTable();
  v33 = sub_24075AC24();
  v31 = *(v33 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - v16;
  type metadata accessor for CryptographicIdentity.Info.Kind.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_24075AC24();
  v17 = *(v44 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v44);
  v20 = &v30 - v19;
  v21 = *v3;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v23 = (v17 + 8);
  if (v21)
  {
    if (v21 == 1)
    {
      v46 = 1;
      v24 = v34;
      v25 = v44;
      sub_24075AB54();
      (*(v35 + 8))(v24, v37);
      return (*v23)(v20, v25);
    }

    v47 = 2;
    v29 = v39;
    v28 = v44;
    sub_24075AB54();
    (*(v40 + 8))(v29, v41);
  }

  else
  {
    v45 = 0;
    v27 = v30;
    v28 = v44;
    sub_24075AB54();
    (*(v31 + 8))(v27, v33);
  }

  return (*v23)(v20, v28);
}

uint64_t CryptographicIdentity.Info.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v59 = a4;
  v7 = type metadata accessor for CryptographicIdentity.Info.Kind.SepBoundCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v58 = v7;
  v51 = sub_24075AB44();
  v50 = *(v51 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v56 = &v42 - v9;
  v10 = type metadata accessor for CryptographicIdentity.Info.Kind.PersonalCodingKeys();
  v54 = swift_getWitnessTable();
  v55 = v10;
  v49 = sub_24075AB44();
  v48 = *(v49 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v42 - v12;
  v13 = type metadata accessor for CryptographicIdentity.Info.Kind.CommunalCodingKeys();
  v52 = swift_getWitnessTable();
  v47 = sub_24075AB44();
  v46 = *(v47 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v16 = &v42 - v15;
  v61 = a3;
  type metadata accessor for CryptographicIdentity.Info.Kind.CodingKeys();
  swift_getWitnessTable();
  v60 = sub_24075AB44();
  v62 = *(v60 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  v19 = &v42 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v67;
  sub_24075AF34();
  if (v21)
  {
    goto LABEL_8;
  }

  v43 = v16;
  v44 = v13;
  v45 = a2;
  v67 = a1;
  v22 = v60;
  v23 = v19;
  *&v63 = sub_24075AB34();
  sub_24075A334();
  swift_getWitnessTable();
  *&v65 = sub_24075A774();
  *(&v65 + 1) = v24;
  *&v66 = v25;
  *(&v66 + 1) = v26;
  sub_24075A764();
  swift_getWitnessTable();
  sub_24075A5A4();
  v27 = v63;
  v28 = v22;
  if (v63 == 3 || (v42 = v65, v63 = v65, v64 = v66, (sub_24075A5B4() & 1) == 0))
  {
    v33 = sub_24075A8C4();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v35 = type metadata accessor for CryptographicIdentity.Info.Kind();
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v62 + 8))(v23, v28);
    swift_unknownObjectRelease();
    a1 = v67;
LABEL_8:
    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  if (v27)
  {
    v29 = v27;
    v30 = v62;
    if (v27 == 1)
    {
      LOBYTE(v63) = 1;
      v31 = v53;
      sub_24075AA54();
      v32 = v59;
      (*(v48 + 8))(v31, v49);
    }

    else
    {
      LOBYTE(v63) = 2;
      v41 = v56;
      sub_24075AA54();
      v32 = v59;
      (*(v50 + 8))(v41, v51);
    }

    (*(v30 + 8))(v23, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
    LOBYTE(v63) = 0;
    v39 = v43;
    sub_24075AA54();
    v40 = v62;
    (*(v46 + 8))(v39, v47);
    (*(v40 + 8))(v23, v28);
    swift_unknownObjectRelease();
    v32 = v59;
  }

  *v32 = v29;
  v37 = v67;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_240627674()
{
  sub_24075AE64();
  CryptographicIdentity.Info.Kind.hash(into:)();
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.intoSalt()()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_2406250C8(v1, v2);
}

BOOL static CryptographicIdentity.Info.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_24075ACF4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_240627788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_240627884(char a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1 & 1);
  return sub_24075AED4();
}

uint64_t sub_2406278CC(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

BOOL sub_2406278F0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_24062784C(*a1, *a2);
}

uint64_t sub_240627904(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_240627884(*v1);
}

uint64_t sub_240627914(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_24062785C(a1, *v2);
}

uint64_t sub_240627924(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_24062785C(v7, *v2);
  return sub_24075AED4();
}

uint64_t sub_24062796C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2406278CC(*v1);
}

uint64_t sub_24062797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_240627788(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2406279AC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_24062AC50();
  *a2 = result;
  return result;
}

uint64_t sub_2406279D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240627A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.Info.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v14[1] = *(a2 + 24);
  v14[2] = v4;
  type metadata accessor for CryptographicIdentity.Info.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24075AC24();
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = *v2;
  v14[3] = v2[1];
  v17 = *(v2 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v20 = 0;
  v11 = v16;
  sub_24075ABB4();
  if (v11)
  {
    return (*(v15 + 8))(v8, v5);
  }

  v13 = v15;
  v19 = v17;
  v18 = 1;
  type metadata accessor for CryptographicIdentity.Info.Kind();
  swift_getWitnessTable();
  sub_24075ABE4();
  return (*(v13 + 8))(v8, v5);
}

uint64_t CryptographicIdentity.Info.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075A114();
  return MEMORY[0x245CC6BA0](v3);
}

uint64_t CryptographicIdentity.Info.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24075AE64();
  sub_24075A114();
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for CryptographicIdentity.Info.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_24075AB44();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v19;
  v10 = v20;
  v23 = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v17 = v11;
  type metadata accessor for CryptographicIdentity.Info.Kind();
  v21 = 1;
  swift_getWitnessTable();
  sub_24075AAF4();
  (*(v9 + 8))(v7, v10);
  v14 = v22;
  v15 = v18;
  *v18 = v17;
  v15[1] = v13;
  *(v15 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240627F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return CryptographicIdentity.Info.init(from:)(a1, a3);
}

uint64_t sub_240627FBC()
{
  sub_24075AE64();
  CryptographicIdentity.Info.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_240627FFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24075ACF4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24062808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_240627FFC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2406280C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240628114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.ExportedMaterial.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v11 = *(a2 + 16);
  type metadata accessor for CryptographicIdentity.ExportedMaterial.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_24075AC24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  type metadata accessor for CryptographicIdentity();
  swift_getWitnessTable();
  sub_24075ABE4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t CryptographicIdentity.ExportedMaterial.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for CryptographicIdentity();

  return CryptographicIdentity.hash(into:)(a1, v5);
}

uint64_t CryptographicIdentity.ExportedMaterial.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for CryptographicIdentity();
  CryptographicIdentity.hash(into:)(v6, v4);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.ExportedMaterial.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for CryptographicIdentity();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v22 - v5;
  type metadata accessor for CryptographicIdentity.ExportedMaterial.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_24075AB44();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CryptographicIdentity.ExportedMaterial();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_24075AF34();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v18 = v27;
    v17 = v28;
    swift_getWitnessTable();
    v19 = v26;
    sub_24075AAF4();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v18 + 32))(v22, v29, v17);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406286AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return CryptographicIdentity.ExportedMaterial.init(from:)(a1, a3);
}

uint64_t sub_240628710(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_24075AE64();
  a4(v7, a2);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity<>.encrypt<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v21[3] = a3;
  v21[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9488, &qword_24076BB88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - v9;
  v11 = sub_240759E54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_240622A04(a1, v15);
  if (!v4)
  {
    v17 = sub_240759D14();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_240759D04();
    v20 = v19;
    sub_2405B8A50(v10, &qword_27E4B9488, &qword_24076BB88);
    result = (*(v12 + 8))(v15, v11);
    *a4 = v18;
    a4[1] = v20;
  }

  return result;
}

uint64_t CryptographicIdentity<>.decrypt<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = a4;
  v10 = sub_240759E54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_240622A04(a2, v14);
  if (!v5)
  {
    v16 = a5;
    v17 = sub_24062AC58(a1, a3, v24);
    v19 = v18;
    v20 = sub_240759CF4();
    v22 = v21;
    (*(v11 + 8))(v14, v10);
    result = sub_2405BCD98(v17, v19);
    *v16 = v20;
    v16[1] = v22;
  }

  return result;
}

uint64_t CryptographicIdentity<>.derived(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a1;
  v82 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v66 - v10;
  v85 = a3;
  v80 = *(a3 + 8);
  v11 = *(a2 + 16);
  v83 = *(v80 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_24075A714();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v79 = &v66 - v15;
  v16 = sub_24075A714();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v66 - v18;
  v19 = sub_240759E54();
  v20 = *(v19 - 8);
  v74 = v19;
  v75 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_240759E24();
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = AssociatedTypeWitness;
  v84 = *(AssociatedTypeWitness - 8);
  v29 = *(v84 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v95 = &v66 - v31;
  v32 = *(v11 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240622658(a2, v35);
  if (v5)
  {
    return (*(*(a2 - 8) + 8))(v4, a2);
  }

  v69 = v28;
  v67 = v24;
  v72 = v35;
  v70 = v32;
  v68 = v23;
  v36 = v87;
  v71 = v4;
  sub_240622818(a2, v95);
  v38 = (*(*(v83 + 8) + 8))(v11);
  v40 = v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = (*(*(*(AssociatedConformanceWitness + 8) + 8) + 8))(v36);
  v44 = v43;
  v93 = v38;
  v94 = v40;
  v91 = MEMORY[0x277CC9318];
  v92 = MEMORY[0x277CC9300];
  v88 = v42;
  v89 = v43;
  v45 = __swift_project_boxed_opaque_existential_1(&v88, MEMORY[0x277CC9318]);
  v46 = v45[1];
  v86 = *v45;
  v83 = v46;
  sub_2405BB9D4(v38, v40);
  sub_2405BB9D4(v42, v44);
  sub_240629F84(v86, v83);
  sub_2405BCD98(v42, v44);
  sub_2405BCD98(v38, v40);
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v83 = v93;
  v86 = v94;
  v47 = *v71;
  v48 = *(v71 + 8);
  swift_bridgeObjectRetain_n();
  v49 = sub_2406250C8(v47, v48);
  v51 = v50;

  v52 = *(*(v85 + 16) + 8);
  v53 = v69;
  v54 = v11;
  sub_240759EB4();
  v85 = 0;
  v55 = v70;
  sub_240759F44();
  v88 = v83;
  v89 = v86;
  v93 = v49;
  v94 = v51;
  sub_24062BC50(qword_27E4B9490, MEMORY[0x277CC5540]);
  sub_2405BE3F8();
  v56 = v68;
  sub_240759E14();
  (*(v73 + 8))(v53, v67);
  (*(v84 + 8))(v95, v87);
  sub_2405BCD98(v49, v51);
  sub_2405BCD98(v83, v86);
  v57 = v71;
  v58 = *(v71 + 8);
  v59 = *(v71 + 16);
  v88 = *v71;
  v89 = v58;
  v90 = v59;
  v60 = v78;
  (*(v55 + 32))(v78, v72, v54);
  (*(v55 + 56))(v60, 0, 1, v54);
  v61 = v79;
  (*(v76 + 16))(v79, v57 + *(a2 + 40), v77);
  v62 = *(*(a2 - 8) + 8);

  v62(v57, a2);
  v63 = v74;
  v64 = v75;
  v65 = v81;
  (*(v75 + 32))(v81, v56, v74);
  (*(v64 + 56))(v65, 0, 1, v63);
  return sub_240622F04(&v88, v60, v61, v65, v80, v82);
}

uint64_t sub_240629388(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24062A150(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2405BCD98(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2406E6E6C(v14, a3, a4, &v13);
  v10 = v4;
  sub_2405BCD98(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_240629518@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_24062A45C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_240759544();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_2407594F4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_240759664();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2406295E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_240629CA4(MEMORY[0x277D84B78], sub_24062BCB8, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

void *sub_2406296B8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2405BCD98(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2405BCD98(v6, v5);
    *v3 = xmmword_24076BB50;
    sub_2405BCD98(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_240759504() && __OFSUB__(v6, sub_240759534()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_240759544();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_2407594E4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_240629E04(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2405BCD98(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_24076BB50;
    sub_2405BCD98(0, 0xC000000000000000);
    sub_240759644();
    result = sub_240629E04(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_240629A5C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24062A45C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24062A598(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24062A514(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_240629AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = sub_24075A1D4();
  *(a4 + v11) = result;
  return result;
}

void *sub_240629C38(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_240629CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

char *sub_240629E04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_240759504();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_240759534();
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

  v12 = sub_240759524();
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

uint64_t sub_240629EB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24075A194();
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
    v5 = MEMORY[0x245CC5E90](15, a1 >> 16);
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

uint64_t sub_240629F34@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_24075A874();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t sub_240629F84(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_240759694();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24062A0BC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24062A0BC(uint64_t a1, uint64_t a2)
{
  result = sub_240759504();
  if (!result || (result = sub_240759534(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_240759524();
      return sub_240759694();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24062A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_240759504();
  v11 = result;
  if (result)
  {
    result = sub_240759534();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_240759524();
  sub_2406E6E6C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24062A208(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2405BB9D4(a3, a4);
          return sub_240629388(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24062A45C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24062A514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_240759544();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2407594F4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24062A598(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_240759544();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2407594F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_240759664();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24062A614(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_240759544();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_240759514();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_240759664();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24062A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9920, &qword_24076C7C0);
  if (swift_dynamicCast())
  {
    sub_24058C9C0(v36, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_240759554();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_2405B8A50(v36, qword_27E4B9928, &qword_24076C7C8);
  sub_24075A1F4();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = sub_24075A1E4();
  *&v36[0] = sub_24062A614(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x28223BE20](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  sub_240759684();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      sub_240759674();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  sub_24075A734();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      sub_240759694();
      LOBYTE(v29) = 0;
    }

    sub_24075A734();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    sub_240759694();
    sub_24058C9E4(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_24058C9E4(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  sub_2405BB9D4(*&v36[0], *(&v36[0] + 1));
  sub_2405BCD98(v30, *(&v30 + 1));
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_24062AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_24075A594() >= 28)
  {
    return sub_24062A6B4(a1, a2, *(v5 + 8));
  }

  v6 = sub_240759D24();
  sub_24062BC50(&qword_27E4B9918, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277CC51E0], v6);
  return swift_willThrow();
}

uint64_t sub_24062AEB4(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void sub_24062AF30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for CryptographicIdentity.Info();
  if (v3 <= 0x3F)
  {
    sub_24075A714();
    if (v4 <= 0x3F)
    {
      v5 = *(v2 + 8);
      swift_getAssociatedTypeWitness();
      sub_24075A714();
      if (v6 <= 0x3F)
      {
        sub_24062B818();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24062B01C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a3 + 24) + 8);
  v38 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v39 = v10;
  v40 = v6;
  if (v6 <= v10)
  {
    v6 = v10;
  }

  v11 = *(sub_240759E54() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v6 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v6;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v5)
  {
    v17 = *(v4 + 64);
  }

  else
  {
    v17 = *(v4 + 64) + 1;
  }

  if (v9)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = *(v4 + 80);
  v20 = *(v8 + 80);
  v21 = *(v11 + 80);
  v22 = *(v11 + 64);
  if (v13)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v18 + v21;
  if (a2 <= v16)
  {
    goto LABEL_48;
  }

  v25 = v23 + ((v24 + ((v17 + ((v19 + 17) & ~v19) + v20) & ~v20)) & ~v21);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((a2 - v16 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v28 < 2)
    {
LABEL_48:
      if ((v15 & 0x80000000) == 0)
      {
        v32 = *(a1 + 1);
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }

      v34 = (a1 + v19 + 17) & ~v19;
      if (v40 == v16)
      {
        if (v5 >= 2)
        {
          v35 = (*(v4 + 48))(v34, v5, v38);
          goto LABEL_63;
        }

        return 0;
      }

      v36 = (v34 + v17 + v20) & ~v20;
      if (v39 == v16)
      {
        if (v9 < 2)
        {
          return 0;
        }

        v35 = (*(v8 + 48))(v36, v9, AssociatedTypeWitness);
      }

      else
      {
        v35 = (*(v12 + 48))((v24 + v36) & ~v21);
      }

LABEL_63:
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_48;
  }

LABEL_35:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = v25;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v16 + (v31 | v29) + 1;
}

void sub_24062B3A4(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v45 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a4 + 24) + 8);
  v44 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = sub_240759E54();
  v14 = v6;
  v15 = 0;
  v16 = *(v13 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v5 + 80);
  v20 = *(v9 + 80);
  v21 = *(v16 + 80);
  if (v12 <= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v12;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v14)
  {
    v24 = *(v5 + 64);
  }

  else
  {
    v24 = *(v5 + 64) + 1;
  }

  if (v10)
  {
    v25 = *(v9 + 64);
  }

  else
  {
    v25 = *(v9 + 64) + 1;
  }

  v26 = v25 + v21;
  if (v17)
  {
    v27 = *(v16 + 64);
  }

  else
  {
    v27 = *(v16 + 64) + 1;
  }

  v28 = ((v26 + ((v24 + ((v19 + 17) & ~v19) + v20) & ~v20)) & ~v21) + v27;
  if (a3 > v23)
  {
    v15 = 1;
    if (v28 <= 3)
    {
      v29 = ((a3 - v23 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
      v30 = HIWORD(v29);
      if (v29 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v29 >= 2)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (v30)
      {
        v15 = 4;
      }

      else
      {
        v15 = v32;
      }
    }
  }

  if (v23 < a2)
  {
    v33 = ~v23 + a2;
    if (v28 < 4)
    {
      v34 = (v33 >> (8 * v28)) + 1;
      if (v28)
      {
        v35 = v33 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v35;
            if (v15 > 1)
            {
LABEL_76:
              if (v15 == 2)
              {
                *(a1 + v28) = v34;
              }

              else
              {
                *(a1 + v28) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v15 > 1)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_73;
        }

        *a1 = v35;
        *(a1 + 2) = BYTE2(v35);
      }

      if (v15 > 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      bzero(a1, v28);
      *a1 = v33;
      v34 = 1;
      if (v15 > 1)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    if (v15)
    {
      *(a1 + v28) = v34;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *(a1 + v28) = 0;
  }

  else if (v15)
  {
    *(a1 + v28) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if ((v22 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 16) = 0;
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v36 = (a1 + v19 + 17) & ~v19;
  if (v7 == v23)
  {
    if (v14 < 2)
    {
      return;
    }

    v37 = *(v45 + 56);
    v38 = a2 + 1;
    v39 = v14;
    v40 = v44;

    goto LABEL_64;
  }

  v36 = (v36 + v24 + v20) & ~v20;
  if (v11 == v23)
  {
    if (v10 < 2)
    {
      return;
    }

    v37 = *(v9 + 56);
    v38 = a2 + 1;
    v39 = v10;
    v40 = AssociatedTypeWitness;

LABEL_64:
    v37(v36, v38, v39, v40);
    return;
  }

  v41 = *(v16 + 56);
  v42 = (v26 + v36) & ~v21;

  v41(v42, a2 + 1);
}

void sub_24062B818()
{
  if (!qword_280FAD758)
  {
    sub_240759E54();
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_280FAD758);
    }
  }
}

uint64_t sub_24062B870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24062B8AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24062B8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24062B934(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for CryptographicIdentity();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24062BC50(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24062BCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_240629C38(sub_24062BD5C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_24062BDD0(const char *a1)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  oslog = sub_240759AC4();
  v3 = sub_24075A5E4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2405BBA7C(0xD00000000000001ALL, 0x80000002407874C0, &v7);
    _os_log_impl(&dword_240579000, oslog, v3, a1, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }
}

uint64_t sub_24062BF18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

uint64_t sub_24062BFB0()
{
  v1 = v0[3];
  v0[2] = 0;
  v2 = sub_24062C3D8();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v0 + 2;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_24062C0C0;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x80000002407874A0, sub_24062C5C8, v3, v7);
}

uint64_t sub_24062C0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_24062C244;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24062C1DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24062C1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24062C244()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_24062C2B8(int a1, uint64_t *a2, id a3)
{
  if (a3)
  {
    v4 = [a3 remoteObjectProxy];
    sub_24075A754();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AB8, &unk_24076C990);
    v5 = swift_dynamicCast();
    v6 = v9;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  *a2 = v6;
  swift_unknownObjectRelease();
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
    return sub_24075A364();
  }

  else
  {
    sub_24062C5D0();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
    return sub_24075A354();
  }
}

uint64_t sub_24062C3D8()
{
  result = *(v0 + 24);
  if (!result)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
    }

    else
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
      v5 = sub_24075A084();
      v3 = [v4 initWithMachServiceName:v5 options:4096];
    }

    v6 = _s12AppleIDSetup18AISDaemonInterfaceC03xpcD0So14NSXPCInterfaceCyFZ_0();
    [v3 setRemoteObjectInterface_];

    v14 = sub_24062BDB8;
    v15 = 0;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_240644810;
    v13 = &block_descriptor_2;
    v7 = _Block_copy(&v10);
    [v3 setInterruptionHandler_];
    _Block_release(v7);
    v14 = sub_24062BDC4;
    v15 = 0;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_240644810;
    v13 = &block_descriptor_14;
    v8 = _Block_copy(&v10);
    [v3 setInvalidationHandler_];
    _Block_release(v8);
    [v3 resume];
    v9 = *(v0 + 24);
    *(v0 + 24) = v3;

    return *(v0 + 24);
  }

  return result;
}

unint64_t sub_24062C5D0()
{
  result = qword_27E4B9AB0;
  if (!qword_27E4B9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9AB0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24062C650()
{
  result = qword_27E4B9AC0;
  if (!qword_27E4B9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9AC0);
  }

  return result;
}

id SimpleSetupModelExchange.queue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleSetupModelExchange.init(queue:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SimpleSetupModelExchange.receiveModelUpdate(_:with:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return v1();
}

id sub_24062C708()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_24062C730()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return v1();
}

uint64_t sub_24062C780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24062C7C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AISShieldAppleIDSignInResult.init(authResults:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v1 = sub_240759F54();

  v2 = [v0 initWithAuthResults_];

  return v2;
}

id AISShieldAppleIDSignInResult.init(authResults:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AISShieldAppleIDSignInResult_authResults) = a1;
  v3.super_class = AISShieldAppleIDSignInResult;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AISShieldAppleIDSignInResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AISShieldAppleIDSignInResult()
{
  result = qword_27E4B9AD8;
  if (!qword_27E4B9AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B9AD8);
  }

  return result;
}

uint64_t sub_24062CAF8()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B9AE0);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9AE0);
  if (qword_27E4B5EE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8590);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24062CC74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24062CCDC()
{
  v1 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24062CD24(uint64_t a1)
{
  v2 = v1;
  sub_2405B044C(a1, &v21, &qword_27E4B9B20, &qword_24076CB38);
  if (!v22)
  {
    return sub_2405B8A50(&v21, &qword_27E4B9B20, &qword_24076CB38);
  }

  sub_24058C9C0(&v21, v23);
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9AE0);
  sub_2405F7830(v23, &v21);

  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    sub_2405F7830(&v21, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B40, &qword_24076CCC8);
    v8 = sub_24075A0E4();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v11 = sub_2405BBA7C(v8, v10, &v20);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
    swift_beginAccess();
    sub_2405B044C(v2 + v12, v19, &qword_27E4B9B20, &qword_24076CB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B20, &qword_24076CB38);
    v13 = sub_24075A0E4();
    v15 = sub_2405BBA7C(v13, v14, &v20);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "AgeMigrationController session changed from %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v18 + 8))(0xD000000000000028, 0x8000000240787690, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

char *AgeMigrationController.__allocating_init(queue:endpoint:inactiveSession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return AgeMigrationController.init(queue:endpoint:inactiveSession:)(a1, a2, a3);
}

char *AgeMigrationController.init(queue:endpoint:inactiveSession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v55 = a2;
  v6 = sub_24075A634();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24075A624();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_240759CB4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_240759CE4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient) = 0;
  v26 = v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  if (a1)
  {
    v28 = a1;
    v29 = a1;
    v30 = v54;
    v31 = v55;
  }

  else
  {
    v48 = v25;
    v49 = v12;
    v50 = 0;
    qos_class_self();
    sub_240759CA4();
    v32 = *(v18 + 48);
    if (v32(v16, 1, v17) == 1)
    {
      (*(v18 + 104))(v21, *MEMORY[0x277D851B0], v17);
      if (v32(v16, 1, v17) != 1)
      {
        sub_2405B8A50(v16, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
    }

    v33 = sub_2406082EC();
    v48 = "T@NSDictionary,N,R";
    v49 = v33;
    sub_240759CD4();
    v58 = MEMORY[0x277D84F90];
    sub_2406362FC(&qword_280FAD6F8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v52 + 104))(v51, *MEMORY[0x277D85260], v53);
    v28 = sub_24075A664();
    v30 = v54;
    v31 = v55;
    v29 = v50;
  }

  v4[14] = v28;
  sub_2405B044C(v31, v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  swift_beginAccess();
  v34 = v29;
  sub_24062D600(v30, v26);
  swift_endAccess();
  v35 = type metadata accessor for AgeMigrationController();
  v57.receiver = v4;
  v57.super_class = v35;
  v36 = v30;
  v37 = objc_msgSendSuper2(&v57, sel_init);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = type metadata accessor for AnisetteClient();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v41 = &unk_24076CB48;
  *(v41 + 1) = v38;
  v56.receiver = v40;
  v56.super_class = v39;
  v42 = v37;

  v43 = objc_msgSendSuper2(&v56, sel_init);

  sub_2405B8A50(v36, &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50(v31, &qword_27E4B9B18, &qword_24076CB30);

  v44 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  v45 = *&v42[v44];
  *&v42[v44] = v43;

  swift_unknownObjectRelease();
  return v42;
}

uint64_t sub_24062D600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B20, &qword_24076CB38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AgeMigrationController()
{
  result = qword_27E4B9B28;
  if (!qword_27E4B9B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24062D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v4 = *(a2 + 16);
  *(v3 + 96) = *a2;
  *(v3 + 112) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24062D6EC, 0, 0);
}

uint64_t sub_24062D6EC()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 49);
    v4 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_24062D8EC;
    v6 = *(v0 + 80);

    return sub_240633F40(v6, v0 + 16);
  }

  else
  {
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_27E4B9AE0);
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_240579000, v9, v10, "AgeMigrationController was deallocated before AnisetteClient could handle the request.", v11, 2u);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    sub_2405DAFE4();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_24062D8EC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_24062DA64;
  }

  else
  {
    v3 = sub_24062DA00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24062DA00()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24062DA64()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24062DAC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return sub_24062D6BC(a1, a2, v2);
}

uint64_t sub_24062DB74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B9AE0);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_240579000, v7, v8, "Invalidating age migration controller", v9, 2u);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24060351C(0, 0, v5, &unk_24076CB60, v11);
}

uint64_t sub_24062DD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return MEMORY[0x2822009F8](sub_24062DD5C, a4, 0);
}

uint64_t sub_24062DD5C()
{
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v1 + v2, v0 + 16, &qword_27E4B9B20, &qword_24076CB38);

  return MEMORY[0x2822009F8](sub_24062DDF8, 0, 0);
}

uint64_t sub_24062DDF8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_2405F7830(v0 + 16, v0 + 56);
    sub_2405B8A50(v0 + 16, &qword_27E4B9B20, &qword_24076CB38);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    (*(v3 + 8))(0xD000000000000014, 0x80000002407876C0, v2, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    sub_2405B8A50(v0 + 16, &qword_27E4B9B20, &qword_24076CB38);
  }

  **(v0 + 120) = v1 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t AgeMigrationController.deinit()
{
  v1 = v0;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9AE0);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315138;
    v7 = [ description];
    v8 = sub_24075A0B4();
    v10 = v9;

    v11 = sub_2405BBA7C(v8, v10, v17);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_240579000, v3, v4, "AgeMigrationController deinitialized: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v12 = v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_2405F7830(v12, v17);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v14 + 8))(0xD000000000000026, 0x80000002407875C0, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v15 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient);
  swift_unknownObjectRelease();
  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession, &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50(v12, &qword_27E4B9B20, &qword_24076CB38);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AgeMigrationController.__deallocating_deinit()
{
  AgeMigrationController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24062E1BC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for MachAgeMigrationMessage();
  v3[36] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AgeMigrationContext() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24062E2A4, v2, 0);
}

uint64_t sub_24062E2A4()
{
  v30 = v0;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[34];
  v3 = sub_240759AE4();
  v0[42] = __swift_project_value_buffer(v3, qword_27E4B9AE0);
  sub_240635B84(v2, v1, type metadata accessor for AgeMigrationContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v10 = AgeMigrationContext.description.getter();
    v12 = v11;
    sub_240635BEC(v7, type metadata accessor for AgeMigrationContext);
    v13 = sub_2405BBA7C(v10, v12, &v29);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v4, v5, "Beginning age migration with context: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {

    sub_240635BEC(v7, type metadata accessor for AgeMigrationContext);
  }

  v14 = v0[35];
  sub_240630E50(v0[34], (v0 + 7));
  v15 = v0[39];
  v16 = v0[35];
  v17 = v0[36];
  v18 = v0[34];
  sub_2405F7830((v0 + 7), (v0 + 12));
  v19 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v16 + v19, (v0 + 17), &qword_27E4B9B20, &qword_24076CB38);
  swift_beginAccess();
  sub_24062D600((v0 + 12), v16 + v19);
  swift_endAccess();
  sub_24062CD24((v0 + 17));
  sub_2405B8A50((v0 + 17), &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50((v0 + 12), &qword_27E4B9B20, &qword_24076CB38);
  v20 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_240635B84(v18, v15, type metadata accessor for AgeMigrationModel);
  swift_storeEnumTagMultiPayload();
  v21 = *(v20 + 48);
  v28 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[43] = v23;
  sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage);
  *v23 = v0;
  v23[1] = sub_24062E730;
  v25 = v0[39];
  v24 = v0[40];
  v26 = v0[36];

  return v28(v24, v25);
}

uint64_t sub_24062E730()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 280);
  sub_240635BEC(v5, type metadata accessor for MachAgeMigrationMessage);
  if (v0)
  {
    v7 = sub_24062EEF8;
  }

  else
  {
    v7 = sub_24062E88C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24062E88C()
{
  v67 = v0;
  v1 = v0[36];
  sub_240635B84(v0[40], v0[38], type metadata accessor for MachAgeMigrationMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[42];
  if (EnumCaseMultiPayload == 6)
  {
    v15 = v0[38];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    sub_240635224(*v15, v17);
    v21 = sub_240759AC4();
    v22 = sub_24075A5E4();
    sub_2405DB038(v16, v17);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66[0] = v64;
      *v23 = 136315138;
      v0[22] = v16;
      v0[23] = v17;
      v0[24] = v18;
      v0[25] = v19;
      v0[26] = v20;
      sub_2405DAFE4();
      v24 = sub_24075AE04();
      v26 = sub_2405BBA7C(v24, v25, v66);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_240579000, v21, v22, "Failed age migration due to error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x245CC76B0](v64, -1, -1);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    v27 = v0[40];
    v28 = v0[35];
    sub_2405DAFE4();
    swift_allocError();
    *v29 = v16;
    v29[1] = v17;
    v29[2] = v18;
    v29[3] = v19;
    v29[4] = v20;
    swift_willThrow();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_240635B84(v0[40], v0[37], type metadata accessor for MachAgeMigrationMessage);
    v30 = sub_240759AC4();
    v31 = sub_24075A5E4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[37];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66[0] = v35;
      *v34 = 136315138;
      v36 = MachAgeMigrationMessage.description.getter();
      v38 = v37;
      sub_240635BEC(v33, type metadata accessor for MachAgeMigrationMessage);
      v39 = sub_2405BBA7C(v36, v38, v66);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_240579000, v30, v31, "Received unexpected mach age migration message: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CC76B0](v35, -1, -1);
      MEMORY[0x245CC76B0](v34, -1, -1);
    }

    else
    {

      sub_240635BEC(v33, type metadata accessor for MachAgeMigrationMessage);
    }

    v42 = v0[40];
    v27 = v0[38];
    v28 = v0[35];
    sub_2405DAFE4();
    swift_allocError();
    *v43 = xmmword_24076CB10;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    *(v43 + 16) = 0;
    swift_willThrow();
    sub_240635BEC(v42, type metadata accessor for MachAgeMigrationMessage);
LABEL_14:
    sub_240635BEC(v27, type metadata accessor for MachAgeMigrationMessage);
    sub_24062EFA4(v28);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v45 = v0[40];
    v44 = v0[41];
    v47 = v0[38];
    v46 = v0[39];
    v48 = v0[37];

    v49 = v0[1];
    goto LABEL_18;
  }

  v4 = v0[38];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  sub_24063526C(*v4, v6);
  v10 = sub_240759AC4();
  v11 = sub_24075A5C4();
  sub_2405E170C(v5, v6);
  v62 = v7;
  v63 = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v61 = v11;
    v12 = 0xD00000000000001ALL;
    v13 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = v60;
    *v13 = 136315138;
    if (v6 == 20)
    {
      v14 = 0x8000000240787110;
    }

    else
    {
      v0[2] = v5;
      v0[3] = v6;
      v0[4] = v7;
      v0[5] = v8;
      v0[6] = v9;
      sub_24075A864();

      v66[0] = 0xD00000000000001BLL;
      v66[1] = 0x80000002407870F0;
      v50 = _AgeMigrationError.description.getter();
      MEMORY[0x245CC5E60](v50);

      MEMORY[0x245CC5E60](41, 0xE100000000000000);
      v12 = 0xD00000000000001BLL;
      v14 = 0x80000002407870F0;
    }

    v51 = v0[40];
    v52 = sub_2405BBA7C(v12, v14, &v65);

    *(v13 + 4) = v52;
    _os_log_impl(&dword_240579000, v10, v61, "Finished age migration with report: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x245CC76B0](v60, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);

    v41 = v51;
  }

  else
  {
    v40 = v0[40];

    v41 = v40;
  }

  sub_240635BEC(v41, type metadata accessor for MachAgeMigrationMessage);
  v54 = v0[40];
  v53 = v0[41];
  v56 = v0[38];
  v55 = v0[39];
  v57 = v0[37];
  v58 = v0[33];
  sub_24062EFA4(v0[35]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  *v58 = v63;
  v58[1] = v6;
  v58[2] = v62;
  v58[3] = v8;
  v58[4] = v9;
  v49 = v0[1];
LABEL_18:

  return v49();
}

uint64_t sub_24062EEF8()
{
  sub_24062EFA4(v0[35]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24062EFA4(uint64_t a1)
{
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9AE0);
  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_240579000, v3, v4, "Done with migration. Invalidating active session.", v5, 2u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(a1 + v6, v8, &qword_27E4B9B20, &qword_24076CB38);
  swift_beginAccess();
  sub_24062D600(v9, a1 + v6);
  swift_endAccess();
  sub_24062CD24(v8);
  sub_2405B8A50(v8, &qword_27E4B9B20, &qword_24076CB38);
  return sub_2405B8A50(v9, &qword_27E4B9B20, &qword_24076CB38);
}

uint64_t sub_24062F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v112 = a2;
  v111 = type metadata accessor for AgeMigrationContext();
  v4 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v99 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v106 = *(v107 - 8);
  v103 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = v98 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v101 = *(v100 - 8);
  v7 = *(v101 + 64);
  v8 = MEMORY[0x28223BE20](v100);
  v113 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v110 = v98 - v11;
  v102 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = v98 - v13;
  v119 = type metadata accessor for MachAgeMigrationMessage();
  v15 = *(*(v119 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v119);
  v109 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v114 = v98 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v118 = (v98 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = v98 - v24;
  v26 = sub_240759C44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v98 - v32;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v108 = sub_240759AE4();
  v34 = __swift_project_value_buffer(v108, qword_27E4B8500);
  v35 = *(v27 + 16);
  v120 = a1;
  v35(v33, a1, v26);
  v116 = v34;
  v36 = sub_240759AC4();
  v37 = sub_24075A5D4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v115 = v14;
    v39 = v38;
    v40 = swift_slowAlloc();
    v98[0] = v25;
    v41 = v40;
    *&aBlock = v40;
    *v39 = 136315138;
    v35(v31, v33, v26);
    v42 = sub_24075A0E4();
    v44 = v43;
    (*(v27 + 8))(v33, v26);
    v45 = sub_2405BBA7C(v42, v44, &aBlock);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_240579000, v36, v37, "Received XPC message: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v46 = v41;
    v25 = v98[0];
    MEMORY[0x245CC76B0](v46, -1, -1);
    v47 = v39;
    v14 = v115;
    MEMORY[0x245CC76B0](v47, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v33, v26);
  }

  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage);
  v48 = v118;
  sub_240759C34();
  sub_240635FFC(v48, v25, type metadata accessor for MachAgeMigrationMessage);
  v49 = v114;
  sub_240635B84(v25, v114, type metadata accessor for MachAgeMigrationMessage);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_240635BEC(v49, type metadata accessor for MachAgeMigrationMessage);
    v61 = v109;
    sub_240635B84(v25, v109, type metadata accessor for MachAgeMigrationMessage);
    v62 = sub_240759AC4();
    v63 = sub_24075A5E4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&aBlock = v65;
      *v64 = 136315138;
      v66 = MachAgeMigrationMessage.description.getter();
      v68 = v67;
      sub_240635BEC(v61, type metadata accessor for MachAgeMigrationMessage);
      v69 = sub_2405BBA7C(v66, v68, &aBlock);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_240579000, v62, v63, "Received unexpected mach age migration message: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x245CC76B0](v65, -1, -1);
      MEMORY[0x245CC76B0](v64, -1, -1);
    }

    else
    {

      sub_240635BEC(v61, type metadata accessor for MachAgeMigrationMessage);
    }

    v87 = v117;
    *(v117 + 4) = 0;
    *v87 = 0u;
    v87[1] = 0u;
    swift_storeEnumTagMultiPayload();
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
    sub_240759C24();
    sub_240635BEC(v87, type metadata accessor for MachAgeMigrationMessage);
    v88 = v25;
    return sub_240635BEC(v88, type metadata accessor for MachAgeMigrationMessage);
  }

  sub_2405E150C(v49, v14, &qword_27E4B7AE0, &qword_2407634B8);
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v108, qword_27E506810);
  v50 = v110;
  sub_2405B044C(v14, v110, &qword_27E4B7AE0, &qword_2407634B8);
  v51 = sub_240759AC4();
  v52 = sub_24075A5D4();
  v53 = os_log_type_enabled(v51, v52);
  v115 = v14;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&aBlock = v118;
    *v54 = 136315138;
    sub_2405B044C(v50, v113, &qword_27E4B7AE0, &qword_2407634B8);
    v55 = sub_24075A0E4();
    v56 = v25;
    v58 = v57;
    sub_2405B8A50(v50, &qword_27E4B7AE0, &qword_2407634B8);
    v59 = sub_2405BBA7C(v55, v58, &aBlock);
    v25 = v56;

    *(v54 + 4) = v59;
    _os_log_impl(&dword_240579000, v51, v52, "Received coordinated model update: %s", v54, 0xCu);
    v60 = v118;
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x245CC76B0](v60, -1, -1);
    MEMORY[0x245CC76B0](v54, -1, -1);
  }

  else
  {

    sub_2405B8A50(v50, &qword_27E4B7AE0, &qword_2407634B8);
  }

  v70 = v112;
  sub_2405B044C(v112 + *(v111 + 20), &aBlock, &qword_27E4B9B50, &qword_24076D670);
  if (!v123)
  {
    sub_2405B8A50(&aBlock, &qword_27E4B9B50, &qword_24076D670);
    v89 = v99;
    sub_240635B84(v70, v99, type metadata accessor for AgeMigrationContext);
    v90 = sub_240759AC4();
    v91 = sub_24075A5E4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&aBlock = v93;
      *v92 = 136315138;
      v94 = AgeMigrationContext.description.getter();
      v96 = v95;
      sub_240635BEC(v89, type metadata accessor for AgeMigrationContext);
      v97 = sub_2405BBA7C(v94, v96, &aBlock);

      *(v92 + 4) = v97;
      _os_log_impl(&dword_240579000, v90, v91, "Unable to use exchange from context: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x245CC76B0](v93, -1, -1);
      MEMORY[0x245CC76B0](v92, -1, -1);
    }

    else
    {

      sub_240635BEC(v89, type metadata accessor for AgeMigrationContext);
    }

    sub_2405B8A50(v115, &qword_27E4B7AE0, &qword_2407634B8);
    v88 = v25;
    return sub_240635BEC(v88, type metadata accessor for MachAgeMigrationMessage);
  }

  sub_24058C9C0(&aBlock, &v127);
  v71 = v128;
  v72 = v129;
  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v118 = (*(v72 + 8))(v71, v72);
  if (!v118)
  {
    v118 = *(v98[1] + 112);
  }

  sub_2405F7830(&v127, &v126);
  v73 = v113;
  sub_2405B044C(v115, v113, &qword_27E4B7AE0, &qword_2407634B8);
  v74 = v106;
  v75 = v104;
  v76 = v107;
  (*(v106 + 16))(v104, v105, v107);
  v77 = (*(v101 + 80) + 56) & ~*(v101 + 80);
  v78 = (v102 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v74 + 80) + v78 + 8) & ~*(v74 + 80);
  v80 = swift_allocObject();
  sub_24058C9C0(&v126, v80 + 16);
  sub_2405E150C(v73, v80 + v77, &qword_27E4B7AE0, &qword_2407634B8);
  v81 = v118;
  *(v80 + v78) = v118;
  (*(v74 + 32))(v80 + v79, v75, v76);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_240635C4C;
  *(v82 + 24) = v80;
  v124 = sub_240635D44;
  v125 = v82;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v122 = sub_2406C0E30;
  v123 = &block_descriptor_3;
  v83 = _Block_copy(&aBlock);
  v84 = v81;

  dispatch_async_and_wait(v84, v83);
  _Block_release(v83);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if (v75)
  {
    __break(1u);
  }

  else
  {
    v86 = v117;
    swift_storeEnumTagMultiPayload();
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
    sub_240759C24();

    sub_240635BEC(v86, type metadata accessor for MachAgeMigrationMessage);
    sub_2405B8A50(v115, &qword_27E4B7AE0, &qword_2407634B8);
    sub_240635BEC(v25, type metadata accessor for MachAgeMigrationMessage);
    __swift_destroy_boxed_opaque_existential_1(&v127);
  }

  return result;
}

uint64_t sub_2406301DC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v24 - v14;
  v16 = a1[4];
  v25 = a1[3];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2405B044C(a2, v15, &qword_27E4B7AE0, &qword_2407634B8);
  (*(v7 + 16))(v10, v26, v6);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  sub_2405E150C(v15, v19 + v17, &qword_27E4B7AE0, &qword_2407634B8);
  (*(v7 + 32))(v19 + v18, v10, v6);
  v21 = *(v16 + 16);
  v22 = v20;
  v21(a2, sub_240635D64, v19, v25, v16);
}

uint64_t sub_240630438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v33 = a3;
  v42 = a2;
  v39 = sub_240759C94();
  v41 = *(v39 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_240759CE4();
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = &v31 - v19;
  sub_2405B044C(v33, &v31 - v19, &qword_27E4B7AE0, &qword_2407634B8);
  sub_2405B044C(v34, v15, &qword_27E4B7AD0, &unk_24076CCE0);
  v21 = v32;
  (*(v8 + 16))(v11, v35, v32);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v18 + *(v31 + 80) + v22) & ~*(v31 + 80);
  v24 = (v13 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = swift_allocObject();
  sub_2405E150C(v20, v25 + v22, &qword_27E4B7AE0, &qword_2407634B8);
  sub_2405E150C(v15, v25 + v23, &qword_27E4B7AD0, &unk_24076CCE0);
  (*(v8 + 32))(v25 + v24, v11, v21);
  aBlock[4] = sub_240635E54;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_39;
  v26 = _Block_copy(aBlock);
  v27 = v36;
  sub_240759CC4();
  v43 = MEMORY[0x277D84F90];
  sub_2406362FC(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  v28 = v37;
  v29 = v39;
  sub_24075A794();
  MEMORY[0x245CC6370](0, v27, v28, v26);
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
}

uint64_t sub_24063096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for MachAgeMigrationMessage();
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B70, &qword_24076CCF0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v12 = *(*(v43 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v24 = sub_240759AE4();
  __swift_project_value_buffer(v24, qword_27E506810);
  sub_2405B044C(a1, v23, &qword_27E4B7AE0, &qword_2407634B8);
  v46 = a2;
  sub_2405B044C(a2, v16, &qword_27E4B7AD0, &unk_24076CCE0);
  v25 = sub_240759AC4();
  v26 = sub_24075A5D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v8;
    v48 = v39;
    *v27 = 136315394;
    v41 = a3;
    sub_2405B044C(v23, v21, &qword_27E4B7AE0, &qword_2407634B8);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v23, &qword_27E4B7AE0, &qword_2407634B8);
    v31 = sub_2405BBA7C(v28, v30, &v48);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_2405B044C(v16, v42, &qword_27E4B7AD0, &unk_24076CCE0);
    v32 = sub_24075A0E4();
    v34 = v33;
    sub_2405B8A50(v16, &qword_27E4B7AD0, &unk_24076CCE0);
    v35 = sub_2405BBA7C(v32, v34, &v48);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_240579000, v25, v26, "Responding to model update (%s) with response: %s", v27, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    v8 = v40;
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  else
  {

    sub_2405B8A50(v16, &qword_27E4B7AD0, &unk_24076CCE0);
    sub_2405B8A50(v23, &qword_27E4B7AE0, &qword_2407634B8);
  }

  sub_2405B044C(v46, v8, &qword_27E4B7AD0, &unk_24076CCE0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v37 = v44;
  sub_24075A414();
  return (*(v45 + 8))(v37, v9);
}

uint64_t sub_240630E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B78, &qword_24076CCF8);
  v81 = *(v6 - 8);
  v7 = *(v81 + 8);
  MEMORY[0x28223BE20](v6);
  v75 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v76 = v18;
  v77 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v66 - v19;
  v20 = type metadata accessor for AgeMigrationContext();
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v72 = v23;
  v73 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4B9AE0);
  sub_240635B84(a1, v25, type metadata accessor for AgeMigrationContext);
  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v66 = a1;
    v30 = v29;
    v31 = v6;
    v32 = swift_slowAlloc();
    *&v83[0] = v32;
    *v30 = 136315138;
    v33 = AgeMigrationContext.description.getter();
    v35 = v34;
    sub_240635BEC(v25, type metadata accessor for AgeMigrationContext);
    v36 = sub_2405BBA7C(v33, v35, v83);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_240579000, v27, v28, "Creating new XPC session for context: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v37 = v32;
    v6 = v31;
    MEMORY[0x245CC76B0](v37, -1, -1);
    v38 = v30;
    a1 = v66;
    MEMORY[0x245CC76B0](v38, -1, -1);
  }

  else
  {

    sub_240635BEC(v25, type metadata accessor for AgeMigrationContext);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v40 = v84;
  v41 = (*(*(v39 - 8) + 56))(v84, 1, 1, v39);
  MEMORY[0x28223BE20](v41);
  *(&v66 - 2) = v40;
  type metadata accessor for MachAgeMigrationMessage();
  (*(v81 + 13))(v75, *MEMORY[0x277D85778], v6);
  sub_24075A484();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v40;
  v44 = v77;
  sub_2405B044C(v43, v77, &qword_27E4B9B88, &qword_24076CD08);
  v45 = a1;
  v46 = v73;
  sub_240635B84(v45, v73, type metadata accessor for AgeMigrationContext);
  v47 = *(v74 + 80);
  v48 = (v47 + 24) & ~v47;
  v49 = *(v71 + 80);
  v81 = v14;
  v50 = (v76 + v49 + v48) & ~v49;
  v51 = swift_allocObject();
  *(v51 + 16) = v42;
  sub_2405E150C(v44, v51 + v48, &qword_27E4B9B88, &qword_24076CD08);
  v52 = v51 + v50;
  v53 = v84;
  sub_240635FFC(v46, v52, type metadata accessor for AgeMigrationContext);
  sub_2405B044C(v53, v44, &qword_27E4B9B88, &qword_24076CD08);
  v54 = swift_allocObject();
  sub_2405E150C(v44, v54 + ((v47 + 16) & ~v47), &qword_27E4B9B88, &qword_24076CD08);
  v55 = v78;
  sub_240633554(sub_240636064, v51, sub_240636158, v54, v83);
  if (v55)
  {
    (*(v79 + 8))(v81, v80);

    v56 = v53;
  }

  else
  {
    v57 = sub_24075A3D4();
    (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
    v59 = v79;
    v58 = v80;
    v60 = v68;
    (*(v79 + 16))(v68, v81, v80);
    sub_2405F7830(v83, v82);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = (v67 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    (*(v59 + 32))(v63 + v61, v60, v58);
    sub_24058C9C0(v82, v63 + v62);
    v64 = v70;
    sub_240656510(0, 0, v70, &unk_24076CD18, v63);

    sub_2405B8A50(v64, &unk_27E4B9BF0, &qword_240762710);
    (*(v59 + 8))(v81, v58);
    sub_24058C9C0(v83, v69);
    v56 = v84;
  }

  return sub_2405B8A50(v56, &qword_27E4B9B88, &qword_24076CD08);
}

uint64_t sub_240631744(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4B9B88, &qword_24076CD08);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_240631820@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v52 = a3;
  v55 = a2;
  v59 = a1;
  v61 = a4;
  v4 = type metadata accessor for AgeMigrationContext();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v6;
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_240759C44();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v10 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_2405B044C(v55, v18, &qword_27E4B9B88, &qword_24076CD08);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      v39 = v25;
      v51 = v25;
      v40 = v7;
      v50 = *(v20 + 32);
      v55 = v20 + 32;
      v50(v39, v18, v19);
      v41 = sub_24075A3D4();
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = *(v7 + 16);
      v43 = v60;
      v42(v58, v59, v60);
      sub_240635B84(v52, v57, type metadata accessor for AgeMigrationContext);
      (*(v20 + 16))(v23, v51, v19);
      v44 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v45 = (v8 + *(v53 + 80) + v44) & ~*(v53 + 80);
      v46 = (v54 + *(v20 + 80) + v45) & ~*(v20 + 80);
      v47 = swift_allocObject();
      *(v47 + 2) = 0;
      *(v47 + 3) = 0;
      *(v47 + 4) = v27;
      (*(v40 + 32))(&v47[v44], v58, v43);
      sub_240635FFC(v57, &v47[v45], type metadata accessor for AgeMigrationContext);
      v50(&v47[v46], v23, v19);

      sub_240602F08(0, 0, v56, &unk_24076CD38, v47);

      (*(v20 + 8))(v51, v19);
      goto LABEL_10;
    }

    sub_2405B8A50(v18, &qword_27E4B9B88, &qword_24076CD08);
  }

  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v28 = sub_240759AE4();
  __swift_project_value_buffer(v28, qword_27E4B9AE0);
  v29 = *(v7 + 16);
  v30 = v60;
  v29(v10, v59, v60);
  v31 = sub_240759AC4();
  v32 = sub_24075A5E4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 136315138;
    v29(v58, v10, v30);
    v35 = sub_24075A0E4();
    v37 = v36;
    (*(v7 + 8))(v10, v30);
    v38 = sub_2405BBA7C(v35, v37, &v62);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_240579000, v31, v32, "Received a new XPC message but lost self: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245CC76B0](v34, -1, -1);
    MEMORY[0x245CC76B0](v33, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v30);
  }

LABEL_10:
  v48 = v61;
  *(v61 + 32) = 0;
  result = 0.0;
  *v48 = 0u;
  v48[1] = 0u;
  return result;
}

uint64_t sub_240631ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_240631EFC, a4, 0);
}

uint64_t sub_240631EFC()
{
  v1 = v0[2];
  sub_24062F128(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_240631F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_240759BF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v13 = sub_240759AE4();
  __swift_project_value_buffer(v13, qword_27E4B8500);
  v14 = *(v9 + 16);
  v14(v12, a1, v8);
  v15 = sub_240759AC4();
  v16 = sub_24075A5E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v7;
    *v17 = 138412290;
    sub_2406362FC(&qword_27E4B9BA0, MEMORY[0x277D855E8]);
    swift_allocError();
    v18 = a2;
    v14(v19, v12, v8);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    (*(v9 + 8))(v12, v8);
    *(v17 + 4) = v20;
    v21 = v25;
    *v25 = v20;
    a2 = v18;
    _os_log_impl(&dword_240579000, v15, v16, "XPC session cancelled: %@", v17, 0xCu);
    sub_2405B8A50(v21, &qword_27E4B92A0, &qword_240762400);
    v7 = v26;
    MEMORY[0x245CC76B0](v21, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_2405B044C(a2, v7, &qword_27E4B9B88, &qword_24076CD08);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v7, 1, v22) == 1)
  {
    return sub_2405B8A50(v7, &qword_27E4B9B88, &qword_24076CD08);
  }

  sub_24075A424();
  return (*(v23 + 8))(v7, v22);
}