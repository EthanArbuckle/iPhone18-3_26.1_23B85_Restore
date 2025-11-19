void sub_229C(id a1)
{
  v1 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v1 getActivePairedDevice];

  v2 = [v5 objectForKeyedSubscript:NRDevicePropertySystemVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1A27A8;
  qword_1A27A8 = v3;
}

BOOL sub_25A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183D10;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

BOOL sub_2618@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_264C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2674@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8._rawValue = &off_183D10;
  v23._countAndFlagsBits = a1;
  v23._object = a2;
  v9 = sub_13C104(v8, v23);

  if (v9)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v10 = sub_139A14();
    sub_4910(v10, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v11 = &type metadata for AlertFullSheetLayout.BodySpacing;
    v20 = &type metadata for AlertFullSheetLayout.BodySpacing;
    v19[0] = swift_allocObject();
    memcpy((v19[0] + 16), v4, 0x58uLL);
    sub_4990(v4, &v16);
    sub_139984();
    sub_49C8(v19);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_13BFE4(42);

    v16 = 0xD000000000000018;
    v17 = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    v18 = &type metadata for String;
    sub_139984();
    sub_49C8(&v16);
    sub_1399F4();
    v12 = &off_1853D8;
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v20 = &type metadata for AlertFullSheetLayout.BodySpacing;
    v19[0] = swift_allocObject();
    memcpy((v19[0] + 16), v4, 0x58uLL);
    sub_4990(v4, &v16);
    sub_139984();
    sub_49C8(v19);
    v18 = &type metadata for String;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000000014E710;
    sub_139984();
    sub_49C8(&v16);
    v18 = &type metadata for AlertFullSheetLayout.BodySpacing.OverrideSectionIdentifier;
    sub_139984();
    sub_49C8(&v16);
    sub_1399F4();
    v12 = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    v11 = &type metadata for BoxedLayoutCollectionSpacingModel;
  }

  a3[3] = v11;
  a3[4] = v12;
  v14 = swift_allocObject();
  *a3 = v14;
  memcpy((v14 + 16), v4, 0x58uLL);
  return sub_4990(v4, &v16);
}

uint64_t sub_2B2C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_183D48;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B80(char a1)
{
  if (a1)
  {
    return 0x6F74747542656E6FLL;
  }

  else
  {
    return 0x53736E6F74747562;
  }
}

uint64_t sub_2BF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2B2C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_2C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2B80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2C4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_2B2C(a1, a2);
  if (v7 == 2)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = &type metadata for AlertFullSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_4A80(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AlertFullSheetLayout.FooterSpacing;
    a3[4] = &off_185388;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0xB0uLL);
    return sub_4A80(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v18 = &type metadata for AlertFullSheetLayout.FooterSpacing;
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v3, 0xB0uLL);
    sub_4A80(v3, __dst);
    sub_139984();
    sub_49C8(v17);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AlertFullSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11 & 1;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      memcpy(__dst, (v3 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v13 = swift_allocObject();
      *a3 = v13;
      v14 = (v13 + 16);
      v15 = (v3 + 88);
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v17);
  }
}

void *sub_312C@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_32A0@<X0>(uint64_t *a1@<X8>)
{
  v5[3] = &type metadata for DefaultLayoutCollectionSpacingModel;
  v5[4] = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x58uLL);
  sub_312C(v5);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v5, 0xB0uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_3424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_32A0(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

double variable initialization expression of BannerHeaderComponentLayout.Metrics.textTrailing@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 sub_3524(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3530(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_5218(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_35B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_35BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_5218(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_35D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

NSString sub_3664@<X0>(void *a1@<X8>)
{
  result = sub_4C70();
  *a1 = result;
  return result;
}

uint64_t sub_368C(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2A0, type metadata accessor for AMSError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_36F8(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2A0, type metadata accessor for AMSError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_3768(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_3818(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_3884(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_38F0(void *a1, uint64_t a2)
{
  v4 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_3988(uint64_t a1, uint64_t a2)
{
  v4 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_3A04()
{
  sub_13C214();
  sub_13BB24();
  return sub_13C234();
}

void sub_3A64(uint64_t a1@<X8>)
{
  sub_3A98();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_3AA0@<X0>(uint64_t *a1@<X8>)
{
  result = NSDirectionalEdgeInsets.edgeInsets.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_3ACC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3B00(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_3B1C@<X0>(_DWORD *a1@<X8>)
{
  result = NSDirectionalEdgeInsets.edgeInsets.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_3B4C()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_3BBC()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_3C04(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_3C50(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2F8, type metadata accessor for UIContentSizeCategory);
  v3 = sub_44B4(&qword_19A300, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3D10()
{
  sub_520C();
  result = sub_3D38();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_3D3C(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A340, type metadata accessor for TextStyle);
  v3 = sub_44B4(&qword_19A348, type metadata accessor for TextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3DF8@<X0>(void *a1@<X8>)
{
  v2 = sub_13BB54();

  *a1 = v2;
  return result;
}

uint64_t sub_3E40(uint64_t a1)
{
  v2 = sub_44B4(&qword_19A2E8, type metadata accessor for AIDAServiceType);
  v3 = sub_44B4(&qword_19A2F0, type metadata accessor for AIDAServiceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_44B4(&qword_19A2D8, type metadata accessor for AMSError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_3FF8()
{
  sub_13BB84();
  sub_13BBA4();
}

Swift::Int sub_404C()
{
  sub_13BB84();
  sub_13C214();
  sub_13BBA4();
  v0 = sub_13C234();

  return v0;
}

uint64_t sub_40C0()
{
  v0 = sub_13BB84();
  v2 = v1;
  if (v0 == sub_13BB84() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_13C144();
  }

  return v5 & 1;
}

uint64_t sub_41A0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_41C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
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

uint64_t sub_4214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_42AC(uint64_t a1, unsigned int a2)
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

uint64_t sub_4300(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_4378(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_438C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_43CC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_44B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_47E4()
{
  result = qword_19A2C8;
  if (!qword_19A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A2C8);
  }

  return result;
}

uint64_t sub_4910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_4948(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_49C8(uint64_t a1)
{
  v2 = sub_4948(&unk_1A06F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A30()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_4B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4B78(uint64_t a1, id *a2)
{
  result = sub_13BB64();
  *a2 = 0;
  return result;
}

uint64_t sub_4BF0(uint64_t a1, id *a2)
{
  v3 = sub_13BB74();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_4C70()
{
  sub_13BB84();
  v0 = sub_13BB54();

  return v0;
}

uint64_t sub_4CCC()
{
  sub_13BB84();
  v0 = sub_13BBE4();

  return v0;
}

uint64_t getEnumTagSinglePayload for AlertFullSheetLayout.FooterSpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlertFullSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4E64);
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

uint64_t getEnumTagSinglePayload for AlertFullSheetLayout.BodySpacing.OverrideSectionIdentifier(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AlertFullSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x4FA0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_4FF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_511C()
{
  result = qword_19A330;
  if (!qword_19A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A330);
  }

  return result;
}

unint64_t sub_5174()
{
  result = qword_19A338;
  if (!qword_19A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A338);
  }

  return result;
}

uint64_t sub_524C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 28);

    return sub_52E0(v9, a2, v8);
  }
}

void *sub_531C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 28);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnimationHeader()
{
  result = qword_19A3B0;
  if (!qword_19A3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_541C()
{
  sub_139FA4();
  if (v0 <= 0x3F)
  {
    sub_54D0();
    if (v1 <= 0x3F)
    {
      sub_5528();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_54D0()
{
  if (!qword_19A3C0)
  {
    sub_13B7A4();
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19A3C0);
    }
  }
}

void sub_5528()
{
  if (!qword_19A3C8)
  {
    sub_558C(&unk_19A3D0);
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19A3C8);
    }
  }
}

uint64_t sub_558C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnimationHeader.Style(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x5670);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_56A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183D98;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  return v4 != 0;
}

BOOL sub_56FC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_56A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_5750()
{
  result = qword_19A410;
  if (!qword_19A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A410);
  }

  return result;
}

void sub_5864()
{
  sub_A04C();
  v72 = v0;
  v3 = v2;
  v5 = v4;
  v70 = v6;
  sub_4948(&qword_19A420);
  (__chkstk_darwin)();
  v68 = &v59 - v7;
  v78 = sub_13B584();
  sub_9E94();
  v9 = v8;
  v10 = (__chkstk_darwin)();
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v59 - v12;
  v13 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v14);
  sub_A0D8();
  v15 = type metadata accessor for AnimationHeader();
  sub_9F94();
  __chkstk_darwin(v16);
  sub_9EC0();
  v19 = (v18 - v17);
  sub_139BD4();
  inited = swift_initStackObject();
  v73[2] = v3;
  v21 = v72;
  sub_6050(0x6F6974616D696E61, 0xE90000000000006ELL, v15, sub_91F4, v73, v22, v23, v24, v59, v60);
  if (v21)
  {
    (*(v9 + 8))(v5, v78);
    sub_13B5A4();
    sub_9F94();
    (*(v26 + 8))(v3);
    goto LABEL_12;
  }

  v62 = v13;
  v63 = v1;
  v66 = inited;
  v72 = v9;
  v67 = v3;
  v64 = v25;
  *v19 = v25;
  v65 = v15;
  *&v75 = sub_BB310();
  *(&v75 + 1) = v27;
  v61 = v19;
  sub_13BFB4();
  sub_13B594();
  v28 = sub_13B564();
  v29 = v65;
  v60 = 0;
  if ((v28 & 1) == 0)
  {
    sub_A07C();
    v30 = v68;
    sub_80F0();
    if (sub_52E0(v30, 1, v62) != 1)
    {
      v39 = sub_A110();
      v40(v39);
      v41 = v30;
      v38 = v63;
      sub_92E4(v41, v63);
      goto LABEL_8;
    }

    sub_928C(v30, &qword_19A420);
  }

  v31 = sub_13BAB4();
  sub_9DE8();
  sub_9A68(v32, v33);
  swift_allocError();
  *v34 = 0xD000000000000011;
  v34[1] = 0x800000000014E730;
  v34[2] = v29;
  (*(*(v31 - 8) + 104))(v34, enum case for JSONError.missingProperty(_:), v31);
  swift_willThrow();
  v35 = sub_A110();
  v36(v35);

  v37 = sub_13B7A4();
  v38 = v63;
  sub_53A8(v63, 1, 1, v37);
LABEL_8:
  sub_92E4(v38, v61 + *(v29 + 28));
  sub_13B594();
  v42 = sub_13B564();
  v43 = v67;
  if (v42)
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v44, v45);
    sub_9F18();
    *v46 = 0x6575676573;
    v46[1] = 0xE500000000000000;
    v46[2] = v29;
    sub_9EF8();
    (*(v47 + 104))();
    swift_willThrow();
    v48 = sub_A1B4();
    MEMORY[0x6575676572](v48);

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v58 = v29;
  }

  else
  {
    sub_139BC4();
    v54 = sub_A1B4();
    MEMORY[0x6575676572](v54);
    sub_9414(&v74, &v75);
    v58 = v65;
  }

  v49 = v61;
  v50 = v61 + *(v58 + 32);
  v51 = v76;
  *v50 = v75;
  *(v50 + 1) = v51;
  *(v50 + 4) = v77;
  sub_6B44(0x656C797473, 0xE500000000000000, v58, sub_942C, &type metadata for AnimationHeader.Style, v55, v56, v57, v59, v60, SWORD2(v60), SBYTE6(v60), SHIBYTE(v60));
  v52 = v70;
  MEMORY[0x6575676572](v5, v78);
  sub_9354(v49, v52);
  sub_13B5A4();
  sub_9F94();
  (*(v53 + 8))(v43);
  sub_93B8(v49);
LABEL_12:
  sub_A064();
}

void sub_6050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_A04C();
  sub_9F68(v12, v13, v14, v15);
  sub_9E94();
  __chkstk_darwin();
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v16 = sub_A030(), v17(v16), !a10))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v20, v21);
    v22 = sub_9F18();
    sub_9F08(v22, v23);
    *(v24 + 16) = v11;
    sub_9EF8();
    (*(v25 + 104))();
    swift_willThrow();
    sub_A0C0();
    v26 = sub_9FA4();
    v10(v26);
  }

  else
  {
    v18 = sub_9F58();
    v19(v18);
  }

  sub_A040();
  sub_A064();
}

void sub_61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_A04C();
  sub_9F68(v12, v13, v14, v15);
  sub_9E94();
  __chkstk_darwin(v16);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v17 = sub_A030(), v18(v17), a10 == 1))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v19, v20);
    v21 = sub_9F18();
    sub_9F08(v21, v22);
    *(v23 + 16) = v11;
    sub_9EF8();
    (*(v24 + 104))();
    swift_willThrow();
    sub_A0C0();
    v25 = sub_9FA4();
    v10(v25);
  }

  else
  {
    v26 = sub_9F58();
    v27(v26);
  }

  sub_A040();
  sub_A064();
}

void sub_631C()
{
  sub_A04C();
  v17 = v3;
  v5 = v4;
  sub_9FDC();
  sub_9E94();
  __chkstk_darwin(v6);
  sub_9E44();
  sub_13B594();
  if (sub_13B564() & 1) != 0 || (v17(&v15, v1), (v16))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v7, v8);
    v9 = sub_9F18();
    *v10 = v2;
    v10[1] = v0;
    v10[2] = v5;
    sub_9EF8();
    (*(v11 + 104))();
    swift_willThrow();
    sub_A0C0();
    v12 = sub_A0B4();
    v9(v12);
  }

  else
  {
    v13 = sub_A0B4();
    v14(v13);
  }

  sub_A064();
}

void sub_64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11)
{
  sub_A04C();
  sub_9F68(v13, v14, v15, v16);
  sub_9E94();
  __chkstk_darwin(v17);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v18 = sub_A030(), v19(v18), (a11 & 0xFF00) == 0x200))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v20, v21);
    v22 = sub_9F18();
    sub_9F08(v22, v23);
    *(v24 + 16) = v12;
    sub_9EF8();
    (*(v25 + 104))();
    swift_willThrow();
    sub_A0C0();
    v26 = sub_9FA4();
    v11(v26);
  }

  else
  {
    v27 = sub_9F58();
    v28(v27);
  }

  sub_A040();
  sub_A064();
}

void sub_6614()
{
  sub_A04C();
  v26[0] = v5;
  sub_A140();
  sub_9E94();
  __chkstk_darwin(v6);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || ((v26[0])(&v20, v1), (v7 = v21) == 0))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v13, v14);
    v15 = sub_9F18();
    *v16 = v2;
    v16[1] = v0;
    v16[2] = v4;
    sub_9EF8();
    (*(v17 + 104))();
    swift_willThrow();
    sub_A0C0();
    v18 = sub_A0B4();
    v15(v18);
  }

  else
  {
    v27 = v25;
    v8 = v24;
    v19 = v23;
    v9 = v22;
    v10 = v20;
    v11 = sub_A0B4();
    v12(v11);
    *v3 = v10;
    *(v3 + 8) = v7;
    *(v3 + 16) = v9;
    *(v3 + 24) = v19;
    *(v3 + 40) = v8;
    *(v3 + 48) = v27 & 1;
  }

  sub_A064();
}

void sub_67CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned __int16 a11, unsigned __int8 a12)
{
  sub_A04C();
  sub_9F68(v14, v15, v16, v17);
  sub_9E94();
  __chkstk_darwin(v18);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v19 = sub_A030(), v20(v19), ((a11 | (a12 << 16)) & 0xFF0000) == 0x30000))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v21, v22);
    v23 = sub_9F18();
    sub_9F08(v23, v24);
    *(v25 + 16) = v13;
    sub_9EF8();
    (*(v26 + 104))();
    swift_willThrow();
    sub_A0C0();
    v27 = sub_9FA4();
    v12(v27);
  }

  else
  {
    v28 = sub_9F58();
    v29(v28);
  }

  sub_A040();
  sub_A064();
}

void sub_6934()
{
  sub_A04C();
  v25 = v3;
  v4 = sub_A140();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v23 = v2;
    v24 = v4;
    v25(&v27, v0);
    v8 = v27;
    v9 = v28;
    v10 = v32;
    if (v32 > 1u || (v29 <= 0xFF ? (v11 = (v27 & 0xFFFFFFFFFFFCF800) == 0x1FFFFFFCF000) : (v11 = 0), v11 ? (v12 = (v28 & 0xF000000000000007) == 0) : (v12 = 0), !v12))
    {
      v20 = v31;
      v26 = v30;
      v21 = v0;
      v22 = v29;
      (*(v6 + 8))(v21, v24);
      *v1 = v8;
      *(v1 + 8) = v9;
      *(v1 + 16) = v22;
      *(v1 + 24) = v26;
      *(v1 + 40) = v20;
      *(v1 + 48) = v10;
      goto LABEL_14;
    }

    v2 = v23;
    v4 = v24;
  }

  sub_13BAB4();
  sub_9DE8();
  sub_9A68(v13, v14);
  v15 = sub_9F18();
  sub_9F08(v15, v16);
  *(v17 + 16) = v2;
  sub_9EF8();
  (*(v18 + 104))();
  swift_willThrow();
  v19 = *(v6 + 8);

  v19(v0, v4);
