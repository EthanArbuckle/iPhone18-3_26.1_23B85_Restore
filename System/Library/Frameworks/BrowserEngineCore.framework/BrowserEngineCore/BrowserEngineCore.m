uint64_t be_memory_inline_jit_restrict_rwx_to_rx_with_witness_impl()
{
  __dmb(0xAu);
  if (MEMORY[0xFFFFFC10C] == 1)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC118]);
    v0 = MEMORY[0xFFFFFC118];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7));
  }

  else
  {
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC118]);
    v0 = MEMORY[0xFFFFFC118];
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5));
  }

  if (StatusReg != v0)
  {
    __break(0xC471u);
    JUMPOUT(0x236E9B5D8);
  }

  __isb(0xFu);
  return 0;
}

uint64_t be_memory_inline_jit_restrict_rwx_to_rw_with_witness_impl(uint64_t result, uint64_t a2)
{
  __dmb(0xAu);
  if (MEMORY[0xFFFFFC10C] == 1)
  {
    _WriteStatusReg(ARM64_SYSREG(3, 4, 15, 2, 7), MEMORY[0xFFFFFC110]);
  }

  else
  {
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC110]);
  }

  __dmb(0xAu);
  __isb(0xFu);
  if (a2 == 4868436 && v2 == result)
  {
    return 0;
  }

  __break(0xC471u);
  return result;
}

BOOL _BECheckEntitlmentForAuditToken(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return [_BESwiftCBridge checkEntitlement:a1 forAuditToken:v4];
}

uint64_t be_kevent(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = malloc_type_malloc(72 * a3, 0x1000040FF89C88EuLL);
  v10 = v9;
  if (a3 < 1)
  {
LABEL_8:
    v16 = malloc_type_malloc(72 * a5, 0x1000040FF89C88EuLL);
    v17 = kevent_qos();
    v18 = v17;
    if (v17 >= 1)
    {
      v19 = 0;
      v20 = v16 + 16;
      do
      {
        v21 = a4 + v19;
        *v21 = *(v20 - 2);
        *(v21 + 8) = *(v20 - 2);
        v22 = *v20;
        *(v21 + 12) = *(v20 + 2);
        *(v21 + 16) = *(v20 + 2);
        *(v21 + 24) = v22;
        v19 += 32;
        v20 += 72;
      }

      while (32 * v17 != v19);
    }

    free(v10);
    free(v16);
  }

  else
  {
    v11 = 0;
    v12 = a2 + 12;
    while (1)
    {
      *&v9[v11] = *(v12 - 12);
      v13 = *(v12 - 4);
      if ((v13 - 65521) > 0xE || ((1 << (v13 + 15)) & 0x6FE9) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = &v9[v11];
      *(v15 + 4) = v13;
      *(v15 + 5) = *(v12 - 2);
      *(v15 + 3) = 0;
      *(v15 + 2) = *(v12 + 12);
      *(v15 + 6) = *v12;
      *(v15 + 7) = 0;
      *(v15 + 4) = *(v12 + 4);
      *(v15 + 40) = 0uLL;
      v11 += 72;
      v12 += 32;
      *(v15 + 56) = 0uLL;
      if (72 * a3 == v11)
      {
        goto LABEL_8;
      }
    }
  }

  return v18;
}

uint64_t be_kevent64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = malloc_type_malloc(72 * a3, 0x1000040FF89C88EuLL);
  v10 = v9;
  if (a3 < 1)
  {
LABEL_8:
    v19 = malloc_type_malloc(72 * a5, 0x1000040FF89C88EuLL);
    v20 = kevent_qos();
    v21 = v20;
    if (v20 >= 1)
    {
      v22 = 0;
      v23 = (a4 + 24);
      do
      {
        *(v23 - 3) = *&v19[v22];
        *(v23 - 4) = *&v19[v22 + 8];
        v24 = *&v19[v22 + 16];
        *(v23 - 3) = *&v19[v22 + 24];
        *(v23 - 1) = *&v19[v22 + 32];
        *v23 = v24;
        v23[1] = *&v19[v22 + 40];
        v23[2] = *&v19[v22 + 48];
        v22 += 72;
        v23 += 6;
      }

      while (72 * v20 != v22);
    }

    free(v10);
    free(v19);
  }

  else
  {
    v11 = 0;
    v12 = (a2 + 24);
    while (1)
    {
      *&v9[v11] = *(v12 - 3);
      v13 = *(v12 - 8);
      if ((v13 - 65521) > 0xE || ((1 << (v13 + 15)) & 0x6FE9) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = &v9[v11];
      *(v15 + 4) = v13;
      *(v15 + 5) = *(v12 - 7);
      v16 = *(v12 - 1);
      *(v15 + 2) = *v12;
      v17 = *(v12 - 3);
      *(v15 + 4) = v16;
      *(v15 + 5) = v12[1];
      v18 = v12[2];
      v12 += 6;
      *(v15 + 3) = 0;
      *(v15 + 3) = v17;
      *(v15 + 7) = 0;
      *(v15 + 8) = 0;
      *(v15 + 6) = v18;
      v11 += 72;
      if (72 * a3 == v11)
      {
        goto LABEL_8;
      }
    }
  }

  return v21;
}

BrowserEngineCore::BrowserEngineEntitlement_optional __swiftcall BrowserEngineEntitlement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0xD00000000000002BLL && 0x8000000236E9D790 == rawValue._object;
  if (v5 || (sub_236E9D158() & 1) != 0)
  {
    v6 = 0;
LABEL_7:

    goto LABEL_8;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x8000000236E9D7C0 == object || (sub_236E9D158() & 1) != 0)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (countAndFlagsBits == 0xD000000000000031 && 0x8000000236E9D800 == object || (sub_236E9D158() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_7;
  }

  v6 = 3;
  if (countAndFlagsBits == 0xD000000000000030 && 0x8000000236E9D840 == object)
  {
    goto LABEL_7;
  }

  v8 = sub_236E9D158();

  if (v8)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

LABEL_8:
  *v4 = v6;
  return result;
}

unint64_t BrowserEngineEntitlement.description.getter()
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000030;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

unint64_t sub_236E9BCB8()
{
  result = qword_27DE8B108;
  if (!qword_27DE8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8B108);
  }

  return result;
}

