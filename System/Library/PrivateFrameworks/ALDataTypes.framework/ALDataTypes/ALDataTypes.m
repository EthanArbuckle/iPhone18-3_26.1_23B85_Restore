uint64_t storeEnumTagSinglePayload for ALWiFiNotification.NotiType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ALTimeStamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALWiFiScanSingleAccessPoint.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALWiFiScanResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy127_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ALWiFiScanResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t ALWiFiNotification.scanResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = v2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = MEMORY[0x277D83838];
    v17[0] = 7104878;
    v17[1] = 0xE300000000000000;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(v11 + 32))(boxed_opaque_existential_1, v10, a2);
    outlined init with take of CVarArg(&v14, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, &_ss23CustomStringConvertible_pMR);
  _print_unlocked<A, B>(_:_:)();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t ALWiFiNotification.description.getter()
{
  v2 = *(v0 + 1);
  v1 = *(v0 + 2);
  v4 = *(v0 + 3);
  v3 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[48];
  v7 = v0[49];
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  v11 = *(v0 + 11);
  v10 = *(v0 + 12);
  v12 = *(v0 + 13);
  v26 = *(v0 + 14);
  v27 = *v0;
  v28 = v0[120];
  v29 = v0[123];
  v30 = v0[125];
  v40 = 0;
  v41 = 0xE000000000000000;
  if ((v7 & 1) == 0)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    v24 = v9;
    v25 = v8;
    MEMORY[0x23EED8450](0x3A656D6974, 0xE500000000000000);
    v33.n128_u64[0] = v2;
    v33.n128_u8[8] = v1 & 1;
    v34.n128_u64[0] = v4;
    v34.n128_u8[8] = v3 & 1;
    v35 = v5;
    LOBYTE(v36) = v6 & 1;
    v31 = ALTimeStamp.machContinuousTimeSec.getter();
    v32 = v13 & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)(&v31, MEMORY[0x277D839F8], MEMORY[0x277D83A60]);
    MEMORY[0x23EED8450](v38, v39);

    v9 = v24;
    v8 = v25;
  }

  if (v12)
  {
    LOBYTE(v31) = BYTE1(v10) & 1;
    v38 = 0x3A6E6163732CLL;
    v39 = 0xE600000000000000;
    v33 = v8;
    v34 = v9;
    v35 = v11;
    v36 = v10 & 0x1FF;
    v37 = v12;
    v14 = ALWiFiScanResult.description.getter();
    MEMORY[0x23EED8450](v14);

    MEMORY[0x23EED8450](v38, v39);
  }

  if (v27 != 15)
  {
    v33.n128_u64[0] = 0;
    v33.n128_u64[1] = 0xE000000000000000;
    MEMORY[0x23EED8450](0x70795469746F6E2CLL, 0xEA00000000003A65, v8, v9);
    LOBYTE(v38) = v27;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x23EED8450](v33.n128_u64[0], v33.n128_u64[1]);
  }

  if ((v28 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84D38];
    *(v15 + 16) = xmmword_23C90A690;
    v17 = MEMORY[0x277D84D90];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v26;
    v18 = String.init(format:_:)();
    MEMORY[0x23EED8450](v18);
  }

  if (v29 != 2)
  {
    v33.n128_u64[0] = 0x74616C756D69732CLL;
    v33.n128_u64[1] = 0xEB000000003A6465;
    if (v29)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v29)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v19, v20);

    MEMORY[0x23EED8450](v33.n128_u64[0], v33.n128_u64[1]);
  }

  if (v30 != 2)
  {
    v33.n128_u64[0] = 0x656B61774170612CLL;
    v33.n128_u64[1] = 0xE90000000000003ALL;
    if (v30)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v30)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v21, v22);

    MEMORY[0x23EED8450](v33.n128_u64[0], v33.n128_u64[1]);
  }

  return v40;
}

uint64_t ALWiFiScanResult.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = *(v0 + 48);
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x23EED8450](745825133, 0xE400000000000000);
  if (v7)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v13 = v2;
    v14 = v1 & 1;
    v15 = v4;
    v16 = v3 & 1;
    v17 = v5;
    v18 = v6 & 1;
    v9 = ALTimeStamp.machContinuousTimeSec.getter();
  }

  v13 = v9;
  v14 = v10 & 1;
  DefaultStringInterpolation.appendInterpolation<A>(_:)(&v13, MEMORY[0x277D839F8], MEMORY[0x277D83A60]);
  MEMORY[0x23EED8450](0x2C746E756F632CLL, 0xE700000000000000);
  v13 = *(v8 + 16);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v11);

  return v19;
}

uint64_t ALTimeStamp.machContinuousTimeSec.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with take of CVarArg(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ALBtAdvertisement._machContTimeNs.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ALBtAdvertisement._payload.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 128), *(v2 + 136));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

double ALBtAdvertisement.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 769;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 82) = 0;
  *(a1 + 84) = 1;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xF000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 153) = 0;
  *(a1 + 149) = 3;
  *(a1 + 155) = 2;
  return result;
}

uint64_t ALBtAdvertisement._mac.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ALBtAdvertisement._rssidB.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t ALBtAdvertisement._channel.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t ALBtAdvertisement._deviceFlags.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ALBtAdvertisement._vendorID.setter(uint64_t result)
{
  *(v1 + 82) = result;
  *(v1 + 84) = BYTE2(result) & 1;
  return result;
}

uint64_t ALBtAdvertisement._discoveryFlags.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ALBtAdvertisement._identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ALBtAdvertisement._idsDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALBtAdvertisement.BtType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALBtAdvertisement.BtType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

int *ALBtAdvertisement._type7Info.setter(int *result)
{
  v2 = *result;
  *(v1 + 153) = *(result + 2);
  *(v1 + 149) = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALBtAdvInfoType7(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

ALDataTypes::ALBtAdvInfoType7 __swiftcall ALBtAdvInfoType7.init()()
{
  *v0 = 33686018;
  *(v0 + 4) = 2050;
  return result;
}

void __swiftcall ALTimeStamp.init(machContinuousTimeSec:)(ALDataTypes::ALTimeStamp *__return_ptr retstr, Swift::Double machContinuousTimeSec)
{
  type metadata accessor for TimesSync();
  static TimesSync.instance.getter();
  v4 = dispatch thunk of TimesSync.mctMinusMatNs.getter();

  v5 = machContinuousTimeSec - NsToSec.getter() * v4;
  static TimesSync.instance.getter();
  dispatch thunk of TimesSync.cfaMinusMctSec.getter();
  v7 = v6;

  retstr->_cfAbsoluteTimeSec.value = v7 + machContinuousTimeSec;
  retstr->_cfAbsoluteTimeSec.is_nil = 0;
  *(&retstr->_machAbsoluteTimeSec.value + 7) = v5;
  BYTE6(retstr->_machContinuousTimeSec.value) = 0;
  *(&retstr[1]._cfAbsoluteTimeSec.value + 5) = machContinuousTimeSec;
  BYTE4(retstr[1]._machAbsoluteTimeSec.value) = 0;
}

uint64_t static TimesSync.instance.getter()
{
  type metadata accessor for TimesSync();

  return swift_initStaticObject();
}

uint64_t TimesSync.mctMinusMatNs.getter()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 144);

  return v1();
}