LABEL_14:
  sub_A040();
  sub_A064();
}

void sub_6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_A04C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_13B584();
  sub_9E94();
  v20 = v19;
  __chkstk_darwin();
  sub_9E44();
  sub_13B594();
  if (sub_13B564() & 1) != 0 || (v14(), sub_A010(), (a13))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v21, v22);
    sub_9F18();
    *v23 = v18;
    v23[1] = v16;
    sub_A1F0(v23, v23);
    sub_9EF8();
    (*(v24 + 104))();
    swift_willThrow();
    v25 = *(v20 + 8);

    v26 = sub_9FA4();
    v25(v26);
  }

  else
  {
    v27 = sub_9F58();
    v28(v27);
  }

  sub_A064();
}

void sub_6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_A04C();
  sub_9FB0(v15, v16, v17);
  sub_9E94();
  __chkstk_darwin(v18);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v14(), sub_A010(), a13 == 4))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v19, v20);
    v21 = sub_9F18();
    v23 = sub_9F08(v21, v22);
    sub_A1F0(v23, v24);
    sub_9EF8();
    (*(v25 + 104))();
    swift_willThrow();
    sub_A0C0();
    v26 = sub_9FA4();
    v13(v26);
  }

  else
  {
    v27 = sub_9F58();
    v28(v27);
  }

  sub_A040();
  sub_A064();
}

void sub_6EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_A04C();
  sub_9FB0(v15, v16, v17);
  sub_9E94();
  __chkstk_darwin(v18);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v14(), sub_A010(), a13 == 2))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v19, v20);
    v21 = sub_9F18();
    v23 = sub_9F08(v21, v22);
    sub_A1F0(v23, v24);
    sub_9EF8();
    (*(v25 + 104))();
    swift_willThrow();
    sub_A0C0();
    v26 = sub_9FA4();
    v13(v26);
  }

  else
  {
    v27 = sub_9F58();
    v28(v27);
  }

  sub_A040();
  sub_A064();
}

void sub_71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_A04C();
  sub_9FB0(v15, v16, v17);
  sub_9E94();
  __chkstk_darwin(v18);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (v14(), sub_A010(), a13 == 3))
  {
    sub_13BAB4();
    sub_9DE8();
    sub_9A68(v19, v20);
    v21 = sub_9F18();
    v23 = sub_9F08(v21, v22);
    sub_A1F0(v23, v24);
    sub_9EF8();
    (*(v25 + 104))();
    swift_willThrow();
    sub_A0C0();
    v26 = sub_9FA4();
    v13(v26);
  }

  else
  {
    v27 = sub_9F58();
    v28(v27);
  }

  sub_A040();
  sub_A064();
}

uint64_t sub_73A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_9FDC();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (sub_9624(), sub_13B524(), v7 = v19, v19 == 8))
  {
    v7 = sub_13BAB4();
    sub_9DE8();
    sub_9A68(v8, v9);
    v10 = sub_9F18();
    sub_9F08(v10, v11);
    *(v12 + 16) = a3;
    sub_9EF8();
    (*(v13 + 104))();
    swift_willThrow();
    v14 = *(v5 + 8);

    v15 = sub_9FA4();
    v14(v15);
  }

  else
  {
    v16 = sub_9FA4();
    v17(v16);
  }

  return v7;
}

uint64_t sub_7530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_9FDC();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9E44();
  sub_13B594();
  if ((sub_13B564() & 1) != 0 || (sub_9B58(), sub_13B524(), v7 = v19, v19 == 5))
  {
    v7 = sub_13BAB4();
    sub_9DE8();
    sub_9A68(v8, v9);
    v10 = sub_9F18();
    sub_9F08(v10, v11);
    *(v12 + 16) = a3;
    sub_9EF8();
    (*(v13 + 104))();
    swift_willThrow();
    v14 = *(v5 + 8);

    v15 = sub_9FA4();
    v14(v15);
  }

  else
  {
    v16 = sub_9FA4();
    v17(v16);
  }

  return v7;
}

void sub_7768()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9480();
  sub_9EE4();
  sub_13BF34();
  if (v1)
  {

    *v0 = 0u;
    v0[1] = 0u;
    v0[2] = xmmword_13F290;
  }

  sub_A178();
}

void sub_78E8()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_95D0();
  sub_9EE4();
  sub_13BF34();
  if (v1)
  {

    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 137) = 0u;
  }

  sub_A178();
}

void sub_7A30()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9EE4();
  sub_38E7C();
  if (v1)
  {

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 64) = -1;
  }

  sub_A178();
}

void sub_7B84()
{
  sub_A1FC();
  v1 = v0;
  v3 = v2;
  v4 = sub_13B5A4();
  sub_9E94();
  __chkstk_darwin();
  sub_9E64();
  sub_13B584();
  sub_9E94();
  __chkstk_darwin();
  sub_9EC0();
  v3(0);
  v5 = sub_A128();
  v6(v5);
  v7 = sub_A1A0();
  v8(v7);
  v9 = sub_A1C8();
  v1(v9);
  if (v4)
  {
  }

  sub_A214();
}

void sub_7CD0()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9EE4();
  sub_3963C();
  if (v1)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  sub_A178();
}

void sub_7DF4()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9678();
  sub_9EE4();
  sub_13BF34();
  if (v1)
  {

    *v0 = xmmword_13F2A0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  sub_A178();
}

void sub_7F30()
{
  sub_A164();
  sub_A094();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EC0();
  v5 = v4 - v3;
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v6);
  v8 = sub_9E24(v7, v14);
  v9(v8, v1);
  v10 = sub_A1DC();
  v11(v10);
  type metadata accessor for Badge();
  sub_9A68(&qword_19A478, type metadata accessor for Badge);
  sub_A0E8();
  if (v5)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_4948(&qword_19A480);
  sub_53A8(v0, v12, 1, v13);
  sub_A178();
}

void sub_80F0()
{
  sub_A1FC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_13B5A4();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin();
  sub_9EC0();
  v15 = v14 - v13;
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin();
  sub_9EC0();
  (*(v18 + 16))(v17 - v16, v7);
  (*(v12 + 16))(v15, v5, v10);
  v3(0);
  sub_13BF34();
  v19 = sub_4948(v1);
  sub_53A8(v9, 0, 1, v19);
  sub_A214();
}

void sub_8290()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9870();
  sub_9EE4();
  sub_13BF34();
  if (v1)
  {

    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
    v0[5] = 0;
    v0[6] = 0;
    v0[4] = 0;
  }

  sub_A178();
}

void sub_83C8()
{
  sub_A1FC();
  v2 = sub_A094();
  sub_9E94();
  __chkstk_darwin(v3);
  sub_9E64();
  sub_13B584();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  sub_13B644();
  v5 = sub_A128();
  v6(v5);
  v7 = sub_A1A0();
  v8(v7);
  sub_A1C8();
  sub_13B714();
  if (v2)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_53A8(v0, v9, 1, v1);
  sub_A214();
}

void sub_8568()
{
  sub_A1FC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_13B5A4();
  sub_9E94();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_9E64();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v15);
  sub_9EC0();
  (*(v18 + 16))(v17 - v16, v10);
  (*(v13 + 16))(v0, v8, v11);
  v6(0);
  sub_9A68(v4, v2);
  sub_13BF34();
  sub_A214();
}

void sub_86F8()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v12);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  v9 = sub_9EE4();
  sub_C7BFC(v9, v10, v11);
  if (v1)
  {

    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  sub_A178();
}

uint64_t sub_8818(uint64_t a1)
{
  sub_13B5A4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  sub_A0D8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v5);
  sub_9EA8();
  (*(v6 + 16))(v2, a1);
  v7 = sub_A18C();
  v8(v7);
  return sub_11F884(v2, v1, v9, v10, v11, v12, v13, v14) & 0x101FF;
}

void sub_895C()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v9);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  sub_9A14();
  sub_9EE4();
  sub_13BF34();
  if (v1)
  {

    *v0 = xmmword_13F2A0;
    bzero(v0 + 1, 0x88uLL);
  }

  sub_A178();
}

void sub_8A98()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v1);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v2);
  v4 = sub_9E00(v3, v8);
  v5(v4);
  v6 = sub_9ED0();
  v7(v6);
  sub_139D94();
  *v0 = v9;
  *(v0 + 8) = v10;
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  *(v0 + 40) = v13;
  *(v0 + 48) = v14;
  sub_A178();
}

uint64_t sub_8C00(uint64_t a1)
{
  sub_13B5A4();
  sub_9E94();
  __chkstk_darwin(v4);
  sub_9EC0();
  sub_A0D8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v5);
  sub_9EA8();
  (*(v6 + 16))(v2, a1);
  v7 = sub_A18C();
  v8(v7);
  return sub_107E94(v2, v1) & 0xFFFFFF;
}

void sub_8D88()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v3);
  v5 = sub_9E00(v4, v14);
  v6(v5);
  v7 = sub_9ED0();
  v8(v7);
  v9 = sub_9EE4();
  sub_1089BC(v9, v10, v11);
  if (v1)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = _s6ButtonVMa();
  sub_53A8(v0, v12, 1, v13);
  sub_A178();
}

void sub_8EC4()
{
  sub_A164();
  sub_A094();
  sub_9E94();
  __chkstk_darwin(v2);
  sub_9EC0();
  v5 = v4 - v3;
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v6);
  v8 = sub_9E24(v7, v14);
  v9(v8, v1);
  v10 = sub_A1DC();
  v11(v10);
  _s6ButtonVMa();
  sub_9A68(&qword_19A4F8, _s6ButtonVMa);
  sub_A0E8();
  if (v5)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_4948(&qword_19A500);
  sub_53A8(v0, v12, 1, v13);
  sub_A178();
}

void sub_9054()
{
  sub_A164();
  sub_9F38();
  sub_9E94();
  __chkstk_darwin(v1);
  sub_9EA8();
  sub_13B584();
  sub_9E7C();
  __chkstk_darwin(v2);
  v4 = sub_9E00(v3, v8);
  v5(v4);
  v6 = sub_9ED0();
  v7(v6);
  sub_9AB0();
  sub_13BF34();
  *v0 = v9;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  *(v0 + 48) = v12;
  sub_A178();
}

void sub_91B4(void *a1@<X8>)
{
  sub_9FF8();
  sub_7B84();
  *a1 = v2;
}

void sub_91F4(void *a1@<X8>)
{
  sub_9FF8();
  sub_7B84();
  *a1 = v2;
}

uint64_t sub_928C(uint64_t a1, uint64_t *a2)
{
  sub_4948(a2);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_92E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19A350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_93B8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9414(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_942C()
{
  result = qword_19A430;
  if (!qword_19A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A430);
  }

  return result;
}

unint64_t sub_9480()
{
  result = qword_19A438;
  if (!qword_19A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A438);
  }

  return result;
}

unint64_t sub_94D4()
{
  result = qword_19A448;
  if (!qword_19A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A448);
  }

  return result;
}

unint64_t sub_9528()
{
  result = qword_19A450;
  if (!qword_19A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A450);
  }

  return result;
}

unint64_t sub_957C()
{
  result = qword_19A458;
  if (!qword_19A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A458);
  }

  return result;
}

unint64_t sub_95D0()
{
  result = qword_19A460;
  if (!qword_19A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A460);
  }

  return result;
}

unint64_t sub_9624()
{
  result = qword_19A468;
  if (!qword_19A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A468);
  }

  return result;
}

unint64_t sub_9678()
{
  result = qword_19A470;
  if (!qword_19A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A470);
  }

  return result;
}

unint64_t sub_96CC()
{
  result = qword_19A488;
  if (!qword_19A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A488);
  }

  return result;
}

unint64_t sub_9720()
{
  result = qword_19A490;
  if (!qword_19A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A490);
  }

  return result;
}

unint64_t sub_9774()
{
  result = qword_19A4A0;
  if (!qword_19A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4A0);
  }

  return result;
}

unint64_t sub_97C8()
{
  result = qword_19A4A8;
  if (!qword_19A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4A8);
  }

  return result;
}

unint64_t sub_981C()
{
  result = qword_19A4B0;
  if (!qword_19A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4B0);
  }

  return result;
}

unint64_t sub_9870()
{
  result = qword_19A4B8;
  if (!qword_19A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4B8);
  }

  return result;
}

unint64_t sub_98C4()
{
  result = qword_19A4C0;
  if (!qword_19A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4C0);
  }

  return result;
}

unint64_t sub_9918()
{
  result = qword_19A4C8;
  if (!qword_19A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4C8);
  }

  return result;
}

unint64_t sub_996C()
{
  result = qword_19A4D0;
  if (!qword_19A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4D0);
  }

  return result;
}

unint64_t sub_99C0()
{
  result = qword_19A4D8;
  if (!qword_19A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4D8);
  }

  return result;
}

unint64_t sub_9A14()
{
  result = qword_19A4E8;
  if (!qword_19A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A4E8);
  }

  return result;
}

uint64_t sub_9A68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_9AB0()
{
  result = qword_19A508;
  if (!qword_19A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A508);
  }

  return result;
}

unint64_t sub_9B04()
{
  result = qword_19A510;
  if (!qword_19A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A510);
  }

  return result;
}

unint64_t sub_9B58()
{
  result = qword_19A518;
  if (!qword_19A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A518);
  }

  return result;
}

unint64_t sub_9BAC()
{
  result = qword_19A520;
  if (!qword_19A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A520);
  }

  return result;
}

unint64_t sub_9C00()
{
  result = qword_19A528;
  if (!qword_19A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A528);
  }

  return result;
}

unint64_t sub_9C54()
{
  result = qword_19A530;
  if (!qword_19A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A530);
  }

  return result;
}

unint64_t sub_9CA8()
{
  result = qword_19A538;
  if (!qword_19A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A538);
  }

  return result;
}

uint64_t sub_9D58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_4948(a3);
  sub_9F94();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_9F08(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t sub_9F18()
{

  return swift_allocError();
}

uint64_t sub_9F38()
{

  return sub_13B5A4();
}

uint64_t sub_9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 88) = a4;

  return sub_13B584();
}

uint64_t sub_9FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a3;

  return sub_13B584();
}

uint64_t sub_9FDC()
{

  return sub_13B584();
}

uint64_t sub_A010()
{

  return sub_13B524();
}

uint64_t sub_A094()
{

  return sub_13B5A4();
}

uint64_t sub_A0C0()
{
}

uint64_t sub_A0E8()
{

  return sub_13BF34();
}

uint64_t sub_A110()
{
  result = v0;
  *(v1 - 240) = *(*(v1 - 232) + 8);
  return result;
}

uint64_t sub_A140()
{

  return sub_13B584();
}

void sub_A22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19A598);
  sub_13B5E4();

  sub_AD44(v6, a3);

  v5 = [v3 contentView];
  [v5 setNeedsLayout];
}

uint64_t sub_A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AnimationHeaderComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_A354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AnimationHeaderComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_A3BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_A614(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_A65C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetchSubject;
  sub_4948(&unk_19EBD0);
  swift_allocObject();
  *&v4[v9] = sub_13A644();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetchSubscription] = 0;
  v10 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetcher];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_objectGraph] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AnimationHeaderComponent();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_BEB4();

  return v11;
}

void sub_A778()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 addSubview:v2];
  }

  v4 = [v0 contentView];
  [v4 setNeedsLayout];
}

void sub_A828(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_A778();
}