uint64_t sub_236E9BD0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "engine.webcontent";
      v3 = 0xD000000000000031;
    }

    else
    {
      v4 = "engine.networking";
      v3 = 0xD000000000000030;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000031;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v2)
    {
      v4 = "per.web-browser-engine.host";
    }

    else
    {
      v4 = "per.web-browser-engine";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000031;
    }

    else
    {
      v5 = 0xD000000000000030;
    }

    if (a2 == 2)
    {
      v6 = "engine.webcontent";
    }

    else
    {
      v6 = "engine.networking";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000031;
    }

    else
    {
      v5 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v6 = "per.web-browser-engine.host";
    }

    else
    {
      v6 = "per.web-browser-engine";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_236E9D158();
  }

  return v7 & 1;
}

uint64_t sub_236E9BE30()
{
  v1 = *v0;
  sub_236E9D168();
  sub_236E9D118();

  return sub_236E9D178();
}

uint64_t sub_236E9BEE4()
{
  *v0;
  *v0;
  *v0;
  sub_236E9D118();
}

uint64_t sub_236E9BF84()
{
  v1 = *v0;
  sub_236E9D168();
  sub_236E9D118();

  return sub_236E9D178();
}

void sub_236E9C040(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000031;
  v3 = "engine.webcontent";
  v4 = 0xD000000000000030;
  if (*v1 == 2)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v3 = "engine.networking";
  }

  if (*v1)
  {
    v5 = "per.web-browser-engine.host";
  }

  else
  {
    v2 = 0xD00000000000002BLL;
    v5 = "per.web-browser-engine";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_236E9C0B4()
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000030;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t getEnumTagSinglePayload for BrowserEngineEntitlement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrowserEngineEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236E9C2A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236E9C2C0(uint64_t result, int a2, int a3)
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

void type metadata accessor for audit_token_t()
{
  if (!qword_27DE8B110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE8B110);
    }
  }
}

