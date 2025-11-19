uint64_t sub_181F7EFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2088();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_182AD2078();
  if (a2)
  {
    sub_182AD1DB8();
    swift_allocObject();

    v10 = sub_182AD1D38();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_182AD1DA8();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_181F7EF04(v10, a2);
  }

  else
  {
    v13 = sub_182AD2078();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_181F7F268(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838EF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181F7F2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_181F7F31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_181F7F3C4()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F7F454()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

unsigned __int8 *sub_181F7F4A4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 7)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030103030300uLL >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

Network::IPProtocol::ECN_optional __swiftcall IPProtocol.ECN.init(rawValue:)(Network::IPProtocol::ECN_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = Network_IPProtocol_ECN_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_181F7F518@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1822C1364();

  *a1 = v2;
  return result;
}

void sub_181F7F558(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 5)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 33);
    v14 = *(a1 + 34);
    v15 = *(a1 + 35);
    v16 = *(a1 + 36);

    if (v12 == 6)
    {
      v17 = 2;
    }

    else
    {
      v17 = v12 == 4;
    }

    if (v13 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v13 == 1;
    }

    v11 = v17 | (v18 << 8) | (v14 << 16) | (v16 << 24) | (v15 << 32);
  }

  else
  {

    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843348);
    v4 = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = DeserializationResult.description.getter();
      v10 = sub_181C64FFC(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_181A37000, v4, v5, "Failed to deserialize: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    v11 = 3;
  }

  *a2 = v11;
  *(a2 + 4) = BYTE4(v11);
}

Swift::OpaquePointer_optional __swiftcall IPProtocol.IPOptions.serialize()()
{
  v2 = sub_181F7F768(v0, *v1 | (*(v1 + 1) << 8));
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_181F7F768(uint64_t a1, uint64_t a2)
{
  v13[0] = 0x60400u >> (8 * a2);
  v13[40] = 0;
  v12[0] = BYTE1(a2);
  v12[40] = 0;
  v11[0] = BYTE2(a2);
  v11[40] = 0;
  v10[0] = BYTE4(a2);
  v10[40] = 0;
  v9[0] = BYTE3(a2);
  v9[40] = 0;
  sub_181F80BF8(v13, &v4);
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v11, &v6);
  sub_181F80BF8(v10, &v7);
  sub_181F80BF8(v9, &v8);
  v3 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  swift_arrayDestroy();
  sub_181F80C54(v9);
  sub_181F80C54(v10);
  sub_181F80C54(v11);
  sub_181F80C54(v12);
  sub_181F80C54(v13);
  return v3;
}

void IPProtocol.IPOptions.deepCopy()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t IPProtocol.IPOptions.isEqual(to:for:)(int *a1, uint8x8_t a2, uint8x8_t a3)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 4);
  v9 = *v3;
  v10 = v5;
  v7 = *a1;
  v8 = v4;
  return _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v9, &v7, a2, a3) & 1;
}

void sub_181F7F920(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t sub_181F7F934(int *a1, uint8x8_t a2, uint8x8_t a3)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 4);
  v9 = *v3;
  v10 = v5;
  v7 = *a1;
  v8 = v4;
  return _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v9, &v7, a2, a3) & 1;
}

void sub_181F7F984(uint64_t a1, char a2)
{
  if (*(v2 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843348);
    oslog = sub_182AD2678();
    v4 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_181A37000, oslog, v4, "Cannot modify static metadata", v5, 2u);
      MEMORY[0x1865DF520](v5, -1, -1);
    }
  }

  else
  {
    *v2 = a1;
    *(v2 + 8) = a2 & 1;
  }
}

void sub_181F7FA90(_BYTE *a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 9) = *a1;
  }
}

void sub_181F7FB98(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 10) = a1;
  }
}

void sub_181F7FC9C(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 11) = a1;
  }
}

void sub_181F7FDA0(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 12) = a1;
  }
}

void sub_181F7FEA4(__int16 a1)
{
  if (v1[15])
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    v1[13] = a1;
    v1[14] = HIBYTE(a1) & 1;
  }
}

uint64_t IPProtocol.IPMetadata.isEqual(to:for:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;
  return _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(&v5, &v4) & 1;
}

uint64_t sub_181F7FFEC(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;
  return _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(&v5, &v4) & 1;
}

uint64_t IPProtocol.IPInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t IPProtocol.IPInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t IPProtocol.IPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t IPProtocol.IPInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t IPProtocol.newPerProtocolOptions(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

void IPProtocol.newPerProtocolOptions(from:)(uint64_t a1@<X8>)
{

  sub_181F7F558(v2, a1);
}

uint64_t IPProtocol.newProtocolInstance()()
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t sub_181F80270()
{
  v1 = 0;
  result = sub_181F80AE0(&v1);
  qword_1EA843218 = result;
  return result;
}

uint64_t sub_181F802A0()
{
  v1 = 1;
  result = sub_181F80AE0(&v1);
  qword_1EA843220 = result;
  return result;
}

uint64_t sub_181F802D4()
{
  v1 = 2;
  result = sub_181F80AE0(&v1);
  qword_1EA843160 = result;
  return result;
}

uint64_t sub_181F80308()
{
  v1 = 3;
  result = sub_181F80AE0(&v1);
  qword_1EA843110 = result;
  return result;
}

uint64_t sub_181F80348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

void sub_181F8035C(uint64_t a1@<X8>)
{

  sub_181F7F558(v2, a1);
}

uint64_t _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  v8 = *(a1 + 14);
  v9 = *(a1 + 15);
  v10 = *(a2 + 9);
  v11 = *(a2 + 11);
  if (*(a1 + 8))
  {
    result = 0;
    if (v3 == v10)
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if (v13 != 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 8) & 1) != 0 || *a1 != *a2 || v3 != v10)
    {
      return result;
    }
  }

  if (v4 != *(a2 + 10))
  {
    return result;
  }

  if (v5 == 2)
  {
    result = 0;
    if (v11 != 2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == *(a2 + 12))
  {
    if (v8)
    {
      if (!*(a2 + 14))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == *(a2 + 13))
      {
        v14 = *(a2 + 14);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    return v9 ^ *(a2 + 15) ^ 1u;
  }

  return result;
}

unint64_t sub_181F804F0()
{
  result = qword_1EA838D08;
  if (!qword_1EA838D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D08);
  }

  return result;
}

unint64_t sub_181F80544(uint64_t a1)
{
  result = sub_181F8056C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181F8056C()
{
  result = qword_1ED40F870;
  if (!qword_1ED40F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F870);
  }

  return result;
}

unint64_t sub_181F805C0(uint64_t a1)
{
  result = sub_181F805E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181F805E8()
{
  result = qword_1EA838D10;
  if (!qword_1EA838D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D10);
  }

  return result;
}

unint64_t sub_181F8064C()
{
  result = qword_1EA838D18;
  if (!qword_1EA838D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D18);
  }

  return result;
}

unint64_t sub_181F806A4()
{
  result = qword_1ED40F868;
  if (!qword_1ED40F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F868);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IPProtocol.IPOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[5])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IPProtocol.IPOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IPProtocol.IPMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 15);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IPProtocol.IPMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 15) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_181F8087C()
{
  result = qword_1EA838D20;
  if (!qword_1EA838D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D20);
  }

  return result;
}

unint64_t sub_181F808D4()
{
  result = qword_1EA838D28;
  if (!qword_1EA838D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D28);
  }

  return result;
}

unint64_t sub_181F8092C()
{
  result = qword_1EA838D30;
  if (!qword_1EA838D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D30);
  }

  return result;
}

unint64_t sub_181F80984()
{
  result = qword_1EA838D38;
  if (!qword_1EA838D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D38);
  }

  return result;
}

unint64_t sub_181F809DC()
{
  result = qword_1EA838D40;
  if (!qword_1EA838D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D40);
  }

  return result;
}

unint64_t sub_181F80A34()
{
  result = qword_1EA838D48;
  if (!qword_1EA838D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D48);
  }

  return result;
}

unint64_t sub_181F80A8C()
{
  result = qword_1EA838D50;
  if (!qword_1EA838D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D50);
  }

  return result;
}

uint64_t sub_181F80AE0(char *a1)
{
  v5[10] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (qword_1ED4102F0 != -1)
  {
    swift_once();
  }

  *&v5[3] = xmmword_1ED411D60;
  *&v5[5] = unk_1ED411D70;
  *&v5[7] = unk_1ED411D80;
  v5[9] = qword_1ED411D90;
  v5[0] = 0;
  v5[1] = 0;
  nw_uuid_generate_insecure(v5);
  v2 = sub_182090764(v5[0], v5[1]);
  swift_beginAccess();
  if (*(v2 + 79) != 2)
  {
    v4 = v1;
    sub_181F7FA90(&v4);
    if (*(v2 + 79) != 2)
    {
      *(v2 + 79) = 1;
    }
  }

  swift_endAccess();
  return v2;
}

uint64_t sub_181F80CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD3E78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_182AD1C48();
  swift_allocObject();
  v8 = sub_182AD1C38();
  sub_182AD3E58();
  v16 = type metadata accessor for NWActorSystem();
  v15[0] = a1;

  v9 = sub_182AD1C28();
  sub_1820FA1B8(v15, v7);
  v9(v14, 0);
  if (qword_1EA8372B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EA843458);
  (*(v5 + 16))(v7, v10, v4);
  v16 = type metadata accessor for NWFileSerializationContext(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v15);
  sub_181F80E94(a2, boxed_opaque_existential_0Tm);
  v12 = sub_182AD1C28();
  sub_1820FA1B8(v15, v7);
  v12(v14, 0);
  return v8;
}

uint64_t sub_181F80E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWFileSerializationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_181F80EF8(unsigned __int8 *a1)
{
  v13 = *a1;
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1ED40FF68;
  v3 = *(&xmmword_1ED40FF68 + 1);
  v4 = unk_1ED40FF78;
  v5 = byte_1ED40FF80;
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v19 = *(v1 + 16);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  *v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v14 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  v9 = v16;
  v10 = v17;
  LOBYTE(v2) = v18;
  sub_181F49A24(v6, v7, v8);
  sub_181F49A24(v3, v4, v5);
  sub_181F48350(v9, v10, v2);
  sub_181F48350(v20, v21, v22);
  if ((v14 & 1) != 0 && (v11 = (v1 + *(*v1 + 128)), swift_beginAccess(), (v11[1] & 1) == 0))
  {
    return (v13 & ~*v11) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _nw_swift_udp_create_options()
{
  if (qword_1ED40FE40 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411BB8 + 1);
  v1 = unk_1ED411BC8;
  v2 = byte_1ED411BD0;
  v3 = xmmword_1ED411BB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0);
  swift_allocObject();
  v4 = sub_181CFD414(v3, v0, v1, v2, 0);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

BOOL _nw_udp_options_get_prefer_no_checksumTm(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  if (sub_181B4B228(a1, &unk_1EA838DF0, &unk_182AE7590, ProtocolOptions<>.udpOptions()))
  {
    v6 = a2;
    v4 = sub_181F80EF8(&v6);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_181F811EC()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FF68;
  v1 = *(&xmmword_1ED40FF68 + 1);
  v2 = unk_1ED40FF78;
  v3 = byte_1ED40FF80;
  v7 = 0uLL;
  nw_uuid_generate_insecure_0(&v7);
  v6 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D58);
  v4 = swift_allocObject();
  *(v4 + 57) = 256;
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 41) = v6;
  swift_beginAccess();
  *(v4 + 58) = 0;
  sub_181F49A24(v1, v2, v3);
  return v4;
}

unint64_t sub_181F81310@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F84710(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F8133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F84720();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_181F81394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 10);
  v9 = *(v5 + 11);
  v10 = *(v5 + 12);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 25) | ((*(v5 + 29) | (*(v5 + 31) << 16)) << 32);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 41) | ((*(v5 + 45) | (*(v5 + 47) << 16)) << 32);
  v17 = *(v5 + 48);
  v18 = *(v5 + 56);
  v19 = *(v5 + 64);
  switch(v10 >> 27)
  {
    case 1u:

      return sub_1820FDC7C(result, v7);
    case 2u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      LOBYTE(v56) = v19;
      return sub_1821067F4(result, &v42);
    case 3u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      v22 = *(sub_182107B90(result, &v42) + 16);

      return v22;
    case 4u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      return sub_1821080E0(result, &v42);
    case 5u:

      return sub_1820FDD4C(result, v7, v11, v12 | (v13 << 8), a5, v17);
    case 6u:
      v26 = *v5;
      v27 = *(v5 + 16);
      v28 = *(v5 + 8);

      return sub_1821178A0(result, v26, v28, v27, v12 | (v13 << 8));
    case 7u:
      v23 = *v5;
      v24 = *(v5 + 16);
      v25 = *(v5 + 8);

      return sub_18210A434(result, v23, v25, v24);
    case 8u:
      v29 = v12 | (v13 << 8);
      v14 = *(v14 + 16);
      v30 = v11;
      v31 = sub_182104788(result, v7);
      v42 = v31 | 2;
      v32 = sub_182117AEC(v31, &v42, v30, v29, v14);
      v21 = __OFADD__(v32, v14);
      result = v32 + v14;
      if (!v21)
      {
        return result;
      }

      __break(1u);
      goto LABEL_65;
    case 9u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15 & 1;
      result = sub_182103E7C(result);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v21 = __OFADD__(result, v14);
        result += v14;
        if (v21)
        {
          __break(1u);
LABEL_24:
          v42 = result;
          LOBYTE(v43) = v7;
          v47 = v11;
          v48 = v12 & 1;
          v52 = v14;
          LOBYTE(v53) = v15 & 1;
          v54 = v17;
          return sub_18210CCF4(result, &v42);
        }

        return result;
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    case 0xAu:

      return sub_1820FDD50(result, v7, v11);
    case 0xBu:
      v20 = v12 | (v13 << 8);

      return sub_1821243C0(result, v7, v11, v20, a5, v17);
    case 0xCu:

      return sub_1821243F0(result, v7, v11);
    case 0xDu:

      return sub_1821243F0(result, v7, v11);
    case 0xEu:

      return sub_1821243F0(result, v7, v11);
    case 0xFu:
      v20 = v12 | (v13 << 8);

      return sub_1821243C0(result, v7, v11, v20, a5, v17);
    case 0x10u:

      return sub_1821243F0(result, v7, v11);
    case 0x11u:

      return sub_1821243F0(result, v7, v11);
    case 0x12u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      v53 = v15 | (v16 << 8);
      return sub_18210B614(result, &v42);
    case 0x13u:

      return sub_1821243F0(result, v7, v11);
    case 0x14u:
      if (!*(v5 + 8))
      {
        goto LABEL_85;
      }

      if (*(v5 + 8) != 1)
      {
        return qword_182AE8DA8[result];
      }

      return 9;
    case 0x15u:
      if (*(v5 + 8))
      {
        if (*(v5 + 8) == 1)
        {
          return 9;
        }

        return qword_182AE8DA8[result];
      }

      v40 = result + 8;
      if (result >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_105;
      }

      if (v40 < 0x40)
      {
        return 9;
      }

      if (v40 < 0x4000)
      {
        return 10;
      }

      if (!(v40 >> 30))
      {
        return 12;
      }

      if (!(v40 >> 62))
      {
        return 16;
      }

      goto LABEL_96;
    case 0x16u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      return sub_18210C304(result, &v42);
    case 0x17u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12 & 1;
      v52 = v14;
      v53 = v15 | (v16 << 8);
      return sub_18210C734(result, &v42);
    case 0x18u:

      return sub_1821243B8(result, v7);
    case 0x19u:
      goto LABEL_24;
    case 0x1Au:
      v35 = *v5;
      v36 = *(v5 + 16);
      v37 = *(v5 + 8);
      v38 = *(v5 + 32);

      return sub_1821197C0(result, v35, v37, v36, v12 | (v13 << 8), v38);
    case 0x1Bu:

      return sub_1820FDC7C(result, v7);
    case 0x1Cu:
      v33 = *(v5 + 8);
      v42 = 0;
      if (v12)
      {
        return sub_18211B0D8(result, result, v33, v14, v15 | (v16 << 8), v17, &v42);
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_102;
      }

      v42 = v11;
      return sub_18211B0D8(result, result, v33, v14, v15 | (v16 << 8), v17, &v42);
    case 0x1Du:
      v34 = *(v5 + 72);
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      v56 = v19;
      v57 = v34;
      v41 = 0;
      if (v12)
      {
        return sub_1821155D8(result, &v42, &v41);
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      v41 = v11;
      return sub_1821155D8(result, &v42, &v41);
    case 0x1Eu:
LABEL_65:
      v42 = result;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      return sub_18210D46C(result, &v42);
    case 0x1Fu:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      return sub_18210DE98(result, &v42);
    default:
      if (v12)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      result = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        return result;
      }

      __break(1u);
LABEL_85:
      v39 = result + 8;
      if (result >= 0xFFFFFFFFFFFFFFF8)
      {
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
      }

      else
      {
        if (v39 < 0x40)
        {
          return 9;
        }

        if (v39 < 0x4000)
        {
          return 10;
        }

        else
        {
          if (v39 >> 30)
          {
            if (!(v39 >> 62))
            {
              return 16;
            }

LABEL_96:
            sub_182AD3EA8();
            __break(1u);
            return 9;
          }

          return 12;
        }
      }

      return result;
  }
}