void sub_A900()
{
  v1 = v0;
  v2 = type metadata accessor for AnimationHeaderComponent();
  v38.receiver = v0;
  v38.super_class = v2;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationView];
  if (v3 && *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v4 = v3;
    v5 = sub_13B9A4();
    v6 = (*(*v37[0] + 88))(v5);
    if (v6 && (v7 = v6, v8 = [v6 topViewController], v7, v8))
    {
      v9 = [v1 contentView];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v39.origin.x = v11;
      v39.origin.y = v13;
      v39.size.width = v15;
      v39.size.height = v17;
      MinX = CGRectGetMinX(v39);
      v19 = [v1 contentView];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v40.origin.x = v21;
      v40.origin.y = v23;
      v40.size.width = v25;
      v40.size.height = v27;
      MinY = CGRectGetMinY(v40);
      v29 = [v8 view];
      if (v29)
      {
        [v29 frame];
        sub_CD2C();
        v41.origin.x = sub_CD18();
        Width = CGRectGetWidth(v41);
        v31 = [v8 view];
        if (v31)
        {
          [v31 frame];
          sub_CD4C();
          v42.origin.x = sub_CD04();
          [v4 setFrame:{MinX, MinY, Width, CGRectGetHeight(v42) * 0.44}];
          sub_BDE4(v4);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (qword_19A018 != -1)
      {
        sub_CCD4();
      }

      v32 = sub_139A14();
      sub_4910(v32, qword_1B2B00);
      sub_4948(&unk_19E010);
      v33 = sub_1399C4();
      sub_CCF4(v33);
      *(swift_allocObject() + 16) = xmmword_13E650;
      v37[3] = v2;
      v37[0] = v1;
      v34 = v1;
      v35 = AMSLogKey();
      if (v35)
      {
        v36 = v35;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v37);
      sub_139974();
      sub_1399F4();
    }
  }
}

void sub_AD44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_objectGraph] = a2;

  sub_139E64();
  sub_13B6B4();
  v6 = sub_13B9A4();
  v7 = (*(*v29[0] + 88))(v6);
  if (v7 && (v8 = v7, v9 = [v7 topViewController], v8, v9))
  {
    sub_B140(v9);
    v11 = v10;
    v13 = v12;
    [objc_msgSend(v3 "contentView")];
    sub_CD2C();
    v30.origin.x = sub_CD18();
    MinX = CGRectGetMinX(v30);
    [objc_msgSend(v3 "contentView")];
    sub_CD4C();
    v31.origin.x = sub_CD04();
    MinY = CGRectGetMinY(v31);
    v16 = [objc_allocWithZone(sub_139C04()) initWithFrame:{MinX, MinY, v11, v13}];
    sub_A828(v16);
    swift_weakInit();
    swift_weakDestroy();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 2) = v17;
    *(v18 + 3) = v3;
    *(v18 + 4) = a1;
    v19 = &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetcher];
    v20 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetcher];
    *v19 = sub_CA54;
    v19[1] = v18;

    v21 = v3;

    sub_C9FC(v20);

    v22 = *v19;
    if (*v19)
    {

      (v22)(v23);
      sub_C9FC(v22);
    }
  }

  else
  {
    if (qword_19A018 != -1)
    {
      sub_CCD4();
    }

    v24 = sub_139A14();
    sub_4910(v24, qword_1B2B00);
    sub_4948(&unk_19E010);
    v25 = sub_1399C4();
    sub_CCF4(v25);
    *(swift_allocObject() + 16) = xmmword_13E650;
    v29[3] = type metadata accessor for AnimationHeaderComponent();
    v29[0] = v3;
    v26 = v3;
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v29);
    sub_139974();
    sub_1399F4();
  }
}

void sub_B140(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    CGRectGetWidth(v22);
    v12 = [a1 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v23.origin.x = v15;
      v23.origin.y = v17;
      v23.size.width = v19;
      v23.size.height = v21;
      CGRectGetHeight(v23);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_B238(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_139A64();
    v7 = sub_139A54();
    v8 = sub_139A44();

    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v6;
    v19 = sub_CAA8;
    v20 = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_875D0;
    v18 = &unk_185728;
    v10 = _Block_copy(aBlock);
    v11 = a2;

    v12 = v6;

    [v8 addFinishBlock:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v18 = type metadata accessor for AnimationHeaderComponent();
    aBlock[0] = a2;
    v14 = a2;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(aBlock);
    sub_139974();
    sub_1399E4();
  }
}

uint64_t sub_B50C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = sub_13B4A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13B4E4();
  result = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v19 = sub_139A14();
    sub_4910(v19, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13F4C0;
    v43 = type metadata accessor for AnimationHeaderComponent();
    aBlock[0] = a3;
    v20 = a3;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(aBlock);
    sub_139974();
    v30 = direct field offset for Animation.animationUrl;
    v31 = sub_1397E4();
    v43 = v31;
    v32 = sub_CC08(aBlock);
    (*(*(v31 - 8) + 16))(v32, a4 + v30, v31);
    sub_139984();
    sub_CC68(aBlock, &unk_1A06F0);
    sub_139974();
    swift_getErrorValue();
    v33 = v40;
    v34 = v41;
    v43 = v41;
    v35 = sub_CC08(aBlock);
    (*(*(v34 - 1) + 16))(v35, v33, v34);
    sub_139984();
    sub_CC68(aBlock, &unk_1A06F0);
    sub_1399E4();
  }

  else if (a1)
  {
    v39 = v16;
    sub_CACC(0, &qword_19EBA0);
    v38 = v11;
    v23 = a1;
    v37 = sub_13BD84();
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a5;
    v24[5] = v23;
    v44 = sub_CB5C;
    v45 = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    v43 = &unk_185778;
    v25 = _Block_copy(aBlock);
    v26 = a3;
    v27 = v23;

    v28 = a5;

    sub_13B4C4();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_CB68();
    sub_4948(&unk_19EBB0);
    sub_CBC0(&qword_19E070, &unk_19EBB0);
    sub_13BF64();
    v29 = v37;
    sub_13BD94();
    _Block_release(v25);

    (*(v38 + 8))(v13, v10);
    return (*(v39 + 8))(v18, v14);
  }

  return result;
}

uint64_t sub_BAB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = sub_4948(&unk_19EBC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v9 = sub_139A14();
  sub_4910(v9, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v26 = type metadata accessor for AnimationHeaderComponent();
  v25[0] = a1;
  v10 = a1;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v25);
  sub_139974();
  v26 = sub_139FA4();
  v25[0] = a2;

  sub_139984();
  sub_CC68(v25, &unk_1A06F0);
  sub_1399D4();

  v13 = sub_139804();
  v15 = v14;
  v16 = direct field offset for Animation.animationUrl;
  v17 = sub_1397E4();
  (*(*(v17 - 8) + 16))(v8, a2 + v16, v17);
  sub_53A8(v8, 0, 1, v17);
  v18 = [v10 traitCollection];
  [v18 displayScale];
  v20 = v19;

  v21 = objc_allocWithZone(MicaPlayer);
  sub_B0CD4(v13, v15, v8, v20);
  sub_139BE4();
  return sub_139BF4();
}

id sub_BDE4(char *a1)
{
  v2 = direct field offset for AnimationView.animation;
  result = swift_beginAccess();
  if (!*&a1[v2])
  {
    result = [a1 frame];
    if (v4 > 0.0)
    {
      sub_4948(&unk_19EBD0);
      sub_CBC0(&qword_19A610, &unk_19EBD0);
      return sub_13A654();
    }
  }

  return result;
}

uint64_t sub_BEB4()
{
  v1 = sub_4948(&unk_19EBE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  sub_13BF24();
  sub_9E94();
  v26 = v5;
  v27 = v4;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19A5F0);
  sub_9E94();
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  sub_4948(&unk_19EBF0);
  sub_9E94();
  v31 = v12;
  v32 = v13;
  __chkstk_darwin(v12);
  v25 = &v23 - v14;
  v34 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetchSubject);

  sub_13BF14();
  v24 = objc_opt_self();
  v15 = [v24 mainRunLoop];
  v33 = v15;
  v23 = sub_13BF04();
  sub_53A8(v3, 1, 1, v23);
  sub_4948(&unk_19EBD0);
  sub_CACC(0, &qword_19A5F8);
  sub_CBC0(&unk_19EC00, &unk_19EBD0);
  sub_C944();
  sub_13A684();
  sub_CC68(v3, &unk_19EBE0);

  (*(v26 + 8))(v7, v27);

  v16 = [v24 mainRunLoop];
  v34 = v16;
  sub_53A8(v3, 1, 1, v23);
  sub_CBC0(&unk_19EC10, &qword_19A5F0);
  v17 = v25;
  v18 = v29;
  sub_13A674();
  sub_CC68(v3, &unk_19EBE0);

  (*(v30 + 8))(v11, v18);
  swift_allocObject();
  v19 = v28;
  swift_unknownObjectWeakInit();
  sub_CBC0(&qword_19A608, &unk_19EBF0);
  v20 = v31;
  v21 = sub_13A6B4();

  (*(v32 + 8))(v17, v20);
  *(v19 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetchSubscription) = v21;
}

void sub_C360()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_animationFetcher);
    sub_C9EC(v2);

    if (v2)
    {
      v2();
      sub_C9FC(v2);
    }
  }
}

double sub_C3EC(double a1, double a2, float a3)
{
  v4 = v3;
  swift_getObjectType();
  if (*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin24AnimationHeaderComponent_objectGraph])
  {
    sub_139E64();
    sub_13B6B4();

    v7 = sub_13B9A4();
    v8 = (*(*v18[0] + 88))(v7);

    if (v8)
    {
      v9 = [v8 topViewController];

      if (v9)
      {
        sub_B140(v9);
        v11 = v10;

        if (a3 != 1000.0)
        {
          return v11;
        }

        return a1;
      }
    }
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v12 = sub_139A14();
  sub_4910(v12, qword_1B2B00);
  sub_4948(&unk_19E010);
  v13 = sub_1399C4();
  sub_CCF4(v13);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v18[3] = type metadata accessor for AnimationHeaderComponent();
  v18[0] = v4;
  v14 = v4;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v18);
  sub_139974();
  sub_1399E4();

  return a1;
}

id sub_C714(void *a1)
{
  [objc_msgSend(a1 "container")];
  v2 = v1;
  swift_unknownObjectRelease();
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension:1.0];
  v5 = [v3 estimatedDimension:v2 * 0.44];
  v6 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v5];

  return v6;
}

id sub_C848(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AnimationHeaderComponent();
  return objc_msgSendSuper2(&v4, *a1);
}

unint64_t sub_C944()
{
  result = qword_19A600;
  if (!qword_19A600)
  {
    sub_CACC(255, &qword_19A5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A600);
  }

  return result;
}

uint64_t sub_C9AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C9EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C9FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_CA0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_CA60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_CAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CACC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_CB0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_CB68()
{
  result = qword_19E060;
  if (!qword_19E060)
  {
    sub_13B4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E060);
  }

  return result;
}

uint64_t sub_CBC0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_558C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_CC08(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_CC68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_4948(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_CCD4()
{

  return swift_once();
}

void sub_CD2C()
{
}

void sub_CD4C()
{
}

uint64_t sub_CDF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = v5;

  v12._rawValue = &off_183DD0;
  v22._countAndFlagsBits = a1;
  v22._object = a2;
  v13 = sub_13C104(v12, v22);

  if (v13)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v14 = sub_139A14();
    sub_4910(v14, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v15 = a3(0);
    __dst[3] = v15;
    __dst[0] = v8;

    sub_139984();
    sub_49C8(__dst);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_13BBC4(v20);
    v21._object = 0x800000000014E6F0;
    v21._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v21);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a5[3] = v15;
    a5[4] = a4;
    *a5 = v8;
  }

  else
  {
    memcpy(__dst, (v8 + 16), 0x58uLL);
    a5[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
    a5[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
    sub_D44C();
    v17 = swift_allocObject();
    *a5 = v17;
    memcpy((v17 + 16), (v8 + 16), 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

uint64_t sub_D0A4()
{
  v1 = *(v0 + 88);
  sub_C9FC(*(v0 + 72));
  sub_C9FC(v1);
  sub_D44C();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_D11C()
{
  sub_139F34();
  memcpy((v0 + 16), __src, 0x58uLL);
  return v0;
}

uint64_t sub_D1D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppAlertLayout.BodySpacing();
  sub_D44C();
  swift_allocObject();
  sub_D11C();
  type metadata accessor for AppAlertLayout.FooterSpacing();
  sub_D44C();
  swift_allocObject();
  sub_D11C();
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_D2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_D1D8(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_D384()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_D3CC()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  sub_D44C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_D458(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183E08;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_D4A4()
{
  result = sub_EDE4();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      v2 = 1953460070;
      goto LABEL_5;
    case 3:
      v2 = 1684104552;
LABEL_5:
      result = v2 | 0x6853726500000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D55C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D458(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_D58C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D4A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D5B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8 = sub_D458(a1, a2);
  if (v8 == 4)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for AppInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0xB0uLL);
    sub_E94C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppInstallSheetLayout.BodySpacing;
    a3[4] = &off_185B80;
    v10 = swift_allocObject();
    *a3 = v10;
    memcpy((v10 + 16), v3, 0xB0uLL);
    return sub_E94C(v3, __dst);
  }

  else
  {
    v12 = v8;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for AppInstallSheetLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v4, 0xB0uLL);
    sub_E94C(v4, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppInstallSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v12;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v12 > 2u)
    {
      memcpy(__dst, (v4 + 88), 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v17 = swift_allocObject();
      *a3 = v17;
      v15 = (v17 + 16);
      v16 = (v4 + 88);
    }

    else
    {
      memcpy(__dst, v4, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v14 = swift_allocObject();
      *a3 = v14;
      v15 = (v14 + 16);
      v16 = v4;
    }

    memcpy(v15, v16, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_DA98@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0xB0uLL);
}

uint64_t sub_DBA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_183E88;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_DBF0(char a1)
{
  if (!a1)
  {
    return sub_EDE4();
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x68537265746F6F66;
}

uint64_t sub_DCD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_DBA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_DD04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_DBF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_DD30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_DBA4(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for AppInstallSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_E9D4(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for AppInstallSheetLayout.FooterSpacing;
    a3[4] = &off_185B30;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_E9D4(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for AppInstallSheetLayout.FooterSpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_E9D4(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for AppInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 176);
      }

      else
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 88);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_E254@<X0>(void *a1@<X8>)
{
  LOBYTE(v13) = 1;
  LOBYTE(v11) = 0;
  LOBYTE(v9) = 1;
  LOBYTE(v7) = 0;
  sub_139F34();
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  LOBYTE(v14) = 1;
  LOBYTE(v12) = 0;
  LOBYTE(v10) = 1;
  LOBYTE(v8) = 0;
  sub_139F34();
  v4 = [v1 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  sub_139F34();
  return memcpy(a1, __src, 0x108uLL);
}

uint64_t sub_E4E4@<X0>(uint64_t *a1@<X8>)
{
  sub_DA98(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0xB0uLL);
  sub_E254(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0x108uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_E5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_E4E4(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_E6A0()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_E710()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_E7A0()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

unint64_t sub_E7E8()
{
  result = qword_19E9A0;
  if (!qword_19E9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19E9A0);
  }

  return result;
}

uint64_t sub_E834(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 264))
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

uint64_t sub_E888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_E984()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t getEnumTagSinglePayload for AppInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppInstallSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0xEB60);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallSheetLayout.BodySpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppInstallSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0xECECLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_ED30()
{
  result = qword_19A768;
  if (!qword_19A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A768);
  }

  return result;
}

unint64_t sub_ED88()
{
  result = qword_19A770;
  if (!qword_19A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A770);
  }

  return result;
}

uint64_t sub_EE08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = sub_F7B0();
  sub_101F0(v4, v5, v6, v7, v8, v9, v10, v11, v14, v1);
  sub_139874();

  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__cell;
  swift_beginAccess();
  return sub_F680(v2 + v12, a1);
}

uint64_t sub_EE98(uint64_t a1)
{
  v2 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F680(a1, v4);
  return sub_EF24(v4);
}

uint64_t sub_EF24(uint64_t a1)
{
  swift_getKeyPath();
  sub_F3E0();

  return sub_F6E4(a1);
}

uint64_t sub_EF98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__cell;
  swift_beginAccess();
  sub_F898(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_F004()
{
  swift_getKeyPath();
  v1 = sub_F7B0();
  sub_101F0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_139874();
}

uint64_t sub_F0A4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__objectGraph) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F3E0();
  }
}

uint64_t sub_F180(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__objectGraph) = a2;
}

uint64_t sub_F1C4()
{
  swift_getKeyPath();
  v1 = sub_F7B0();
  sub_101F0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_139874();

  return *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__isAXCategory);
}

uint64_t sub_F234(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__isAXCategory) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__isAXCategory) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F3E0();
  }

  return result;
}

uint64_t sub_F2E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__sizeClass) = 8;
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__isAXCategory) = 0;
  sub_1398A4();
  sub_F680(a1, v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__cell);
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__objectGraph) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_13BE04();
  sub_F234(v6 & 1);

  sub_F6E4(a1);
  return v2;
}

uint64_t sub_F468()
{
  sub_F6E4(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel__cell);

  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin25AppleOneOfferPlatterModel___observationRegistrar;
  v2 = sub_1398B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_F4E8()
{
  sub_F468();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AppleOneOfferPlatterModel()
{
  result = qword_19A7C8;
  if (!qword_19A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F594()
{
  result = type metadata accessor for CarouselCell();
  if (v1 <= 0x3F)
  {
    result = sub_1398B4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_F680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F6E4(uint64_t a1)
{
  v2 = type metadata accessor for CarouselCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F740@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F1C4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_F7B0()
{
  result = qword_19A960;
  if (!qword_19A960)
  {
    type metadata accessor for AppleOneOfferPlatterModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A960);
  }

  return result;
}

uint64_t sub_F808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F004();
  *a1 = result;
  return result;
}

uint64_t sub_F898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselCell();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_F8FC()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  if (_UISolariumEnabled() && (v2 = sub_101C0(), v3(v2), sub_139A24(), v4 = sub_101D0(), v5(v4), (v0 & 1) != 0))
  {
    v6 = &selRef_ams_primarySystemFillColor;
  }

  else
  {
    v6 = &selRef_ams_secondarySystemFillColor;
  }

  v7 = [objc_opt_self() *v6];
  result = sub_13B1E4();
  qword_1B28B8 = result;
  return result;
}

uint64_t sub_FA20(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_13B1E4();
  *a3 = result;
  return result;
}

uint64_t sub_FA68()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || (v3 = sub_101C0(), v4(v3), sub_139A24(), v5 = sub_101D0(), result = v6(v5), v7 = 26.0, (v0 & 1) == 0))
  {
    v7 = 12.0;
  }

  qword_1B28D0 = *&v7;
  return result;
}

uint64_t sub_FB44()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || (v3 = sub_101C0(), v4(v3), sub_139A24(), v5 = sub_101D0(), result = v6(v5), v7 = 16.0, (v0 & 1) == 0))
  {
    v7 = 8.0;
  }

  qword_1B28E0 = *&v7;
  return result;
}