__int128 *sub_236E9C340()
{
  result = [objc_opt_self() auditTokenForCurrentProcess];
  if (result)
  {
    v1 = result[1];
    xmmword_27DE8B118 = *result;
    *&qword_27DE8B128 = v1;
  }

  else
  {
    result = sub_236E9D148();
    __break(1u);
  }

  return result;
}

void __swiftcall AuditToken.init(_:)(BrowserEngineCore::AuditToken *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->inner.val = a2;
  *&retstr->inner.val[2] = v2;
  *&retstr->inner.val[4] = v3;
  *&retstr->inner.val[6] = v4;
}

double static AuditToken.current.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27DE8B100 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_27DE8B118;
  v2 = *&qword_27DE8B128;
  *a1 = xmmword_27DE8B118;
  a1[1] = v2;
  return result;
}

uint64_t AuditToken.inner.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t AuditToken.pid.getter()
{
  v1 = v0[1];
  *v3.val = *v0;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3);
}

uint64_t sub_236E9C480()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_236E9D108();
  v0 = xpc_copy_entitlement_for_token();

  if (!v0)
  {
    result = 2;
LABEL_7:
    v2 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      result = v3;
    }

    else
    {
      result = 2;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id BEAudioSession.__allocating_init(audioSession:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *&v3[OBJC_IVAR___BEAudioSession__preferredOutput] = 0;
  *&v3[OBJC_IVAR___BEAudioSession_inner] = a1;
  *&v3[v4] = 0;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BEAudioSession.init(audioSession:)(uint64_t a1)
{
  v2 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *&v1[OBJC_IVAR___BEAudioSession__preferredOutput] = 0;
  *&v1[OBJC_IVAR___BEAudioSession_inner] = a1;
  *&v1[v2] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BEAudioSession();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_236E9C804()
{
  v1 = [*(v0 + OBJC_IVAR___BEAudioSession_inner) availableOutputs];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_236E9C874();
  v3 = sub_236E9D138();

  return v3;
}

unint64_t sub_236E9C874()
{
  result = qword_280E25898;
  if (!qword_280E25898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E25898);
  }

  return result;
}

void sub_236E9C8C0(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___BEAudioSession_inner);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8B148, &qword_236E9D700);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_236E9D6F0;
    v5 = [a1 UID];
    v6 = sub_236E9D0F8();
    v8 = v7;

    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_236E9D128();
  }

  else
  {
    v9 = 0;
  }

  v17[0] = 0;
  v10 = [v3 setPreferredPersistentInputUIDs:0 outputUIDs:v9 error:v17];

  v11 = v17[0];
  if (v10)
  {
    v12 = *(v1 + OBJC_IVAR___BEAudioSession__preferredOutput);
    *(v1 + OBJC_IVAR___BEAudioSession__preferredOutput) = a1;
    v13 = v11;
    v14 = a1;
  }

  else
  {
    v15 = v17[0];
    sub_236E9D0E8();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
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

void *sub_236E9CB30()
{
  v1 = *(v0 + OBJC_IVAR___BEAudioSession__preferredOutput);
  v2 = v1;
  return v1;
}

id BEAudioSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BEAudioSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEAudioSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_236E9CE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftCBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_236E9CE88(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  BrowserEngineEntitlement.init(rawValue:)(v4);
  if (v7 >= 4u || (v5 = sub_236E9C480(), , v5 == 2))
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_236E9CFA0(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  BrowserEngineEntitlement.init(rawValue:)(v4);
  if (v7 == 4)
  {
    goto LABEL_5;
  }

  if (qword_27DE8B100 != -1)
  {
    swift_once();
  }

  v5 = sub_236E9C480();

  if (v5 == 2)
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}