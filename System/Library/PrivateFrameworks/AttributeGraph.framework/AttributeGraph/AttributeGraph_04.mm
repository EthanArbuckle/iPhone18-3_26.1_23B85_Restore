uint64_t ExternalTrace::named_event_enabled(ExternalTrace *this)
{
  v1 = *(this + 2);
  if (*v1 < 2uLL)
  {
    return 0;
  }

  v2 = v1[38];
  if (v2)
  {
    return v2(*(this + 3));
  }

  else
  {
    return v1[37] != 0;
  }
}

uint64_t ExternalTrace::compare_failed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(result + 16);
  if (*v9 >= 4uLL)
  {
    v11[5] = v7;
    v11[6] = v8;
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a5;
    v11[3] = a6;
    v11[4] = a7;
    v10 = v9[41];
    if (v10)
    {
      return v10(*(result + 24), a2, v11);
    }
  }

  return result;
}

CFURLRef AGDebugServerCopyURL()
{
  result = AG::DebugServer::_shared_server;
  if (AG::DebugServer::_shared_server)
  {
    return AG::DebugServer::copy_url(AG::DebugServer::_shared_server);
  }

  return result;
}

void AGDebugServerRun(int a1)
{
  if (AG::DebugServer::_shared_server)
  {
    AG::DebugServer::run(AG::DebugServer::_shared_server, a1);
  }
}

unint64_t AGWeakAttribute.init(_:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  return AGCreateWeakAttribute(a1);
}

unint64_t AGWeakAttribute.attribute.getter(unint64_t a1)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Attribute;
  }

  return v2 | ((Attribute == 2) << 32);
}

unint64_t AGWeakAttribute.attribute.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  result = AGCreateWeakAttribute(a1);
  *v1 = result;
  return result;
}

uint64_t (*AGWeakAttribute.attribute.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493ECE0;
}

uint64_t AGWeakAttribute.description.getter(unint64_t a1)
{
  if (AGWeakAttributeGetAttribute(a1) == 2)
  {
    return 7104878;
  }

  else
  {
    return AGAttribute.description.getter();
  }
}

uint64_t AGWeakAttribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493D218()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493D274()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

unint64_t WeakAttribute.init(_:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  return AGCreateWeakAttribute(a1);
}

uint64_t (*WeakAttribute.attribute.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493ECE0;
}

uint64_t WeakAttribute.changedValue(options:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, AG::swift::metadata *a3@<X2>, uint64_t a4@<X8>)
{
  WeakValue = AGGraphGetWeakValue(a2, a1, a3);
  if (WeakValue)
  {
    v8 = WeakValue;
    v9 = v7;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v11 = *(TupleTypeMetadata2 + 48);
    (*(*(a3 - 1) + 16))(a4, v8, a3);
    *(a4 + v11) = v9 & 1;
    v12 = *(*(TupleTypeMetadata2 - 8) + 56);
    v13 = a4;
    v14 = 0;
    v15 = TupleTypeMetadata2;
  }

  else
  {
    v16 = swift_getTupleTypeMetadata2();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1B493D4DC@<X0>(unint64_t a1@<X0>, AG::swift::metadata *a2@<X1>, uint64_t a3@<X8>)
{
  WeakValue = AGGraphGetWeakValue(a1, 0, a2);
  if (WeakValue)
  {
    v10 = *(a2 - 1);
    (*(v10 + 16))(a3, WeakValue, a2);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v6 = *(a2 - 1);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a3, v7, 1, a2);
}

unint64_t sub_1B493D5DC(unint64_t a1)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Attribute;
  }

  return v2 | ((Attribute == 2) << 32);
}

unint64_t sub_1B493D620(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 4))
  {
    v3 = &AGAttributeNil;
  }

  else
  {
    v3 = a1;
  }

  result = AGCreateWeakAttribute(*v3);
  *a2 = result;
  return result;
}

unint64_t sub_1B493D664(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = 2;
  }

  result = AGCreateWeakAttribute(a1);
  *v1 = result;
  return result;
}

uint64_t (*WeakAttribute.projectedValue.modify(uint64_t a1))()
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute(*v1);
  *(a1 + 16) = 2;
  if (Attribute == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = Attribute;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = Attribute == 2;
  return sub_1B493D700;
}

unint64_t sub_1B493D704(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *a1;
  if (*(a1 + 12))
  {
    v1 = (a1 + 16);
  }

  result = AGCreateWeakAttribute(*v1);
  *v2 = result;
  return result;
}

unint64_t WeakAttribute.subscript.getter(void *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  Attribute = AGWeakAttributeGetAttribute(a2);
  if (Attribute == 2)
  {
    OffsetAttribute2 = 0;
  }

  else
  {
    v6 = sub_1B4949BF8();
    if (v7)
    {
      v18 = Attribute;
      v19 = a1;
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v3 + *MEMORY[0x1E69E77B0]);
      v14[2] = v8[1];
      v9 = *v8;
      v15 = type metadata accessor for Focus();
      WitnessTable = swift_getWitnessTable();
      v10 = type metadata accessor for Attribute();

      sub_1B493DA34(&v18, sub_1B493E28C, v14, v15, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

      OffsetAttribute2 = v17;
    }

    else
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2(Attribute, v6, *(*(*(v3 + *MEMORY[0x1E69E77B0] + 8) - 8) + 64));
    }
  }

  LOBYTE(v18) = Attribute == 2;
  v12 = *MEMORY[0x1E69E9840];
  return OffsetAttribute2 | ((Attribute == 2) << 32);
}