uint64_t sub_FC20()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || (v3 = sub_101C0(), v4(v3), sub_139A24(), v5 = sub_101D0(), result = v6(v5), v7 = 12.0, (v0 & 1) == 0))
  {
    v7 = 8.0;
  }

  qword_1B28F0 = *&v7;
  return result;
}

uint64_t sub_FCF0()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v1);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || (v3 = sub_101C0(), v4(v3), sub_139A24(), v5 = sub_101D0(), result = v6(v5), v7 = 2.0, (v0 & 1) == 0))
  {
    v7 = 4.0;
  }

  qword_1B28F8 = *&v7;
  return result;
}

uint64_t sub_FDCC(uint64_t a1, double *a2)
{
  v4 = sub_139A34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_10190();
  result = _UISolariumEnabled();
  if (!result || ((*(v5 + 104))(v2, enum case for FlagKeys.Solarium(_:), v4), v7 = sub_139A24(), result = (*(v5 + 8))(v2, v4), v8 = 8.0, (v7 & 1) == 0))
  {
    v8 = 4.0;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_FEC8()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v0);
  sub_10190();
  sub_13B194();
  v1 = sub_13B1B4();

  qword_1B2908 = v1;
  if (!_UISolariumEnabled() || (v2 = sub_101C0(), v3(v2), v4 = sub_139A24(), v5 = sub_101E4(), v6(v5), v7 = 0.0, (v4 & 1) == 0))
  {
    v7 = 16.0;
  }

  qword_1B2910 = *&v7;
  qword_1B2918 = 0;
  result = _UISolariumEnabled();
  if (!result || (v9 = sub_101C0(), v10(v9), v11 = sub_139A24(), v12 = sub_101E4(), result = v13(v12), v14 = 0.0, (v11 & 1) == 0))
  {
    v14 = 8.0;
  }

  qword_1B2920 = *&v14;
  return result;
}

uint64_t sub_1002C()
{
  sub_139A34();
  sub_101A8();
  __chkstk_darwin(v0);
  sub_10190();
  sub_13B194();
  v1 = sub_13B1B4();

  qword_1B2928 = v1;
  if (!_UISolariumEnabled() || (v2 = sub_101C0(), v3(v2), v4 = sub_139A24(), v5 = sub_101E4(), v6(v5), v7 = 0.0, (v4 & 1) == 0))
  {
    v7 = 6.0;
  }

  qword_1B2930 = *&v7;
  qword_1B2938 = 0;
  result = _UISolariumEnabled();
  if (!result || (v9 = sub_101C0(), v10(v9), v11 = sub_139A24(), v12 = sub_101E4(), result = v13(v12), v14 = 0.0, (v11 & 1) == 0))
  {
    v14 = 2.0;
  }

  qword_1B2940 = *&v14;
  return result;
}

uint64_t sub_10214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_52E0(v9, a2, v8);
  }

  sub_4948(&qword_19A970);
  sub_17250();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1032C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_4948(&qword_19A968);
  sub_17250();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_4948(&qword_19A970);
    sub_17250();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  sub_53A8(v11, a2, a2, v10);
}