void sub_181F81BC4(__int128 *a1, char a2, uint64_t a3, char **a4)
{
  v6 = v5;
  v7 = v4;
  v228 = a4;
  v8 = a1;
  memset(v88, 0, 40);
  if (*(a1 + 24) == 5)
  {
    v60 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    v9 = *(a1 + 9);
    if (v9)
    {
      v10 = *(a1 + 7);
      v11 = *(a1 + 8);
      v12 = __OFADD__(v10, v11);
      v13 = v11 + v10;
      if (v12)
      {
        goto LABEL_107;
      }

      v12 = __OFSUB__(v9, v13);
      v14 = v9 - v13;
      if (v12)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v60 = v14;
    }

    else
    {
      v60 = 0;
    }
  }

  swift_beginAccess();
  v15 = *(v4 + 16);
  if (*(v15 + 16))
  {
    v16 = a3 < 1;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    v61 = 0;
    LOBYTE(v19) = 0;
    v20 = 1;
    v62 = v8;
    while (1)
    {
      v67 = v19;
      v65 = v17;
      v66 = v18;
      v21 = *(v15 + 48);
      v83 = *(v15 + 32);
      v84 = v21;
      v22 = *(v15 + 80);
      v85 = *(v15 + 64);
      v86 = v22;
      v87 = *(v15 + 96);
      v23 = v83;
      v24 = WORD4(v83);
      v25 = v84;
      v26 = *(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32);
      v27 = BYTE9(v85);
      v28 = *(&v85 + 10) | (HIWORD(v85) << 32);
      v68 = v20;
      switch(HIDWORD(v83) >> 27)
      {
        case 1u:
          if (BYTE10(v83))
          {
            v31 = 0x10000;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31 | WORD4(v83);
          if (BYTE11(v83))
          {
            v33 = 0x1000000;
          }

          else
          {
            v33 = 0;
          }

          v8 = v62;
          v30 = v6;
          sub_1820FE918(v62, a2 & 1, v83, v32 | v33);
          goto LABEL_56;
        case 2u:
          v104 = v83;
          v105 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v106 = v84;
          v107 = BYTE8(v84);
          v108 = *(&v84 + 9);
          v110 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v109 = *(&v84 + 13);
          v111 = v85;
          v112 = WORD4(v85);
          v113 = *(&v85 + 10);
          v114 = WORD2(v28);
          v115 = v86;
          v116 = v87;
          v81 = v86;
          v82 = v87;
          v80 = v85;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D88);
          v8 = v62;
          v29 = v6;
          sub_1820FF1CC(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 3u:
          v117 = v83;
          v118 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v119 = v84;
          v120 = BYTE8(v84);
          v121 = *(&v84 + 9);
          v123 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v122 = *(&v84 + 13);
          v124 = v85;
          v125 = WORD4(v85);
          v126 = *(&v85 + 10);
          v127 = WORD2(v28);
          v128 = v86;
          v80 = v85;
          v81 = v86;
          v82 = v87;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D80);
          v8 = v62;
          v29 = v6;
          sub_1820FF51C(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 4u:
          v129 = v83;
          v130 = BYTE8(v83);
          v131 = v84;
          v132 = BYTE8(v84);
          v133 = *(&v84 + 9);
          v135 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v134 = *(&v84 + 13);
          v136 = v85;
          v8 = v62;
          v30 = v6;
          sub_1820FF868(v62, v88, a2 & 1);
          goto LABEL_56;
        case 5u:
          v8 = v62;
          v30 = v6;
          sub_1820FFC18(v62, v88, a2 & 1, v83, WORD4(v83), v84, BYTE8(v84) | (v26 << 8));
          goto LABEL_56;
        case 6u:
          v34 = BYTE8(v84) | (v26 << 8);
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_1820FEC8C(v62, v88, a2 & 1, v23, v24, v25, v34);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 7u:
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_1820FFC54(v62, a2 & 1, v23, v24, v25);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 8u:
          v58 = v88[0];
          sub_181F842F0(&v83, &v78);
          sub_181F8465C(v58);
          v78 = xmmword_182AE69F0;
          LOBYTE(v79) = 96;
          sub_181F5F494();
          swift_willThrowTypedImpl();
          sub_181F8434C(&v83);
          return;
        case 9u:
          v137 = v83;
          v138 = BYTE8(v83);
          v139 = v84;
          v140 = BYTE8(v84);
          v141 = *(&v84 + 9);
          v143 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v142 = *(&v84 + 13);
          v144 = v85;
          v145 = BYTE8(v85) & 1;
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_182100008(v62, v88, a2 & 1);
          if (!v6)
          {
            goto LABEL_63;
          }

          sub_181F8434C(&v83);
          sub_181F8434C(&v83);
          v59 = v88[0];
          goto LABEL_98;
        case 0xAu:
        case 0xCu:
        case 0xDu:
        case 0x13u:
          v8 = v62;
          v30 = v6;
          sub_1821002D0(v62, a2 & 1, v83, WORD4(v83), v84);
          goto LABEL_56;
        case 0xBu:
          v8 = v62;
          v30 = v6;
          sub_1821002FC(v62, a2 & 1, v83, WORD4(v83), v84, BYTE8(v84) | (v26 << 8));
          goto LABEL_56;
        case 0xEu:
          v8 = v62;
          v30 = v6;
          sub_1821009E4(v62, v88, a2 & 1, v83, WORD4(v83), v84);
          goto LABEL_56;
        case 0xFu:
          v8 = v62;
          v30 = v6;
          sub_182100A14(v62, v88, a2 & 1, v83, WORD4(v83), v84, BYTE8(v84) | (v26 << 8));
          goto LABEL_56;
        case 0x10u:
        case 0x11u:
          v8 = v62;
          v30 = v6;
          sub_182100E44(v62, v88, a2 & 1, v83, WORD4(v83), v84);
          goto LABEL_56;
        case 0x12u:
          v69 = v83;
          v70 = BYTE8(v83);
          v71 = v84;
          v72 = BYTE8(v84);
          v73 = *(&v84 + 9);
          v75 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v74 = *(&v84 + 13);
          v76 = v85;
          v77 = BYTE8(v85) | (BYTE9(v85) << 8) | (v28 << 16);
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_1820FEE74(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x14u:
          v69 = v83;
          v70 = BYTE8(v83);
          v71 = v84;
          v72 = BYTE8(v84);
          v73 = *(&v84 + 9);
          v75 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v74 = *(&v84 + 13);
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_182101270(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x15u:
          v69 = v83;
          v70 = BYTE8(v83);
          v71 = v84;
          v72 = BYTE8(v84);
          v73 = *(&v84 + 9);
          v75 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v74 = *(&v84 + 13);
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_182101270(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x16u:
          v146 = v83;
          v147 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v148 = v84;
          v149 = BYTE8(v84);
          v150 = *(&v84 + 9);
          v152 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v151 = *(&v84 + 13);
          v153 = v85;
          v154 = WORD4(v85);
          v155 = *(&v85 + 10);
          v156 = WORD2(v28);
          v157 = v86;
          v80 = v85;
          v81 = v86;
          v82 = v87;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D78);
          v8 = v62;
          v29 = v6;
          sub_182101620(v62, v88, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x17u:
          v158 = v83;
          v159 = BYTE8(v83);
          v160 = v84;
          v161 = BYTE8(v84) & 1;
          v162 = v85;
          v163 = BYTE8(v85) | (BYTE9(v85) << 8) | (v28 << 16);
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_1821019B0(v62, v88, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x18u:
        case 0x1Bu:
          v8 = v62;
          v30 = v6;
          sub_182101D40(v62, a2 & 1, v83, WORD4(v83));
          goto LABEL_56;
        case 0x19u:
          v164 = v83;
          v165 = BYTE8(v83);
          v166 = v84;
          v167 = BYTE8(v84) & 1;
          v168 = v85;
          v169 = BYTE8(v85) & 1;
          v170 = v86;
          sub_181F842F0(&v83, &v78);

          v8 = v62;
          v29 = v6;
          sub_182101D6C(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Au:
          v171 = v83;
          v172 = BYTE8(v83);
          v173 = v84;
          v174 = BYTE8(v84);
          v175 = *(&v84 + 9);
          v177 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v176 = *(&v84 + 13);
          v178 = v85;
          v179 = BYTE8(v85) & 1;
          v8 = v62;
          v30 = v6;
          sub_1821020BC(v62, a2 & 1);
          goto LABEL_56;
        case 0x1Cu:
          v180 = v83;
          v181 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v182 = v84;
          v183 = BYTE8(v84);
          v184 = *(&v84 + 9);
          v186 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v185 = *(&v84 + 13);
          v187 = v85;
          v188 = WORD4(v85);
          v189 = *(&v85 + 10);
          v190 = WORD2(v28);
          v191 = v86;
          v80 = v85;
          v81 = v86;
          v82 = v87;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D70);
          v8 = v62;
          v29 = v6;
          sub_182102770(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Du:
          v192 = v83;
          v193 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v194 = v84;
          v195 = BYTE8(v84);
          v196 = *(&v84 + 9);
          v198 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v197 = *(&v84 + 13);
          v199 = v85;
          v200 = WORD4(v85);
          v201 = *(&v85 + 10);
          v202 = WORD2(v28);
          v203 = v86;
          v204 = v87;
          v81 = v86;
          v82 = v87;
          v80 = v85;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D68);
          v8 = v62;
          v29 = v6;
          sub_182102AE4(v62, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Eu:
          v205 = v83;
          v206 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v207 = v84;
          v208 = BYTE8(v84);
          v209 = *(&v84 + 9);
          v211 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v210 = *(&v84 + 13);
          v212 = v85;
          v213 = WORD4(v85);
          v214 = *(&v85 + 10);
          v215 = WORD2(v28);
          v216 = v86;
          v80 = v85;
          v81 = v86;
          v82 = v87;
          *&v78 = v83;
          v79 = v84;
          *(&v78 + 1) = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v83, &v69);
          sub_181AB5D28(&v78, &v69, &qword_1EA838D60);
          v8 = v62;
          v29 = v6;
          sub_182102E54(v62, a2 & 1);
          if (v6)
          {
LABEL_99:
            sub_181F8465C(v88[0]);
            sub_181F8434C(&v83);
            goto LABEL_103;
          }

LABEL_63:
          v6 = v29;
          sub_181F8434C(&v83);
          goto LABEL_64;
        case 0x1Fu:
          v217 = v83;
          v218 = BYTE8(v83);
          v219 = v84;
          v220 = BYTE8(v84);
          v221 = *(&v84 + 9);
          v223 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v222 = *(&v84 + 13);
          v224 = v85;
          v225 = WORD4(v85);
          v226 = *(&v85 + 10);
          v227 = WORD2(v28);
          v8 = v62;
          v30 = v6;
          sub_1821031A0(v62, a2 & 1);
LABEL_56:
          v6 = v30;
          if (v30)
          {
            goto LABEL_97;
          }

          goto LABEL_64;
        default:
          v95 = v83;
          v96 = *(&v83 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v97 = v84;
          v98 = BYTE8(v84);
          v99 = *(&v84 + 9);
          v101 = (*(&v84 + 9) | ((*(&v84 + 13) | (HIBYTE(v84) << 16)) << 32)) >> 48;
          v100 = *(&v84 + 13);
          v102 = v85;
          v103 = WORD4(v85);
          v8 = v62;
          sub_1820FE590(v62, a2 & 1);
          if (v6)
          {
LABEL_97:
            v59 = v88[0];
LABEL_98:
            sub_181F8465C(v59);
            return;
          }

          v6 = 0;
          v61 |= v27;
LABEL_64:
          swift_beginAccess();
          v35 = *(v7 + 16);
          v36 = *(v35 + 2);
          if (!v36)
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v37 = *(v35 + 3);
          v38 = *(v35 + 5);
          v39 = *(v35 + 6);
          v80 = *(v35 + 4);
          v81 = v38;
          v82 = v39;
          v78 = *(v35 + 2);
          v79 = v37;
          sub_181F842F0(&v78, &v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 16) = v35;
          if (!isUniquelyReferenced_nonNull_native || (v36 - 1) > *(v35 + 3) >> 1)
          {
            v35 = sub_181F59790(isUniquelyReferenced_nonNull_native, v36, 1, v35);
            *(v7 + 16) = v35;
          }

          sub_181F8434C((v35 + 32));
          v41 = *(v35 + 2);
          memmove(v35 + 32, v35 + 112, 80 * v41 - 80);
          *(v35 + 2) = v41 - 1;
          *(v7 + 16) = v35;
          swift_endAccess();
          v42 = *v228;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_181F59790(0, *(v42 + 2) + 1, 1, v42);
          }

          v44 = *(v42 + 2);
          v43 = *(v42 + 3);
          if (v44 >= v43 >> 1)
          {
            v42 = sub_181F59790((v43 > 1), v44 + 1, 1, v42);
          }

          *(v42 + 2) = v44 + 1;
          v45 = &v42[80 * v44];
          *(v45 + 2) = v78;
          v46 = v79;
          v47 = v80;
          v48 = v82;
          *(v45 + 5) = v81;
          *(v45 + 6) = v48;
          *(v45 + 3) = v46;
          *(v45 + 4) = v47;
          *v228 = v42;
          if (v67)
          {
            if (v65)
            {
              LOBYTE(v19) = 1;
LABEL_76:
              if (v66)
              {
                sub_181F8434C(&v83);
                LOBYTE(v18) = 1;
                LOBYTE(v17) = 1;
                goto LABEL_83;
              }

              v49 = *(&v83 + 1) >> 59;
              LOBYTE(v17) = 1;
              goto LABEL_82;
            }

            v49 = *(&v83 + 1) >> 59;
            LOBYTE(v19) = 1;
          }

          else
          {
            v49 = *(&v83 + 1) >> 59;
            v19 = (*(&v83 + 1) >> 60 == 15) | (0xF3FFFF2u >> (*(&v83 + 1) >> 59));
            if (v65)
            {
              goto LABEL_76;
            }
          }

          v17 = (v49 > 0x1D) | (0xF3FFFF3u >> v49);
          if (v66)
          {
            sub_181F8434C(&v83);
            LOBYTE(v18) = 1;
            goto LABEL_83;
          }

LABEL_82:
          v18 = (v49 > 0x1D) | (0xF3FFFF2u >> v49);
          sub_181F8434C(&v83);
LABEL_83:
          v15 = *(v7 + 16);
          if (!*(v15 + 16))
          {
            goto LABEL_85;
          }

          v20 = v68 + 1;
          if (v68 >= a3)
          {
            goto LABEL_85;
          }

          break;
      }
    }
  }

  v61 = 0;
LABEL_85:
  sub_181F8465C(v88[0]);
  if (*(v8 + 24) == 5)
  {
    v50 = nw_frame_unclaimed_length(*v8);
    goto LABEL_90;
  }

  v51 = *(v8 + 9);
  if (!v51)
  {
    if (v61 & 1 | (v60 < 0))
    {
      return;
    }

    v55 = v60;
    goto LABEL_92;
  }

  v52 = *(v8 + 7);
  v53 = *(v8 + 8);
  v12 = __OFADD__(v52, v53);
  v54 = v53 + v52;
  if (v12)
  {
    goto LABEL_109;
  }

  v12 = __OFSUB__(v51, v54);
  v50 = v51 - v54;
  if (v12)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_90:
  if (v61 & 1 | (v60 < v50))
  {
    return;
  }

  v12 = __OFSUB__(v60, v50);
  v55 = v60 - v50;
  if (!v12)
  {
LABEL_92:
    if (v55 > 2)
    {
      return;
    }

    v12 = __OFSUB__(3, v55);
    v56 = 3 - v55;
    if (!v12)
    {
      v57 = *(v7 + 24);
      LOBYTE(v83) = 0;
      LOBYTE(v78) = 1;
      v88[6] = 0;
      v89 = 2;
      v90 = v57;
      v91 = v56 - (v56 > 0);
      v92 = 0;
      v93 = 0;
      v94 = 1;
      sub_1820FE590(v8, 1);
      return;
    }

LABEL_111:
    __break(1u);
    return;
  }

  __break(1u);
LABEL_102:
  sub_181F8434C(&v83);
  sub_181F8465C(v88[0]);
LABEL_103:
  sub_181F8434C(&v83);
}

uint64_t sub_181F82D80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181F82DDC(char a1)
{
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AE8B90;
  *(inited + 32) = 0;
  type metadata accessor for OutputQueue();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 2;
  *(inited + 72) = v7;
  v8 = sub_18225AFF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D98);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(v1 + 16) = a1 & 1;
  return v1;
}

uint64_t sub_181F82F10(unsigned __int8 a1, __int128 *a2)
{
  v4 = a2[4];
  v21 = a2[3];
  v22 = v4;
  v5 = a2[1];
  v20 = a2[2];
  v18 = *a2;
  v19 = v5;
  v6 = *(v3 + 32);
  if (*(v6 + 2))
  {
    v7 = sub_18224EF74(a1);
    if (v8)
    {
      v2 = *(*(v6 + 7) + 8 * v7);
      swift_beginAccess();
      v6 = *(v2 + 16);

      sub_181F842F0(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  v6 = sub_181F59790(0, *(v6 + 2) + 1, 1, v6);
  *(v2 + 16) = v6;
LABEL_4:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v6 = sub_181F59790((v10 > 1), v11 + 1, 1, v6);
  }

  *(v6 + 2) = v11 + 1;
  v12 = &v6[80 * v11];
  *(v12 + 2) = v18;
  v13 = v19;
  v14 = v20;
  v15 = v22;
  *(v12 + 5) = v21;
  *(v12 + 6) = v15;
  *(v12 + 3) = v13;
  *(v12 + 4) = v14;
  *(v2 + 16) = v6;
  swift_endAccess();
}

unint64_t sub_181F83050(unint64_t result, __int128 *a2)
{
  v3 = a2[4];
  v11 = a2[3];
  v12 = v3;
  v4 = a2[2];
  v9 = a2[1];
  v10 = v4;
  v8 = *a2;
  if (*(*(v2 + 32) + 16))
  {
    result = sub_18224EF74(result);
    if (v5)
    {
      swift_beginAccess();
      v7[2] = v10;
      v7[3] = v11;
      v7[4] = v12;
      v7[0] = v8;
      v7[1] = v9;

      sub_181F842F0(&v8, v6);
      sub_181FCCC44(0, 0, v7);
      swift_endAccess();
      sub_181F8434C(&v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_181F83128(unint64_t result)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_18224EF74(result);
  if ((v3 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = *(*(v2 + 56) + 8 * result);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = (v5 + 40);
  while (1)
  {
    v8 = *v7;
    v7 += 10;
    v9 = (1 << (v8 >> 59)) & 0x30C0000D;
    if ((v8 >> 59) > 0x1D || v9 == 0)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_181F831D0(unint64_t result)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_18224EF74(result);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = *(*(v2 + 56) + 8 * result);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *v6;
    v6 += 10;
  }

  while (v8 >> 59);
  return v7 != 0;
}

unint64_t sub_181F83258(unint64_t result)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_18224EF74(result);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = *(*(v2 + 56) + 8 * result);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_181FCCC18(0, *(v6 + 16));
  }

  else
  {
    *(v4 + 16) = sub_181F851F8(0, *(v6 + 24) >> 1);
  }

  swift_endAccess();
}

void sub_181F8330C()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v1 + 32);
    if (!*(v4 + 16))
    {
      break;
    }

    v5 = sub_18224EF74(byte_1EEF96C38[v2 + 32]);
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    v7 = *(*(v4 + 56) + 8 * v5);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *(v9 + 2);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 16) = v9;
      if ((v11 & 1) == 0)
      {
        v9 = sub_181F59790(0, v10, 1, v9);
        *(v7 + 16) = v9;
      }

      swift_arrayDestroy();
      if (v10)
      {
        v12 = &v9[80 * v10];
        v13 = *(v9 + 2) - v10;
        memmove(v9 + 32, v12 + 32, 80 * v13);
        *(v9 + 2) = v13;
      }

      *(v7 + 16) = v9;
    }

    else
    {
      v14 = v3;
      if (*(v9 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v14[2] = 0;
        v14[3] = 2 * ((v15 - 32) / 80);
      }

      *(v7 + 16) = v14;
    }

    ++v2;
    swift_endAccess();

    if (v2 == 3)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_181F834CC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, char a6)
{
  v99 = a2;
  sub_181F83BF4(0x202020100uLL >> (8 * a4), a5, &v61);
  if (!v61)
  {
    v61 = xmmword_182AE8BA0;
    LOBYTE(v62) = 16;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 4;
  }

  v34 = *(&v61 + 1);
  v35 = v62;
  v97 = 1;
  v94 = 1;
  swift_bridgeObjectRelease_n();
  v11 = *(v6 + 24);
  if (!v11 || !(*(v11 + 16) >> 62))
  {
    v12 = v97;
    LOBYTE(v61) = 4;
    v62 = 0;
    v63 = 0;
    *(&v61 + 1) = a3;
    v64 = v97;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v69 = 0;
    v71 = 0;
    v31 = v94;
    v72 = v94;
    v73 = a4;
    v76 = v34;
    v77 = v35;
    v32 = 0x202020100uLL >> (8 * a4);
    v78 = v32;
    v80 = v99;
    v81 = MEMORY[0x1E69E7CC0];
    v84 = 0;
    v83 = 0;
    v82 = 0;
    v85 = 2;
    v87 = 0;
    v88 = a4 < 3u;
    v89 = 512;
    v90 = 0;
    if (v11)
    {
      v13 = *(v11 + 16);
    }

    else
    {
      v13 = 0;
    }

    v15 = sub_182224F04(a3, v13);
    v14 = v15;
    if (v7)
    {

      v36[0] = 4;
      v38 = 0;
      v39 = 0;
      v37 = a3;
      v40 = v12;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v44 = 0;
      v45 = 0;
      v46 = v31;
      v47 = a4;
      v48 = v34;
      v49 = v35;
      v50 = v32;
      v51 = v99;
      v52 = MEMORY[0x1E69E7CC0];
      v53 = 0;
      v55 = 0;
      v54 = 0;
      v56 = 2;
      v57 = 0;
      v58 = a4 < 3u;
      v59 = 512;
      v60 = 0;
      sub_181F843A0(v36);
      return v14;
    }

    if (v16)
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      a6 = v31;
      if (byte_1EA843430 != 1)
      {
        goto LABEL_22;
      }

      if (qword_1EA837248 == -1)
      {
LABEL_15:
        v17 = sub_182AD2698();
        __swift_project_value_buffer(v17, qword_1EA843418);
        v18 = sub_182AD2678();
        v19 = sub_182AD38A8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *&v61 = v21;
          *v20 = 136315650;
          v22 = sub_182AD3BF8();
          v24 = sub_181C64FFC(v22, v23, &v61);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v61);
          *(v20 + 22) = 2080;
          *(v20 + 24) = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BD5D80, &v61);
          _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v21, -1, -1);
          MEMORY[0x1865DF520](v20, -1, -1);

          v12 = v97;
          a6 = v94;
        }

        else
        {
        }

LABEL_22:
        v61 = xmmword_182AE8BA0;
        LOBYTE(v62) = 16;
        sub_181F5F494();
        swift_willThrowTypedImpl();

        v14 = 4;
        LOBYTE(v61) = 4;
        *(&v61 + 1) = v98[0];
        DWORD1(v61) = *(v98 + 3);
        v62 = 0;
        v63 = 0;
        *(&v61 + 1) = a3;
        v64 = v12;
        *v65 = *v96;
        *&v65[3] = *&v96[3];
        v67 = 0;
        v68 = 0;
        v66 = 0;
        v69 = 0;
        *&v70[3] = *&v95[3];
        *v70 = *v95;
        v71 = 0;
        v72 = a6;
        v73 = a4;
        v74 = *&v92[7];
        v75 = v93;
        v76 = v34;
        v77 = v35;
        v78 = v32;
        *v79 = *v92;
        *&v79[3] = *&v92[3];
        v80 = v99;
        v81 = MEMORY[0x1E69E7CC0];
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 2;
        *&v86[3] = *&v91[3];
        *v86 = *v91;
        v87 = 0;
        v88 = a4 < 3u;
        v89 = 512;
        v90 = 0;
        sub_181F843A0(&v61);
        return v14;
      }

LABEL_25:
      swift_once();
      goto LABEL_15;
    }

    if (__OFSUB__(a1, v15))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_181F843F4(a6 & 1, a1 - v15);
    v26 = v25;
    v28 = v27;

    v29 = v14 + v26;
    if (__OFADD__(v14, v26))
    {
      __break(1u);
    }

    else
    {
      v14 = v29 + v28;
      if (!__OFADD__(v29, v28))
      {
        LOBYTE(v61) = 4;
        v62 = 0;
        v63 = 0;
        *(&v61 + 1) = a3;
        v64 = v12;
        v67 = 0;
        v68 = 0;
        v66 = 0;
        v69 = 0;
        v71 = 0;
        v72 = v31;
        v73 = a4;
        v76 = v34;
        v77 = v35;
        v78 = v32;
        v80 = v99;
        v81 = MEMORY[0x1E69E7CC0];
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 2;
        v87 = 0;
        v88 = a4 < 3u;
        v89 = 512;
        v90 = 0;
        sub_181F843A0(&v61);
        return v14;
      }
    }

    __break(1u);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

void sub_181F83BF4(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 32);
  if (!*(v5 + 16) || (v7 = sub_18224EF74(a1), (v8 & 1) == 0))
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD5E20);
      sub_182AD3E18();
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      v13 = sub_182AD2678();
      v14 = sub_182AD38A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v30[0] = v16;
        *v15 = 136315650;
        v17 = sub_182AD3BF8();
        v19 = sub_181C64FFC(v17, v18, v30);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v30);
        *(v15 + 22) = 2080;
        v20 = sub_181C64FFC(0, 0xE000000000000000, v30);

        *(v15 + 24) = v20;
        _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v16, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_26;
  }

  v9 = *(*(v5 + 56) + 8 * v7);
  v10 = *(a2 + 72);
  if (!v10 || (v11 = *(a2 + 80)) == 0)
  {
    v21 = qword_1EA837250;

    if (v21 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843418);
      v23 = sub_182AD2678();
      v24 = sub_182AD38A8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30[0] = v26;
        *v25 = 136315650;
        v27 = sub_182AD3BF8();
        v29 = sub_181C64FFC(v27, v28, v30);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v30);
        *(v25 + 22) = 2080;
        *(v25 + 24) = sub_181C64FFC(0xD00000000000001DLL, 0x8000000182BD5E40, v30);
        _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v26, -1, -1);
        MEMORY[0x1865DF520](v25, -1, -1);
      }
    }

LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
}

uint64_t sub_181F840C0(uint64_t result)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v3 = result;
  result = sub_18224EF74(result);
  if ((v4 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 += 10;
      if (v9 >> 59 == 2)
      {
        return 1;
      }
    }

    while (--v7);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_33;
  }

  result = sub_18224EF74(v3);
  if ((v10 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *v14;
      v14 += 10;
      if (v15 >> 59 == 3)
      {
        return 1;
      }
    }

    while (--v13);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_35;
  }

  result = sub_18224EF74(v3);
  if ((v16 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v18 = *(v17 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *v20;
      v20 += 10;
      if (v21 >> 59 == 28)
      {
        return 1;
      }
    }

    while (--v19);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_37;
  }

  result = sub_18224EF74(v3);
  if ((v22 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v23 = *(*(v2 + 56) + 8 * result);
  swift_beginAccess();
  v24 = *(v23 + 16);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return 0;
  }

  v26 = v25 - 1;
  v27 = (v24 + 40);
  do
  {
    v28 = *v27;
    v27 += 10;
    result = (v28 & 0xF800000000000000) == 0xE800000000000000;
  }

  while ((v28 & 0xF800000000000000) != 0xE800000000000000 && v26-- != 0);
  return result;
}

uint64_t sub_181F8428C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181F843F4(char a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v22 = a1;

    v23 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v6;
    while (1)
    {
      v15 = v5 + 32 + 80 * v12;
      v16 = *(v15 + 8);
      v17 = *(v15 + 41);
      v18 = v12 + 1;
      if (v16 >> 59 || (v17 & 1) == 0)
      {
        v21 = v12++;
      }

      else
      {
        if (v18 == v6)
        {
LABEL_22:

          if ((v22 & 1) == 0)
          {
            return v6;
          }

          goto LABEL_28;
        }

        if (v18 >= v14)
        {
          goto LABEL_36;
        }

        v19 = v5 + 112 + 80 * v12;
        v12 += 2;
        while (!(*(v19 + 8) >> 59) && (*(v19 + 41) & 1) != 0)
        {
          if (v6 == v12)
          {
            goto LABEL_22;
          }

          v19 += 80;
          if (v12++ >= v14)
          {
            goto LABEL_36;
          }
        }

        v21 = v12 - 1;
        v23 = 1;
      }

      result = sub_181F81394(result, v8, v9, v10, v11);
      if (__OFADD__(v13, result))
      {
        goto LABEL_37;
      }

      if (v13 + result > a2)
      {

        v6 = v21;
        goto LABEL_26;
      }

      v13 += result;
      if (v12 == v6)
      {
        break;
      }

      v14 = *(v5 + 16);
      if (v12 >= v14)
      {
        goto LABEL_36;
      }
    }

LABEL_26:
    if (v22)
    {
      if (v23)
      {
LABEL_28:
        if (!__OFSUB__(a2, v13))
        {
          return v6;
        }

        goto LABEL_38;
      }
    }

    else if (v23)
    {
      return v6;
    }

    if (v13 && v13 <= 2 && __OFSUB__(3, v13))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }
  }

  return v6;
}

uint64_t sub_181F8465C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_181F846BC()
{
  result = qword_1EA838DA0;
  if (!qword_1EA838DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838DA0);
  }

  return result;
}

unint64_t sub_181F84710(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_181F84720()
{
  result = qword_1EA838DA8;
  if (!qword_1EA838DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838DA8);
  }

  return result;
}

uint64_t _nw_protocol_options_get_hash()
{

  v0 = sub_181F85050();

  return v0;
}

uint64_t _nw_protocol_options_matches_definition(uint64_t a1, NSObject *a2)
{
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_181F84824(a1, a2);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t sub_181F84824(uint64_t a1, NSObject *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + qword_1ED411A88);

  if (v4 == 1)
  {
    v5 = *(*a1 + 128);
    swift_beginAccess();
    v6 = *(a1 + v5);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7 == a2)
      {

        is_equal = 1;
      }

      else
      {
        is_equal = nw_protocol_definition_is_equal(a2, v7);
      }
    }

    else
    {

      is_equal = 0;
    }
  }

  else
  {
    v9 = nw_protocol_definition_copy_swift_identifier(a2);
    if (v9)
    {
      v10 = *(v9 + 8);
      v11 = *(v9 + 3);
      v12 = *(v9 + 4);
      v13 = *(v9 + 40);
      swift_beginAccess();
      v14 = *(a1 + 24);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *v27 = *(a1 + 16);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      *v23 = v10;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      is_equal = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v27, v23);

      sub_181F49A24(v11, v12, v13);
      sub_181F49A24(v14, v15, v16);
    }

    else
    {
      identifier = nw_protocol_definition_get_identifier(a2);
      sub_181AAC800(identifier, v27);
      v18 = *v27;
      v11 = v28;
      v12 = v29;
      v13 = v30;
      swift_beginAccess();
      v19 = *(a1 + 24);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *v27 = *(a1 + 16);
      v28 = v19;
      v29 = v20;
      v30 = v21;
      *v23 = v18;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      is_equal = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v27, v23);
      sub_181F49A24(v19, v20, v21);
    }

    sub_181F48350(v28, v29, v30);
    sub_181F48350(v11, v12, v13);
  }

  return is_equal & 1;
}

uint64_t _nw_protocol_options_matches_identifier(uint64_t a1, uint64_t a2)
{

  sub_181AAC800(a2, &v22);
  LOWORD(a2) = v22;
  v5 = v23;
  v4 = v24;
  v13 = v23;
  v6 = v25;
  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = *(a1 + 16);
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = a2;
  v15 = v5;
  v16 = v4;
  v17 = v6;
  LOBYTE(v5) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v10 = v19;
  v11 = v20;
  LOBYTE(a2) = v21;
  sub_181F49A24(v7, v8, v9);
  sub_181F48350(v10, v11, a2);

  sub_181F48350(v13, v4, v6);
  return v5 & 1;
}

uint64_t _nw_protocol_options_copy_proxy_endpoint_for_stack()
{
  v0 = sub_181AA8428(&qword_1ED40FE08, &qword_1EA838DB8);

  sub_181F84BCC(v0, &v2);

  return v2;
}

void sub_181F84BCC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v8 = (*(a1 + 192))(ObjectType, a1);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v8 + v9, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_181B5C160(v6);
    if (EnumCaseMultiPayload == 5)
    {
      v11 = sub_181C024CC();

      v8 = v11;
    }
  }

  *a2 = v8;
}

void _nw_protocol_options_add_proxy_next_hop(uint64_t a1, void *a2)
{

  v3 = a2;
  sub_181F84F64(v3);
}

void _nw_protocol_options_enumerate_proxy_next_hops(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  sub_181F859CC(a1, v3);

  _Block_release(v3);
}

_OWORD *sub_181F84D84(__int128 *a1)
{

  v1[3] = xmmword_182AE8E90;
  v3 = qword_1ED411A90;
  v4 = sub_182AD2738();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + qword_1ED411A88) = 0;
  v5 = *(*v1 + 128);
  *(v1 + v5) = 0;
  *(v1 + *(*v1 + 136)) = 0;
  *(v1 + *(*v1 + 144)) = 0;
  v6 = v1 + *(*v1 + 152);
  *v6 = 0;
  v6[8] = 1;
  v7 = v1 + *(*v1 + 160);
  *v7 = 0;
  v7[8] = 1;
  v8 = (v1 + *(*v1 + 168));
  *v8 = 0;
  v8[1] = 0;
  *(v1 + *(*v1 + 176)) = 0;
  *(v1 + *(*v1 + 184)) = 0;
  v9 = *a1;
  *(v12 + 9) = *(a1 + 9);
  v12[0] = v9;
  sub_181BBBFDC(v12, &v11);
  sub_181F49A88(a1, &qword_1EA838E20);
  v1[1] = v12[0];
  *(v1 + 25) = *(v12 + 9);
  swift_beginAccess();
  *(v1 + v5) = 0;

  return v1;
}