Swift::Void __swiftcall TimesSync.sync()()
{
  v1 = v0;
  v31 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  if ((*(*v0 + 112))(v8))
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    mach_get_times();
    if (v30 < v29)
    {
      __break(1u);
    }

    v11 = convertTicksToNs(_:)(v30 - v29);
    (*(*v0 + 152))(v11);
    v12 = v28 * 0.000000001 + v27;
    v13 = convertTicksToNs(_:)(v30);
    (*(*v0 + 176))(v12 - v13 * 0.000000001 - *MEMORY[0x277CBECD0]);
    (*(*v0 + 200))(v30, 0);
    v14 = corelog.unsafeMutableAddressor();
    v26 = v3;
    v15 = *(v3 + 16);
    v15(v10, v14, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349824;
      swift_beginAccess();
      *(v18 + 4) = v29;
      *(v18 + 12) = 2050;
      swift_beginAccess();
      *(v18 + 14) = v30;
      *(v18 + 22) = 2050;
      swift_beginAccess();
      v19 = v28;
      *(v18 + 24) = v27;
      *(v18 + 32) = 2050;
      *(v18 + 34) = v19;
      _os_log_impl(&dword_23C8FE000, v16, v17, "TimeSync,mat,%{public}llu,mct,%{public}llu,tp,%{public}ld,%{public}ld", v18, 0x2Au);
      MEMORY[0x23EED8940](v18, -1, -1);
    }

    v20 = *(v26 + 8);
    v20(v10, v2);
    v15(v7, v14, v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349312;
      *(v23 + 4) = (*(*v1 + 144))() * 0.000000001;
      *(v23 + 12) = 2050;
      *(v23 + 14) = (*(*v1 + 168))();
      _os_log_impl(&dword_23C8FE000, v21, v22, "TimeSync,mct-mat,%{public}f,cfa-mct,%{public}f", v23, 0x16u);
      MEMORY[0x23EED8940](v23, -1, -1);
    }

    v20(v7, v2);
  }

  v24 = *MEMORY[0x277D85DE8];
}

Swift::Bool __swiftcall TimesSync.needsSync()()
{
  v1 = (*(*v0 + 192))();
  if (v2)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = v1;
    v3 = mach_continuous_time();
    if (one-time initialization token for SyncIntervalTicks != -1)
    {
      v5 = v3;
      swift_once();
      v3 = v5;
    }

    if (__CFADD__(v4, static TimesSync.SyncIntervalTicks))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v4 + static TimesSync.SyncIntervalTicks < v3;
    }
  }

  return v3;
}

uint64_t TimesSync._lastsyncMctTicks.getter()
{
  swift_beginAccess();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TimesSync.cfaMinusMctSec.getter()
{
  (*(*v0 + 120))();
  v1 = *(*v0 + 168);

  return v1();
}

__n128 __swift_memcpy156_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t ALBtAdvertisement._productID.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
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

uint64_t ALTimeStamp.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  _StringGuts.grow(_:)(22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C90A690;
  v8 = MEMORY[0x277D839F8];
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v9;
  if (v2)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = v1;
  }

  *(v7 + 32) = v10;
  v11 = String.init(format:_:)();
  MEMORY[0x23EED8450](v11);

  MEMORY[0x23EED8450](0x2074616D202CLL, 0xE600000000000000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23C90A690;
  *(v12 + 56) = v8;
  *(v12 + 64) = v9;
  if (v4)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = v3;
  }

  *(v12 + 32) = v13;
  v14 = String.init(format:_:)();
  MEMORY[0x23EED8450](v14);

  MEMORY[0x23EED8450](0x2074636D202CLL, 0xE600000000000000);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C90A690;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
  if (v6)
  {
    v16 = -1.0;
  }

  else
  {
    v16 = v5;
  }

  *(v15 + 32) = v16;
  v17 = String.init(format:_:)();
  MEMORY[0x23EED8450](v17);

  return 543254115;
}

void __swiftcall ALBtNotification.init()(ALDataTypes::ALBtNotification *__return_ptr retstr)
{
  *(&retstr->_timestamp.value._machContinuousTimeSec.value + 7) = 0u;
  *&retstr->_timestamp.value._cfAbsoluteTimeSec.value = 0u;
  *(&retstr->_timestamp.value._machAbsoluteTimeSec.value + 7) = 0u;
  v1 = MEMORY[0x277D84F90];
  retstr->_isApOn.value = 1;
  retstr[1]._timestamp.value._cfAbsoluteTimeSec.value = v1;
  *&retstr[1]._timestamp.value._cfAbsoluteTimeSec.is_nil = 514;
  BYTE1(retstr[1]._timestamp.value._machAbsoluteTimeSec.value) = 2;
}

uint64_t ALBtNotification._advertisements.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void static ALTimeStamp.now()(ALDataTypes::ALTimeStamp *a1@<X8>)
{
  v2 = machContTimeSec()();

  ALTimeStamp.init(machContinuousTimeSec:)(a1, v2);
}

Swift::UInt64 __swiftcall convertTicksToNs(_:)(Swift::UInt64 result)
{
  if (one-time initialization token for sTicksInfo != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, static sTicksInfo in FuncData #1 in ticksInfo()))
  {
    if (static sTicksInfo in FuncData #1 in ticksInfo())
    {
      return result * static sTicksInfo in FuncData #1 in ticksInfo() / static sTicksInfo in FuncData #1 in ticksInfo();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ALBtNotification.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v17 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 57);
  v18 = *(v0 + 58);
  v19 = *(v0 + 56);
  v20 = *(v0[6] + 16);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v8);

  if ((v6 & 1) == 0)
  {
    lazy protocol witness table accessor for type ALTimeStamp and conformance ALTimeStamp();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EED8450](v9);

    MEMORY[0x23EED8450](0x3A656D69742CLL, 0xE600000000000000);
  }

  if (v7 != 2)
  {
    if (v7)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v7)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v10, v11);

    MEMORY[0x23EED8450](0x3A6E4F70612CLL, 0xE600000000000000);
  }

  if (v18 != 2)
  {
    if (v18)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v18)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v12, v13);

    MEMORY[0x23EED8450](0x4F6E65657263732CLL, 0xEA00000000003A6ELL);
  }

  if (v19 != 2)
  {
    if (v19)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v19)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v14, v15);

    MEMORY[0x23EED8450](0x74616C756D69732CLL, 0xEB000000003A6465);
  }

  return 0x3A746E756F63;
}

__n128 ALBtNotification._timestamp.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 41) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ALTimeStamp and conformance ALTimeStamp()
{
  result = lazy protocol witness table cache variable for type ALTimeStamp and conformance ALTimeStamp;
  if (!lazy protocol witness table cache variable for type ALTimeStamp and conformance ALTimeStamp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALTimeStamp and conformance ALTimeStamp);
  }

  return result;
}

void __swiftcall ALWiFiScanResult.init()(ALDataTypes::ALWiFiScanResult *__return_ptr retstr)
{
  *(&retstr->_scanTimestamp.value._machContinuousTimeSec.value + 7) = 0u;
  *&retstr->_scanTimestamp.value._cfAbsoluteTimeSec.value = 0u;
  *(&retstr->_scanTimestamp.value._machAbsoluteTimeSec.value + 7) = 0u;
  BYTE1(retstr[1]._scanTimestamp.value._cfAbsoluteTimeSec.value) = 1;
  *&retstr[1]._scanTimestamp.value._cfAbsoluteTimeSec.is_nil = MEMORY[0x277D84F90];
}

__n128 ALWiFiScanResult._scanTimestamp.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 41) = v4;
  return result;
}

double ALWiFiScanSingleAccessPoint.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1025;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 53) = 514;
  *(a1 + 55) = 4;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 105) = 1;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._mac.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._channel.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._rssidB.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._ageSec.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t ALWiFiNotification._associatedMac.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

ALDataTypes::ALWiFiNotifications __swiftcall ALWiFiNotifications.init(_results:_isLastBatch:)(ALDataTypes::ALWiFiNotifications _results, Swift::Bool_optional _isLastBatch)
{
  *v2 = _results._results._rawValue;
  *(v2 + 8) = _isLastBatch.value == 2 || _isLastBatch.value;
  _results._isLastBatch = _isLastBatch.value;
  return _results;
}

double ALWiFiNotification.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 15;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 49) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 3841;
  *(a1 + 122) = 33686018;
  *(a1 + 126) = 2;
  return result;
}

__n128 ALWiFiNotification._timestamp.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v6;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 49) = v4;
  return result;
}