uint64_t WeakAttribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493D9E0()
{
  sub_1B4949CC8();
  v1 = *v0;
  v2 = v0[1];
  sub_1B4949CE8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_1B493DB18(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1B8C7AA40](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1B493DB6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B4949D28();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1B493DBC4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B4949D38();
  *a1 = result;
  return result;
}

uint64_t sub_1B493DBF4(uint64_t a1, id *a2)
{
  result = sub_1B4949B58();
  *a2 = 0;
  return result;
}

uint64_t sub_1B493DC6C(uint64_t a1, id *a2)
{
  v3 = sub_1B4949B68();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B493DCEC@<X0>(uint64_t *a1@<X8>)
{
  sub_1B4949B78();
  v2 = sub_1B4949B48();

  *a1 = v2;
  return result;
}

uint64_t sub_1B493DD30()
{
  v1 = *v0;
  v2 = sub_1B4949B78();
  v3 = MEMORY[0x1B8C7A8E0](v2);

  return v3;
}

uint64_t sub_1B493DD6C()
{
  v1 = *v0;
  sub_1B4949B78();
  sub_1B4949B98();
}

uint64_t sub_1B493DDC0()
{
  v1 = *v0;
  sub_1B4949B78();
  sub_1B4949CC8();
  sub_1B4949B98();
  v2 = sub_1B4949CF8();

  return v2;
}

uint64_t sub_1B493DE48()
{
  v2 = *v0;
  sub_1B4915E8C(&qword_1EB8A45E8, type metadata accessor for AnyAttribute);
  sub_1B4915E8C(&qword_1EB8A45F0, type metadata accessor for AnyAttribute);
  return sub_1B4949C48();
}

BOOL sub_1B493DF20(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1B493DF50@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1B493DF7C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1B493E018()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B4949AF8();
}

uint64_t sub_1B493E064()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B4949AE8();
}

uint64_t sub_1B493E0BC()
{
  sub_1B4949CC8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B4949AE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B493E124(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B4949B78();
  v6 = v5;
  if (v4 == sub_1B4949B78() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4949C78();
  }

  return v9 & 1;
}

uint64_t sub_1B493E1C4()
{
  v2 = *v0;
  sub_1B4915E8C(&qword_1EB8A45C8, type metadata accessor for Metadata);
  sub_1B4915E8C(&qword_1EB8A45D0, type metadata accessor for Metadata);
  sub_1B493E8D0();
  return sub_1B4949C48();
}

uint64_t sub_1B493E28C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1B493EEAC(a1, v2[4], a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s13LocalChildrenVwet(uint64_t a1, int a2)
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

uint64_t _s13LocalChildrenVwst(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B493E3BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B493E3DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1B493E41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B493E460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B493E4D8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1B493E97C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B493E518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4949B48();

  *a2 = v5;
  return result;
}

uint64_t sub_1B493E560@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B4949B78();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B493E58C()
{
  sub_1B4915E8C(&qword_1EB8A45F8, type metadata accessor for AGDescriptionOption);
  sub_1B4915E8C(&qword_1EB8A4600, type metadata accessor for AGDescriptionOption);

  return sub_1B4949C48();
}

unint64_t sub_1B493E8D0()
{
  result = qword_1EB8A45D8;
  if (!qword_1EB8A45D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A45E0, &unk_1B494B500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A45D8);
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

uint64_t sub_1B493E97C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B493E9B8(unsigned int *a1, int a2)
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

_WORD *sub_1B493EA08(_WORD *result, int a2, int a3)
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

uint64_t sub_1B493EAC8(uint64_t a1, int a2)
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

uint64_t sub_1B493EB10(uint64_t result, int a2, int a3)
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

uint64_t sub_1B493EB70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B493EBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B493EC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B493EC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B493ECF8@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t static Rule.initialValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v6 = type metadata accessor for Attribute();
  sub_1B493DA34(a1, sub_1B493EF40, v9, a3, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

{
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v6 = type metadata accessor for Attribute();
  sub_1B493DA34(a1, sub_1B4940438, v9, a3, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

uint64_t sub_1B493EEAC@<X0>(void *a1@<X0>, uint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  sub_1B490E4D0();
  v6 = *(a2 + 8);
  result = Attribute.init<A>(body:value:flags:update:)(a1, 0);
  *a3 = result;
  return result;
}

uint64_t sub_1B493EF40@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  sub_1B490E4D0();
  v5 = *(v9 + 8);
  result = Attribute.init<A>(body:value:flags:update:)(a1, 0);
  *a2 = result;
  return result;
}

uint64_t static Rule._update(_:attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19[-v14];
  (*(v7 + 16))(v10, a1, a3);
  (*(a4 + 32))(a3, a4);
  (*(v7 + 8))(v10, a3);
  v21 = a3;
  v22 = a4;
  sub_1B493F82C(v15, sub_1B4940268, v20, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  result = (*(v12 + 8))(v15, AssociatedTypeWitness);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Attribute.init<A>(_:initialValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v9 = type metadata accessor for Attribute();
  sub_1B493DA34(a1, sub_1B493F908, v13, a4, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  (*(*(a4 - 8) + 8))(a1, a4);
  v11 = v14;
  (*(*(a3 - 8) + 8))(a2, a3);
  return v11;
}

{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v9 = type metadata accessor for Attribute();
  sub_1B493DA34(a1, sub_1B4940694, v13, a4, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  (*(*(a4 - 8) + 8))(a1, a4);
  v11 = v14;
  (*(*(a3 - 8) + 8))(a2, a3);
  return v11;
}

uint64_t sub_1B493F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v7 = type metadata accessor for Attribute();
  return sub_1B493DA34(a2, sub_1B4940090, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1B493F380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v20 = &v24[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v15);
  (*(a6 + 32))(a5, a6);
  (*(v11 + 8))(v15, a5);
  v26 = a5;
  v27 = a6;
  sub_1B493F82C(v20, a7, v25, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
  result = (*(v17 + 8))(v20, a4);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s14AttributeGraph12StatefulRulePAAE7contextAA0D7ContextVy5ValueQzGvg_0()
{
  result = AGGraphGetCurrentAttribute();
  if (result == 2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Rule._updateDefault(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B4949BD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v20 - v14;
  (*(a3 + 24))(a2, a3);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v11, v6);
  }

  else
  {
    v17 = (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v17);
    v20[-2] = a2;
    v20[-1] = a3;
    sub_1B493F82C(v15, sub_1B493FF78, &v20[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
    result = (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B493F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t Rule<>.cachedValue(options:owner:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = a1;
  v12 = a2;
  v13 = BYTE4(a2) & 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B493DA34(v5, sub_1B493FF90, v10, a3, MEMORY[0x1E69E73E0], AssociatedTypeWitness, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1B493F9D4@<X0>(const void *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_1B4949B18();
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v15 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)(a2, a3 | ((HIDWORD(a3) & 1) << 32), v14, a1, sub_1B4940028, v18, a4, a5, a6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a7, v15, AssociatedTypeWitness);
}

uint64_t sub_1B493FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v20[-v15];
  (*(v8 + 16))(v11, a1, a4);
  (*(a5 + 32))(a4, a5);
  (*(v8 + 8))(v11, a4);
  v22 = a4;
  v23 = a5;
  sub_1B493F82C(v16, sub_1B4940268, v21, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  result = (*(v13 + 8))(v16, AssociatedTypeWitness);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Rule<>.cachedValueIfExists(options:owner:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = a1;
  v12 = a2;
  v13 = BYTE4(a2) & 1;
  swift_getAssociatedTypeWitness();
  v7 = sub_1B4949BD8();
  return sub_1B493DA34(v5, sub_1B493FFD4, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

uint64_t sub_1B493FDC4@<X0>(const void *a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1B4949B18();
  if ((a3 & 0x100000000) != 0)
  {
    LODWORD(a3) = 2;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  CachedAttributeIfExists = AGGraphReadCachedAttributeIfExists(v10, a4, a1, AssociatedTypeWitness, a2, a3, 0, v12);
  v14 = *(AssociatedTypeWitness - 1);
  if (CachedAttributeIfExists)
  {
    (*(v14 + 16))(a5, CachedAttributeIfExists, AssociatedTypeWitness);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v14 + 56))(a5, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_1B493FFD4@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_1B493FDC4(a1, *(v2 + 48), *(v2 + 52) | (*(v2 + 56) << 32), *(v2 + 16), a2);
}

uint64_t (*sub_1B4940028())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return sub_1B4940084;
}

uint64_t sub_1B4940090@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  sub_1B490E4D0();
  v9 = *(v8 + 8);
  result = Attribute.init<A>(body:value:flags:update:)(v7, a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_1B4940128())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1B4940184;
}

uint64_t (*sub_1B49401B8())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1B4940184;
}

uint64_t sub_1B4940214(unsigned __int8 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AGGraphSetOutputValue(a1, AssociatedTypeWitness);
}

uint64_t sub_1B4940284@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t static StatefulRule.initialValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1B4940438@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  sub_1B490E4D0();
  v5 = *(v9 + 8);
  result = Attribute.init<A>(body:value:flags:update:)(a1, 0);
  *a2 = result;
  return result;
}

uint64_t sub_1B4940604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v7 = type metadata accessor for Attribute();
  return sub_1B493DA34(a2, sub_1B494117C, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
}

uint64_t StatefulRule.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AGGraphGetOutputValue(AssociatedTypeWitness, v3);
  if (result)
  {
    v5 = *(*(AssociatedTypeWitness - 1) + 16);

    return v5(a1, result, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4940778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, v10, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AGGraphGetOutputValue(AssociatedTypeWitness, v12);
  if (result)
  {
    (*(*(AssociatedTypeWitness - 1) + 16))(a4, result, AssociatedTypeWitness);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StatefulRule.value.unsafeAddressor()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AGGraphGetOutputValue(AssociatedTypeWitness, v1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49408F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15[-v10];
  (*(v8 + 16))(&v15[-v10], a1, AssociatedTypeWitness);
  v17 = v5;
  v18 = v6;
  sub_1B493DA34(v11, sub_1B494130C, v16, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v12);
  result = (*(v8 + 8))(v11, AssociatedTypeWitness);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t StatefulRule.value.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[2] = a2;
  v7[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B493DA34(a1, sub_1B494130C, v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v5);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

void (*StatefulRule.value.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[2] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 1);
  v11 = v10;
  v8[3] = v10;
  v12 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v15 = v13;
  v8[5] = v13;
  OutputValue = AGGraphGetOutputValue(AssociatedTypeWitness, v14);
  if (!OutputValue)
  {
    __break(1u);
  }

  v17 = *(v11 + 16);
  v8[6] = v17;
  v8[7] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, OutputValue, AssociatedTypeWitness);
  v18 = *MEMORY[0x1E69E9840];
  return sub_1B4940CCC;
}

void sub_1B4940CCC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v6 = v2[4];
    v5 = v2[5];
    v7 = v2[2];
    v8 = v2[3];
    v19 = *v2;
    v9 = v4(v6, v5, v7);
    MEMORY[0x1EEE9AC00](v9);
    v18 = v19;
    sub_1B493DA34(v6, sub_1B494130C, v17, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v10);
    v11 = *(v8 + 8);
    v11(v6, v7);
    v11(v5, v7);
  }

  else
  {
    v6 = v2[4];
    v5 = v2[5];
    v12 = v2[2];
    v13 = v2[3];
    v14 = *v2;
    *&v15 = MEMORY[0x1EEE9AC00](a1);
    v18 = v15;
    sub_1B493DA34(v5, sub_1B494130C, v17, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
    (*(v13 + 8))(v5, v12);
  }

  free(v5);
  free(v6);
  free(v2);
}

uint64_t static StatefulRule._updateDefault(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B4949BD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  (*(a3 + 24))(a2, a3, v14);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
    v18 = (*(v11 + 32))(v16, v10, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v18);
    v21[-2] = a2;
    v21[-1] = a3;
    sub_1B493F82C(v16, sub_1B4941100, &v21[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v19);
    result = (*(v11 + 8))(v16, AssociatedTypeWitness);
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B494112C(unsigned __int8 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AGGraphSetOutputValue(a1, AssociatedTypeWitness);
}

uint64_t sub_1B494117C@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  sub_1B490E4D0();
  v9 = *(v8 + 8);
  result = Attribute.init<A>(body:value:flags:update:)(v7, a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_1B4941214())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1B4941270;
}

uint64_t (*sub_1B49412AC())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1B4941308;
}

uint64_t AGAttribute.description.getter()
{
  v0 = sub_1B4949C58();
  MEMORY[0x1B8C7A8D0](v0);

  return 35;
}

unint64_t Attribute.subscript.getter(void *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = sub_1B4949BF8();
  if (v6)
  {
    v19 = a2;
    v20 = a1;
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v4 + *MEMORY[0x1E69E77B0]);
    v15[2] = v7[1];
    v8 = *v7;
    v16 = type metadata accessor for Focus();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    sub_1B493DA34(&v19, sub_1B493E28C, v15, v16, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    result = v18;
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 64);
    v14 = *MEMORY[0x1E69E9840];

    return AGGraphCreateOffsetAttribute2(a2, v5, v13);
  }

  return result;
}

{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = sub_1B4949BF8();
  if (v6)
  {
    v19 = a2;
    v20 = sub_1B4942A40;
    v21 = a1;
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v4 + *MEMORY[0x1E69E77B0]);
    v15[2] = v7[1];
    v8 = *v7;
    v16 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    sub_1B493DA34(&v19, sub_1B4942BC8, v15, v16, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    result = v18;
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 64);
    v14 = *MEMORY[0x1E69E9840];

    return AGGraphCreateOffsetAttribute2(a2, v5, v13);
  }

  return result;
}

unint64_t static AGAttribute.current.getter()
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = CurrentAttribute;
  }

  return v1 | ((CurrentAttribute == 2) << 32);
}

void AGAttribute.setFlags(_:mask:)(int a1, const char *a2, char *a3)
{
  v4 = (AGGraphGetFlags(a3, a2) & ~a2 | a2 & a1);

  AGGraphSetFlags(a3, v4);
}

void AGAttribute.mutateBody<A>(as:invalidating:_:)(int a1, char a2, uint64_t a3, uint64_t a4, char *a5, const char *a6)
{
  v6[2] = a6;
  v6[3] = a3;
  v6[4] = a4;
  AGGraphMutateAttribute(a5, a6, a2, sub_1B49429DC, v6);
}

unint64_t AGAttribute.indirectDependency.getter(uint64_t a1, const char *a2)
{
  IndirectDependency = AGGraphGetIndirectDependency(a1, a2);
  if (IndirectDependency == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = IndirectDependency;
  }

  return v3 | ((IndirectDependency == 2) << 32);
}

void AGAttribute.indirectDependency.setter(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1;
  }

  AGGraphSetIndirectDependency(a2, v3);
}

void (*AGAttribute.indirectDependency.modify(uint64_t a1, const char *a2))(unsigned int *a1)
{
  *(a1 + 8) = a2;
  IndirectDependency = AGGraphGetIndirectDependency(a2, a2);
  *(a1 + 12) = 2;
  if (IndirectDependency == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = IndirectDependency;
  }

  *a1 = v4;
  *(a1 + 4) = IndirectDependency == 2;
  return sub_1B49417E4;
}

void sub_1B49417E4(unsigned int *a1)
{
  v1 = a1 + 3;
  v2 = a1[2];
  if (!*(a1 + 4))
  {
    v1 = a1;
  }

  AGGraphSetIndirectDependency(a1[2], *v1);
}

id Attribute.graph.getter(uint64_t a1, char *a2)
{
  AttributeGraph = AGGraphGetAttributeGraph(a1, a2);

  return AttributeGraph;
}

void (*Attribute.flags.modify(_DWORD *a1, const char *a2))(unsigned int *a1)
{
  a1[1] = a2;
  *a1 = AGGraphGetFlags(a2, a2);
  return sub_1B4941964;
}

void Attribute.setFlags(_:mask:)(int a1, const char *a2, char *a3)
{
  v4 = (AGGraphGetFlags(a3, a2) & ~a2 | a2 & a1);

  AGGraphSetFlags(a3, v4);
}

uint64_t Attribute.setValue(_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v10 = a2;
  sub_1B493DA34(a1, sub_1B4942BE4, v9, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  return v11;
}

void (*Attribute.value.modify(uint64_t *a1, unint64_t a2, AG::swift::metadata *a3))(void **a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 48) = a2;
  v9 = *(a3 - 1);
  v10 = v9;
  *(v7 + 8) = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    *(v7 + 16) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 16) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v15 = v12;
  v8[3] = v12;
  Value = AGGraphGetValue(a2, 0, a3, v13, v14);
  v17 = *(v10 + 16);
  v8[4] = v17;
  v8[5] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, Value, a3);
  v18 = *MEMORY[0x1E69E9840];
  return sub_1B4941BD0;
}

uint64_t Attribute.valueAndFlags(options:)(uint64_t a1, const char *a2, unint64_t a3, AG::swift::metadata *a4, uint64_t a5)
{
  Value = AGGraphGetValue(a3, a2, a4, a4, a5);
  v9 = v8;
  (*(*(a4 - 1) + 16))(a1, Value, a4);
  return v9;
}

uint64_t Attribute.changedValue(options:)(uint64_t a1, const char *a2, unint64_t a3, AG::swift::metadata *a4, uint64_t a5)
{
  Value = AGGraphGetValue(a3, a2, a4, a4, a5);
  v9 = v8;
  (*(*(a4 - 1) + 16))(a1, Value, a4);
  return v9 & 1;
}

uint64_t _s14AttributeGraph08IndirectA0V12wrappedValuexvg_0@<X0>(unint64_t a1@<X0>, AG::swift::metadata *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  Value = AGGraphGetValue(a1, 0, a2, a3, a4);
  v8 = *(*(a2 - 1) + 16);

  return v8(a5, Value, a2);
}

uint64_t sub_1B4941D6C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + a4 - 8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-v10];
  (*(v8 + 16))(&v16[-v10]);
  v12 = *a2;
  v18 = v7;
  v19 = v12;
  sub_1B493DA34(v11, a5, v17, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v13);
  result = (*(v8 + 8))(v11, v7);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4941ED4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[2] = a3;
  v12 = a2;
  sub_1B493DA34(a1, a4, v11, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

void (*Attribute.wrappedValue.modify(uint64_t *a1, unint64_t a2, AG::swift::metadata *a3))(void **a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 48) = a2;
  v9 = *(a3 - 1);
  v10 = v9;
  *(v7 + 8) = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    *(v7 + 16) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 16) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v15 = v12;
  v8[3] = v12;
  Value = AGGraphGetValue(a2, 0, a3, v13, v14);
  v17 = *(v10 + 16);
  v8[4] = v17;
  v8[5] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, Value, a3);
  v18 = *MEMORY[0x1E69E9840];
  return sub_1B4941BD0;
}

void sub_1B49420EC(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2)
  {
    v6 = v4[5];
    v8 = v4[2];
    v7 = v4[3];
    v9 = *v4;
    v10 = v4[1];
    v11 = *(v4 + 12);
    v12 = (v4[4])(v8, v7, *v4);
    MEMORY[0x1EEE9AC00](v12);
    v22 = v9;
    v23 = v11;
    sub_1B493DA34(v8, a4, v21, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v13);
    v14 = *(v10 + 8);
    v14(v8, v9);
    v14(v7, v9);
  }

  else
  {
    v8 = v4[2];
    v7 = v4[3];
    v15 = *v4;
    v16 = v4[1];
    v17 = *(v4 + 12);
    MEMORY[0x1EEE9AC00](a1);
    v22 = v15;
    v23 = v18;
    sub_1B493DA34(v7, v19, v21, v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v20);
    (*(v16 + 8))(v7, v15);
  }

  free(v7);
  free(v8);
  free(v4);
}

uint64_t (*Attribute.projectedValue.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1B49422B4;
}

unint64_t Attribute.subscript.getter(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 - 8) + 64);
  if (v6)
  {
    v7 = a1(1);
  }

  else
  {
    v7 = 0;
  }

  return AGGraphCreateOffsetAttribute2(a3, v7, v6);
}

uint64_t sub_1B49425B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = AGGraphSetValue(a2, a1, a3);
  *a4 = result;
  return result;
}

id Attribute.subgraph.getter(int a1, const char *a2)
{
  AttributeSubgraph = AGGraphGetAttributeSubgraph(a1, a2);

  return AttributeSubgraph;
}

void Attribute.mutateBody<A>(as:invalidating:_:)(int a1, char a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, const char *a7)
{
  v7[2] = a7;
  v7[3] = a3;
  v7[4] = a4;
  AGGraphMutateAttribute(a5, a7, a2, sub_1B4942C04, v7);
}

uint64_t Attribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B4942780()
{
  sub_1B4949CC8();
  v1 = *v0;
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t Attribute.init(value:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a2;
  v4 = type metadata accessor for Attribute();
  sub_1B493DA34(a1, sub_1B4942A48, v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v8;
}

uint64_t sub_1B494287C(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[2] = a2;
  v6[3] = a1;
  v2 = type metadata accessor for Attribute();
  result = sub_1B493DA34(v2, sub_1B4942B60, v6, &type metadata for _External, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Attribute.init(type:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = type metadata accessor for Attribute();
  sub_1B493DA34(v2, sub_1B4942A68, v7, &type metadata for _External, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B49429DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1B4942A04@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AGGraphSetValue(*(v2 + 24), a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1B4942A68@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = Attribute.init<A>(body:value:flags:update:)(a1, 0);
  *a2 = result;
  return result;
}

uint64_t keypath_get_12Tm@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a2 + a3 - 8);
  Value = AGGraphGetValue(*a1, 0, v7, a4, a5);
  v9 = *(*(v7 - 1) + 16);

  return v9(a6, Value, v7);
}

uint64_t sub_1B4942B60@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = Attribute.init<A>(body:value:flags:update:)(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t static AGGraphRef.withoutUpdate<A>(_:)(void (*a1)(void))
{
  v2 = AGGraphClearUpdate();
  a1();

  return AGGraphSetUpdate(v2);
}

void AGGraphRef.withoutSubgraphInvalidation<A>(_:)(void (*a1)(void), const char *a2)
{
  v4 = AGGraphBeginDeferringSubgraphInvalidation(v2, a2);
  a1();

  AGGraphEndDeferringSubgraphInvalidation(v2, v4);
}

uint64_t *AGGraphRef.withDeadline<A>(_:_:)(const char *a1, const char *a2)
{
  Deadline = AGGraphGetDeadline(v2, a2);
  v6 = AGGraphSetDeadline(v2, a1);
  (a2)(v6);

  return AGGraphSetDeadline(v2, Deadline);
}

uint64_t AGGraphRef.addTraceEvent<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[4] = a1;
  return sub_1B493DA34(a2, sub_1B4942F68, v9, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t sub_1B4942F9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

Swift::Void __swiftcall AGGraphRef.print(includeValues:)(Swift::Bool includeValues)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4618, &qword_1B494B870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B494B850;
  v3 = AGGraphRef.graphvizDescription(includeValues:)(includeValues);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  sub_1B4949C98();
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

Swift::String __swiftcall AGGraphRef.graphvizDescription(includeValues:)(Swift::Bool includeValues)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4620, &qword_1B494B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B494B860;
  *(inited + 32) = @"format";
  v4 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x6F642F6870617267;
  *(inited + 48) = 0xE900000000000074;
  *(inited + 64) = v4;
  *(inited + 72) = @"include-values";
  *(inited + 104) = MEMORY[0x1E69E6370];
  *(inited + 80) = includeValues;
  v5 = @"format";
  v6 = @"include-values";
  sub_1B4943B08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4628, &qword_1B494B880);
  swift_arrayDestroy();
  type metadata accessor for AGDescriptionOption(0);
  sub_1B4943C10();
  v7 = sub_1B4949B08();

  v8 = AGGraphDescription(v1, v7);

  if (v8)
  {
    sub_1B4949BE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_1B4943C68(v16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v9 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = v12;
  v10 = v13;
LABEL_9:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t static AGGraphRef.printStack(maxFrames:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4618, &qword_1B494B870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B494B850;
  v3 = _sSo10AGGraphRefa14AttributeGraphE16stackDescription9maxFramesSSSi_tFZ_0(a1);
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1B4949C98();
}

Swift::Void __swiftcall AGGraphRef.archiveJSON(name:)(Swift::String_optional name)
{
  v2 = v1;
  object = name.value._object;
  countAndFlagsBits = name.value._countAndFlagsBits;
  v42 = *MEMORY[0x1E69E9840];
  v5 = sub_1B4949AA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4620, &qword_1B494B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B494B860;
  *(inited + 32) = @"format";
  v11 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x69642F6870617267;
  *(inited + 48) = 0xEA00000000007463;
  *(inited + 64) = v11;
  *(inited + 72) = @"include-values";
  *(inited + 104) = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  v12 = @"format";
  v13 = @"include-values";
  sub_1B4943B08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4628, &qword_1B494B880);
  swift_arrayDestroy();
  type metadata accessor for AGDescriptionOption(0);
  sub_1B4943C10();
  v14 = sub_1B4949B08();

  v15 = AGGraphDescription(v2, v14);

  if (v15)
  {
    sub_1B4949BE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v39 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    sub_1B4943C68(v41);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4638, &qword_1B494B890);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = 0x6870617267;
  if (object)
  {
    v16 = countAndFlagsBits;
    v17 = object;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  *&v41[0] = v16;
  *(&v41[0] + 1) = v17;

  MEMORY[0x1B8C7A8D0](0x6E6F736A2D67612ELL, 0xE800000000000000);

  v18 = NSTemporaryDirectory();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1B4949B48();

    v21 = [(NSString *)v19 stringByAppendingPathComponent:v20];

    v22 = sub_1B4949B78();
    v24 = v23;

    v25 = objc_opt_self();
    v26 = MEMORY[0x1E69E6158];
    v27 = sub_1B4949B08();

    *&v41[0] = 0;
    v28 = [v25 dataWithJSONObject:v27 options:0 error:v41];

    v29 = *&v41[0];
    if (v28)
    {
      v30 = sub_1B4949AB8();
      v32 = v31;

      sub_1B4949A98();
      sub_1B4949AC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4618, &qword_1B494B870);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1B494B850;
      *&v41[0] = 0;
      *(&v41[0] + 1) = 0xE000000000000000;
      sub_1B4949C18();

      *&v41[0] = 0xD000000000000015;
      *(&v41[0] + 1) = 0x80000001B494E980;
      MEMORY[0x1B8C7A8D0](v22, v24);

      MEMORY[0x1B8C7A8D0](11810, 0xE200000000000000);
      v36 = v41[0];
      *(v35 + 56) = v26;
      *(v35 + 32) = v36;
      sub_1B4949C98();
      sub_1B4943E84(v30, v32);

      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v33 = v29;

      v34 = sub_1B4949A88();

      swift_willThrow();
      MEMORY[0x1B8C7B560](v34);
    }

    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_1B4943970(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4949B78();
  sub_1B4949CC8();
  sub_1B4949B98();
  v4 = sub_1B4949CF8();

  return sub_1B4943A04(a1, v4);
}

unint64_t sub_1B4943A04(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4949B78();
      v9 = v8;
      if (v7 == sub_1B4949B78() && v9 == v10)
      {
        break;
      }

      v12 = sub_1B4949C78();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B4943B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4640, &qword_1B494B940);
    v3 = sub_1B4949C38();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4943F84(v4, &v11);
      v5 = v11;
      result = sub_1B4943970(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B4943FF4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4943C10()
{
  result = qword_1EB8A45F8;
  if (!qword_1EB8A45F8)
  {
    type metadata accessor for AGDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A45F8);
  }

  return result;
}

uint64_t sub_1B4943C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4630, &qword_1B494B888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo10AGGraphRefa14AttributeGraphE16stackDescription9maxFramesSSSi_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4620, &qword_1B494B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B494B860;
  *(inited + 32) = @"format";
  v3 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x65742F6B63617473;
  *(inited + 48) = 0xEA00000000007478;
  *(inited + 64) = v3;
  *(inited + 72) = @"max-frames";
  *(inited + 104) = MEMORY[0x1E69E6530];
  *(inited + 80) = a1;
  v4 = @"format";
  v5 = @"max-frames";
  sub_1B4943B08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4628, &qword_1B494B880);
  swift_arrayDestroy();
  type metadata accessor for AGDescriptionOption(0);
  sub_1B4943C10();
  v6 = sub_1B4949B08();

  v7 = AGGraphDescription(0, v6);

  if (v7)
  {
    sub_1B4949BE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_1B4943C68(v12);
  }

  return 0;
}

uint64_t sub_1B4943E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t _s14AttributeGraph8ExternalV11descriptionSSvg_0(AG::swift::metadata *a1)
{
  v1 = AGTypeDescription(a1);
  v2 = sub_1B4949B78();

  return v2;
}

uint64_t sub_1B4943F1C(uint64_t a1, AG::swift::metadata *a2, uint64_t a3)
{
  v3 = AGTypeDescription(a2);
  v4 = sub_1B4949B78();
  v6 = v5;

  MEMORY[0x1B8C7A8D0](v4, v6);

  return a3;
}

uint64_t sub_1B4943F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4628, &qword_1B494B880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B4943FF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1B4944010(uint64_t *a1, uint64_t a2)
{
  v2 = sub_1B4944220(*a1, a2, *a1);
  if (v3)
  {
    v6[0] = v2;
    v6[1] = v3;
    v4 = sub_1B4949C68();
    sub_1B4944378(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1B4944080(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4944170(*(a1 + 8), a2, *(a1 + 8));
  if (v3)
  {
    v6[0] = v2;
    v6[1] = v3;
    v4 = sub_1B4949C68();
    sub_1B4944378(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__n128 sub_1B494412C(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

uint64_t sub_1B4944170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1B4949B88();
}

uint64_t sub_1B4944220(uint64_t a1, uint64_t a2, AG::swift::metadata *a3)
{
  v4 = *(*(a3 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4648, &qword_1B494B948);
  if (swift_dynamicCast())
  {
    sub_1B4944434(v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v7 = sub_1B4949C58();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1B49443CC(v10);
    v8 = AGTypeDescription(a3);
    v7 = sub_1B4949B78();
  }

  return v7;
}

uint64_t sub_1B49443CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4650, &qword_1B494B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4944434(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t AGTupleType.init(_:)(uint64_t a1)
{
  v1 = AGNewTupleType(*(a1 + 16), a1 + 32);

  return v1;
}

uint64_t AGTupleType.indices.getter(void *a1)
{
  result = AGTupleCount(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t AGUnsafeTuple.address<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t AGUnsafeTuple.subscript.unsafeAddressor(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 == result)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t AGUnsafeMutableTuple.init(with:)(uint64_t a1)
{
  AGTupleSize(a1);
  swift_slowAlloc();
  return a1;
}

uint64_t AGUnsafeMutableTuple.initialize<A>(at:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a5;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  return sub_1B493DA34(a2, sub_1B4944738, v9, a5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

Swift::Void __swiftcall AGUnsafeMutableTuple.deallocate(initialized:)(Swift::Bool initialized)
{
  if (initialized)
  {
    AGTupleDestroy(v1, v2);
  }

  JUMPOUT(0x1B8C7B6B0);
}

uint64_t _sSo13AGUnsafeTuplea14AttributeGraphE7indicesSnySiGvg_0(void *a1)
{
  result = AGTupleCount(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t _sSo13AGUnsafeTuplea14AttributeGraphExycluig_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2 == result)
  {
    return (*(*(a2 - 8) + 16))(a3);
  }

  __break(1u);
  return result;
}

uint64_t AGUnsafeMutableTuple.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return (*(*(a4 - 8) + 40))(a3, result, a4);
  }

  __break(1u);
  return result;
}

uint64_t (*AGUnsafeMutableTuple.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (a4 == a2)
  {
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t _sSo13AGUnsafeTuplea14AttributeGraphEyxSicluig_0@<X0>(const char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = AGTupleElementOffsetChecked(a2, a1, a4);
  v9 = *(*(a4 - 1) + 16);

  return v9(a5, a3 + v8, a4);
}

uint64_t AGUnsafeMutableTuple.subscript.setter(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = AGTupleElementOffsetChecked(a3, a2, a5);
  v9 = *(*(a5 - 1) + 40);
  v10 = a4 + v8;

  return v9(v10, a1, a5);
}

uint64_t AGTypeID.description.getter(AG::swift::metadata *a1)
{
  v1 = AGTypeDescription(a1);
  v2 = sub_1B4949B78();

  return v2;
}

uint64_t sub_1B4944A84()
{
  v1 = *v0;
  type metadata accessor for _Metadata(0);

  return MEMORY[0x1EEE68D10](v1, v2);
}

uint64_t sub_1B4944AF8()
{
  v1 = AGTypeDescription(*v0);
  v2 = sub_1B4949B78();

  return v2;
}

BOOL static AGTypeSignature.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v10 = *MEMORY[0x1E69E9840];
  result = a1 == a4 && a2 == a5 && a3 == a6;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B4944BA4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  result = *a1 == *a2 && *(a1 + 8) >> 64 == *(a2 + 8) >> 64 && *(a1 + 16) == *(a2 + 16);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4944C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a2;
  v10 = a3;
  sub_1B493DA34(a1, a5, v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  return v11;
}

uint64_t sub_1B4944CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return sub_1B493DA34(v9, sub_1B4944E4C, &v12, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

void AGSetTypeForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4658, &qword_1B494B960);
  [v3 setObject:sub_1B4949C88() forKeyedSubscript:v4];
  swift_unknownObjectRelease();
}

unint64_t sub_1B4944DF4()
{
  result = qword_1ED56C9E8;
  if (!qword_1ED56C9E8)
  {
    type metadata accessor for Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56C9E8);
  }

  return result;
}

uint64_t sub_1B4944E4C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AGCompareValues(*(v2 + 24), a1, *(v2 + 16), (*(v2 + 32) | 0x100u));
  *a2 = result;
  return result;
}

void (*IndirectAttribute.source.modify(_DWORD *a1, uint64_t a2))(unsigned int *a1)
{
  a1[1] = a2;
  *a1 = AGGraphGetIndirectAttribute(a2);
  return sub_1B4944F24;
}

unint64_t IndirectAttribute.dependency.getter(uint64_t a1, const char *a2)
{
  IndirectDependency = AGGraphGetIndirectDependency(a1, a2);
  if (IndirectDependency == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = IndirectDependency;
  }

  return v3 | ((IndirectDependency == 2) << 32);
}

void IndirectAttribute.dependency.setter(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1;
  }

  AGGraphSetIndirectDependency(a2, v3);
}

void (*IndirectAttribute.dependency.modify(uint64_t a1, const char *a2))(unsigned int *a1)
{
  *(a1 + 8) = a2;
  IndirectDependency = AGGraphGetIndirectDependency(a2, a2);
  *(a1 + 12) = 2;
  if (IndirectDependency == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = IndirectDependency;
  }

  *a1 = v4;
  *(a1 + 4) = IndirectDependency == 2;
  return sub_1B49417E4;
}

uint64_t IndirectAttribute.value.setter(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return sub_1B49454C8(a1, a2, a3, sub_1B4945C24);
}

void (*IndirectAttribute.value.modify(uint64_t *a1, unint64_t a2, AG::swift::metadata *a3))(uint64_t **a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 56) = a2;
  v9 = *(a3 - 1);
  v10 = v9;
  *(v7 + 8) = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    *(v7 + 16) = swift_coroFrameAlloc();
    v8[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 16) = malloc(*(v9 + 64));
    v8[3] = malloc(v11);
    v12 = malloc(v11);
  }

  v15 = v12;
  v8[4] = v12;
  Value = AGGraphGetValue(a2, 0, a3, v13, v14);
  v17 = *(v10 + 16);
  v8[5] = v17;
  v8[6] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, Value, a3);
  v18 = *MEMORY[0x1E69E9840];
  return sub_1B494520C;
}

uint64_t IndirectAttribute.changedValue(options:)(uint64_t a1, const char *a2, unint64_t a3, AG::swift::metadata *a4, uint64_t a5)
{
  Value = AGGraphGetValue(a3, a2, a4, a4, a5);
  v9 = v8;
  (*(*(a4 - 1) + 16))(a1, Value, a4);
  return v9 & 1;
}

uint64_t sub_1B49452B4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + a4 - 8);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-v13];
  v15 = v8[2];
  v15(&v20[-v13]);
  LODWORD(a2) = *a2;
  (v15)(v12, v14, v7);
  v22 = v7;
  v23 = a2;
  sub_1B493DA34(v12, a5, v21, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v16);
  v17 = v8[1];
  v17(v12, v7);
  result = (v17)(v14, v7);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IndirectAttribute.wrappedValue.setter(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return sub_1B49454C8(a1, a2, a3, sub_1B4945C64);
}

uint64_t sub_1B49454C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v12, a1, v10);
  v19 = a3;
  v20 = a2;
  sub_1B493DA34(v12, a4, v18, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v13);
  v14 = *(v8 + 8);
  v14(a1, a3);
  result = (v14)(v12, a3);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void (*IndirectAttribute.wrappedValue.modify(uint64_t *a1, unint64_t a2, AG::swift::metadata *a3))(uint64_t **a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 56) = a2;
  v9 = *(a3 - 1);
  v10 = v9;
  *(v7 + 8) = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    *(v7 + 16) = swift_coroFrameAlloc();
    v8[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 16) = malloc(*(v9 + 64));
    v8[3] = malloc(v11);
    v12 = malloc(v11);
  }

  v15 = v12;
  v8[4] = v12;
  Value = AGGraphGetValue(a2, 0, a3, v13, v14);
  v17 = *(v10 + 16);
  v8[5] = v17;
  v8[6] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v15, Value, a3);
  v18 = *MEMORY[0x1E69E9840];
  return sub_1B494520C;
}

void sub_1B49457C0(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = (*a1)[6];
  v9 = ((*a1)[5])((*a1)[3], v7[4], *v7);
  if (a2)
  {
    v10 = v7[6];
    v12 = v7[3];
    v11 = v7[4];
    v14 = v7[1];
    v13 = v7[2];
    v15 = *v7;
    v16 = *(v7 + 14);
    v17 = (v7[5])(v13, v12, *v7);
    MEMORY[0x1EEE9AC00](v17);
    v27 = v15;
    v28 = v16;
    sub_1B493DA34(v13, a4, v26, v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v18);
    v19 = *(v14 + 8);
    v19(v13, v15);
    v19(v12, v15);
    v19(v11, v15);
  }

  else
  {
    v12 = v7[3];
    v11 = v7[4];
    v20 = v7[1];
    v13 = v7[2];
    v21 = *v7;
    v22 = *(v7 + 14);
    MEMORY[0x1EEE9AC00](v9);
    v27 = v21;
    v28 = v23;
    sub_1B493DA34(v12, a3, v26, v21, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v24);
    v25 = *(v20 + 8);
    v25(v12, v21);
    v25(v11, v21);
  }

  free(v11);
  free(v12);
  free(v13);
  free(v7);
}

unint64_t IndirectAttribute.subscript.getter(void *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = sub_1B4949BF8();
  if (v6)
  {
    v19 = a2;
    v20 = a1;
    MEMORY[0x1EEE9AC00](v5);
    v7 = (v4 + *MEMORY[0x1E69E77B0]);
    v15[2] = v7[1];
    v8 = *v7;
    v16 = type metadata accessor for Focus();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    sub_1B493DA34(&v19, sub_1B493E28C, v15, v16, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    result = v18;
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) - 8) + 64);
    v14 = *MEMORY[0x1E69E9840];

    return AGGraphCreateOffsetAttribute2(a2, v5, v13);
  }

  return result;
}

uint64_t IndirectAttribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t AGSubgraphRef.apply<A>(_:)(void (*a1)(void))
{
  v3 = AGGraphClearUpdate();
  v4 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent(v1);
  a1();
  AGSubgraphSetCurrent(v4);

  return AGGraphSetUpdate(v3);
}

uint64_t static AGSubgraphRef.beginTreeElement<A>(value:flags:)(uint64_t a1, int a2, uint64_t a3)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {

    return AGSubgraphBeginTreeElement(a1, a3, a2);
  }

  return result;
}

uint64_t static AGSubgraphRef.addTreeValue<A>(_:forKey:flags:)(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {

    return AGSubgraphAddTreeValue(a1, a4, a2, a3);
  }

  return result;
}

uint64_t static AGSubgraphRef.endTreeElement<A>(value:)()
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {

    return AGSubgraphEndTreeElement();
  }

  return result;
}

unint64_t AGTreeElement.value.getter(unsigned int a1)
{
  Value = AGTreeElementGetValue(a1);
  if (Value == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = Value;
  }

  return v2 | ((Value == 2) << 32);
}

uint64_t AGTreeElement.LocalChildren.base.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 sub_1B4945EB8@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1B4945EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v8 = 0;
      v9 = a3;
      v10 = a3 - 1;
      while (1)
      {
        NextChild2 = AGTreeElementGetNextChild2(&v14, 0);
        if (!NextChild2)
        {
          a4 = v14;
          a5 = v15;
          a3 = v8;
          a6 = v16;
          goto LABEL_13;
        }

        *(a2 + 8 * v8) = NextChild2;
        if (v10 == v8)
        {
          break;
        }

        if (__OFADD__(++v8, 1))
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      a4 = v14;
      a5 = v15;
      a6 = v16;
      a3 = v9;
    }
  }

  else
  {
LABEL_10:
    a3 = 0;
  }

LABEL_13:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

void *sub_1B4945FD8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  v11 = a4;
  v12 = a5;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      NextNode = AGTreeElementGetNextNode(&v11);
      if (NextNode == 2)
      {
        a4 = v11;
        a5 = v12;
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 4 * v7) = NextNode;
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v11;
    a5 = v12;
    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1B4946094(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = a4;
    v6[1] = a5;
    v6[2] = a6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    while (1)
    {
      NextChild = AGTreeElementGetNextChild(&v12);
      if (!NextChild)
      {
        a4 = v12;
        a5 = v13;
        a3 = v8;
        a6 = v14;
        goto LABEL_13;
      }

      *(a2 + 8 * v8) = NextChild;
      if (v10 == v8)
      {
        break;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v12;
    a5 = v13;
    a6 = v14;
    a3 = v9;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1B4946150(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  v11 = a4;
  v12 = a5;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      NextValue = AGTreeElementGetNextValue(&v11);
      if (!NextValue)
      {
        a4 = v11;
        a5 = v12;
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 8 * v7) = NextValue;
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v11;
    a5 = v12;
    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49461FC@<X0>(uint64_t *a1@<X8>)
{
  result = AGTreeElementGetNextChild2(v1, 0);
  *a1 = result;
  return result;
}

uint64_t sub_1B4946244@<X0>(uint64_t *a1@<X8>)
{
  result = AGTreeElementGetNextChild(v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B4946280@<X0>(uint64_t *a1@<X8>)
{
  result = AGTreeElementGetNextValue(v1);
  *a1 = result;
  return result;
}

unint64_t AGTreeElementNodeIterator.next()()
{
  NextNode = AGTreeElementGetNextNode(v0);
  if (NextNode == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = NextNode;
  }

  return v2 | ((NextNode == 2) << 32);
}

uint64_t sub_1B4946304@<X0>(uint64_t a1@<X8>)
{
  result = AGTreeElementGetNextNode(v1);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  *(a1 + 4) = result == 2;
  return result;
}

unint64_t sub_1B4946350()
{
  result = qword_1EB8A4660;
  if (!qword_1EB8A4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A4660);
  }

  return result;
}

uint64_t sub_1B494647C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1B49464D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  NextChild2 = AGTreeElementGetNextChild2(v24, 0);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (NextChild2)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = NextChild2;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A4690, &qword_1B494BD70);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v11 != v4 || v15 >= &v4[v16 + 4])
          {
            memmove(v11 + 4, v4 + 4, 8 * v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v5 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v11;
        NextChild2 = v8;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = NextChild2;
      NextChild2 = AGTreeElementGetNextChild2(v24, 0);
      if (!NextChild2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_21:
  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
      goto LABEL_27;
    }

    v4[2] = v21;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1B4946674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  result = AGTreeElementGetNextChild(v22);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (result)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A4690, &qword_1B494BD70);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          if (v11 != v4 || v15 >= &v4[v16 + 4])
          {
            memmove(v11 + 4, v4 + 4, 8 * v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v5 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = AGTreeElementGetNextChild(v22);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v4[3];
  if (v19 < 2)
  {
    return v4;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v4[2] = v21;
    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B49467E0(uint64_t a1, uint64_t a2)
{
  v21[0] = a1;
  v21[1] = a2;
  result = AGTreeElementGetNextValue(v21);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if (result)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v7 = result;
        v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4688, &qword_1B494BD68);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v10 != v3 || v14 >= &v3[v15 + 4])
          {
            memmove(v10 + 4, v3 + 4, 8 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
        result = v7;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = result;
      result = AGTreeElementGetNextValue(v21);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B4946948(uint64_t a1, uint64_t a2)
{
  v21[0] = a1;
  v21[1] = a2;
  result = AGTreeElementGetNextNode(v21);
  v3 = MEMORY[0x1E69E7CC0];
  if (result == 2)
  {
    v4 = 0;
LABEL_22:
    v18 = v3[3];
    if (v18 < 2)
    {
      return v3;
    }

    v19 = v18 >> 1;
    v17 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (!v17)
    {
      v3[2] = v20;
      return v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v7 = result;
        v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A4680, &qword_1B494BD60);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 29;
        }

        v13 = v12 >> 2;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 2);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v10 != v3 || v14 >= v3 + 4 * v15 + 32)
          {
            memmove(v10 + 4, v3 + 4, 4 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 4 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
        result = v7;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = result;
      result = AGTreeElementGetNextNode(v21);
      if (result == 2)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4946AF0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
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

uint64_t AnyRuleContext.subscript.getter@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, AG::swift::metadata *a3@<X2>, uint64_t a4@<X8>)
{
  InputValue = AGGraphGetInputValue(a2, a1, 0, a3);
  v7 = *(*(a3 - 1) + 16);

  return v7(a4, InputValue, a3);
}

uint64_t AnyRuleContext.subscript.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = Attribute;
  }

  v13 = v8;
  v14 = Attribute == 2;
  v11[2] = a3;
  v12 = a2;
  type metadata accessor for Attribute();
  sub_1B4949BD8();
  return sub_1B4946AF0(sub_1B4947A88, v11, MEMORY[0x1E69E73E0], a3, v9, a4);
}

uint64_t AnyRuleContext.subscript.getter@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9[2] = a3;
  if (a1 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v11 = v6;
  v12 = a1 == 2;
  v10 = a2;
  type metadata accessor for Attribute();
  sub_1B4949BD8();
  return sub_1B4946AF0(sub_1B4947C48, v9, MEMORY[0x1E69E73E0], a3, v7, a4);
}

uint64_t AnyRuleContext.changedValue<A>(of:options:)(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, AG::swift::metadata *a5)
{
  InputValue = AGGraphGetInputValue(a4, a2, a3, a5);
  v9 = v8;
  (*(*(a5 - 1) + 16))(a1, InputValue, a5);
  return v9 & 1;
}

uint64_t AnyRuleContext.valueAndFlags<A>(of:options:)(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, AG::swift::metadata *a5)
{
  InputValue = AGGraphGetInputValue(a4, a2, a3, a5);
  v9 = v8;
  (*(*(a5 - 1) + 16))(a1, InputValue, a5);
  return v9;
}

uint64_t RuleContext.value.getter@<X0>(AG::swift::metadata *a1@<X1>, uint64_t a2@<X8>)
{
  result = AGGraphGetOutputValue(a1, a1);
  if (result)
  {
    v5 = *(*(a1 - 1) + 16);

    return v5(a2, result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B49471BC@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *&a1[a2 - 8];
  result = AGGraphGetOutputValue(v4, a1);
  if (result)
  {
    v6 = *(*(v4 - 1) + 16);

    return v6(a3, result, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RuleContext.value.unsafeAddressor(uint64_t a1, AG::swift::metadata *a2)
{
  result = AGGraphGetOutputValue(a2, a2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4947258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + a4 - 8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12[-v7];
  (*(v5 + 16))(&v12[-v7]);
  v14 = v4;
  sub_1B493DA34(v8, sub_1B4947C78, v13, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
  result = (*(v5 + 8))(v8, v4);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RuleContext.value.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[2] = a3;
  sub_1B493DA34(a1, sub_1B4947B20, v11, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

void (*RuleContext.value.modify(void *a1, uint64_t a2, AG::swift::metadata *a3))(void **a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a3;
  v8 = *(a3 - 1);
  v9 = v8;
  v6[1] = v8;
  v10 = *(v8 + 64);
  if (v5)
  {
    v6[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v13 = v11;
  v7[3] = v11;
  OutputValue = AGGraphGetOutputValue(a3, v12);
  if (!OutputValue)
  {
    __break(1u);
  }

  v15 = *(v9 + 16);
  v7[4] = v15;
  v7[5] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v13, OutputValue, a3);
  v16 = *MEMORY[0x1E69E9840];
  return sub_1B49475B4;
}

void sub_1B49475B4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[5];
    v5 = v2[2];
    v4 = v2[3];
    v6 = *v2;
    v7 = v2[1];
    v8 = (v2[4])(v5, v4, *v2);
    MEMORY[0x1EEE9AC00](v8);
    v15 = v6;
    sub_1B493DA34(v5, sub_1B4947C78, v14, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
    v10 = *(v7 + 8);
    v10(v5, v6);
    v10(v4, v6);
  }

  else
  {
    v5 = v2[2];
    v4 = v2[3];
    v11 = *v2;
    v12 = v2[1];
    MEMORY[0x1EEE9AC00](a1);
    v15 = v11;
    sub_1B493DA34(v4, sub_1B4947C78, v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    (*(v12 + 8))(v4, v11);
  }

  free(v4);
  free(v5);
  free(v2);
}

uint64_t RuleContext.subscript.getter@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, AG::swift::metadata *a3@<X3>, uint64_t a4@<X8>)
{
  InputValue = AGGraphGetInputValue(a2, a1, 0, a3);
  v7 = *(*(a3 - 1) + 16);

  return v7(a4, InputValue, a3);
}

uint64_t RuleContext.subscript.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Attribute = AGWeakAttributeGetAttribute(a1);
  if (Attribute == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = Attribute;
  }

  v15 = v10;
  v16 = Attribute == 2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = a2;
  type metadata accessor for Attribute();
  sub_1B4949BD8();
  return sub_1B4946AF0(sub_1B4947B4C, v13, MEMORY[0x1E69E73E0], a4, v11, a5);
}

uint64_t RuleContext.subscript.getter@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v12 = v7;
  v13 = a1 == 2;
  v10[2] = a3;
  v10[3] = a4;
  v11 = a2;
  type metadata accessor for Attribute();
  sub_1B4949BD8();
  return sub_1B4946AF0(sub_1B4947C60, v10, MEMORY[0x1E69E73E0], a4, v8, a5);
}

uint64_t RuleContext.valueAndFlags<A>(of:options:)(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, AG::swift::metadata *a6)
{
  InputValue = AGGraphGetInputValue(a4, a2, a3, a6);
  v10 = v9;
  (*(*(a6 - 1) + 16))(a1, InputValue, a6);
  return v10;
}

uint64_t RuleContext.changedValue<A>(of:options:)(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, AG::swift::metadata *a6)
{
  InputValue = AGGraphGetInputValue(a4, a2, a3, a6);
  v10 = v9;
  (*(*(a6 - 1) + 16))(a1, InputValue, a6);
  return v10 & 1;
}

uint64_t sub_1B4947AA0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  InputValue = AGGraphGetInputValue(*(v2 + 24), *a1, 0, v4);
  return (*(*(v4 - 1) + 16))(a2, InputValue, v4);
}

uint64_t sub_1B4947B64@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  InputValue = AGGraphGetInputValue(*(v2 + 32), *a1, 0, v4);
  return (*(*(v4 - 1) + 16))(a2, InputValue, v4);
}

uint64_t sub_1B4947BF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static External.flags.getter()
{
  type metadata accessor for Flags(0);
  sub_1B4915DE8();
  sub_1B4916294();
  sub_1B4949D58();
  return v1;
}

uint64_t Focus.keyPath.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Focus.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue(v8, 0, v9, v10, v11);
  (*(v4 + 16))(v7, Value, a3);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, a3);
}

uint64_t sub_1B4947E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  Value = AGGraphGetValue(v7, 0, v2, v9, v10);
  (*(v3 + 16))(v6, Value, v2);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Map.value.getter(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue(v10, 0, v11, v11, v12);
  (*(v6 + 16))(v9, Value, a4);
  a2(v9);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_1B4948108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B4948150(uint64_t result, int a2, int a3)
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

uint64_t sub_1B494818C(uint64_t a1, int a2)
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

uint64_t sub_1B49481D4(uint64_t result, int a2, int a3)
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

uint64_t static PointerOffset.offset(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a4 - 8) + 64))
  {
    return a1(1);
  }

  else
  {
    return 0;
  }
}

uint64_t static PointerOffset.of(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a2;
  v8[3] = a3;
  v5 = type metadata accessor for PointerOffset();
  sub_1B493F82C(a1, sub_1B4948324, v8, a3, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t static PointerOffset.+ infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t AnyOptionalAttribute.attribute.getter(unsigned int a1)
{
  if (a1 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return v1 | ((a1 == 2) << 32);
}

uint64_t AnyOptionalAttribute.init(_:)(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t AnyOptionalAttribute.attribute.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*AnyOptionalAttribute.attribute.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 16) = 2;
  v3 = v2 == 2;
  if (v2 == 2)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v4 = v3;
  *(a1 + 12) = v4;
  return sub_1B4948500;
}

uint64_t sub_1B4948500(uint64_t result)
{
  v1 = (result + 8);
  if (*(result + 12))
  {
    v1 = (result + 16);
  }

  **result = *v1;
  return result;
}

uint64_t AnyOptionalAttribute.map<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v5 = 1;
  }

  else
  {
    v6 = a3;
    a1(a2);
    a3 = v6;
    v5 = 0;
  }

  v7 = *(*(a3 - 8) + 56);

  return v7(a4, v5, 1);
}

uint64_t AnyOptionalAttribute.description.getter(int a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  else
  {
    return AGAttribute.description.getter();
  }
}

uint64_t AnyOptionalAttribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B4948684()
{
  v1 = *v0;
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t sub_1B49486CC()
{
  v1 = *v0;
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

uint64_t OptionalAttribute.init(_:)(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

uint64_t (*OptionalAttribute.attribute.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 16) = 2;
  v3 = v2 == 2;
  if (v2 == 2)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v4 = v3;
  *(a1 + 12) = v4;
  return sub_1B4948E64;
}

uint64_t OptionalAttribute.changedValue(options:)@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, AG::swift::metadata *a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = TupleTypeMetadata2;
  if (a2 == 2)
  {
    v12 = 1;
  }

  else
  {
    v13 = *(TupleTypeMetadata2 + 48);
    Value = AGGraphGetValue(a2, a1, a3, v9, v10);
    v16 = v15;
    (*(*(a3 - 1) + 16))(a4, Value, a3);
    v12 = 0;
    *(a4 + v13) = v16 & 1;
  }

  v17 = *(*(v11 - 8) + 56);

  return v17(a4, v12, 1, v11);
}

uint64_t OptionalAttribute.map<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v6 = 1;
  }

  else
  {
    a1(a2);
    v6 = 0;
  }

  v7 = *(*(a3 - 8) + 56);

  return v7(a4, v6, 1, a3);
}

uint64_t OptionalAttribute.wrappedValue.getter@<X0>(unint64_t a1@<X0>, AG::swift::metadata *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a1 == 2)
  {
    v7 = *(a2 - 1);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue(a1, 0, a2, a3, a4);
    v12 = *(a2 - 1);
    (*(v12 + 16))(a5, Value, a2);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a5, v8, 1, a2);
}

unint64_t OptionalAttribute.projectedValue.getter(unsigned int a1)
{
  if (a1 == 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return v1 | ((a1 == 2) << 32);
}

uint64_t OptionalAttribute.projectedValue.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*OptionalAttribute.projectedValue.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 16) = 2;
  v3 = v2 == 2;
  if (v2 == 2)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v4 = v3;
  *(a1 + 12) = v4;
  return sub_1B4948E64;
}

unint64_t OptionalAttribute.subscript.getter(void *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    OffsetAttribute2 = 0;
  }

  else
  {
    v5 = *a1;
    v6 = sub_1B4949BF8();
    if (v7)
    {
      v18 = a2;
      v19 = a1;
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v5 + *MEMORY[0x1E69E77B0]);
      v14[2] = v8[1];
      v9 = *v8;
      v15 = type metadata accessor for Focus();
      WitnessTable = swift_getWitnessTable();
      v10 = type metadata accessor for Attribute();

      sub_1B493DA34(&v18, sub_1B493E28C, v14, v15, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

      OffsetAttribute2 = v17;
    }

    else
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2(a2, v6, *(*(*(v5 + *MEMORY[0x1E69E77B0] + 8) - 8) + 64));
    }
  }

  LOBYTE(v18) = a2 == 2;
  v12 = *MEMORY[0x1E69E9840];
  return OffsetAttribute2 | ((a2 == 2) << 32);
}

uint64_t OptionalAttribute.description.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  else
  {
    return Attribute.description.getter(a1);
  }
}

uint64_t OptionalAttribute.hashValue.getter()
{
  sub_1B4949CC8();
  sub_1B4949CE8();
  return sub_1B4949CF8();
}

unint64_t sub_1B4948DEC()
{
  result = qword_1EB8A4718;
  if (!qword_1EB8A4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A4718);
  }

  return result;
}

void AG::Graph::TraceRecorder::field_backtrace()
{
  if (__cxa_guard_acquire(&qword_1ED56D380))
  {
    _MergedGlobals = AG::Graph::TraceRecorder::field_backtrace(AG::Encoder &,unsigned long,unsigned int)::$_0::operator()();
    __cxa_guard_release(&qword_1ED56D380);
  }
}

uint64_t AG::Graph::trace_assertion_failure(unsigned int a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1 - 1;
  do
  {
    result = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7), a4, *a3);
    --v7;
  }

  while (v7 != -1);
  return result;
}

uint64_t AG::Graph::sync_tracing(unsigned int a1, void *a2)
{
  v3 = a1 - 1;
  do
  {
    result = (*(**(*a2 + 8 * v3) + 32))(*(*a2 + 8 * v3));
    --v3;
  }

  while (v3 != -1);
  return result;
}

uint64_t AG::Graph::mark_profile(unsigned int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 1;
  do
  {
    result = (*(**(*a2 + 8 * v7) + 328))(*(*a2 + 8 * v7), a3, a4);
    --v7;
  }

  while (v7 != -1);
  return result;
}

uint64_t AG::Graph::end_profile_event(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2 - 1;
  do
  {
    result = (*(**(*a3 + 8 * v7) + 152))(*(*a3 + 8 * v7), v6, a4);
    --v7;
  }

  while (v7 != -1);
  return result;
}

void AG::Graph::Context::Context()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 160))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

uint64_t AG::Graph::passed_deadline_slow(unsigned int a1, void *a2)
{
  v3 = a1 - 1;
  do
  {
    result = (*(**(*a2 + 8 * v3) + 320))(*(*a2 + 8 * v3));
    --v3;
  }

  while (v3 != -1);
  return result;
}

void AG::Graph::value_set_internal()
{
  OUTLINED_FUNCTION_3();
  do
  {
    v3 = OUTLINED_FUNCTION_2(*v1);
    (*(v4 + 272))(v3, v2, v0);
    OUTLINED_FUNCTION_4();
  }

  while (!v5);
}

void AG::Graph::remove_removed_output()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 304))(v1, v0, 2);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