uint64_t sub_181F84F64(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (!*(v2 + v4))
  {
    *(v2 + v4) = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1865D9F10]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  return swift_endAccess();
}

uint64_t sub_181F85050()
{
  sub_182AD44E8();
  swift_beginAccess();
  v1 = *(v0 + 17);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  MEMORY[0x1865DB070](*(v0 + 16));
  MEMORY[0x1865DB070](v1);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v2, v3, 1);
    sub_182AD30E8();
    sub_181F48350(v2, v3, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
    sub_181F48350(v2, v3, 0);
  }

  return sub_182AD4558();
}

void *sub_181F85168(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_181F851F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_181F8529C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x4924924924924925) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 4) + (v8 >> 63));
  return result;
}

void *sub_181F8532C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_181F853B4(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

_OWORD *sub_181F85420(__int128 *a1, uint64_t a2)
{
  v2[3] = xmmword_182AE8E90;
  v5 = qword_1ED411A90;
  v6 = sub_182AD2738();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + qword_1ED411A88) = 0;
  v7 = v2 + *(*v2 + 128);
  v7[4] = 0;
  *v7 = 3;
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  v8 = v2 + *(*v2 + 152);
  *v8 = 0;
  v8[8] = 1;
  v9 = v2 + *(*v2 + 160);
  *v9 = 0;
  v9[8] = 1;
  v10 = (v2 + *(*v2 + 168));
  *v10 = 0;
  v10[1] = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  v11 = *a1;
  *(v17 + 9) = *(a1 + 9);
  v17[0] = v11;
  *(v2 + 25) = *(a1 + 9);
  v2[1] = *a1;
  sub_181BBBFDC(v17, v14);
  sub_181F7F558(a2, &v15);
  swift_beginAccess();
  v12 = v15;
  v7[4] = v16;
  *v7 = v12;
  return v2;
}

_OWORD *sub_181F85608(__int128 *a1)
{
  v1[3] = xmmword_182AE8E90;
  v3 = qword_1ED411A90;
  v4 = sub_182AD2738();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + qword_1ED411A88) = 0;
  v5 = v1 + *(*v1 + 128);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *(v5 + 5) = 2;
  *(v1 + *(*v1 + 136)) = 0;
  *(v1 + *(*v1 + 144)) = 0;
  v6 = v1 + *(*v1 + 152);
  *v6 = 0;
  v6[8] = 1;
  v7 = v1 + *(*v1 + 160);
  *v7 = 0;
  v7[8] = 1;
  v8 = (v1 + *(*v1 + 168));
  *v8 = 0;
  v8[1] = 0;
  *(v1 + *(*v1 + 176)) = 0;
  *(v1 + *(*v1 + 184)) = 0;
  v9 = *a1;
  *(v12 + 9) = *(a1 + 9);
  v12[0] = v9;
  *(v1 + 25) = *(a1 + 9);
  v1[1] = *a1;
  swift_beginAccess();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *(v5 + 5) = 2;
  sub_181BBBFDC(v12, v11);
  return v1;
}

_OWORD *sub_181F857E0(__int128 *a1, uint64_t a2, void (*a3)(_BYTE *__return_ptr, uint64_t))
{
  v3[3] = xmmword_182AE8E90;
  v7 = qword_1ED411A90;
  v8 = sub_182AD2738();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + qword_1ED411A88) = 0;
  v9 = v3 + *(*v3 + 128);
  *v9 = 256;
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v10 = v3 + *(*v3 + 152);
  *v10 = 0;
  v10[8] = 1;
  v11 = v3 + *(*v3 + 160);
  *v11 = 0;
  v11[8] = 1;
  v12 = (v3 + *(*v3 + 168));
  *v12 = 0;
  v12[1] = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  v13 = *a1;
  *(v18 + 9) = *(a1 + 9);
  v18[0] = v13;
  *(v3 + 25) = *(a1 + 9);
  v3[1] = *a1;
  sub_181BBBFDC(v18, &v16);
  a3(v17, a2);
  swift_beginAccess();
  v14 = v17[1];
  *v9 = v17[0];
  v9[1] = v14;
  return v3;
}

uint64_t sub_181F859CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);

  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (!v6)
  {
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  result = sub_182AD3EB8();
  v7 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1865DA790](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      (*(a2 + 16))(a2, v9);
    }
  }

  return result;
}

void *sub_181F85AF0(void *__src)
{
  v3 = v1[2];
  v4 = v1[4];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v7 = v1[2];
    v5 = sub_182AD3168();
    v3 = v7;
  }

  else if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = v1[3] & 0xFFFFFFFFFFFFLL;
  }

  return memcpy(v3, __src, v5);
}

Swift::Void __swiftcall triggerApplicationServiceChanged(service:)(Swift::String service)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  if (qword_1EA8372C8 != -1)
  {
    swift_once();
  }

  v3 = sub_182AD2698();
  __swift_project_value_buffer(v3, qword_1EA843470);

  v4 = sub_182AD2678();
  v5 = sub_182AD38D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_181C64FFC(countAndFlagsBits, object, &v9);
    _os_log_impl(&dword_181A37000, v4, v5, "Triggering application service changes notification for service: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1865DF520](v7, -1, -1);
    MEMORY[0x1865DF520](v6, -1, -1);
  }

  v8 = sub_182AD3048();
  notify_post((v8 + 32));
}

uint64_t NWEndpoint.servicePayload<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NWEndpoint.txtRecord.getter(&v15);
  v4 = v15;
  if (v15 && (NWTXTRecord.subscript.getter(0x64616F6C796150, 0xE700000000000000), v6 = v5, sub_181AB612C(v4), v6) && (v7 = objc_allocWithZone(MEMORY[0x1E695DEF0]), v8 = sub_182AD2F58(), , v9 = [v7 initWithBase64EncodedString:v8 options:0], v8, v9) && (v15 = xmmword_182AE8230, sub_182AD2148(), v9, v10 = *(&v15 + 1), *(&v15 + 1) >> 60 != 15))
  {
    v11 = v15;
    sub_182AD1C48();
    swift_allocObject();
    sub_182AD1C38();
    sub_182AD1C18();
    sub_181D9D680(v11, v10);

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v12 = *(*(a1 - 8) + 56);

  return v12(a2, v14, 1, a1);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.service.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.payload.getter()
{
  v1 = *(v0 + 24);
  sub_181F49B44(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_181F8601C()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x616C696176417369;
  v4 = 0x64616F6C796170;
  if (v1 != 3)
  {
    v4 = 0x65706F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7954656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181F860C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F87034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F860F8(uint64_t a1)
{
  v2 = sub_181F86A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F86134(uint64_t a1)
{
  v2 = sub_181F86A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v22 = *(v1 + 16);
  v18 = *(v1 + 20);
  v7 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v7;
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F86A74();
  v8 = v3;
  sub_182AD4638();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_182AD40E8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v16;
  v10 = v17;
  v12 = v15;
  LOBYTE(v20) = 1;
  sub_182AD4178();
  LOBYTE(v20) = 2;
  sub_182AD40F8();
  v20 = v10;
  v21 = v11;
  v23 = 3;
  sub_181F49B44(v10, v11);
  sub_181C675F8();
  sub_182AD40D8();
  sub_181D9D680(v20, v21);
  LODWORD(v20) = v12;
  v23 = 4;
  sub_181F86AC8();
  sub_182AD4118();
  return (*(v4 + 8))(v6, v8);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F86A74();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_182AD3FC8();
  v11 = v10;
  v21 = v9;
  LOBYTE(v22) = 1;
  v12 = sub_182AD4058();
  LOBYTE(v22) = 2;
  v24 = sub_182AD3FD8();
  v25 = 3;
  sub_181C67934();
  sub_182AD3FA8();
  v19 = v22;
  v20 = v23;
  v25 = 4;
  sub_181F86B1C();
  sub_182AD3FF8();
  v14 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 20) = v14;
  v17 = v19;
  v16 = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;

  sub_181F49B44(v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_181D9D680(v17, v16);
}

uint64_t static DiscoverableApplicationServiceCoder.createConfiguration(xpcData:)()
{
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_181F86B70();
  sub_182AD1C18();
}

uint64_t static DiscoverableApplicationServiceCoder.createXPCData(discoverableService:)(void *a1)
{
  sub_182AD1C98();
  swift_allocObject();
  v3 = sub_182AD1C88();
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 40))(&v24, v4, v5);
  v31[2] = v3;
  if (v25)
  {
    sub_181F753CC(&v24, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, v29);
    v6 = sub_182AD1C68();
    if (v1)
    {

      v8 = 0;
      v9 = 0xF000000000000000;
    }

    else
    {
      v8 = v6;
      v9 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    sub_181F86BC4(&v24);
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v10 = (*(a1[4] + 8))();
  v22 = v11;
  v23 = v10;
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v12 + 16))(&v24, v13, v12);
  v14 = v24;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LOBYTE(v15) = (*(v16 + 32))(v15, v16);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = *(v17 + 24);
  sub_181F49B44(v8, v9);
  v19(v31, v18, v17);
  *&v26 = v23;
  *(&v26 + 1) = v22;
  v27 = v14;
  v28 = v15 & 1;
  v29 = v8;
  v30 = v9;
  sub_181F86C2C();
  v20 = sub_182AD1C68();
  sub_181D9D680(v8, v9);

  sub_181D9D680(v8, v9);
  return v20;
}

unint64_t sub_181F86A74()
{
  result = qword_1EA836810;
  if (!qword_1EA836810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836810);
  }

  return result;
}

unint64_t sub_181F86AC8()
{
  result = qword_1EA8364C8;
  if (!qword_1EA8364C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364C8);
  }

  return result;
}

unint64_t sub_181F86B1C()
{
  result = qword_1EA8364C0;
  if (!qword_1EA8364C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364C0);
  }

  return result;
}

unint64_t sub_181F86B70()
{
  result = qword_1EA8364D0;
  if (!qword_1EA8364D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364D0);
  }

  return result;
}

uint64_t sub_181F86BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_181F86C2C()
{
  result = qword_1EA8367F8;
  if (!qword_1EA8367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367F8);
  }

  return result;
}

unint64_t sub_181F86C84()
{
  result = qword_1EA8367F0;
  if (!qword_1EA8367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367F0);
  }

  return result;
}

unint64_t sub_181F86CDC()
{
  result = qword_1EA838EB0;
  if (!qword_1EA838EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EB0);
  }

  return result;
}

unint64_t sub_181F86D34()
{
  result = qword_1EA838EB8;
  if (!qword_1EA838EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EB8);
  }

  return result;
}

unint64_t sub_181F86D8C()
{
  result = qword_1EA838EC0;
  if (!qword_1EA838EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EC0);
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_181F86E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_181F86EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181F86F30()
{
  result = qword_1EA838EC8;
  if (!qword_1EA838EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EC8);
  }

  return result;
}

unint64_t sub_181F86F88()
{
  result = qword_1EA836800;
  if (!qword_1EA836800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836800);
  }

  return result;
}

unint64_t sub_181F86FE0()
{
  result = qword_1EA836808;
  if (!qword_1EA836808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836808);
  }

  return result;
}

uint64_t sub_181F87034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t NetworkContext.hash(into:)()
{
  nw_context_get_identifier(*(v0 + 16));
  sub_182AD3158();
  sub_182AD30E8();
}

uint64_t NetworkContext.__allocating_init(identifier:)()
{
  v0 = swift_allocObject();
  v1 = sub_182AD3048();

  v2 = nw_context_create((v1 + 32));

  *(v0 + 16) = v2;
  return v0;
}

uint64_t NetworkContext.init(identifier:)()
{
  v1 = sub_182AD3048();

  v2 = nw_context_create((v1 + 32));

  *(v0 + 16) = v2;
  return v0;
}