__n128 ALWiFiNotification._scanResult.setter(__int128 *a1)
{
  v7 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(v1 + 104);

  v5 = *a1;
  *(v1 + 72) = a1[1];
  *(v1 + 56) = v5;
  result = v7;
  *(v1 + 88) = v7;
  *(v1 + 104) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ALWiFiNotification.NotiType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 ALWiFiNotification.timestamp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  result = *(v1 + 8);
  v6 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ALTimeStamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t ALTimeStamp.cfAbsoluteTimeSec.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ALTimeStamp.machAbsoluteTimeSec.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

__n128 ALNIPresenceNotification.timestamp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  result = *v1;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ALBtAdvertisement.machContTimeNs.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

ALDataTypes::ALBtNotifications __swiftcall ALBtNotifications.init(results:isLastBatch:)(ALDataTypes::ALBtNotifications results, Swift::Bool isLastBatch)
{
  *v2 = results._results._rawValue;
  *(v2 + 8) = isLastBatch;
  results._isLastBatch = isLastBatch;
  return results;
}

uint64_t ALWiFiScanSingleAccessPoint.mac.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ALBtAdvertisement.mac.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint.ssid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ALBtAdvertisement.payload.getter()
{
  v1 = *(v0 + 128);
  outlined copy of Data?(v1, *(v0 + 136));
  return v1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t ALBtAdvertisement.identifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ALBtAdvertisement.idsDeviceID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ALBtAdvertisement.deviceFlags.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ALBtAdvertisement.discoveryFlags.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t getEnumTagSinglePayload for ALWiFiScanSingleAccessPoint.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void ALBtAdvertisement._type7Info.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 149);
  *(a1 + 4) = *(v1 + 153);
  *a1 = v2;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t ALWiFiNotification.associatedMac.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t getEnumTagSinglePayload for ALBtAdvInfoType7(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t getEnumTagSinglePayload for ALBtAdvInfoType7.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23C901AE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C901B20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C901B58()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

Swift::Int ALNIDevicePresencePreset.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EED85E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ALNIDevicePresencePreset()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EED85E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ALNIDevicePresencePreset()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EED85E0](v1);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of ALBtAdvertisement?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes17ALBtAdvertisementVSgMd, &_s11ALDataTypes17ALBtAdvertisementVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ALNIPresenceNotification.deviceId.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t ALNIPresenceNotification.service.getter@<X0>(char *a1@<X8>)
{
  v3 = v1[10];
  v9[6] = v1[9];
  v9[7] = v3;
  *v10 = v1[11];
  *&v10[12] = *(v1 + 188);
  v4 = v1[6];
  v9[2] = v1[5];
  v9[3] = v4;
  v5 = v1[8];
  v9[4] = v1[7];
  v9[5] = v5;
  v6 = v1[4];
  v9[0] = v1[3];
  v9[1] = v6;
  result = _s11ALDataTypes17ALBtAdvertisementVSgWOg(v9);
  v8 = v10[27];
  if (result == 1)
  {
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t _s11ALDataTypes17ALBtAdvertisementVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 104);
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

double variable initialization expression of ALNIPresenceNotification._timestamp@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

__n128 ALNIPresenceNotification._timestamp.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 41) = v4;
  return result;
}

double variable initialization expression of ALNIPresenceNotification._deviceAdvertisement@<D0>(_OWORD *a1@<X8>)
{
  _s11ALDataTypes17ALBtAdvertisementVSgWOi0_(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 140) = *(v8 + 12);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

double _s11ALDataTypes17ALBtAdvertisementVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  return result;
}

uint64_t ALNIPresenceNotification.deviceAdvertisement.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[8];
  v20 = v1[9];
  v21 = v2;
  v4 = v1[10];
  v22[0] = v1[11];
  *(v22 + 12) = *(v1 + 188);
  v5 = v1[6];
  v7 = v1[4];
  v16 = v1[5];
  v6 = v16;
  v17 = v5;
  v8 = v1[6];
  v9 = v1[8];
  v18 = v1[7];
  v10 = v18;
  v19 = v9;
  v11 = v1[4];
  v15[0] = v1[3];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[11];
  *(a1 + 140) = *(v1 + 188);
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v3;
  *a1 = v12;
  a1[1] = v7;
  return outlined init with copy of ALBtAdvertisement?(v15, &v14);
}

__n128 ALNIPresenceNotification._deviceAdvertisement.setter(uint64_t a1)
{
  v3 = v1[10];
  v12[6] = v1[9];
  v12[7] = v3;
  v13[0] = v1[11];
  *(v13 + 12) = *(v1 + 188);
  v4 = v1[6];
  v12[2] = v1[5];
  v12[3] = v4;
  v5 = v1[8];
  v12[4] = v1[7];
  v12[5] = v5;
  v6 = v1[4];
  v12[0] = v1[3];
  v12[1] = v6;
  outlined destroy of ALBtAdvertisement?(v12);
  v7 = *(a1 + 112);
  v1[9] = *(a1 + 96);
  v1[10] = v7;
  v1[11] = *(a1 + 128);
  *(v1 + 188) = *(a1 + 140);
  v8 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v8;
  v9 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v9;
  result = *a1;
  v11 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v11;
  return result;
}

uint64_t outlined destroy of ALBtAdvertisement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes17ALBtAdvertisementVSgMd, &_s11ALDataTypes17ALBtAdvertisementVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ALNIPresenceNotification._deviceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t ALNIPresenceNotification.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v19 = v0[3];
  v21 = v0[4];
  v20 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = *(v0 + 42);
  v6 = *(v0 + 10);
  v45 = *(v0 + 9);
  v46 = v6;
  v47[0] = *(v0 + 11);
  *(v47 + 12) = *(v0 + 188);
  v7 = *(v0 + 6);
  v41 = *(v0 + 5);
  v42 = v7;
  v8 = *(v0 + 8);
  v43 = *(v0 + 7);
  v44 = v8;
  v9 = *(v0 + 4);
  v39 = *(v0 + 3);
  v40 = v9;
  v11 = v0[26];
  v10 = v0[27];
  v22 = *(v0 + 224);
  _StringGuts.grow(_:)(24);

  *&v29 = 0xD000000000000016;
  *(&v29 + 1) = 0x800000023C90B2C0;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x23EED8450](v12, v13);

  v38 = v29;
  if ((v4 & 1) == 0)
  {
    *&v29 = v2;
    BYTE8(v29) = v1 & 1;
    *&v30 = v3;
    BYTE8(v30) = v19 & 1;
    *&v31 = v21;
    BYTE8(v31) = v20 & 1;
    lazy protocol witness table accessor for type ALTimeStamp and conformance ALTimeStamp();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EED8450](v14);

    MEMORY[0x23EED8450](0x3A656D69742CLL, 0xE600000000000000);
  }

  if (v5 != 2)
  {
    *&v29 = 0x74616C756D69732CLL;
    *(&v29 + 1) = 0xEB000000003A6465;
    if (v5)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v5)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v15, v16);

    MEMORY[0x23EED8450](v29, *(&v29 + 1));
  }

  if (v22 != 7)
  {
    MEMORY[0x23EED8450](0x6E6F69676572202CLL, 0xE90000000000003ALL);
    LOBYTE(v27[0]) = v22;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x23EED8450](0, 0xE000000000000000);
  }

  v35 = v45;
  v36 = v46;
  v37[0] = v47[0];
  *(v37 + 12) = *(v47 + 12);
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  if (_s11ALDataTypes17ALBtAdvertisementVSgWOg(&v29) != 1)
  {
    v27[6] = v45;
    v27[7] = v46;
    *v28 = v47[0];
    *&v28[12] = *(v47 + 12);
    v27[2] = v41;
    v27[3] = v42;
    v27[4] = v43;
    v27[5] = v44;
    v27[0] = v39;
    v27[1] = v40;
    v25 = 0;
    v26 = 0xE000000000000000;
    outlined init with copy of ALBtAdvertisement(v27, v23);
    _StringGuts.grow(_:)(18);
    MEMORY[0x23EED8450](0xD000000000000010, 0x800000023C90B2E0);
    v23[6] = v35;
    v23[7] = v36;
    v24[0] = v37[0];
    *(v24 + 12) = *(v37 + 12);
    v23[2] = v31;
    v23[3] = v32;
    v23[4] = v33;
    v23[5] = v34;
    v23[0] = v29;
    v23[1] = v30;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x23EED8450](v25, v26);

    outlined destroy of ALBtAdvertisement?(&v39);
    v17 = v28[27];
    if (v28[27] != 2)
    {
      *&v23[0] = 0;
      *(&v23[0] + 1) = 0xE000000000000000;
      MEMORY[0x23EED8450](0x636976726573202CLL, 0xEA00000000003A65);
      LOBYTE(v25) = v17 & 1;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x23EED8450](*&v23[0], *(&v23[0] + 1));
    }
  }

  return v38;
}