{
  OUTLINED_FUNCTION_8();
  do
  {
    v3 = OUTLINED_FUNCTION_2(*v2);
    (*(v4 + 296))(v3, v1, v0);
    OUTLINED_FUNCTION_4();
  }

  while (!v5);
}

void AG::Graph::attribute_modify()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 128))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 136))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

void AG::Graph::indirect_attribute_set()
{
  OUTLINED_FUNCTION_3();
  do
  {
    v3 = OUTLINED_FUNCTION_2(*v1);
    (*(v4 + 296))(v3, v0, v2);
    OUTLINED_FUNCTION_4();
  }

  while (!v5);
}

void AG::Graph::indirect_attribute_reset(unsigned int a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1;
  do
  {
    v7 = OUTLINED_FUNCTION_2(*a3);
    (*(v8 + 296))(v7, a4, v6);
    OUTLINED_FUNCTION_4();
  }

  while (!v9);
}

void AG::Graph::indirect_attribute_set_dependency(uint64_t a1, const char *a2)
{
  AG::precondition_failure("indirect dependencies must be attributes", a2);
}

{
  AG::precondition_failure("indirect dependencies must share a subgraph with their attribute", a2);
}

{
  AG::precondition_failure("indirect dependencies can't cross graph namespaces", a2);
}