uint64_t type metadata accessor for AppleOneOfferPlatterView()
{
  result = qword_19A9D0;
  if (!qword_19A9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10478()
{
  sub_105E0(319, &qword_19A9E0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10590();
    if (v1 <= 0x3F)
    {
      sub_105E0(319, &qword_19A9F0, &type metadata accessor for ContentSizeCategory);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppleOneOfferPlatterModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10590()
{
  if (!qword_19A9E8)
  {
    v0 = sub_13B264();
    if (!v1)
    {
      atomic_store(v0, &qword_19A9E8);
    }
  }
}

void sub_105E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_13A764();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlatterLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10700);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1073C()
{
  result = qword_19AA40;
  if (!qword_19AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AA40);
  }

  return result;
}

Swift::Int BannerHeaderComponentLayout.Metrics.Layout.Horizontal.hashValue.getter(unsigned __int8 a1)
{
  sub_13C214();
  sub_13C224(a1);
  return sub_13C234();
}

Swift::Int sub_1082C()
{
  v1 = *v0;
  sub_13C214();
  sub_13C224(v1);
  return sub_13C234();
}

uint64_t sub_1088C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_17220();
  sub_4948(&qword_19AC60);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for AppleOneOfferPlatterView();
  sub_16C24(v1 + *(v11 + 24), v10, &qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_13BD54();
    v14 = sub_13AE64();
    sub_13A004();

    sub_13AB14();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_10A64()
{
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_17220();
  v6 = type metadata accessor for AppleOneOfferPlatterView();
  if ((*(v0 + *(v6 + 44)) & 1) != 0 || *(v0 + *(v6 + 32)) == 2)
  {
    v7 = 1;
  }

  else if (_UISolariumEnabled())
  {
    (*(v4 + 104))(v1, enum case for FlagKeys.Solarium(_:), v2);
    v7 = sub_139A24();
    (*(v4 + 8))(v1, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10B74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v126 = a1;
  sub_4948(&qword_19AA48);
  sub_171D0();
  __chkstk_darwin(v3);
  v5 = v114 - v4;
  v114[1] = sub_4948(&qword_19AA50);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v6);
  v8 = v114 - v7;
  v114[2] = sub_4948(&qword_19AA58);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v9);
  v11 = v114 - v10;
  v114[3] = sub_4948(&qword_19AA60);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v12);
  v14 = v114 - v13;
  v117 = sub_4948(&qword_19AA68);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v15);
  v17 = v114 - v16;
  v116 = sub_4948(&qword_19AA70);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v18);
  sub_17214();
  v115 = v19;
  v114[4] = sub_4948(&qword_19AA78);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v20);
  sub_17214();
  v118 = v21;
  v119 = sub_4948(&qword_19AA80);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v22);
  sub_17214();
  v120 = v23;
  v123 = sub_4948(&qword_19AA88);
  sub_9E94();
  v122 = v24;
  sub_171D0();
  __chkstk_darwin(v25);
  sub_17214();
  v128 = v26;
  v124 = sub_4948(&qword_19AA90);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v27);
  sub_17214();
  v125 = v28;
  v29 = sub_13ABE4();
  v30 = type metadata accessor for AppleOneOfferPlatterView();
  v127 = *(v2 + v30[8]);
  *v5 = v29;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v31 = &v5[*(sub_4948(&qword_19AA98) + 44)];
  v121 = v2;
  sub_11698(v2, v31);
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  LOBYTE(v29) = sub_13AEE4();
  *(inited + 32) = v29;
  v33 = sub_13AF04();
  *(inited + 33) = v33;
  v34 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v29)
  {
    v34 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v33)
  {
    v34 = sub_13AEF4();
  }

  if (!v127 && qword_199DC0 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_16038(v5, v8, &qword_19AA48);
  sub_171FC();
  v44 = &v8[v43];
  *v44 = v34;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  v45 = sub_13AEC4();
  sub_13A6E4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_16038(v8, v11, &qword_19AA50);
  sub_171FC();
  v55 = &v11[v54];
  *v55 = v45;
  *(v55 + 1) = v47;
  *(v55 + 2) = v49;
  *(v55 + 3) = v51;
  *(v55 + 4) = v53;
  v55[40] = 0;
  v56 = sub_13AED4();
  sub_13A6E4();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_16038(v11, v14, &qword_19AA58);
  sub_171FC();
  v66 = &v14[v65];
  *v66 = v56;
  *(v66 + 1) = v58;
  *(v66 + 2) = v60;
  *(v66 + 3) = v62;
  *(v66 + 4) = v64;
  v66[40] = 0;
  v67 = v121;
  v68 = v121 + v30[5];
  v69 = *v68;
  v70 = *(v68 + 8);
  LOBYTE(v129) = *v68;
  v130 = v70;
  v71 = sub_4948(&qword_19AAA8);
  sub_13B234();
  if (v131 == 1 && (*(v67 + v30[12]) & 1) != 0)
  {
    v72 = 10;
  }

  else
  {
    v72 = 9;
  }

  v73 = *(v67 + v30[v72]);

  v74 = sub_13AEB4();
  sub_16038(v14, v17, &qword_19AA60);
  sub_171FC();
  v76 = &v17[v75];
  *v76 = v73;
  v76[8] = v74;
  v77 = v115;
  sub_16038(v17, v115, &qword_19AA68);
  sub_171FC();
  *(v77 + v78) = 0x3FF0000000000000;
  v79 = sub_13B3F4();
  v80 = v69;
  LOBYTE(v129) = v69;
  v117 = v70;
  v130 = v70;
  v116 = v71;
  sub_13B234();
  LOBYTE(v73) = v131;
  v81 = v77;
  v82 = v118;
  sub_16038(v81, v118, &qword_19AA70);
  sub_171FC();
  v84 = v82 + v83;
  *v84 = v79;
  *(v84 + 8) = v73;
  if (qword_199DA8 != -1)
  {
    swift_once();
  }

  v85 = qword_1B28D0;
  v86 = v120;
  v87 = (v120 + *(v119 + 36));
  v88 = *(sub_13A9A4() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  sub_13ABA4();
  sub_9F94();
  (*(v90 + 104))(v87 + v88, v89);
  *v87 = v85;
  v87[1] = v85;
  *(v87 + *(sub_4948(&qword_19AAB0) + 36)) = 256;
  sub_16038(v82, v86, &qword_19AA78);
  v91 = sub_13B3F4();
  __chkstk_darwin(v91);
  v114[-2] = v67;
  sub_4948(&qword_19AAB8);
  sub_15118();
  sub_1559C();
  sub_13B144();

  sub_928C(v86, &qword_19AA80);
  v92 = *(v67 + v30[11]);
  if (v92 == 1)
  {
    if (qword_199DE0 != -1)
    {
      sub_171B0();
    }

    v93 = &qword_1B2908;
  }

  else
  {
    if (qword_199DE8 != -1)
    {
      sub_17190();
    }

    v93 = &qword_1B2928;
  }

  v96 = *v93;
  v95 = (v93 + 1);
  v94 = v96;

  v97 = 0.0;
  if (v127 == 2)
  {
    v98 = 0.0;
    v99 = 0.0;
  }

  else
  {
    v100 = *v95;
    v101 = objc_opt_self();
    [v101 scale];
    v103 = v102;
    if (v92)
    {
      if (qword_199DE0 != -1)
      {
        sub_171B0();
      }

      v104 = &qword_1B2918;
    }

    else
    {
      if (qword_199DE8 != -1)
      {
        sub_17190();
      }

      v104 = &qword_1B2938;
    }

    v105 = *v104;
    [v101 scale];
    v107 = v106;
    if (v92)
    {
      if (qword_199DE0 != -1)
      {
        sub_171B0();
      }

      v108 = &qword_1B2920;
    }

    else
    {
      if (qword_199DE8 != -1)
      {
        sub_17190();
      }

      v108 = &qword_1B2940;
    }

    v109 = *v108;
    v99 = v100 / v103;
    v98 = v105 / v107;
    [v101 scale];
    v97 = v109 / v110;
  }

  v111 = v125;
  (*(v122 + 32))(v125, v128, v123);
  v112 = v111 + *(v124 + 36);
  *v112 = v94;
  *(v112 + 8) = v99;
  *(v112 + 16) = v98;
  *(v112 + 24) = v97;
  v131 = v80;
  v132 = v117;
  sub_13B254();
  sub_15680();
  sub_15774();
  sub_13B124();

  return sub_928C(v111, &qword_19AA90);
}

uint64_t sub_11698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v297 = a2;
  v272 = sub_4948(&qword_19AB80);
  __chkstk_darwin(v272);
  v273 = (&v256 - v3);
  v274 = sub_4948(&qword_19AB88);
  __chkstk_darwin(v274);
  v299 = &v256 - v4;
  v294 = sub_4948(&qword_19AB90);
  __chkstk_darwin(v294);
  v275 = &v256 - v5;
  v6 = sub_4948(&qword_19AB98);
  v7 = __chkstk_darwin(v6 - 8);
  v296 = &v256 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v295 = &v256 - v9;
  v10 = sub_139A34();
  v270 = *(v10 - 8);
  v271 = v10;
  __chkstk_darwin(v10);
  v269 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for OfferBadge();
  __chkstk_darwin(v258);
  v256 = (&v256 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v279 = sub_4948(&qword_19ABA0);
  __chkstk_darwin(v279);
  v288 = &v256 - v13;
  v277 = sub_4948(&qword_19ABA8);
  __chkstk_darwin(v277);
  v278 = &v256 - v14;
  v15 = sub_4948(&qword_19ABB0);
  __chkstk_darwin(v15 - 8);
  v264 = (&v256 - v16);
  v263 = sub_4948(&qword_19ABB8);
  __chkstk_darwin(v263);
  v266 = &v256 - v17;
  v276 = sub_4948(&qword_19ABC0);
  v18 = __chkstk_darwin(v276);
  v265 = &v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v267 = &v256 - v20;
  v21 = sub_4948(&qword_19ABC8);
  v22 = __chkstk_darwin(v21 - 8);
  v293 = &v256 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v304 = &v256 - v24;
  v259 = sub_4948(&qword_19ABD0);
  __chkstk_darwin(v259);
  v261 = (&v256 - v25);
  v287 = sub_4948(&qword_19ABD8);
  __chkstk_darwin(v287);
  v260 = &v256 - v26;
  v27 = sub_4948(&qword_19ABE0);
  v28 = __chkstk_darwin(v27 - 8);
  v292 = &v256 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v303 = &v256 - v30;
  v31 = type metadata accessor for CarouselCell();
  v32 = __chkstk_darwin(v31 - 8);
  v268 = &v256 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v257 = &v256 - v35;
  v36 = __chkstk_darwin(v34);
  v262 = &v256 - v37;
  __chkstk_darwin(v36);
  v39 = &v256 - v38;
  v40 = sub_139D44();
  v41 = __chkstk_darwin(v40 - 8);
  v43 = &v256 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v256 - v45;
  __chkstk_darwin(v44);
  v281 = &v256 - v47;
  v280 = sub_4948(&qword_19ABE8);
  __chkstk_darwin(v280);
  v49 = &v256 - v48;
  v282 = sub_4948(&qword_19ABF0);
  __chkstk_darwin(v282);
  v298 = &v256 - v50;
  v283 = sub_4948(&qword_19ABF8);
  __chkstk_darwin(v283);
  v286 = &v256 - v51;
  v285 = sub_4948(&qword_19AC00);
  v52 = __chkstk_darwin(v285);
  v291 = &v256 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v284 = &v256 - v55;
  __chkstk_darwin(v54);
  v301 = &v256 - v56;
  v57 = sub_4948(&qword_19AC08);
  v58 = __chkstk_darwin(v57 - 8);
  v302 = &v256 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v307 = (&v256 - v60);
  v61 = sub_13ABC4();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v256 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AppleOneOfferPlatterView();
  v305 = a1;
  v306 = v65;
  v66 = *(a1 + *(v65 + 32));
  v67 = 0;
  LODWORD(v300) = v66;
  if (v66)
  {
    v68 = a1;
    sub_1088C(v64);
    v69 = sub_750BC();
    (*(v62 + 8))(v64, v61);
    if (v69)
    {
      v70 = *(v68 + v306[11]);
      v71 = *(v68 + v306[12]);
      v72 = sub_13AEB4();
      sub_13A6E4();
      v67 = v73;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v314[0] = 0;
      v80 = 256;
      if (!v71)
      {
        v80 = 0;
      }

      v289 = v80 | v70;
      v290 = v72;
      v81 = &UIFontTextStyleFootnote;
    }

    else
    {
      v290 = 0;
      v81 = &UIFontTextStyleFootnote;
      v289 = 2;
      v75 = 0;
      v77 = 0;
      v79 = 0;
    }

    v66 = v300;
  }

  else
  {
    v290 = 0;
    v81 = &UIFontTextStyleCaption2;
    v289 = 2;
    v75 = 0;
    v77 = 0;
    v79 = 0;
  }

  v82 = v298;
  v83 = sub_13AB44();
  v84 = v307;
  *v307 = v83;
  v84[1] = 0;
  *(v84 + 16) = 0;
  v85 = v84 + *(sub_4948(&qword_19AC10) + 44);
  v86 = v305;
  sub_1332C(v305, v85);
  v87 = *(v86 + v306[7]);
  sub_EE08(v39);
  sub_16C24((v39 + 232), v314, &qword_19E960);
  sub_16B78(v39, type metadata accessor for CarouselCell);
  v298 = v87;
  sub_F004();
  sub_139D24();
  v88 = *v81;
  sub_139D14();

  sub_16B78(v43, &type metadata accessor for DynamicLabelText);
  v89 = v281;
  sub_139D04();
  sub_16B78(v46, &type metadata accessor for DynamicLabelText);
  v90 = objc_opt_self();
  v91 = [v90 ams_primaryText];
  v92 = sub_13B1E4();
  KeyPath = swift_getKeyPath();
  sub_16538(v89, v49, &type metadata accessor for DynamicLabelText);
  v94 = &v49[*(v280 + 36)];
  *v94 = KeyPath;
  v94[1] = v92;
  if (v66)
  {
    sub_13B3D4();
  }

  else
  {
    sub_13B3C4();
  }

  v95 = v288;
  sub_13A9B4();
  sub_16038(v49, v82, &qword_19ABE8);
  memcpy((v82 + *(v282 + 36)), v313, 0x70uLL);
  v96 = sub_13AEC4();
  v97 = v305;
  v98 = v306;
  if (qword_199DD0 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v286;
  sub_16038(v82, v286, &qword_19ABF0);
  v108 = v107 + *(v283 + 36);
  *v108 = v96;
  *(v108 + 8) = v100;
  *(v108 + 16) = v102;
  *(v108 + 24) = v104;
  *(v108 + 32) = v106;
  *(v108 + 40) = 0;
  sub_4948(&qword_19AAA0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_13E650;
  v110 = sub_13AEE4();
  *(v109 + 32) = v110;
  v111 = sub_13AF04();
  *(v109 + 33) = v111;
  v112 = sub_13AEF4();
  sub_13AEF4();
  if (sub_13AEF4() != v110)
  {
    v112 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v111)
  {
    v112 = sub_13AEF4();
  }

  v113 = v299;
  v114 = v300;
  if (!v300 && qword_199DD8 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v284;
  sub_16038(v107, v284, &qword_19ABF8);
  v124 = v123 + *(v285 + 36);
  *v124 = v112;
  *(v124 + 8) = v116;
  *(v124 + 16) = v118;
  *(v124 + 24) = v120;
  *(v124 + 32) = v122;
  *(v124 + 40) = 0;
  sub_16038(v123, v301, &qword_19AC00);
  if (v114 == 1)
  {
    v125 = sub_13B3D4();
    v314[0] = 0;
    LOBYTE(v312[0]) = 1;
    LOBYTE(v308[0]) = 0;
    v126 = v261;
    *v261 = v125;
    *(v126 + 8) = v127;
    *(v126 + 16) = 0;
    *(v126 + 24) = 0;
    *(v126 + 32) = 1;
    *(v126 + 40) = 0x4024000000000000;
    *(v126 + 48) = 0;
    sub_13C3C(v97, v126 + *(v259 + 44));
    v128 = sub_13AEC4();
    if (*(v97 + v98[11]) == 1 && qword_199DC8 != -1)
    {
      swift_once();
    }

    v285 = v67;
    v129 = v79;
    v130 = v77;
    v131 = v75;
    sub_13A6E4();
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v140 = v260;
    sub_16038(v126, v260, &qword_19ABD0);
    v141 = v287;
    v142 = v140 + *(v287 + 36);
    *v142 = v128;
    *(v142 + 8) = v133;
    *(v142 + 16) = v135;
    *(v142 + 24) = v137;
    *(v142 + 32) = v139;
    *(v142 + 40) = 0;
    v143 = v303;
    sub_16038(v140, v303, &qword_19ABD8);
    sub_53A8(v143, 0, 1, v141);
    v144 = sub_13ABE4();
    v145 = v264;
    *v264 = v144;
    *(v145 + 8) = 0;
    *(v145 + 16) = 1;
    v146 = sub_4948(&qword_19AC68);
    sub_14140(v145 + *(v146 + 44));
    sub_13B3C4();
    sub_13A9B4();
    v147 = v266;
    sub_16038(v145, v266, &qword_19ABB0);
    memcpy((v147 + *(v263 + 36)), v314, 0x70uLL);
    v148 = sub_13AEC4();
    if (*(v97 + v98[11]) == 1 && qword_199DB8 != -1)
    {
      swift_once();
    }

    v300 = v90;
    sub_13A6E4();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v157 = v265;
    sub_16038(v147, v265, &qword_19ABB8);
    v158 = v157 + *(v276 + 36);
    *v158 = v148;
    *(v158 + 8) = v150;
    *(v158 + 16) = v152;
    *(v158 + 24) = v154;
    *(v158 + 32) = v156;
    *(v158 + 40) = 0;
    v159 = v267;
    sub_16038(v157, v267, &qword_19ABC0);
    sub_16C24(v159, v278, &qword_19ABC0);
    swift_storeEnumTagMultiPayload();
    sub_16084();
    sub_161C8();
    v160 = v304;
    sub_13ACD4();
    sub_928C(v159, &qword_19ABC0);
    v161 = sub_4948(&qword_19AC18);
    sub_53A8(v160, 0, 1, v161);
    v162 = v262;
    sub_EE08(v262);
    sub_16C24(v162, v312, &qword_19E960);
    sub_16B78(v162, type metadata accessor for CarouselCell);
    v163 = *(&v312[1] + 1);
    if (*(&v312[1] + 1))
    {
      v164 = *&v312[2];
      sub_162F0(v312, *(&v312[1] + 1));
      v165 = (*(v164 + 72))(v163, v164);
      v167 = v166;
      sub_3C04(v312);
    }

    else
    {
      sub_928C(v312, &qword_19E960);
      v165 = 0;
      v167 = 0xE000000000000000;
    }

    v75 = v131;
    *&v312[0] = v165;
    *(&v312[0] + 1) = v167;
    sub_1628C();
    v181 = sub_13B004();
    v183 = v182;
    v185 = v184;
    v77 = v130;
    if (_UISolariumEnabled() && (v187 = v269, v186 = v270, v188 = v271, (*(v270 + 104))(v269, enum case for FlagKeys.Solarium(_:), v271), v189 = sub_139A24(), (*(v186 + 8))(v187, v188), (v189 & 1) != 0))
    {
      sub_13AF94();
    }

    else
    {
      sub_13AFA4();
    }

    v79 = v129;
    v190 = sub_13AFE4();
    v192 = v191;
    v194 = v193;

    sub_162E0(v181, v183, v185 & 1);

    v195 = _UISolariumEnabled();
    v67 = v285;
    if (v195 && (v197 = v269, v196 = v270, v198 = v271, (*(v270 + 104))(v269, enum case for FlagKeys.Solarium(_:), v271), v199 = sub_139A24(), (*(v196 + 8))(v197, v198), (v199 & 1) != 0))
    {
      v200 = &selRef_ams_secondaryText;
    }

    else
    {
      v200 = &selRef_ams_primaryText;
    }

    v113 = v299;
    v98 = v306;
    v201 = [v300 *v200];
    sub_13B1E4();
    v299 = sub_13AFC4();
    v287 = v203;
    v288 = v202;
    v205 = v204;

    sub_162E0(v190, v192, v194 & 1);

    v206 = v268;
    sub_EE08(v268);
    sub_16C24(v206, v312, &qword_19E960);
    sub_16B78(v206, type metadata accessor for CarouselCell);
    v207 = *(&v312[1] + 1);
    if (*(&v312[1] + 1))
    {
      v208 = *&v312[2];
      sub_162F0(v312, *(&v312[1] + 1));
      v300 = (*(v208 + 72))(v207, v208);
      v298 = v209;
      sub_3C04(v312);
    }

    else
    {
      sub_928C(v312, &qword_19E960);
      v300 = 0;
      v298 = 0xE000000000000000;
    }

    v97 = v305;
    v210 = sub_13AEC4();
    if (qword_199DB0 != -1)
    {
      swift_once();
    }

    sub_13A6E4();
    v212 = v211;
    v214 = v213;
    v216 = v215;
    v218 = v217;
    LOBYTE(v312[0]) = v205 & 1;
    LOBYTE(v308[0]) = 0;
    v219 = v205 & 1;
    v286 = v210;
  }

  else
  {
    sub_53A8(v303, 1, 1, v287);
    if (v114 == 2)
    {
      v168 = v257;
      sub_EE08(v257);
      sub_16C24(v168 + 144, v312, &qword_19E960);
      sub_16B78(v168, type metadata accessor for CarouselCell);
      if (*(&v312[1] + 1))
      {
        sub_9414(v312, v314);
        v169 = sub_F004();
        v170 = v258;
        v171 = v256;
        sub_4B14(v314, v256 + *(v258 + 36));
        *v171 = swift_getKeyPath();
        sub_4948(&qword_19AC58);
        swift_storeEnumTagMultiPayload();
        *(v171 + v170[5]) = swift_getKeyPath();
        sub_4948(&qword_19AC60);
        swift_storeEnumTagMultiPayload();
        v172 = v171 + v170[6];
        type metadata accessor for CGSize(0);
        v308[0] = 0;
        v308[1] = 0;
        sub_13B224();
        sub_3C04(v314);
        v173 = *&v312[1];
        *v172 = v312[0];
        *(v172 + 2) = v173;
        v174 = v170[7];
        *(v171 + v174) = 0;
        *(v171 + v170[8]) = v169;
        *(v171 + v174) = 1;
        sub_16538(v171, v95, type metadata accessor for OfferBadge);
        v175 = v95;
        v176 = 0;
        v177 = v170;
      }

      else
      {
        sub_928C(v312, &qword_19E960);
        v175 = v95;
        v176 = 1;
        v177 = v258;
      }

      sub_53A8(v175, v176, 1, v177);
      sub_16C24(v95, v278, &qword_19ABA0);
      swift_storeEnumTagMultiPayload();
      sub_16084();
      sub_161C8();
      v220 = v304;
      sub_13ACD4();
      sub_928C(v95, &qword_19ABA0);
      v178 = sub_4948(&qword_19AC18);
      v179 = v220;
      v180 = 0;
    }

    else
    {
      v178 = sub_4948(&qword_19AC18);
      v179 = v304;
      v180 = 1;
    }

    sub_53A8(v179, v180, 1, v178);
    v299 = 0;
    v300 = 0;
    v287 = 0;
    v288 = 0;
    v298 = 0;
    v286 = 0;
    v219 = 0;
    v212 = 0;
    v214 = 0;
    v216 = 0;
    v218 = 0;
  }

  if (*(v97 + v98[13]) == 1)
  {
    v221 = sub_13ABE4();
    v222 = v273;
    *v273 = v221;
    *(v222 + 8) = 0x4030000000000000;
    *(v222 + 16) = 0;
    v223 = sub_4948(&qword_19AC28);
    sub_146B0(v97, v222 + *(v223 + 44));
    v224 = sub_13AEC4();
    sub_13A6E4();
    v225 = v222 + *(v272 + 36);
    *v225 = v224;
    *(v225 + 8) = v226;
    *(v225 + 16) = v227;
    *(v225 + 24) = v228;
    *(v225 + 32) = v229;
    *(v225 + 40) = 0;
    if (*(v97 + v98[11]))
    {
      sub_16038(v222, v113, &qword_19AB80);
      *(v113 + *(v274 + 36)) = 0x3FF0000000000000;
    }

    else
    {
      v233 = *(v97 + v98[12]);
      v306 = v218;
      v234 = v216;
      v235 = v214;
      v236 = v212;
      v237 = v67;
      v238 = v79;
      v239 = v77;
      v240 = v75;
      if (v233)
      {
        v241 = 0.0;
      }

      else
      {
        v241 = 1.0;
      }

      sub_16038(v222, v113, &qword_19AB80);
      *(v113 + *(v274 + 36)) = v241;
      v75 = v240;
      v77 = v239;
      v79 = v238;
      v67 = v237;
      v212 = v236;
      v214 = v235;
      v216 = v234;
      v218 = v306;
    }

    sub_13B3C4();
    sub_13A834();
    v242 = v275;
    sub_16038(v113, v275, &qword_19AB88);
    v243 = v294;
    v244 = (v242 + *(v294 + 36));
    v245 = v316;
    *v244 = v315;
    v244[1] = v245;
    v244[2] = v317;
    v246 = v242;
    v232 = v295;
    sub_16038(v246, v295, &qword_19AB90);
    v231 = v243;
    v230 = 0;
  }

  else
  {
    v230 = 1;
    v231 = v294;
    v232 = v295;
  }

  sub_53A8(v232, v230, 1, v231);
  v309[0] = v289;
  v309[1] = v290;
  v309[2] = v67;
  v309[3] = v75;
  v309[4] = v77;
  v309[5] = v79;
  v310 = 0;
  v311[0] = v309;
  v247 = v302;
  sub_16C24(v307, v302, &qword_19AC08);
  v311[1] = v247;
  v248 = v301;
  v249 = v291;
  sub_16C24(v301, v291, &qword_19AC00);
  v311[2] = v249;
  v250 = v303;
  v251 = v292;
  sub_16C24(v303, v292, &qword_19ABE0);
  v311[3] = v251;
  v252 = v304;
  v253 = v293;
  sub_16C24(v304, v293, &qword_19ABC8);
  v308[0] = v299;
  v308[1] = v288;
  v308[2] = v219;
  v308[3] = v287;
  v308[4] = v300;
  v308[5] = v298;
  v308[6] = v286;
  v308[7] = v212;
  v308[8] = v214;
  v308[9] = v216;
  v308[10] = v218;
  LOBYTE(v308[11]) = 0;
  v311[4] = v253;
  v311[5] = v308;
  v254 = v296;
  sub_15FD4(v232, v296);
  v311[6] = v254;
  sub_13AF8(v311, v297);
  sub_928C(v232, &qword_19AB98);
  sub_928C(v252, &qword_19ABC8);
  sub_928C(v250, &qword_19ABE0);
  sub_928C(v248, &qword_19AC00);
  sub_928C(v307, &qword_19AC08);
  sub_928C(v254, &qword_19AB98);
  memcpy(v312, v308, 0x59uLL);
  sub_928C(v312, &qword_19AC20);
  sub_928C(v253, &qword_19ABC8);
  sub_928C(v251, &qword_19ABE0);
  sub_928C(v249, &qword_19AC00);
  return sub_928C(v302, &qword_19AC08);
}

uint64_t sub_1332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v65 = sub_13ABC4();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_139D44();
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v62 - v12;
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  v67 = sub_4948(&qword_19AD00);
  __chkstk_darwin(v67);
  v17 = &v62 - v16;
  v68 = sub_4948(&qword_19AD08);
  __chkstk_darwin(v68);
  v71 = &v62 - v18;
  v70 = sub_4948(&qword_19AD10);
  v19 = __chkstk_darwin(v70);
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v69 = &v62 - v22;
  __chkstk_darwin(v21);
  v72 = &v62 - v23;
  v24 = type metadata accessor for AppleOneOfferPlatterView();
  sub_EE08(v6);
  sub_4B14((v6 + 272), __src);
  sub_16B78(v6, type metadata accessor for CarouselCell);
  sub_F004();
  sub_139D24();
  v62 = v24;
  v25 = *(v24 + 32);
  v66 = a1;
  v26 = *(a1 + v25);
  v27 = &UIFontTextStyleSubheadline;
  if (v26)
  {
    v27 = &UIFontTextStyleTitle3;
  }

  v28 = *v27;
  sub_139D14();

  sub_16B78(v10, &type metadata accessor for DynamicLabelText);
  sub_139D04();
  sub_16B78(v13, &type metadata accessor for DynamicLabelText);
  if (v26)
  {
    sub_13B3D4();
  }

  else
  {
    sub_13B3C4();
  }

  sub_13A9B4();
  sub_16538(v15, v17, &type metadata accessor for DynamicLabelText);
  memcpy(&v17[*(v67 + 36)], __src, 0x70uLL);
  sub_EE08(v6);
  sub_4B14((v6 + 272), v75);
  sub_16B78(v6, type metadata accessor for CarouselCell);
  v29 = v76;
  v30 = v77;
  sub_162F0(v75, v76);
  v31 = (*(v30 + 72))(v29, v30);
  v33 = v32;
  v34 = v71;
  sub_16038(v17, v71, &qword_19AD00);
  v35 = (v34 + *(v68 + 52));
  *v35 = v31;
  v35[1] = v33;
  sub_3C04(v75);
  sub_4948(&qword_19AAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13E650;
  v37 = sub_13AEE4();
  *(inited + 32) = v37;
  v38 = sub_13AF04();
  *(inited + 33) = v38;
  v39 = sub_13AEF4();
  sub_13AEF4();
  v40 = sub_13AEF4();
  v41 = v72;
  if (v40 != v37)
  {
    v39 = sub_13AEF4();
  }

  sub_13AEF4();
  if (sub_13AEF4() != v38)
  {
    v39 = sub_13AEF4();
  }

  if (!v26 && qword_199DD8 != -1)
  {
    swift_once();
  }

  sub_13A6E4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v69;
  sub_16038(v34, v69, &qword_19AD08);
  v51 = v50 + *(v70 + 36);
  *v51 = v39;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  sub_16038(v50, v41, &qword_19AD10);
  if (v26 && (v52 = v63, v53 = v66, sub_1088C(v63), v54 = sub_750BC(), (*(v64 + 8))(v52, v65), (v54 & 1) == 0))
  {
    if (*(v53 + *(v62 + 44)))
    {
      v56 = 257;
    }

    else
    {
      v56 = 1;
    }

    if (*(v53 + *(v62 + 48)))
    {
      v57 = 0x10000;
    }

    else
    {
      v57 = 0;
    }

    v55 = v57 | v56;
  }

  else
  {
    v55 = 512;
  }

  v58 = v73;
  sub_16C24(v41, v73, &qword_19AD10);
  v59 = v74;
  sub_16C24(v58, v74, &qword_19AD10);
  v60 = v59 + *(sub_4948(&qword_19AD18) + 48);
  *v60 = 0;
  *(v60 + 10) = BYTE2(v55);
  *(v60 + 8) = v55;
  sub_928C(v41, &qword_19AD10);
  return sub_928C(v58, &qword_19AD10);
}

uint64_t sub_13AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 32);
  *a2 = **a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v4;
  v7 = sub_4948(&qword_19ACF8);
  sub_16C24(*(a1 + 8), a2 + v7[12], &qword_19AC08);
  sub_16C24(*(a1 + 16), a2 + v7[16], &qword_19AC00);
  sub_16C24(*(a1 + 24), a2 + v7[20], &qword_19ABE0);
  sub_16C24(*(a1 + 32), a2 + v7[24], &qword_19ABC8);
  v8 = v7[28];
  v9 = *(a1 + 40);
  memcpy(__dst, v9, 0x59uLL);
  memmove((a2 + v8), v9, 0x59uLL);
  sub_15FD4(*(a1 + 48), a2 + v7[32]);
  return sub_16C24(__dst, &v11, &qword_19AC20);
}

uint64_t sub_13C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for AppleOneOfferPlatterView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_4948(&qword_19AC78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EE08(v12);
  v13 = *(v12 + 23);

  sub_16B78(v12, type metadata accessor for CarouselCell);
  if (v13)
  {
    v14 = *(v13 + 16);
    v23 = 0;
    v24 = v14;
    swift_getKeyPath();
    sub_16334(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleOneOfferPlatterView);
    v15 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    sub_16538(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppleOneOfferPlatterView);
    sub_4948(&qword_19AC80);
    sub_4948(&qword_19AC88);
    sub_16618();
    sub_166F8();
    sub_13B314();
    v17 = v22;
    (*(v7 + 32))(v22, v9, v6);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v22;
  }

  return sub_53A8(v19, v18, 1, v6);
}

void *sub_13F3C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v6 = sub_13ABC4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = __src - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a2 + 16))
  {
    v12 = *(a2 + 152 * v11 + 40);
    sub_139C94();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = v12;
    type metadata accessor for AppleOneOfferPlatterView();

    sub_F004();
    sub_139B44();
    sub_1088C(v10);
    sub_750BC();
    v14 = *(v7 + 8);
    v14(v10, v6);
    sub_1088C(v10);
    sub_750BC();
    v14(v10, v6);
    sub_13B3C4();
    sub_13A834();
    *__src = *&__src[11];
    *&__src[2] = *&__src[13];
    __src[4] = __src[15];
    result = memcpy(a3, __src, 0x58uLL);
    a3[44] = 257;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_14140@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for OfferBadge();
  __chkstk_darwin(v1);
  v3 = (&v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CarouselCell();
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_4948(&qword_19ABA0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v35 - v18;
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  type metadata accessor for AppleOneOfferPlatterView();
  sub_EE08(v9);
  sub_16C24((v9 + 144), &v39, &qword_19E960);
  sub_16B78(v9, type metadata accessor for CarouselCell);
  if (v41)
  {
    sub_9414(&v39, v42);
    v22 = sub_F004();
    sub_4B14(v42, v3 + v1[9]);
    *v3 = swift_getKeyPath();
    sub_4948(&qword_19AC58);
    swift_storeEnumTagMultiPayload();
    *(v3 + v1[5]) = swift_getKeyPath();
    sub_4948(&qword_19AC60);
    swift_storeEnumTagMultiPayload();
    v23 = v3 + v1[6];
    type metadata accessor for CGSize(0);
    v37 = 0;
    v38 = 0;
    sub_13B224();
    sub_3C04(v42);
    v24 = v40;
    *v23 = v39;
    *(v23 + 2) = v24;
    *(v3 + v1[7]) = 0;
    *(v3 + v1[8]) = v22;
    sub_16538(v3, v21, type metadata accessor for OfferBadge);
    v25 = v21;
    v26 = 0;
  }

  else
  {
    sub_928C(&v39, &qword_19E960);
    v25 = v21;
    v26 = 1;
  }

  sub_53A8(v25, v26, 1, v1);
  sub_EE08(v7);
  sub_16C24((v7 + 192), &v39, &qword_19E960);
  sub_16B78(v7, type metadata accessor for CarouselCell);
  if (v41)
  {
    sub_9414(&v39, v42);
    v27 = sub_F004();
    sub_4B14(v42, v3 + v1[9]);
    *v3 = swift_getKeyPath();
    sub_4948(&qword_19AC58);
    swift_storeEnumTagMultiPayload();
    *(v3 + v1[5]) = swift_getKeyPath();
    sub_4948(&qword_19AC60);
    swift_storeEnumTagMultiPayload();
    v28 = v3 + v1[6];
    type metadata accessor for CGSize(0);
    v37 = 0;
    v38 = 0;
    sub_13B224();
    sub_3C04(v42);
    v29 = v40;
    *v28 = v39;
    *(v28 + 2) = v29;
    *(v3 + v1[7]) = 0;
    *(v3 + v1[8]) = v27;
    sub_16538(v3, v19, type metadata accessor for OfferBadge);
    v30 = v19;
    v31 = 0;
  }

  else
  {
    sub_928C(&v39, &qword_19E960);
    v30 = v19;
    v31 = 1;
  }

  sub_53A8(v30, v31, 1, v1);
  sub_16C24(v21, v16, &qword_19ABA0);
  sub_16C24(v19, v13, &qword_19ABA0);
  v32 = v36;
  sub_16C24(v16, v36, &qword_19ABA0);
  v33 = sub_4948(&qword_19ACC0);
  sub_16C24(v13, v32 + *(v33 + 48), &qword_19ABA0);
  sub_928C(v19, &qword_19ABA0);
  sub_928C(v21, &qword_19ABA0);
  sub_928C(v13, &qword_19ABA0);
  return sub_928C(v16, &qword_19ABA0);
}

uint64_t sub_146B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for AppleOneOfferPlatterView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EE08(v8);
  v9 = *(v8 + 7);

  sub_16B78(v8, type metadata accessor for CarouselCell);
  v10 = *(v9 + 16);

  v18[6] = 0;
  v18[7] = v10;
  swift_getKeyPath();
  sub_16334(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppleOneOfferPlatterView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_16538(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppleOneOfferPlatterView);
  sub_4948(&qword_19AC80);
  sub_4948(&qword_19ACC8);
  sub_16618();
  v13 = type metadata accessor for ComponentCellWrapper(255);
  v14 = sub_558C(&qword_19ACD0);
  v15 = sub_16B30(&qword_19ACD8, type metadata accessor for ComponentCellWrapper);
  v16 = sub_CBC0(&qword_19ACE0, &qword_19ACD0);
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  swift_getOpaqueTypeConformance2();
  return sub_13B314();
}

uint64_t sub_149A0(unint64_t *a1)
{
  v2 = sub_4948(&qword_19ACD0);
  __chkstk_darwin(v2);
  v4 = &v18[-v3 - 8];
  v5 = type metadata accessor for ComponentCellWrapper(0);
  __chkstk_darwin(v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for CarouselCell();
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *a1;
  type metadata accessor for AppleOneOfferPlatterView();
  result = sub_EE08(v10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = *(v10 + 7);
  if (v11 >= *(v13 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_16A84(v13 + 88 * v11 + 32, v18);
  sub_16B78(v10, type metadata accessor for CarouselCell);
  v14 = sub_F004();
  sub_16A84(v18, (v7 + 1));
  *(v7 + *(v5 + 24)) = swift_getKeyPath();
  sub_4948(&qword_19E2E0);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v5 + 28)) = swift_getKeyPath();
  sub_4948(&qword_19ACE8);
  swift_storeEnumTagMultiPayload();
  *v7 = v14;
  v15 = enum case for DynamicTypeSize.accessibility2(_:);
  v16 = sub_13A934();
  (*(*(v16 - 8) + 104))(v4, v15, v16);
  sub_16B30(&qword_19ACF0, &type metadata accessor for DynamicTypeSize);
  result = sub_13BB44();
  if (result)
  {
    sub_16B30(&qword_19ACD8, type metadata accessor for ComponentCellWrapper);
    sub_CBC0(&qword_19ACE0, &qword_19ACD0);
    sub_13B0C4();
    sub_928C(v4, &qword_19ACD0);
    sub_16B78(v7, type metadata accessor for ComponentCellWrapper);
    return sub_16BD0(v18);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_14D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13A9A4();
  __chkstk_darwin(v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_4948(&qword_19AB60);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  if (qword_199DA8 != -1)
  {
    swift_once();
  }

  v12 = qword_1B28D0;
  v13 = *(v6 + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_13ABA4();
  (*(*(v15 - 8) + 104))(v8 + v13, v14, v15);
  *v8 = v12;
  v8[1] = v12;
  LODWORD(v14) = *(a2 + *(type metadata accessor for AppleOneOfferPlatterView() + 44));
  v16 = objc_opt_self();
  if (v14 == 1)
  {
    v17 = [v16 systemBlueColor];
    v18 = sub_13B1E4();
  }

  else
  {
    v19 = [v16 systemGrayColor];
    sub_13B1E4();
    v18 = sub_13B1B4();
  }

  sub_10A64();
  sub_13A784();
  sub_16334(v8, v11, &type metadata accessor for RoundedRectangle);
  v20 = *&v37 * 0.5;
  v21 = &v11[*(v9 + 68)];
  sub_16334(v8, v21, &type metadata accessor for RoundedRectangle);
  *(v21 + *(sub_13A994() + 20)) = v20;
  v22 = v21 + *(sub_4948(&qword_19AB68) + 36);
  v23 = v38;
  *v22 = v37;
  *(v22 + 16) = v23;
  *(v22 + 32) = v39;
  v24 = sub_4948(&qword_19AB70);
  *(v21 + *(v24 + 52)) = v18;
  *(v21 + *(v24 + 56)) = 256;
  v25 = sub_13B3C4();
  v27 = v26;
  sub_16B78(v8, &type metadata accessor for RoundedRectangle);
  v28 = (v21 + *(sub_4948(&qword_19AB78) + 36));
  *v28 = v25;
  v28[1] = v27;
  v29 = sub_13B3C4();
  v31 = v30;
  v32 = a3 + *(sub_4948(&qword_19AAB8) + 36);
  sub_16038(v11, v32, &qword_19AB60);
  v33 = (v32 + *(sub_4948(&qword_19AB48) + 36));
  *v33 = v29;
  v33[1] = v31;
  v34 = sub_4948(&qword_19AB38);
  return (*(*(v34 - 8) + 16))(a3, a1, v34);
}

unint64_t sub_15118()
{
  result = qword_19AAC0;
  if (!qword_19AAC0)
  {
    sub_558C(&qword_19AA80);
    sub_151D0();
    sub_CBC0(&qword_19AB20, &qword_19AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAC0);
  }

  return result;
}

unint64_t sub_151D0()
{
  result = qword_19AAC8;
  if (!qword_19AAC8)
  {
    sub_558C(&qword_19AA78);
    sub_15288();
    sub_CBC0(&qword_19AB10, &qword_19AB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAC8);
  }

  return result;
}

unint64_t sub_15288()
{
  result = qword_19AAD0;
  if (!qword_19AAD0)
  {
    sub_558C(&qword_19AA70);
    sub_15314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAD0);
  }

  return result;
}

unint64_t sub_15314()
{
  result = qword_19AAD8;
  if (!qword_19AAD8)
  {
    sub_558C(&qword_19AA68);
    sub_153CC();
    sub_CBC0(&qword_19AB00, &qword_19AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAD8);
  }

  return result;
}

unint64_t sub_153CC()
{
  result = qword_19AAE0;
  if (!qword_19AAE0)
  {
    sub_558C(&qword_19AA60);
    sub_15458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAE0);
  }

  return result;
}

unint64_t sub_15458()
{
  result = qword_19AAE8;
  if (!qword_19AAE8)
  {
    sub_558C(&qword_19AA58);
    sub_154E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAE8);
  }

  return result;
}

unint64_t sub_154E4()
{
  result = qword_19AAF0;
  if (!qword_19AAF0)
  {
    sub_558C(&qword_19AA50);
    sub_CBC0(&qword_19AAF8, &qword_19AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AAF0);
  }

  return result;
}

unint64_t sub_1559C()
{
  result = qword_19AB28;
  if (!qword_19AB28)
  {
    sub_558C(&qword_19AAB8);
    sub_CBC0(&qword_19AB30, &qword_19AB38);
    sub_CBC0(&qword_19AB40, &qword_19AB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AB28);
  }

  return result;
}

unint64_t sub_15680()
{
  result = qword_19AB50;
  if (!qword_19AB50)
  {
    sub_558C(&qword_19AA90);
    sub_558C(&qword_19AA80);
    sub_558C(&qword_19AAB8);
    sub_15118();
    sub_1559C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AB50);
  }

  return result;
}

unint64_t sub_15774()
{
  result = qword_19AB58;
  if (!qword_19AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AB58);
  }

  return result;
}

uint64_t sub_157C8@<X0>(__int16 a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = sub_13B3C4();
  a2[1] = v4;
  v5 = sub_4948(&qword_19AD20);
  return sub_1581C(a1 & 0x101, a2 + *(v5 + 44));
}

uint64_t sub_1581C@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = a1 & 0x100;
  v59 = v3 == 0;
  v58 = sub_4948(&qword_19ACD0);
  __chkstk_darwin(v58);
  v5 = v47 - v4;
  v6 = sub_4948(&qword_19AD28);
  v53 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v56 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v55 = v47 - v10;
  v11 = __chkstk_darwin(v9);
  v54 = v47 - v12;
  __chkstk_darwin(v11);
  v14 = v47 - v13;
  v15 = sub_13B204();
  v16 = [objc_opt_self() systemBlueColor];
  v17 = sub_13B1E4();
  KeyPath = swift_getKeyPath();
  sub_13B3C4();
  sub_13A834();
  v19 = sub_13AF84();
  v20 = swift_getKeyPath();
  v60 = a1;
  v21 = 0.0;
  if ((a1 & (v3 >> 8)) != 0)
  {
    v21 = 1.0;
  }

  v65[0] = v15;
  v65[1] = KeyPath;
  v65[2] = v17;
  v65[9] = v20;
  v65[10] = v19;
  *&v65[11] = v21;
  v22 = enum case for DynamicTypeSize.accessibility2(_:);
  v23 = sub_13A934();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v26 = v24 + 104;
  v25(v5, v22, v23);
  v27 = sub_16B30(&qword_19ACF0, &type metadata accessor for DynamicTypeSize);
  v28 = v23;
  if (sub_13BB44())
  {
    v49 = v27;
    v50 = v26;
    v51 = v25;
    v52 = v22;
    v29 = sub_4948(&qword_19AD30);
    v30 = sub_16EB8();
    v31 = sub_CBC0(&qword_19ACE0, &qword_19ACD0);
    v47[2] = v29;
    v48 = v14;
    v47[0] = v31;
    v47[1] = v30;
    sub_13B0C4();
    sub_928C(v5, &qword_19ACD0);
    memcpy(__dst, v65, 0x60uLL);
    sub_928C(__dst, &qword_19AD30);
    v28 = sub_13B204();
    if (qword_199DA0 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v32 = qword_1B28C8;
  v33 = swift_getKeyPath();

  sub_13B3C4();
  sub_13A834();
  v34 = sub_13AF84();
  v35 = swift_getKeyPath();
  v36 = 1.0;
  if ((v60 | v59))
  {
    v36 = 0.0;
  }

  *&v61[3] = v62;
  *&v61[5] = v63;
  v61[0] = v28;
  v61[1] = v33;
  v61[2] = v32;
  *&v61[7] = v64;
  v61[9] = v35;
  v61[10] = v34;
  *&v61[11] = v36;
  v51(v5, v52, v23);
  result = sub_13BB44();
  if (result)
  {
    v38 = v54;
    sub_13B0C4();
    sub_928C(v5, &qword_19ACD0);
    memcpy(v65, v61, sizeof(v65));
    sub_928C(v65, &qword_19AD30);
    v39 = v53;
    v40 = *(v53 + 16);
    v41 = v55;
    v42 = v48;
    v40(v55, v48, v6);
    v43 = v56;
    v40(v56, v38, v6);
    v44 = v57;
    v40(v57, v41, v6);
    v45 = sub_4948(&qword_19AD90);
    v40(&v44[*(v45 + 48)], v43, v6);
    v46 = *(v39 + 8);
    v46(v38, v6);
    v46(v42, v6);
    v46(v43, v6);
    return (v46)(v41, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15E40@<X0>(uint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_157C8(v2 | *v1, a1);
}

uint64_t sub_15E5C(uint64_t a1)
{
  v2 = sub_13A934();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_13AA24();
}

uint64_t sub_15F24(uint64_t a1)
{
  v2 = sub_4948(&unk_19E290);
  __chkstk_darwin(v2 - 8);
  sub_16C24(a1, &v5 - v3, &unk_19E290);
  return sub_13AA84();
}

uint64_t sub_15FD4(uint64_t a1, uint64_t a2)
{
  sub_4948(&qword_19AB98);
  sub_9F94();
  v3 = sub_17208();
  v4(v3);
  return a2;
}

uint64_t sub_16038(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return v3;
}

unint64_t sub_16084()
{
  result = qword_19AC30;
  if (!qword_19AC30)
  {
    sub_558C(&qword_19ABC0);
    sub_16110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC30);
  }

  return result;
}

unint64_t sub_16110()
{
  result = qword_19AC38;
  if (!qword_19AC38)
  {
    sub_558C(&qword_19ABB8);
    sub_CBC0(&qword_19AC40, &qword_19ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC38);
  }

  return result;
}

unint64_t sub_161C8()
{
  result = qword_19AC48;
  if (!qword_19AC48)
  {
    sub_558C(&qword_19ABA0);
    sub_16B30(&qword_19AC50, type metadata accessor for OfferBadge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC48);
  }

  return result;
}

unint64_t sub_1628C()
{
  result = qword_19AC70;
  if (!qword_19AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC70);
  }

  return result;
}

uint64_t sub_162E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_162F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_16334(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

uint64_t sub_16390()
{
  type metadata accessor for AppleOneOfferPlatterView();
  sub_17238();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  v8 = *(v0 + 24);
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v9 + 8))(v1 + v4 + v8);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_16538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return a2;
}

void *sub_16594@<X0>(unint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  type metadata accessor for AppleOneOfferPlatterView();
  v5 = *(v2 + 16);

  return sub_13F3C(a1, v5, a2);
}

unint64_t sub_16618()
{
  result = qword_19AC90;
  if (!qword_19AC90)
  {
    sub_558C(&qword_19AC80);
    sub_166A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC90);
  }

  return result;
}

unint64_t sub_166A4()
{
  result = qword_19AC98;
  if (!qword_19AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AC98);
  }

  return result;
}

unint64_t sub_166F8()
{
  result = qword_19ACA0;
  if (!qword_19ACA0)
  {
    sub_558C(&qword_19AC88);
    sub_16784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19ACA0);
  }

  return result;
}