double ALNIPresenceNotification.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 513;
  _s11ALDataTypes17ALBtAdvertisementVSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 144) = v7[6];
  *(a1 + 160) = v2;
  *(a1 + 176) = v8[0];
  *(a1 + 188) = *(v8 + 12);
  v3 = v7[3];
  *(a1 + 80) = v7[2];
  *(a1 + 96) = v3;
  v4 = v7[5];
  *(a1 + 112) = v7[4];
  *(a1 + 128) = v4;
  result = *v7;
  v6 = v7[1];
  *(a1 + 48) = v7[0];
  *(a1 + 64) = v6;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 7;
  return result;
}

uint64_t ALNIPresenceNotifications.presenceResults.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ALNIDevicePresencePreset and conformance ALNIDevicePresencePreset()
{
  result = lazy protocol witness table cache variable for type ALNIDevicePresencePreset and conformance ALNIDevicePresencePreset;
  if (!lazy protocol witness table cache variable for type ALNIDevicePresencePreset and conformance ALNIDevicePresencePreset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALNIDevicePresencePreset and conformance ALNIDevicePresencePreset);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALNIDevicePresencePreset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ALNIDevicePresencePreset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t get_enum_tag_for_layout_string_11ALDataTypes17ALBtAdvertisementVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
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

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ALNIPresenceNotification(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ALNIPresenceNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALNIPresenceNotifications(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ALNIPresenceNotifications(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ALDataTypes::ALBtAdvertisement::BtType_optional __swiftcall ALBtAdvertisement.BtType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 18)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 7)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ALBtAdvertisement.BtType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EED85E0](qword_23C90AA60[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ALBtAdvertisement.BtType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EED85E0](qword_23C90AA60[v1]);
  return Hasher._finalize()();
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ALBtAdvertisement.machContTimeSec.getter()
{
  if (*(v0 + 8))
  {
    *&result = 0.0;
  }

  else
  {
    v2 = *v0;
    *&result = NsToSec.getter() * v2;
  }

  return result;
}

uint64_t ALBtAdvertisement.cfAbsTimeSec.getter()
{
  if (*(v0 + 8))
  {
    *&result = 0.0;
  }

  else
  {
    v2 = *v0;
    v3 = NsToSec.getter() * v2;
    type metadata accessor for TimesSync();
    static TimesSync.instance.getter();
    dispatch thunk of TimesSync.cfaMinusMctSec.getter();
    v5 = v4;

    *&result = v3 + v5;
  }

  return result;
}

uint64_t ALBtAdvertisement.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v51 = *(v0 + 49);
  v45 = *(v0 + 56);
  v46 = *(v0 + 72);
  v52 = *(v0 + 64);
  v53 = *(v0 + 80);
  v48 = *(v0 + 36);
  v49 = *(v0 + 84);
  v43 = *(v0 + 82);
  v44 = *(v0 + 88);
  v50 = *(v0 + 92);
  v47 = *(v0 + 96);
  v55 = *(v0 + 153);
  v56 = *(v0 + 104);
  v54 = *(v0 + 149);
  v7 = *v0;
  *&v58 = 980706157;
  *(&v58 + 1) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23C90A690;
  v9 = v7 * 0.000000001;
  v10 = MEMORY[0x277D83A80];
  if (v1)
  {
    v9 = 0.0;
  }

  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  v11 = String.init(format:_:)();
  MEMORY[0x23EED8450](v11);

  v12 = v58;
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v61[0] = 0xD000000000000011;
  v61[1] = 0x800000023C90B300;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23C90A690;
  if (v3)
  {
    v14 = MEMORY[0x277D83C10];
    *(v13 + 56) = MEMORY[0x277D83B88];
    *(v13 + 64) = v14;
    *(v13 + 32) = 0;
  }

  else
  {
    v59 = MEMORY[0x277D84D38];
    v60 = MEMORY[0x277D84D90];
    *&v58 = bswap64(v2);
    outlined init with take of CVarArg(&v58, v13 + 32);
  }

  v15 = String.init(format:_:)();
  MEMORY[0x23EED8450](v15);

  v16 = v61[0];
  v17 = v61[1];
  v58 = v12;

  MEMORY[0x23EED8450](v16, v17);

  v18 = v58;
  *&v58 = 0x3A69737372202CLL;
  *(&v58 + 1) = 0xE700000000000000;
  if (v5)
  {
    v19 = 0;
  }

  else
  {
    v19 = v4;
  }

  LODWORD(v61[0]) = v19;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v20);

  v21 = v58;
  v58 = v18;

  MEMORY[0x23EED8450](v21, *(&v21 + 1));

  v22 = v58;
  *&v58 = 0x656E6E616863202CLL;
  *(&v58 + 1) = 0xEA00000000003A6CLL;
  v23 = v48;
  if (v6)
  {
    v23 = -1;
  }

  LODWORD(v61[0]) = v23;
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v24);

  v25 = v58;
  v58 = v22;

  MEMORY[0x23EED8450](v25, *(&v25 + 1));

  if ((v49 & 1) == 0)
  {
    strcpy(v61, ", vid:0x");
    BYTE1(v61[1]) = 0;
    WORD1(v61[1]) = 0;
    HIDWORD(v61[1]) = -402653184;
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D84C58];
    *(v26 + 16) = xmmword_23C90A690;
    v28 = MEMORY[0x277D84CB8];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v43;
    v29 = String.init(format:_:)();
    MEMORY[0x23EED8450](v29);

    MEMORY[0x23EED8450](v61[0], v61[1]);
  }

  if ((v50 & 1) == 0)
  {
    strcpy(v61, ", pid:0x");
    BYTE1(v61[1]) = 0;
    WORD1(v61[1]) = 0;
    HIDWORD(v61[1]) = -402653184;
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D84CC0];
    *(v30 + 16) = xmmword_23C90A690;
    v32 = MEMORY[0x277D84D30];
    *(v30 + 56) = v31;
    *(v30 + 64) = v32;
    *(v30 + 32) = v44;
    v33 = String.init(format:_:)();
    MEMORY[0x23EED8450](v33);

    MEMORY[0x23EED8450](v61[0], v61[1]);
  }

  v34 = MEMORY[0x277D84D38];
  v35 = MEMORY[0x277D84D90];
  if (v51 == 3)
  {
    if (v52)
    {
      goto LABEL_17;
    }
  }

  else
  {
    strcpy(v61, ", type:");
    v61[1] = 0xE700000000000000;
    v57 = qword_23C90AA60[v51];
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EED8450](v40);

    MEMORY[0x23EED8450](v61[0], v61[1]);

    if (v52)
    {
LABEL_17:
      if (v53)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v61[0] = 0xD000000000000010;
  v61[1] = 0x800000023C90B340;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23C90A690;
  *(v41 + 56) = v34;
  *(v41 + 64) = v35;
  *(v41 + 32) = v45;
  v42 = String.init(format:_:)();
  MEMORY[0x23EED8450](v42);

  MEMORY[0x23EED8450](v61[0], v61[1]);

  if ((v53 & 1) == 0)
  {
LABEL_18:
    v61[0] = 0;
    v61[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v61[0] = 0xD000000000000013;
    v61[1] = 0x800000023C90B320;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_23C90A690;
    *(v36 + 56) = v34;
    *(v36 + 64) = v35;
    *(v36 + 32) = v46;
    v37 = String.init(format:_:)();
    MEMORY[0x23EED8450](v37);

    MEMORY[0x23EED8450](v61[0], v61[1]);
  }

LABEL_19:
  if (v56)
  {
    strcpy(v61, ", identifier:");
    HIWORD(v61[1]) = -4864;
    MEMORY[0x23EED8450](v47);
    MEMORY[0x23EED8450](v61[0], v61[1]);
  }

  if (v54 != 3)
  {
    strcpy(v61, ", type7:{");
    WORD1(v61[1]) = 0;
    HIDWORD(v61[1]) = -385875968;
    v38 = ALBtAdvInfoType7.description.getter();
    MEMORY[0x23EED8450](v38);

    MEMORY[0x23EED8450](125, 0xE100000000000000);
    MEMORY[0x23EED8450](v61[0], v61[1]);
  }

  v61[0] = 0x7B20744223;
  v61[1] = 0xE500000000000000;
  MEMORY[0x23EED8450](v58, *(&v58 + 1));

  MEMORY[0x23EED8450](125, 0xE100000000000000);
  return v61[0];
}

uint64_t ALBtAdvInfoType7.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v20 = 0;
  v21 = 0xE000000000000000;
  if (v1 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    strcpy(v19, "sameAccount:");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    if (v1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v9, v10);

    MEMORY[0x23EED8450](v19[0], v19[1]);

    if (v2 == 2)
    {
LABEL_3:
      if (v3 == 2)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  strcpy(v19, ",family:");
  BYTE1(v19[1]) = 0;
  WORD1(v19[1]) = 0;
  HIDWORD(v19[1]) = -402653184;
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x23EED8450](v11, v12);

  MEMORY[0x23EED8450](v19[0], v19[1]);

  if (v3 == 2)
  {
LABEL_4:
    if (v4 == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_23:
  strcpy(v19, ",sharedHome:");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (v3)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v3)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x23EED8450](v13, v14);

  MEMORY[0x23EED8450](v19[0], v19[1]);

  if (v4 == 2)
  {
LABEL_5:
    if (v5 == 2)
    {
      goto LABEL_6;
    }

LABEL_37:
    strcpy(v19, ",inCase:");
    BYTE1(v19[1]) = 0;
    WORD1(v19[1]) = 0;
    HIDWORD(v19[1]) = -402653184;
    if (v5)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v5)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x23EED8450](v17, v18);

    MEMORY[0x23EED8450](v19[0], v19[1]);

    if (v6 != 8)
    {
      goto LABEL_7;
    }

    return v20;
  }