uint64_t NetworkContext.__allocating_init(identifier:externalScheduler:)()
{
  v0 = swift_allocObject();
  v1 = sub_182AD3048();

  v2 = nw_context_create((v1 + 32));

  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t NetworkContext.init(identifier:externalScheduler:)()
{
  v1 = sub_182AD3048();

  v2 = nw_context_create((v1 + 32));

  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

uint64_t NetworkContext.hashValue.getter()
{
  sub_182AD44E8();
  nw_context_get_identifier(*(v0 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F87480()
{
  v1 = *v0;
  sub_182AD44E8();
  nw_context_get_identifier(*(v1 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F874E8()
{
  nw_context_get_identifier(*(*v0 + 16));
  sub_182AD3158();
  sub_182AD30E8();
}

uint64_t sub_181F87544()
{
  v1 = *v0;
  sub_182AD44E8();
  nw_context_get_identifier(*(v1 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

void NetworkContext.async(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_181B7D048;
  v5[3] = &block_descriptor_3;
  v4 = _Block_copy(v5);

  nw_queue_context_async(v3, v4);
  _Block_release(v4);
}

unint64_t sub_181F87678()
{
  result = qword_1EA838ED0;
  if (!qword_1EA838ED0)
  {
    type metadata accessor for NetworkContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838ED0);
  }

  return result;
}

uint64_t HTTPRequest.url.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 56) == 0x5443454E4E4F43 && *(*v1 + 64) == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {
    v5 = v3[31];
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = v3[30];
    v7 = v3[35];
    v8 = v3[36];
    if ((sub_181CA4798(v7, v8) & 1) == 0)
    {
      sub_181F887D0(v6, v5);
      sub_182287700(v7, v8);
      sub_181D04D28(v6, v5);
    }
  }

  v9 = v3[7] == 0x534E4F4954504FLL && v3[8] == 0xE700000000000000;
  if (!v9 && (sub_182AD4268() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = v3[24];
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v3[23];
  v12 = v3[28];
  v13 = v3[29];
  if (sub_181CA4798(v12, v13))
  {
  }

  else
  {
    sub_181F887D0(v11, v10);
    v14 = sub_182287700(v12, v13);
    v45 = v15;
    v47 = a1;
    v16 = v14;
    sub_181D04D28(v11, v10);
    v12 = v16;
    v13 = v45;
    a1 = v47;
  }

  if (v12 == 42 && v13 == 0xE100000000000000)
  {

    goto LABEL_30;
  }

  v18 = sub_182AD4268();

  if (v18)
  {
LABEL_30:
    v39 = sub_182AD2058();
    v36 = *(*(v39 - 8) + 56);
    v37 = v39;
    v38 = a1;
    goto LABEL_31;
  }

LABEL_23:
  v48 = a1;
  v19 = v3[10];
  if (v19)
  {
    v20 = v3[17];
    if (v20)
    {
      v21 = v3[9];
      v46 = v3[14];
      v22 = v3[16];
      v44 = v3[15];
      v23 = v3[18];
      v24 = v3[19];
      v25 = v3[20];
      v26 = v3[21];
      v27 = v3[22];
      v50[0] = v22;
      v50[1] = v20;
      v50[2] = v23;
      v50[3] = v24;
      v51 = v25;
      v52 = v26;
      v53 = v27;
      v28 = v3[24];
      if (v28)
      {
        v41 = v19;
        v42 = v21;
        v29 = v3[23];
        v30 = v3[25];
        v31 = v3[26];
        v33 = v3[27];
        v32 = v3[28];
        v34 = v3[29];
        v54[0] = v29;
        v54[1] = v28;
        v54[2] = v30;
        v54[3] = v31;
        v55 = v33;
        v56 = v32;
        v57 = v34;
        v43 = v22;
        sub_181F887D0(v22, v20);
        sub_181F887D0(v29, v28);
        if (sub_181CA4798(v46, v44))
        {
          v49[0] = v46;
          v49[1] = v44;
          sub_181F887D0(v43, v20);
          sub_181F887D0(v29, v28);
          sub_181F887D0(v43, v20);
          sub_181F887D0(v29, v28);
          sub_181F887D0(v43, v20);
          sub_181F887D0(v29, v28);
          sub_181F887D0(v42, v41);

          sub_181F88820(v49, v50, v54, v48);

          sub_181D04D28(v43, v20);
          sub_181D04D28(v29, v28);
          sub_181D04D28(v43, v20);
          sub_181D04D28(v29, v28);
          sub_181D04D28(v43, v20);
        }

        else
        {
          sub_181F887D0(v43, v20);
          sub_181F887D0(v29, v28);
          sub_181F887D0(v43, v20);
          sub_181F887D0(v29, v28);
          sub_181F887D0(v42, v41);
          sub_1822878B4(v46, v44, v50, v54, v48);
          sub_181D04D28(v43, v20);
          sub_181D04D28(v29, v28);
          sub_181D04D28(v43, v20);
        }

        sub_181D04D28(v29, v28);

        return sub_181D04D28(v42, v41);
      }
    }
  }

  v35 = sub_182AD2058();
  v36 = *(*(v35 - 8) + 56);
  v37 = v35;
  v38 = v48;
LABEL_31:

  return v36(v38, 1, 1, v37);
}

uint64_t sub_181F87ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_181F88B84(a1, &v6 - v3);
  return HTTPRequest.url.setter(v4);
}

uint64_t HTTPRequest.url.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_182AD2058();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F88B84(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_181F88BF4(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1822C9498();

      *v2 = v12;
    }

    v13 = *(v12 + 72);
    v14 = *(v12 + 80);
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0;
    sub_181D04D28(v13, v14);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    if ((v15 & 1) == 0)
    {
      v16 = sub_1822C9498();

      *v2 = v16;
    }

    v17 = *(v16 + 128);
    v18 = *(v16 + 136);
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0;
    sub_181D04D28(v17, v18);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    if ((v19 & 1) == 0)
    {
      v20 = sub_1822C9498();

      *v2 = v20;
    }

    v21 = *(v20 + 184);
    v22 = *(v20 + 192);
    *(v20 + 184) = 0u;
    *(v20 + 200) = 0u;
    *(v20 + 216) = 0u;
    *(v20 + 232) = 0;
    sub_181D04D28(v21, v22);
    return sub_181F88BF4(a1);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_181CA3CAC();
    v25 = v24;
    v26 = sub_182AD30B8();
    v28 = v27;

    HTTPRequest.scheme.setter(v26, v28);
    if (v25)
    {
      v29 = sub_182AD30B8();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    HTTPRequest.authority.setter(v29, v31);
    v32 = sub_182AD30B8();
    v34 = v33;

    HTTPRequest.path.setter(v32, v34);
    sub_181F88BF4(a1);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_181F88284@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v12 = *(a3 + 40);
  v11 = *(a3 + 48);
  if ((sub_181CA4798(v12, v11) & 1) == 0)
  {
    return sub_182287EB8(v12, v11, a4, a5, a1, a2, a6);
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v12 = sub_18224FE14();
    v17 = v16;

    v11 = v17;
    if ((v17 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v19[0] = v12;
    v19[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    sub_181F883D4(a4, a5, a1, a2, v19, (HIBYTE(v11) & 0xF), a6);
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v12 & 0x1000000000000000) != 0)
  {
    v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v14 = (v12 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v13 = sub_182AD3CF8();
    v14 = v18;
  }

  sub_181F883D4(a4, a5, a1, a2, v13, v14, a6);
}

void sub_181F883D4(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v29 = a7;
  v13 = sub_182AD2058();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  v20 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = __OFADD__(v20, a4);
  v22 = &a4[v20];
  if (v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = __OFADD__(v22, a6);
  v23 = &a6[v22];
  if (v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v30 = sub_181ADBA10(0, v23 & ~(v23 >> 63), 0, MEMORY[0x1E69E7CC0]);
  sub_1820D4CC0(a1, a2);
  sub_1820D4BB0(3092282, 0xE300000000000000);
  sub_1820D4CC0(a3, a4);
  sub_1820D4CC0(a5, a6);
  v24 = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], v30 + 32, *(v30 + 2), 0x600u, 0, 0);
  if (v24)
  {
    v25 = v24;
    sub_182AD1FD8();
    (*(v14 + 32))(v19, v16, v13);

    v26 = *(v14 + 56);
    v26(v19, 0, 1, v13);
  }

  else
  {
    v26 = *(v14 + 56);
    v26(v19, 1, 1, v13);
  }

  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_181F88BF4(v19);
    v27 = 1;
    v28 = v29;
  }

  else
  {
    v28 = v29;
    (*(v14 + 32))(v29, v19, v13);
    v27 = 0;
  }

  v26(v28, v27, 1, v13);
}

void (*HTTPRequest.url.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HTTPRequest.url.getter(v4);
  return sub_181F88760;
}

void sub_181F88760(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_181F88B84(v3, v2);
    HTTPRequest.url.setter(v2);
    sub_181F88BF4(v3);
  }

  else
  {
    HTTPRequest.url.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_181F887D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_181F88820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    v22 = sub_18224FE14();
    v24 = v23;

    v9 = v22;
    *a1 = v22;
    a1[1] = v24;
    v10 = v24;
    if ((v24 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v10 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v13 = (v9 & 0xFFFFFFFFFFFFLL);
    }

    else
    {
      v12 = sub_182AD3CF8();
      v13 = v28;
    }

    v15 = *(a2 + 40);
    v14 = *(a2 + 48);
    if (sub_181CA4798(v15, v14))
    {
      v31 = v15;
      v32 = v14;
      sub_181F88CC0(a3, v30);
      sub_181F88CC0(a3, v30);
      sub_181F88CC0(a3, v30);

      sub_181F88A84(&v31, a3, v12, v13, a4);
      if (!v4)
      {
        goto LABEL_12;
      }

      sub_181CA27BC(a3);
      sub_181CA27BC(a3);

      __break(1u);
      goto LABEL_18;
    }

    sub_181F88CC0(a3, v30);
    v16 = a4;
    v17 = v15;
    v18 = v14;
    v19 = a3;
    v20 = v12;
    v21 = v13;
LABEL_14:
    sub_182287C24(v17, v18, v19, v20, v21, v16);
    goto LABEL_15;
  }

  v31 = v9;
  v32 = v10 & 0xFFFFFFFFFFFFFFLL;
  v26 = *(a2 + 40);
  v25 = *(a2 + 48);
  if ((sub_181CA4798(v26, v25) & 1) == 0)
  {
    sub_181F88CC0(a3, v30);
    v20 = &v31;
    v16 = a4;
    v17 = v26;
    v18 = v25;
    v19 = a3;
    v21 = (HIBYTE(v10) & 0xF);
    goto LABEL_14;
  }

  v29[0] = v26;
  v29[1] = v25;
  sub_181F88CC0(a3, v30);
  sub_181F88CC0(a3, v30);
  sub_181F88CC0(a3, v30);

  sub_181F88A84(v29, a3, &v31, (HIBYTE(v10) & 0xF), a4);
  if (!v4)
  {
LABEL_12:

    sub_181CA27BC(a3);
    sub_181CA27BC(a3);
LABEL_15:
    sub_181CA27BC(a2);
    return sub_181CA27BC(a3);
  }

LABEL_18:
  sub_181CA27BC(a3);
  sub_181CA27BC(a3);

  __break(1u);
  return result;
}

uint64_t sub_181F88A84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = a5;
    v16 = sub_18224FE14();
    v18 = v17;

    v9 = v16;
    a5 = v15;
    *a1 = v16;
    a1[1] = v18;
    v10 = v18;
    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = (HIBYTE(v10) & 0xF);
    v22[0] = v9;
    v22[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    v14 = v22;
    goto LABEL_8;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v9 & 0x1000000000000000) != 0)
  {
    v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v9 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v20 = a5;
    v21 = sub_182AD3CF8();
    a5 = v20;
    v12 = v21;
  }

  v14 = v12;
LABEL_8:
  sub_181F88284(v14, v13, a2, a3, a4, a5);
  return sub_181CA27BC(a2);
}

uint64_t sub_181F88B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F88BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_181F88C5C()
{
  result = qword_1EA838EE0;
  if (!qword_1EA838EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EE0);
  }

  return result;
}

double sub_181F88D1C()
{
  if (qword_1EA837020 != -1)
  {
    swift_once();
  }

  result = qword_1EA843200;
  *&qword_1EA843228 = qword_1EA843200;
  return result;
}

void sub_181F88D78()
{
  v1 = *v0;
  *(v1 + 138) = 0;
  v2 = *(v1 + 96);
  if (v2)
  {
    nw_context_reset_timer_block(*(v2 + 16), v1, -1, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_181F88DC0()
{
  v9 = sub_182AD3918();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 16) = nullsub_41;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = swift_slowAlloc();
  v6 = sub_181AA2FA8();
  v8[0] = &OBJC_IVAR____TtC7Network20TimerDispatchBackend_running;
  v8[1] = v6;
  sub_182AD27B8();
  v10 = MEMORY[0x1E69E7CC0];
  sub_181F8C5C0(&unk_1EA836B40, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181F8C608(&qword_1EA836B50, &unk_1EA83AB70);
  sub_182AD3AC8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 48) = sub_182AD3938();
  pthread_mutex_init(*(v0 + 40), 0);
  return v0;
}

uint64_t sub_181F89048(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_182AD27C8();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD2798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_182AD2888();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v1 + 40);
  pthread_mutex_lock(v17);
  *(v1 + 32) = 1;
  pthread_mutex_unlock(v17);
  v18 = *(v1 + 48);
  result = sub_182AD2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *v9 = a1;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E7F38], v6);
    MEMORY[0x1865D9400](v13, v9);
    (*(v7 + 8))(v9, v6);
    v20 = *(v11 + 8);
    v27 = v10;
    v28 = v20;
    v20(v13, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = a1;
    aBlock[4] = sub_181F8C1D4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7D048;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);

    v23 = v29;
    sub_182AD27B8();
    v35 = MEMORY[0x1E69E7CC0];
    sub_181F8C5C0(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
    sub_181F8C608(&qword_1ED40F4A0, &unk_1EA839F50);
    v24 = v31;
    v25 = v34;
    sub_182AD3AC8();
    MEMORY[0x1865DA470](v16, v23, v24, v22);
    _Block_release(v22);

    (*(v33 + 8))(v24, v25);
    (*(v30 + 8))(v23, v32);
    v28(v16, v27);
  }

  return result;
}

uint64_t sub_181F894E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  pthread_mutex_lock(v4);
  v5 = *(a1 + 32);
  result = pthread_mutex_unlock(v4);
  if (v5 == 1)
  {
    v7 = *(a1 + 16);

    v7(v8);

    pthread_mutex_lock(v4);
    v9 = *(a1 + 32);
    result = pthread_mutex_unlock(v4);
    if (v9 == 1)
    {
      return sub_181F89048(a2);
    }
  }

  return result;
}

uint64_t sub_181F8957C()
{
  result = pthread_mutex_destroy(*(v0 + 40));
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1865DF520](*(v0 + 40), -1, -1);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_181F89600()
{
  v1 = *v0;
  v2 = *(v1 + 40);
  pthread_mutex_lock(v2);
  *(v1 + 32) = 0;

  return pthread_mutex_unlock(v2);
}

uint64_t sub_181F89668(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  pthread_mutex_lock(v6);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return pthread_mutex_unlock(v6);
}

void sub_181F896D8()
{
  if (*(v0 + 57) == 1)
  {
LABEL_13:
    if (qword_1EA837248 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v1 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v12 = v1;
    swift_once();
    v1 = v12;
  }

  v2 = qword_1EA8387E8;
  if (is_mul_ok(v1, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = v1;
  swift_once();
  v1 = v13;
LABEL_6:
  v3 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = v1;
  swift_once();
  v1 = v14;
LABEL_8:
  if (qword_1EA8431F0)
  {
    v2 = v1 * v2 / v3 / qword_1EA8431F0;
    if (qword_1EA837020 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_10:
  v4 = v2 + qword_1EA843200;
  if (__CFADD__(v2, qword_1EA843200))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 58) = 1;
  swift_beginAccess();
  v15 = *(v0 + 64);
  v16 = *(v15 + 16);

  v17 = 0;
  v18 = 0;
LABEL_22:
  v19 = 56 * v18;
  while (1)
  {
    if (v16 == v18)
    {

      if (v17)
      {
        goto LABEL_35;
      }

      v59 = v0;
      v27 = *(*(v0 + 64) + 16);
      if (v27)
      {
        v28 = ( + 80);
        do
        {
          v29 = *(v28 - 4);
          v31 = *(v28 - 3);
          v30 = *(v28 - 2);
          v32 = *(v28 - 1);
          v33 = *v28;
          v67 = 0;
          v68 = 0xE000000000000000;

          v62 = v30;
          v63 = v32;
          oslogb = v33;
          sub_181F8C1DC(v30, v32, v33);
          sub_182AD3BA8();

          v67 = 0x2072656D6974;
          v68 = 0xE600000000000000;
          MEMORY[0x1865D9CA0](v29, v31);
          MEMORY[0x1865D9CA0](0x6E696C6461656420, 0xEA00000000002065);
          v34 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v34);

          MEMORY[0x1865D9CA0](0x20776F6E202CLL, 0xE600000000000000);
          v35 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v35);

          v36 = v68;
          v60 = v67;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v37 = sub_182AD2698();
          __swift_project_value_buffer(v37, qword_1EA843418);

          v38 = sub_182AD2678();
          v39 = sub_182AD38B8();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v67 = v41;
            *v40 = 136315650;
            v42 = sub_182AD3BF8();
            v44 = sub_181C64FFC(v42, v43, &v67);

            *(v40 + 4) = v44;
            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v67);
            *(v40 + 22) = 2080;
            v45 = sub_181C64FFC(v60, v36, &v67);

            *(v40 + 24) = v45;
            _os_log_impl(&dword_181A37000, v38, v39, "%s %s %s", v40, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v41, -1, -1);
            MEMORY[0x1865DF520](v40, -1, -1);

            sub_181F8C1EC(v62, v63, oslogb);
          }

          else
          {

            sub_181F8C1EC(v30, v63, oslogb);
          }

          v28 += 56;
          --v27;
        }

        while (v27);
        goto LABEL_50;
      }

LABEL_51:
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6080);
      v46 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v46);

      MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD60A0);
      v47 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v47);

      MEMORY[0x1865D9CA0](0x6C65636E6163202CLL, 0xED0000203F64656CLL);
      if (*(v59 + 57))
      {
        v48 = 1702195828;
      }

      else
      {
        v48 = 0x65736C6166;
      }

      if (*(v59 + 57))
      {
        v49 = 0xE400000000000000;
      }

      else
      {
        v49 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v48, v49);

      v24 = v67;
      v25 = v68;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if (v18 >= *(v15 + 16))
    {
      break;
    }

    ++v18;
    v20 = *(v15 + v19 + 40) - 1;
    v19 += 56;
    if (v20 < v4)
    {
      v61 = *(v15 + v19 - 24);
      osloga = *(v15 + v19 + 8);
      v21 = *(v15 + v19 + 16);
      v22 = *(v15 + v19 + 24);
      swift_beginAccess();
      v23 = *(v0 + 64);
      v24 = v21;
      v25 = osloga;

      sub_181F8C1DC(osloga, v24, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 64) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_18208355C(v23);
      }

      if (v18 - 1 < *(v23 + 2))
      {
        *&v23[v19 - 16] = 0;
        *(v0 + 64) = v23;
        swift_endAccess();
        if (v22)
        {

          (osloga)(v0, v61);
LABEL_33:

          sub_181F8C1EC(osloga, v24, v22);
          sub_181F8C1EC(osloga, v24, v22);
          v17 = 1;
          goto LABEL_22;
        }

        if (osloga)
        {
          _Block_copy(osloga);
          (osloga[2].isa)(osloga, v0, v61);
          goto LABEL_33;
        }

        __break(1u);
LABEL_63:
        swift_once();
LABEL_58:
        v50 = sub_182AD2698();
        __swift_project_value_buffer(v50, qword_1EA843418);

        v51 = sub_182AD2678();
        v52 = sub_182AD38C8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v67 = v54;
          *v53 = 136315650;
          v55 = sub_182AD3BF8();
          v57 = sub_181C64FFC(v55, v56, &v67);

          *(v53 + 4) = v57;
          *(v53 + 12) = 2080;
          *(v53 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v67);
          *(v53 + 22) = 2080;
          v58 = sub_181C64FFC(v24, v25, &v67);

          *(v53 + 24) = v58;
          _os_log_impl(&dword_181A37000, v51, v52, "%s %s %s", v53, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v54, -1, -1);
          MEMORY[0x1865DF520](v53, -1, -1);
        }

        else
        {
        }

        v0 = v59;
LABEL_35:
        sub_181F8A570();
        *(v0 + 58) = 0;
        return;
      }

      __break(1u);
LABEL_50:

      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_14:
  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1EA843418);
  oslog = sub_182AD2678();
  v6 = sub_182AD38C8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v69[0] = v8;
    *v7 = 136315650;
    v9 = sub_182AD3BF8();
    v11 = sub_181C64FFC(v9, v10, v69);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v69);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BD60C0, v69);
    _os_log_impl(&dword_181A37000, oslog, v6, "%s %s %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  else
  {
  }
}

void *sub_181F8A188()
{
  v1 = v0;
  *(v0 + 56) = 1;
  *(v0 + 58) = 0;
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v2 = type metadata accessor for TimerDispatchBackend();
  v3 = swift_allocObject();
  sub_181F88DC0();
  v1[5] = v2;
  v1[6] = &off_1EEF9CCD8;
  v1[2] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v5 = v1[5];
  v6 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v5);
  v7 = *(v6 + 24);

  v7(sub_181F8C5B8, v4, v5, v6);
  swift_endAccess();

  return v1;
}

uint64_t sub_181F8A2B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_181F896D8();
  }

  return result;
}