void AG::Graph::add_input()
{
  OUTLINED_FUNCTION_8();
  do
  {
    v3 = OUTLINED_FUNCTION_2(*v2);
    (*(v4 + 248))(v3, v1, v0, 1);
    OUTLINED_FUNCTION_4();
  }

  while (!v5);
}

void AG::Graph::value_mark()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 280))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

uint64_t AG::Subgraph::remove_child()
{
  OUTLINED_FUNCTION_8();
  do
  {
    v3 = OUTLINED_FUNCTION_3_0();
    result = (*(v4 + 216))(v3, v1, v0);
    --v2;
  }

  while (v2 != -1);
  return result;
}

void AG::Subgraph::add_node()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 224))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

void AG::Subgraph::add_child(uint64_t a1, const char *a2)
{
  AG::precondition_failure("child subgraph must have same graph", a2);
}

{
  AG::precondition_failure("child already attached to new parent", a2);
}

uint64_t AG::Subgraph::add_child()
{
  OUTLINED_FUNCTION_8();
  do
  {
    v3 = OUTLINED_FUNCTION_3_0();
    result = (*(v4 + 208))(v3, v1, v0);
    --v2;
  }

  while (v2 != -1);
  return result;
}

void AG::Graph::print_cycle()
{
  v0 = __cxa_guard_acquire(&qword_1ED56D3C8);
  if (v0)
  {

    __cxa_guard_release(&qword_1ED56D3C8);
  }
}

{
  v0 = __cxa_guard_acquire(&qword_1ED56D3D0);
  if (v0)
  {
    __cxa_guard_release(&qword_1ED56D3D0);
  }
}

void AGGraphVerifyType_cold_1(AG::swift::metadata *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = AG::swift::metadata::name(a1, 0);
  v8 = AG::swift::metadata::name(*(*(*a3 + ((*(AG::data::_shared_table_bytes + a2) >> 5) & 0x7FFFFF8)) + 8), 0);
  AG::precondition_failure("type check failed: %u, expected %s, got %s", v9, a4, v7, v8);
}

void AG::error_log()
{
  if (__cxa_guard_acquire(qword_1ED56D3F0))
  {
    qword_1ED56D3E8 = os_log_create("com.apple.attributegraph", "error");

    __cxa_guard_release(qword_1ED56D3F0);
  }
}

void AG::non_fatal_precondition_failure(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136315138;
  v5 = v2;
  _os_log_fault_impl(&dword_1B490B000, a2, OS_LOG_TYPE_FAULT, "precondition failure: %s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void operator delete(void *__p)
{
    ;
  }
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