LABEL_30:
  v19[0] = 0x3A7466656C2CLL;
  v19[1] = 0xE600000000000000;
  if (v4)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v4)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x23EED8450](v15, v16);

  MEMORY[0x23EED8450](v19[0], v19[1]);

  if (v5 != 2)
  {
    goto LABEL_37;
  }

LABEL_6:
  if (v6 != 8)
  {
LABEL_7:
    strcpy(v19, ",placement:");
    HIDWORD(v19[1]) = -352321536;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EED8450](v7);

    MEMORY[0x23EED8450](v19[0], v19[1]);
  }

  return v20;
}

uint64_t ALBtAdvertisement._antennaIndex.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t ALBtAdvertisement._deviceInfoKw.setter(uint64_t result)
{
  *(v1 + 144) = result;
  *(v1 + 148) = BYTE4(result) & 1;
  return result;
}

Swift::String __swiftcall ALBtNotifications.description()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  _StringGuts.grow(_:)(24);

  strcpy(v10, "results,count,");
  HIBYTE(v10[1]) = -18;
  v9 = *(v1 + 16);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v3);

  MEMORY[0x23EED8450](0x2C7473616C2CLL, 0xE600000000000000);
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EED8450](v4, v5);

  v6 = v10[0];
  v7 = v10[1];
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

ALDataTypes::ALBtNotifications __swiftcall ALBtNotifications.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 1;
  return result;
}

uint64_t ALBtNotifications._results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

ALDataTypes::ALBtAdvInfoType7::Placement_optional __swiftcall ALBtAdvInfoType7.Placement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ALBtAdvertisement.BtType and conformance ALBtAdvertisement.BtType()
{
  result = lazy protocol witness table cache variable for type ALBtAdvertisement.BtType and conformance ALBtAdvertisement.BtType;
  if (!lazy protocol witness table cache variable for type ALBtAdvertisement.BtType and conformance ALBtAdvertisement.BtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALBtAdvertisement.BtType and conformance ALBtAdvertisement.BtType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ALBtAdvInfoType7.Placement and conformance ALBtAdvInfoType7.Placement()
{
  result = lazy protocol witness table cache variable for type ALBtAdvInfoType7.Placement and conformance ALBtAdvInfoType7.Placement;
  if (!lazy protocol witness table cache variable for type ALBtAdvInfoType7.Placement and conformance ALBtAdvInfoType7.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALBtAdvInfoType7.Placement and conformance ALBtAdvInfoType7.Placement);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALBtAdvertisement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 156))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ALBtAdvertisement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 156) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 156) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALBtNotification(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ALBtNotification(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ALBtNotifications(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ALBtNotifications(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ALBtAdvInfoType7.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

float ALResultOptions.intervalSec.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 12))
  {
    return 0.0;
  }

  return result;
}

uint64_t key path getter for ALResultOptions.intervalSec : ALResultOptions@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  v2 = *(result + 8);
  if (*(result + 12))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

_DWORD *key path setter for ALResultOptions.intervalSec : ALResultOptions(_DWORD *result, uint64_t a2)
{
  *(a2 + 8) = *result;
  *(a2 + 12) = 0;
  return result;
}

uint64_t *(*ALResultOptions.intervalSec.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  if (*(v1 + 12))
  {
    v2 = 0.0;
  }

  *(a1 + 8) = v2;
  return ALResultOptions.intervalSec.modify;
}

uint64_t *ALResultOptions.intervalSec.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 8) = *(result + 2);
  *(v1 + 12) = 0;
  return result;
}

void ALResultOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

uint64_t ALResultOptions._maxBatchSize.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ALResultOptions._intervalSec.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ALResultOptions._maxAgeSec.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ALResultOptions._startCfaTimeSec.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ALResultOptions._startCfaTimeSec.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ALResultOptions._endCfaTimeSec.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ALResultOptions._endCfaTimeSec.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
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

uint64_t getEnumTagSinglePayload for ALResultOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALResultOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t (*static ALKappaConfigNotifications.serializedIndications.getter())()
{
  swift_beginAccess();
  v0 = static ALKappaConfigNotifications.serializedIndications;

  return v0;
}

uint64_t static ALKappaConfigNotifications.serializedIndications.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static ALKappaConfigNotifications.serializedIndications = a1;
  qword_281A1C198 = a2;
}

uint64_t key path getter for static ALKappaConfigNotifications.serializedIndications : ALKappaConfigNotifications.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static ALKappaConfigNotifications.serializedIndications;
  v2 = qword_281A1C198;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [[String : String]], @unowned Bool) -> (@owned Data, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static ALKappaConfigNotifications.serializedIndications : ALKappaConfigNotifications.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static ALKappaConfigNotifications.serializedIndications = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [[String : String]], @in_guaranteed Bool) -> (@out Data, @error @owned Error);
  qword_281A1C198 = v3;
}

uint64_t getEnumTagSinglePayload for ALKappaConfigNotifications(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ALKappaConfigNotifications(_WORD *result, int a2, int a3)
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

void *partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [[String : String]], @in_guaranteed Bool) -> (@out Data, @error @owned Error)(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v9 = a1;
  v8 = a2;
  result = v4(&v7, &v9, &v8);
  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [[String : String]], @unowned Bool) -> (@owned Data, @error @owned Error)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(*a1, *a2);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

void *specialized closure #1 in variable initialization expression of static ALKappaConfigNotifications.serializedIndications()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:v7];

  v3 = v7[0];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

ALDataTypes::ALWiFiScanSingleAccessPoint::Band_optional __swiftcall ALWiFiScanSingleAccessPoint.Band.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double ALWiFiScanSingleAccessPoint.machContTimeSec.getter()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    if (*(v0 + 104))
    {
      v1 = *(v0 + 96);
    }

    else if ((*(v0 + 52) & 1) == 0)
    {
      return *(v0 + 96) - *(v0 + 48);
    }
  }

  return result;
}