unint64_t sub_16784()
{
  result = qword_19ACA8;
  if (!qword_19ACA8)
  {
    sub_558C(&qword_19ACB0);
    sub_16810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19ACA8);
  }

  return result;
}

unint64_t sub_16810()
{
  result = qword_19ACB8;
  if (!qword_19ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19ACB8);
  }

  return result;
}

uint64_t sub_16864()
{
  type metadata accessor for AppleOneOfferPlatterView();
  sub_17238();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_4948(&qword_19AC58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A734();
    sub_9F94();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  v8 = *(v0 + 24);
  sub_4948(&qword_19AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13ABC4();
    sub_9F94();
    (*(v9 + 8))(v1 + v4 + v8);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_16A04(unint64_t *a1)
{
  type metadata accessor for AppleOneOfferPlatterView();

  return sub_149A0(a1);
}

uint64_t sub_16B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16B78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_16C24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_171DC(a1, a2, a3);
  sub_9F94();
  v4 = sub_17208();
  v5(v4);
  return v3;
}

uint64_t getEnumTagSinglePayload for Checkmark(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
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

uint64_t storeEnumTagSinglePayload for Checkmark(uint64_t result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x16DE4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_16E1C()
{
  sub_558C(&qword_19AA90);
  sub_15680();
  sub_15774();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_16EB8()
{
  result = qword_19AD38;
  if (!qword_19AD38)
  {
    sub_558C(&qword_19AD30);
    sub_16F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AD38);
  }

  return result;
}

unint64_t sub_16F44()
{
  result = qword_19AD40;
  if (!qword_19AD40)
  {
    sub_558C(&qword_19AD48);
    sub_16FFC();
    sub_CBC0(&qword_19AD80, &qword_19AD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AD40);
  }

  return result;
}

unint64_t sub_16FFC()
{
  result = qword_19AD50;
  if (!qword_19AD50)
  {
    sub_558C(&qword_19AD58);
    sub_17088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AD50);
  }

  return result;
}

unint64_t sub_17088()
{
  result = qword_19AD60;
  if (!qword_19AD60)
  {
    sub_558C(&qword_19AD68);
    sub_CBC0(&qword_19AD70, &qword_19AD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19AD60);
  }

  return result;
}

uint64_t sub_17190()
{

  return swift_once();
}

uint64_t sub_171B0()
{

  return swift_once();
}

uint64_t sub_171DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_4948(a3);
}

uint64_t type metadata accessor for AppLockup()
{
  result = qword_19AE18;
  if (!qword_19AE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v8 = &v104 - v7;
  sub_13B584();
  sub_9E94();
  v114 = v9;
  v115 = v10;
  __chkstk_darwin(v9);
  sub_18B60();
  __chkstk_darwin(v11);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v12);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v15);
  v16 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  v20 = type metadata accessor for AppLockup();
  sub_9F94();
  __chkstk_darwin(v21);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v112 = swift_initStackObject();
  v110 = a2;
  v117 = a2;
  v24 = sub_18BCC();
  v122 = a1;
  sub_9DD0(v24, 0xE700000000000000, v20, v25, v116, v26, v27, v28);
  if (v3)
  {

    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  *(v23 + 2) = v30;
  *v23 = sub_BB310();
  *(v23 + 1) = v31;
  v108 = v31;
  v113 = v20;
  v32 = sub_BB310();
  v105 = 0;
  v104 = v30;
  *&v118 = v32;
  *(&v118 + 1) = v33;
  sub_13BFB4();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_7;
  }

  sub_7738();
  if (sub_52E0(v8, 1, v16) == 1)
  {
    sub_184DC(v8, &qword_19A420);
LABEL_7:
    sub_13BAB4();
    sub_18B28();
    sub_18498(v34, v35);
    v36 = sub_18B70();
    sub_18BE4(v36, v37);
    *v38 = 0xD000000000000011;
    v38[1] = 0x800000000014E730;
    sub_18C14();
    *(v39 + 16) = v16;
    sub_18B50();
    (*(v40 + 104))();
    swift_willThrow();
    v41 = sub_18BFC();
    v42(v41);

    v43 = sub_13B7A4();
    sub_53A8(v19, 1, 1, v43);
    v44 = 0;
    goto LABEL_9;
  }

  v45 = sub_18BFC();
  v46(v45);
  sub_92E4(v8, v19);
  v44 = v105;
  sub_18C14();
LABEL_9:
  sub_92E4(v19, &v23[*(v16 + 44)]);
  sub_13B594();
  v47 = sub_13B564();
  v48 = v110;
  if (v47)
  {
LABEL_12:
    sub_13BAB4();
    sub_18B28();
    sub_18498(v49, v50);
    v51 = sub_18B70();
    sub_18BE4(v51, v52);
    *v53 = 1868983913;
    v53[1] = 0xE400000000000000;
    v53[2] = v16;
    v54 = &enum case for JSONError.missingProperty(_:);
    sub_18B50();
    (*(v55 + 104))();
    swift_willThrow();
    sub_18B40();
    v56();

    sub_18BAC();
    goto LABEL_13;
  }

  sub_18BBC();
  sub_139DB4();
  if (v44)
  {

    sub_18B90();
    sub_184DC(v121, &qword_19E960);
    sub_18C14();
    goto LABEL_12;
  }

  sub_18B40();
  v97();
  sub_18C40();
  v54 = &enum case for JSONError.missingProperty(_:);
LABEL_13:
  v57 = v119;
  *(v23 + 72) = v118;
  *(v23 + 88) = v57;
  *(v23 + 13) = v120;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_16:
    sub_13BAB4();
    sub_18B28();
    sub_18498(v58, v59);
    v60 = sub_18B70();
    sub_18BE4(v60, v61);
    *v62 = 0x7265746F6F66;
    v62[1] = 0xE600000000000000;
    v62[2] = v113;
    sub_18B50();
    (*(v63 + 104))();
    swift_willThrow();
    sub_18BA0();
    sub_18B40();
    v64();

    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    goto LABEL_18;
  }

  sub_7768();
  if (v120 == 1)
  {
    sub_184DC(&v118, &qword_19ADB8);
    goto LABEL_16;
  }

  sub_18BA0();
  sub_18B40();
  v68();
  v65 = v118;
  v66 = v119;
  v67 = v120;
LABEL_18:
  *(v23 + 24) = v65;
  *(v23 + 40) = v66;
  *(v23 + 56) = v67;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_18B28();
    sub_18498(v69, v70);
    v71 = sub_18B70();
    sub_18BE4(v71, v72);
    *v73 = 0x6575676573;
    v73[1] = 0xE500000000000000;
    v54 = v113;
    v73[2] = v113;
    sub_18B50();
    (*(v74 + 104))();
    swift_willThrow();
    sub_18BA0();
    sub_18B40();
    v75();

    sub_18BAC();
  }

  else
  {
    sub_139BC4();
    sub_18BA0();
    sub_18B40();
    v98();
    sub_18C40();
    sub_18C14();
  }

  v76 = &v23[v54[12]];
  v77 = v119;
  *v76 = v118;
  *(v76 + 1) = v77;
  *(v76 + 4) = v120;
  sub_13B594();
  if (sub_13B564())
  {
    v78 = sub_13BAB4();
    sub_18B28();
    sub_18498(v79, v80);
    sub_18BF0();
    swift_allocError();
    *v81 = 0x656C746974627573;
    v81[1] = 0xE800000000000000;
    v81[2] = v54;
    (*(*(v78 - 8) + 104))(v81, enum case for JSONError.missingProperty(_:), v78);
    swift_willThrow();
    sub_18BA0();
    sub_18B40();
    v82();

    sub_18BAC();
  }

  else
  {
    sub_18BBC();
    sub_139DB4();
    sub_18BA0();
    sub_18B40();
    v99();
    sub_18C40();
  }

  v83 = v119;
  *(v23 + 7) = v118;
  *(v23 + 8) = v83;
  *(v23 + 18) = v120;
  v84 = v107;
  v85 = v122;
  sub_13B594();
  if (sub_13B564())
  {
    v87 = sub_13BAB4();
    sub_18B28();
    sub_18498(v88, v89);
    sub_18BF0();
    v90 = v84;
    swift_allocError();
    *v91 = 0x656C746974;
    v91[1] = 0xE500000000000000;
    v91[2] = v113;
    (*(*(v87 - 8) + 104))(v91, enum case for JSONError.missingProperty(_:), v87);
    swift_willThrow();

    v92 = v114;
    v93 = v111;
    v111(v85, v114);
    v93(v90, v92);
    v94 = v105;
    sub_13B5A4();
    sub_5224();
    (*(v95 + 8))(v48);

    if (!v94)
    {
      sub_184DC((v23 + 24), &qword_19ADB0);
      sub_184DC((v23 + 72), &qword_19E960);
      sub_184DC((v23 + 112), &qword_19E960);
      sub_9238((v23 + 192));
      v96 = v113;
      sub_184DC(&v23[v113[11]], &qword_19A350);
      return sub_184DC(&v23[v96[12]], &unk_19E320);
    }
  }

  else
  {
    sub_18BBC();
    sub_139DB4();
    v86 = v84;
    v100 = v114;
    v101 = v111;
    v111(v122, v114);
    v101(v86, v100);
    sub_18C40();
    sub_9414(&v118, (v23 + 152));
    sub_18530(v23, v106);
    sub_13B5A4();
    sub_5224();
    (*(v102 + 8))(v48);
    return sub_18594(v23);
  }

  return result;
}