unint64_t sub_181F8A310(uint64_t a1, uint64_t a2, char *a3, const void *a4, void *a5, char a6)
{
  v11 = *(v6 + 56);
  if (!a3)
  {
    goto LABEL_11;
  }

  v12 = a3;
  result = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v14 = qword_1EA8387E8;
    if (is_mul_ok(result, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v24 = result;
    swift_once();
    result = v24;
LABEL_5:
    v15 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v25 = result;
    swift_once();
    result = v25;
LABEL_7:
    if (!qword_1EA8431F0)
    {
      __break(1u);
      return result;
    }

    v16 = result * v14 / v15 / qword_1EA8431F0;
    v17 = &v12[v16];
    if (__CFADD__(v16, v12))
    {
      __break(1u);
LABEL_11:
      v17 = 0;
    }

    swift_beginAccess();
    v12 = *(v6 + 64);

    sub_181F8C1DC(a4, a5, a6 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 64) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_181F59774(0, *(v12 + 2) + 1, 1, v12);
      *(v6 + 64) = v12;
    }

    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v20 >= v19 >> 1)
    {
      v12 = sub_181F59774((v19 > 1), v20 + 1, 1, v12);
    }

    *(v12 + 2) = v20 + 1;
    v21 = &v12[56 * v20];
    v21[32] = v11;
    *(v21 + 5) = v17;
    *(v21 + 6) = a1;
    *(v21 + 7) = a2;
    *(v21 + 8) = a4;
    *(v21 + 9) = a5;
    v21[80] = a6 & 1;
    *(v6 + 64) = v12;
    result = swift_endAccess();
    v22 = *(v6 + 56) + 1;
    if (((v22 >> 8) & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_21:
    v23 = result;
    swift_once();
    result = v23;
  }

  *(v6 + 56) = v22;
  if ((*(v6 + 58) & 1) == 0)
  {
    sub_181F8A570();
  }

  return v11;
}

void sub_181F8A570()
{
  v2 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
LABEL_45:
    swift_once();
  }

  v3 = qword_1EA8387E8;
  if (is_mul_ok(v2, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v4 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v5 = qword_1EA8431F0;
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_21;
  }

  *(v0 + 80) = 0;
  swift_beginAccess();
  v109 = *(v0 + 64);
  if (*(v109 + 16))
  {
    v83 = v2 * v3 / v4 / v5;
    v86 = v0;
    v105 = *(v109 + 16);

    v7 = v105;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (v6 + 80);
    while (1)
    {
      if (v15 >= *(v109 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v17 = *(v16 - 5);
      if (v17)
      {
        v0 = *(v16 - 48);
        v18 = *(v16 - 4);
        v1 = *(v16 - 3);
        v20 = *(v16 - 2);
        v19 = *(v16 - 1);
        v2 = *v16;
        if (v11)
        {
          if (v17 >= v9)
          {
            goto LABEL_11;
          }

          aBlockb = v13;
          v103 = v10;
          v97 = v14;
          v91 = v11;
          v94 = v12;
          v88 = v9;
          v21 = v8;

          sub_181F8C1DC(v20, v19, v2);
          sub_181F8C1FC(v21, v88, v103, v91, v94, aBlockb, v97);
        }

        else
        {

          sub_181F8C1DC(v20, v19, v2);
        }

        v7 = v105;
        v8 = v0;
        v9 = v17;
        v10 = v18;
        v11 = v1;
        v12 = v20;
        v13 = v19;
        v14 = v2;
      }

LABEL_11:
      ++v15;
      v16 += 56;
      if (v7 == v15)
      {
        v22 = v8;
        v23 = v9;
        v104 = v10;
        v24 = v12;
        v25 = v14;
        v26 = v11;

        if (!v26)
        {
          break;
        }

        v27 = v23 - v83;
        if (v23 < v83)
        {
          v27 = 0;
          goto LABEL_36;
        }

        if (!__CFADD__(v83, v27))
        {
          if (v23 == *(v86 + 80))
          {

            sub_181F8C1DC(v24, v13, v25 & 1);
            if (qword_1EA837250 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
            {

              sub_181F8C1EC(v24, v13, v25 & 1);
              goto LABEL_35;
            }

            aBlocka = v13;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v60 = sub_182AD2698();
            __swift_project_value_buffer(v60, qword_1EA843418);
            v61 = swift_allocObject();
            *(v61 + 16) = "recalculate()";
            *(v61 + 24) = 13;
            *(v61 + 32) = 2;
            v62 = swift_allocObject();
            *(v62 + 16) = sub_181F8C724;
            *(v62 + 24) = v61;
            v63 = swift_allocObject();
            *(v63 + 16) = 1564427099;
            *(v63 + 24) = 0xE400000000000000;
            v81 = swift_allocObject();
            *(v81 + 16) = 0xD000000000000017;
            *(v81 + 24) = 0x8000000182BD6040;
            v64 = sub_182AD2678();
            v65 = sub_182AD38A8();
            v85 = swift_allocObject();
            *(v85 + 16) = 32;
            v87 = swift_allocObject();
            *(v87 + 16) = 8;
            v66 = swift_allocObject();
            *(v66 + 16) = sub_181F8C71C;
            *(v66 + 24) = v62;
            v67 = swift_allocObject();
            *(v67 + 16) = sub_181F8C718;
            *(v67 + 24) = v66;
            v90 = v67;
            v93 = swift_allocObject();
            *(v93 + 16) = 32;
            v96 = swift_allocObject();
            *(v96 + 16) = 8;
            v68 = swift_allocObject();
            *(v68 + 16) = sub_181F8C720;
            *(v68 + 24) = v63;
            v69 = swift_allocObject();
            *(v69 + 16) = sub_181F8C718;
            *(v69 + 24) = v68;
            v99 = v69;
            v108 = swift_allocObject();
            *(v108 + 16) = 32;
            v112 = swift_allocObject();
            *(v112 + 16) = 8;
            v70 = swift_allocObject();
            *(v70 + 16) = sub_181F8C720;
            *(v70 + 24) = v81;
            v71 = swift_allocObject();
            *(v71 + 16) = sub_181F8C718;
            *(v71 + 24) = v70;
            v72 = v65;
            v73 = v65;
            v74 = v64;
            if (os_log_type_enabled(v64, v73))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v113 = v76;
              v114 = 0;
              *v75 = 770;
              v82 = v76;
              v115 = v75 + 2;
              v116 = sub_181F8C728;
              v117 = v85;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v87;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v90;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v93;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v96;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v99;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v108;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v112;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v71;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              _os_log_impl(&dword_181A37000, v74, v72, "%s %s %s", v75, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v82, -1, -1);
              MEMORY[0x1865DF520](v75, -1, -1);

              sub_181F8C1EC(v24, aBlocka, v25 & 1);

              v36 = v22;
              v37 = v23;
              v38 = v104;
              v39 = v26;
              v40 = v24;
              v41 = aBlocka;
            }

            else
            {

              v13 = aBlocka;
              sub_181F8C1EC(v24, aBlocka, v25 & 1);

LABEL_35:
              v36 = v22;
              v37 = v23;
              v38 = v104;
              v39 = v26;
              v40 = v24;
              v41 = v13;
            }

LABEL_43:
            sub_181F8C1FC(v36, v37, v38, v39, v40, v41, v25);
            return;
          }

LABEL_36:
          *(v86 + 57) = 0;
          if (__CFADD__(v83, v27))
          {
            __break(1u);
          }

          else
          {
            *(v86 + 80) = v83 + v27;

            sub_181F8C1DC(v24, v13, v25 & 1);
            if (qword_1EA837020 == -1)
            {
              goto LABEL_38;
            }
          }

          swift_once();
LABEL_38:
          v42 = qword_1EA843200;
          if (qword_1EA843200)
          {
            if (qword_1EA837250 == -1)
            {
LABEL_40:
              v16 = v13;
              v1 = v27 / v42;
              if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
              {
LABEL_42:
                swift_beginAccess();
                v43 = *(v86 + 40);
                v44 = *(v86 + 48);
                __swift_mutable_project_boxed_opaque_existential_1(v86 + 16, v43);
                (*(v44 + 16))(v1, v43, v44);
                swift_endAccess();

                sub_181F8C1EC(v24, v16, v25 & 1);
                v36 = v22;
                v37 = v23;
                v38 = v104;
                v39 = v26;
                v40 = v24;
                v41 = v16;
                goto LABEL_43;
              }

LABEL_57:
              v116 = 0;
              v117 = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD6020);
              v45 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v45);

              MEMORY[0x1865D9CA0](0x28206365737520, 0xE700000000000000);
              v46 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v46);

              MEMORY[0x1865D9CA0](0x776F6E202C736D20, 0xE900000000000020);
              v115 = v83;
              v47 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v47);

              MEMORY[0x1865D9CA0](0x2063736564202CLL, 0xE700000000000000);
              MEMORY[0x1865D9CA0](v104, v26);
              MEMORY[0x1865D9CA0](41, 0xE100000000000000);
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v48 = sub_182AD2698();
              __swift_project_value_buffer(v48, qword_1EA843418);
              v49 = swift_allocObject();
              *(v49 + 16) = "recalculate()";
              *(v49 + 24) = 13;
              *(v49 + 32) = 2;
              v50 = swift_allocObject();
              *(v50 + 16) = sub_181F8C258;
              *(v50 + 24) = v49;
              v106 = swift_allocObject();
              *(v106 + 16) = 1564427099;
              *(v106 + 24) = 0xE400000000000000;
              v110 = swift_allocObject();
              *(v110 + 16) = 0;
              *(v110 + 24) = 0xE000000000000000;

              oslog = sub_182AD2678();
              v51 = sub_182AD38A8();
              v80 = swift_allocObject();
              *(v80 + 16) = 32;
              v84 = swift_allocObject();
              *(v84 + 16) = 8;
              v52 = swift_allocObject();
              *(v52 + 16) = sub_181F8C264;
              *(v52 + 24) = v50;
              v53 = swift_allocObject();
              *(v53 + 16) = sub_181F8C27C;
              *(v53 + 24) = v52;
              v89 = v53;
              v92 = swift_allocObject();
              *(v92 + 16) = 32;
              v95 = swift_allocObject();
              *(v95 + 16) = 8;
              v54 = swift_allocObject();
              *(v54 + 16) = sub_181F8C26C;
              *(v54 + 24) = v106;
              v55 = swift_allocObject();
              *(v55 + 16) = sub_181F8C718;
              *(v55 + 24) = v54;
              v98 = v55;
              aBlock = swift_allocObject();
              aBlock[16] = 32;
              v107 = swift_allocObject();
              *(v107 + 16) = 8;
              v56 = swift_allocObject();
              *(v56 + 16) = sub_181F8C26C;
              *(v56 + 24) = v110;
              v57 = swift_allocObject();
              *(v57 + 16) = sub_181F8C718;
              *(v57 + 24) = v56;
              v111 = v57;
              v78 = v51;
              if (os_log_type_enabled(oslog, v51))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v113 = v59;
                v114 = 0;
                *v58 = 770;
                v77 = v59;
                v115 = v58 + 2;
                v116 = sub_181F8C274;
                v117 = v80;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v84;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C284;
                v117 = v89;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v92;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v95;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C714;
                v117 = v98;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = aBlock;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v107;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C714;
                v117 = v111;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                _os_log_impl(&dword_181A37000, oslog, v78, "%s %s %s", v58, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v77, -1, -1);
                MEMORY[0x1865DF520](v58, -1, -1);
              }

              else
              {
              }

              goto LABEL_42;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_57;
      }
    }
  }

  if (qword_1EA837250 != -1)
  {
    goto LABEL_51;
  }

LABEL_21:
  if (byte_1EA843430 == 1)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v28 = sub_182AD2698();
    __swift_project_value_buffer(v28, qword_1EA843418);
    v29 = sub_182AD2678();
    v30 = sub_182AD38A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v116 = v32;
      *v31 = 136315650;
      v33 = sub_182AD3BF8();
      v35 = sub_181C64FFC(v33, v34, &v116);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v116);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_181C64FFC(0xD000000000000015, 0x8000000182BD6000, &v116);
      _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v32, -1, -1);
      MEMORY[0x1865DF520](v31, -1, -1);
    }
  }

  sub_181F8BB34(0);
}

uint64_t sub_181F8BA68(unsigned __int8 a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (1)
    {
      v8 = *v7;
      v7 += 56;
      if (v8 == a1)
      {
        break;
      }

      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_182023298(v6, v9);
    v15 = v10;
    v13 = v11;
    v14 = v12;
    swift_endAccess();
    sub_181F8C28C(&v15);
    return sub_181F8C2E0(&v13);
  }

  return result;
}

uint64_t sub_181F8BB34(char a1)
{
  v2 = v1;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1EA843418);
  v5 = sub_182AD2678();
  v6 = sub_182AD3898();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v15 = v8;
    *v7 = 136315650;
    v9 = sub_182AD3BF8();
    v11 = sub_181C64FFC(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v15);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_181C64FFC(0x676E6970706F7473, 0xEE0072656D697420, &v15);
    _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  *(v2 + 57) = 1;
  if (a1)
  {
    swift_beginAccess();
    *(v2 + 64) = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v12);
  (*(v13 + 8))(v12, v13);
  result = swift_endAccess();
  if (a1)
  {
    v16 = &type metadata for TimerNullBackend;
    v17 = &off_1EEF9D340;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    sub_181F3CF20(&v15, v2 + 16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_181F8BDB8(unsigned __int8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 56;
      if (v7 == a1)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return 0;
      }
    }

    if (v5)
    {
      swift_beginAccess();
      sub_182084BBC(0, v5);
      swift_endAccess();
    }
  }

  return 0;
}

void sub_181F8BE74(unsigned __int8 a1, char *a2)
{
  v4 = sub_181F8BDB8(a1);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    if (!a2)
    {
      swift_beginAccess();
      a2 = *(v2 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 64) = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_16:
        if (v6 < *(a2 + 2))
        {
          *&a2[56 * v6 + 40] = 0;
          *(v2 + 64) = a2;
LABEL_18:
          swift_endAccess();
          if ((*(v2 + 58) & 1) == 0)
          {
            sub_181F8A570();
          }

          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_31:
      a2 = sub_18208355C(a2);
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

    swift_beginAccess();
    v7 = *(v2 + 64);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v7;
    if (v8)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = sub_18208355C(v7);
      v7 = v8;
      *(v2 + 64) = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v6 < *(v7 + 16))
        {
          v8 = mach_continuous_time();
          if (qword_1EA837030 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        v15 = v8;
        swift_once();
        v8 = v15;
LABEL_7:
        v9 = qword_1EA8387E8;
        if (is_mul_ok(v8, qword_1EA8387E8))
        {
          if (qword_1EA837038 == -1)
          {
            goto LABEL_9;
          }
        }

        else
        {
          __break(1u);
        }

        v16 = v8;
        swift_once();
        v8 = v16;
LABEL_9:
        v10 = qword_1EA8387F0;
        if (qword_1EA8387F0)
        {
          if (qword_1EA837010 == -1)
          {
LABEL_11:
            if (qword_1EA8431F0)
            {
              v11 = v8 * v9 / v10 / qword_1EA8431F0;
              v12 = __CFADD__(v11, a2);
              v13 = &a2[v11];
              if (!v12)
              {
                *(v7 + 56 * v6 + 40) = v13;
                *(v2 + 64) = v7;
                goto LABEL_18;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          __break(1u);
        }

        v17 = v8;
        swift_once();
        v8 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_181F8C090()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181F8C11C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F8C164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_181F8C1DC(const void *a1, void *aBlock, char a3)
{
  if (a3)
  {
  }

  else
  {
    return _Block_copy(a1);
  }
}

void sub_181F8C1EC(const void *a1, void *aBlock, char a3)
{
  if (a3)
  {
  }

  else
  {
    _Block_release(a1);
  }
}

void sub_181F8C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6, char a7)
{
  if (a4)
  {

    sub_181F8C1EC(a5, a6, a7 & 1);
  }
}

unint64_t sub_181F8C310(unint64_t a1, unint64_t a2)
{
  if (a2 >= a1)
  {
    return a2 - a1;
  }

  v16[10] = v2;
  v16[11] = v3;
  sub_182AD3BA8();

  v16[0] = 0x6974207472617473;
  v16[1] = 0xEB0000000020656DLL;
  v5 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v5);

  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6110);
  v6 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v6);

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0x6974207472617473, 0xEB0000000020656DLL, v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F8C5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_181F8C608(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_181F8C66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_181F8C6B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t NWBrowser.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_181F9A300(a1, a2);

  return v4;
}

Swift::Void __swiftcall NWBrowser.cancel()()
{
  if (nw_utilities_minos_atleast(1))
  {
    v1 = *(v0 + 24);
    os_unfair_lock_lock((v1 + 80));
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    sub_181A554F4(v2);
    v3 = *(v1 + 56);
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    sub_181A554F4(v3);
    os_unfair_lock_unlock((v1 + 80));
  }

  v4 = *(v0 + 16);

  nw_browser_cancel(v4);
}

void NWBrowser.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 20);
  sub_181F9A428(&v5[4]);
  os_unfair_lock_unlock(v5 + 20);
  if (a1)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181F9A484;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91420;
    aBlock[3] = &block_descriptor_5;
    v8 = _Block_copy(aBlock);

    nw_browser_set_state_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1);
  }

  else
  {
    nw_browser_set_state_changed_handler(*(v2 + 16), 0);
  }
}