double ALWiFiScanSingleAccessPoint.cfAbsTimeSec.getter()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    if (*(v0 + 72))
    {
      v1 = *(v0 + 64);
    }

    else if ((*(v0 + 52) & 1) == 0)
    {
      return *(v0 + 64) - *(v0 + 48);
    }
  }

  return result;
}

uint64_t ALWiFiScanSingleAccessPoint.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 36);
  v4 = *(v0 + 10);
  v5 = *(v0 + 44);
  v6 = *(v0 + 12);
  v7 = *(v0 + 52);
  v8 = *(v0 + 55);
  v9 = v0[8];
  v20 = v0[9];
  v10 = v0[12];
  v19 = *(v0 + 104);
  v11 = *(v0 + 105);
  if (v0[1])
  {
    if (*(v0 + 36))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84D38];
    *(v12 + 16) = xmmword_23C90A690;
    v14 = MEMORY[0x277D84D90];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v1;
    v15 = String.init(format:_:)();
    MEMORY[0x23EED8450](v15);

    MEMORY[0x23EED8450](979591533, 0xE400000000000000);

    if (v3)
    {
LABEL_3:
      if (v8 == 4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v16);

  MEMORY[0x23EED8450](0x3A697373722CLL, 0xE600000000000000);

  if (v8 == 4)
  {
LABEL_4:
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  MEMORY[0x23EED8450](0x3A646E61622CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x23EED8450](0, 0xE000000000000000);

  if (v5)
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_12:
    MEMORY[0x23EED8450](0x3A6365536567612CLL, 0xE800000000000000);
    Float.write<A>(to:)();
    MEMORY[0x23EED8450](0, 0xE000000000000000);

    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_11:
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v17);

  MEMORY[0x23EED8450](0x6C656E6E6168632CLL, 0xE90000000000003ALL);

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v20 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_18;
    }

    MEMORY[0x23EED8450](0x3A6166632CLL, 0xE500000000000000);
    Double.write<A>(to:)();
    MEMORY[0x23EED8450](0, 0xE000000000000000);
  }

  if (((v19 | v7) & 1) == 0)
  {
    MEMORY[0x23EED8450](0x3A74636D2CLL, 0xE500000000000000);
    Double.write<A>(to:)();
    MEMORY[0x23EED8450](0, 0xE000000000000000);
  }

LABEL_18:
  MEMORY[0x23EED8450](0, 0xE000000000000000);

  MEMORY[0x23EED8450](125, 0xE100000000000000);
  return 0x7B2069466957;
}

__n128 ALWiFiScanSingleAccessPoint.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = 1025;
  *(a2 + 40) = 0;
  *(a2 + 44) = 1;
  *(a2 + 48) = 0;
  *(a2 + 52) = 1;
  *(a2 + 53) = 514;
  *(a2 + 55) = 4;
  *(a2 + 56) = 0;
  *(a2 + 60) = 1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 64) = *a1;
  *(a2 + 80) = v6;
  *(a2 + 96) = v2;
  *(a2 + 104) = v3;
  *(a2 + 105) = v4;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._ssid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ALWiFiScanSingleAccessPoint._frequencyKhz.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

__n128 ALWiFiScanSingleAccessPoint._scanTimestamp.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 105);
  result = *(v1 + 64);
  v6 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

Swift::Bool __swiftcall ALWiFiScanResult.isOlderThan(timestamp:)(Swift::Double timestamp)
{
  if (*(v1 + 41))
  {
    return 1;
  }

  else
  {
    return *(v1 + 40) & 1 | (*(v1 + 32) < timestamp);
  }
}

uint64_t ALWiFiScanResult._accessPoints.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

double variable initialization expression of ALWiFiNotification._scanResult@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t ALWiFiNotifications.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  _StringGuts.grow(_:)(24);

  strcpy(v8, "results,count,");
  HIBYTE(v8[1]) = -18;
  v7 = *(v1 + 16);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EED8450](v3);

  MEMORY[0x23EED8450](0x2C7473616C2CLL, 0xE600000000000000);
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EED8450](v4, v5);

  return v8[0];
}

ALDataTypes::ALWiFiNotifications __swiftcall ALWiFiNotifications.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 1;
  return result;
}

uint64_t ALWiFiNotifications._results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ALWiFiScanSingleAccessPoint.Mode and conformance ALWiFiScanSingleAccessPoint.Mode()
{
  result = lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Mode and conformance ALWiFiScanSingleAccessPoint.Mode;
  if (!lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Mode and conformance ALWiFiScanSingleAccessPoint.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Mode and conformance ALWiFiScanSingleAccessPoint.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ALWiFiScanSingleAccessPoint.Band and conformance ALWiFiScanSingleAccessPoint.Band()
{
  result = lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Band and conformance ALWiFiScanSingleAccessPoint.Band;
  if (!lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Band and conformance ALWiFiScanSingleAccessPoint.Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALWiFiScanSingleAccessPoint.Band and conformance ALWiFiScanSingleAccessPoint.Band);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ALWiFiNotification.NotiType and conformance ALWiFiNotification.NotiType()
{
  result = lazy protocol witness table cache variable for type ALWiFiNotification.NotiType and conformance ALWiFiNotification.NotiType;
  if (!lazy protocol witness table cache variable for type ALWiFiNotification.NotiType and conformance ALWiFiNotification.NotiType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALWiFiNotification.NotiType and conformance ALWiFiNotification.NotiType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ALWiFiNotification.ScanType and conformance ALWiFiNotification.ScanType()
{
  result = lazy protocol witness table cache variable for type ALWiFiNotification.ScanType and conformance ALWiFiNotification.ScanType;
  if (!lazy protocol witness table cache variable for type ALWiFiNotification.ScanType and conformance ALWiFiNotification.ScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALWiFiNotification.ScanType and conformance ALWiFiNotification.ScanType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALWiFiScanSingleAccessPoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ALWiFiScanSingleAccessPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALWiFiNotification(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 127))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ALWiFiNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 126) = 0;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 127) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 127) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

ALDataTypes::ALCBUUID __swiftcall ALCBUUID.init(withHexString:)(Swift::String withHexString)
{
  v2 = v1;
  v3 = MEMORY[0x23EED8400](withHexString._countAndFlagsBits);

  v4 = [objc_opt_self() UUIDWithString_];

  *v2 = v4;
  return result;
}

uint64_t ALScanService.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id ALScanService.uuid.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t ALScanService._testingCustomWatchData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t ALScanService.init(name:uuid:shouldBoost:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v6;
  *(a5 + 24) = a4;
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of ALScanService.init(name:uuid:shouldBoost:));
  *(a5 + 32) = result;
  *(a5 + 40) = v8;
  return result;
}

uint64_t ALScanServices.service.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = 1178944834;
  }

  else
  {
    v3 = 892486982;
  }

  if (*v1)
  {
    v4 = 0x676E6974736554;
  }

  else
  {
    v4 = 892486982;
  }

  if (*v1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v6 = &outlined read-only object #0 of ALScanServices.service.getter;
  }

  else
  {
    v6 = &outlined read-only object #1 of ALScanServices.service.getter;
  }

  v7 = MEMORY[0x23EED8400](v3, 0xE400000000000000);
  v8 = [objc_opt_self() UUIDWithString_];

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  *(a1 + 24) = 1;
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v6);
  *(a1 + 32) = result;
  *(a1 + 40) = v10;
  return result;
}