uint64_t sub_180F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[0] = a3;
  v6 = sub_13B584();
  sub_9E94();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139DC4();
  v33[1] = swift_initStackObject();
  v35 = a2;
  v12 = sub_18BCC();
  sub_9DD0(v12, 0xE700000000000000, v13, v14, v34, v15, v16, v17);
  v40 = a2;
  if (v3)
  {

    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_18C20();
  v38 = v19;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_18B28();
    sub_18498(v21, v22);
    v23 = sub_18B70();
    sub_18BE4(v23, v24);
    *v25 = a2;
    v25[1] = 0xEB000000006E6F69;
    v25[2] = &type metadata for AppLockup.Footer;
    sub_18B50();
    (*(v26 + 104))(v27);
    swift_willThrow();
    v28 = *(v8 + 8);
    v28(a1, v6);
    v28(v11, v6);
    sub_13B5A4();
    sub_5224();
    (*(v29 + 8))(v40);
  }

  else
  {
    v20 = v40;
    sub_139DB4();
    v30 = *(v8 + 8);
    v30(a1, v6);
    v30(v11, v6);
    sub_9414(&v36, v37);
    sub_9414(v37, &v39);
    sub_185F0(&v38, v33[0]);
    sub_13B5A4();
    sub_5224();
    (*(v31 + 8))(v20);
    return sub_18628(&v38);
  }
}

uint64_t sub_18498(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_184DC(uint64_t a1, uint64_t *a2)
{
  sub_4948(a2);
  sub_5224();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18594(uint64_t a1)
{
  v2 = type metadata accessor for AppLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_18658(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1866C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_186AC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 176);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 44);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_187C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 176) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 44);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_18850()
{
  sub_189DC(319, &qword_19AE28);
  if (v0 <= 0x3F)
  {
    sub_18A84(319, &qword_19AE30, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_189DC(319, &qword_19AE38);
      if (v2 <= 0x3F)
      {
        sub_18AD4(319, &qword_19AE40, &qword_19AE48);
        if (v3 <= 0x3F)
        {
          sub_18A28();
          if (v4 <= 0x3F)
          {
            sub_18A84(319, &qword_19A3C0, &type metadata accessor for ImpressionMetrics);
            if (v5 <= 0x3F)
            {
              sub_18AD4(319, &qword_19A3C8, &unk_19A3D0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_189DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_13BF44();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_18A28()
{
  result = qword_19AE50;
  if (!qword_19AE50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_19AE50);
  }

  return result;
}

void sub_18A84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_18BF0();
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18AD4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_558C(a3);
    sub_18BF0();
    v4 = sub_13BF44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18B70()
{

  return swift_allocError();
}

double sub_18B90()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

double sub_18BAC()
{
  *(v0 - 176) = 0;
  result = 0.0;
  *(v0 - 208) = 0u;
  *(v0 - 192) = 0u;
  return result;
}

uint64_t sub_18BFC()
{
  result = v0;
  *(v1 - 280) = *(*(v1 - 248) + 8);
  return result;
}

uint64_t sub_18C40()
{

  return sub_9414((v0 - 160), v0 - 208);
}

void sub_18C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_4948(&qword_19AEF0);
  sub_19348();

  if (*(&v11 + 1))
  {
    sub_9414(&v10, v13);
    sub_19330();
    (*(v5 + 384))(v13, a3);
    sub_3C04(v13);
  }

  else
  {
    sub_CC68(&v10, &qword_19E960);
  }

  swift_getKeyPath();
  sub_19348();

  if (*(&v11 + 1))
  {
    sub_9414(&v10, v13);
    sub_19330();
    (*(v6 + 384))(v13, a3);
    sub_3C04(v13);
  }

  else
  {
    sub_CC68(&v10, &qword_19E960);
  }

  swift_getKeyPath();
  sub_19348();

  if (*&v13[0])
  {
    sub_1A878(*&v13[0]);
  }

  swift_getKeyPath();
  sub_19348();

  if (v12)
  {
    v13[0] = v10;
    v13[1] = v11;
    v13[2] = v12;
    sub_1A970(v10, v13 + 8, a3);
    sub_18628(v13);
  }

  else
  {
    sub_CC68(&v10, &qword_19ADB0);
  }

  v7 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_titleLabel];
  swift_getKeyPath();
  sub_19348();

  (*(&stru_158.size + (swift_isaMask & *v7)))(v13, a3);
  sub_3C04(v13);
  v8 = [v3 contentView];
  swift_getKeyPath();
  sub_19348();

  if (*(&v13[0] + 1))
  {
    v9 = sub_13BB54();
  }

  else
  {
    v9 = 0;
  }

  [v8 setAccessibilityLabel:v9];
}

uint64_t sub_18FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppLockupComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_19028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppLockupComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_19090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_190E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_19160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_191DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_192E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19348()
{

  return sub_13B5E4();
}

id sub_19360()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___artworkImageView;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___artworkImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___artworkImageView);
  }

  else
  {
    v4 = v0;
    if (qword_199E20 != -1)
    {
      sub_1D3E4();
    }

    v5 = objc_allocWithZone(sub_139CF4());
    sub_1D498();
    v6 = sub_139CE4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_19414()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___footerImageView;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___footerImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___footerImageView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(sub_139CF4());
    sub_1D498();
    v6 = sub_139CE4();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_19494(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerLabel;
  sub_139BB4();
  v11 = objc_opt_self();
  v12 = [v11 ams_secondaryText];
  v13 = sub_13A2A4();
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleFootnote;
  v14 = *(*(v13 - 8) + 104);
  v14();
  v15 = UIFontTextStyleFootnote;
  *&v4[v10] = sub_1D430();
  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_infoLabel;
  v17 = [v11 ams_secondaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = v15;
  v14();
  *&v4[v16] = sub_1D430();
  v29 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_subtitleLabel;
  v18 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleSubheadline;
  v14();
  v19 = UIFontTextStyleSubheadline;
  *&v4[v29] = sub_1D430();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_titleLabel;
  v21 = [v11 ams_primaryText];
  __src[3] = v13;
  __src[4] = &protocol witness table for FontSource;
  *sub_CC08(__src) = UIFontTextStyleHeadline;
  v14();
  v22 = UIFontTextStyleHeadline;
  *&v4[v20] = sub_139BA4();
  v23 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_artworkFetcher];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerArtworkFetcher];
  *v24 = 0;
  v24[1] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___artworkImageView] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___footerImageView] = 0;
  v25 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_shouldDisplayFooterArtwork;
  v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_shouldDisplayFooterArtwork] = 0;
  v26 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_separator;
  *&v5[v26] = [objc_allocWithZone(AMSUICommonView) init];
  sub_197DC(0, v5[v25], __src);
  memcpy(&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_metrics], __src, 0x200uLL);
  v30.receiver = v5;
  v30.super_class = type metadata accessor for AppLockupComponent();
  v27 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  sub_1AC7C();

  return v27;
}