void NWBrowser.browseResultsChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 20);
  sub_181F9A4E0(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 20);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_181F9A550;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91E14;
    aBlock[3] = &block_descriptor_6;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1);

    nw_browser_set_browse_results_changed_handler(v7, v9);
    sub_181A554F4(a1);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1);
  }
}

void NWBrowser.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 80));
  sub_181F9A55C(v4 + 16);
  os_unfair_lock_unlock((v4 + 80));
  os_unfair_lock_lock((v4 + 80));
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181F9A5AC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5);
  os_unfair_lock_unlock((v4 + 80));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181F9A5A8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10);
  sub_181AA39C0(v10);
  NWBrowser.browseResultsChangedHandler.setter(v10, v9);
  sub_181A554F4(v10);
  sub_181A554F4(v10);
  v11 = *(v2 + 16);
  nw_browser_set_queue(v11, a1);
  nw_browser_start(v11);
}

uint64_t NWBrowser.debugDescription.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t static NWBrowser.Descriptor.Options.constructPredicate(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_182AD1F48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F7DC14();
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  sub_181F7F268(&qword_1EA836670);
  sub_182AD1C08();
  (*(v3 + 8))(v5, v2);

  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t NWBrowser.Descriptor.Options.init(scope:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0x7F000000FFLL;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_182AE8230;
  *(a2 + 40) = 0;
  v4 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 8) = v3;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:predicate:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0x7F000000FFLL;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_182AE8230;
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  v8 = *(v7 - 8);
  v10 = *(v8 + 56);
  v10(a3 + v6, 1, 1, v7);
  *(a3 + 8) = v5;
  sub_181F49A88(a3 + v6, &qword_1EA838D00);
  (*(v8 + 32))(a3 + v6, a2, v7);

  return (v10)(a3 + v6, 0, 1, v7);
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 8) = 0x7F000000FFLL;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_182AE8230;
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  result = (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *(a3 + 8) = v5;
  *a3 = a2;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a3;
  *(a4 + 8) = 0x7F000000FFLL;
  *(a4 + 16) = 0;
  *(a4 + 24) = xmmword_182AE8230;
  *(a4 + 40) = 0;
  v8 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  *a4 = a2;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:rssiThreshold:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  *(a5 + 8) = 0x7F000000FFLL;
  *(a5 + 16) = 0;
  *(a5 + 24) = xmmword_182AE8230;
  v10 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  result = (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a2;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 40) = a4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.deviceFilter.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.customService.getter()
{
  v1 = *(v0 + 24);
  sub_181F49B44(v1, *(v0 + 32));
  return v1;
}

uint64_t NWBrowser.Descriptor.Options.customService.setter(uint64_t a1, uint64_t a2)
{
  result = sub_181D9D680(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.predicate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);

  return sub_181F9A5FC(a1, v3);
}

double NWBrowser.Descriptor.PairingConfiguration.init(pairingType:)@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF8);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_182AE9730;
  *a1 = v2;
  return result;
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.preferredPairingTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_181F8D608()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x54676E6972696170;
  }
}

uint64_t sub_181F8D650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079;
  if (v6 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000182BD6290 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_181F8D738(uint64_t a1)
{
  v2 = sub_181F9A66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8D774(uint64_t a1)
{
  v2 = sub_181F9A66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9A66C();
  sub_182AD4638();
  v12 = 0;
  sub_181F9A6C0();
  sub_182AD4118();
  if (!v2)
  {
    v10[1] = v8;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0);
    sub_181F9A768(&qword_1EA838F20, sub_181F9A6C0);
    sub_182AD4118();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9A66C();
  sub_182AD45E8();
  if (!v2)
  {
    v12 = 0;
    sub_181F9A714();
    sub_182AD3FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0);
    v11 = 1;
    sub_181F9A768(&unk_1EA8399E0, sub_181F9A714);
    sub_182AD3FF8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

nw_browse_descriptor_t sub_181F8DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD1F48();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = sub_182AD3048();
  application_service = nw_browse_descriptor_create_application_service((v14 + 32));

  nw_browse_descriptor_set_browse_scope(application_service, *(a3 + 8));
  nw_browse_descriptor_set_device_types(application_service, *(a3 + 12));
  nw_browse_descriptor_set_rssi_threshold(application_service, *(a3 + 40));
  v16 = *(*a3 + 16);
  if (v16)
  {
    v17 = *a3 + 40;
    do
    {
      v18 = sub_182AD3048();
      nw_browse_descriptor_add_device_filter(application_service, v18 + 32);

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  v19 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  sub_181AB5D28(a3 + *(v19 + 40), v9, &qword_1EA838D00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA838D00);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_181F7DC14();
    sub_182AD1C98();
    swift_allocObject();
    sub_182AD1C88();
    sub_181F7F268(&unk_1EA836660);
    v20 = sub_182AD1C58();
    v22 = v21;

    swift_unknownObjectRetain();
    sub_181F49B58(v20, v22);
    sub_181F9A10C(v20, v22, application_service, v20, v22);
    sub_181C1F2E4(v20, v22);
    sub_181C1F2E4(v20, v22);
    (*(v25 + 8))(v6, v26);
    (*(v11 + 8))(v13, v10);
  }

  nw_browse_descriptor_set_discover_application_service_endpoints_only(application_service, *(a3 + 16));
  return application_service;
}

nw_browse_descriptor_t NWBrowser.Descriptor.nw.getter()
{
  v1 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_181F9A8DC(v0, v6, type metadata accessor for NWBrowser.Descriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v6 + 1);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *v6;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40);
      sub_181F9A800(&v6[*(v21 + 48)], v3, type metadata accessor for NWBrowser.Descriptor.Options);
      application_service = sub_181F8DBC0(v20, v8, v3);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v13 = v6[16];
        v14 = sub_182AD3048();

        application_service = nw_browse_descriptor_create_application_service((v14 + 32));

        nw_browse_descriptor_set_invitation_scope(application_service, v13 + 1);
        return application_service;
      }

      v23 = *(v6 + 2);
      v24 = *(v6 + 3);
      v25 = *v6;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48);
      sub_181F9A800(&v6[*(v26 + 64)], v3, type metadata accessor for NWBrowser.Descriptor.Options);
      application_service = sub_181F8DBC0(v25, v8, v3);

      swift_unknownObjectRetain_n();
      sub_181F964BC(v23, v24, application_service);
      sub_181C1F2E4(v23, v24);
      swift_unknownObjectRelease();
    }

    sub_181F9A9B8(v3, type metadata accessor for NWBrowser.Descriptor.Options);
    return application_service;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v6 + 3);
      v10 = sub_182AD3048();

      if (v9)
      {
        v11 = sub_182AD3048();

        v12 = (v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      application_service = nw_browse_descriptor_create_bonjour_service((v10 + 32), v12);

      swift_unknownObjectRelease();
      nw_browse_descriptor_set_include_txt_record(application_service, 1);
    }

    else
    {
      v22 = sub_182AD3048();

      application_service = nw_browse_descriptor_create_application_service((v22 + 32));
    }
  }

  else
  {
    v16 = *(v6 + 3);
    v17 = sub_182AD3048();

    if (v16)
    {
      v18 = sub_182AD3048();

      v19 = (v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    application_service = nw_browse_descriptor_create_bonjour_service((v17 + 32), v19);

    swift_unknownObjectRelease();
  }

  return application_service;
}

uint64_t NWBrowser.Descriptor.init(_:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_182AD2088();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NWBrowser.Descriptor(0);
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type = nw_browse_descriptor_get_type(a1);
  if (type == 2)
  {
    application_service_name = nw_browse_descriptor_get_application_service_name(a1);
    if (!application_service_name)
    {
      goto LABEL_12;
    }

    v70 = application_service_name;
    v68 = v4;
    invitation_scope = nw_browse_descriptor_get_invitation_scope(a1);
    v23 = invitation_scope > 3;
    v71 = invitation_scope;
    v24 = 0x2010003u >> (8 * invitation_scope);
    if (invitation_scope > 3)
    {
      v24 = 3;
    }

    device_types = v24;
    v76[0] = 0;
    v25 = nw_browse_descriptor_copy_custom_service(a1, v76);
    v26 = v76[0];
    v72 = a2;
    if (v76[0] < 1)
    {
      v32 = 0;
      v33 = 0xF000000000000000;
    }

    else
    {
      v67 = v11;
      v65 = v23;
      v27 = *MEMORY[0x1E6969000];
      v28 = *(v8 + 104);
      v66 = v25;
      v28(v10, v27, v7);
      sub_182AD2078();
      v30 = v29;
      sub_182AD1DB8();
      swift_allocObject();

      v31 = sub_182AD1D38();
      if (v26 < 0xF)
      {
        v66 = v30;
        v36 = sub_182AD1D58();
        if (v36)
        {
          v37 = sub_182AD1D88();
          v11 = v67;
          if (__OFSUB__(0, v37))
          {
            goto LABEL_41;
          }

          v36 -= v37;
        }

        else
        {
          v11 = v67;
        }

        v38 = sub_182AD1D78();
        if (v38 >= v26)
        {
          v39 = v26;
        }

        else
        {
          v39 = v38;
        }

        v40 = &v36[v39];
        if (v36)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = sub_181E68460(v36, v41);
        v44 = v43;

        (*(v8 + 8))(v10, v7);
        v32 = v42;
        v33 = v44 & 0xFFFFFFFFFFFFFFLL;
        a2 = v72;
        v23 = v65;
      }

      else
      {

        (*(v8 + 8))(v10, v7);
        if (v26 >= 0x7FFFFFFF)
        {
          sub_182AD20C8();
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          *(v32 + 24) = v26;
          v33 = v31 | 0x8000000000000000;
        }

        else
        {
          v32 = v26 << 32;
          v33 = v31 | 0x4000000000000000;
        }

        a2 = v72;
        v23 = v65;
        v11 = v67;
      }
    }

    if (((v23 | (1u >> (v71 & 0xF))) & 1) == 0)
    {
      v57 = sub_182AD3158();
      v59 = v58;
      sub_181D9D680(v32, v33);
      swift_unknownObjectRelease();
      *v13 = v57;
      *(v13 + 1) = v59;
      v13[16] = device_types;
LABEL_36:
      swift_storeEnumTagMultiPayload();
      v60 = 0;
LABEL_37:
      sub_181F9A800(v13, a2, type metadata accessor for NWBrowser.Descriptor);
      (*(v73 + 56))(a2, 0, 1, v11);
      return sub_181A554F4(v60);
    }

    v66 = v32;
    LODWORD(v71) = nw_browse_descriptor_get_browse_scope(a1);
    device_types = nw_browse_descriptor_get_device_types(a1);
    LODWORD(v67) = nw_browse_descriptor_get_rssi_threshold(a1);
    v75 = MEMORY[0x1E69E7CC0];
    v45 = swift_allocObject();
    *(v45 + 16) = &v75;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F4D2B4;
    *(v46 + 24) = v45;
    aBlock[4] = sub_181B77470;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7749C;
    aBlock[3] = &block_descriptor_21;
    v47 = _Block_copy(aBlock);

    nw_browse_descriptor_enumerate_device_filters(a1, v47);
    _Block_release(v47);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v49 = v75;
      *(v6 + 1) = 0x7F000000FFLL;
      v6[16] = 0;
      *(v6 + 24) = xmmword_182AE8230;
      v50 = *(v68 + 40);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
      (*(*(v51 - 8) + 56))(&v6[v50], 1, 1, v51);
      *v6 = v49;
      v52 = device_types;
      *(v6 + 2) = v71;
      *(v6 + 3) = v52;
      *(v6 + 10) = v67;
      if (v33 >> 60 == 15)
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40) + 48);

        v54 = sub_182AD3158();
        v56 = v55;
        swift_unknownObjectRelease();
        *v13 = v54;
        *(v13 + 1) = v56;
      }

      else
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48) + 64);

        v61 = sub_182AD3158();
        v63 = v62;
        swift_unknownObjectRelease();
        *v13 = v61;
        *(v13 + 1) = v63;
        *(v13 + 2) = v66;
        *(v13 + 3) = v33;
      }

      a2 = v72;
      sub_181F9A800(v6, &v13[v53], type metadata accessor for NWBrowser.Descriptor.Options);
      swift_storeEnumTagMultiPayload();

      v60 = sub_181F4D2B4;
      goto LABEL_37;
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (type == 1)
  {
    nw_browse_descriptor_get_bonjour_service_type(a1);
    v15 = sub_182AD3158();
    v17 = v16;
    if (nw_browse_descriptor_get_bonjour_service_domain(a1))
    {
      v18 = sub_182AD3158();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    nw_browse_descriptor_get_include_txt_record(a1);
    swift_unknownObjectRelease();
    *v13 = v15;
    *(v13 + 1) = v17;
    *(v13 + 2) = v18;
    *(v13 + 3) = v20;
    goto LABEL_36;
  }

LABEL_12:
  swift_unknownObjectRelease();
  v34 = *(v73 + 56);

  return v34(a2, 1, 1, v11);
}