ALDataTypes::ALScanServices_optional __swiftcall ALScanServices.init(uuid:)(CBUUID uuid)
{
  v2 = v1;
  v3 = uuid.super.isa;
  v4 = MEMORY[0x23EED8400](1178944834, 0xE400000000000000);
  v5 = objc_opt_self();
  v6 = [v5 UUIDWithString_];

  v7 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of ALScanServices.init(uuid:));
  v9 = v8;

  outlined consume of Data._Representation(v7, v9);
  type metadata accessor for CBUUID();
  LOBYTE(v9) = static NSObject.== infix(_:_:)();

  if (v9)
  {
    v10 = MEMORY[0x23EED8400](1178944834, 0xE400000000000000);
    v11 = [v5 UUIDWithString_];

    v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #1 of ALScanServices.init(uuid:));
    v14 = v13;

    outlined consume of Data._Representation(v12, v14);
    v15._countAndFlagsBits = 0x676E6974736554;
    v15._object = 0xE700000000000000;
    v16 = _findStringSwitchCase(cases:string:)(&outlined read-only object #2 of ALScanServices.init(uuid:), v15);
  }

  else
  {
    v3 = v3;
    v17 = MEMORY[0x23EED8400](892486982, 0xE400000000000000);
    v18 = [v5 UUIDWithString_];

    v19 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #3 of ALScanServices.init(uuid:));
    v21 = v20;

    outlined consume of Data._Representation(v19, v21);
    v22 = static NSObject.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {

      v30 = 2;
      goto LABEL_12;
    }

    v23 = MEMORY[0x23EED8400](892486982, 0xE400000000000000);
    v24 = [v5 UUIDWithString_];

    v25 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #4 of ALScanServices.init(uuid:));
    v27 = v26;

    outlined consume of Data._Representation(v25, v27);
    v28._countAndFlagsBits = 892486982;
    v28._object = 0xE400000000000000;
    v16 = _findStringSwitchCase(cases:string:)(&outlined read-only object #5 of ALScanServices.init(uuid:), v28);
  }

  if (v16 == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (!v16)
  {
    v30 = 0;
  }

LABEL_12:
  *v2 = v30;
  return result;
}

ALDataTypes::ALScanServices_optional __swiftcall ALScanServices.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ALScanServices.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t ALScanServices.rawValue.getter()
{
  if (*v0)
  {
    result = 0x676E6974736554;
  }

  else
  {
    result = 892486982;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ALScanServices(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E6974736554;
  }

  else
  {
    v4 = 892486982;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E6974736554;
  }

  else
  {
    v6 = 892486982;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ALScanServices@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ALScanServices.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ALScanServices(uint64_t *a1@<X8>)
{
  v2 = 892486982;
  if (*v1)
  {
    v2 = 0x676E6974736554;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ALScanServices()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ALScanServices()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ALScanServices()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
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

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
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

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t type metadata accessor for CBUUID()
{
  result = lazy cache variable for type metadata for CBUUID;
  if (!lazy cache variable for type metadata for CBUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CBUUID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ALScanServices and conformance ALScanServices()
{
  result = lazy protocol witness table cache variable for type ALScanServices and conformance ALScanServices;
  if (!lazy protocol witness table cache variable for type ALScanServices and conformance ALScanServices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ALScanServices and conformance ALScanServices);
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

uint64_t getEnumTagSinglePayload for ALScanService(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ALScanService(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ALScanServices(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ALScanServices(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ALTimeStamp._cfAbsoluteTimeSec.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ALTimeStamp._machAbsoluteTimeSec.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ALTimeStamp._machContinuousTimeSec.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void __swiftcall ALTimeStamp.init()(ALDataTypes::ALTimeStamp *__return_ptr retstr)
{
  retstr->_cfAbsoluteTimeSec.value = 0.0;
  retstr->_cfAbsoluteTimeSec.is_nil = 1;
  *(&retstr->_machAbsoluteTimeSec.value + 7) = 0.0;
  BYTE6(retstr->_machContinuousTimeSec.value) = 1;
  *(&retstr[1]._cfAbsoluteTimeSec.value + 5) = 0.0;
  BYTE4(retstr[1]._machAbsoluteTimeSec.value) = 1;
}

void __swiftcall ALTimeStamp.init(cfAbsoluteTimeSec:)(ALDataTypes::ALTimeStamp *__return_ptr retstr, Swift::Double cfAbsoluteTimeSec)
{
  type metadata accessor for TimesSync();
  static TimesSync.instance.getter();
  dispatch thunk of TimesSync.cfaMinusMctSec.getter();
  v5 = v4;

  v6 = cfAbsoluteTimeSec - v5;
  static TimesSync.instance.getter();
  v7 = dispatch thunk of TimesSync.mctMinusMatNs.getter();

  v8 = NsToSec.getter();
  retstr->_cfAbsoluteTimeSec.value = cfAbsoluteTimeSec;
  retstr->_cfAbsoluteTimeSec.is_nil = 0;
  *(&retstr->_machAbsoluteTimeSec.value + 7) = v6 - v8 * v7;
  BYTE6(retstr->_machContinuousTimeSec.value) = 0;
  *(&retstr[1]._cfAbsoluteTimeSec.value + 5) = v6;
  BYTE4(retstr[1]._machAbsoluteTimeSec.value) = 0;
}

Swift::String __swiftcall prettyFunctionName(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    v7 = *v5;
    v6 = v5[1];

    MEMORY[0x23EED8450](35, 0xE100000000000000);

    MEMORY[0x23EED8450](countAndFlagsBits, object);

    countAndFlagsBits = v7;
    object = v6;
  }

  else
  {
  }

  v8 = countAndFlagsBits;
  v9 = object;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t Logger._fault(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = a1();
  v16 = v15;
  v17 = String.init(_:)(a6, a7, a8);
  v19 = v18;
  v20._countAndFlagsBits = String.init(_:)(a3, a4, a5);
  v22 = v21;
  v23._countAndFlagsBits = v17;
  v23._object = v19;
  v20._object = v22;
  v24 = prettyFunctionName(_:_:)(v23, v20);

  v25 = static os_log_type_t.fault.getter();
  v26 = Logger.logObject.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24._countAndFlagsBits, v24._object, &v31);
    *(v27 + 12) = 2080;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

    *(v27 + 14) = v29;
    _os_log_impl(&dword_23C8FE000, v26, v25, "fault,func,%s,message,%s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EED8940](v28, -1, -1);
    MEMORY[0x23EED8940](v27, -1, -1);
  }

  else
  {
  }

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x746C756166, 0xE500000000000000, v24._countAndFlagsBits, v24._object, 0, 0, 0, 0);
}

unint64_t String.init(_:)(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

void Logger._fatal(_:function:file:line:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = a1();
  v17 = v16;
  v33 = a8;
  v18 = String.init(_:)(a6, a7, a8);
  v20 = v19;
  v21._countAndFlagsBits = String.init(_:)(a3, a4, a5);
  v23 = v22;
  v24._countAndFlagsBits = v18;
  v24._object = v20;
  v21._object = v23;
  v25 = prettyFunctionName(_:_:)(v24, v21);

  v26 = static os_log_type_t.error.getter();
  v27 = Logger.logObject.getter();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25._countAndFlagsBits, v25._object, &v34);
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v34);
    _os_log_impl(&dword_23C8FE000, v27, v26, "fatal,func,%s,message,%s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EED8940](v29, -1, -1);
    MEMORY[0x23EED8940](v28, -1, -1);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v15;
  *(v30 + 24) = v17;
  *(v30 + 32) = a6;
  *(v30 + 40) = a7;
  *(v30 + 48) = v33;
  *(v30 + 56) = a9;
  swift_bridgeObjectRetain_n();

  reportBug(type:subType:subTypeContext:fatalCallback:)(0x6C61746166, 0xE500000000000000, v25._countAndFlagsBits, v25._object, v15, v17, partial apply for closure #1 in Logger._fatal(_:function:file:line:), v30);

  [objc_opt_self() sleepForTimeInterval_];
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  MEMORY[0x23EED8450](0xD000000000000011, 0x800000023C90B380);
  Double.write<A>(to:)();
  v31 = v34;
  v32 = v35;
  v34 = v15;
  v35 = v17;

  MEMORY[0x23EED8450](v31, v32);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t one-time initialization function for nearbyinteraction()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static ALLogger.nearbyinteraction);
  __swift_project_value_buffer(v0, static ALLogger.nearbyinteraction);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for core(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static ALLogger.core.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t one-time initialization function for corelog(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t ALLogger.core.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void partial apply for closure #1 in Logger._fatal(_:function:file:line:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void reportBug(type:subType:subTypeContext:fatalCallback:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v62 = a8;
  v66 = a7;
  v14 = type metadata accessor for Logger();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v58 - v19;
  v20 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v67 = [objc_allocWithZone(MEMORY[0x277D6AFC0]) init];
  v21 = MEMORY[0x23EED8400](0xD000000000000010, 0x800000023C90B3E0);
  v58 = a1;
  v22 = MEMORY[0x23EED8400](a1, a2);
  v59 = a3;
  v23 = MEMORY[0x23EED8400](a3, a4);
  v60 = a5;
  if (a6)
  {
    v24 = MEMORY[0x23EED8400](a5, a6);
  }

  else
  {
    v24 = 0;
  }

  v63 = v20;
  v25 = [v20 processName];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x23EED8400](v26);
  }

  v27 = [v67 signatureWithDomain:v21 type:v22 subType:v23 subtypeContext:v24 detectedProcess:v25 triggerThresholdValues:0];

  if (!v27)
  {
    v43 = utillog.unsafeMutableAddressor();
    v45 = v64;
    v44 = v65;
    (*(v64 + 16))(v18, v43, v65);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v66;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_23C8FE000, v46, v47, "reportBugBlocking,signature,nil", v50, 2u);
      MEMORY[0x23EED8940](v50, -1, -1);
    }

    v51 = (*(v45 + 8))(v18, v44);
    v52 = v63;
    if (v49)
    {
      v49(v51);
    }

    isa = v67;
    goto LABEL_26;
  }

  v28 = v66;
  if (v66)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 6.0;
  }

  v30 = utillog.unsafeMutableAddressor();
  v32 = v64;
  v31 = v65;
  v33 = v61;
  (*(v64 + 16))(v61, v30, v65);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315906;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, a2, aBlock);
    *(v36 + 12) = 2080;
    *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a4, aBlock);
    *(v36 + 22) = 2080;
    if (a6)
    {
      v38 = v60;
    }

    else
    {
      v38 = 45;
    }

    v39 = v33;
    if (a6)
    {
      v40 = a6;
    }

    else
    {
      v40 = 0xE100000000000000;
    }

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, aBlock);

    *(v36 + 24) = v41;
    *(v36 + 32) = 2048;
    *(v36 + 34) = v29;
    _os_log_impl(&dword_23C8FE000, v34, v35, "reportBug,type:%s,subtype:%s,context:%s,delay:%f", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EED8940](v37, -1, -1);
    v42 = v36;
    v28 = v66;
    MEMORY[0x23EED8940](v42, -1, -1);

    (*(v32 + 8))(v39, v65);
  }

  else
  {

    (*(v32 + 8))(v33, v31);
  }

  aBlock[0] = 0;
  v52 = v27;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock[0])
  {

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v54 = swift_allocObject();
    v55 = v62;
    *(v54 + 16) = v28;
    *(v54 + 24) = v55;
    aBlock[4] = partial apply for closure #1 in reportBug(type:subType:subTypeContext:fatalCallback:);
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
    aBlock[3] = &block_descriptor;
    v56 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v28);

    v57 = v67;
    [v67 snapshotWithSignature:isa delay:0 events:0 payload:0 actions:v56 reply:v29];
    _Block_release(v56);

LABEL_26:
    return;
  }

  __break(1u);
}

uint64_t logginResponse(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  if (a1)
  {
    v16 = *MEMORY[0x277D6B1A0];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v17;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v52), (v19 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v18, v53);
      outlined destroy of AnyHashable(v52);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v20 = v50;
        v21 = [v50 BOOLValue];
        v22 = utillog.unsafeMutableAddressor();
        v23 = *(v3 + 16);
        if (v21)
        {
          v23(v15, v22, v2);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_23C8FE000, v24, v25, "reportBug,successful", v26, 2u);
            MEMORY[0x23EED8940](v26, -1, -1);
          }

          return (*(v3 + 8))(v15, v2);
        }

        v23(v13, v22, v2);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v36, v37))
        {
LABEL_25:

          return (*(v3 + 8))(v13, v2);
        }

        v38 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v48;
        *v38 = 136315138;
        v39 = *MEMORY[0x277D6B178];
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v40;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v52), (v42 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v41, v53);
          outlined destroy of AnyHashable(v52);
          if (swift_dynamicCast())
          {
            v43 = v50;
            v44 = v51;
LABEL_24:
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v49);

            *(v38 + 4) = v45;
            _os_log_impl(&dword_23C8FE000, v36, v37, "reportBug,failed,reason,%s ", v38, 0xCu);
            v46 = v48;
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x23EED8940](v46, -1, -1);
            MEMORY[0x23EED8940](v38, -1, -1);
            goto LABEL_25;
          }
        }

        else
        {
          outlined destroy of AnyHashable(v52);
        }

        v44 = 0xE700000000000000;
        v43 = 0x6E776F6E6B6E75;
        goto LABEL_24;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v52);
    }

    v28 = utillog.unsafeMutableAddressor();
    (*(v3 + 16))(v10, v28, v2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23C8FE000, v29, v30, "reportBug,response,malformed", v31, 2u);
      MEMORY[0x23EED8940](v31, -1, -1);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    v32 = utillog.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v32, v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23C8FE000, v33, v34, "reportBug,response,nil", v35, 2u);
      MEMORY[0x23EED8940](v35, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t partial apply for closure #1 in reportBug(type:subType:subTypeContext:fatalCallback:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = logginResponse(_:)(a1);
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EED8530](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t ticksInfo()()
{
  if (one-time initialization token for sTicksInfo != -1)
  {
    swift_once();
  }

  return static sTicksInfo in FuncData #1 in ticksInfo();
}

Swift::UInt64 __swiftcall convertNsToTicks(_:)(Swift::UInt64 result)
{
  if (one-time initialization token for sTicksInfo != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, static sTicksInfo in FuncData #1 in ticksInfo()))
  {
    if (static sTicksInfo in FuncData #1 in ticksInfo())
    {
      return result * static sTicksInfo in FuncData #1 in ticksInfo() / static sTicksInfo in FuncData #1 in ticksInfo();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall machAbsTimeNs()()
{
  v0 = mach_absolute_time();

  return convertTicksToNs(_:)(v0);
}

Swift::UInt64 __swiftcall machContTimeNs()()
{
  v0 = mach_continuous_time();

  return convertTicksToNs(_:)(v0);
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for TimesSync();
  result = swift_initStaticObject();
  static TimesSync.instance = result;
  return result;
}

uint64_t *TimesSync.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static TimesSync.instance;
}

uint64_t *TimesSync.SyncIntervalTicks.unsafeMutableAddressor()
{
  if (one-time initialization token for SyncIntervalTicks != -1)
  {
    swift_once();
  }

  return &static TimesSync.SyncIntervalTicks;
}

Swift::UInt64 one-time initialization function for SyncIntervalTicks()
{
  result = convertNsToTicks(_:)(0x174876E800uLL);
  static TimesSync.SyncIntervalTicks = result;
  return result;
}

uint64_t static TimesSync.SyncIntervalTicks.getter()
{
  if (one-time initialization token for SyncIntervalTicks != -1)
  {
    swift_once();
  }

  return static TimesSync.SyncIntervalTicks;
}

uint64_t TimesSync._mctMinusMatNs.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t TimesSync._cfaMinusMctSec.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t TimesSync._lastsyncMctTicks.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t one-time initialization function for sTicksInfo()
{
  result = closure #1 in variable initialization expression of static sTicksInfo in FuncData #1 in ticksInfo()();
  static sTicksInfo in FuncData #1 in ticksInfo() = result;
  static sTicksInfo in FuncData #1 in ticksInfo() = v1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static sTicksInfo in FuncData #1 in ticksInfo()()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &info - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  info = 0x100000001;
  if (mach_timebase_info(&info))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!info.numer)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!info.denom)
  {
    goto LABEL_9;
  }

  v5 = utillog.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    swift_beginAccess();
    denom = info.denom;
    *(v8 + 4) = info.numer;
    *(v8 + 8) = 1024;
    *(v8 + 10) = denom;
    _os_log_impl(&dword_23C8FE000, v6, v7, "ticksInfo,numer,%u,denom,%u", v8, 0xEu);
    MEMORY[0x23EED8940](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = info.numer;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TicksInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TicksInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}