uint64_t sub_197DC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v4 = &type metadata for Double;
    v5 = &protocol witness table for Double;
    if (a2)
    {
      v6 = 42.0;
    }

    else
    {
      v6 = 0.0;
    }

    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4020000000000000;
    *(a3 + 80) = &type metadata for CGFloat;
    *(a3 + 88) = &protocol witness table for CGFloat;
    *(a3 + 56) = 0x4030000000000000;
    if (qword_199E30 != -1)
    {
      result = swift_once();
    }

    v7 = qword_19AF40;
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v7;
    if (qword_199E48 != -1)
    {
      result = swift_once();
    }

    v8 = qword_19AF58;
    *(a3 + 176) = &type metadata for CGFloat;
    *(a3 + 184) = &protocol witness table for CGFloat;
    *(a3 + 152) = v8;
    *(a3 + 216) = &type metadata for CGFloat;
    *(a3 + 224) = &protocol witness table for CGFloat;
    *(a3 + 192) = 0x4028000000000000;
    *(a3 + 256) = &type metadata for Double;
    *(a3 + 264) = &protocol witness table for Double;
    *(a3 + 232) = 0x4020000000000000;
    if (qword_199E10 != -1)
    {
      result = swift_once();
    }

    v9 = qword_19AF18;
    *(a3 + 296) = &type metadata for CGFloat;
    *(a3 + 304) = &protocol witness table for CGFloat;
    *(a3 + 272) = v9;
    *(a3 + 336) = &type metadata for CGFloat;
    *(a3 + 344) = &protocol witness table for CGFloat;
    *(a3 + 312) = 0x404E000000000000;
    *(a3 + 376) = &type metadata for Double;
    *(a3 + 384) = &protocol witness table for Double;
    *(a3 + 352) = 0x4010000000000000;
    *(a3 + 392) = 0x4030000000000000;
    *(a3 + 416) = &type metadata for Double;
    *(a3 + 424) = &protocol witness table for Double;
    v10 = 0;
    v11 = vdupq_n_s64(0x405E000000000000uLL);
  }

  else
  {
    if (a2)
    {
      v6 = 28.0;
    }

    else
    {
      v6 = 0.0;
    }

    *(a3 + 24) = &type metadata for CGFloat;
    *(a3 + 32) = &protocol witness table for CGFloat;
    *a3 = 0x4030000000000000;
    if (qword_199E20 != -1)
    {
      result = swift_once();
    }

    v11 = xmmword_19AF28;
    *(a3 + 80) = &type metadata for CGFloat;
    *(a3 + 88) = &protocol witness table for CGFloat;
    *(a3 + 56) = 0x4030000000000000;
    if (qword_199E30 != -1)
    {
      v17 = v11;
      result = swift_once();
      v11 = v17;
    }

    v12 = qword_19AF40;
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v12;
    if (qword_199E48 != -1)
    {
      v18 = v11;
      result = swift_once();
      v11 = v18;
    }

    v13 = qword_19AF58;
    *(a3 + 176) = &type metadata for CGFloat;
    *(a3 + 184) = &protocol witness table for CGFloat;
    *(a3 + 152) = v13;
    *(a3 + 216) = &type metadata for CGFloat;
    *(a3 + 224) = &protocol witness table for CGFloat;
    *(a3 + 192) = 0x4028000000000000;
    if (qword_199E28 != -1)
    {
      v19 = v11;
      result = swift_once();
      v11 = v19;
    }

    v14 = qword_19AF38;
    *(a3 + 256) = &type metadata for CGFloat;
    *(a3 + 264) = &protocol witness table for CGFloat;
    *(a3 + 232) = v14;
    if (qword_199E10 != -1)
    {
      v20 = v11;
      result = swift_once();
      v11 = v20;
    }

    v15 = qword_19AF18;
    *(a3 + 296) = &type metadata for CGFloat;
    *(a3 + 304) = &protocol witness table for CGFloat;
    *(a3 + 272) = v15;
    *(a3 + 336) = &type metadata for CGFloat;
    *(a3 + 344) = &protocol witness table for CGFloat;
    *(a3 + 312) = 0x404E000000000000;
    *(a3 + 376) = &type metadata for CGFloat;
    *(a3 + 384) = &protocol witness table for CGFloat;
    *(a3 + 352) = 0x4000000000000000;
    if (qword_199E38 != -1)
    {
      v21 = v11;
      result = swift_once();
      v11 = v21;
    }

    v16 = qword_19AF48;
    *(a3 + 416) = &type metadata for CGFloat;
    *(a3 + 424) = &protocol witness table for CGFloat;
    *(a3 + 392) = v16;
    if (qword_199E40 != -1)
    {
      v22 = v11;
      result = swift_once();
      v11 = v22;
    }

    v10 = qword_19AF50;
    v5 = &protocol witness table for CGFloat;
    v4 = &type metadata for CGFloat;
  }

  *(a3 + 496) = v4;
  *(a3 + 504) = v5;
  *(a3 + 472) = v10;
  *(a3 + 456) = &type metadata for CGFloat;
  *(a3 + 464) = &protocol witness table for CGFloat;
  *(a3 + 432) = 0x4030000000000000;
  *(a3 + 40) = v11;
  *(a3 + 96) = v6;
  *(a3 + 104) = v6;
  return result;
}

uint64_t sub_19BF0()
{
  v5 = v0;
  swift_getObjectType();
  v33 = sub_13A314();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for AppLockupComponent();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  v12 = [v0 traitCollection];
  v13 = sub_13BDE4();

  sub_197DC(v13 & 1, v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_shouldDisplayFooterArtwork], v34);
  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_metrics;
  swift_beginAccess();
  sub_1BF58(v34, &v5[v14]);
  swift_endAccess();
  sub_1A678();
  sub_1BFB4(&v5[v14], &v35);
  v15 = sub_19360();
  v16 = sub_139CF4();
  v34[3] = v16;
  v34[4] = &protocol witness table for UIView;
  v34[0] = v15;
  v17 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_infoLabel];
  v18 = sub_139BB4();
  v34[18] = v18;
  sub_1D3B8();
  v21 = sub_9A68(v19, v20);
  v34[19] = v21;
  v22 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerLabel];
  v34[14] = v21;
  v34[15] = v17;
  v34[13] = v18;
  v34[10] = v22;
  v23 = v17;
  v24 = v22;
  v25 = sub_19414();
  v26 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_subtitleLabel];
  v34[8] = v16;
  v34[9] = &protocol witness table for UIView;
  v34[5] = v25;
  v34[23] = v18;
  v34[24] = v21;
  v34[20] = v26;
  v27 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_titleLabel];
  v34[28] = v18;
  v34[29] = v21;
  v34[25] = v27;
  v28 = v26;
  v29 = v27;
  sub_1ABC8();
  v30 = [v5 contentView];
  [v30 bounds];
  sub_1D3D0();

  sub_1D3A4();
  sub_1D4AC();
  sub_1D3D0();
  v31 = [v5 contentView];
  AppLockupComponentLayout.placeChildren(relativeTo:in:)(v31, v11, v1, v2, v3, v4);

  (*(v7 + 8))(v11, v33);
  return sub_1D214(v34);
}

double sub_19F18(double a1, double a2, float a3)
{
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_metrics;
  swift_beginAccess();
  sub_1BFB4(&v3[v6], &v43);
  v7 = sub_19360();
  v26 = sub_139CF4();
  v27 = &protocol witness table for UIView;
  v25[0] = v7;
  v8 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_infoLabel];
  v35 = sub_139BB4();
  sub_1D3B8();
  v36 = sub_9A68(v9, v10);
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerLabel];
  v33 = v36;
  v34 = v8;
  v32 = v35;
  v31 = v11;
  v12 = v8;
  v13 = v11;
  v14 = sub_19414();
  v15 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_subtitleLabel];
  v29 = v26;
  v30 = &protocol witness table for UIView;
  v28 = v14;
  v38 = v35;
  v39 = v36;
  v37 = v15;
  v16 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_titleLabel];
  v41 = v35;
  v42 = v36;
  v40 = v16;
  v17 = v15;
  v18 = v16;
  sub_1ABC8();
  sub_1D3A4();
  sub_13BE64();
  v20 = v19;
  v21 = [v3 contentView];
  sub_1C010(v21, v25, v20);

  sub_1D3A4();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v23 = a1;
  }

  else
  {
    v23 = v22;
  }

  sub_1D214(v25);
  return v23;
}

uint64_t sub_1A184()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AppLockupComponent();
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v1 = sub_19360();
  (*(&stru_108.reloff + (swift_isaMask & *v1)))();

  v2 = sub_19414();
  (*(&stru_108.reloff + (swift_isaMask & *v2)))();

  sub_1D38C();
  (*(v3 + 392))();
  sub_1D38C();
  (*(v4 + 392))();
  sub_1D38C();
  (*(v5 + 392))();
  sub_1D38C();
  return (*(v6 + 392))();
}

void sub_1A3A8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for AppLockupComponent();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_13BDE4();

  if (!a1 || (sub_13BDE4() & 1) != (v5 & 1))
  {
    v6 = [v2 traitCollection];
    v7 = sub_13BDE4();

    sub_197DC(v7 & 1, *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_shouldDisplayFooterArtwork), v21);
    v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_metrics;
    swift_beginAccess();
    sub_1BF58(v21, v2 + v8);
    swift_endAccess();
    v9 = [v2 traitCollection];
    v10 = sub_13BDE4();

    v11 = sub_19360();
    if (v10)
    {
      sub_1D404();
      (*(v12 + 160))(120.0, 120.0);

      v13 = v2;
      sub_19414();
      sub_1D48C();
      sub_1D404();
      v15.n128_u64[0] = 0x4045000000000000;
      v16.n128_u64[0] = 0x4045000000000000;
      (*(v14 + 160))(v15, v16);
    }

    else
    {
      if (qword_199E20 != -1)
      {
        sub_1D3E4();
      }

      sub_1D404();
      (*(v17 + 160))();

      v13 = v2;
      sub_19414();
      sub_1D48C();
      sub_1D404();
      v19.n128_u64[0] = 28.0;
      v20.n128_u64[0] = 28.0;
      (*(v18 + 160))(v19, v20);
    }
  }
}

void sub_1A678()
{
  v3 = v0;
  sub_19360();
  sub_1D48C();
  v5 = (*(&stru_68.reserved2 + (swift_isaMask & v4)))();

  if ((v5 & 1) == 0 || (([*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___artworkImageView] frame], sub_1D410(), v7 = *(v6 + 152), v9 = v8, v10 = v7(), v12 = v11, v9, v1 == v10) ? (v13 = v2 == v12) : (v13 = 0), !v13))
  {
    v14 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_artworkFetcher];
    if (v14)
    {

      v14(v15);
      sub_C9FC(v14);
    }
  }

  sub_19414();
  sub_1D48C();
  v17 = (*(&stru_68.reserved2 + (swift_isaMask & v16)))();

  if ((v17 & 1) == 0 || (([*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent____lazy_storage___footerImageView] frame], sub_1D410(), v19 = *(v18 + 152), v21 = v20, v22 = v19(), v24 = v23, v21, v1 == v22) ? (v25 = v2 == v24) : (v25 = 0), !v25))
  {
    v26 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerArtworkFetcher];
    if (v26)
    {

      v26(v27);

      sub_C9FC(v26);
    }
  }
}

uint64_t sub_1A878(uint64_t a1)
{
  v2 = v1;
  sub_1D450();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_artworkFetcher);
  v8 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_artworkFetcher);
  *v7 = sub_1BA90;
  v7[1] = v6;

  sub_C9FC(v8);
}

uint64_t sub_1A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_shouldDisplayFooterArtwork) = 1;
    sub_1D450();
    v7 = swift_allocObject();
    swift_weakInit();
    sub_1D450();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 2) = v7;
    *(v9 + 3) = v8;
    *(v9 + 4) = a1;
    v10 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerArtworkFetcher);
    v11 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerArtworkFetcher);
    *v10 = sub_1BA14;
    v10[1] = v9;

    sub_C9FC(v11);
  }

  return (*(&stru_158.size + (swift_isaMask & **(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerLabel))))(a2, a3);
}

void sub_1AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = a4();

      (*&stru_108.segname[(swift_isaMask & *v10) + 16])(a3, v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1ABC8()
{
  v1 = [v0 contentView];
  [v1 bounds];
  sub_1D3D0();

  sub_1D3A4();
  sub_1D4AC();
  CGRectGetWidth(v3);
  sub_1B964();
  return sub_13A374();
}

void sub_1AC7C()
{
  v1 = [v0 contentView];
  if (qword_199DF0 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:qword_19AEF8];

  v2 = sub_1D45C();
  v3 = [v2 layer];

  if (qword_199E08 != -1)
  {
    swift_once();
  }

  [v3 setBorderWidth:*&qword_19AF10];

  v4 = sub_1D45C();
  v5 = [v4 layer];

  if (qword_199E00 != -1)
  {
    swift_once();
  }

  [v5 setBorderColor:qword_19AF08];

  v6 = sub_1D45C();
  if (qword_199DF8 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_19AF00);

  v7 = sub_1D45C();
  v8 = sub_19360();
  [v7 addSubview:v8];

  v9 = sub_1D45C();
  v10 = sub_19414();
  [v9 addSubview:v10];

  v11 = sub_1D45C();
  sub_1D474(v11, OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_footerLabel);

  v12 = sub_1D45C();
  sub_1D474(v12, OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_titleLabel);

  v13 = sub_1D45C();
  sub_1D474(v13, OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_subtitleLabel);

  v14 = sub_1D45C();
  sub_1D474(v14, OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_infoLabel);

  v15 = sub_1D45C();
  sub_1D474(v15, OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_separator);

  sub_1AFCC();
  v16 = sub_1D45C();
  [v16 setIsAccessibilityElement:1];

  v17 = sub_1D45C();
  [v17 setAccessibilityTraits:UIAccessibilityTraitStaticText];
}

id sub_1AFCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin18AppLockupComponent_separator);
  if (qword_199E18 != -1)
  {
    swift_once();
  }

  v2 = qword_19AF20;

  return [v1 setBackgroundColor:v2];
}

id sub_1B088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLockupComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1B1B4()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && ((*(v2 + 104))(v6, enum case for FlagKeys.Solarium(_:), v0), v10 = sub_139A24(), (*(v2 + 8))(v6, v0), (v10 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v12 - (v15 + v15);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v18 = v17;
    swift_unknownObjectRelease();
    v16 = v18 - v9;
  }

  if (v16 <= 360.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 360.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 estimatedDimension:500.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  return v23;
}

id sub_1B428()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_19AEF8 = result;
  return result;
}

uint64_t sub_1B554()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_19AF00 = *&v6;
  return result;
}

void sub_1B658()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];

    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  qword_19AF08 = v7;
}

uint64_t sub_1B7C0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 0.0;
  }

  qword_19AF10 = *&v6;
  return result;
}

double sub_1B8C4()
{
  if (qword_199E20 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_19AF28 + 1) + 16.0 + 16.0;
  *&qword_19AF18 = result;
  return result;
}

id sub_1B928()
{
  result = [objc_opt_self() ams_mediaBorder];
  qword_19AF20 = result;
  return result;
}

unint64_t sub_1B964()
{
  result = qword_19E9B0;
  if (!qword_19E9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19E9B0);
  }

  return result;
}