uint64_t NWBrowser.Descriptor.init(name:pairingConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  sub_181F9A868();
  v6 = sub_182AD1C68();
  v8 = v7;

  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48) + 64);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v8;
  *v9 = MEMORY[0x1E69E7CC0];
  *(v9 + 1) = 0x7F000000FFLL;
  v9[16] = 0;
  *(v9 + 24) = xmmword_182AE8230;
  *(v9 + 10) = 0;
  v10 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *(v9 + 2) = 255;
  type metadata accessor for NWBrowser.Descriptor(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_181F8ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F8ED4C(uint64_t a1)
{
  v2 = sub_181F9AFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8ED88(uint64_t a1)
{
  v2 = sub_181F9AFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8EDC4()
{
  if (*v0)
  {
    return 0x6974617469766E69;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_181F8EEE0(uint64_t a1)
{
  v2 = sub_181F9AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8EF1C(uint64_t a1)
{
  v2 = sub_181F9AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8EF58()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_181F8F068(uint64_t a1)
{
  v2 = sub_181F9AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F0A4(uint64_t a1)
{
  v2 = sub_181F9AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F0E0(uint64_t a1)
{
  v2 = sub_181F9B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F11C(uint64_t a1)
{
  v2 = sub_181F9B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_181F8F230(uint64_t a1)
{
  v2 = sub_181F9B04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F26C(uint64_t a1)
{
  v2 = sub_181F9B04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_181F8F2A8()
{
  v1 = *v0;
  v2 = 0x72756F6A6E6F62;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181F8F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F9D478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F8F3A4(uint64_t a1)
{
  v2 = sub_181F9AE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F3E0(uint64_t a1)
{
  v2 = sub_181F9AE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F41C()
{
  v1 = 0x65536D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F9D674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F8F4A4(uint64_t a1)
{
  v2 = sub_181F9AEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F4E0(uint64_t a1)
{
  v2 = sub_181F9AEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F51C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for NWBrowser.Result(0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v27 = v8;
    *v11 = a1;
    v12 = swift_unknownObjectRetain();
    endpoint = nw_browse_result_get_endpoint(v12);
    sub_181B80998(endpoint, v6);
    v14 = type metadata accessor for NWEndpoint();
    result = (*(*(v14 - 8) + 48))(v6, 1, v14);
    if (result != 1)
    {
      sub_181F9A800(v6, v11 + v7[5], type metadata accessor for NWEndpoint);
      v34 = MEMORY[0x1E69E7CC0];
      v16 = swift_allocObject();
      *(v16 + 16) = &v34;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_181B80034;
      *(v17 + 24) = v16;
      v32 = sub_181B80068;
      v33 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_181B7FFE4;
      v31 = &block_descriptor_232;
      v18 = _Block_copy(&aBlock);

      nw_browse_result_enumerate_interfaces(a1, v18);
      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        *(v11 + v7[6]) = v34;

        v19 = nw_browse_result_copy_txt_record_object(a1);
        swift_unknownObjectRelease();
        if (v19)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = MEMORY[0x1E69E7CC8];
          v21 = (v20 + 16);
          v32 = sub_181E63B60;
          v33 = v20;
          aBlock = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30 = sub_181E63AEC;
          v31 = &block_descriptor_238;
          v22 = _Block_copy(&aBlock);

          nw_txt_record_apply(v19, v22);
          _Block_release(v22);
          swift_beginAccess();
          v23 = *v21;

          v24 = (v11 + v7[7]);
          *v24 = v23;
          v24[1] = v19;
        }

        else
        {
          v26 = (v11 + v7[7]);
          *v26 = 0;
          v26[1] = 0;
        }

        sub_181F9A800(v11, a2, type metadata accessor for NWBrowser.Result);
        (*(v27 + 56))(a2, 0, 1, v7);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v25 = *(v8 + 56);

  return v25(a2, 1, 1, v7, v9);
}

uint64_t NWBrowser.Result.interfaces.getter()
{
  type metadata accessor for NWBrowser.Result(0);
}

uint64_t NWBrowser.Result.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NWBrowser.Result(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_181E6550C(v4);
}

uint64_t NWBrowser.Result.Metadata.debugDescription.getter()
{
  if (!*v0)
  {
    return 0x3E656E6F6E3CLL;
  }

  sub_181F9A944();
  return sub_182AD2E88();
}

uint64_t sub_181F8FAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F8FB44(uint64_t a1)
{
  v2 = sub_181F9B1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FB80(uint64_t a1)
{
  v2 = sub_181F9B1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FBBC()
{
  if (*v0)
  {
    return 0x72756F6A6E6F62;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_181F8FBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_181F8FCCC(uint64_t a1)
{
  v2 = sub_181F9B190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FD08(uint64_t a1)
{
  v2 = sub_181F9B190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FD50(uint64_t a1)
{
  v2 = sub_181F9B28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FD8C(uint64_t a1)
{
  v2 = sub_181F9B28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FDCC()
{
  if (!*v0)
  {
    return 0x3E656E6F6E3CLL;
  }

  sub_181F9A944();
  return sub_182AD2E88();
}

uint64_t NWBrowser.Result.Change.init(between:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v53 = a3;
  v52 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v48 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v48 - v25);
  v54 = a1;
  sub_181AB5D28(a1, &v48 - v25, &unk_1EA838F60);
  v27 = type metadata accessor for NWBrowser.Result(0);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v26, 1, v27) == 1)
  {
    sub_181F49A88(v26, &unk_1EA838F60);
    v29 = 0;
  }

  else
  {
    v29 = *v26;
    swift_unknownObjectRetain();
    sub_181F9A9B8(v26, type metadata accessor for NWBrowser.Result);
  }

  sub_181AB5D28(v55, v23, &unk_1EA838F60);
  if (v28(v23, 1, v27) == 1)
  {
    sub_181F49A88(v23, &unk_1EA838F60);
    v30 = 0;
  }

  else
  {
    v30 = *v23;
    swift_unknownObjectRetain();
    sub_181F9A9B8(v23, type metadata accessor for NWBrowser.Result);
  }

  changes = nw_browse_result_get_changes(v29, v30);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (changes < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (changes > 1)
  {
    if (changes == 2)
    {
      v47 = v55;
      sub_181AB5D28(v55, v20, &unk_1EA838F60);
      result = (v28)(v20, 1, v27);
      if (result == 1)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_181F49A88(v47, &unk_1EA838F60);
      sub_181F49A88(v54, &unk_1EA838F60);
      v38 = v49;
      sub_181F9A800(v20, v49, type metadata accessor for NWBrowser.Result);
    }

    else
    {
      v34 = v11;
      v35 = v54;
      v33 = v51;
      if (changes != 4)
      {
        goto LABEL_16;
      }

      sub_181AB5D28(v54, v17, &unk_1EA838F60);
      result = (v28)(v17, 1, v27);
      if (result == 1)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_181F49A88(v55, &unk_1EA838F60);
      sub_181F49A88(v35, &unk_1EA838F60);
      v37 = v17;
      v38 = v50;
      sub_181F9A800(v37, v50, type metadata accessor for NWBrowser.Result);
    }

    swift_storeEnumTagMultiPayload();
    v46 = v38;
    return sub_181F9A800(v46, v53, type metadata accessor for NWBrowser.Result.Change);
  }

  v33 = v51;
  if (!changes)
  {
    sub_181F49A88(v55, &unk_1EA838F60);
    v36 = v54;
    goto LABEL_23;
  }

  v34 = v11;
  v35 = v54;
  if (changes == 1)
  {
    sub_181F49A88(v55, &unk_1EA838F60);
    v36 = v35;
LABEL_23:
    sub_181F49A88(v36, &unk_1EA838F60);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_16:
  v39 = (changes >> 2) & 0xE;
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = 1;
  }

  sub_181AB5D28(v35, v14, &unk_1EA838F60);
  result = (v28)(v14, 1, v27);
  if (result == 1)
  {
    goto LABEL_30;
  }

  sub_181F9A800(v14, v33, type metadata accessor for NWBrowser.Result);
  v41 = v55;
  sub_181AB5D28(v55, v34, &unk_1EA838F60);
  result = (v28)(v34, 1, v27);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v42 = v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18);
  v44 = *(v43 + 48);
  v45 = *(v43 + 64);
  sub_181F49A88(v41, &unk_1EA838F60);
  sub_181F49A88(v35, &unk_1EA838F60);
  sub_181F9A800(v42, v33 + v44, type metadata accessor for NWBrowser.Result);
  *(v33 + v45) = v40;
  swift_storeEnumTagMultiPayload();
  v46 = v33;
  return sub_181F9A800(v46, v53, type metadata accessor for NWBrowser.Result.Change);
}

uint64_t NWBrowser.Result.Change.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F9A8DC(v1, v10, type metadata accessor for NWBrowser.Result.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_181F9A800(v10, v7, type metadata accessor for NWBrowser.Result);
      v12 = 2;
    }

    else
    {
      sub_181F9A800(v10, v7, type metadata accessor for NWBrowser.Result);
      v12 = 1;
    }

    MEMORY[0x1865DB070](v12);
    NWEndpoint.hash(into:)();
    v14 = v7;
    return sub_181F9A9B8(v14, type metadata accessor for NWBrowser.Result);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18) + 48);
    sub_181F9A800(v10, v7, type metadata accessor for NWBrowser.Result);
    sub_181F9A800(&v10[v13], v4, type metadata accessor for NWBrowser.Result);
    MEMORY[0x1865DB070](3);
    NWEndpoint.hash(into:)();
    NWEndpoint.hash(into:)();
    sub_182AD4518();
    sub_181F9A9B8(v4, type metadata accessor for NWBrowser.Result);
    v14 = v7;
    return sub_181F9A9B8(v14, type metadata accessor for NWBrowser.Result);
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t NWBrowser.Result.Change.hashValue.getter()
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F90804()
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F90848()
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)();
  return sub_182AD4558();
}

uint64_t NWBrowser.Result.hashValue.getter()
{
  sub_182AD44E8();
  type metadata accessor for NWBrowser.Result(0);
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F908D8()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F9094C()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F90998@<X0>(uint64_t result@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      result = swift_unknownObjectRelease();
      v4 = 0x8000000000;
      goto LABEL_13;
    }

    if (result == 1)
    {
      result = swift_unknownObjectRelease();
      v4 = 0x8000000001;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    if (a2)
    {
      result = NWError.init(_:)(a2, &v5);
      v4 = v5 | (v6 << 32);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (result != 4)
  {
LABEL_9:
    v4 = 0x8000000002;
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (a2)
  {
    result = NWError.init(_:)(a2, &v7);
    v4 = v7 | (v8 << 32) | 0x4000000000;
LABEL_13:
    *a3 = v4;
    *(a3 + 4) = BYTE4(v4);
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

Network::NWBrowser::Invitation::Scope_optional __swiftcall NWBrowser.Invitation.Scope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_182AD3F48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NWBrowser.Invitation.Scope.rawValue.getter()
{
  v1 = 0x73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

uint64_t sub_181F90B3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73646E65697266;
  if (v2 != 1)
  {
    v4 = 0x656E6F7972657665;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646E65697266;
  if (*a2 != 1)
  {
    v8 = 0x656E6F7972657665;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t sub_181F90C40()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F90CE8()
{
  sub_182AD30E8();
}

uint64_t sub_181F90D7C()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

void sub_181F90E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xE700000000000000;
  v5 = 0x73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74696D69786F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_181F90EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F90F40(uint64_t a1)
{
  v2 = sub_181F9AD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F90F7C(uint64_t a1)
{
  v2 = sub_181F9AD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.state.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  state = nw_browser_get_state(*(v1 + 16), v12);
  v4 = state;
  if (state <= 1)
  {
    if (!state)
    {
      v7 = 0x8000000000;
      goto LABEL_14;
    }

    if (state == 1)
    {
      v8 = 1;
LABEL_10:
      v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x8000000000;
      goto LABEL_14;
    }

LABEL_9:
    v8 = 2;
    goto LABEL_10;
  }

  result = v12[0];
  if (v4 == 2)
  {
    if (v12[0])
    {
      v9 = swift_unknownObjectRetain();
      NWError.init(_:)(v9, &v10);
      v7 = v10 | (v11 << 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v4 != 4)
  {
    goto LABEL_9;
  }

  if (v12[0])
  {
    v6 = swift_unknownObjectRetain();
    NWError.init(_:)(v6, &v10);
    v7 = v10 | (v11 << 32) | 0x4000000000;
LABEL_14:
    *a1 = v7;
    *(a1 + 4) = BYTE4(v7);
    return swift_unknownObjectRelease();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t NWBrowser.browseResults.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 80));
  return v2;
}

void *NWBrowser.queue.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 72);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 80));
  return v2;
}

uint64_t (*NWBrowser.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181C571A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 80));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181C4DBD0;
}

uint64_t sub_181F91260@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWBrowser.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181F912D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWBrowser.stateUpdateHandler.setter(v4, v3);
}

uint64_t sub_181F91360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  sub_181AA39C0(a2);
  result = sub_181A554F4(v6);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_181F913C0(uint64_t a1, NSObject *a2, uint64_t (*a3)(_BYTE *))
{
  swift_unknownObjectRetain();
  sub_181F90998(a1, a2, v7);
  return a3(v7);
}

uint64_t sub_181F91420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWBrowser.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 80));
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 80));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181F91580;
}

uint64_t (*NWBrowser.browseResultsChangedHandler.getter())(uint64_t, uint64_t)
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DC24;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 80));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC50;
}

uint64_t sub_181F91690@<X0>(void *a1@<X8>)
{
  result = NWBrowser.browseResultsChangedHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DC24;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181F91700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC50;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWBrowser.browseResultsChangedHandler.setter(v4, v3);
}

uint64_t sub_181F91790(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v28[1] = a6;
  v29 = a5;
  v30 = a3;
  v7 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v28 - v20;
  v22 = swift_unknownObjectRetain();
  sub_181F8F51C(v22, v21);
  v23 = swift_unknownObjectRetain();
  sub_181F8F51C(v23, v18);
  sub_181AB5D28(v21, v15, &unk_1EA838F60);
  sub_181AB5D28(v18, v12, &unk_1EA838F60);
  NWBrowser.Result.Change.init(between:_:)(v15, v12, v9);
  v24 = *(a4 + 24);
  v31 = v9;
  os_unfair_lock_lock((v24 + 80));
  sub_181F9DBB8(v24 + 16);
  os_unfair_lock_unlock((v24 + 80));
  if (v30)
  {
    os_unfair_lock_lock((v24 + 80));
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    *(v24 + 24) = MEMORY[0x1E69E7CD0];

    os_unfair_lock_unlock((v24 + 80));
    if (v29)
    {
      v29(v25, v26);
    }
  }

  sub_181F49A88(v18, &unk_1EA838F60);
  sub_181F49A88(v21, &unk_1EA838F60);
  return sub_181F9A9B8(v9, type metadata accessor for NWBrowser.Result.Change);
}

uint64_t sub_181F91A0C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v31 - v4;
  v5 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - v15);
  v17 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v17);
  v33 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  v34 = a2;
  sub_181F9A8DC(a2, &v31 - v23, type metadata accessor for NWBrowser.Result.Change);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
      v29 = v32;
      sub_181F96E00(v16, v32);
      sub_181F49A88(v29, &unk_1EA838F60);
      goto LABEL_8;
    }

    sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
    sub_181F9A8DC(v16, v10, type metadata accessor for NWBrowser.Result);
    sub_181F968F8(v13, v10);
    v26 = v13;
LABEL_6:
    sub_181F9A9B8(v26, type metadata accessor for NWBrowser.Result);
LABEL_8:
    sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result);
    v30 = v33;
    sub_181F9A8DC(v34, v33, type metadata accessor for NWBrowser.Result.Change);
    sub_181F966B8(v21, v30);
    return sub_181F9A9B8(v21, type metadata accessor for NWBrowser.Result.Change);
  }

  if (result == 2)
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18) + 48);
    sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
    sub_181F9A800(&v24[v27], v13, type metadata accessor for NWBrowser.Result);
    v28 = v32;
    sub_181F96E00(v16, v32);
    sub_181F49A88(v28, &unk_1EA838F60);
    sub_181F9A8DC(v13, v7, type metadata accessor for NWBrowser.Result);
    sub_181F968F8(v10, v7);
    sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result);
    v26 = v13;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F91E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*NWBrowser.browseResultsChangedHandler.modify(uint64_t (**a1)(uint64_t, uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 80));
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DC24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 80));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC50;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181F91F90;
}

uint64_t sub_181F91FD0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t NWBrowser.init(for:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_181F9A300(a1, a2);

  return v2;
}

uint64_t static NWBrowser.browseIterator(on:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F70);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *a1;
  v10 = 64;
  v11 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790], v3);
  return sub_182AD3738();
}

uint64_t NWBrowser.deinit()
{
  swift_unknownObjectRelease();

  sub_181F9A9B8(v0 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);

  return v0;
}

uint64_t NWBrowser.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_181F9A9B8(v0 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);

  return swift_deallocClassInstance();
}

uint64_t NWBrowser.Descriptor.Options.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_182AD1F48();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F78);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_181F9AA24();
  v15 = v44;
  sub_182AD45E8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v38 = v11;
  v39 = v4;
  v44 = v13;
  v17 = v42;
  v16 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
  v49 = 0;
  sub_181F9AB20(&qword_1EA838F90);
  sub_182AD3FF8();
  v18 = v46;
  v49 = 1;
  sub_181F9AA78();
  sub_182AD3FF8();
  v19 = v46;
  v49 = 2;
  sub_181F9AACC();
  sub_182AD3FF8();
  v48 = v19;
  v20 = v46;
  LOBYTE(v46) = 3;
  v33 = sub_182AD3FD8();
  v36 = v18;
  v49 = 4;
  sub_181C67934();
  v37 = v10;
  sub_182AD3FF8();
  v32 = v7;
  v35 = v46;
  v34 = v47;
  v21 = v44;
  LOBYTE(v46) = 5;
  v22 = sub_182AD4018();
  v30 = v20;
  LODWORD(v44) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  LOBYTE(v46) = 6;
  sub_181F7DC14();
  sub_181F7F268(&qword_1EA836670);
  sub_182AD3F68();
  v31 = v8;
  (*(v41 + 8))(v39, v16);
  v24 = *(*(v23 - 8) + 56);
  v24(v7, 0, 1, v23);
  *(v21 + 8) = 255;
  (*(v17 + 8))(v37, v31);
  *(v21 + 12) = 127;
  *(v21 + 24) = xmmword_182AE8230;
  v25 = *(v38 + 40);
  v24((v21 + v25), 1, 1, v23);
  *v21 = v36;
  v26 = v30;
  *(v21 + 8) = v48;
  *(v21 + 12) = v26;
  *(v21 + 40) = v44;
  *(v21 + 16) = v33 & 1;
  sub_181D9D680(*(v21 + 24), *(v21 + 32));
  v27 = v34;
  *(v21 + 24) = v35;
  *(v21 + 32) = v27;
  sub_181F9A5FC(v7, v21 + v25);
  sub_181F9A8DC(v21, v40, type metadata accessor for NWBrowser.Descriptor.Options);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_181F9A9B8(v21, type metadata accessor for NWBrowser.Descriptor.Options);
}

uint64_t NWBrowser.Descriptor.Options.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_182AD1F48();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AA24();
  sub_182AD4638();
  v16 = *v2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
  sub_181F9AB20(&qword_1EA838FB8);
  v11 = v15;
  sub_182AD4118();
  if (!v11)
  {
    v15 = v4;
    LODWORD(v16) = *(v2 + 8);
    v18 = 1;
    sub_181F9AB8C();
    sub_182AD4118();
    LODWORD(v16) = *(v2 + 12);
    v18 = 2;
    sub_181F9ABE0();
    sub_182AD4118();
    LOBYTE(v16) = 3;
    sub_182AD40F8();
    v12 = *(v2 + 32);
    v16 = *(v2 + 24);
    v17 = v12;
    v18 = 4;
    sub_181F49B44(v16, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FD0);
    sub_181F9AC34();
    sub_182AD4118();
    sub_181D9D680(v16, v17);
    LOBYTE(v16) = 5;
    sub_182AD4138();
    type metadata accessor for NWBrowser.Descriptor.Options(0);
    LOBYTE(v16) = 6;
    sub_181F7DC14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
    sub_181F9ACB8();
    sub_182AD40A8();
    (*(v14 + 8))(v6, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_181F92E24()
{
  v1 = *v0;
  v2 = 0x6946656369766564;
  v3 = 0x6572685469737372;
  if (v1 != 5)
  {
    v3 = 0x7461636964657270;
  }

  v4 = 0xD00000000000001FLL;
  if (v1 != 3)
  {
    v4 = 0x65536D6F74737563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65706F6373;
  if (v1 != 1)
  {
    v5 = 0x7954656369766564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181F92F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181F9D794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181F92F60(uint64_t a1)
{
  v2 = sub_181F9AA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F92F9C(uint64_t a1)
{
  v2 = sub_181F9AA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.Invitation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AD58();
  sub_182AD4638();
  v10 = v7;
  sub_181F9ADAC();
  sub_182AD4118();
  return (*(v4 + 8))(v6, v3);
}